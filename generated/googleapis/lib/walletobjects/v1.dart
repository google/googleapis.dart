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

/// Google Wallet API - v1
///
/// API for issuers to save and manage Google Wallet Objects.
///
/// For more information, see <https://developers.google.com/pay/passes>
///
/// Create an instance of [WalletobjectsApi] to access these resources:
///
/// - [EventticketclassResource]
/// - [EventticketobjectResource]
/// - [FlightclassResource]
/// - [FlightobjectResource]
/// - [GenericclassResource]
/// - [GenericobjectResource]
/// - [GiftcardclassResource]
/// - [GiftcardobjectResource]
/// - [IssuerResource]
/// - [JwtResource_1]
/// - [LoyaltyclassResource]
/// - [LoyaltyobjectResource]
/// - [MediaResource]
/// - [OfferclassResource]
/// - [OfferobjectResource]
/// - [PermissionsResource]
/// - [SmarttapResource]
/// - [TransitclassResource]
/// - [TransitobjectResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        ByteRange,
        DetailedApiRequestError,
        DownloadOptions,
        Media,
        PartialDownloadOptions,
        ResumableUploadOptions,
        UploadOptions;

/// API for issuers to save and manage Google Wallet Objects.
class WalletobjectsApi {
  /// Private Service: https://www.googleapis.com/auth/wallet_object.issuer
  static const walletObjectIssuerScope =
      'https://www.googleapis.com/auth/wallet_object.issuer';

  final commons.ApiRequester _requester;

  EventticketclassResource get eventticketclass =>
      EventticketclassResource(_requester);
  EventticketobjectResource get eventticketobject =>
      EventticketobjectResource(_requester);
  FlightclassResource get flightclass => FlightclassResource(_requester);
  FlightobjectResource get flightobject => FlightobjectResource(_requester);
  GenericclassResource get genericclass => GenericclassResource(_requester);
  GenericobjectResource get genericobject => GenericobjectResource(_requester);
  GiftcardclassResource get giftcardclass => GiftcardclassResource(_requester);
  GiftcardobjectResource get giftcardobject =>
      GiftcardobjectResource(_requester);
  IssuerResource get issuer => IssuerResource(_requester);
  JwtResource_1 get jwt => JwtResource_1(_requester);
  LoyaltyclassResource get loyaltyclass => LoyaltyclassResource(_requester);
  LoyaltyobjectResource get loyaltyobject => LoyaltyobjectResource(_requester);
  MediaResource get media => MediaResource(_requester);
  OfferclassResource get offerclass => OfferclassResource(_requester);
  OfferobjectResource get offerobject => OfferobjectResource(_requester);
  PermissionsResource get permissions => PermissionsResource(_requester);
  SmarttapResource get smarttap => SmarttapResource(_requester);
  TransitclassResource get transitclass => TransitclassResource(_requester);
  TransitobjectResource get transitobject => TransitobjectResource(_requester);

  WalletobjectsApi(http.Client client,
      {core.String rootUrl = 'https://walletobjects.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class EventticketclassResource {
  final commons.ApiRequester _requester;

  EventticketclassResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the event ticket class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketClassAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketClassAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketClass/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketClassAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the event ticket class with the given class ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketClass> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventTicketClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an event ticket class with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketClass> insert(
    EventTicketClass request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/eventTicketClass';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all event ticket classes for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [issuerId] - The ID of the issuer authorized to list classes.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` classes are available in a list. For
  /// example, if you have a list of 200 classes and you call list with
  /// `maxResults` set to 20, list will return the first 20 classes and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 classes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketClassListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketClassListResponse> list({
    core.String? issuerId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (issuerId != null) 'issuerId': [issuerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/eventTicketClass';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventTicketClassListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the event ticket class referenced by the given class ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketClass> patch(
    EventTicketClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the event ticket class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketClass> update(
    EventTicketClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class EventticketobjectResource {
  final commons.ApiRequester _requester;

  EventticketobjectResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the event ticket object referenced by the given object
  /// ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketObjectAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketObjectAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketObject/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketObjectAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the event ticket object with the given object ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketObject> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventTicketObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an event ticket object with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketObject> insert(
    EventTicketObject request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/eventTicketObject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all event ticket objects for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [classId] - The ID of the class whose objects will be listed.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` objects are available in a list. For
  /// example, if you have a list of 200 objects and you call list with
  /// `maxResults` set to 20, list will return the first 20 objects and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 objects.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketObjectListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketObjectListResponse> list({
    core.String? classId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (classId != null) 'classId': [classId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/eventTicketObject';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventTicketObjectListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies linked offer objects for the event ticket object with the given
  /// ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketObject> modifylinkedofferobjects(
    ModifyLinkedOfferObjectsRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketObject/' +
        commons.escapeVariable('$resourceId') +
        '/modifyLinkedOfferObjects';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the event ticket object referenced by the given object ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketObject> patch(
    EventTicketObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the event ticket object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventTicketObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventTicketObject> update(
    EventTicketObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/eventTicketObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return EventTicketObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FlightclassResource {
  final commons.ApiRequester _requester;

  FlightclassResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the flight class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightClassAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightClassAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/flightClass/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FlightClassAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the flight class with the given class ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightClass> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/flightClass/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FlightClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an flight class with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightClass> insert(
    FlightClass request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/flightClass';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FlightClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all flight classes for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [issuerId] - The ID of the issuer authorized to list classes.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` classes are available in a list. For
  /// example, if you have a list of 200 classes and you call list with
  /// `maxResults` set to 20, list will return the first 20 classes and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 classes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightClassListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightClassListResponse> list({
    core.String? issuerId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (issuerId != null) 'issuerId': [issuerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/flightClass';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FlightClassListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the flight class referenced by the given class ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightClass> patch(
    FlightClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/flightClass/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return FlightClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the flight class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightClass> update(
    FlightClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/flightClass/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return FlightClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class FlightobjectResource {
  final commons.ApiRequester _requester;

  FlightobjectResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the flight object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightObjectAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightObjectAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/flightObject/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FlightObjectAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the flight object with the given object ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightObject> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/flightObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FlightObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an flight object with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightObject> insert(
    FlightObject request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/flightObject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FlightObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all flight objects for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [classId] - The ID of the class whose objects will be listed.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` objects are available in a list. For
  /// example, if you have a list of 200 objects and you call list with
  /// `maxResults` set to 20, list will return the first 20 objects and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 objects.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightObjectListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightObjectListResponse> list({
    core.String? classId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (classId != null) 'classId': [classId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/flightObject';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FlightObjectListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the flight object referenced by the given object ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightObject> patch(
    FlightObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/flightObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return FlightObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the flight object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlightObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlightObject> update(
    FlightObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/flightObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return FlightObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GenericclassResource {
  final commons.ApiRequester _requester;

  GenericclassResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the generic class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericClassAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericClassAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/genericClass/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenericClassAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the generic class with the given class ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value needs to follow the format
  /// `issuerID.identifier` where `issuerID` is issued by Google and
  /// `identifier` is chosen by you. The unique identifier can only include
  /// alphanumeric characters, `.`, `_`, or `-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericClass> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/genericClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GenericClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a generic class with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericClass> insert(
    GenericClass request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/genericClass';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenericClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all generic classes for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [issuerId] - The ID of the issuer authorized to list classes.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` classes are available in a list. For
  /// example, if you have a list of 200 classes and you call list with
  /// `maxResults` set to 20, list will return the first 20 classes and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 classes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericClassListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericClassListResponse> list({
    core.String? issuerId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (issuerId != null) 'issuerId': [issuerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/genericClass';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GenericClassListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the generic class referenced by the given class ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value needs to follow the format
  /// `issuerID.identifier` where `issuerID` is issued by Google and
  /// `identifier` is chosen by you. The unique identifier can only include
  /// alphanumeric characters, `.`, `_`, or `-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericClass> patch(
    GenericClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/genericClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GenericClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Generic class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value needs to follow the format
  /// `issuerID.identifier` where `issuerID` is issued by Google and
  /// `identifier` is chosen by you. The unique identifier can only include
  /// alphanumeric characters, `.`, `_`, or `-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericClass> update(
    GenericClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/genericClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return GenericClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GenericobjectResource {
  final commons.ApiRequester _requester;

  GenericobjectResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the generic object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericObjectAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericObjectAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/genericObject/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenericObjectAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the generic object with the given object ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value needs to follow the format
  /// `issuerID.identifier` where `issuerID` is issued by Google and
  /// `identifier` is chosen by you. The unique identifier can only include
  /// alphanumeric characters, `.`, `_`, or `-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericObject> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/genericObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GenericObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a generic object with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericObject> insert(
    GenericObject request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/genericObject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenericObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all generic objects for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [classId] - The ID of the class whose objects will be listed.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` objects are available in a list. For
  /// example, if you have a list of 200 objects and you call list with
  /// `maxResults` set to 20, list will return the first 20 objects and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 objects.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericObjectListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericObjectListResponse> list({
    core.String? classId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (classId != null) 'classId': [classId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/genericObject';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GenericObjectListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the generic object referenced by the given object ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value needs to follow the format
  /// `issuerID.identifier` where `issuerID` is issued by Google and
  /// `identifier` is chosen by you. The unique identifier can only include
  /// alphanumeric characters, `.`, `_`, or `-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericObject> patch(
    GenericObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/genericObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GenericObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the generic object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value needs to follow the format
  /// `issuerID.identifier` where `issuerID` is issued by Google and
  /// `identifier` is chosen by you. The unique identifier can only include
  /// alphanumeric characters, `.`, `_`, or `-`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenericObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenericObject> update(
    GenericObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/genericObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return GenericObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GiftcardclassResource {
  final commons.ApiRequester _requester;

  GiftcardclassResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the gift card class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardClassAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardClassAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/giftCardClass/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GiftCardClassAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the gift card class with the given class ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardClass> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/giftCardClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GiftCardClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an gift card class with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardClass> insert(
    GiftCardClass request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/giftCardClass';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GiftCardClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all gift card classes for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [issuerId] - The ID of the issuer authorized to list classes.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` classes are available in a list. For
  /// example, if you have a list of 200 classes and you call list with
  /// `maxResults` set to 20, list will return the first 20 classes and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 classes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardClassListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardClassListResponse> list({
    core.String? issuerId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (issuerId != null) 'issuerId': [issuerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/giftCardClass';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GiftCardClassListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the gift card class referenced by the given class ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardClass> patch(
    GiftCardClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/giftCardClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GiftCardClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the gift card class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardClass> update(
    GiftCardClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/giftCardClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return GiftCardClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class GiftcardobjectResource {
  final commons.ApiRequester _requester;

  GiftcardobjectResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the gift card object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardObjectAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardObjectAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/giftCardObject/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GiftCardObjectAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the gift card object with the given object ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardObject> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/giftCardObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GiftCardObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an gift card object with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardObject> insert(
    GiftCardObject request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/giftCardObject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GiftCardObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all gift card objects for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [classId] - The ID of the class whose objects will be listed.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` objects are available in a list. For
  /// example, if you have a list of 200 objects and you call list with
  /// `maxResults` set to 20, list will return the first 20 objects and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 objects.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardObjectListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardObjectListResponse> list({
    core.String? classId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (classId != null) 'classId': [classId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/giftCardObject';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GiftCardObjectListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the gift card object referenced by the given object ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardObject> patch(
    GiftCardObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/giftCardObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GiftCardObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the gift card object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GiftCardObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GiftCardObject> update(
    GiftCardObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/giftCardObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return GiftCardObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class IssuerResource {
  final commons.ApiRequester _requester;

  IssuerResource(commons.ApiRequester client) : _requester = client;

  /// Returns the issuer with the given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an issuer.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Issuer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Issuer> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/issuer/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Issuer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an issuer with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Issuer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Issuer> insert(
    Issuer request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/issuer';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Issuer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all issuers shared to the caller.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [IssuerListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<IssuerListResponse> list({
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/issuer';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return IssuerListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the issuer referenced by the given issuer ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an issuer.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Issuer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Issuer> patch(
    Issuer request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/issuer/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Issuer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the issuer referenced by the given issuer ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an issuer.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Issuer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Issuer> update(
    Issuer request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/issuer/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Issuer.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class JwtResource_1 {
  final commons.ApiRequester _requester;

  JwtResource_1(commons.ApiRequester client) : _requester = client;

  /// Inserts the resources in the JWT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JwtInsertResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JwtInsertResponse> insert(
    JwtResource request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/jwt';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return JwtInsertResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class LoyaltyclassResource {
  final commons.ApiRequester _requester;

  LoyaltyclassResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the loyalty class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyClassAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyClassAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyClass/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyClassAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the loyalty class with the given class ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyClass> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LoyaltyClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an loyalty class with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyClass> insert(
    LoyaltyClass request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/loyaltyClass';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all loyalty classes for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [issuerId] - The ID of the issuer authorized to list classes.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` classes are available in a list. For
  /// example, if you have a list of 200 classes and you call list with
  /// `maxResults` set to 20, list will return the first 20 classes and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 classes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyClassListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyClassListResponse> list({
    core.String? issuerId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (issuerId != null) 'issuerId': [issuerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/loyaltyClass';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LoyaltyClassListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the loyalty class referenced by the given class ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyClass> patch(
    LoyaltyClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the loyalty class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyClass> update(
    LoyaltyClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class LoyaltyobjectResource {
  final commons.ApiRequester _requester;

  LoyaltyobjectResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the loyalty object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyObjectAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyObjectAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyObject/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyObjectAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the loyalty object with the given object ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyObject> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LoyaltyObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an loyalty object with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyObject> insert(
    LoyaltyObject request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/loyaltyObject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all loyalty objects for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [classId] - The ID of the class whose objects will be listed.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` objects are available in a list. For
  /// example, if you have a list of 200 objects and you call list with
  /// `maxResults` set to 20, list will return the first 20 objects and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 objects.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyObjectListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyObjectListResponse> list({
    core.String? classId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (classId != null) 'classId': [classId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/loyaltyObject';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return LoyaltyObjectListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Modifies linked offer objects for the loyalty object with the given ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyObject> modifylinkedofferobjects(
    ModifyLinkedOfferObjectsRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyObject/' +
        commons.escapeVariable('$resourceId') +
        '/modifyLinkedOfferObjects';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the loyalty object referenced by the given object ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyObject> patch(
    LoyaltyObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the loyalty object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LoyaltyObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LoyaltyObject> update(
    LoyaltyObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/loyaltyObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return LoyaltyObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Downloads rotating barcode values for the transit object referenced by the
  /// given object ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
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
  /// - [Media] for Metadata downloads (see [downloadOptions]).
  ///
  /// - [commons.Media] for Media downloads (see [downloadOptions]).
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<core.Object> download(
    core.String resourceId, {
    core.String? $fields,
    commons.DownloadOptions downloadOptions = commons.DownloadOptions.metadata,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitObject/' +
        commons.escapeVariable('$resourceId') +
        '/downloadRotatingBarcodeValues';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
      downloadOptions: downloadOptions,
    );
    if (downloadOptions.isMetadataDownload) {
      return Media.fromJson(response_ as core.Map<core.String, core.dynamic>);
    } else {
      return response_ as commons.Media;
    }
  }

  /// Uploads rotating barcode values for the transit object referenced by the
  /// given object ID.
  ///
  /// Note the max upload size is specified in
  /// google3/production/config/cdd/apps-upload/customers/payments-consumer-passes/config.gcl
  /// and enforced by Scotty.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [TransitObjectUploadRotatingBarcodeValuesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitObjectUploadRotatingBarcodeValuesResponse> upload(
    TransitObjectUploadRotatingBarcodeValuesRequest request,
    core.String resourceId, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String url_;
    if (uploadMedia == null) {
      url_ = 'walletobjects/v1/transitObject/' +
          commons.escapeVariable('$resourceId') +
          '/uploadRotatingBarcodeValues';
    } else {
      url_ = '/upload/walletobjects/v1/transitObject/' +
          commons.escapeVariable('$resourceId') +
          '/uploadRotatingBarcodeValues';
    }

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return TransitObjectUploadRotatingBarcodeValuesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OfferclassResource {
  final commons.ApiRequester _requester;

  OfferclassResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the offer class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferClassAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferClassAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/offerClass/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OfferClassAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the offer class with the given class ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferClass> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/offerClass/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OfferClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an offer class with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferClass> insert(
    OfferClass request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/offerClass';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OfferClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all offer classes for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [issuerId] - The ID of the issuer authorized to list classes.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` classes are available in a list. For
  /// example, if you have a list of 200 classes and you call list with
  /// `maxResults` set to 20, list will return the first 20 classes and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 classes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferClassListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferClassListResponse> list({
    core.String? issuerId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (issuerId != null) 'issuerId': [issuerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/offerClass';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OfferClassListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the offer class referenced by the given class ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferClass> patch(
    OfferClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/offerClass/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return OfferClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the offer class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferClass> update(
    OfferClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/offerClass/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return OfferClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class OfferobjectResource {
  final commons.ApiRequester _requester;

  OfferobjectResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the offer object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferObjectAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferObjectAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/offerObject/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OfferObjectAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the offer object with the given object ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferObject> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/offerObject/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OfferObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an offer object with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferObject> insert(
    OfferObject request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/offerObject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return OfferObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all offer objects for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [classId] - The ID of the class whose objects will be listed.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` objects are available in a list. For
  /// example, if you have a list of 200 objects and you call list with
  /// `maxResults` set to 20, list will return the first 20 objects and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 objects.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferObjectListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferObjectListResponse> list({
    core.String? classId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (classId != null) 'classId': [classId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/offerObject';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OfferObjectListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the offer object referenced by the given object ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferObject> patch(
    OfferObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/offerObject/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return OfferObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the offer object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OfferObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OfferObject> update(
    OfferObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/offerObject/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return OfferObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PermissionsResource {
  final commons.ApiRequester _requester;

  PermissionsResource(commons.ApiRequester client) : _requester = client;

  /// Returns the permissions for the given issuer id.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an issuer. This ID must be unique
  /// across all issuers.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Permissions].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Permissions> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/permissions/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Permissions.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the permissions for the given issuer.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an issuer. This ID must be unique
  /// across all issuers.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Permissions].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Permissions> update(
    Permissions request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'walletobjects/v1/permissions/' + commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Permissions.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class SmarttapResource {
  final commons.ApiRequester _requester;

  SmarttapResource(commons.ApiRequester client) : _requester = client;

  /// Inserts the smart tap.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SmartTap].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SmartTap> insert(
    SmartTap request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/smartTap';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SmartTap.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class TransitclassResource {
  final commons.ApiRequester _requester;

  TransitclassResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the transit class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitClassAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitClassAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitClass/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TransitClassAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the transit class with the given class ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitClass> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TransitClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a transit class with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitClass> insert(
    TransitClass request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/transitClass';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TransitClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all transit classes for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [issuerId] - The ID of the issuer authorized to list classes.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` classes are available in a list. For
  /// example, if you have a list of 200 classes and you call list with
  /// `maxResults` set to 20, list will return the first 20 classes and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 classes.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitClassListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitClassListResponse> list({
    core.String? issuerId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (issuerId != null) 'issuerId': [issuerId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/transitClass';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TransitClassListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the transit class referenced by the given class ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitClass> patch(
    TransitClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return TransitClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the transit class referenced by the given class ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for a class. This ID must be unique
  /// across all classes from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitClass].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitClass> update(
    TransitClass request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitClass/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return TransitClass.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class TransitobjectResource {
  final commons.ApiRequester _requester;

  TransitobjectResource(commons.ApiRequester client) : _requester = client;

  /// Adds a message to the transit object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitObjectAddMessageResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitObjectAddMessageResponse> addmessage(
    AddMessageRequest request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitObject/' +
        commons.escapeVariable('$resourceId') +
        '/addMessage';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TransitObjectAddMessageResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the transit object with the given object ID.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitObject> get(
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TransitObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts an transit object with the given ID and properties.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitObject> insert(
    TransitObject request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/transitObject';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TransitObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of all transit objects for a given issuer ID.
  ///
  /// Request parameters:
  ///
  /// [classId] - The ID of the class whose objects will be listed.
  ///
  /// [maxResults] - Identifies the max number of results returned by a list.
  /// All results are returned if `maxResults` isn't defined.
  ///
  /// [token] - Used to get the next set of results if `maxResults` is
  /// specified, but more than `maxResults` objects are available in a list. For
  /// example, if you have a list of 200 objects and you call list with
  /// `maxResults` set to 20, list will return the first 20 objects and a token.
  /// Call list again with `maxResults` set to 20 and the token to get the next
  /// 20 objects.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitObjectListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitObjectListResponse> list({
    core.String? classId,
    core.int? maxResults,
    core.String? token,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (classId != null) 'classId': [classId],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (token != null) 'token': [token],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'walletobjects/v1/transitObject';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TransitObjectListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the transit object referenced by the given object ID.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitObject> patch(
    TransitObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return TransitObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the transit object referenced by the given object ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceId] - The unique identifier for an object. This ID must be unique
  /// across all objects from an issuer. This value should follow the format
  /// issuer ID. identifier where the former is issued by Google and latter is
  /// chosen by you. Your unique identifier should only include alphanumeric
  /// characters, '.', '_', or '-'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransitObject].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransitObject> update(
    TransitObject request,
    core.String resourceId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'walletobjects/v1/transitObject/' +
        commons.escapeVariable('$resourceId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return TransitObject.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// ActivationOptions for the class
class ActivationOptions {
  /// HTTPS URL that supports REST semantics.
  ///
  /// Would be used for requesting activation from partners for given valuable,
  /// triggered by the users.
  core.String? activationUrl;

  /// Flag to allow users to make activation call from different device.
  ///
  /// This allows client to render the activation button enabled even if the
  /// activationStatus is ACTIVATED but the requested device is different than
  /// the current device.
  core.bool? allowReactivation;

  ActivationOptions({
    this.activationUrl,
    this.allowReactivation,
  });

  ActivationOptions.fromJson(core.Map json_)
      : this(
          activationUrl: json_['activationUrl'] as core.String?,
          allowReactivation: json_['allowReactivation'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationUrl != null) 'activationUrl': activationUrl!,
        if (allowReactivation != null) 'allowReactivation': allowReactivation!,
      };
}

/// The activation status of the object.
///
/// This field includes activation status if valuable supports activation.
class ActivationStatus {
  ///
  /// Possible string values are:
  /// - "UNKNOWN_STATE"
  /// - "NOT_ACTIVATED" : Not-Activated, this is the default status
  /// - "not_activated" : Legacy alias for `NOT_ACTIVATED`. Deprecated.
  /// - "ACTIVATED" : Activated
  /// - "activated" : Legacy alias for `ACTIVATED`. Deprecated.
  core.String? state;

  ActivationStatus({
    this.state,
  });

  ActivationStatus.fromJson(core.Map json_)
      : this(
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// Resource used when the AddMessage endpoints are called.
class AddMessageRequest {
  Message? message;

  AddMessageRequest({
    this.message,
  });

  AddMessageRequest.fromJson(core.Map json_)
      : this(
          message: json_.containsKey('message')
              ? Message.fromJson(
                  json_['message'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (message != null) 'message': message!,
      };
}

class AirportInfo {
  /// Three character IATA airport code.
  ///
  /// This is a required field for `origin` and `destination`. Eg: "SFO"
  core.String? airportIataCode;

  /// Optional field that overrides the airport city name defined by IATA.
  ///
  /// By default, Google takes the `airportIataCode` provided and maps it to the
  /// official airport city name defined by IATA. Official IATA airport city
  /// names can be found at IATA airport city names website. For example, for
  /// the airport IATA code "LTN", IATA website tells us that the corresponding
  /// airport city is "London". If this field is not populated, Google would
  /// display "London". However, populating this field with a custom name (eg:
  /// "London Luton") would override it.
  LocalizedString? airportNameOverride;

  /// A name of the gate.
  ///
  /// Eg: "B59" or "59"
  core.String? gate;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#airportInfo"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Terminal name.
  ///
  /// Eg: "INTL" or "I"
  core.String? terminal;

  AirportInfo({
    this.airportIataCode,
    this.airportNameOverride,
    this.gate,
    this.kind,
    this.terminal,
  });

  AirportInfo.fromJson(core.Map json_)
      : this(
          airportIataCode: json_['airportIataCode'] as core.String?,
          airportNameOverride: json_.containsKey('airportNameOverride')
              ? LocalizedString.fromJson(json_['airportNameOverride']
                  as core.Map<core.String, core.dynamic>)
              : null,
          gate: json_['gate'] as core.String?,
          kind: json_['kind'] as core.String?,
          terminal: json_['terminal'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (airportIataCode != null) 'airportIataCode': airportIataCode!,
        if (airportNameOverride != null)
          'airportNameOverride': airportNameOverride!,
        if (gate != null) 'gate': gate!,
        if (kind != null) 'kind': kind!,
        if (terminal != null) 'terminal': terminal!,
      };
}

class AppLinkData {
  /// Optional information about the partner app link.
  AppLinkDataAppLinkInfo? androidAppLinkInfo;

  /// Optional display text for the app link button.
  ///
  /// Character limit is 30.
  LocalizedString? displayText;

  /// Links to open iOS apps are not supported.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  AppLinkDataAppLinkInfo? iosAppLinkInfo;

  /// Optional information about the partner web link.
  AppLinkDataAppLinkInfo? webAppLinkInfo;

  AppLinkData({
    this.androidAppLinkInfo,
    this.displayText,
    this.iosAppLinkInfo,
    this.webAppLinkInfo,
  });

  AppLinkData.fromJson(core.Map json_)
      : this(
          androidAppLinkInfo: json_.containsKey('androidAppLinkInfo')
              ? AppLinkDataAppLinkInfo.fromJson(json_['androidAppLinkInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayText: json_.containsKey('displayText')
              ? LocalizedString.fromJson(
                  json_['displayText'] as core.Map<core.String, core.dynamic>)
              : null,
          iosAppLinkInfo: json_.containsKey('iosAppLinkInfo')
              ? AppLinkDataAppLinkInfo.fromJson(json_['iosAppLinkInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          webAppLinkInfo: json_.containsKey('webAppLinkInfo')
              ? AppLinkDataAppLinkInfo.fromJson(json_['webAppLinkInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (androidAppLinkInfo != null)
          'androidAppLinkInfo': androidAppLinkInfo!,
        if (displayText != null) 'displayText': displayText!,
        if (iosAppLinkInfo != null) 'iosAppLinkInfo': iosAppLinkInfo!,
        if (webAppLinkInfo != null) 'webAppLinkInfo': webAppLinkInfo!,
      };
}

class AppLinkDataAppLinkInfo {
  /// Image isn't supported in the app link module.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Image? appLogoImage;

  /// Target to follow when opening the app link on clients.
  ///
  /// It will be used by partners to open their app or webpage.
  AppLinkDataAppLinkInfoAppTarget? appTarget;

  /// Description isn't supported in the app link module.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  LocalizedString? description;

  /// Title isn't supported in the app link module.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  LocalizedString? title;

  AppLinkDataAppLinkInfo({
    this.appLogoImage,
    this.appTarget,
    this.description,
    this.title,
  });

  AppLinkDataAppLinkInfo.fromJson(core.Map json_)
      : this(
          appLogoImage: json_.containsKey('appLogoImage')
              ? Image.fromJson(
                  json_['appLogoImage'] as core.Map<core.String, core.dynamic>)
              : null,
          appTarget: json_.containsKey('appTarget')
              ? AppLinkDataAppLinkInfoAppTarget.fromJson(
                  json_['appTarget'] as core.Map<core.String, core.dynamic>)
              : null,
          description: json_.containsKey('description')
              ? LocalizedString.fromJson(
                  json_['description'] as core.Map<core.String, core.dynamic>)
              : null,
          title: json_.containsKey('title')
              ? LocalizedString.fromJson(
                  json_['title'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLogoImage != null) 'appLogoImage': appLogoImage!,
        if (appTarget != null) 'appTarget': appTarget!,
        if (description != null) 'description': description!,
        if (title != null) 'title': title!,
      };
}

class AppLinkDataAppLinkInfoAppTarget {
  /// Package name for AppTarget.
  ///
  /// For example: com.google.android.gm
  core.String? packageName;

  /// URI for AppTarget.
  ///
  /// The description on the URI must be set. Prefer setting package field
  /// instead, if this target is defined for your application.
  Uri? targetUri;

  AppLinkDataAppLinkInfoAppTarget({
    this.packageName,
    this.targetUri,
  });

  AppLinkDataAppLinkInfoAppTarget.fromJson(core.Map json_)
      : this(
          packageName: json_['packageName'] as core.String?,
          targetUri: json_.containsKey('targetUri')
              ? Uri.fromJson(
                  json_['targetUri'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (packageName != null) 'packageName': packageName!,
        if (targetUri != null) 'targetUri': targetUri!,
      };
}

class AuthenticationKey {
  /// Available only to Smart Tap enabled partners.
  ///
  /// Contact support for additional guidance.
  core.int? id;

  /// Available only to Smart Tap enabled partners.
  ///
  /// Contact support for additional guidance.
  core.String? publicKeyPem;

  AuthenticationKey({
    this.id,
    this.publicKeyPem,
  });

  AuthenticationKey.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.int?,
          publicKeyPem: json_['publicKeyPem'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (publicKeyPem != null) 'publicKeyPem': publicKeyPem!,
      };
}

class Barcode {
  /// An optional text that will override the default text that shows under the
  /// barcode.
  ///
  /// This field is intended for a human readable equivalent of the barcode
  /// value, used when the barcode cannot be scanned.
  core.String? alternateText;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#barcode"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The render encoding for the barcode.
  ///
  /// When specified, barcode is rendered in the given encoding. Otherwise best
  /// known encoding is chosen by Google.
  /// Possible string values are:
  /// - "RENDER_ENCODING_UNSPECIFIED"
  /// - "UTF_8" : UTF_8 encoding for barcodes. This is only supported for
  /// barcode type qrCode.
  core.String? renderEncoding;

  /// Optional text that will be shown when the barcode is hidden behind a click
  /// action.
  ///
  /// This happens in cases where a pass has Smart Tap enabled. If not
  /// specified, a default is chosen by Google.
  LocalizedString? showCodeText;

  /// The type of barcode.
  /// Possible string values are:
  /// - "BARCODE_TYPE_UNSPECIFIED"
  /// - "AZTEC" : Not supported for Rotating Barcodes.
  /// - "aztec" : Legacy alias for `AZTEC`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "CODE_39" : Not supported for Rotating Barcodes.
  /// - "code39" : Legacy alias for `CODE_39`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "CODE_128" : Not supported for Rotating Barcodes.
  /// - "code128" : Legacy alias for `CODE_128`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "CODABAR" : Not supported for Rotating Barcodes.
  /// - "codabar" : Legacy alias for `CODABAR`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "DATA_MATRIX" : A 2D matrix barcode consisting of black and white. Cells
  /// or modules are arranged in either a square or rectangle. Not supported for
  /// Rotating Barcodes.
  /// - "dataMatrix" : Legacy alias for `DATA_MATRIX`. Deprecated. Not supported
  /// for Rotating Barcodes.
  /// - "EAN_8" : Not supported for Rotating Barcodes.
  /// - "ean8" : Legacy alias for `EAN_8`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "EAN_13" : Not supported for Rotating Barcodes.
  /// - "ean13" : Legacy alias for `EAN_13`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "EAN13" : Legacy alias for `EAN_13`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "ITF_14" : 14 digit ITF code Not supported for Rotating Barcodes.
  /// - "itf14" : Legacy alias for `ITF_14`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "PDF_417" : Supported for Rotating Barcodes.
  /// - "pdf417" : Legacy alias for `PDF_417`. Deprecated.
  /// - "PDF417" : Legacy alias for `PDF_417`. Deprecated.
  /// - "QR_CODE" : Supported for Rotating Barcodes.
  /// - "qrCode" : Legacy alias for `QR_CODE`. Deprecated.
  /// - "qrcode" : Legacy alias for `QR_CODE`. Deprecated.
  /// - "UPC_A" : 11 or 12 digit codes Not supported for Rotating Barcodes.
  /// - "upcA" : Legacy alias for `UPC_A`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "TEXT_ONLY" : Renders the field as a text field. The `alternateText`
  /// field may not be used with a barcode of type `textOnly`. Not supported for
  /// Rotating Barcodes.
  /// - "textOnly" : Legacy alias for `TEXT_ONLY`. Deprecated. Not supported for
  /// Rotating Barcodes.
  core.String? type;

  /// The value encoded in the barcode.
  core.String? value;

  Barcode({
    this.alternateText,
    this.kind,
    this.renderEncoding,
    this.showCodeText,
    this.type,
    this.value,
  });

  Barcode.fromJson(core.Map json_)
      : this(
          alternateText: json_['alternateText'] as core.String?,
          kind: json_['kind'] as core.String?,
          renderEncoding: json_['renderEncoding'] as core.String?,
          showCodeText: json_.containsKey('showCodeText')
              ? LocalizedString.fromJson(
                  json_['showCodeText'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_['type'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateText != null) 'alternateText': alternateText!,
        if (kind != null) 'kind': kind!,
        if (renderEncoding != null) 'renderEncoding': renderEncoding!,
        if (showCodeText != null) 'showCodeText': showCodeText!,
        if (type != null) 'type': type!,
        if (value != null) 'value': value!,
      };
}

class BarcodeSectionDetail {
  /// A reference to an existing text-based or image field to display.
  FieldSelector? fieldSelector;

  BarcodeSectionDetail({
    this.fieldSelector,
  });

  BarcodeSectionDetail.fromJson(core.Map json_)
      : this(
          fieldSelector: json_.containsKey('fieldSelector')
              ? FieldSelector.fromJson(
                  json_['fieldSelector'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldSelector != null) 'fieldSelector': fieldSelector!,
      };
}

/// Information to read/write to blobstore2.
typedef Blobstore2Info = $Blobstore2Info;

class BoardingAndSeatingInfo {
  /// Set this field only if this flight boards through more than one door or
  /// bridge and you want to explicitly print the door location on the boarding
  /// pass.
  ///
  /// Most airlines route their passengers to the right door or bridge by
  /// refering to doors/bridges by the `seatClass`. In those cases
  /// `boardingDoor` should not be set.
  /// Possible string values are:
  /// - "BOARDING_DOOR_UNSPECIFIED"
  /// - "FRONT"
  /// - "front" : Legacy alias for `FRONT`. Deprecated.
  /// - "BACK"
  /// - "back" : Legacy alias for `BACK`. Deprecated.
  core.String? boardingDoor;

  /// The value of boarding group (or zone) this passenger shall board with.
  ///
  /// eg: "B" The label for this value will be determined by the
  /// `boardingPolicy` field in the `flightClass` referenced by this object.
  core.String? boardingGroup;

  /// The value of boarding position.
  ///
  /// eg: "76"
  core.String? boardingPosition;

  /// A small image shown above the boarding barcode.
  ///
  /// Airlines can use it to communicate any special boarding privileges. In the
  /// event the security program logo is also set, this image might be rendered
  /// alongside the logo for that security program.
  Image? boardingPrivilegeImage;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#boardingAndSeatingInfo"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The passenger's seat assignment.
  ///
  /// To be used when there is no specific identifier to use in `seatNumber`.
  /// eg: "assigned at gate"
  LocalizedString? seatAssignment;

  /// The value of the seat class.
  ///
  /// eg: "Economy" or "Economy Plus"
  core.String? seatClass;

  /// The value of passenger seat.
  ///
  /// If there is no specific identifier, use `seatAssignment` instead. eg:
  /// "25A"
  core.String? seatNumber;

  /// The sequence number on the boarding pass.
  ///
  /// This usually matches the sequence in which the passengers checked in.
  /// Airline might use the number for manual boarding and bag tags. eg: "49"
  core.String? sequenceNumber;

  BoardingAndSeatingInfo({
    this.boardingDoor,
    this.boardingGroup,
    this.boardingPosition,
    this.boardingPrivilegeImage,
    this.kind,
    this.seatAssignment,
    this.seatClass,
    this.seatNumber,
    this.sequenceNumber,
  });

  BoardingAndSeatingInfo.fromJson(core.Map json_)
      : this(
          boardingDoor: json_['boardingDoor'] as core.String?,
          boardingGroup: json_['boardingGroup'] as core.String?,
          boardingPosition: json_['boardingPosition'] as core.String?,
          boardingPrivilegeImage: json_.containsKey('boardingPrivilegeImage')
              ? Image.fromJson(json_['boardingPrivilegeImage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          seatAssignment: json_.containsKey('seatAssignment')
              ? LocalizedString.fromJson(json_['seatAssignment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          seatClass: json_['seatClass'] as core.String?,
          seatNumber: json_['seatNumber'] as core.String?,
          sequenceNumber: json_['sequenceNumber'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boardingDoor != null) 'boardingDoor': boardingDoor!,
        if (boardingGroup != null) 'boardingGroup': boardingGroup!,
        if (boardingPosition != null) 'boardingPosition': boardingPosition!,
        if (boardingPrivilegeImage != null)
          'boardingPrivilegeImage': boardingPrivilegeImage!,
        if (kind != null) 'kind': kind!,
        if (seatAssignment != null) 'seatAssignment': seatAssignment!,
        if (seatClass != null) 'seatClass': seatClass!,
        if (seatNumber != null) 'seatNumber': seatNumber!,
        if (sequenceNumber != null) 'sequenceNumber': sequenceNumber!,
      };
}

class BoardingAndSeatingPolicy {
  /// Indicates the policy the airline uses for boarding.
  ///
  /// If unset, Google will default to `zoneBased`.
  /// Possible string values are:
  /// - "BOARDING_POLICY_UNSPECIFIED"
  /// - "ZONE_BASED"
  /// - "zoneBased" : Legacy alias for `ZONE_BASED`. Deprecated.
  /// - "GROUP_BASED"
  /// - "groupBased" : Legacy alias for `GROUP_BASED`. Deprecated.
  /// - "BOARDING_POLICY_OTHER"
  /// - "boardingPolicyOther" : Legacy alias for `BOARDING_POLICY_OTHER`.
  /// Deprecated.
  core.String? boardingPolicy;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#boardingAndSeatingPolicy"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Seating policy which dictates how we display the seat class.
  ///
  /// If unset, Google will default to `cabinBased`.
  /// Possible string values are:
  /// - "SEAT_CLASS_POLICY_UNSPECIFIED"
  /// - "CABIN_BASED"
  /// - "cabinBased" : Legacy alias for `CABIN_BASED`. Deprecated.
  /// - "CLASS_BASED"
  /// - "classBased" : Legacy alias for `CLASS_BASED`. Deprecated.
  /// - "TIER_BASED"
  /// - "tierBased" : Legacy alias for `TIER_BASED`. Deprecated.
  /// - "SEAT_CLASS_POLICY_OTHER"
  /// - "seatClassPolicyOther" : Legacy alias for `SEAT_CLASS_POLICY_OTHER`.
  /// Deprecated.
  core.String? seatClassPolicy;

  BoardingAndSeatingPolicy({
    this.boardingPolicy,
    this.kind,
    this.seatClassPolicy,
  });

  BoardingAndSeatingPolicy.fromJson(core.Map json_)
      : this(
          boardingPolicy: json_['boardingPolicy'] as core.String?,
          kind: json_['kind'] as core.String?,
          seatClassPolicy: json_['seatClassPolicy'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boardingPolicy != null) 'boardingPolicy': boardingPolicy!,
        if (kind != null) 'kind': kind!,
        if (seatClassPolicy != null) 'seatClassPolicy': seatClassPolicy!,
      };
}

class CallbackOptions {
  /// URL for the merchant endpoint that would be called to request updates.
  ///
  /// The URL should be hosted on HTTPS and robots.txt should allow the URL path
  /// to be accessible by UserAgent:Googlebot. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? updateRequestUrl;

  /// The HTTPS url configured by the merchant.
  ///
  /// The URL should be hosted on HTTPS and robots.txt should allow the URL path
  /// to be accessible by UserAgent:Googlebot.
  core.String? url;

  CallbackOptions({
    this.updateRequestUrl,
    this.url,
  });

  CallbackOptions.fromJson(core.Map json_)
      : this(
          updateRequestUrl: json_['updateRequestUrl'] as core.String?,
          url: json_['url'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (updateRequestUrl != null) 'updateRequestUrl': updateRequestUrl!,
        if (url != null) 'url': url!,
      };
}

class CardBarcodeSectionDetails {
  /// Optional information to display below the barcode.
  BarcodeSectionDetail? firstBottomDetail;

  /// Optional information to display above the barcode.
  ///
  /// If `secondTopDetail` is defined, this will be displayed to the start side
  /// of this detail section.
  BarcodeSectionDetail? firstTopDetail;

  /// Optional second piece of information to display above the barcode.
  ///
  /// If `firstTopDetail` is defined, this will be displayed to the end side of
  /// this detail section.
  BarcodeSectionDetail? secondTopDetail;

  CardBarcodeSectionDetails({
    this.firstBottomDetail,
    this.firstTopDetail,
    this.secondTopDetail,
  });

  CardBarcodeSectionDetails.fromJson(core.Map json_)
      : this(
          firstBottomDetail: json_.containsKey('firstBottomDetail')
              ? BarcodeSectionDetail.fromJson(json_['firstBottomDetail']
                  as core.Map<core.String, core.dynamic>)
              : null,
          firstTopDetail: json_.containsKey('firstTopDetail')
              ? BarcodeSectionDetail.fromJson(json_['firstTopDetail']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondTopDetail: json_.containsKey('secondTopDetail')
              ? BarcodeSectionDetail.fromJson(json_['secondTopDetail']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstBottomDetail != null) 'firstBottomDetail': firstBottomDetail!,
        if (firstTopDetail != null) 'firstTopDetail': firstTopDetail!,
        if (secondTopDetail != null) 'secondTopDetail': secondTopDetail!,
      };
}

class CardRowOneItem {
  /// The item to be displayed in the row.
  ///
  /// This item will be automatically centered.
  TemplateItem? item;

  CardRowOneItem({
    this.item,
  });

  CardRowOneItem.fromJson(core.Map json_)
      : this(
          item: json_.containsKey('item')
              ? TemplateItem.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (item != null) 'item': item!,
      };
}

class CardRowTemplateInfo {
  /// Template for a row containing one item.
  ///
  /// Exactly one of "one_item", "two_items", "three_items" must be set.
  CardRowOneItem? oneItem;

  /// Template for a row containing three items.
  ///
  /// Exactly one of "one_item", "two_items", "three_items" must be set.
  CardRowThreeItems? threeItems;

  /// Template for a row containing two items.
  ///
  /// Exactly one of "one_item", "two_items", "three_items" must be set.
  CardRowTwoItems? twoItems;

  CardRowTemplateInfo({
    this.oneItem,
    this.threeItems,
    this.twoItems,
  });

  CardRowTemplateInfo.fromJson(core.Map json_)
      : this(
          oneItem: json_.containsKey('oneItem')
              ? CardRowOneItem.fromJson(
                  json_['oneItem'] as core.Map<core.String, core.dynamic>)
              : null,
          threeItems: json_.containsKey('threeItems')
              ? CardRowThreeItems.fromJson(
                  json_['threeItems'] as core.Map<core.String, core.dynamic>)
              : null,
          twoItems: json_.containsKey('twoItems')
              ? CardRowTwoItems.fromJson(
                  json_['twoItems'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (oneItem != null) 'oneItem': oneItem!,
        if (threeItems != null) 'threeItems': threeItems!,
        if (twoItems != null) 'twoItems': twoItems!,
      };
}

class CardRowThreeItems {
  /// The item to be displayed at the end of the row.
  ///
  /// This item will be aligned to the right.
  TemplateItem? endItem;

  /// The item to be displayed in the middle of the row.
  ///
  /// This item will be centered between the start and end items.
  TemplateItem? middleItem;

  /// The item to be displayed at the start of the row.
  ///
  /// This item will be aligned to the left.
  TemplateItem? startItem;

  CardRowThreeItems({
    this.endItem,
    this.middleItem,
    this.startItem,
  });

  CardRowThreeItems.fromJson(core.Map json_)
      : this(
          endItem: json_.containsKey('endItem')
              ? TemplateItem.fromJson(
                  json_['endItem'] as core.Map<core.String, core.dynamic>)
              : null,
          middleItem: json_.containsKey('middleItem')
              ? TemplateItem.fromJson(
                  json_['middleItem'] as core.Map<core.String, core.dynamic>)
              : null,
          startItem: json_.containsKey('startItem')
              ? TemplateItem.fromJson(
                  json_['startItem'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endItem != null) 'endItem': endItem!,
        if (middleItem != null) 'middleItem': middleItem!,
        if (startItem != null) 'startItem': startItem!,
      };
}

class CardRowTwoItems {
  /// The item to be displayed at the end of the row.
  ///
  /// This item will be aligned to the right.
  TemplateItem? endItem;

  /// The item to be displayed at the start of the row.
  ///
  /// This item will be aligned to the left.
  TemplateItem? startItem;

  CardRowTwoItems({
    this.endItem,
    this.startItem,
  });

  CardRowTwoItems.fromJson(core.Map json_)
      : this(
          endItem: json_.containsKey('endItem')
              ? TemplateItem.fromJson(
                  json_['endItem'] as core.Map<core.String, core.dynamic>)
              : null,
          startItem: json_.containsKey('startItem')
              ? TemplateItem.fromJson(
                  json_['startItem'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endItem != null) 'endItem': endItem!,
        if (startItem != null) 'startItem': startItem!,
      };
}

class CardTemplateOverride {
  /// Template information for rows in the card view.
  ///
  /// At most three rows are allowed to be specified.
  core.List<CardRowTemplateInfo>? cardRowTemplateInfos;

  CardTemplateOverride({
    this.cardRowTemplateInfos,
  });

  CardTemplateOverride.fromJson(core.Map json_)
      : this(
          cardRowTemplateInfos: (json_['cardRowTemplateInfos'] as core.List?)
              ?.map((value) => CardRowTemplateInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardRowTemplateInfos != null)
          'cardRowTemplateInfos': cardRowTemplateInfos!,
      };
}

class ClassTemplateInfo {
  /// Specifies extra information to be displayed above and below the barcode.
  CardBarcodeSectionDetails? cardBarcodeSectionDetails;

  /// Override for the card view.
  CardTemplateOverride? cardTemplateOverride;

  /// Override for the details view (beneath the card view).
  DetailsTemplateOverride? detailsTemplateOverride;

  /// Override for the passes list view.
  ListTemplateOverride? listTemplateOverride;

  ClassTemplateInfo({
    this.cardBarcodeSectionDetails,
    this.cardTemplateOverride,
    this.detailsTemplateOverride,
    this.listTemplateOverride,
  });

  ClassTemplateInfo.fromJson(core.Map json_)
      : this(
          cardBarcodeSectionDetails:
              json_.containsKey('cardBarcodeSectionDetails')
                  ? CardBarcodeSectionDetails.fromJson(
                      json_['cardBarcodeSectionDetails']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          cardTemplateOverride: json_.containsKey('cardTemplateOverride')
              ? CardTemplateOverride.fromJson(json_['cardTemplateOverride']
                  as core.Map<core.String, core.dynamic>)
              : null,
          detailsTemplateOverride: json_.containsKey('detailsTemplateOverride')
              ? DetailsTemplateOverride.fromJson(
                  json_['detailsTemplateOverride']
                      as core.Map<core.String, core.dynamic>)
              : null,
          listTemplateOverride: json_.containsKey('listTemplateOverride')
              ? ListTemplateOverride.fromJson(json_['listTemplateOverride']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cardBarcodeSectionDetails != null)
          'cardBarcodeSectionDetails': cardBarcodeSectionDetails!,
        if (cardTemplateOverride != null)
          'cardTemplateOverride': cardTemplateOverride!,
        if (detailsTemplateOverride != null)
          'detailsTemplateOverride': detailsTemplateOverride!,
        if (listTemplateOverride != null)
          'listTemplateOverride': listTemplateOverride!,
      };
}

/// A sequence of media data references representing composite data.
///
/// Introduced to support Bigstore composite objects. For details, visit
/// http://go/bigstore-composites.
class CompositeMedia {
  /// Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should
  /// be the byte representation of a blobstore.BlobRef.
  ///
  /// Since Blobstore is deprecating v1, use blobstore2_info instead. For now,
  /// any v2 blob will also be represented in this field as v1 BlobRef.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to
  /// a v2 blob.
  Blobstore2Info? blobstore2Info;

  /// A binary data reference for a media download.
  ///
  /// Serves as a technology-agnostic binary reference in some Google
  /// infrastructure. This value is a serialized storage_cosmo.BinaryReference
  /// proto. Storing it as bytes is a hack to get around the fact that the cosmo
  /// proto (as well as others it includes) doesn't support JavaScript. This
  /// prevents us from including the actual type of this field.
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// crc32.c hash for the payload.
  core.int? crc32cHash;

  /// Media data, set if reference_type is INLINE
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Size of the data, in bytes
  core.String? length;

  /// MD5 hash for the payload.
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  ObjectId? objectId;

  /// Path to the data, set if reference_type is PATH
  core.String? path;

  /// Describes what the field reference contains.
  /// Possible string values are:
  /// - "PATH" : Reference contains a GFS path or a local path.
  /// - "BLOB_REF" : Reference points to a blobstore object. This could be
  /// either a v1 blob_ref or a v2 blobstore2_info. Clients should check
  /// blobstore2_info first, since v1 is being deprecated.
  /// - "INLINE" : Data is included into this proto buffer
  /// - "BIGSTORE_REF" : Reference points to a bigstore object
  /// - "COSMO_BINARY_REFERENCE" : Indicates the data is stored in
  /// cosmo_binary_reference.
  core.String? referenceType;

  /// SHA-1 hash for the payload.
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  CompositeMedia({
    this.blobRef,
    this.blobstore2Info,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.inline,
    this.length,
    this.md5Hash,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
  });

  CompositeMedia.fromJson(core.Map json_)
      : this(
          blobRef: json_['blobRef'] as core.String?,
          blobstore2Info: json_.containsKey('blobstore2Info')
              ? Blobstore2Info.fromJson(json_['blobstore2Info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cosmoBinaryReference: json_['cosmoBinaryReference'] as core.String?,
          crc32cHash: json_['crc32cHash'] as core.int?,
          inline: json_['inline'] as core.String?,
          length: json_['length'] as core.String?,
          md5Hash: json_['md5Hash'] as core.String?,
          objectId: json_.containsKey('objectId')
              ? ObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_['path'] as core.String?,
          referenceType: json_['referenceType'] as core.String?,
          sha1Hash: json_['sha1Hash'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blobRef != null) 'blobRef': blobRef!,
        if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
        if (cosmoBinaryReference != null)
          'cosmoBinaryReference': cosmoBinaryReference!,
        if (crc32cHash != null) 'crc32cHash': crc32cHash!,
        if (inline != null) 'inline': inline!,
        if (length != null) 'length': length!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (objectId != null) 'objectId': objectId!,
        if (path != null) 'path': path!,
        if (referenceType != null) 'referenceType': referenceType!,
        if (sha1Hash != null) 'sha1Hash': sha1Hash!,
      };
}

/// Detailed Content-Type information from Scotty.
///
/// The Content-Type of the media will typically be filled in by the header or
/// Scotty's best_guess, but this extended information provides the backend with
/// more information so that it can make a better decision if needed. This is
/// only used on media upload requests from Scotty.
typedef ContentTypeInfo = $ContentTypeInfo;

class DateTime {
  /// An ISO 8601 extended format date/time.
  ///
  /// Offset may or may not be required (refer to the parent field's
  /// documentation). Time may be specified up to nanosecond precision. Offsets
  /// may be specified with seconds precision (even though offset seconds is not
  /// part of ISO 8601). For example: `1985-04-12T23:20:50.52Z` would be 20
  /// minutes and 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
  /// `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
  /// the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in
  /// time as the above example). If the date/time is intended for a physical
  /// location in New York, this would be the equivalent of Eastern Daylight
  /// Time (EDT). Remember that offset varies in regions that observe Daylight
  /// Saving Time (or Summer Time), depending on the time of the year.
  /// `1985-04-12T19:20:50.52` would be 20 minutes and 50.52 seconds after the
  /// 19th hour of April 12th, 1985 with no offset information. Providing an
  /// offset makes this an absolute instant in time around the world. The
  /// date/time will be adjusted based on the user's time zone. For example, a
  /// time of `2018-06-19T18:30:00-04:00` will be 18:30:00 for a user in New
  /// York and 15:30:00 for a user in Los Angeles. Omitting the offset makes
  /// this a local date/time, representing several instants in time around the
  /// world. The date/time will always be in the user's current time zone. For
  /// example, a time of `2018-06-19T18:30:00` will be 18:30:00 for a user in
  /// New York and also 18:30:00 for a user in Los Angeles. This is useful when
  /// the same local date/time should apply to many physical locations across
  /// several time zones.
  core.String? date;

  DateTime({
    this.date,
  });

  DateTime.fromJson(core.Map json_)
      : this(
          date: json_['date'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
      };
}

class DetailsItemInfo {
  /// The item to be displayed in the details list.
  TemplateItem? item;

  DetailsItemInfo({
    this.item,
  });

  DetailsItemInfo.fromJson(core.Map json_)
      : this(
          item: json_.containsKey('item')
              ? TemplateItem.fromJson(
                  json_['item'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (item != null) 'item': item!,
      };
}

class DetailsTemplateOverride {
  /// Information for the "nth" item displayed in the details list.
  core.List<DetailsItemInfo>? detailsItemInfos;

  DetailsTemplateOverride({
    this.detailsItemInfos,
  });

  DetailsTemplateOverride.fromJson(core.Map json_)
      : this(
          detailsItemInfos: (json_['detailsItemInfos'] as core.List?)
              ?.map((value) => DetailsItemInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detailsItemInfos != null) 'detailsItemInfos': detailsItemInfos!,
      };
}

/// Device context associated with the object.
class DeviceContext {
  /// If set, redemption information will only be returned to the given device
  /// upon activation of the object.
  ///
  /// This should not be used as a stable identifier to trace a user's device.
  /// It can change across different passes for the same device or even across
  /// different activations for the same device. When setting this, callers must
  /// also set has_linked_device on the object being activated.
  core.String? deviceToken;

  DeviceContext({
    this.deviceToken,
  });

  DeviceContext.fromJson(core.Map json_)
      : this(
          deviceToken: json_['deviceToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deviceToken != null) 'deviceToken': deviceToken!,
      };
}

/// Backend response for a Diff get checksums response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class DiffChecksumsResponse {
  /// Exactly one of these fields must be populated.
  ///
  /// If checksums_location is filled, the server will return the corresponding
  /// contents to the user. If object_location is filled, the server will
  /// calculate the checksums based on the content there and return that to the
  /// user. For details on the format of the checksums, see
  /// http://go/scotty-diff-protocol.
  CompositeMedia? checksumsLocation;

  /// The chunk size of checksums.
  ///
  /// Must be a multiple of 256KB.
  core.String? chunkSizeBytes;

  /// If set, calculate the checksums based on the contents and return them to
  /// the caller.
  CompositeMedia? objectLocation;

  /// The total size of the server object.
  core.String? objectSizeBytes;

  /// The object version of the object the checksums are being returned for.
  core.String? objectVersion;

  DiffChecksumsResponse({
    this.checksumsLocation,
    this.chunkSizeBytes,
    this.objectLocation,
    this.objectSizeBytes,
    this.objectVersion,
  });

  DiffChecksumsResponse.fromJson(core.Map json_)
      : this(
          checksumsLocation: json_.containsKey('checksumsLocation')
              ? CompositeMedia.fromJson(json_['checksumsLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          chunkSizeBytes: json_['chunkSizeBytes'] as core.String?,
          objectLocation: json_.containsKey('objectLocation')
              ? CompositeMedia.fromJson(json_['objectLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectSizeBytes: json_['objectSizeBytes'] as core.String?,
          objectVersion: json_['objectVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsLocation != null) 'checksumsLocation': checksumsLocation!,
        if (chunkSizeBytes != null) 'chunkSizeBytes': chunkSizeBytes!,
        if (objectLocation != null) 'objectLocation': objectLocation!,
        if (objectSizeBytes != null) 'objectSizeBytes': objectSizeBytes!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// Backend response for a Diff download response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class DiffDownloadResponse {
  /// The original object location.
  CompositeMedia? objectLocation;

  DiffDownloadResponse({
    this.objectLocation,
  });

  DiffDownloadResponse.fromJson(core.Map json_)
      : this(
          objectLocation: json_.containsKey('objectLocation')
              ? CompositeMedia.fromJson(json_['objectLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectLocation != null) 'objectLocation': objectLocation!,
      };
}

/// A Diff upload request.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class DiffUploadRequest {
  /// The location of the checksums for the new object.
  ///
  /// Agents must clone the object located here, as the upload server will
  /// delete the contents once a response is received. For details on the format
  /// of the checksums, see http://go/scotty-diff-protocol.
  CompositeMedia? checksumsInfo;

  /// The location of the new object.
  ///
  /// Agents must clone the object located here, as the upload server will
  /// delete the contents once a response is received.
  CompositeMedia? objectInfo;

  /// The object version of the object that is the base version the incoming
  /// diff script will be applied to.
  ///
  /// This field will always be filled in.
  core.String? objectVersion;

  DiffUploadRequest({
    this.checksumsInfo,
    this.objectInfo,
    this.objectVersion,
  });

  DiffUploadRequest.fromJson(core.Map json_)
      : this(
          checksumsInfo: json_.containsKey('checksumsInfo')
              ? CompositeMedia.fromJson(
                  json_['checksumsInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          objectInfo: json_.containsKey('objectInfo')
              ? CompositeMedia.fromJson(
                  json_['objectInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          objectVersion: json_['objectVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (checksumsInfo != null) 'checksumsInfo': checksumsInfo!,
        if (objectInfo != null) 'objectInfo': objectInfo!,
        if (objectVersion != null) 'objectVersion': objectVersion!,
      };
}

/// Backend response for a Diff upload request.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
class DiffUploadResponse {
  /// The object version of the object at the server.
  ///
  /// Must be included in the end notification response. The version in the end
  /// notification response must correspond to the new version of the object
  /// that is now stored at the server, after the upload.
  core.String? objectVersion;

  /// The location of the original file for a diff upload request.
  ///
  /// Must be filled in if responding to an upload start notification.
  CompositeMedia? originalObject;

  DiffUploadResponse({
    this.objectVersion,
    this.originalObject,
  });

  DiffUploadResponse.fromJson(core.Map json_)
      : this(
          objectVersion: json_['objectVersion'] as core.String?,
          originalObject: json_.containsKey('originalObject')
              ? CompositeMedia.fromJson(json_['originalObject']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectVersion != null) 'objectVersion': objectVersion!,
        if (originalObject != null) 'originalObject': originalObject!,
      };
}

/// Backend response for a Diff get version response.
///
/// For details on the Scotty Diff protocol, visit
/// http://go/scotty-diff-protocol.
typedef DiffVersionResponse = $DiffVersionResponse;

/// Information about how a class may be discovered and instantiated from within
/// the Google Wallet app.
///
/// This is done by searching for a loyalty or gift card program and scanning or
/// manually entering.
class DiscoverableProgram {
  /// Information about the ability to signin and add a valuable for this
  /// program through a merchant site.
  ///
  /// Used when MERCHANT_HOSTED_SIGNIN is enabled.
  DiscoverableProgramMerchantSigninInfo? merchantSigninInfo;

  /// Information about the ability to signup and add a valuable for this
  /// program through a merchant site.
  ///
  /// Used when MERCHANT_HOSTED_SIGNUP is enabled.
  DiscoverableProgramMerchantSignupInfo? merchantSignupInfo;

  /// Visibility state of the discoverable program.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "TRUSTED_TESTERS" : Visible only to testers that have access to issuer
  /// account.
  /// - "trustedTesters" : Legacy alias for `TRUSTED_TESTERS`. Deprecated.
  /// - "LIVE" : Visible to all.
  /// - "live" : Legacy alias for `LIVE`. Deprecated.
  /// - "DISABLED" : Not visible.
  /// - "disabled" : Legacy alias for `DISABLED`. Deprecated.
  core.String? state;

  DiscoverableProgram({
    this.merchantSigninInfo,
    this.merchantSignupInfo,
    this.state,
  });

  DiscoverableProgram.fromJson(core.Map json_)
      : this(
          merchantSigninInfo: json_.containsKey('merchantSigninInfo')
              ? DiscoverableProgramMerchantSigninInfo.fromJson(
                  json_['merchantSigninInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          merchantSignupInfo: json_.containsKey('merchantSignupInfo')
              ? DiscoverableProgramMerchantSignupInfo.fromJson(
                  json_['merchantSignupInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (merchantSigninInfo != null)
          'merchantSigninInfo': merchantSigninInfo!,
        if (merchantSignupInfo != null)
          'merchantSignupInfo': merchantSignupInfo!,
        if (state != null) 'state': state!,
      };
}

/// Information about the merchant hosted signin flow for a program.
class DiscoverableProgramMerchantSigninInfo {
  /// The URL to direct the user to for the merchant's signin site.
  Uri? signinWebsite;

  DiscoverableProgramMerchantSigninInfo({
    this.signinWebsite,
  });

  DiscoverableProgramMerchantSigninInfo.fromJson(core.Map json_)
      : this(
          signinWebsite: json_.containsKey('signinWebsite')
              ? Uri.fromJson(
                  json_['signinWebsite'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (signinWebsite != null) 'signinWebsite': signinWebsite!,
      };
}

/// Information about the merchant hosted signup flow for a program.
class DiscoverableProgramMerchantSignupInfo {
  ///  User data that is sent in a POST request to the signup website URL.
  ///
  /// This information is encoded and then shared so that the merchant's website
  /// can prefill fields used to enroll the user for the discoverable program.
  core.List<core.String>? signupSharedDatas;

  /// The URL to direct the user to for the merchant's signup site.
  Uri? signupWebsite;

  DiscoverableProgramMerchantSignupInfo({
    this.signupSharedDatas,
    this.signupWebsite,
  });

  DiscoverableProgramMerchantSignupInfo.fromJson(core.Map json_)
      : this(
          signupSharedDatas: (json_['signupSharedDatas'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          signupWebsite: json_.containsKey('signupWebsite')
              ? Uri.fromJson(
                  json_['signupWebsite'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (signupSharedDatas != null) 'signupSharedDatas': signupSharedDatas!,
        if (signupWebsite != null) 'signupWebsite': signupWebsite!,
      };
}

/// Parameters specific to media downloads.
typedef DownloadParameters = $DownloadParameters;

class EventDateTime {
  /// A custom label to use for the doors open value (`doorsOpen`) on the card
  /// detail view.
  ///
  /// This should only be used if the default "Doors Open" label or one of the
  /// `doorsOpenLabel` options is not sufficient. Both `doorsOpenLabel` and
  /// `customDoorsOpenLabel` may not be set. If neither is set, the label will
  /// default to "Doors Open", localized. If the doors open field is unset, this
  /// label will not be used.
  LocalizedString? customDoorsOpenLabel;

  /// The date/time when the doors open at the venue.
  ///
  /// This is an ISO 8601 extended format date/time, with or without an offset.
  /// Time may be specified up to nanosecond precision. Offsets may be specified
  /// with seconds precision (even though offset seconds is not part of ISO
  /// 8601). For example: `1985-04-12T23:20:50.52Z` would be 20 minutes and
  /// 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
  /// `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
  /// the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in
  /// time as the above example). If the event were in New York, this would be
  /// the equivalent of Eastern Daylight Time (EDT). Remember that offset varies
  /// in regions that observe Daylight Saving Time (or Summer Time), depending
  /// on the time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and
  /// 50.52 seconds after the 19th hour of April 12th, 1985 with no offset
  /// information. The portion of the date/time without the offset is considered
  /// the "local date/time". This should be the local date/time at the venue.
  /// For example, if the event occurs at the 20th hour of June 5th, 2018 at the
  /// venue, the local date/time portion should be `2018-06-05T20:00:00`. If the
  /// local date/time at the venue is 4 hours before UTC, an offset of `-04:00`
  /// may be appended. Without offset information, some rich features may not be
  /// available.
  core.String? doorsOpen;

  /// The label to use for the doors open value (`doorsOpen`) on the card detail
  /// view.
  ///
  /// Each available option maps to a set of localized strings, so that
  /// translations are shown to the user based on their locale. Both
  /// `doorsOpenLabel` and `customDoorsOpenLabel` may not be set. If neither is
  /// set, the label will default to "Doors Open", localized. If the doors open
  /// field is unset, this label will not be used.
  /// Possible string values are:
  /// - "DOORS_OPEN_LABEL_UNSPECIFIED"
  /// - "DOORS_OPEN"
  /// - "doorsOpen" : Legacy alias for `DOORS_OPEN`. Deprecated.
  /// - "GATES_OPEN"
  /// - "gatesOpen" : Legacy alias for `GATES_OPEN`. Deprecated.
  core.String? doorsOpenLabel;

  /// The date/time when the event ends.
  ///
  /// If the event spans multiple days, it should be the end date/time on the
  /// last day. This is an ISO 8601 extended format date/time, with or without
  /// an offset. Time may be specified up to nanosecond precision. Offsets may
  /// be specified with seconds precision (even though offset seconds is not
  /// part of ISO 8601). For example: `1985-04-12T23:20:50.52Z` would be 20
  /// minutes and 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
  /// `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
  /// the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in
  /// time as the above example). If the event were in New York, this would be
  /// the equivalent of Eastern Daylight Time (EDT). Remember that offset varies
  /// in regions that observe Daylight Saving Time (or Summer Time), depending
  /// on the time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and
  /// 50.52 seconds after the 19th hour of April 12th, 1985 with no offset
  /// information. The portion of the date/time without the offset is considered
  /// the "local date/time". This should be the local date/time at the venue.
  /// For example, if the event occurs at the 20th hour of June 5th, 2018 at the
  /// venue, the local date/time portion should be `2018-06-05T20:00:00`. If the
  /// local date/time at the venue is 4 hours before UTC, an offset of `-04:00`
  /// may be appended. Without offset information, some rich features may not be
  /// available.
  core.String? end;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#eventDateTime"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The date/time when the event starts.
  ///
  /// If the event spans multiple days, it should be the start date/time on the
  /// first day. This is an ISO 8601 extended format date/time, with or without
  /// an offset. Time may be specified up to nanosecond precision. Offsets may
  /// be specified with seconds precision (even though offset seconds is not
  /// part of ISO 8601). For example: `1985-04-12T23:20:50.52Z` would be 20
  /// minutes and 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
  /// `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
  /// the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in
  /// time as the above example). If the event were in New York, this would be
  /// the equivalent of Eastern Daylight Time (EDT). Remember that offset varies
  /// in regions that observe Daylight Saving Time (or Summer Time), depending
  /// on the time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and
  /// 50.52 seconds after the 19th hour of April 12th, 1985 with no offset
  /// information. The portion of the date/time without the offset is considered
  /// the "local date/time". This should be the local date/time at the venue.
  /// For example, if the event occurs at the 20th hour of June 5th, 2018 at the
  /// venue, the local date/time portion should be `2018-06-05T20:00:00`. If the
  /// local date/time at the venue is 4 hours before UTC, an offset of `-04:00`
  /// may be appended. Without offset information, some rich features may not be
  /// available.
  core.String? start;

  EventDateTime({
    this.customDoorsOpenLabel,
    this.doorsOpen,
    this.doorsOpenLabel,
    this.end,
    this.kind,
    this.start,
  });

  EventDateTime.fromJson(core.Map json_)
      : this(
          customDoorsOpenLabel: json_.containsKey('customDoorsOpenLabel')
              ? LocalizedString.fromJson(json_['customDoorsOpenLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          doorsOpen: json_['doorsOpen'] as core.String?,
          doorsOpenLabel: json_['doorsOpenLabel'] as core.String?,
          end: json_['end'] as core.String?,
          kind: json_['kind'] as core.String?,
          start: json_['start'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customDoorsOpenLabel != null)
          'customDoorsOpenLabel': customDoorsOpenLabel!,
        if (doorsOpen != null) 'doorsOpen': doorsOpen!,
        if (doorsOpenLabel != null) 'doorsOpenLabel': doorsOpenLabel!,
        if (end != null) 'end': end!,
        if (kind != null) 'kind': kind!,
        if (start != null) 'start': start!,
      };
}

class EventReservationInfo {
  /// The confirmation code of the event reservation.
  ///
  /// This may also take the form of an "order number", "confirmation number",
  /// "reservation number", or other equivalent.
  core.String? confirmationCode;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#eventReservationInfo"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  EventReservationInfo({
    this.confirmationCode,
    this.kind,
  });

  EventReservationInfo.fromJson(core.Map json_)
      : this(
          confirmationCode: json_['confirmationCode'] as core.String?,
          kind: json_['kind'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confirmationCode != null) 'confirmationCode': confirmationCode!,
        if (kind != null) 'kind': kind!,
      };
}

class EventSeat {
  /// The gate the ticket holder should enter to get to their seat, such as "A"
  /// or "West".
  ///
  /// This field is localizable so you may translate words or use different
  /// alphabets for the characters in an identifier.
  LocalizedString? gate;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#eventSeat"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The row of the seat, such as "1", E", "BB", or "A5".
  ///
  /// This field is localizable so you may translate words or use different
  /// alphabets for the characters in an identifier.
  LocalizedString? row;

  /// The seat number, such as "1", "2", "3", or any other seat identifier.
  ///
  /// This field is localizable so you may translate words or use different
  /// alphabets for the characters in an identifier.
  LocalizedString? seat;

  /// The section of the seat, such as "121".
  ///
  /// This field is localizable so you may translate words or use different
  /// alphabets for the characters in an identifier.
  LocalizedString? section;

  EventSeat({
    this.gate,
    this.kind,
    this.row,
    this.seat,
    this.section,
  });

  EventSeat.fromJson(core.Map json_)
      : this(
          gate: json_.containsKey('gate')
              ? LocalizedString.fromJson(
                  json_['gate'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          row: json_.containsKey('row')
              ? LocalizedString.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>)
              : null,
          seat: json_.containsKey('seat')
              ? LocalizedString.fromJson(
                  json_['seat'] as core.Map<core.String, core.dynamic>)
              : null,
          section: json_.containsKey('section')
              ? LocalizedString.fromJson(
                  json_['section'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gate != null) 'gate': gate!,
        if (kind != null) 'kind': kind!,
        if (row != null) 'row': row!,
        if (seat != null) 'seat': seat!,
        if (section != null) 'section': section!,
      };
}

class EventTicketClass {
  /// Use `multipleDevicesAndHoldersAllowedStatus` instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? allowMultipleUsersPerObject;

  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding object that will be used
  /// instead.
  AppLinkData? appLinkData;

  /// Callback options to be used to call the issuer back for every save/delete
  /// of an object for this class by the end-user.
  ///
  /// All objects of this class are eligible for the callback.
  CallbackOptions? callbackOptions;

  /// Template information about how the class should be displayed.
  ///
  /// If unset, Google will fallback to a default set of fields to display.
  ClassTemplateInfo? classTemplateInfo;

  /// The label to use for the confirmation code value
  /// (`eventTicketObject.reservationInfo.confirmationCode`) on the card detail
  /// view.
  ///
  /// Each available option maps to a set of localized strings, so that
  /// translations are shown to the user based on their locale. Both
  /// `confirmationCodeLabel` and `customConfirmationCodeLabel` may not be set.
  /// If neither is set, the label will default to "Confirmation Code",
  /// localized. If the confirmation code field is unset, this label will not be
  /// used.
  /// Possible string values are:
  /// - "CONFIRMATION_CODE_LABEL_UNSPECIFIED"
  /// - "CONFIRMATION_CODE"
  /// - "confirmationCode" : Legacy alias for `CONFIRMATION_CODE`. Deprecated.
  /// - "CONFIRMATION_NUMBER"
  /// - "confirmationNumber" : Legacy alias for `CONFIRMATION_NUMBER`.
  /// Deprecated.
  /// - "ORDER_NUMBER"
  /// - "orderNumber" : Legacy alias for `ORDER_NUMBER`. Deprecated.
  /// - "RESERVATION_NUMBER"
  /// - "reservationNumber" : Legacy alias for `RESERVATION_NUMBER`. Deprecated.
  core.String? confirmationCodeLabel;

  /// Country code used to display the card's country (when the user is not in
  /// that country), as well as to display localized content when content is not
  /// available in the user's locale.
  core.String? countryCode;

  /// A custom label to use for the confirmation code value
  /// (`eventTicketObject.reservationInfo.confirmationCode`) on the card detail
  /// view.
  ///
  /// This should only be used if the default "Confirmation Code" label or one
  /// of the `confirmationCodeLabel` options is not sufficient. Both
  /// `confirmationCodeLabel` and `customConfirmationCodeLabel` may not be set.
  /// If neither is set, the label will default to "Confirmation Code",
  /// localized. If the confirmation code field is unset, this label will not be
  /// used.
  LocalizedString? customConfirmationCodeLabel;

  /// A custom label to use for the gate value
  /// (`eventTicketObject.seatInfo.gate`) on the card detail view.
  ///
  /// This should only be used if the default "Gate" label or one of the
  /// `gateLabel` options is not sufficient. Both `gateLabel` and
  /// `customGateLabel` may not be set. If neither is set, the label will
  /// default to "Gate", localized. If the gate field is unset, this label will
  /// not be used.
  LocalizedString? customGateLabel;

  /// A custom label to use for the row value (`eventTicketObject.seatInfo.row`)
  /// on the card detail view.
  ///
  /// This should only be used if the default "Row" label or one of the
  /// `rowLabel` options is not sufficient. Both `rowLabel` and `customRowLabel`
  /// may not be set. If neither is set, the label will default to "Row",
  /// localized. If the row field is unset, this label will not be used.
  LocalizedString? customRowLabel;

  /// A custom label to use for the seat value
  /// (`eventTicketObject.seatInfo.seat`) on the card detail view.
  ///
  /// This should only be used if the default "Seat" label or one of the
  /// `seatLabel` options is not sufficient. Both `seatLabel` and
  /// `customSeatLabel` may not be set. If neither is set, the label will
  /// default to "Seat", localized. If the seat field is unset, this label will
  /// not be used.
  LocalizedString? customSeatLabel;

  /// A custom label to use for the section value
  /// (`eventTicketObject.seatInfo.section`) on the card detail view.
  ///
  /// This should only be used if the default "Section" label or one of the
  /// `sectionLabel` options is not sufficient. Both `sectionLabel` and
  /// `customSectionLabel` may not be set. If neither is set, the label will
  /// default to "Section", localized. If the section field is unset, this label
  /// will not be used.
  LocalizedString? customSectionLabel;

  /// The date & time information of the event.
  EventDateTime? dateTime;

  /// Identifies whether this class supports Smart Tap.
  ///
  /// The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields
  /// must also be set up correctly in order for a pass to support Smart Tap.
  core.bool? enableSmartTap;

  /// The ID of the event.
  ///
  /// This ID should be unique for every event in an account. It is used to
  /// group tickets together if the user has saved multiple tickets for the same
  /// event. It can be at most 64 characters. If provided, the grouping will be
  /// stable. Be wary of unintentional collision to avoid grouping tickets that
  /// should not be grouped. If you use only one class per event, you can simply
  /// set this to the `classId` (with or without the issuer ID portion). If not
  /// provided, the platform will attempt to use other data to group tickets
  /// (potentially unstable).
  core.String? eventId;

  /// The name of the event, such as "LA Dodgers at SF Giants".
  ///
  /// Required.
  LocalizedString? eventName;

  /// The fine print, terms, or conditions of the ticket.
  LocalizedString? finePrint;

  /// The label to use for the gate value (`eventTicketObject.seatInfo.gate`) on
  /// the card detail view.
  ///
  /// Each available option maps to a set of localized strings, so that
  /// translations are shown to the user based on their locale. Both `gateLabel`
  /// and `customGateLabel` may not be set. If neither is set, the label will
  /// default to "Gate", localized. If the gate field is unset, this label will
  /// not be used.
  /// Possible string values are:
  /// - "GATE_LABEL_UNSPECIFIED"
  /// - "GATE"
  /// - "gate" : Legacy alias for `GATE`. Deprecated.
  /// - "DOOR"
  /// - "door" : Legacy alias for `DOOR`. Deprecated.
  /// - "ENTRANCE"
  /// - "entrance" : Legacy alias for `ENTRANCE`. Deprecated.
  core.String? gateLabel;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, nothing will be displayed. The image will display at
  /// 100% width.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The URI of your application's home page.
  ///
  /// Populating the URI in this field results in the exact same behavior as
  /// populating an URI in linksModuleData (when an object is rendered, a link
  /// to the homepage is shown in what would usually be thought of as the
  /// linksModuleData section of the object).
  Uri? homepageUri;

  /// The unique identifier for a class.
  ///
  /// This ID must be unique across all classes from an issuer. This value
  /// should follow the format issuer ID. identifier where the former is issued
  /// by Google and latter is chosen by you. Your unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  InfoModuleData? infoModuleData;

  /// The issuer name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  ///
  /// Required.
  core.String? issuerName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#eventTicketClass"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Links module data.
  ///
  /// If links module data is also defined on the object, both will be
  /// displayed.
  LinksModuleData? linksModuleData;

  /// Translated strings for the issuer_name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedIssuerName;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// The logo image of the ticket.
  ///
  /// This image is displayed in the card detail view of the app.
  Image? logo;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the class. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Identifies whether multiple users and devices will save the same object
  /// referencing this class.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified preference.
  /// - "MULTIPLE_HOLDERS" : The Pass object is shareable by a user and can be
  /// saved by any number of different users, and on any number of devices.
  /// Partners typically use this setup for passes that do not need to be
  /// restricted to a single user or pinned to a single device.
  /// - "ONE_USER_ALL_DEVICES" : An object can only be saved by one user, but
  /// this user can view and use it on multiple of their devices. Once the first
  /// user saves the object, no other user will be allowed to view or save it.
  /// - "ONE_USER_ONE_DEVICE" : An object can only be saved by one user on a
  /// single device. Intended for use by select partners in limited
  /// circumstances. An example use case is a transit ticket that should be
  /// "device pinned", meaning it can be saved, viewed and used only by a single
  /// user on a single device. Contact support for additional information.
  /// - "multipleHolders" : Legacy alias for `MULTIPLE_HOLDERS`. Deprecated.
  /// - "oneUserAllDevices" : Legacy alias for `ONE_USER_ALL_DEVICES`.
  /// Deprecated.
  /// - "oneUserOneDevice" : Legacy alias for `ONE_USER_ONE_DEVICE`. Deprecated.
  core.String? multipleDevicesAndHoldersAllowedStatus;

  /// Whether or not field updates to this class should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If not specified, no notification will be triggered.
  /// This setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Identifies which redemption issuers can redeem the pass over Smart Tap.
  ///
  /// Redemption issuers are identified by their issuer ID. Redemption issuers
  /// must have at least one Smart Tap key configured. The `enableSmartTap` and
  /// object level `smartTapRedemptionLevel` fields must also be set up
  /// correctly in order for a pass to support Smart Tap.
  core.List<core.String>? redemptionIssuers;

  /// The review comments set by the platform when a class is marked `approved`
  /// or `rejected`.
  Review? review;

  /// The status of the class.
  ///
  /// This field can be set to `draft` or `underReview` using the insert, patch,
  /// or update API calls. Once the review state is changed from `draft` it may
  /// not be changed back to `draft`. You should keep this field to `draft` when
  /// the class is under development. A `draft` class cannot be used to create
  /// any object. You should set this field to `underReview` when you believe
  /// the class is ready for use. The platform will automatically set this field
  /// to `approved` and it can be immediately used to create or migrate objects.
  /// When updating an already `approved` class you should keep setting this
  /// field to `underReview`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED"
  /// - "UNDER_REVIEW"
  /// - "underReview" : Legacy alias for `UNDER_REVIEW`. Deprecated.
  /// - "APPROVED"
  /// - "approved" : Legacy alias for `APPROVED`. Deprecated.
  /// - "REJECTED"
  /// - "rejected" : Legacy alias for `REJECTED`. Deprecated.
  /// - "DRAFT"
  /// - "draft" : Legacy alias for `DRAFT`. Deprecated.
  core.String? reviewStatus;

  /// The label to use for the row value (`eventTicketObject.seatInfo.row`) on
  /// the card detail view.
  ///
  /// Each available option maps to a set of localized strings, so that
  /// translations are shown to the user based on their locale. Both `rowLabel`
  /// and `customRowLabel` may not be set. If neither is set, the label will
  /// default to "Row", localized. If the row field is unset, this label will
  /// not be used.
  /// Possible string values are:
  /// - "ROW_LABEL_UNSPECIFIED"
  /// - "ROW"
  /// - "row" : Legacy alias for `ROW`. Deprecated.
  core.String? rowLabel;

  /// The label to use for the seat value (`eventTicketObject.seatInfo.seat`) on
  /// the card detail view.
  ///
  /// Each available option maps to a set of localized strings, so that
  /// translations are shown to the user based on their locale. Both `seatLabel`
  /// and `customSeatLabel` may not be set. If neither is set, the label will
  /// default to "Seat", localized. If the seat field is unset, this label will
  /// not be used.
  /// Possible string values are:
  /// - "SEAT_LABEL_UNSPECIFIED"
  /// - "SEAT"
  /// - "seat" : Legacy alias for `SEAT`. Deprecated.
  core.String? seatLabel;

  /// The label to use for the section value
  /// (`eventTicketObject.seatInfo.section`) on the card detail view.
  ///
  /// Each available option maps to a set of localized strings, so that
  /// translations are shown to the user based on their locale. Both
  /// `sectionLabel` and `customSectionLabel` may not be set. If neither is set,
  /// the label will default to "Section", localized. If the section field is
  /// unset, this label will not be used.
  /// Possible string values are:
  /// - "SECTION_LABEL_UNSPECIFIED"
  /// - "SECTION"
  /// - "section" : Legacy alias for `SECTION`. Deprecated.
  /// - "THEATER"
  /// - "theater" : Legacy alias for `THEATER`. Deprecated.
  core.String? sectionLabel;

  /// Optional information about the security animation.
  ///
  /// If this is set a security animation will be rendered on pass details.
  SecurityAnimation? securityAnimation;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the class. For a pass only ten will be displayed,
  /// prioritizing those from the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Event venue details.
  EventVenue? venue;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  /// View Unlock Requirement options for the event ticket.
  /// Possible string values are:
  /// - "VIEW_UNLOCK_REQUIREMENT_UNSPECIFIED" : Default value, same as
  /// UNLOCK_NOT_REQUIRED.
  /// - "UNLOCK_NOT_REQUIRED" : Default behavior for all the existing Passes if
  /// ViewUnlockRequirement is not set.
  /// - "UNLOCK_REQUIRED_TO_VIEW" : Requires the user to unlock their device
  /// each time the pass is viewed. If the user removes their device lock after
  /// saving the pass, then they will be prompted to create a device lock before
  /// the pass can be viewed.
  core.String? viewUnlockRequirement;

  /// The wide logo of the ticket.
  ///
  /// When provided, this will be used in place of the logo in the top left of
  /// the card view.
  Image? wideLogo;

  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Image? wordMark;

  EventTicketClass({
    this.allowMultipleUsersPerObject,
    this.appLinkData,
    this.callbackOptions,
    this.classTemplateInfo,
    this.confirmationCodeLabel,
    this.countryCode,
    this.customConfirmationCodeLabel,
    this.customGateLabel,
    this.customRowLabel,
    this.customSeatLabel,
    this.customSectionLabel,
    this.dateTime,
    this.enableSmartTap,
    this.eventId,
    this.eventName,
    this.finePrint,
    this.gateLabel,
    this.heroImage,
    this.hexBackgroundColor,
    this.homepageUri,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.issuerName,
    this.kind,
    this.linksModuleData,
    this.localizedIssuerName,
    this.locations,
    this.logo,
    this.merchantLocations,
    this.messages,
    this.multipleDevicesAndHoldersAllowedStatus,
    this.notifyPreference,
    this.redemptionIssuers,
    this.review,
    this.reviewStatus,
    this.rowLabel,
    this.seatLabel,
    this.sectionLabel,
    this.securityAnimation,
    this.textModulesData,
    this.valueAddedModuleData,
    this.venue,
    this.version,
    this.viewUnlockRequirement,
    this.wideLogo,
    this.wordMark,
  });

  EventTicketClass.fromJson(core.Map json_)
      : this(
          allowMultipleUsersPerObject:
              json_['allowMultipleUsersPerObject'] as core.bool?,
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          callbackOptions: json_.containsKey('callbackOptions')
              ? CallbackOptions.fromJson(json_['callbackOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          classTemplateInfo: json_.containsKey('classTemplateInfo')
              ? ClassTemplateInfo.fromJson(json_['classTemplateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          confirmationCodeLabel: json_['confirmationCodeLabel'] as core.String?,
          countryCode: json_['countryCode'] as core.String?,
          customConfirmationCodeLabel: json_
                  .containsKey('customConfirmationCodeLabel')
              ? LocalizedString.fromJson(json_['customConfirmationCodeLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customGateLabel: json_.containsKey('customGateLabel')
              ? LocalizedString.fromJson(json_['customGateLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customRowLabel: json_.containsKey('customRowLabel')
              ? LocalizedString.fromJson(json_['customRowLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customSeatLabel: json_.containsKey('customSeatLabel')
              ? LocalizedString.fromJson(json_['customSeatLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customSectionLabel: json_.containsKey('customSectionLabel')
              ? LocalizedString.fromJson(json_['customSectionLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dateTime: json_.containsKey('dateTime')
              ? EventDateTime.fromJson(
                  json_['dateTime'] as core.Map<core.String, core.dynamic>)
              : null,
          enableSmartTap: json_['enableSmartTap'] as core.bool?,
          eventId: json_['eventId'] as core.String?,
          eventName: json_.containsKey('eventName')
              ? LocalizedString.fromJson(
                  json_['eventName'] as core.Map<core.String, core.dynamic>)
              : null,
          finePrint: json_.containsKey('finePrint')
              ? LocalizedString.fromJson(
                  json_['finePrint'] as core.Map<core.String, core.dynamic>)
              : null,
          gateLabel: json_['gateLabel'] as core.String?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          homepageUri: json_.containsKey('homepageUri')
              ? Uri.fromJson(
                  json_['homepageUri'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          issuerName: json_['issuerName'] as core.String?,
          kind: json_['kind'] as core.String?,
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedIssuerName: json_.containsKey('localizedIssuerName')
              ? LocalizedString.fromJson(json_['localizedIssuerName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          logo: json_.containsKey('logo')
              ? Image.fromJson(
                  json_['logo'] as core.Map<core.String, core.dynamic>)
              : null,
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          multipleDevicesAndHoldersAllowedStatus:
              json_['multipleDevicesAndHoldersAllowedStatus'] as core.String?,
          notifyPreference: json_['notifyPreference'] as core.String?,
          redemptionIssuers: (json_['redemptionIssuers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          review: json_.containsKey('review')
              ? Review.fromJson(
                  json_['review'] as core.Map<core.String, core.dynamic>)
              : null,
          reviewStatus: json_['reviewStatus'] as core.String?,
          rowLabel: json_['rowLabel'] as core.String?,
          seatLabel: json_['seatLabel'] as core.String?,
          sectionLabel: json_['sectionLabel'] as core.String?,
          securityAnimation: json_.containsKey('securityAnimation')
              ? SecurityAnimation.fromJson(json_['securityAnimation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          venue: json_.containsKey('venue')
              ? EventVenue.fromJson(
                  json_['venue'] as core.Map<core.String, core.dynamic>)
              : null,
          version: json_['version'] as core.String?,
          viewUnlockRequirement: json_['viewUnlockRequirement'] as core.String?,
          wideLogo: json_.containsKey('wideLogo')
              ? Image.fromJson(
                  json_['wideLogo'] as core.Map<core.String, core.dynamic>)
              : null,
          wordMark: json_.containsKey('wordMark')
              ? Image.fromJson(
                  json_['wordMark'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMultipleUsersPerObject != null)
          'allowMultipleUsersPerObject': allowMultipleUsersPerObject!,
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (callbackOptions != null) 'callbackOptions': callbackOptions!,
        if (classTemplateInfo != null) 'classTemplateInfo': classTemplateInfo!,
        if (confirmationCodeLabel != null)
          'confirmationCodeLabel': confirmationCodeLabel!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (customConfirmationCodeLabel != null)
          'customConfirmationCodeLabel': customConfirmationCodeLabel!,
        if (customGateLabel != null) 'customGateLabel': customGateLabel!,
        if (customRowLabel != null) 'customRowLabel': customRowLabel!,
        if (customSeatLabel != null) 'customSeatLabel': customSeatLabel!,
        if (customSectionLabel != null)
          'customSectionLabel': customSectionLabel!,
        if (dateTime != null) 'dateTime': dateTime!,
        if (enableSmartTap != null) 'enableSmartTap': enableSmartTap!,
        if (eventId != null) 'eventId': eventId!,
        if (eventName != null) 'eventName': eventName!,
        if (finePrint != null) 'finePrint': finePrint!,
        if (gateLabel != null) 'gateLabel': gateLabel!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (issuerName != null) 'issuerName': issuerName!,
        if (kind != null) 'kind': kind!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (localizedIssuerName != null)
          'localizedIssuerName': localizedIssuerName!,
        if (locations != null) 'locations': locations!,
        if (logo != null) 'logo': logo!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (multipleDevicesAndHoldersAllowedStatus != null)
          'multipleDevicesAndHoldersAllowedStatus':
              multipleDevicesAndHoldersAllowedStatus!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (redemptionIssuers != null) 'redemptionIssuers': redemptionIssuers!,
        if (review != null) 'review': review!,
        if (reviewStatus != null) 'reviewStatus': reviewStatus!,
        if (rowLabel != null) 'rowLabel': rowLabel!,
        if (seatLabel != null) 'seatLabel': seatLabel!,
        if (sectionLabel != null) 'sectionLabel': sectionLabel!,
        if (securityAnimation != null) 'securityAnimation': securityAnimation!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (venue != null) 'venue': venue!,
        if (version != null) 'version': version!,
        if (viewUnlockRequirement != null)
          'viewUnlockRequirement': viewUnlockRequirement!,
        if (wideLogo != null) 'wideLogo': wideLogo!,
        if (wordMark != null) 'wordMark': wordMark!,
      };
}

class EventTicketClassAddMessageResponse {
  /// The updated EventTicketClass resource.
  EventTicketClass? resource;

  EventTicketClassAddMessageResponse({
    this.resource,
  });

  EventTicketClassAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? EventTicketClass.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class EventTicketClassListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<EventTicketClass>? resources;

  EventTicketClassListResponse({
    this.pagination,
    this.resources,
  });

  EventTicketClassListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => EventTicketClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class EventTicketObject {
  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding class only object
  /// AppLinkData will be displayed.
  AppLinkData? appLinkData;

  /// The barcode type and value.
  Barcode? barcode;

  /// The class associated with this object.
  ///
  /// The class must be of the same type as this object, must already exist, and
  /// must be approved. Class IDs should follow the format issuer ID.identifier
  /// where the former is issued by Google and latter is chosen by you.
  ///
  /// Required.
  core.String? classId;

  /// A copy of the inherited fields of the parent class.
  ///
  /// These fields are retrieved during a GET.
  EventTicketClass? classReference;

  /// Indicates if notifications should explicitly be suppressed.
  ///
  /// If this field is set to true, regardless of the `messages` field,
  /// expiration notifications to the user will be suppressed. By default, this
  /// field is set to false. Currently, this can only be set for offers.
  core.bool? disableExpirationNotification;

  /// The face value of the ticket, matching what would be printed on a physical
  /// version of the ticket.
  Money? faceValue;

  /// Information that controls how passes are grouped together.
  GroupingInfo? groupingInfo;

  /// Whether this object is currently linked to a single device.
  ///
  /// This field is set by the platform when a user saves the object, linking it
  /// to their device. Intended for use by select partners. Contact support for
  /// additional information.
  core.bool? hasLinkedDevice;

  /// Indicates if the object has users.
  ///
  /// This field is set by the platform.
  core.bool? hasUsers;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, hero image of the class, if present, will be
  /// displayed. If hero image of the class is also not present, nothing will be
  /// displayed.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The unique identifier for an object.
  ///
  /// This ID must be unique across all objects from an issuer. This value
  /// should follow the format issuer ID.identifier where the former is issued
  /// by Google and latter is chosen by you. The unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  InfoModuleData? infoModuleData;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#eventTicketObject"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// linked_object_ids are a list of other objects such as event ticket,
  /// loyalty, offer, generic, giftcard, transit and boarding pass that should
  /// be automatically attached to this event ticket object.
  ///
  /// If a user had saved this event ticket, then these linked_object_ids would
  /// be automatically pushed to the user's wallet (unless they turned off the
  /// setting to receive such linked passes). Make sure that objects present in
  /// linked_object_ids are already inserted - if not, calls would fail. Once
  /// linked, the linked objects cannot be unlinked. You cannot link objects
  /// belonging to another issuer. There is a limit to the number of objects
  /// that can be linked to a single object. After the limit is reached, new
  /// linked objects in the call will be ignored silently. Object IDs should
  /// follow the format issuer ID. identifier where the former is issued by
  /// Google and the latter is chosen by you.
  core.List<core.String>? linkedObjectIds;

  /// A list of offer objects linked to this event ticket.
  ///
  /// The offer objects must already exist. Offer object IDs should follow the
  /// format issuer ID. identifier where the former is issued by Google and
  /// latter is chosen by you.
  core.List<core.String>? linkedOfferIds;

  /// Links module data.
  ///
  /// If links module data is also defined on the class, both will be displayed.
  LinksModuleData? linksModuleData;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the object. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Whether or not field updates to this object should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If set to DO_NOT_NOTIFY or
  /// NOTIFICATION_SETTINGS_UNSPECIFIED, no notification will be triggered. This
  /// setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Pass constraints for the object.
  ///
  /// Includes limiting NFC and screenshot behaviors.
  PassConstraints? passConstraints;

  /// Reservation details for this ticket.
  ///
  /// This is expected to be shared amongst all tickets that were purchased in
  /// the same order.
  EventReservationInfo? reservationInfo;

  /// The rotating barcode type and value.
  RotatingBarcode? rotatingBarcode;

  /// Restrictions on the object that needs to be verified before the user tries
  /// to save the pass.
  ///
  /// Note that this restrictions will only be applied during save time. If the
  /// restrictions changed after a user saves the pass, the new restrictions
  /// will not be applied to an already saved pass.
  SaveRestrictions? saveRestrictions;

  /// Seating details for this ticket.
  EventSeat? seatInfo;

  /// The value that will be transmitted to a Smart Tap certified terminal over
  /// NFC for this object.
  ///
  /// The class level fields `enableSmartTap` and `redemptionIssuers` must also
  /// be set up correctly in order for the pass to support Smart Tap. Only ASCII
  /// characters are supported.
  core.String? smartTapRedemptionValue;

  /// The state of the object.
  ///
  /// This field is used to determine how an object is displayed in the app. For
  /// example, an `inactive` object is moved to the "Expired passes" section.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE" : Object is active and displayed to with other active objects.
  /// - "active" : Legacy alias for `ACTIVE`. Deprecated.
  /// - "COMPLETED"
  /// - "completed" : Legacy alias for `COMPLETED`. Deprecated.
  /// - "EXPIRED" : Object is no longer valid (`validTimeInterval` passed).
  /// - "expired" : Legacy alias for `EXPIRED`. Deprecated.
  /// - "INACTIVE"
  /// - "inactive" : Legacy alias for `INACTIVE`. Deprecated.
  core.String? state;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// Name of the ticket holder, if the ticket is assigned to a person.
  ///
  /// E.g. "John Doe" or "Jane Doe".
  core.String? ticketHolderName;

  /// The number of the ticket.
  ///
  /// This can be a unique identifier across all tickets in an issuer's system,
  /// all tickets for the event (e.g. XYZ1234512345), or all tickets in the
  /// order (1, 2, 3, etc.).
  core.String? ticketNumber;

  /// The type of the ticket, such as "Adult" or "Child", or "VIP" or
  /// "Standard".
  LocalizedString? ticketType;

  /// The time period this object will be `active` and object can be used.
  ///
  /// An object's state will be changed to `expired` when this time period has
  /// passed.
  TimeInterval? validTimeInterval;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  EventTicketObject({
    this.appLinkData,
    this.barcode,
    this.classId,
    this.classReference,
    this.disableExpirationNotification,
    this.faceValue,
    this.groupingInfo,
    this.hasLinkedDevice,
    this.hasUsers,
    this.heroImage,
    this.hexBackgroundColor,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.kind,
    this.linkedObjectIds,
    this.linkedOfferIds,
    this.linksModuleData,
    this.locations,
    this.merchantLocations,
    this.messages,
    this.notifyPreference,
    this.passConstraints,
    this.reservationInfo,
    this.rotatingBarcode,
    this.saveRestrictions,
    this.seatInfo,
    this.smartTapRedemptionValue,
    this.state,
    this.textModulesData,
    this.ticketHolderName,
    this.ticketNumber,
    this.ticketType,
    this.validTimeInterval,
    this.valueAddedModuleData,
    this.version,
  });

  EventTicketObject.fromJson(core.Map json_)
      : this(
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          barcode: json_.containsKey('barcode')
              ? Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          classId: json_['classId'] as core.String?,
          classReference: json_.containsKey('classReference')
              ? EventTicketClass.fromJson(json_['classReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disableExpirationNotification:
              json_['disableExpirationNotification'] as core.bool?,
          faceValue: json_.containsKey('faceValue')
              ? Money.fromJson(
                  json_['faceValue'] as core.Map<core.String, core.dynamic>)
              : null,
          groupingInfo: json_.containsKey('groupingInfo')
              ? GroupingInfo.fromJson(
                  json_['groupingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          hasLinkedDevice: json_['hasLinkedDevice'] as core.bool?,
          hasUsers: json_['hasUsers'] as core.bool?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          linkedObjectIds: (json_['linkedObjectIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linkedOfferIds: (json_['linkedOfferIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          notifyPreference: json_['notifyPreference'] as core.String?,
          passConstraints: json_.containsKey('passConstraints')
              ? PassConstraints.fromJson(json_['passConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          reservationInfo: json_.containsKey('reservationInfo')
              ? EventReservationInfo.fromJson(json_['reservationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rotatingBarcode: json_.containsKey('rotatingBarcode')
              ? RotatingBarcode.fromJson(json_['rotatingBarcode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          saveRestrictions: json_.containsKey('saveRestrictions')
              ? SaveRestrictions.fromJson(json_['saveRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          seatInfo: json_.containsKey('seatInfo')
              ? EventSeat.fromJson(
                  json_['seatInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          smartTapRedemptionValue:
              json_['smartTapRedemptionValue'] as core.String?,
          state: json_['state'] as core.String?,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          ticketHolderName: json_['ticketHolderName'] as core.String?,
          ticketNumber: json_['ticketNumber'] as core.String?,
          ticketType: json_.containsKey('ticketType')
              ? LocalizedString.fromJson(
                  json_['ticketType'] as core.Map<core.String, core.dynamic>)
              : null,
          validTimeInterval: json_.containsKey('validTimeInterval')
              ? TimeInterval.fromJson(json_['validTimeInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (barcode != null) 'barcode': barcode!,
        if (classId != null) 'classId': classId!,
        if (classReference != null) 'classReference': classReference!,
        if (disableExpirationNotification != null)
          'disableExpirationNotification': disableExpirationNotification!,
        if (faceValue != null) 'faceValue': faceValue!,
        if (groupingInfo != null) 'groupingInfo': groupingInfo!,
        if (hasLinkedDevice != null) 'hasLinkedDevice': hasLinkedDevice!,
        if (hasUsers != null) 'hasUsers': hasUsers!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (kind != null) 'kind': kind!,
        if (linkedObjectIds != null) 'linkedObjectIds': linkedObjectIds!,
        if (linkedOfferIds != null) 'linkedOfferIds': linkedOfferIds!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (passConstraints != null) 'passConstraints': passConstraints!,
        if (reservationInfo != null) 'reservationInfo': reservationInfo!,
        if (rotatingBarcode != null) 'rotatingBarcode': rotatingBarcode!,
        if (saveRestrictions != null) 'saveRestrictions': saveRestrictions!,
        if (seatInfo != null) 'seatInfo': seatInfo!,
        if (smartTapRedemptionValue != null)
          'smartTapRedemptionValue': smartTapRedemptionValue!,
        if (state != null) 'state': state!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (ticketHolderName != null) 'ticketHolderName': ticketHolderName!,
        if (ticketNumber != null) 'ticketNumber': ticketNumber!,
        if (ticketType != null) 'ticketType': ticketType!,
        if (validTimeInterval != null) 'validTimeInterval': validTimeInterval!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
      };
}

class EventTicketObjectAddMessageResponse {
  /// The updated EventTicketObject resource.
  EventTicketObject? resource;

  EventTicketObjectAddMessageResponse({
    this.resource,
  });

  EventTicketObjectAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? EventTicketObject.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class EventTicketObjectListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<EventTicketObject>? resources;

  EventTicketObjectListResponse({
    this.pagination,
    this.resources,
  });

  EventTicketObjectListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => EventTicketObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class EventVenue {
  /// The address of the venue, such as "24 Willie Mays Plaza\nSan Francisco, CA
  /// 94107".
  ///
  /// Address lines are separated by line feed (`\n`) characters. This is
  /// required.
  LocalizedString? address;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#eventVenue"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The name of the venue, such as "AT&T Park".
  ///
  /// This is required.
  LocalizedString? name;

  EventVenue({
    this.address,
    this.kind,
    this.name,
  });

  EventVenue.fromJson(core.Map json_)
      : this(
          address: json_.containsKey('address')
              ? LocalizedString.fromJson(
                  json_['address'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          name: json_.containsKey('name')
              ? LocalizedString.fromJson(
                  json_['name'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (address != null) 'address': address!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Indicates that the issuer would like Google Wallet to send expiry
/// notifications 2 days prior to the card expiration.
class ExpiryNotification {
  /// Indicates if the object needs to have expiry notification enabled.
  core.bool? enableNotification;

  ExpiryNotification({
    this.enableNotification,
  });

  ExpiryNotification.fromJson(core.Map json_)
      : this(
          enableNotification: json_['enableNotification'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableNotification != null)
          'enableNotification': enableNotification!,
      };
}

/// Reference definition to use with field overrides.
class FieldReference {
  /// Only valid if the `fieldPath` references a date field.
  ///
  /// Chooses how the date field will be formatted and displayed in the UI.
  /// Possible string values are:
  /// - "DATE_FORMAT_UNSPECIFIED" : Default option when no format is specified,
  /// when selected, no formatting will be applied.
  /// - "DATE_TIME" : Renders `2018-12-14T13:00:00` as `Dec 14, 1:00 PM` in
  /// `en_US`.
  /// - "dateTime" : Legacy alias for `DATE_TIME`. Deprecated.
  /// - "DATE_ONLY" : Renders `2018-12-14T13:00:00` as `Dec 14` in `en_US`.
  /// - "dateOnly" : Legacy alias for `DATE_ONLY`. Deprecated.
  /// - "TIME_ONLY" : Renders `2018-12-14T13:00:00` as `1:00 PM` in `en_US`.
  /// - "timeOnly" : Legacy alias for `TIME_ONLY`. Deprecated.
  /// - "DATE_TIME_YEAR" : Renders `2018-12-14T13:00:00` as `Dec 14, 2018, 1:00
  /// PM` in `en_US`.
  /// - "dateTimeYear" : Legacy alias for `DATE_TIME_YEAR`. Deprecated.
  /// - "DATE_YEAR" : Renders `2018-12-14T13:00:00` as `Dec 14, 2018` in
  /// `en_US`.
  /// - "dateYear" : Legacy alias for `DATE_YEAR`. Deprecated.
  /// - "YEAR_MONTH" : Renders `2018-12-14T13:00:00` as `2018-12`.
  /// - "YEAR_MONTH_DAY" : Renders `2018-12-14T13:00:00` as `2018-12-14`.
  core.String? dateFormat;

  /// Path to the field being referenced, prefixed with "object" or "class" and
  /// separated with dots.
  ///
  /// For example, it may be the string "object.purchaseDetails.purchasePrice".
  core.String? fieldPath;

  FieldReference({
    this.dateFormat,
    this.fieldPath,
  });

  FieldReference.fromJson(core.Map json_)
      : this(
          dateFormat: json_['dateFormat'] as core.String?,
          fieldPath: json_['fieldPath'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateFormat != null) 'dateFormat': dateFormat!,
        if (fieldPath != null) 'fieldPath': fieldPath!,
      };
}

/// Custom field selector to use with field overrides.
class FieldSelector {
  /// If more than one reference is supplied, then the first one that references
  /// a non-empty field will be displayed.
  core.List<FieldReference>? fields;

  FieldSelector({
    this.fields,
  });

  FieldSelector.fromJson(core.Map json_)
      : this(
          fields: (json_['fields'] as core.List?)
              ?.map((value) => FieldReference.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

class FirstRowOption {
  /// A reference to the field to be displayed in the first row.
  FieldSelector? fieldOption;

  ///
  /// Possible string values are:
  /// - "TRANSIT_OPTION_UNSPECIFIED"
  /// - "ORIGIN_AND_DESTINATION_NAMES"
  /// - "originAndDestinationNames" : Legacy alias for
  /// `ORIGIN_AND_DESTINATION_NAMES`. Deprecated.
  /// - "ORIGIN_AND_DESTINATION_CODES"
  /// - "originAndDestinationCodes" : Legacy alias for
  /// `ORIGIN_AND_DESTINATION_CODES`. Deprecated.
  /// - "ORIGIN_NAME"
  /// - "originName" : Legacy alias for `ORIGIN_NAME`. Deprecated.
  core.String? transitOption;

  FirstRowOption({
    this.fieldOption,
    this.transitOption,
  });

  FirstRowOption.fromJson(core.Map json_)
      : this(
          fieldOption: json_.containsKey('fieldOption')
              ? FieldSelector.fromJson(
                  json_['fieldOption'] as core.Map<core.String, core.dynamic>)
              : null,
          transitOption: json_['transitOption'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldOption != null) 'fieldOption': fieldOption!,
        if (transitOption != null) 'transitOption': transitOption!,
      };
}

class FlightCarrier {
  /// A logo for the airline alliance, displayed below the QR code that the
  /// passenger scans to board.
  Image? airlineAllianceLogo;

  /// A logo for the airline described by carrierIataCode and
  /// localizedAirlineName.
  ///
  /// This logo will be rendered at the top of the detailed card view.
  Image? airlineLogo;

  /// A localized name of the airline specified by carrierIataCode.
  ///
  /// If unset, `issuer_name` or `localized_issuer_name` from `FlightClass` will
  /// be used for display purposes. eg: "Swiss Air" for "LX"
  LocalizedString? airlineName;

  /// Two character IATA airline code of the marketing carrier (as opposed to
  /// operating carrier).
  ///
  /// Exactly one of this or `carrierIcaoCode` needs to be provided for
  /// `carrier` and `operatingCarrier`. eg: "LX" for Swiss Air
  core.String? carrierIataCode;

  /// Three character ICAO airline code of the marketing carrier (as opposed to
  /// operating carrier).
  ///
  /// Exactly one of this or `carrierIataCode` needs to be provided for
  /// `carrier` and `operatingCarrier`. eg: "EZY" for Easy Jet
  core.String? carrierIcaoCode;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#flightCarrier"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The wide logo of the airline.
  ///
  /// When provided, this will be used in place of the airline logo in the top
  /// left of the card view.
  Image? wideAirlineLogo;

  FlightCarrier({
    this.airlineAllianceLogo,
    this.airlineLogo,
    this.airlineName,
    this.carrierIataCode,
    this.carrierIcaoCode,
    this.kind,
    this.wideAirlineLogo,
  });

  FlightCarrier.fromJson(core.Map json_)
      : this(
          airlineAllianceLogo: json_.containsKey('airlineAllianceLogo')
              ? Image.fromJson(json_['airlineAllianceLogo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          airlineLogo: json_.containsKey('airlineLogo')
              ? Image.fromJson(
                  json_['airlineLogo'] as core.Map<core.String, core.dynamic>)
              : null,
          airlineName: json_.containsKey('airlineName')
              ? LocalizedString.fromJson(
                  json_['airlineName'] as core.Map<core.String, core.dynamic>)
              : null,
          carrierIataCode: json_['carrierIataCode'] as core.String?,
          carrierIcaoCode: json_['carrierIcaoCode'] as core.String?,
          kind: json_['kind'] as core.String?,
          wideAirlineLogo: json_.containsKey('wideAirlineLogo')
              ? Image.fromJson(json_['wideAirlineLogo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (airlineAllianceLogo != null)
          'airlineAllianceLogo': airlineAllianceLogo!,
        if (airlineLogo != null) 'airlineLogo': airlineLogo!,
        if (airlineName != null) 'airlineName': airlineName!,
        if (carrierIataCode != null) 'carrierIataCode': carrierIataCode!,
        if (carrierIcaoCode != null) 'carrierIcaoCode': carrierIcaoCode!,
        if (kind != null) 'kind': kind!,
        if (wideAirlineLogo != null) 'wideAirlineLogo': wideAirlineLogo!,
      };
}

class FlightClass {
  /// Use `multipleDevicesAndHoldersAllowedStatus` instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? allowMultipleUsersPerObject;

  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding object that will be used
  /// instead.
  AppLinkData? appLinkData;

  /// Policies for boarding and seating.
  ///
  /// These will inform which labels will be shown to users.
  BoardingAndSeatingPolicy? boardingAndSeatingPolicy;

  /// Callback options to be used to call the issuer back for every save/delete
  /// of an object for this class by the end-user.
  ///
  /// All objects of this class are eligible for the callback.
  CallbackOptions? callbackOptions;

  /// Template information about how the class should be displayed.
  ///
  /// If unset, Google will fallback to a default set of fields to display.
  ClassTemplateInfo? classTemplateInfo;

  /// Country code used to display the card's country (when the user is not in
  /// that country), as well as to display localized content when content is not
  /// available in the user's locale.
  core.String? countryCode;

  /// Destination airport.
  ///
  /// Required.
  AirportInfo? destination;

  /// Identifies whether this class supports Smart Tap.
  ///
  /// The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields
  /// must also be set up correctly in order for a pass to support Smart Tap.
  core.bool? enableSmartTap;

  /// Information about the flight carrier and number.
  ///
  /// Required.
  FlightHeader? flightHeader;

  /// Status of this flight.
  ///
  /// If unset, Google will compute status based on data from other sources,
  /// such as FlightStats, etc. Note: Google-computed status will not be
  /// returned in API responses.
  /// Possible string values are:
  /// - "FLIGHT_STATUS_UNSPECIFIED"
  /// - "SCHEDULED" : Flight is on time, early, or delayed.
  /// - "scheduled" : Legacy alias for `SCHEDULED`. Deprecated.
  /// - "ACTIVE" : Flight is in progress (taxiing, taking off, landing,
  /// airborne).
  /// - "active" : Legacy alias for `ACTIVE`. Deprecated.
  /// - "LANDED" : Flight landed at the original destination.
  /// - "landed" : Legacy alias for `LANDED`. Deprecated.
  /// - "CANCELLED" : Flight is cancelled.
  /// - "cancelled" : Legacy alias for `CANCELLED`. Deprecated.
  /// - "REDIRECTED" : Flight is airborne but heading to a different airport
  /// than the original destination.
  /// - "redirected" : Legacy alias for `REDIRECTED`. Deprecated.
  /// - "DIVERTED" : Flight has already landed at a different airport than the
  /// original destination.
  /// - "diverted" : Legacy alias for `DIVERTED`. Deprecated.
  core.String? flightStatus;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, nothing will be displayed. The image will display at
  /// 100% width.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The URI of your application's home page.
  ///
  /// Populating the URI in this field results in the exact same behavior as
  /// populating an URI in linksModuleData (when an object is rendered, a link
  /// to the homepage is shown in what would usually be thought of as the
  /// linksModuleData section of the object).
  Uri? homepageUri;

  /// The unique identifier for a class.
  ///
  /// This ID must be unique across all classes from an issuer. This value
  /// should follow the format issuer ID. identifier where the former is issued
  /// by Google and latter is chosen by you. Your unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  InfoModuleData? infoModuleData;

  /// The issuer name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  ///
  /// Required.
  core.String? issuerName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#flightClass"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// If this field is present, boarding passes served to a user's device will
  /// always be in this language.
  ///
  /// Represents the BCP 47 language tag. Example values are "en-US", "en-GB",
  /// "de", or "de-AT".
  core.String? languageOverride;

  /// Links module data.
  ///
  /// If links module data is also defined on the object, both will be
  /// displayed.
  LinksModuleData? linksModuleData;

  /// The boarding time as it would be printed on the boarding pass.
  ///
  /// This is an ISO 8601 extended format date/time without an offset. Time may
  /// be specified up to millisecond precision. eg: `2027-03-05T06:30:00` This
  /// should be the local date/time at the airport (not a UTC time). Google will
  /// reject the request if UTC offset is provided. Time zones will be
  /// calculated by Google based on departure airport.
  core.String? localBoardingDateTime;

  /// The estimated time the aircraft plans to reach the destination gate (not
  /// the runway) or the actual time it reached the gate.
  ///
  /// This field should be set if at least one of the below is true: - It
  /// differs from the scheduled time. Google will use it to calculate the
  /// delay. - The aircraft already arrived at the gate. Google will use it to
  /// inform the user that the flight has arrived at the gate. This is an ISO
  /// 8601 extended format date/time without an offset. Time may be specified up
  /// to millisecond precision. eg: `2027-03-05T06:30:00` This should be the
  /// local date/time at the airport (not a UTC time). Google will reject the
  /// request if UTC offset is provided. Time zones will be calculated by Google
  /// based on arrival airport.
  core.String? localEstimatedOrActualArrivalDateTime;

  /// The estimated time the aircraft plans to pull from the gate or the actual
  /// time the aircraft already pulled from the gate.
  ///
  /// Note: This is not the runway time. This field should be set if at least
  /// one of the below is true: - It differs from the scheduled time. Google
  /// will use it to calculate the delay. - The aircraft already pulled from the
  /// gate. Google will use it to inform the user when the flight actually
  /// departed. This is an ISO 8601 extended format date/time without an offset.
  /// Time may be specified up to millisecond precision. eg:
  /// `2027-03-05T06:30:00` This should be the local date/time at the airport
  /// (not a UTC time). Google will reject the request if UTC offset is
  /// provided. Time zones will be calculated by Google based on departure
  /// airport.
  core.String? localEstimatedOrActualDepartureDateTime;

  /// The gate closing time as it would be printed on the boarding pass.
  ///
  /// Do not set this field if you do not want to print it in the boarding pass.
  /// This is an ISO 8601 extended format date/time without an offset. Time may
  /// be specified up to millisecond precision. eg: `2027-03-05T06:30:00` This
  /// should be the local date/time at the airport (not a UTC time). Google will
  /// reject the request if UTC offset is provided. Time zones will be
  /// calculated by Google based on departure airport.
  core.String? localGateClosingDateTime;

  /// The scheduled time the aircraft plans to reach the destination gate (not
  /// the runway).
  ///
  /// Note: This field should not change too close to the flight time. For
  /// updates to departure times (delays, etc), please set
  /// `localEstimatedOrActualArrivalDateTime`. This is an ISO 8601 extended
  /// format date/time without an offset. Time may be specified up to
  /// millisecond precision. eg: `2027-03-05T06:30:00` This should be the local
  /// date/time at the airport (not a UTC time). Google will reject the request
  /// if UTC offset is provided. Time zones will be calculated by Google based
  /// on arrival airport.
  core.String? localScheduledArrivalDateTime;

  /// The scheduled date and time when the aircraft is expected to depart the
  /// gate (not the runway) Note: This field should not change too close to the
  /// departure time.
  ///
  /// For updates to departure times (delays, etc), please set
  /// `localEstimatedOrActualDepartureDateTime`. This is an ISO 8601 extended
  /// format date/time without an offset. Time may be specified up to
  /// millisecond precision. eg: `2027-03-05T06:30:00` This should be the local
  /// date/time at the airport (not a UTC time). Google will reject the request
  /// if UTC offset is provided. Time zones will be calculated by Google based
  /// on departure airport.
  ///
  /// Required.
  core.String? localScheduledDepartureDateTime;

  /// Translated strings for the issuer_name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedIssuerName;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the class. Any additional MerchantLocations
  /// added beyond the 10 will be rejected by the validator. These locations
  /// will trigger a notification when a user enters within a Google-set radius
  /// of the point. This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Identifies whether multiple users and devices will save the same object
  /// referencing this class.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified preference.
  /// - "MULTIPLE_HOLDERS" : The Pass object is shareable by a user and can be
  /// saved by any number of different users, and on any number of devices.
  /// Partners typically use this setup for passes that do not need to be
  /// restricted to a single user or pinned to a single device.
  /// - "ONE_USER_ALL_DEVICES" : An object can only be saved by one user, but
  /// this user can view and use it on multiple of their devices. Once the first
  /// user saves the object, no other user will be allowed to view or save it.
  /// - "ONE_USER_ONE_DEVICE" : An object can only be saved by one user on a
  /// single device. Intended for use by select partners in limited
  /// circumstances. An example use case is a transit ticket that should be
  /// "device pinned", meaning it can be saved, viewed and used only by a single
  /// user on a single device. Contact support for additional information.
  /// - "multipleHolders" : Legacy alias for `MULTIPLE_HOLDERS`. Deprecated.
  /// - "oneUserAllDevices" : Legacy alias for `ONE_USER_ALL_DEVICES`.
  /// Deprecated.
  /// - "oneUserOneDevice" : Legacy alias for `ONE_USER_ONE_DEVICE`. Deprecated.
  core.String? multipleDevicesAndHoldersAllowedStatus;

  /// Whether or not field updates to this class should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If not specified, no notification will be triggered.
  /// This setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Origin airport.
  ///
  /// Required.
  AirportInfo? origin;

  /// Identifies which redemption issuers can redeem the pass over Smart Tap.
  ///
  /// Redemption issuers are identified by their issuer ID. Redemption issuers
  /// must have at least one Smart Tap key configured. The `enableSmartTap` and
  /// object level `smartTapRedemptionLevel` fields must also be set up
  /// correctly in order for a pass to support Smart Tap.
  core.List<core.String>? redemptionIssuers;

  /// The review comments set by the platform when a class is marked `approved`
  /// or `rejected`.
  Review? review;

  /// The status of the class.
  ///
  /// This field can be set to `draft` or `underReview` using the insert, patch,
  /// or update API calls. Once the review state is changed from `draft` it may
  /// not be changed back to `draft`. You should keep this field to `draft` when
  /// the class is under development. A `draft` class cannot be used to create
  /// any object. You should set this field to `underReview` when you believe
  /// the class is ready for use. The platform will automatically set this field
  /// to `approved` and it can be immediately used to create or migrate objects.
  /// When updating an already `approved` class you should keep setting this
  /// field to `underReview`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED"
  /// - "UNDER_REVIEW"
  /// - "underReview" : Legacy alias for `UNDER_REVIEW`. Deprecated.
  /// - "APPROVED"
  /// - "approved" : Legacy alias for `APPROVED`. Deprecated.
  /// - "REJECTED"
  /// - "rejected" : Legacy alias for `REJECTED`. Deprecated.
  /// - "DRAFT"
  /// - "draft" : Legacy alias for `DRAFT`. Deprecated.
  core.String? reviewStatus;

  /// Optional information about the security animation.
  ///
  /// If this is set a security animation will be rendered on pass details.
  SecurityAnimation? securityAnimation;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the class. For a pass only ten will be displayed,
  /// prioritizing those from the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  /// View Unlock Requirement options for the boarding pass.
  /// Possible string values are:
  /// - "VIEW_UNLOCK_REQUIREMENT_UNSPECIFIED" : Default value, same as
  /// UNLOCK_NOT_REQUIRED.
  /// - "UNLOCK_NOT_REQUIRED" : Default behavior for all the existing Passes if
  /// ViewUnlockRequirement is not set.
  /// - "UNLOCK_REQUIRED_TO_VIEW" : Requires the user to unlock their device
  /// each time the pass is viewed. If the user removes their device lock after
  /// saving the pass, then they will be prompted to create a device lock before
  /// the pass can be viewed.
  core.String? viewUnlockRequirement;

  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Image? wordMark;

  FlightClass({
    this.allowMultipleUsersPerObject,
    this.appLinkData,
    this.boardingAndSeatingPolicy,
    this.callbackOptions,
    this.classTemplateInfo,
    this.countryCode,
    this.destination,
    this.enableSmartTap,
    this.flightHeader,
    this.flightStatus,
    this.heroImage,
    this.hexBackgroundColor,
    this.homepageUri,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.issuerName,
    this.kind,
    this.languageOverride,
    this.linksModuleData,
    this.localBoardingDateTime,
    this.localEstimatedOrActualArrivalDateTime,
    this.localEstimatedOrActualDepartureDateTime,
    this.localGateClosingDateTime,
    this.localScheduledArrivalDateTime,
    this.localScheduledDepartureDateTime,
    this.localizedIssuerName,
    this.locations,
    this.merchantLocations,
    this.messages,
    this.multipleDevicesAndHoldersAllowedStatus,
    this.notifyPreference,
    this.origin,
    this.redemptionIssuers,
    this.review,
    this.reviewStatus,
    this.securityAnimation,
    this.textModulesData,
    this.valueAddedModuleData,
    this.version,
    this.viewUnlockRequirement,
    this.wordMark,
  });

  FlightClass.fromJson(core.Map json_)
      : this(
          allowMultipleUsersPerObject:
              json_['allowMultipleUsersPerObject'] as core.bool?,
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          boardingAndSeatingPolicy:
              json_.containsKey('boardingAndSeatingPolicy')
                  ? BoardingAndSeatingPolicy.fromJson(
                      json_['boardingAndSeatingPolicy']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          callbackOptions: json_.containsKey('callbackOptions')
              ? CallbackOptions.fromJson(json_['callbackOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          classTemplateInfo: json_.containsKey('classTemplateInfo')
              ? ClassTemplateInfo.fromJson(json_['classTemplateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          countryCode: json_['countryCode'] as core.String?,
          destination: json_.containsKey('destination')
              ? AirportInfo.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>)
              : null,
          enableSmartTap: json_['enableSmartTap'] as core.bool?,
          flightHeader: json_.containsKey('flightHeader')
              ? FlightHeader.fromJson(
                  json_['flightHeader'] as core.Map<core.String, core.dynamic>)
              : null,
          flightStatus: json_['flightStatus'] as core.String?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          homepageUri: json_.containsKey('homepageUri')
              ? Uri.fromJson(
                  json_['homepageUri'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          issuerName: json_['issuerName'] as core.String?,
          kind: json_['kind'] as core.String?,
          languageOverride: json_['languageOverride'] as core.String?,
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localBoardingDateTime: json_['localBoardingDateTime'] as core.String?,
          localEstimatedOrActualArrivalDateTime:
              json_['localEstimatedOrActualArrivalDateTime'] as core.String?,
          localEstimatedOrActualDepartureDateTime:
              json_['localEstimatedOrActualDepartureDateTime'] as core.String?,
          localGateClosingDateTime:
              json_['localGateClosingDateTime'] as core.String?,
          localScheduledArrivalDateTime:
              json_['localScheduledArrivalDateTime'] as core.String?,
          localScheduledDepartureDateTime:
              json_['localScheduledDepartureDateTime'] as core.String?,
          localizedIssuerName: json_.containsKey('localizedIssuerName')
              ? LocalizedString.fromJson(json_['localizedIssuerName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          multipleDevicesAndHoldersAllowedStatus:
              json_['multipleDevicesAndHoldersAllowedStatus'] as core.String?,
          notifyPreference: json_['notifyPreference'] as core.String?,
          origin: json_.containsKey('origin')
              ? AirportInfo.fromJson(
                  json_['origin'] as core.Map<core.String, core.dynamic>)
              : null,
          redemptionIssuers: (json_['redemptionIssuers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          review: json_.containsKey('review')
              ? Review.fromJson(
                  json_['review'] as core.Map<core.String, core.dynamic>)
              : null,
          reviewStatus: json_['reviewStatus'] as core.String?,
          securityAnimation: json_.containsKey('securityAnimation')
              ? SecurityAnimation.fromJson(json_['securityAnimation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
          viewUnlockRequirement: json_['viewUnlockRequirement'] as core.String?,
          wordMark: json_.containsKey('wordMark')
              ? Image.fromJson(
                  json_['wordMark'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMultipleUsersPerObject != null)
          'allowMultipleUsersPerObject': allowMultipleUsersPerObject!,
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (boardingAndSeatingPolicy != null)
          'boardingAndSeatingPolicy': boardingAndSeatingPolicy!,
        if (callbackOptions != null) 'callbackOptions': callbackOptions!,
        if (classTemplateInfo != null) 'classTemplateInfo': classTemplateInfo!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (destination != null) 'destination': destination!,
        if (enableSmartTap != null) 'enableSmartTap': enableSmartTap!,
        if (flightHeader != null) 'flightHeader': flightHeader!,
        if (flightStatus != null) 'flightStatus': flightStatus!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (issuerName != null) 'issuerName': issuerName!,
        if (kind != null) 'kind': kind!,
        if (languageOverride != null) 'languageOverride': languageOverride!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (localBoardingDateTime != null)
          'localBoardingDateTime': localBoardingDateTime!,
        if (localEstimatedOrActualArrivalDateTime != null)
          'localEstimatedOrActualArrivalDateTime':
              localEstimatedOrActualArrivalDateTime!,
        if (localEstimatedOrActualDepartureDateTime != null)
          'localEstimatedOrActualDepartureDateTime':
              localEstimatedOrActualDepartureDateTime!,
        if (localGateClosingDateTime != null)
          'localGateClosingDateTime': localGateClosingDateTime!,
        if (localScheduledArrivalDateTime != null)
          'localScheduledArrivalDateTime': localScheduledArrivalDateTime!,
        if (localScheduledDepartureDateTime != null)
          'localScheduledDepartureDateTime': localScheduledDepartureDateTime!,
        if (localizedIssuerName != null)
          'localizedIssuerName': localizedIssuerName!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (multipleDevicesAndHoldersAllowedStatus != null)
          'multipleDevicesAndHoldersAllowedStatus':
              multipleDevicesAndHoldersAllowedStatus!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (origin != null) 'origin': origin!,
        if (redemptionIssuers != null) 'redemptionIssuers': redemptionIssuers!,
        if (review != null) 'review': review!,
        if (reviewStatus != null) 'reviewStatus': reviewStatus!,
        if (securityAnimation != null) 'securityAnimation': securityAnimation!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
        if (viewUnlockRequirement != null)
          'viewUnlockRequirement': viewUnlockRequirement!,
        if (wordMark != null) 'wordMark': wordMark!,
      };
}

class FlightClassAddMessageResponse {
  /// The updated FlightClass resource.
  FlightClass? resource;

  FlightClassAddMessageResponse({
    this.resource,
  });

  FlightClassAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? FlightClass.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class FlightClassListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<FlightClass>? resources;

  FlightClassListResponse({
    this.pagination,
    this.resources,
  });

  FlightClassListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => FlightClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class FlightHeader {
  /// Information about airline carrier.
  ///
  /// This is a required property of `flightHeader`.
  FlightCarrier? carrier;

  /// The flight number without IATA carrier code.
  ///
  /// This field should contain only digits. This is a required property of
  /// `flightHeader`. eg: "123"
  core.String? flightNumber;

  /// Override value to use for flight number.
  ///
  /// The default value used for display purposes is carrier + flight_number. If
  /// a different value needs to be shown to passengers, use this field to
  /// override the default behavior. eg: "XX1234 / YY576"
  core.String? flightNumberDisplayOverride;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#flightHeader"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Information about operating airline carrier.
  FlightCarrier? operatingCarrier;

  /// The flight number used by the operating carrier without IATA carrier code.
  ///
  /// This field should contain only digits. eg: "234"
  core.String? operatingFlightNumber;

  FlightHeader({
    this.carrier,
    this.flightNumber,
    this.flightNumberDisplayOverride,
    this.kind,
    this.operatingCarrier,
    this.operatingFlightNumber,
  });

  FlightHeader.fromJson(core.Map json_)
      : this(
          carrier: json_.containsKey('carrier')
              ? FlightCarrier.fromJson(
                  json_['carrier'] as core.Map<core.String, core.dynamic>)
              : null,
          flightNumber: json_['flightNumber'] as core.String?,
          flightNumberDisplayOverride:
              json_['flightNumberDisplayOverride'] as core.String?,
          kind: json_['kind'] as core.String?,
          operatingCarrier: json_.containsKey('operatingCarrier')
              ? FlightCarrier.fromJson(json_['operatingCarrier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          operatingFlightNumber: json_['operatingFlightNumber'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (carrier != null) 'carrier': carrier!,
        if (flightNumber != null) 'flightNumber': flightNumber!,
        if (flightNumberDisplayOverride != null)
          'flightNumberDisplayOverride': flightNumberDisplayOverride!,
        if (kind != null) 'kind': kind!,
        if (operatingCarrier != null) 'operatingCarrier': operatingCarrier!,
        if (operatingFlightNumber != null)
          'operatingFlightNumber': operatingFlightNumber!,
      };
}

class FlightObject {
  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding class only object
  /// AppLinkData will be displayed.
  AppLinkData? appLinkData;

  /// The barcode type and value.
  Barcode? barcode;

  /// Passenger specific information about boarding and seating.
  BoardingAndSeatingInfo? boardingAndSeatingInfo;

  /// The class associated with this object.
  ///
  /// The class must be of the same type as this object, must already exist, and
  /// must be approved. Class IDs should follow the format issuer ID.identifier
  /// where the former is issued by Google and latter is chosen by you.
  ///
  /// Required.
  core.String? classId;

  /// A copy of the inherited fields of the parent class.
  ///
  /// These fields are retrieved during a GET.
  FlightClass? classReference;

  /// Indicates if notifications should explicitly be suppressed.
  ///
  /// If this field is set to true, regardless of the `messages` field,
  /// expiration notifications to the user will be suppressed. By default, this
  /// field is set to false. Currently, this can only be set for Flights.
  core.bool? disableExpirationNotification;

  /// Information that controls how passes are grouped together.
  GroupingInfo? groupingInfo;

  /// Whether this object is currently linked to a single device.
  ///
  /// This field is set by the platform when a user saves the object, linking it
  /// to their device. Intended for use by select partners. Contact support for
  /// additional information.
  core.bool? hasLinkedDevice;

  /// Indicates if the object has users.
  ///
  /// This field is set by the platform.
  core.bool? hasUsers;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, hero image of the class, if present, will be
  /// displayed. If hero image of the class is also not present, nothing will be
  /// displayed.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The unique identifier for an object.
  ///
  /// This ID must be unique across all objects from an issuer. This value
  /// should follow the format issuer ID.identifier where the former is issued
  /// by Google and latter is chosen by you. The unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  InfoModuleData? infoModuleData;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#flightObject"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// linked_object_ids are a list of other objects such as event ticket,
  /// loyalty, offer, generic, giftcard, transit and boarding pass that should
  /// be automatically attached to this flight object.
  ///
  /// If a user had saved this boarding pass, then these linked_object_ids would
  /// be automatically pushed to the user's wallet (unless they turned off the
  /// setting to receive such linked passes). Make sure that objects present in
  /// linked_object_ids are already inserted - if not, calls would fail. Once
  /// linked, the linked objects cannot be unlinked. You cannot link objects
  /// belonging to another issuer. There is a limit to the number of objects
  /// that can be linked to a single object. After the limit is reached, new
  /// linked objects in the call will be ignored silently. Object IDs should
  /// follow the format issuer ID. identifier where the former is issued by
  /// Google and the latter is chosen by you.
  core.List<core.String>? linkedObjectIds;

  /// Links module data.
  ///
  /// If links module data is also defined on the class, both will be displayed.
  LinksModuleData? linksModuleData;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the object. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Whether or not field updates to this object should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If set to DO_NOT_NOTIFY or
  /// NOTIFICATION_SETTINGS_UNSPECIFIED, no notification will be triggered. This
  /// setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Pass constraints for the object.
  ///
  /// Includes limiting NFC and screenshot behaviors.
  PassConstraints? passConstraints;

  /// Passenger name as it would appear on the boarding pass.
  ///
  /// eg: "Dave M Gahan" or "Gahan/Dave" or "GAHAN/DAVEM"
  ///
  /// Required.
  core.String? passengerName;

  /// Information about flight reservation.
  ///
  /// Required.
  ReservationInfo? reservationInfo;

  /// The rotating barcode type and value.
  RotatingBarcode? rotatingBarcode;

  /// Restrictions on the object that needs to be verified before the user tries
  /// to save the pass.
  ///
  /// Note that this restrictions will only be applied during save time. If the
  /// restrictions changed after a user saves the pass, the new restrictions
  /// will not be applied to an already saved pass.
  SaveRestrictions? saveRestrictions;

  /// An image for the security program that applies to the passenger.
  Image? securityProgramLogo;

  /// The value that will be transmitted to a Smart Tap certified terminal over
  /// NFC for this object.
  ///
  /// The class level fields `enableSmartTap` and `redemptionIssuers` must also
  /// be set up correctly in order for the pass to support Smart Tap. Only ASCII
  /// characters are supported.
  core.String? smartTapRedemptionValue;

  /// The state of the object.
  ///
  /// This field is used to determine how an object is displayed in the app. For
  /// example, an `inactive` object is moved to the "Expired passes" section.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE" : Object is active and displayed to with other active objects.
  /// - "active" : Legacy alias for `ACTIVE`. Deprecated.
  /// - "COMPLETED"
  /// - "completed" : Legacy alias for `COMPLETED`. Deprecated.
  /// - "EXPIRED" : Object is no longer valid (`validTimeInterval` passed).
  /// - "expired" : Legacy alias for `EXPIRED`. Deprecated.
  /// - "INACTIVE"
  /// - "inactive" : Legacy alias for `INACTIVE`. Deprecated.
  core.String? state;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// The time period this object will be `active` and object can be used.
  ///
  /// An object's state will be changed to `expired` when this time period has
  /// passed.
  TimeInterval? validTimeInterval;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  FlightObject({
    this.appLinkData,
    this.barcode,
    this.boardingAndSeatingInfo,
    this.classId,
    this.classReference,
    this.disableExpirationNotification,
    this.groupingInfo,
    this.hasLinkedDevice,
    this.hasUsers,
    this.heroImage,
    this.hexBackgroundColor,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.kind,
    this.linkedObjectIds,
    this.linksModuleData,
    this.locations,
    this.merchantLocations,
    this.messages,
    this.notifyPreference,
    this.passConstraints,
    this.passengerName,
    this.reservationInfo,
    this.rotatingBarcode,
    this.saveRestrictions,
    this.securityProgramLogo,
    this.smartTapRedemptionValue,
    this.state,
    this.textModulesData,
    this.validTimeInterval,
    this.valueAddedModuleData,
    this.version,
  });

  FlightObject.fromJson(core.Map json_)
      : this(
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          barcode: json_.containsKey('barcode')
              ? Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          boardingAndSeatingInfo: json_.containsKey('boardingAndSeatingInfo')
              ? BoardingAndSeatingInfo.fromJson(json_['boardingAndSeatingInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          classId: json_['classId'] as core.String?,
          classReference: json_.containsKey('classReference')
              ? FlightClass.fromJson(json_['classReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disableExpirationNotification:
              json_['disableExpirationNotification'] as core.bool?,
          groupingInfo: json_.containsKey('groupingInfo')
              ? GroupingInfo.fromJson(
                  json_['groupingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          hasLinkedDevice: json_['hasLinkedDevice'] as core.bool?,
          hasUsers: json_['hasUsers'] as core.bool?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          linkedObjectIds: (json_['linkedObjectIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          notifyPreference: json_['notifyPreference'] as core.String?,
          passConstraints: json_.containsKey('passConstraints')
              ? PassConstraints.fromJson(json_['passConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          passengerName: json_['passengerName'] as core.String?,
          reservationInfo: json_.containsKey('reservationInfo')
              ? ReservationInfo.fromJson(json_['reservationInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rotatingBarcode: json_.containsKey('rotatingBarcode')
              ? RotatingBarcode.fromJson(json_['rotatingBarcode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          saveRestrictions: json_.containsKey('saveRestrictions')
              ? SaveRestrictions.fromJson(json_['saveRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          securityProgramLogo: json_.containsKey('securityProgramLogo')
              ? Image.fromJson(json_['securityProgramLogo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          smartTapRedemptionValue:
              json_['smartTapRedemptionValue'] as core.String?,
          state: json_['state'] as core.String?,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          validTimeInterval: json_.containsKey('validTimeInterval')
              ? TimeInterval.fromJson(json_['validTimeInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (barcode != null) 'barcode': barcode!,
        if (boardingAndSeatingInfo != null)
          'boardingAndSeatingInfo': boardingAndSeatingInfo!,
        if (classId != null) 'classId': classId!,
        if (classReference != null) 'classReference': classReference!,
        if (disableExpirationNotification != null)
          'disableExpirationNotification': disableExpirationNotification!,
        if (groupingInfo != null) 'groupingInfo': groupingInfo!,
        if (hasLinkedDevice != null) 'hasLinkedDevice': hasLinkedDevice!,
        if (hasUsers != null) 'hasUsers': hasUsers!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (kind != null) 'kind': kind!,
        if (linkedObjectIds != null) 'linkedObjectIds': linkedObjectIds!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (passConstraints != null) 'passConstraints': passConstraints!,
        if (passengerName != null) 'passengerName': passengerName!,
        if (reservationInfo != null) 'reservationInfo': reservationInfo!,
        if (rotatingBarcode != null) 'rotatingBarcode': rotatingBarcode!,
        if (saveRestrictions != null) 'saveRestrictions': saveRestrictions!,
        if (securityProgramLogo != null)
          'securityProgramLogo': securityProgramLogo!,
        if (smartTapRedemptionValue != null)
          'smartTapRedemptionValue': smartTapRedemptionValue!,
        if (state != null) 'state': state!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (validTimeInterval != null) 'validTimeInterval': validTimeInterval!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
      };
}

class FlightObjectAddMessageResponse {
  /// The updated FlightObject resource.
  FlightObject? resource;

  FlightObjectAddMessageResponse({
    this.resource,
  });

  FlightObjectAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? FlightObject.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class FlightObjectListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<FlightObject>? resources;

  FlightObjectListResponse({
    this.pagination,
    this.resources,
  });

  FlightObjectListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => FlightObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class FrequentFlyerInfo {
  /// Frequent flyer number.
  ///
  /// Required for each nested object of kind `walletobjects#frequentFlyerInfo`.
  core.String? frequentFlyerNumber;

  /// Frequent flyer program name.
  ///
  /// eg: "Lufthansa Miles & More"
  LocalizedString? frequentFlyerProgramName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#frequentFlyerInfo"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  FrequentFlyerInfo({
    this.frequentFlyerNumber,
    this.frequentFlyerProgramName,
    this.kind,
  });

  FrequentFlyerInfo.fromJson(core.Map json_)
      : this(
          frequentFlyerNumber: json_['frequentFlyerNumber'] as core.String?,
          frequentFlyerProgramName:
              json_.containsKey('frequentFlyerProgramName')
                  ? LocalizedString.fromJson(json_['frequentFlyerProgramName']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          kind: json_['kind'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frequentFlyerNumber != null)
          'frequentFlyerNumber': frequentFlyerNumber!,
        if (frequentFlyerProgramName != null)
          'frequentFlyerProgramName': frequentFlyerProgramName!,
        if (kind != null) 'kind': kind!,
      };
}

/// Generic Class
class GenericClass {
  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding object that will be used
  /// instead.
  AppLinkData? appLinkData;

  /// Callback options to be used to call the issuer back for every save/delete
  /// of an object for this class by the end-user.
  ///
  /// All objects of this class are eligible for the callback.
  CallbackOptions? callbackOptions;

  /// Template information about how the class should be displayed.
  ///
  /// If unset, Google will fallback to a default set of fields to display.
  ClassTemplateInfo? classTemplateInfo;

  /// Available only to Smart Tap enabled partners.
  ///
  /// Contact support for additional guidance.
  core.bool? enableSmartTap;

  /// The unique identifier for the class.
  ///
  /// This ID must be unique across all from an issuer. This value needs to
  /// follow the format `issuerID.identifier` where `issuerID` is issued by
  /// Google and `identifier` is chosen by you. The unique identifier can only
  /// include alphanumeric characters, `.`, `_`, or `-`.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// If `imageModulesData` is also defined on the object, both will be
  /// displayed. Only one of the image from class and one from object level will
  /// be rendered when both set.
  core.List<ImageModuleData>? imageModulesData;

  /// Links module data.
  ///
  /// If `linksModuleData` is also defined on the object, both will be
  /// displayed. The maximum number of these fields displayed is 10 from class
  /// and 10 from object.
  LinksModuleData? linksModuleData;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the class. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Identifies whether multiple users and devices will save the same object
  /// referencing this class.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified preference.
  /// - "MULTIPLE_HOLDERS" : The Pass object is shareable by a user and can be
  /// saved by any number of different users, and on any number of devices.
  /// Partners typically use this setup for passes that do not need to be
  /// restricted to a single user or pinned to a single device.
  /// - "ONE_USER_ALL_DEVICES" : An object can only be saved by one user, but
  /// this user can view and use it on multiple of their devices. Once the first
  /// user saves the object, no other user will be allowed to view or save it.
  /// - "ONE_USER_ONE_DEVICE" : An object can only be saved by one user on a
  /// single device. Intended for use by select partners in limited
  /// circumstances. An example use case is a transit ticket that should be
  /// "device pinned", meaning it can be saved, viewed and used only by a single
  /// user on a single device. Contact support for additional information.
  /// - "multipleHolders" : Legacy alias for `MULTIPLE_HOLDERS`. Deprecated.
  /// - "oneUserAllDevices" : Legacy alias for `ONE_USER_ALL_DEVICES`.
  /// Deprecated.
  /// - "oneUserOneDevice" : Legacy alias for `ONE_USER_ONE_DEVICE`. Deprecated.
  core.String? multipleDevicesAndHoldersAllowedStatus;

  /// Identifies which redemption issuers can redeem the pass over Smart Tap.
  ///
  /// Redemption issuers are identified by their issuer ID. Redemption issuers
  /// must have at least one Smart Tap key configured. The `enableSmartTap` and
  /// object level `smartTapRedemptionLevel` fields must also be set up
  /// correctly in order for a pass to support Smart Tap.
  core.List<core.String>? redemptionIssuers;

  /// Optional information about the security animation.
  ///
  /// If this is set a security animation will be rendered on pass details.
  SecurityAnimation? securityAnimation;

  /// Text module data.
  ///
  /// If `textModulesData` is also defined on the object, both will be
  /// displayed. The maximum number of these fields displayed is 10 from class
  /// and 10 from object.
  core.List<TextModuleData>? textModulesData;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the class. For a pass only ten will be displayed,
  /// prioritizing those from the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// View Unlock Requirement options for the generic pass.
  /// Possible string values are:
  /// - "VIEW_UNLOCK_REQUIREMENT_UNSPECIFIED" : Default value, same as
  /// UNLOCK_NOT_REQUIRED.
  /// - "UNLOCK_NOT_REQUIRED" : Default behavior for all the existing Passes if
  /// ViewUnlockRequirement is not set.
  /// - "UNLOCK_REQUIRED_TO_VIEW" : Requires the user to unlock their device
  /// each time the pass is viewed. If the user removes their device lock after
  /// saving the pass, then they will be prompted to create a device lock before
  /// the pass can be viewed.
  core.String? viewUnlockRequirement;

  GenericClass({
    this.appLinkData,
    this.callbackOptions,
    this.classTemplateInfo,
    this.enableSmartTap,
    this.id,
    this.imageModulesData,
    this.linksModuleData,
    this.merchantLocations,
    this.messages,
    this.multipleDevicesAndHoldersAllowedStatus,
    this.redemptionIssuers,
    this.securityAnimation,
    this.textModulesData,
    this.valueAddedModuleData,
    this.viewUnlockRequirement,
  });

  GenericClass.fromJson(core.Map json_)
      : this(
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          callbackOptions: json_.containsKey('callbackOptions')
              ? CallbackOptions.fromJson(json_['callbackOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          classTemplateInfo: json_.containsKey('classTemplateInfo')
              ? ClassTemplateInfo.fromJson(json_['classTemplateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enableSmartTap: json_['enableSmartTap'] as core.bool?,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          multipleDevicesAndHoldersAllowedStatus:
              json_['multipleDevicesAndHoldersAllowedStatus'] as core.String?,
          redemptionIssuers: (json_['redemptionIssuers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          securityAnimation: json_.containsKey('securityAnimation')
              ? SecurityAnimation.fromJson(json_['securityAnimation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          viewUnlockRequirement: json_['viewUnlockRequirement'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (callbackOptions != null) 'callbackOptions': callbackOptions!,
        if (classTemplateInfo != null) 'classTemplateInfo': classTemplateInfo!,
        if (enableSmartTap != null) 'enableSmartTap': enableSmartTap!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (multipleDevicesAndHoldersAllowedStatus != null)
          'multipleDevicesAndHoldersAllowedStatus':
              multipleDevicesAndHoldersAllowedStatus!,
        if (redemptionIssuers != null) 'redemptionIssuers': redemptionIssuers!,
        if (securityAnimation != null) 'securityAnimation': securityAnimation!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (viewUnlockRequirement != null)
          'viewUnlockRequirement': viewUnlockRequirement!,
      };
}

/// Response to adding a new issuer message to the class.
///
/// This contains the entire updated GenericClass.
class GenericClassAddMessageResponse {
  /// The updated EventTicketClass resource.
  GenericClass? resource;

  GenericClassAddMessageResponse({
    this.resource,
  });

  GenericClassAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? GenericClass.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

/// List response which contains the list of all generic classes for a given
/// issuer ID.
class GenericClassListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<GenericClass>? resources;

  GenericClassListResponse({
    this.pagination,
    this.resources,
  });

  GenericClassListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => GenericClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

/// Generic Object
class GenericObject {
  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding class only object
  /// AppLinkData will be displayed.
  AppLinkData? appLinkData;

  /// The barcode type and value.
  ///
  /// If pass does not have a barcode, we can allow the issuer to set
  /// Barcode.alternate_text and display just that.
  Barcode? barcode;

  /// The header of the pass.
  ///
  /// This is usually the Business name such as "XXX Gym", "AAA Insurance". This
  /// field is required and appears in the header row at the very top of the
  /// pass.
  ///
  /// Required.
  LocalizedString? cardTitle;

  /// The class associated with this object.
  ///
  /// The class must be of the same type as this object, must already exist, and
  /// must be approved. Class IDs should follow the format `issuerID.identifier`
  /// where `issuerID` is issued by Google and `identifier` is chosen by you.
  ///
  /// Required.
  core.String? classId;

  /// Specify which `GenericType` the card belongs to.
  /// Possible string values are:
  /// - "GENERIC_TYPE_UNSPECIFIED" : Unspecified generic type.
  /// - "GENERIC_SEASON_PASS" : Season pass
  /// - "GENERIC_UTILITY_BILLS" : Utility bills
  /// - "GENERIC_PARKING_PASS" : Parking pass
  /// - "GENERIC_VOUCHER" : Voucher
  /// - "GENERIC_GYM_MEMBERSHIP" : Gym membership cards
  /// - "GENERIC_LIBRARY_MEMBERSHIP" : Library membership cards
  /// - "GENERIC_RESERVATIONS" : Reservations
  /// - "GENERIC_AUTO_INSURANCE" : Auto-insurance cards
  /// - "GENERIC_HOME_INSURANCE" : Home-insurance cards
  /// - "GENERIC_ENTRY_TICKET" : Entry tickets
  /// - "GENERIC_RECEIPT" : Receipts
  /// - "GENERIC_LOYALTY_CARD" : Loyalty cards. Please note that it is advisable
  /// to use a dedicated Loyalty card pass type instead of this generic type. A
  /// dedicated loyalty card pass type offers more features and functionality
  /// than a generic pass type.
  /// - "GENERIC_OTHER" : Other type
  core.String? genericType;

  /// Information that controls how passes are grouped together.
  GroupingInfo? groupingInfo;

  /// Indicates if the object has users.
  ///
  /// This field is set by the platform.
  core.bool? hasUsers;

  /// The title of the pass, such as "50% off coupon" or "Library card" or
  /// "Voucher".
  ///
  /// This field is required and appears in the title row of the pass detail
  /// view.
  ///
  /// Required.
  LocalizedString? header;

  /// Banner image displayed on the front of the card if present.
  ///
  /// The image will be displayed at 100% width.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set, the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used and if logo is not
  /// set, a color would be chosen by Google.
  core.String? hexBackgroundColor;

  /// The unique identifier for an object.
  ///
  /// This ID must be unique across all objects from an issuer. This value needs
  /// to follow the format `issuerID.identifier` where `issuerID` is issued by
  /// Google and `identifier` is chosen by you. The unique identifier can only
  /// include alphanumeric characters, `.`, `_`, or `-`.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// Only one of the image from class and one from object level will be
  /// rendered when both set.
  core.List<ImageModuleData>? imageModulesData;

  /// linked_object_ids are a list of other objects such as event ticket,
  /// loyalty, offer, generic, giftcard, transit and boarding pass that should
  /// be automatically attached to this generic object.
  ///
  /// If a user had saved this generic card, then these linked_object_ids would
  /// be automatically pushed to the user's wallet (unless they turned off the
  /// setting to receive such linked passes). Make sure that objects present in
  /// linked_object_ids are already inserted - if not, calls would fail. Once
  /// linked, the linked objects cannot be unlinked. You cannot link objects
  /// belonging to another issuer. There is a limit to the number of objects
  /// that can be linked to a single object. After the limit is reached, new
  /// linked objects in the call will be ignored silently. Object IDs should
  /// follow the format issuer ID. identifier where the former is issued by
  /// Google and the latter is chosen by you.
  core.List<core.String>? linkedObjectIds;

  /// Links module data.
  ///
  /// If `linksModuleData` is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from class and 10 from
  /// object.
  LinksModuleData? linksModuleData;

  /// The logo image of the pass.
  ///
  /// This image is displayed in the card detail view in upper left, and also on
  /// the list/thumbnail view. If the logo is not present, the first letter of
  /// `cardTitle` would be shown as logo.
  Image? logo;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the object. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// The notification settings that are enabled for this object.
  Notifications? notifications;

  /// Pass constraints for the object.
  ///
  /// Includes limiting NFC and screenshot behaviors.
  PassConstraints? passConstraints;

  /// The rotating barcode settings/details.
  RotatingBarcode? rotatingBarcode;

  /// Restrictions on the object that needs to be verified before the user tries
  /// to save the pass.
  ///
  /// Note that this restrictions will only be applied during save time. If the
  /// restrictions changed after a user saves the pass, the new restrictions
  /// will not be applied to an already saved pass.
  SaveRestrictions? saveRestrictions;

  /// The value that will be transmitted to a Smart Tap certified terminal over
  /// NFC for this object.
  ///
  /// The class level fields `enableSmartTap` and `redemptionIssuers` must also
  /// be set up correctly in order for the pass to support Smart Tap. Only ASCII
  /// characters are supported.
  core.String? smartTapRedemptionValue;

  /// The state of the object.
  ///
  /// This field is used to determine how an object is displayed in the app. For
  /// example, an `inactive` object is moved to the "Expired passes" section. If
  /// this is not provided, the object would be considered `ACTIVE`.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE" : Object is active and displayed to with other active objects.
  /// - "active" : Legacy alias for `ACTIVE`. Deprecated.
  /// - "COMPLETED"
  /// - "completed" : Legacy alias for `COMPLETED`. Deprecated.
  /// - "EXPIRED" : Object is no longer valid (`validTimeInterval` passed).
  /// - "expired" : Legacy alias for `EXPIRED`. Deprecated.
  /// - "INACTIVE"
  /// - "inactive" : Legacy alias for `INACTIVE`. Deprecated.
  core.String? state;

  /// The title label of the pass, such as location where this pass can be used.
  ///
  /// Appears right above the title in the title row in the pass detail view.
  LocalizedString? subheader;

  /// Text module data.
  ///
  /// If `textModulesData` is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from class and 10 from
  /// object.
  core.List<TextModuleData>? textModulesData;

  /// The time period this object will be considered valid or usable.
  ///
  /// When the time period is passed, the object will be considered expired,
  /// which will affect the rendering on user's devices.
  TimeInterval? validTimeInterval;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// The wide logo of the pass.
  ///
  /// When provided, this will be used in place of the logo in the top left of
  /// the card view.
  Image? wideLogo;

  GenericObject({
    this.appLinkData,
    this.barcode,
    this.cardTitle,
    this.classId,
    this.genericType,
    this.groupingInfo,
    this.hasUsers,
    this.header,
    this.heroImage,
    this.hexBackgroundColor,
    this.id,
    this.imageModulesData,
    this.linkedObjectIds,
    this.linksModuleData,
    this.logo,
    this.merchantLocations,
    this.messages,
    this.notifications,
    this.passConstraints,
    this.rotatingBarcode,
    this.saveRestrictions,
    this.smartTapRedemptionValue,
    this.state,
    this.subheader,
    this.textModulesData,
    this.validTimeInterval,
    this.valueAddedModuleData,
    this.wideLogo,
  });

  GenericObject.fromJson(core.Map json_)
      : this(
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          barcode: json_.containsKey('barcode')
              ? Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          cardTitle: json_.containsKey('cardTitle')
              ? LocalizedString.fromJson(
                  json_['cardTitle'] as core.Map<core.String, core.dynamic>)
              : null,
          classId: json_['classId'] as core.String?,
          genericType: json_['genericType'] as core.String?,
          groupingInfo: json_.containsKey('groupingInfo')
              ? GroupingInfo.fromJson(
                  json_['groupingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          hasUsers: json_['hasUsers'] as core.bool?,
          header: json_.containsKey('header')
              ? LocalizedString.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          linkedObjectIds: (json_['linkedObjectIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          logo: json_.containsKey('logo')
              ? Image.fromJson(
                  json_['logo'] as core.Map<core.String, core.dynamic>)
              : null,
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          notifications: json_.containsKey('notifications')
              ? Notifications.fromJson(
                  json_['notifications'] as core.Map<core.String, core.dynamic>)
              : null,
          passConstraints: json_.containsKey('passConstraints')
              ? PassConstraints.fromJson(json_['passConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rotatingBarcode: json_.containsKey('rotatingBarcode')
              ? RotatingBarcode.fromJson(json_['rotatingBarcode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          saveRestrictions: json_.containsKey('saveRestrictions')
              ? SaveRestrictions.fromJson(json_['saveRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          smartTapRedemptionValue:
              json_['smartTapRedemptionValue'] as core.String?,
          state: json_['state'] as core.String?,
          subheader: json_.containsKey('subheader')
              ? LocalizedString.fromJson(
                  json_['subheader'] as core.Map<core.String, core.dynamic>)
              : null,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          validTimeInterval: json_.containsKey('validTimeInterval')
              ? TimeInterval.fromJson(json_['validTimeInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          wideLogo: json_.containsKey('wideLogo')
              ? Image.fromJson(
                  json_['wideLogo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (barcode != null) 'barcode': barcode!,
        if (cardTitle != null) 'cardTitle': cardTitle!,
        if (classId != null) 'classId': classId!,
        if (genericType != null) 'genericType': genericType!,
        if (groupingInfo != null) 'groupingInfo': groupingInfo!,
        if (hasUsers != null) 'hasUsers': hasUsers!,
        if (header != null) 'header': header!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (linkedObjectIds != null) 'linkedObjectIds': linkedObjectIds!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (logo != null) 'logo': logo!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (notifications != null) 'notifications': notifications!,
        if (passConstraints != null) 'passConstraints': passConstraints!,
        if (rotatingBarcode != null) 'rotatingBarcode': rotatingBarcode!,
        if (saveRestrictions != null) 'saveRestrictions': saveRestrictions!,
        if (smartTapRedemptionValue != null)
          'smartTapRedemptionValue': smartTapRedemptionValue!,
        if (state != null) 'state': state!,
        if (subheader != null) 'subheader': subheader!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (validTimeInterval != null) 'validTimeInterval': validTimeInterval!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (wideLogo != null) 'wideLogo': wideLogo!,
      };
}

/// Response to adding a new issuer message to the object.
///
/// This contains the entire updated GenericObject.
class GenericObjectAddMessageResponse {
  /// The updated GenericObject resource.
  GenericObject? resource;

  GenericObjectAddMessageResponse({
    this.resource,
  });

  GenericObjectAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? GenericObject.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

/// List response which contains the list of all generic objects for a given
/// issuer ID.
class GenericObjectListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<GenericObject>? resources;

  GenericObjectListResponse({
    this.pagination,
    this.resources,
  });

  GenericObjectListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => GenericObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class GiftCardClass {
  /// Determines whether the merchant supports gift card redemption using
  /// barcode.
  ///
  /// If true, app displays a barcode for the gift card on the Gift card details
  /// screen. If false, a barcode is not displayed.
  core.bool? allowBarcodeRedemption;

  /// Use `multipleDevicesAndHoldersAllowedStatus` instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? allowMultipleUsersPerObject;

  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding object that will be used
  /// instead.
  AppLinkData? appLinkData;

  /// Callback options to be used to call the issuer back for every save/delete
  /// of an object for this class by the end-user.
  ///
  /// All objects of this class are eligible for the callback.
  CallbackOptions? callbackOptions;

  /// The label to display for the card number, such as "Card Number".
  core.String? cardNumberLabel;

  /// Template information about how the class should be displayed.
  ///
  /// If unset, Google will fallback to a default set of fields to display.
  ClassTemplateInfo? classTemplateInfo;

  /// Country code used to display the card's country (when the user is not in
  /// that country), as well as to display localized content when content is not
  /// available in the user's locale.
  core.String? countryCode;

  /// Identifies whether this class supports Smart Tap.
  ///
  /// The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields
  /// must also be set up correctly in order for a pass to support Smart Tap.
  core.bool? enableSmartTap;

  /// The label to display for event number, such as "Target Event #".
  core.String? eventNumberLabel;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, nothing will be displayed. The image will display at
  /// 100% width.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The URI of your application's home page.
  ///
  /// Populating the URI in this field results in the exact same behavior as
  /// populating an URI in linksModuleData (when an object is rendered, a link
  /// to the homepage is shown in what would usually be thought of as the
  /// linksModuleData section of the object).
  Uri? homepageUri;

  /// The unique identifier for a class.
  ///
  /// This ID must be unique across all classes from an issuer. This value
  /// should follow the format issuer ID. identifier where the former is issued
  /// by Google and latter is chosen by you. Your unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  InfoModuleData? infoModuleData;

  /// The issuer name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  ///
  /// Required.
  core.String? issuerName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#giftCardClass"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Links module data.
  ///
  /// If links module data is also defined on the object, both will be
  /// displayed.
  LinksModuleData? linksModuleData;

  /// Translated strings for the card_number_label.
  LocalizedString? localizedCardNumberLabel;

  /// Translated strings for the event_number_label.
  LocalizedString? localizedEventNumberLabel;

  /// Translated strings for the issuer_name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedIssuerName;

  /// Translated strings for the merchant_name.
  ///
  /// The app may display an ellipsis after the first 20 characters to ensure
  /// full string is displayed on smaller screens.
  LocalizedString? localizedMerchantName;

  /// Translated strings for the pin_label.
  LocalizedString? localizedPinLabel;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the class. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// Merchant name, such as "Adam's Apparel".
  ///
  /// The app may display an ellipsis after the first 20 characters to ensure
  /// full string is displayed on smaller screens.
  core.String? merchantName;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Identifies whether multiple users and devices will save the same object
  /// referencing this class.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified preference.
  /// - "MULTIPLE_HOLDERS" : The Pass object is shareable by a user and can be
  /// saved by any number of different users, and on any number of devices.
  /// Partners typically use this setup for passes that do not need to be
  /// restricted to a single user or pinned to a single device.
  /// - "ONE_USER_ALL_DEVICES" : An object can only be saved by one user, but
  /// this user can view and use it on multiple of their devices. Once the first
  /// user saves the object, no other user will be allowed to view or save it.
  /// - "ONE_USER_ONE_DEVICE" : An object can only be saved by one user on a
  /// single device. Intended for use by select partners in limited
  /// circumstances. An example use case is a transit ticket that should be
  /// "device pinned", meaning it can be saved, viewed and used only by a single
  /// user on a single device. Contact support for additional information.
  /// - "multipleHolders" : Legacy alias for `MULTIPLE_HOLDERS`. Deprecated.
  /// - "oneUserAllDevices" : Legacy alias for `ONE_USER_ALL_DEVICES`.
  /// Deprecated.
  /// - "oneUserOneDevice" : Legacy alias for `ONE_USER_ONE_DEVICE`. Deprecated.
  core.String? multipleDevicesAndHoldersAllowedStatus;

  /// Whether or not field updates to this class should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If not specified, no notification will be triggered.
  /// This setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// The label to display for the PIN, such as "4-digit PIN".
  core.String? pinLabel;

  /// The logo of the gift card program or company.
  ///
  /// This logo is displayed in both the details and list views of the app.
  Image? programLogo;

  /// Identifies which redemption issuers can redeem the pass over Smart Tap.
  ///
  /// Redemption issuers are identified by their issuer ID. Redemption issuers
  /// must have at least one Smart Tap key configured. The `enableSmartTap` and
  /// object level `smartTapRedemptionLevel` fields must also be set up
  /// correctly in order for a pass to support Smart Tap.
  core.List<core.String>? redemptionIssuers;

  /// The review comments set by the platform when a class is marked `approved`
  /// or `rejected`.
  Review? review;

  /// The status of the class.
  ///
  /// This field can be set to `draft` or `underReview` using the insert, patch,
  /// or update API calls. Once the review state is changed from `draft` it may
  /// not be changed back to `draft`. You should keep this field to `draft` when
  /// the class is under development. A `draft` class cannot be used to create
  /// any object. You should set this field to `underReview` when you believe
  /// the class is ready for use. The platform will automatically set this field
  /// to `approved` and it can be immediately used to create or migrate objects.
  /// When updating an already `approved` class you should keep setting this
  /// field to `underReview`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED"
  /// - "UNDER_REVIEW"
  /// - "underReview" : Legacy alias for `UNDER_REVIEW`. Deprecated.
  /// - "APPROVED"
  /// - "approved" : Legacy alias for `APPROVED`. Deprecated.
  /// - "REJECTED"
  /// - "rejected" : Legacy alias for `REJECTED`. Deprecated.
  /// - "DRAFT"
  /// - "draft" : Legacy alias for `DRAFT`. Deprecated.
  core.String? reviewStatus;

  /// Optional information about the security animation.
  ///
  /// If this is set a security animation will be rendered on pass details.
  SecurityAnimation? securityAnimation;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the class. For a pass only ten will be displayed,
  /// prioritizing those from the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  /// View Unlock Requirement options for the gift card.
  /// Possible string values are:
  /// - "VIEW_UNLOCK_REQUIREMENT_UNSPECIFIED" : Default value, same as
  /// UNLOCK_NOT_REQUIRED.
  /// - "UNLOCK_NOT_REQUIRED" : Default behavior for all the existing Passes if
  /// ViewUnlockRequirement is not set.
  /// - "UNLOCK_REQUIRED_TO_VIEW" : Requires the user to unlock their device
  /// each time the pass is viewed. If the user removes their device lock after
  /// saving the pass, then they will be prompted to create a device lock before
  /// the pass can be viewed.
  core.String? viewUnlockRequirement;

  /// The wide logo of the gift card program or company.
  ///
  /// When provided, this will be used in place of the program logo in the top
  /// left of the card view.
  Image? wideProgramLogo;

  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Image? wordMark;

  GiftCardClass({
    this.allowBarcodeRedemption,
    this.allowMultipleUsersPerObject,
    this.appLinkData,
    this.callbackOptions,
    this.cardNumberLabel,
    this.classTemplateInfo,
    this.countryCode,
    this.enableSmartTap,
    this.eventNumberLabel,
    this.heroImage,
    this.hexBackgroundColor,
    this.homepageUri,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.issuerName,
    this.kind,
    this.linksModuleData,
    this.localizedCardNumberLabel,
    this.localizedEventNumberLabel,
    this.localizedIssuerName,
    this.localizedMerchantName,
    this.localizedPinLabel,
    this.locations,
    this.merchantLocations,
    this.merchantName,
    this.messages,
    this.multipleDevicesAndHoldersAllowedStatus,
    this.notifyPreference,
    this.pinLabel,
    this.programLogo,
    this.redemptionIssuers,
    this.review,
    this.reviewStatus,
    this.securityAnimation,
    this.textModulesData,
    this.valueAddedModuleData,
    this.version,
    this.viewUnlockRequirement,
    this.wideProgramLogo,
    this.wordMark,
  });

  GiftCardClass.fromJson(core.Map json_)
      : this(
          allowBarcodeRedemption: json_['allowBarcodeRedemption'] as core.bool?,
          allowMultipleUsersPerObject:
              json_['allowMultipleUsersPerObject'] as core.bool?,
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          callbackOptions: json_.containsKey('callbackOptions')
              ? CallbackOptions.fromJson(json_['callbackOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cardNumberLabel: json_['cardNumberLabel'] as core.String?,
          classTemplateInfo: json_.containsKey('classTemplateInfo')
              ? ClassTemplateInfo.fromJson(json_['classTemplateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          countryCode: json_['countryCode'] as core.String?,
          enableSmartTap: json_['enableSmartTap'] as core.bool?,
          eventNumberLabel: json_['eventNumberLabel'] as core.String?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          homepageUri: json_.containsKey('homepageUri')
              ? Uri.fromJson(
                  json_['homepageUri'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          issuerName: json_['issuerName'] as core.String?,
          kind: json_['kind'] as core.String?,
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedCardNumberLabel:
              json_.containsKey('localizedCardNumberLabel')
                  ? LocalizedString.fromJson(json_['localizedCardNumberLabel']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          localizedEventNumberLabel:
              json_.containsKey('localizedEventNumberLabel')
                  ? LocalizedString.fromJson(json_['localizedEventNumberLabel']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          localizedIssuerName: json_.containsKey('localizedIssuerName')
              ? LocalizedString.fromJson(json_['localizedIssuerName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedMerchantName: json_.containsKey('localizedMerchantName')
              ? LocalizedString.fromJson(json_['localizedMerchantName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedPinLabel: json_.containsKey('localizedPinLabel')
              ? LocalizedString.fromJson(json_['localizedPinLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantName: json_['merchantName'] as core.String?,
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          multipleDevicesAndHoldersAllowedStatus:
              json_['multipleDevicesAndHoldersAllowedStatus'] as core.String?,
          notifyPreference: json_['notifyPreference'] as core.String?,
          pinLabel: json_['pinLabel'] as core.String?,
          programLogo: json_.containsKey('programLogo')
              ? Image.fromJson(
                  json_['programLogo'] as core.Map<core.String, core.dynamic>)
              : null,
          redemptionIssuers: (json_['redemptionIssuers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          review: json_.containsKey('review')
              ? Review.fromJson(
                  json_['review'] as core.Map<core.String, core.dynamic>)
              : null,
          reviewStatus: json_['reviewStatus'] as core.String?,
          securityAnimation: json_.containsKey('securityAnimation')
              ? SecurityAnimation.fromJson(json_['securityAnimation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
          viewUnlockRequirement: json_['viewUnlockRequirement'] as core.String?,
          wideProgramLogo: json_.containsKey('wideProgramLogo')
              ? Image.fromJson(json_['wideProgramLogo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          wordMark: json_.containsKey('wordMark')
              ? Image.fromJson(
                  json_['wordMark'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowBarcodeRedemption != null)
          'allowBarcodeRedemption': allowBarcodeRedemption!,
        if (allowMultipleUsersPerObject != null)
          'allowMultipleUsersPerObject': allowMultipleUsersPerObject!,
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (callbackOptions != null) 'callbackOptions': callbackOptions!,
        if (cardNumberLabel != null) 'cardNumberLabel': cardNumberLabel!,
        if (classTemplateInfo != null) 'classTemplateInfo': classTemplateInfo!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (enableSmartTap != null) 'enableSmartTap': enableSmartTap!,
        if (eventNumberLabel != null) 'eventNumberLabel': eventNumberLabel!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (issuerName != null) 'issuerName': issuerName!,
        if (kind != null) 'kind': kind!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (localizedCardNumberLabel != null)
          'localizedCardNumberLabel': localizedCardNumberLabel!,
        if (localizedEventNumberLabel != null)
          'localizedEventNumberLabel': localizedEventNumberLabel!,
        if (localizedIssuerName != null)
          'localizedIssuerName': localizedIssuerName!,
        if (localizedMerchantName != null)
          'localizedMerchantName': localizedMerchantName!,
        if (localizedPinLabel != null) 'localizedPinLabel': localizedPinLabel!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (merchantName != null) 'merchantName': merchantName!,
        if (messages != null) 'messages': messages!,
        if (multipleDevicesAndHoldersAllowedStatus != null)
          'multipleDevicesAndHoldersAllowedStatus':
              multipleDevicesAndHoldersAllowedStatus!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (pinLabel != null) 'pinLabel': pinLabel!,
        if (programLogo != null) 'programLogo': programLogo!,
        if (redemptionIssuers != null) 'redemptionIssuers': redemptionIssuers!,
        if (review != null) 'review': review!,
        if (reviewStatus != null) 'reviewStatus': reviewStatus!,
        if (securityAnimation != null) 'securityAnimation': securityAnimation!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
        if (viewUnlockRequirement != null)
          'viewUnlockRequirement': viewUnlockRequirement!,
        if (wideProgramLogo != null) 'wideProgramLogo': wideProgramLogo!,
        if (wordMark != null) 'wordMark': wordMark!,
      };
}

class GiftCardClassAddMessageResponse {
  /// The updated GiftCardClass resource.
  GiftCardClass? resource;

  GiftCardClassAddMessageResponse({
    this.resource,
  });

  GiftCardClassAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? GiftCardClass.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class GiftCardClassListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<GiftCardClass>? resources;

  GiftCardClassListResponse({
    this.pagination,
    this.resources,
  });

  GiftCardClassListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => GiftCardClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class GiftCardObject {
  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding class only object
  /// AppLinkData will be displayed.
  AppLinkData? appLinkData;

  /// The card's monetary balance.
  Money? balance;

  /// The date and time when the balance was last updated.
  ///
  /// Offset is required. If balance is updated and this property is not
  /// provided, system will default to the current time.
  DateTime? balanceUpdateTime;

  /// The barcode type and value.
  Barcode? barcode;

  /// The card's number.
  ///
  /// Required.
  core.String? cardNumber;

  /// The class associated with this object.
  ///
  /// The class must be of the same type as this object, must already exist, and
  /// must be approved. Class IDs should follow the format issuer ID.identifier
  /// where the former is issued by Google and latter is chosen by you.
  ///
  /// Required.
  core.String? classId;

  /// A copy of the inherited fields of the parent class.
  ///
  /// These fields are retrieved during a GET.
  GiftCardClass? classReference;

  /// Indicates if notifications should explicitly be suppressed.
  ///
  /// If this field is set to true, regardless of the `messages` field,
  /// expiration notifications to the user will be suppressed. By default, this
  /// field is set to false. Currently, this can only be set for offers.
  core.bool? disableExpirationNotification;

  /// The card's event number, an optional field used by some gift cards.
  core.String? eventNumber;

  /// Information that controls how passes are grouped together.
  GroupingInfo? groupingInfo;

  /// Whether this object is currently linked to a single device.
  ///
  /// This field is set by the platform when a user saves the object, linking it
  /// to their device. Intended for use by select partners. Contact support for
  /// additional information.
  core.bool? hasLinkedDevice;

  /// Indicates if the object has users.
  ///
  /// This field is set by the platform.
  core.bool? hasUsers;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, hero image of the class, if present, will be
  /// displayed. If hero image of the class is also not present, nothing will be
  /// displayed.
  Image? heroImage;

  /// The unique identifier for an object.
  ///
  /// This ID must be unique across all objects from an issuer. This value
  /// should follow the format issuer ID.identifier where the former is issued
  /// by Google and latter is chosen by you. The unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  InfoModuleData? infoModuleData;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#giftCardObject"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// linked_object_ids are a list of other objects such as event ticket,
  /// loyalty, offer, generic, giftcard, transit and boarding pass that should
  /// be automatically attached to this giftcard object.
  ///
  /// If a user had saved this gift card, then these linked_object_ids would be
  /// automatically pushed to the user's wallet (unless they turned off the
  /// setting to receive such linked passes). Make sure that objects present in
  /// linked_object_ids are already inserted - if not, calls would fail. Once
  /// linked, the linked objects cannot be unlinked. You cannot link objects
  /// belonging to another issuer. There is a limit to the number of objects
  /// that can be linked to a single object. After the limit is reached, new
  /// linked objects in the call will be ignored silently. Object IDs should
  /// follow the format issuer ID. identifier where the former is issued by
  /// Google and the latter is chosen by you.
  core.List<core.String>? linkedObjectIds;

  /// Links module data.
  ///
  /// If links module data is also defined on the class, both will be displayed.
  LinksModuleData? linksModuleData;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the object. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Whether or not field updates to this object should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If set to DO_NOT_NOTIFY or
  /// NOTIFICATION_SETTINGS_UNSPECIFIED, no notification will be triggered. This
  /// setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Pass constraints for the object.
  ///
  /// Includes limiting NFC and screenshot behaviors.
  PassConstraints? passConstraints;

  /// The card's PIN.
  core.String? pin;

  /// The rotating barcode type and value.
  RotatingBarcode? rotatingBarcode;

  /// Restrictions on the object that needs to be verified before the user tries
  /// to save the pass.
  ///
  /// Note that this restrictions will only be applied during save time. If the
  /// restrictions changed after a user saves the pass, the new restrictions
  /// will not be applied to an already saved pass.
  SaveRestrictions? saveRestrictions;

  /// The value that will be transmitted to a Smart Tap certified terminal over
  /// NFC for this object.
  ///
  /// The class level fields `enableSmartTap` and `redemptionIssuers` must also
  /// be set up correctly in order for the pass to support Smart Tap. Only ASCII
  /// characters are supported.
  core.String? smartTapRedemptionValue;

  /// The state of the object.
  ///
  /// This field is used to determine how an object is displayed in the app. For
  /// example, an `inactive` object is moved to the "Expired passes" section.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE" : Object is active and displayed to with other active objects.
  /// - "active" : Legacy alias for `ACTIVE`. Deprecated.
  /// - "COMPLETED"
  /// - "completed" : Legacy alias for `COMPLETED`. Deprecated.
  /// - "EXPIRED" : Object is no longer valid (`validTimeInterval` passed).
  /// - "expired" : Legacy alias for `EXPIRED`. Deprecated.
  /// - "INACTIVE"
  /// - "inactive" : Legacy alias for `INACTIVE`. Deprecated.
  core.String? state;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// The time period this object will be `active` and object can be used.
  ///
  /// An object's state will be changed to `expired` when this time period has
  /// passed.
  TimeInterval? validTimeInterval;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  GiftCardObject({
    this.appLinkData,
    this.balance,
    this.balanceUpdateTime,
    this.barcode,
    this.cardNumber,
    this.classId,
    this.classReference,
    this.disableExpirationNotification,
    this.eventNumber,
    this.groupingInfo,
    this.hasLinkedDevice,
    this.hasUsers,
    this.heroImage,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.kind,
    this.linkedObjectIds,
    this.linksModuleData,
    this.locations,
    this.merchantLocations,
    this.messages,
    this.notifyPreference,
    this.passConstraints,
    this.pin,
    this.rotatingBarcode,
    this.saveRestrictions,
    this.smartTapRedemptionValue,
    this.state,
    this.textModulesData,
    this.validTimeInterval,
    this.valueAddedModuleData,
    this.version,
  });

  GiftCardObject.fromJson(core.Map json_)
      : this(
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          balance: json_.containsKey('balance')
              ? Money.fromJson(
                  json_['balance'] as core.Map<core.String, core.dynamic>)
              : null,
          balanceUpdateTime: json_.containsKey('balanceUpdateTime')
              ? DateTime.fromJson(json_['balanceUpdateTime']
                  as core.Map<core.String, core.dynamic>)
              : null,
          barcode: json_.containsKey('barcode')
              ? Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          cardNumber: json_['cardNumber'] as core.String?,
          classId: json_['classId'] as core.String?,
          classReference: json_.containsKey('classReference')
              ? GiftCardClass.fromJson(json_['classReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disableExpirationNotification:
              json_['disableExpirationNotification'] as core.bool?,
          eventNumber: json_['eventNumber'] as core.String?,
          groupingInfo: json_.containsKey('groupingInfo')
              ? GroupingInfo.fromJson(
                  json_['groupingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          hasLinkedDevice: json_['hasLinkedDevice'] as core.bool?,
          hasUsers: json_['hasUsers'] as core.bool?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          linkedObjectIds: (json_['linkedObjectIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          notifyPreference: json_['notifyPreference'] as core.String?,
          passConstraints: json_.containsKey('passConstraints')
              ? PassConstraints.fromJson(json_['passConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          pin: json_['pin'] as core.String?,
          rotatingBarcode: json_.containsKey('rotatingBarcode')
              ? RotatingBarcode.fromJson(json_['rotatingBarcode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          saveRestrictions: json_.containsKey('saveRestrictions')
              ? SaveRestrictions.fromJson(json_['saveRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          smartTapRedemptionValue:
              json_['smartTapRedemptionValue'] as core.String?,
          state: json_['state'] as core.String?,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          validTimeInterval: json_.containsKey('validTimeInterval')
              ? TimeInterval.fromJson(json_['validTimeInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (balance != null) 'balance': balance!,
        if (balanceUpdateTime != null) 'balanceUpdateTime': balanceUpdateTime!,
        if (barcode != null) 'barcode': barcode!,
        if (cardNumber != null) 'cardNumber': cardNumber!,
        if (classId != null) 'classId': classId!,
        if (classReference != null) 'classReference': classReference!,
        if (disableExpirationNotification != null)
          'disableExpirationNotification': disableExpirationNotification!,
        if (eventNumber != null) 'eventNumber': eventNumber!,
        if (groupingInfo != null) 'groupingInfo': groupingInfo!,
        if (hasLinkedDevice != null) 'hasLinkedDevice': hasLinkedDevice!,
        if (hasUsers != null) 'hasUsers': hasUsers!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (kind != null) 'kind': kind!,
        if (linkedObjectIds != null) 'linkedObjectIds': linkedObjectIds!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (passConstraints != null) 'passConstraints': passConstraints!,
        if (pin != null) 'pin': pin!,
        if (rotatingBarcode != null) 'rotatingBarcode': rotatingBarcode!,
        if (saveRestrictions != null) 'saveRestrictions': saveRestrictions!,
        if (smartTapRedemptionValue != null)
          'smartTapRedemptionValue': smartTapRedemptionValue!,
        if (state != null) 'state': state!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (validTimeInterval != null) 'validTimeInterval': validTimeInterval!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
      };
}

class GiftCardObjectAddMessageResponse {
  /// The updated GiftCardObject resource.
  GiftCardObject? resource;

  GiftCardObjectAddMessageResponse({
    this.resource,
  });

  GiftCardObjectAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? GiftCardObject.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class GiftCardObjectListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<GiftCardObject>? resources;

  GiftCardObjectListResponse({
    this.pagination,
    this.resources,
  });

  GiftCardObjectListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => GiftCardObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class GroupingInfo {
  /// Optional grouping ID for grouping the passes with the same ID visually
  /// together.
  ///
  /// Grouping with different types of passes is allowed.
  core.String? groupingId;

  /// Optional index for sorting the passes when they are grouped with other
  /// passes.
  ///
  /// Passes with lower sort index are shown before passes with higher sort
  /// index. If unspecified, the value is assumed to be INT_MAX. For two passes
  /// with the same sort index, the sorting behavior is undefined.
  core.int? sortIndex;

  GroupingInfo({
    this.groupingId,
    this.sortIndex,
  });

  GroupingInfo.fromJson(core.Map json_)
      : this(
          groupingId: json_['groupingId'] as core.String?,
          sortIndex: json_['sortIndex'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupingId != null) 'groupingId': groupingId!,
        if (sortIndex != null) 'sortIndex': sortIndex!,
      };
}

/// Wrapping type for Google hosted images.
///
/// Next ID: 7
class Image {
  /// Description of the image used for accessibility.
  LocalizedString? contentDescription;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#image"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The URI for the image.
  ImageUri? sourceUri;

  Image({
    this.contentDescription,
    this.kind,
    this.sourceUri,
  });

  Image.fromJson(core.Map json_)
      : this(
          contentDescription: json_.containsKey('contentDescription')
              ? LocalizedString.fromJson(json_['contentDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          sourceUri: json_.containsKey('sourceUri')
              ? ImageUri.fromJson(
                  json_['sourceUri'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDescription != null)
          'contentDescription': contentDescription!,
        if (kind != null) 'kind': kind!,
        if (sourceUri != null) 'sourceUri': sourceUri!,
      };
}

class ImageModuleData {
  /// The ID associated with an image module.
  ///
  /// This field is here to enable ease of management of image modules.
  core.String? id;

  /// A 100% width image.
  Image? mainImage;

  ImageModuleData({
    this.id,
    this.mainImage,
  });

  ImageModuleData.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.String?,
          mainImage: json_.containsKey('mainImage')
              ? Image.fromJson(
                  json_['mainImage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (mainImage != null) 'mainImage': mainImage!,
      };
}

class ImageUri {
  /// Additional information about the image, which is unused and retained only
  /// for backward compatibility.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? description;

  /// Translated strings for the description, which are unused and retained only
  /// for backward compatibility.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  LocalizedString? localizedDescription;

  /// The location of the image.
  ///
  /// URIs must have a scheme.
  core.String? uri;

  ImageUri({
    this.description,
    this.localizedDescription,
    this.uri,
  });

  ImageUri.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          localizedDescription: json_.containsKey('localizedDescription')
              ? LocalizedString.fromJson(json_['localizedDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (localizedDescription != null)
          'localizedDescription': localizedDescription!,
        if (uri != null) 'uri': uri!,
      };
}

class InfoModuleData {
  /// A list of collections of labels and values.
  ///
  /// These will be displayed one after the other in a singular column.
  core.List<LabelValueRow>? labelValueRows;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? showLastUpdateTime;

  InfoModuleData({
    this.labelValueRows,
    this.showLastUpdateTime,
  });

  InfoModuleData.fromJson(core.Map json_)
      : this(
          labelValueRows: (json_['labelValueRows'] as core.List?)
              ?.map((value) => LabelValueRow.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          showLastUpdateTime: json_['showLastUpdateTime'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labelValueRows != null) 'labelValueRows': labelValueRows!,
        if (showLastUpdateTime != null)
          'showLastUpdateTime': showLastUpdateTime!,
      };
}

class Issuer {
  /// Allows the issuer to provide their callback settings.
  CallbackOptions? callbackOptions;

  /// Issuer contact information.
  IssuerContactInfo? contactInfo;

  /// URL for the issuer's home page.
  core.String? homepageUrl;

  /// The unique identifier for an issuer account.
  ///
  /// This is automatically generated when the issuer is inserted.
  core.String? issuerId;

  /// The account name of the issuer.
  core.String? name;

  /// Available only to Smart Tap enabled partners.
  ///
  /// Contact support for additional guidance.
  SmartTapMerchantData? smartTapMerchantData;

  Issuer({
    this.callbackOptions,
    this.contactInfo,
    this.homepageUrl,
    this.issuerId,
    this.name,
    this.smartTapMerchantData,
  });

  Issuer.fromJson(core.Map json_)
      : this(
          callbackOptions: json_.containsKey('callbackOptions')
              ? CallbackOptions.fromJson(json_['callbackOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          contactInfo: json_.containsKey('contactInfo')
              ? IssuerContactInfo.fromJson(
                  json_['contactInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          homepageUrl: json_['homepageUrl'] as core.String?,
          issuerId: json_['issuerId'] as core.String?,
          name: json_['name'] as core.String?,
          smartTapMerchantData: json_.containsKey('smartTapMerchantData')
              ? SmartTapMerchantData.fromJson(json_['smartTapMerchantData']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (callbackOptions != null) 'callbackOptions': callbackOptions!,
        if (contactInfo != null) 'contactInfo': contactInfo!,
        if (homepageUrl != null) 'homepageUrl': homepageUrl!,
        if (issuerId != null) 'issuerId': issuerId!,
        if (name != null) 'name': name!,
        if (smartTapMerchantData != null)
          'smartTapMerchantData': smartTapMerchantData!,
      };
}

class IssuerContactInfo {
  /// Email addresses which will receive alerts.
  core.List<core.String>? alertsEmails;

  /// The primary contact email address.
  core.String? email;

  /// The primary contact name.
  core.String? name;

  /// The primary contact phone number.
  core.String? phone;

  IssuerContactInfo({
    this.alertsEmails,
    this.email,
    this.name,
    this.phone,
  });

  IssuerContactInfo.fromJson(core.Map json_)
      : this(
          alertsEmails: (json_['alertsEmails'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          email: json_['email'] as core.String?,
          name: json_['name'] as core.String?,
          phone: json_['phone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alertsEmails != null) 'alertsEmails': alertsEmails!,
        if (email != null) 'email': email!,
        if (name != null) 'name': name!,
        if (phone != null) 'phone': phone!,
      };
}

class IssuerListResponse {
  /// Resources corresponding to the list request.
  core.List<Issuer>? resources;

  IssuerListResponse({
    this.resources,
  });

  IssuerListResponse.fromJson(core.Map json_)
      : this(
          resources: (json_['resources'] as core.List?)
              ?.map((value) =>
                  Issuer.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resources != null) 'resources': resources!,
      };
}

class IssuerToUserInfo {
  ///
  /// Possible string values are:
  /// - "ACTION_UNSPECIFIED"
  /// - "S2AP"
  /// - "s2ap" : Legacy alias for `S2AP`. Deprecated.
  /// - "SIGN_UP"
  /// - "signUp" : Legacy alias for `SIGN_UP`. Deprecated.
  core.String? action;
  SignUpInfo? signUpInfo;

  /// Currently not used, consider deprecating.
  core.String? url;

  /// JSON web token for action S2AP.
  core.String? value;

  IssuerToUserInfo({
    this.action,
    this.signUpInfo,
    this.url,
    this.value,
  });

  IssuerToUserInfo.fromJson(core.Map json_)
      : this(
          action: json_['action'] as core.String?,
          signUpInfo: json_.containsKey('signUpInfo')
              ? SignUpInfo.fromJson(
                  json_['signUpInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          url: json_['url'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (signUpInfo != null) 'signUpInfo': signUpInfo!,
        if (url != null) 'url': url!,
        if (value != null) 'value': value!,
      };
}

class JwtInsertResponse {
  /// Data that corresponds to the ids of the provided classes and objects in
  /// the JWT.
  ///
  /// resources will only include the non-empty arrays (i.e. if the JWT only
  /// includes eventTicketObjects, then that is the only field that will be
  /// present in resources).
  Resources? resources;

  /// A URI that, when opened, will allow the end user to save the object(s)
  /// identified in the JWT to their Google account.
  core.String? saveUri;

  JwtInsertResponse({
    this.resources,
    this.saveUri,
  });

  JwtInsertResponse.fromJson(core.Map json_)
      : this(
          resources: json_.containsKey('resources')
              ? Resources.fromJson(
                  json_['resources'] as core.Map<core.String, core.dynamic>)
              : null,
          saveUri: json_['saveUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resources != null) 'resources': resources!,
        if (saveUri != null) 'saveUri': saveUri!,
      };
}

class JwtResource {
  /// A string representing a JWT of the format described at
  /// https://developers.google.com/wallet/reference/rest/v1/Jwt
  core.String? jwt;

  JwtResource({
    this.jwt,
  });

  JwtResource.fromJson(core.Map json_)
      : this(
          jwt: json_['jwt'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jwt != null) 'jwt': jwt!,
      };
}

/// A pair of text strings to be displayed in the details view.
///
/// Note we no longer display LabelValue/LabelValueRow as a table, instead a
/// list of items.
class LabelValue {
  /// The label for a specific row and column.
  ///
  /// Recommended maximum is 15 characters for a two-column layout and 30
  /// characters for a one-column layout.
  core.String? label;

  /// Translated strings for the label.
  ///
  /// Recommended maximum is 15 characters for a two-column layout and 30
  /// characters for a one-column layout.
  LocalizedString? localizedLabel;

  /// Translated strings for the value.
  ///
  /// Recommended maximum is 15 characters for a two-column layout and 30
  /// characters for a one-column layout.
  LocalizedString? localizedValue;

  /// The value for a specific row and column.
  ///
  /// Recommended maximum is 15 characters for a two-column layout and 30
  /// characters for a one-column layout.
  core.String? value;

  LabelValue({
    this.label,
    this.localizedLabel,
    this.localizedValue,
    this.value,
  });

  LabelValue.fromJson(core.Map json_)
      : this(
          label: json_['label'] as core.String?,
          localizedLabel: json_.containsKey('localizedLabel')
              ? LocalizedString.fromJson(json_['localizedLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedValue: json_.containsKey('localizedValue')
              ? LocalizedString.fromJson(json_['localizedValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (localizedLabel != null) 'localizedLabel': localizedLabel!,
        if (localizedValue != null) 'localizedValue': localizedValue!,
        if (value != null) 'value': value!,
      };
}

class LabelValueRow {
  /// A list of labels and values.
  ///
  /// These will be displayed in a singular column, one after the other, not in
  /// multiple columns, despite the field name.
  core.List<LabelValue>? columns;

  LabelValueRow({
    this.columns,
  });

  LabelValueRow.fromJson(core.Map json_)
      : this(
          columns: (json_['columns'] as core.List?)
              ?.map((value) => LabelValue.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
      };
}

class LatLongPoint {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#latLongPoint"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The latitude specified as any value in the range of -90.0 through +90.0,
  /// both inclusive.
  ///
  /// Values outside these bounds will be rejected.
  core.double? latitude;

  /// The longitude specified in the range -180.0 through +180.0, both
  /// inclusive.
  ///
  /// Values outside these bounds will be rejected.
  core.double? longitude;

  LatLongPoint({
    this.kind,
    this.latitude,
    this.longitude,
  });

  LatLongPoint.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          latitude: (json_['latitude'] as core.num?)?.toDouble(),
          longitude: (json_['longitude'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

class LinksModuleData {
  /// The list of URIs.
  core.List<Uri>? uris;

  LinksModuleData({
    this.uris,
  });

  LinksModuleData.fromJson(core.Map json_)
      : this(
          uris: (json_['uris'] as core.List?)
              ?.map((value) =>
                  Uri.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uris != null) 'uris': uris!,
      };
}

class ListTemplateOverride {
  /// Specifies from a predefined set of options or from a reference to the
  /// field what will be displayed in the first row.
  ///
  /// To set this override, set the FirstRowOption.fieldOption to the
  /// FieldSelector of your choice.
  FirstRowOption? firstRowOption;

  /// A reference to the field to be displayed in the second row.
  ///
  /// This option is only displayed if there are not multiple user objects in a
  /// group. If there is a group, the second row will always display a field
  /// shared by all objects. To set this override, please set secondRowOption to
  /// the FieldSelector of you choice.
  FieldSelector? secondRowOption;

  /// An unused/deprecated field.
  ///
  /// Setting it will have no effect on what the user sees.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  FieldSelector? thirdRowOption;

  ListTemplateOverride({
    this.firstRowOption,
    this.secondRowOption,
    this.thirdRowOption,
  });

  ListTemplateOverride.fromJson(core.Map json_)
      : this(
          firstRowOption: json_.containsKey('firstRowOption')
              ? FirstRowOption.fromJson(json_['firstRowOption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondRowOption: json_.containsKey('secondRowOption')
              ? FieldSelector.fromJson(json_['secondRowOption']
                  as core.Map<core.String, core.dynamic>)
              : null,
          thirdRowOption: json_.containsKey('thirdRowOption')
              ? FieldSelector.fromJson(json_['thirdRowOption']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstRowOption != null) 'firstRowOption': firstRowOption!,
        if (secondRowOption != null) 'secondRowOption': secondRowOption!,
        if (thirdRowOption != null) 'thirdRowOption': thirdRowOption!,
      };
}

class LocalizedString {
  /// Contains the string to be displayed if no appropriate translation is
  /// available.
  TranslatedString? defaultValue;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#localizedString"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Contains the translations for the string.
  core.List<TranslatedString>? translatedValues;

  LocalizedString({
    this.defaultValue,
    this.kind,
    this.translatedValues,
  });

  LocalizedString.fromJson(core.Map json_)
      : this(
          defaultValue: json_.containsKey('defaultValue')
              ? TranslatedString.fromJson(
                  json_['defaultValue'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          translatedValues: (json_['translatedValues'] as core.List?)
              ?.map((value) => TranslatedString.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (kind != null) 'kind': kind!,
        if (translatedValues != null) 'translatedValues': translatedValues!,
      };
}

class LoyaltyClass {
  /// The account ID label, such as "Member ID." Recommended maximum length is
  /// 15 characters to ensure full string is displayed on smaller screens.
  core.String? accountIdLabel;

  /// The account name label, such as "Member Name." Recommended maximum length
  /// is 15 characters to ensure full string is displayed on smaller screens.
  core.String? accountNameLabel;

  /// Use `multipleDevicesAndHoldersAllowedStatus` instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? allowMultipleUsersPerObject;

  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding object that will be used
  /// instead.
  AppLinkData? appLinkData;

  /// Callback options to be used to call the issuer back for every save/delete
  /// of an object for this class by the end-user.
  ///
  /// All objects of this class are eligible for the callback.
  CallbackOptions? callbackOptions;

  /// Template information about how the class should be displayed.
  ///
  /// If unset, Google will fallback to a default set of fields to display.
  ClassTemplateInfo? classTemplateInfo;

  /// Country code used to display the card's country (when the user is not in
  /// that country), as well as to display localized content when content is not
  /// available in the user's locale.
  core.String? countryCode;

  /// Information about how the class may be discovered and instantiated from
  /// within the Google Pay app.
  DiscoverableProgram? discoverableProgram;

  /// Identifies whether this class supports Smart Tap.
  ///
  /// The \`redemptionIssuers\` and one of object level
  /// \`smartTapRedemptionLevel\`, barcode.value\`, or \`accountId\` fields must
  /// also be set up correctly in order for a pass to support Smart Tap.
  core.bool? enableSmartTap;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, nothing will be displayed. The image will display at
  /// 100% width.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The URI of your application's home page.
  ///
  /// Populating the URI in this field results in the exact same behavior as
  /// populating an URI in linksModuleData (when an object is rendered, a link
  /// to the homepage is shown in what would usually be thought of as the
  /// linksModuleData section of the object).
  Uri? homepageUri;

  /// The unique identifier for a class.
  ///
  /// This ID must be unique across all classes from an issuer. This value
  /// should follow the format issuer ID. identifier where the former is issued
  /// by Google and latter is chosen by you. Your unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  InfoModuleData? infoModuleData;

  /// The issuer name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  ///
  /// Required.
  core.String? issuerName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#loyaltyClass"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Links module data.
  ///
  /// If links module data is also defined on the object, both will be
  /// displayed.
  LinksModuleData? linksModuleData;

  /// Translated strings for the account_id_label.
  ///
  /// Recommended maximum length is 15 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedAccountIdLabel;

  /// Translated strings for the account_name_label.
  ///
  /// Recommended maximum length is 15 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedAccountNameLabel;

  /// Translated strings for the issuer_name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedIssuerName;

  /// Translated strings for the program_name.
  ///
  /// The app may display an ellipsis after the first 20 characters to ensure
  /// full string is displayed on smaller screens.
  LocalizedString? localizedProgramName;

  /// Translated strings for the rewards_tier.
  ///
  /// Recommended maximum length is 7 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedRewardsTier;

  /// Translated strings for the rewards_tier_label.
  ///
  /// Recommended maximum length is 9 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedRewardsTierLabel;

  /// Translated strings for the secondary_rewards_tier.
  LocalizedString? localizedSecondaryRewardsTier;

  /// Translated strings for the secondary_rewards_tier_label.
  LocalizedString? localizedSecondaryRewardsTierLabel;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the class. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Identifies whether multiple users and devices will save the same object
  /// referencing this class.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified preference.
  /// - "MULTIPLE_HOLDERS" : The Pass object is shareable by a user and can be
  /// saved by any number of different users, and on any number of devices.
  /// Partners typically use this setup for passes that do not need to be
  /// restricted to a single user or pinned to a single device.
  /// - "ONE_USER_ALL_DEVICES" : An object can only be saved by one user, but
  /// this user can view and use it on multiple of their devices. Once the first
  /// user saves the object, no other user will be allowed to view or save it.
  /// - "ONE_USER_ONE_DEVICE" : An object can only be saved by one user on a
  /// single device. Intended for use by select partners in limited
  /// circumstances. An example use case is a transit ticket that should be
  /// "device pinned", meaning it can be saved, viewed and used only by a single
  /// user on a single device. Contact support for additional information.
  /// - "multipleHolders" : Legacy alias for `MULTIPLE_HOLDERS`. Deprecated.
  /// - "oneUserAllDevices" : Legacy alias for `ONE_USER_ALL_DEVICES`.
  /// Deprecated.
  /// - "oneUserOneDevice" : Legacy alias for `ONE_USER_ONE_DEVICE`. Deprecated.
  core.String? multipleDevicesAndHoldersAllowedStatus;

  /// Whether or not field updates to this class should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If not specified, no notification will be triggered.
  /// This setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// The logo of the loyalty program or company.
  ///
  /// This logo is displayed in both the details and list views of the app.
  ///
  /// Required.
  Image? programLogo;

  /// The program name, such as "Adam's Apparel".
  ///
  /// The app may display an ellipsis after the first 20 characters to ensure
  /// full string is displayed on smaller screens.
  ///
  /// Required.
  core.String? programName;

  /// Identifies which redemption issuers can redeem the pass over Smart Tap.
  ///
  /// Redemption issuers are identified by their issuer ID. Redemption issuers
  /// must have at least one Smart Tap key configured. The \`enableSmartTap\`
  /// and one of object level \`smartTapRedemptionValue\`, barcode.value\`, or
  /// \`accountId\` fields must also be set up correctly in order for a pass to
  /// support Smart Tap.
  core.List<core.String>? redemptionIssuers;

  /// The review comments set by the platform when a class is marked `approved`
  /// or `rejected`.
  Review? review;

  /// The status of the class.
  ///
  /// This field can be set to `draft` or `underReview` using the insert, patch,
  /// or update API calls. Once the review state is changed from `draft` it may
  /// not be changed back to `draft`. You should keep this field to `draft` when
  /// the class is under development. A `draft` class cannot be used to create
  /// any object. You should set this field to `underReview` when you believe
  /// the class is ready for use. The platform will automatically set this field
  /// to `approved` and it can be immediately used to create or migrate objects.
  /// When updating an already `approved` class you should keep setting this
  /// field to `underReview`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED"
  /// - "UNDER_REVIEW"
  /// - "underReview" : Legacy alias for `UNDER_REVIEW`. Deprecated.
  /// - "APPROVED"
  /// - "approved" : Legacy alias for `APPROVED`. Deprecated.
  /// - "REJECTED"
  /// - "rejected" : Legacy alias for `REJECTED`. Deprecated.
  /// - "DRAFT"
  /// - "draft" : Legacy alias for `DRAFT`. Deprecated.
  core.String? reviewStatus;

  /// The rewards tier, such as "Gold" or "Platinum." Recommended maximum length
  /// is 7 characters to ensure full string is displayed on smaller screens.
  core.String? rewardsTier;

  /// The rewards tier label, such as "Rewards Tier." Recommended maximum length
  /// is 9 characters to ensure full string is displayed on smaller screens.
  core.String? rewardsTierLabel;

  /// The secondary rewards tier, such as "Gold" or "Platinum."
  core.String? secondaryRewardsTier;

  /// The secondary rewards tier label, such as "Rewards Tier."
  core.String? secondaryRewardsTierLabel;

  /// Optional information about the security animation.
  ///
  /// If this is set a security animation will be rendered on pass details.
  SecurityAnimation? securityAnimation;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the class. For a pass only ten will be displayed,
  /// prioritizing those from the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  /// View Unlock Requirement options for the loyalty card.
  /// Possible string values are:
  /// - "VIEW_UNLOCK_REQUIREMENT_UNSPECIFIED" : Default value, same as
  /// UNLOCK_NOT_REQUIRED.
  /// - "UNLOCK_NOT_REQUIRED" : Default behavior for all the existing Passes if
  /// ViewUnlockRequirement is not set.
  /// - "UNLOCK_REQUIRED_TO_VIEW" : Requires the user to unlock their device
  /// each time the pass is viewed. If the user removes their device lock after
  /// saving the pass, then they will be prompted to create a device lock before
  /// the pass can be viewed.
  core.String? viewUnlockRequirement;

  /// The wide logo of the loyalty program or company.
  ///
  /// When provided, this will be used in place of the program logo in the top
  /// left of the card view.
  Image? wideProgramLogo;

  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Image? wordMark;

  LoyaltyClass({
    this.accountIdLabel,
    this.accountNameLabel,
    this.allowMultipleUsersPerObject,
    this.appLinkData,
    this.callbackOptions,
    this.classTemplateInfo,
    this.countryCode,
    this.discoverableProgram,
    this.enableSmartTap,
    this.heroImage,
    this.hexBackgroundColor,
    this.homepageUri,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.issuerName,
    this.kind,
    this.linksModuleData,
    this.localizedAccountIdLabel,
    this.localizedAccountNameLabel,
    this.localizedIssuerName,
    this.localizedProgramName,
    this.localizedRewardsTier,
    this.localizedRewardsTierLabel,
    this.localizedSecondaryRewardsTier,
    this.localizedSecondaryRewardsTierLabel,
    this.locations,
    this.merchantLocations,
    this.messages,
    this.multipleDevicesAndHoldersAllowedStatus,
    this.notifyPreference,
    this.programLogo,
    this.programName,
    this.redemptionIssuers,
    this.review,
    this.reviewStatus,
    this.rewardsTier,
    this.rewardsTierLabel,
    this.secondaryRewardsTier,
    this.secondaryRewardsTierLabel,
    this.securityAnimation,
    this.textModulesData,
    this.valueAddedModuleData,
    this.version,
    this.viewUnlockRequirement,
    this.wideProgramLogo,
    this.wordMark,
  });

  LoyaltyClass.fromJson(core.Map json_)
      : this(
          accountIdLabel: json_['accountIdLabel'] as core.String?,
          accountNameLabel: json_['accountNameLabel'] as core.String?,
          allowMultipleUsersPerObject:
              json_['allowMultipleUsersPerObject'] as core.bool?,
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          callbackOptions: json_.containsKey('callbackOptions')
              ? CallbackOptions.fromJson(json_['callbackOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          classTemplateInfo: json_.containsKey('classTemplateInfo')
              ? ClassTemplateInfo.fromJson(json_['classTemplateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          countryCode: json_['countryCode'] as core.String?,
          discoverableProgram: json_.containsKey('discoverableProgram')
              ? DiscoverableProgram.fromJson(json_['discoverableProgram']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enableSmartTap: json_['enableSmartTap'] as core.bool?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          homepageUri: json_.containsKey('homepageUri')
              ? Uri.fromJson(
                  json_['homepageUri'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          issuerName: json_['issuerName'] as core.String?,
          kind: json_['kind'] as core.String?,
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedAccountIdLabel: json_.containsKey('localizedAccountIdLabel')
              ? LocalizedString.fromJson(json_['localizedAccountIdLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedAccountNameLabel:
              json_.containsKey('localizedAccountNameLabel')
                  ? LocalizedString.fromJson(json_['localizedAccountNameLabel']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          localizedIssuerName: json_.containsKey('localizedIssuerName')
              ? LocalizedString.fromJson(json_['localizedIssuerName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedProgramName: json_.containsKey('localizedProgramName')
              ? LocalizedString.fromJson(json_['localizedProgramName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedRewardsTier: json_.containsKey('localizedRewardsTier')
              ? LocalizedString.fromJson(json_['localizedRewardsTier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedRewardsTierLabel:
              json_.containsKey('localizedRewardsTierLabel')
                  ? LocalizedString.fromJson(json_['localizedRewardsTierLabel']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          localizedSecondaryRewardsTier: json_
                  .containsKey('localizedSecondaryRewardsTier')
              ? LocalizedString.fromJson(json_['localizedSecondaryRewardsTier']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedSecondaryRewardsTierLabel:
              json_.containsKey('localizedSecondaryRewardsTierLabel')
                  ? LocalizedString.fromJson(
                      json_['localizedSecondaryRewardsTierLabel']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          multipleDevicesAndHoldersAllowedStatus:
              json_['multipleDevicesAndHoldersAllowedStatus'] as core.String?,
          notifyPreference: json_['notifyPreference'] as core.String?,
          programLogo: json_.containsKey('programLogo')
              ? Image.fromJson(
                  json_['programLogo'] as core.Map<core.String, core.dynamic>)
              : null,
          programName: json_['programName'] as core.String?,
          redemptionIssuers: (json_['redemptionIssuers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          review: json_.containsKey('review')
              ? Review.fromJson(
                  json_['review'] as core.Map<core.String, core.dynamic>)
              : null,
          reviewStatus: json_['reviewStatus'] as core.String?,
          rewardsTier: json_['rewardsTier'] as core.String?,
          rewardsTierLabel: json_['rewardsTierLabel'] as core.String?,
          secondaryRewardsTier: json_['secondaryRewardsTier'] as core.String?,
          secondaryRewardsTierLabel:
              json_['secondaryRewardsTierLabel'] as core.String?,
          securityAnimation: json_.containsKey('securityAnimation')
              ? SecurityAnimation.fromJson(json_['securityAnimation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
          viewUnlockRequirement: json_['viewUnlockRequirement'] as core.String?,
          wideProgramLogo: json_.containsKey('wideProgramLogo')
              ? Image.fromJson(json_['wideProgramLogo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          wordMark: json_.containsKey('wordMark')
              ? Image.fromJson(
                  json_['wordMark'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountIdLabel != null) 'accountIdLabel': accountIdLabel!,
        if (accountNameLabel != null) 'accountNameLabel': accountNameLabel!,
        if (allowMultipleUsersPerObject != null)
          'allowMultipleUsersPerObject': allowMultipleUsersPerObject!,
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (callbackOptions != null) 'callbackOptions': callbackOptions!,
        if (classTemplateInfo != null) 'classTemplateInfo': classTemplateInfo!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (discoverableProgram != null)
          'discoverableProgram': discoverableProgram!,
        if (enableSmartTap != null) 'enableSmartTap': enableSmartTap!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (issuerName != null) 'issuerName': issuerName!,
        if (kind != null) 'kind': kind!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (localizedAccountIdLabel != null)
          'localizedAccountIdLabel': localizedAccountIdLabel!,
        if (localizedAccountNameLabel != null)
          'localizedAccountNameLabel': localizedAccountNameLabel!,
        if (localizedIssuerName != null)
          'localizedIssuerName': localizedIssuerName!,
        if (localizedProgramName != null)
          'localizedProgramName': localizedProgramName!,
        if (localizedRewardsTier != null)
          'localizedRewardsTier': localizedRewardsTier!,
        if (localizedRewardsTierLabel != null)
          'localizedRewardsTierLabel': localizedRewardsTierLabel!,
        if (localizedSecondaryRewardsTier != null)
          'localizedSecondaryRewardsTier': localizedSecondaryRewardsTier!,
        if (localizedSecondaryRewardsTierLabel != null)
          'localizedSecondaryRewardsTierLabel':
              localizedSecondaryRewardsTierLabel!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (multipleDevicesAndHoldersAllowedStatus != null)
          'multipleDevicesAndHoldersAllowedStatus':
              multipleDevicesAndHoldersAllowedStatus!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (programLogo != null) 'programLogo': programLogo!,
        if (programName != null) 'programName': programName!,
        if (redemptionIssuers != null) 'redemptionIssuers': redemptionIssuers!,
        if (review != null) 'review': review!,
        if (reviewStatus != null) 'reviewStatus': reviewStatus!,
        if (rewardsTier != null) 'rewardsTier': rewardsTier!,
        if (rewardsTierLabel != null) 'rewardsTierLabel': rewardsTierLabel!,
        if (secondaryRewardsTier != null)
          'secondaryRewardsTier': secondaryRewardsTier!,
        if (secondaryRewardsTierLabel != null)
          'secondaryRewardsTierLabel': secondaryRewardsTierLabel!,
        if (securityAnimation != null) 'securityAnimation': securityAnimation!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
        if (viewUnlockRequirement != null)
          'viewUnlockRequirement': viewUnlockRequirement!,
        if (wideProgramLogo != null) 'wideProgramLogo': wideProgramLogo!,
        if (wordMark != null) 'wordMark': wordMark!,
      };
}

class LoyaltyClassAddMessageResponse {
  /// The updated LoyaltyClass resource.
  LoyaltyClass? resource;

  LoyaltyClassAddMessageResponse({
    this.resource,
  });

  LoyaltyClassAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? LoyaltyClass.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class LoyaltyClassListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<LoyaltyClass>? resources;

  LoyaltyClassListResponse({
    this.pagination,
    this.resources,
  });

  LoyaltyClassListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => LoyaltyClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class LoyaltyObject {
  /// The loyalty account identifier.
  ///
  /// Recommended maximum length is 20 characters.
  core.String? accountId;

  /// The loyalty account holder name, such as "John Smith." Recommended maximum
  /// length is 20 characters to ensure full string is displayed on smaller
  /// screens.
  core.String? accountName;

  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding class only object
  /// AppLinkData will be displayed.
  AppLinkData? appLinkData;

  /// The barcode type and value.
  Barcode? barcode;

  /// The class associated with this object.
  ///
  /// The class must be of the same type as this object, must already exist, and
  /// must be approved. Class IDs should follow the format issuer ID.identifier
  /// where the former is issued by Google and latter is chosen by you.
  ///
  /// Required.
  core.String? classId;

  /// A copy of the inherited fields of the parent class.
  ///
  /// These fields are retrieved during a GET.
  LoyaltyClass? classReference;

  /// Indicates if notifications should explicitly be suppressed.
  ///
  /// If this field is set to true, regardless of the `messages` field,
  /// expiration notifications to the user will be suppressed. By default, this
  /// field is set to false. Currently, this can only be set for offers.
  core.bool? disableExpirationNotification;

  /// Information that controls how passes are grouped together.
  GroupingInfo? groupingInfo;

  /// Whether this object is currently linked to a single device.
  ///
  /// This field is set by the platform when a user saves the object, linking it
  /// to their device. Intended for use by select partners. Contact support for
  /// additional information.
  core.bool? hasLinkedDevice;

  /// Indicates if the object has users.
  ///
  /// This field is set by the platform.
  core.bool? hasUsers;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, hero image of the class, if present, will be
  /// displayed. If hero image of the class is also not present, nothing will be
  /// displayed.
  Image? heroImage;

  /// The unique identifier for an object.
  ///
  /// This ID must be unique across all objects from an issuer. This value
  /// should follow the format issuer ID.identifier where the former is issued
  /// by Google and latter is chosen by you. The unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  InfoModuleData? infoModuleData;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#loyaltyObject"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// linked_object_ids are a list of other objects such as event ticket,
  /// loyalty, offer, generic, giftcard, transit and boarding pass that should
  /// be automatically attached to this loyalty object.
  ///
  /// If a user had saved this loyalty card, then these linked_object_ids would
  /// be automatically pushed to the user's wallet (unless they turned off the
  /// setting to receive such linked passes). Make sure that objects present in
  /// linked_object_ids are already inserted - if not, calls would fail. Once
  /// linked, the linked objects cannot be unlinked. You cannot link objects
  /// belonging to another issuer. There is a limit to the number of objects
  /// that can be linked to a single object. After the limit is reached, new
  /// linked objects in the call will be ignored silently. Object IDs should
  /// follow the format issuer ID. identifier where the former is issued by
  /// Google and the latter is chosen by you.
  core.List<core.String>? linkedObjectIds;

  /// A list of offer objects linked to this loyalty card.
  ///
  /// The offer objects must already exist. Offer object IDs should follow the
  /// format issuer ID. identifier where the former is issued by Google and
  /// latter is chosen by you.
  core.List<core.String>? linkedOfferIds;

  /// Links module data.
  ///
  /// If links module data is also defined on the class, both will be displayed.
  LinksModuleData? linksModuleData;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// The loyalty reward points label, balance, and type.
  LoyaltyPoints? loyaltyPoints;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the object. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Whether or not field updates to this object should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If set to DO_NOT_NOTIFY or
  /// NOTIFICATION_SETTINGS_UNSPECIFIED, no notification will be triggered. This
  /// setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Pass constraints for the object.
  ///
  /// Includes limiting NFC and screenshot behaviors.
  PassConstraints? passConstraints;

  /// The rotating barcode type and value.
  RotatingBarcode? rotatingBarcode;

  /// Restrictions on the object that needs to be verified before the user tries
  /// to save the pass.
  ///
  /// Note that this restrictions will only be applied during save time. If the
  /// restrictions changed after a user saves the pass, the new restrictions
  /// will not be applied to an already saved pass.
  SaveRestrictions? saveRestrictions;

  /// The secondary loyalty reward points label, balance, and type.
  ///
  /// Shown in addition to the primary loyalty points.
  LoyaltyPoints? secondaryLoyaltyPoints;

  /// The value that will be transmitted to a Smart Tap certified terminal over
  /// NFC for this object.
  ///
  /// The class level fields `enableSmartTap` and `redemptionIssuers` must also
  /// be set up correctly in order for the pass to support Smart Tap. Only ASCII
  /// characters are supported. If this value is not set but the class level
  /// fields `enableSmartTap` and `redemptionIssuers` are set up correctly, the
  /// `barcode.value` or the `accountId` fields are used as fallback if present.
  core.String? smartTapRedemptionValue;

  /// The state of the object.
  ///
  /// This field is used to determine how an object is displayed in the app. For
  /// example, an `inactive` object is moved to the "Expired passes" section.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE" : Object is active and displayed to with other active objects.
  /// - "active" : Legacy alias for `ACTIVE`. Deprecated.
  /// - "COMPLETED"
  /// - "completed" : Legacy alias for `COMPLETED`. Deprecated.
  /// - "EXPIRED" : Object is no longer valid (`validTimeInterval` passed).
  /// - "expired" : Legacy alias for `EXPIRED`. Deprecated.
  /// - "INACTIVE"
  /// - "inactive" : Legacy alias for `INACTIVE`. Deprecated.
  core.String? state;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// The time period this object will be `active` and object can be used.
  ///
  /// An object's state will be changed to `expired` when this time period has
  /// passed.
  TimeInterval? validTimeInterval;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  LoyaltyObject({
    this.accountId,
    this.accountName,
    this.appLinkData,
    this.barcode,
    this.classId,
    this.classReference,
    this.disableExpirationNotification,
    this.groupingInfo,
    this.hasLinkedDevice,
    this.hasUsers,
    this.heroImage,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.kind,
    this.linkedObjectIds,
    this.linkedOfferIds,
    this.linksModuleData,
    this.locations,
    this.loyaltyPoints,
    this.merchantLocations,
    this.messages,
    this.notifyPreference,
    this.passConstraints,
    this.rotatingBarcode,
    this.saveRestrictions,
    this.secondaryLoyaltyPoints,
    this.smartTapRedemptionValue,
    this.state,
    this.textModulesData,
    this.validTimeInterval,
    this.valueAddedModuleData,
    this.version,
  });

  LoyaltyObject.fromJson(core.Map json_)
      : this(
          accountId: json_['accountId'] as core.String?,
          accountName: json_['accountName'] as core.String?,
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          barcode: json_.containsKey('barcode')
              ? Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          classId: json_['classId'] as core.String?,
          classReference: json_.containsKey('classReference')
              ? LoyaltyClass.fromJson(json_['classReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disableExpirationNotification:
              json_['disableExpirationNotification'] as core.bool?,
          groupingInfo: json_.containsKey('groupingInfo')
              ? GroupingInfo.fromJson(
                  json_['groupingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          hasLinkedDevice: json_['hasLinkedDevice'] as core.bool?,
          hasUsers: json_['hasUsers'] as core.bool?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          linkedObjectIds: (json_['linkedObjectIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linkedOfferIds: (json_['linkedOfferIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          loyaltyPoints: json_.containsKey('loyaltyPoints')
              ? LoyaltyPoints.fromJson(
                  json_['loyaltyPoints'] as core.Map<core.String, core.dynamic>)
              : null,
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          notifyPreference: json_['notifyPreference'] as core.String?,
          passConstraints: json_.containsKey('passConstraints')
              ? PassConstraints.fromJson(json_['passConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rotatingBarcode: json_.containsKey('rotatingBarcode')
              ? RotatingBarcode.fromJson(json_['rotatingBarcode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          saveRestrictions: json_.containsKey('saveRestrictions')
              ? SaveRestrictions.fromJson(json_['saveRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondaryLoyaltyPoints: json_.containsKey('secondaryLoyaltyPoints')
              ? LoyaltyPoints.fromJson(json_['secondaryLoyaltyPoints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          smartTapRedemptionValue:
              json_['smartTapRedemptionValue'] as core.String?,
          state: json_['state'] as core.String?,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          validTimeInterval: json_.containsKey('validTimeInterval')
              ? TimeInterval.fromJson(json_['validTimeInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (accountName != null) 'accountName': accountName!,
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (barcode != null) 'barcode': barcode!,
        if (classId != null) 'classId': classId!,
        if (classReference != null) 'classReference': classReference!,
        if (disableExpirationNotification != null)
          'disableExpirationNotification': disableExpirationNotification!,
        if (groupingInfo != null) 'groupingInfo': groupingInfo!,
        if (hasLinkedDevice != null) 'hasLinkedDevice': hasLinkedDevice!,
        if (hasUsers != null) 'hasUsers': hasUsers!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (kind != null) 'kind': kind!,
        if (linkedObjectIds != null) 'linkedObjectIds': linkedObjectIds!,
        if (linkedOfferIds != null) 'linkedOfferIds': linkedOfferIds!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (locations != null) 'locations': locations!,
        if (loyaltyPoints != null) 'loyaltyPoints': loyaltyPoints!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (passConstraints != null) 'passConstraints': passConstraints!,
        if (rotatingBarcode != null) 'rotatingBarcode': rotatingBarcode!,
        if (saveRestrictions != null) 'saveRestrictions': saveRestrictions!,
        if (secondaryLoyaltyPoints != null)
          'secondaryLoyaltyPoints': secondaryLoyaltyPoints!,
        if (smartTapRedemptionValue != null)
          'smartTapRedemptionValue': smartTapRedemptionValue!,
        if (state != null) 'state': state!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (validTimeInterval != null) 'validTimeInterval': validTimeInterval!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
      };
}

class LoyaltyObjectAddMessageResponse {
  /// The updated LoyaltyObject resource.
  LoyaltyObject? resource;

  LoyaltyObjectAddMessageResponse({
    this.resource,
  });

  LoyaltyObjectAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? LoyaltyObject.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class LoyaltyObjectListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<LoyaltyObject>? resources;

  LoyaltyObjectListResponse({
    this.pagination,
    this.resources,
  });

  LoyaltyObjectListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => LoyaltyObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class LoyaltyPoints {
  /// The account holder's loyalty point balance, such as "500" or "$10.00".
  ///
  /// Recommended maximum length is 7 characters. This is a required field of
  /// `loyaltyPoints` and `secondaryLoyaltyPoints`.
  LoyaltyPointsBalance? balance;

  /// The loyalty points label, such as "Points".
  ///
  /// Recommended maximum length is 9 characters.
  core.String? label;

  /// Translated strings for the label.
  ///
  /// Recommended maximum length is 9 characters.
  LocalizedString? localizedLabel;

  LoyaltyPoints({
    this.balance,
    this.label,
    this.localizedLabel,
  });

  LoyaltyPoints.fromJson(core.Map json_)
      : this(
          balance: json_.containsKey('balance')
              ? LoyaltyPointsBalance.fromJson(
                  json_['balance'] as core.Map<core.String, core.dynamic>)
              : null,
          label: json_['label'] as core.String?,
          localizedLabel: json_.containsKey('localizedLabel')
              ? LocalizedString.fromJson(json_['localizedLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (balance != null) 'balance': balance!,
        if (label != null) 'label': label!,
        if (localizedLabel != null) 'localizedLabel': localizedLabel!,
      };
}

class LoyaltyPointsBalance {
  /// The double form of a balance.
  ///
  /// Only one of these subtypes (string, int, double, money) should be
  /// populated.
  core.double? double;

  /// The integer form of a balance.
  ///
  /// Only one of these subtypes (string, int, double, money) should be
  /// populated.
  core.int? int;

  /// The money form of a balance.
  ///
  /// Only one of these subtypes (string, int, double, money) should be
  /// populated.
  Money? money;

  /// The string form of a balance.
  ///
  /// Only one of these subtypes (string, int, double, money) should be
  /// populated.
  core.String? string;

  LoyaltyPointsBalance({
    this.double,
    this.int,
    this.money,
    this.string,
  });

  LoyaltyPointsBalance.fromJson(core.Map json_)
      : this(
          double: (json_['double'] as core.num?)?.toDouble(),
          int: json_['int'] as core.int?,
          money: json_.containsKey('money')
              ? Money.fromJson(
                  json_['money'] as core.Map<core.String, core.dynamic>)
              : null,
          string: json_['string'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (double != null) 'double': double!,
        if (int != null) 'int': int!,
        if (money != null) 'money': money!,
        if (string != null) 'string': string!,
      };
}

/// A reference to data stored on the filesystem, on GFS or in blobstore.
class Media {
  /// Deprecated, use one of explicit hash type fields instead.
  ///
  /// Algorithm used for calculating the hash. As of 2011/01/21, "MD5" is the
  /// only possible value for this field. New values may be added at any time.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? algorithm;

  /// Use object_id instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? bigstoreObjectRef;
  core.List<core.int> get bigstoreObjectRefAsBytes =>
      convert.base64.decode(bigstoreObjectRef!);

  set bigstoreObjectRefAsBytes(core.List<core.int> bytes_) {
    bigstoreObjectRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v1 reference, set if reference_type is BLOBSTORE_REF This should
  /// be the byte representation of a blobstore.BlobRef.
  ///
  /// Since Blobstore is deprecating v1, use blobstore2_info instead. For now,
  /// any v2 blob will also be represented in this field as v1 BlobRef.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? blobRef;
  core.List<core.int> get blobRefAsBytes => convert.base64.decode(blobRef!);

  set blobRefAsBytes(core.List<core.int> bytes_) {
    blobRef =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Blobstore v2 info, set if reference_type is BLOBSTORE_REF and it refers to
  /// a v2 blob.
  Blobstore2Info? blobstore2Info;

  /// A composite media composed of one or more media objects, set if
  /// reference_type is COMPOSITE_MEDIA.
  ///
  /// The media length field must be set to the sum of the lengths of all
  /// composite media objects. Note: All composite media must have length
  /// specified.
  core.List<CompositeMedia>? compositeMedia;

  /// MIME type of the data
  core.String? contentType;

  /// Extended content type information provided for Scotty uploads.
  ContentTypeInfo? contentTypeInfo;

  /// A binary data reference for a media download.
  ///
  /// Serves as a technology-agnostic binary reference in some Google
  /// infrastructure. This value is a serialized storage_cosmo.BinaryReference
  /// proto. Storing it as bytes is a hack to get around the fact that the cosmo
  /// proto (as well as others it includes) doesn't support JavaScript. This
  /// prevents us from including the actual type of this field.
  core.String? cosmoBinaryReference;
  core.List<core.int> get cosmoBinaryReferenceAsBytes =>
      convert.base64.decode(cosmoBinaryReference!);

  set cosmoBinaryReferenceAsBytes(core.List<core.int> bytes_) {
    cosmoBinaryReference =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// For Scotty Uploads: Scotty-provided hashes for uploads For Scotty
  /// Downloads: (WARNING: DO NOT USE WITHOUT PERMISSION FROM THE SCOTTY TEAM.)
  /// A Hash provided by the agent to be used to verify the data being
  /// downloaded.
  ///
  /// Currently only supported for inline payloads. Further, only crc32c_hash is
  /// currently supported.
  core.int? crc32cHash;

  /// Set if reference_type is DIFF_CHECKSUMS_RESPONSE.
  DiffChecksumsResponse? diffChecksumsResponse;

  /// Set if reference_type is DIFF_DOWNLOAD_RESPONSE.
  DiffDownloadResponse? diffDownloadResponse;

  /// Set if reference_type is DIFF_UPLOAD_REQUEST.
  DiffUploadRequest? diffUploadRequest;

  /// Set if reference_type is DIFF_UPLOAD_RESPONSE.
  DiffUploadResponse? diffUploadResponse;

  /// Set if reference_type is DIFF_VERSION_RESPONSE.
  DiffVersionResponse? diffVersionResponse;

  /// Parameters for a media download.
  DownloadParameters? downloadParameters;

  /// Original file name
  core.String? filename;

  /// Deprecated, use one of explicit hash type fields instead.
  ///
  /// These two hash related fields will only be populated on Scotty based media
  /// uploads and will contain the content of the hash group in the
  /// NotificationRequest:
  /// http://cs/#google3/blobstore2/api/scotty/service/proto/upload_listener.proto&q=class:Hash
  /// Hex encoded hash value of the uploaded media.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? hash;

  /// For Scotty uploads only.
  ///
  /// If a user sends a hash code and the backend has requested that Scotty
  /// verify the upload against the client hash, Scotty will perform the check
  /// on behalf of the backend and will reject it if the hashes don't match.
  /// This is set to true if Scotty performed this verification.
  core.bool? hashVerified;

  /// Media data, set if reference_type is INLINE
  core.String? inline;
  core.List<core.int> get inlineAsBytes => convert.base64.decode(inline!);

  set inlineAsBytes(core.List<core.int> bytes_) {
    inline =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// |is_potential_retry| is set false only when Scotty is certain that it has
  /// not sent the request before.
  ///
  /// When a client resumes an upload, this field must be set true in agent
  /// calls, because Scotty cannot be certain that it has never sent the request
  /// before due to potential failure in the session state persistence.
  core.bool? isPotentialRetry;

  /// Size of the data, in bytes
  core.String? length;

  /// Scotty-provided MD5 hash for an upload.
  core.String? md5Hash;
  core.List<core.int> get md5HashAsBytes => convert.base64.decode(md5Hash!);

  set md5HashAsBytes(core.List<core.int> bytes_) {
    md5Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Media id to forward to the operation GetMedia.
  ///
  /// Can be set if reference_type is GET_MEDIA.
  core.String? mediaId;
  core.List<core.int> get mediaIdAsBytes => convert.base64.decode(mediaId!);

  set mediaIdAsBytes(core.List<core.int> bytes_) {
    mediaId =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Reference to a TI Blob, set if reference_type is BIGSTORE_REF.
  ObjectId? objectId;

  /// Path to the data, set if reference_type is PATH
  core.String? path;

  /// Describes what the field reference contains.
  /// Possible string values are:
  /// - "PATH" : Reference contains a GFS path or a local path.
  /// - "BLOB_REF" : Reference points to a blobstore object. This could be
  /// either a v1 blob_ref or a v2 blobstore2_info. Clients should check
  /// blobstore2_info first, since v1 is being deprecated.
  /// - "INLINE" : Data is included into this proto buffer
  /// - "GET_MEDIA" : Data should be accessed from the current service using the
  /// operation GetMedia.
  /// - "COMPOSITE_MEDIA" : The content for this media object is stored across
  /// multiple partial media objects under the composite_media field.
  /// - "BIGSTORE_REF" : Reference points to a bigstore object
  /// - "DIFF_VERSION_RESPONSE" : Indicates the data is stored in
  /// diff_version_response.
  /// - "DIFF_CHECKSUMS_RESPONSE" : Indicates the data is stored in
  /// diff_checksums_response.
  /// - "DIFF_DOWNLOAD_RESPONSE" : Indicates the data is stored in
  /// diff_download_response.
  /// - "DIFF_UPLOAD_REQUEST" : Indicates the data is stored in
  /// diff_upload_request.
  /// - "DIFF_UPLOAD_RESPONSE" : Indicates the data is stored in
  /// diff_upload_response.
  /// - "COSMO_BINARY_REFERENCE" : Indicates the data is stored in
  /// cosmo_binary_reference.
  /// - "ARBITRARY_BYTES" : Informs Scotty to generate a response payload with
  /// the size specified in the length field. The contents of the payload are
  /// generated by Scotty and are undefined. This is useful for testing download
  /// speeds between the user and Scotty without involving a real payload
  /// source. Note: range is not supported when using arbitrary_bytes.
  core.String? referenceType;

  /// Scotty-provided SHA1 hash for an upload.
  core.String? sha1Hash;
  core.List<core.int> get sha1HashAsBytes => convert.base64.decode(sha1Hash!);

  set sha1HashAsBytes(core.List<core.int> bytes_) {
    sha1Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Scotty-provided SHA256 hash for an upload.
  core.String? sha256Hash;
  core.List<core.int> get sha256HashAsBytes =>
      convert.base64.decode(sha256Hash!);

  set sha256HashAsBytes(core.List<core.int> bytes_) {
    sha256Hash =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Time at which the media data was last updated, in milliseconds since UNIX
  /// epoch
  core.String? timestamp;

  /// A unique fingerprint/version id for the media data
  core.String? token;

  Media({
    this.algorithm,
    this.bigstoreObjectRef,
    this.blobRef,
    this.blobstore2Info,
    this.compositeMedia,
    this.contentType,
    this.contentTypeInfo,
    this.cosmoBinaryReference,
    this.crc32cHash,
    this.diffChecksumsResponse,
    this.diffDownloadResponse,
    this.diffUploadRequest,
    this.diffUploadResponse,
    this.diffVersionResponse,
    this.downloadParameters,
    this.filename,
    this.hash,
    this.hashVerified,
    this.inline,
    this.isPotentialRetry,
    this.length,
    this.md5Hash,
    this.mediaId,
    this.objectId,
    this.path,
    this.referenceType,
    this.sha1Hash,
    this.sha256Hash,
    this.timestamp,
    this.token,
  });

  Media.fromJson(core.Map json_)
      : this(
          algorithm: json_['algorithm'] as core.String?,
          bigstoreObjectRef: json_['bigstoreObjectRef'] as core.String?,
          blobRef: json_['blobRef'] as core.String?,
          blobstore2Info: json_.containsKey('blobstore2Info')
              ? Blobstore2Info.fromJson(json_['blobstore2Info']
                  as core.Map<core.String, core.dynamic>)
              : null,
          compositeMedia: (json_['compositeMedia'] as core.List?)
              ?.map((value) => CompositeMedia.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          contentType: json_['contentType'] as core.String?,
          contentTypeInfo: json_.containsKey('contentTypeInfo')
              ? ContentTypeInfo.fromJson(json_['contentTypeInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cosmoBinaryReference: json_['cosmoBinaryReference'] as core.String?,
          crc32cHash: json_['crc32cHash'] as core.int?,
          diffChecksumsResponse: json_.containsKey('diffChecksumsResponse')
              ? DiffChecksumsResponse.fromJson(json_['diffChecksumsResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffDownloadResponse: json_.containsKey('diffDownloadResponse')
              ? DiffDownloadResponse.fromJson(json_['diffDownloadResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffUploadRequest: json_.containsKey('diffUploadRequest')
              ? DiffUploadRequest.fromJson(json_['diffUploadRequest']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffUploadResponse: json_.containsKey('diffUploadResponse')
              ? DiffUploadResponse.fromJson(json_['diffUploadResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          diffVersionResponse: json_.containsKey('diffVersionResponse')
              ? DiffVersionResponse.fromJson(json_['diffVersionResponse']
                  as core.Map<core.String, core.dynamic>)
              : null,
          downloadParameters: json_.containsKey('downloadParameters')
              ? DownloadParameters.fromJson(json_['downloadParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
          filename: json_['filename'] as core.String?,
          hash: json_['hash'] as core.String?,
          hashVerified: json_['hashVerified'] as core.bool?,
          inline: json_['inline'] as core.String?,
          isPotentialRetry: json_['isPotentialRetry'] as core.bool?,
          length: json_['length'] as core.String?,
          md5Hash: json_['md5Hash'] as core.String?,
          mediaId: json_['mediaId'] as core.String?,
          objectId: json_.containsKey('objectId')
              ? ObjectId.fromJson(
                  json_['objectId'] as core.Map<core.String, core.dynamic>)
              : null,
          path: json_['path'] as core.String?,
          referenceType: json_['referenceType'] as core.String?,
          sha1Hash: json_['sha1Hash'] as core.String?,
          sha256Hash: json_['sha256Hash'] as core.String?,
          timestamp: json_['timestamp'] as core.String?,
          token: json_['token'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (bigstoreObjectRef != null) 'bigstoreObjectRef': bigstoreObjectRef!,
        if (blobRef != null) 'blobRef': blobRef!,
        if (blobstore2Info != null) 'blobstore2Info': blobstore2Info!,
        if (compositeMedia != null) 'compositeMedia': compositeMedia!,
        if (contentType != null) 'contentType': contentType!,
        if (contentTypeInfo != null) 'contentTypeInfo': contentTypeInfo!,
        if (cosmoBinaryReference != null)
          'cosmoBinaryReference': cosmoBinaryReference!,
        if (crc32cHash != null) 'crc32cHash': crc32cHash!,
        if (diffChecksumsResponse != null)
          'diffChecksumsResponse': diffChecksumsResponse!,
        if (diffDownloadResponse != null)
          'diffDownloadResponse': diffDownloadResponse!,
        if (diffUploadRequest != null) 'diffUploadRequest': diffUploadRequest!,
        if (diffUploadResponse != null)
          'diffUploadResponse': diffUploadResponse!,
        if (diffVersionResponse != null)
          'diffVersionResponse': diffVersionResponse!,
        if (downloadParameters != null)
          'downloadParameters': downloadParameters!,
        if (filename != null) 'filename': filename!,
        if (hash != null) 'hash': hash!,
        if (hashVerified != null) 'hashVerified': hashVerified!,
        if (inline != null) 'inline': inline!,
        if (isPotentialRetry != null) 'isPotentialRetry': isPotentialRetry!,
        if (length != null) 'length': length!,
        if (md5Hash != null) 'md5Hash': md5Hash!,
        if (mediaId != null) 'mediaId': mediaId!,
        if (objectId != null) 'objectId': objectId!,
        if (path != null) 'path': path!,
        if (referenceType != null) 'referenceType': referenceType!,
        if (sha1Hash != null) 'sha1Hash': sha1Hash!,
        if (sha256Hash != null) 'sha256Hash': sha256Hash!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (token != null) 'token': token!,
      };
}

/// Extra information added to operations that support Scotty media requests.
class MediaRequestInfo {
  /// The number of current bytes uploaded or downloaded.
  core.String? currentBytes;

  /// Data to be copied to backend requests.
  ///
  /// Custom data is returned to Scotty in the agent_state field, which Scotty
  /// will then provide in subsequent upload notifications.
  core.String? customData;

  /// Set if the http request info is diff encoded.
  ///
  /// The value of this field is the version number of the base revision. This
  /// is corresponding to Apiary's mediaDiffObjectVersion
  /// (//depot/google3/java/com/google/api/server/media/variable/DiffObjectVersionVariable.java).
  /// See go/esf-scotty-diff-upload for more information.
  core.String? diffObjectVersion;

  /// The existence of the final_status field indicates that this is the last
  /// call to the agent for this request_id.
  ///
  /// http://google3/uploader/agent/scotty_agent.proto?l=737&rcl=347601929
  core.int? finalStatus;

  /// The type of notification received from Scotty.
  /// Possible string values are:
  /// - "START" : Such requests signals the start of a request containing media
  /// upload. Only the media field(s) in the inserted/updated resource are set.
  /// The response should either return an error or succeed. On success,
  /// responses don't need to contain anything.
  /// - "PROGRESS" : Such requests signals that the upload has progressed and
  /// that the backend might want to access the media file specified in relevant
  /// fields in the resource. Only the media field(s) in the inserted/updated
  /// resource are set. The response should either return an error or succeed.
  /// On success, responses don't need to contain anything.
  /// - "END" : Such requests signals the end of a request containing media
  /// upload. END should be handled just like normal Insert/Upload requests,
  /// that is, they should process the request and return a complete resource in
  /// the response. Pointers to media data (a GFS path usually) appear in the
  /// relevant fields in the inserted/updated resource. See gdata.Media in
  /// data.proto.
  /// - "RESPONSE_SENT" : Such requests occur after an END and signal that the
  /// response has been sent back to the client. RESPONSE_SENT is only sent to
  /// the backend if it is configured to receive them. The response does not
  /// need to contain anything.
  /// - "ERROR" : Such requests indicate that an error occurred while processing
  /// the request. ERROR is only sent to the backend if it is configured to
  /// receive them. It is not guaranteed that all errors will result in this
  /// notification to the backend, even if the backend requests them. Since
  /// these requests are just for informational purposes, the response does not
  /// need to contain anything.
  core.String? notificationType;

  /// The Scotty request ID.
  core.String? requestId;

  /// The partition of the Scotty server handling this request.
  ///
  /// type is uploader_service.RequestReceivedParamsServingInfo
  /// LINT.IfChange(request_received_params_serving_info_annotations)
  /// LINT.ThenChange()
  core.String? requestReceivedParamsServingInfo;
  core.List<core.int> get requestReceivedParamsServingInfoAsBytes =>
      convert.base64.decode(requestReceivedParamsServingInfo!);

  set requestReceivedParamsServingInfoAsBytes(core.List<core.int> bytes_) {
    requestReceivedParamsServingInfo =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The total size of the file.
  core.String? totalBytes;

  /// Whether the total bytes field contains an estimated data.
  core.bool? totalBytesIsEstimated;

  MediaRequestInfo({
    this.currentBytes,
    this.customData,
    this.diffObjectVersion,
    this.finalStatus,
    this.notificationType,
    this.requestId,
    this.requestReceivedParamsServingInfo,
    this.totalBytes,
    this.totalBytesIsEstimated,
  });

  MediaRequestInfo.fromJson(core.Map json_)
      : this(
          currentBytes: json_['currentBytes'] as core.String?,
          customData: json_['customData'] as core.String?,
          diffObjectVersion: json_['diffObjectVersion'] as core.String?,
          finalStatus: json_['finalStatus'] as core.int?,
          notificationType: json_['notificationType'] as core.String?,
          requestId: json_['requestId'] as core.String?,
          requestReceivedParamsServingInfo:
              json_['requestReceivedParamsServingInfo'] as core.String?,
          totalBytes: json_['totalBytes'] as core.String?,
          totalBytesIsEstimated: json_['totalBytesIsEstimated'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentBytes != null) 'currentBytes': currentBytes!,
        if (customData != null) 'customData': customData!,
        if (diffObjectVersion != null) 'diffObjectVersion': diffObjectVersion!,
        if (finalStatus != null) 'finalStatus': finalStatus!,
        if (notificationType != null) 'notificationType': notificationType!,
        if (requestId != null) 'requestId': requestId!,
        if (requestReceivedParamsServingInfo != null)
          'requestReceivedParamsServingInfo': requestReceivedParamsServingInfo!,
        if (totalBytes != null) 'totalBytes': totalBytes!,
        if (totalBytesIsEstimated != null)
          'totalBytesIsEstimated': totalBytesIsEstimated!,
      };
}

/// Locations of interest for this class or object.
///
/// Currently, this location is used for geofenced notifications. When a user is
/// within a set radius of this lat/long, and dwells there, Google will trigger
/// a notification. When a user exits this radius, the notification will be
/// hidden.
class MerchantLocation {
  /// The latitude specified as any value in the range of -90.0 through +90.0,
  /// both inclusive.
  ///
  /// Values outside these bounds will be rejected.
  core.double? latitude;

  /// The longitude specified in the range -180.0 through +180.0, both
  /// inclusive.
  ///
  /// Values outside these bounds will be rejected.
  core.double? longitude;

  MerchantLocation({
    this.latitude,
    this.longitude,
  });

  MerchantLocation.fromJson(core.Map json_)
      : this(
          latitude: (json_['latitude'] as core.num?)?.toDouble(),
          longitude: (json_['longitude'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latitude != null) 'latitude': latitude!,
        if (longitude != null) 'longitude': longitude!,
      };
}

/// A message that will be displayed with a Valuable
class Message {
  /// The message body.
  core.String? body;

  /// The period of time that the message will be displayed to users.
  ///
  /// You can define both a `startTime` and `endTime` for each message. A
  /// message is displayed immediately after a Wallet Object is inserted unless
  /// a `startTime` is set. The message will appear in a list of messages
  /// indefinitely if `endTime` is not provided.
  TimeInterval? displayInterval;

  /// The message header.
  core.String? header;

  /// The ID associated with a message.
  ///
  /// This field is here to enable ease of management of messages. Notice ID
  /// values could possibly duplicate across multiple messages in the same
  /// class/instance, and care must be taken to select a reasonable ID for each
  /// message.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#walletObjectMessage"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Translated strings for the message body.
  LocalizedString? localizedBody;

  /// Translated strings for the message header.
  LocalizedString? localizedHeader;

  /// The message type.
  /// Possible string values are:
  /// - "MESSAGE_TYPE_UNSPECIFIED"
  /// - "TEXT" : Renders the message as text on the card details screen. This is
  /// the default message type.
  /// - "text" : Legacy alias for `TEXT`. Deprecated.
  /// - "EXPIRATION_NOTIFICATION" : Note: This enum is currently not supported.
  /// - "expirationNotification" : Legacy alias for `EXPIRATION_NOTIFICATION`.
  /// Deprecated.
  /// - "TEXT_AND_NOTIFY" : Renders the message as text on the card details
  /// screen and as an Android notification.
  core.String? messageType;

  Message({
    this.body,
    this.displayInterval,
    this.header,
    this.id,
    this.kind,
    this.localizedBody,
    this.localizedHeader,
    this.messageType,
  });

  Message.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
          displayInterval: json_.containsKey('displayInterval')
              ? TimeInterval.fromJson(json_['displayInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
          header: json_['header'] as core.String?,
          id: json_['id'] as core.String?,
          kind: json_['kind'] as core.String?,
          localizedBody: json_.containsKey('localizedBody')
              ? LocalizedString.fromJson(
                  json_['localizedBody'] as core.Map<core.String, core.dynamic>)
              : null,
          localizedHeader: json_.containsKey('localizedHeader')
              ? LocalizedString.fromJson(json_['localizedHeader']
                  as core.Map<core.String, core.dynamic>)
              : null,
          messageType: json_['messageType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (displayInterval != null) 'displayInterval': displayInterval!,
        if (header != null) 'header': header!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (localizedBody != null) 'localizedBody': localizedBody!,
        if (localizedHeader != null) 'localizedHeader': localizedHeader!,
        if (messageType != null) 'messageType': messageType!,
      };
}

class ModifyLinkedOfferObjects {
  /// The linked offer object ids to add to the object.
  core.List<core.String>? addLinkedOfferObjectIds;

  /// The linked offer object ids to remove from the object.
  core.List<core.String>? removeLinkedOfferObjectIds;

  ModifyLinkedOfferObjects({
    this.addLinkedOfferObjectIds,
    this.removeLinkedOfferObjectIds,
  });

  ModifyLinkedOfferObjects.fromJson(core.Map json_)
      : this(
          addLinkedOfferObjectIds:
              (json_['addLinkedOfferObjectIds'] as core.List?)
                  ?.map((value) => value as core.String)
                  .toList(),
          removeLinkedOfferObjectIds:
              (json_['removeLinkedOfferObjectIds'] as core.List?)
                  ?.map((value) => value as core.String)
                  .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addLinkedOfferObjectIds != null)
          'addLinkedOfferObjectIds': addLinkedOfferObjectIds!,
        if (removeLinkedOfferObjectIds != null)
          'removeLinkedOfferObjectIds': removeLinkedOfferObjectIds!,
      };
}

class ModifyLinkedOfferObjectsRequest {
  /// The linked offer object ids to add or remove from the object.
  ModifyLinkedOfferObjects? linkedOfferObjectIds;

  ModifyLinkedOfferObjectsRequest({
    this.linkedOfferObjectIds,
  });

  ModifyLinkedOfferObjectsRequest.fromJson(core.Map json_)
      : this(
          linkedOfferObjectIds: json_.containsKey('linkedOfferObjectIds')
              ? ModifyLinkedOfferObjects.fromJson(json_['linkedOfferObjectIds']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (linkedOfferObjectIds != null)
          'linkedOfferObjectIds': linkedOfferObjectIds!,
      };
}

/// Constraints that all must be met for the module to be shown.
class ModuleViewConstraints {
  /// The period of time that the module will be displayed to users.
  ///
  /// Can define both a `startTime` and `endTime`. The module is displayed
  /// immediately after insertion unless a `startTime` is set. The module is
  /// displayed indefinitely if `endTime` is not set.
  TimeInterval? displayInterval;

  ModuleViewConstraints({
    this.displayInterval,
  });

  ModuleViewConstraints.fromJson(core.Map json_)
      : this(
          displayInterval: json_.containsKey('displayInterval')
              ? TimeInterval.fromJson(json_['displayInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayInterval != null) 'displayInterval': displayInterval!,
      };
}

class Money {
  /// The currency code, such as "USD" or "EUR."
  core.String? currencyCode;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#money"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// The unit of money amount in micros.
  ///
  /// For example, $1 USD would be represented as 1000000 micros.
  core.String? micros;

  Money({
    this.currencyCode,
    this.kind,
    this.micros,
  });

  Money.fromJson(core.Map json_)
      : this(
          currencyCode: json_['currencyCode'] as core.String?,
          kind: json_['kind'] as core.String?,
          micros: json_['micros'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (kind != null) 'kind': kind!,
        if (micros != null) 'micros': micros!,
      };
}

/// Indicates if the object needs to have notification enabled.
///
/// We support only one of ExpiryNotification/UpcomingNotification.
/// `expiryNotification` takes precedence over `upcomingNotification`. In other
/// words if `expiryNotification` is set, we ignore the `upcomingNotification`
/// field.
class Notifications {
  /// A notification would be triggered at a specific time before the card
  /// expires.
  ExpiryNotification? expiryNotification;

  /// A notification would be triggered at a specific time before the card
  /// becomes usable.
  UpcomingNotification? upcomingNotification;

  Notifications({
    this.expiryNotification,
    this.upcomingNotification,
  });

  Notifications.fromJson(core.Map json_)
      : this(
          expiryNotification: json_.containsKey('expiryNotification')
              ? ExpiryNotification.fromJson(json_['expiryNotification']
                  as core.Map<core.String, core.dynamic>)
              : null,
          upcomingNotification: json_.containsKey('upcomingNotification')
              ? UpcomingNotification.fromJson(json_['upcomingNotification']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expiryNotification != null)
          'expiryNotification': expiryNotification!,
        if (upcomingNotification != null)
          'upcomingNotification': upcomingNotification!,
      };
}

/// This is a copy of the tech.blob.ObjectId proto, which could not be used
/// directly here due to transitive closure issues with JavaScript support; see
/// http://b/8801763.
typedef ObjectId = $ObjectId;

class OfferClass {
  /// Use `multipleDevicesAndHoldersAllowedStatus` instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? allowMultipleUsersPerObject;

  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding object that will be used
  /// instead.
  AppLinkData? appLinkData;

  /// Callback options to be used to call the issuer back for every save/delete
  /// of an object for this class by the end-user.
  ///
  /// All objects of this class are eligible for the callback.
  CallbackOptions? callbackOptions;

  /// Template information about how the class should be displayed.
  ///
  /// If unset, Google will fallback to a default set of fields to display.
  ClassTemplateInfo? classTemplateInfo;

  /// Country code used to display the card's country (when the user is not in
  /// that country), as well as to display localized content when content is not
  /// available in the user's locale.
  core.String? countryCode;

  /// The details of the offer.
  core.String? details;

  /// Identifies whether this class supports Smart Tap.
  ///
  /// The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields
  /// must also be set up correctly in order for a pass to support Smart Tap.
  core.bool? enableSmartTap;

  /// The fine print or terms of the offer, such as "20% off any t-shirt at
  /// Adam's Apparel."
  core.String? finePrint;

  /// The help link for the offer, such as `http://myownpersonaldomain.com/help`
  Uri? helpUri;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, nothing will be displayed. The image will display at
  /// 100% width.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The URI of your application's home page.
  ///
  /// Populating the URI in this field results in the exact same behavior as
  /// populating an URI in linksModuleData (when an object is rendered, a link
  /// to the homepage is shown in what would usually be thought of as the
  /// linksModuleData section of the object).
  Uri? homepageUri;

  /// The unique identifier for a class.
  ///
  /// This ID must be unique across all classes from an issuer. This value
  /// should follow the format issuer ID. identifier where the former is issued
  /// by Google and latter is chosen by you. Your unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  InfoModuleData? infoModuleData;

  /// The issuer name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  ///
  /// Required.
  core.String? issuerName;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#offerClass"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Links module data.
  ///
  /// If links module data is also defined on the object, both will be
  /// displayed.
  LinksModuleData? linksModuleData;

  /// Translated strings for the details.
  LocalizedString? localizedDetails;

  /// Translated strings for the fine_print.
  LocalizedString? localizedFinePrint;

  /// Translated strings for the issuer_name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedIssuerName;

  /// Translated strings for the provider.
  ///
  /// Recommended maximum length is 12 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedProvider;

  /// Translated strings for the short title.
  ///
  /// Recommended maximum length is 20 characters.
  LocalizedString? localizedShortTitle;

  /// Translated strings for the title.
  ///
  /// Recommended maximum length is 60 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedTitle;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the class. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Identifies whether multiple users and devices will save the same object
  /// referencing this class.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified preference.
  /// - "MULTIPLE_HOLDERS" : The Pass object is shareable by a user and can be
  /// saved by any number of different users, and on any number of devices.
  /// Partners typically use this setup for passes that do not need to be
  /// restricted to a single user or pinned to a single device.
  /// - "ONE_USER_ALL_DEVICES" : An object can only be saved by one user, but
  /// this user can view and use it on multiple of their devices. Once the first
  /// user saves the object, no other user will be allowed to view or save it.
  /// - "ONE_USER_ONE_DEVICE" : An object can only be saved by one user on a
  /// single device. Intended for use by select partners in limited
  /// circumstances. An example use case is a transit ticket that should be
  /// "device pinned", meaning it can be saved, viewed and used only by a single
  /// user on a single device. Contact support for additional information.
  /// - "multipleHolders" : Legacy alias for `MULTIPLE_HOLDERS`. Deprecated.
  /// - "oneUserAllDevices" : Legacy alias for `ONE_USER_ALL_DEVICES`.
  /// Deprecated.
  /// - "oneUserOneDevice" : Legacy alias for `ONE_USER_ONE_DEVICE`. Deprecated.
  core.String? multipleDevicesAndHoldersAllowedStatus;

  /// Whether or not field updates to this class should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If not specified, no notification will be triggered.
  /// This setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// The offer provider (either the aggregator name or merchant name).
  ///
  /// Recommended maximum length is 12 characters to ensure full string is
  /// displayed on smaller screens.
  ///
  /// Required.
  core.String? provider;

  /// The redemption channels applicable to this offer.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REDEMPTION_CHANNEL_UNSPECIFIED"
  /// - "INSTORE"
  /// - "instore" : Legacy alias for `INSTORE`. Deprecated.
  /// - "ONLINE"
  /// - "online" : Legacy alias for `ONLINE`. Deprecated.
  /// - "BOTH"
  /// - "both" : Legacy alias for `BOTH`. Deprecated.
  /// - "TEMPORARY_PRICE_REDUCTION"
  /// - "temporaryPriceReduction" : Legacy alias for
  /// `TEMPORARY_PRICE_REDUCTION`. Deprecated.
  core.String? redemptionChannel;

  /// Identifies which redemption issuers can redeem the pass over Smart Tap.
  ///
  /// Redemption issuers are identified by their issuer ID. Redemption issuers
  /// must have at least one Smart Tap key configured. The `enableSmartTap` and
  /// object level `smartTapRedemptionLevel` fields must also be set up
  /// correctly in order for a pass to support Smart Tap.
  core.List<core.String>? redemptionIssuers;

  /// The review comments set by the platform when a class is marked `approved`
  /// or `rejected`.
  Review? review;

  /// The status of the class.
  ///
  /// This field can be set to `draft` or The status of the class. This field
  /// can be set to `draft` or `underReview` using the insert, patch, or update
  /// API calls. Once the review state is changed from `draft` it may not be
  /// changed back to `draft`. You should keep this field to `draft` when the
  /// class is under development. A `draft` class cannot be used to create any
  /// object. You should set this field to `underReview` when you believe the
  /// class is ready for use. The platform will automatically set this field to
  /// `approved` and it can be immediately used to create or migrate objects.
  /// When updating an already `approved` class you should keep setting this
  /// field to `underReview`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED"
  /// - "UNDER_REVIEW"
  /// - "underReview" : Legacy alias for `UNDER_REVIEW`. Deprecated.
  /// - "APPROVED"
  /// - "approved" : Legacy alias for `APPROVED`. Deprecated.
  /// - "REJECTED"
  /// - "rejected" : Legacy alias for `REJECTED`. Deprecated.
  /// - "DRAFT"
  /// - "draft" : Legacy alias for `DRAFT`. Deprecated.
  core.String? reviewStatus;

  /// Optional information about the security animation.
  ///
  /// If this is set a security animation will be rendered on pass details.
  SecurityAnimation? securityAnimation;

  /// A shortened version of the title of the offer, such as "20% off," shown to
  /// users as a quick reference to the offer contents.
  ///
  /// Recommended maximum length is 20 characters.
  core.String? shortTitle;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// The title of the offer, such as "20% off any t-shirt." Recommended maximum
  /// length is 60 characters to ensure full string is displayed on smaller
  /// screens.
  ///
  /// Required.
  core.String? title;

  /// The title image of the offer.
  ///
  /// This image is displayed in both the details and list views of the app.
  Image? titleImage;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the class. For a pass only ten will be displayed,
  /// prioritizing those from the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  /// View Unlock Requirement options for the offer.
  /// Possible string values are:
  /// - "VIEW_UNLOCK_REQUIREMENT_UNSPECIFIED" : Default value, same as
  /// UNLOCK_NOT_REQUIRED.
  /// - "UNLOCK_NOT_REQUIRED" : Default behavior for all the existing Passes if
  /// ViewUnlockRequirement is not set.
  /// - "UNLOCK_REQUIRED_TO_VIEW" : Requires the user to unlock their device
  /// each time the pass is viewed. If the user removes their device lock after
  /// saving the pass, then they will be prompted to create a device lock before
  /// the pass can be viewed.
  core.String? viewUnlockRequirement;

  /// The wide title image of the offer.
  ///
  /// When provided, this will be used in place of the title image in the top
  /// left of the card view.
  Image? wideTitleImage;

  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Image? wordMark;

  OfferClass({
    this.allowMultipleUsersPerObject,
    this.appLinkData,
    this.callbackOptions,
    this.classTemplateInfo,
    this.countryCode,
    this.details,
    this.enableSmartTap,
    this.finePrint,
    this.helpUri,
    this.heroImage,
    this.hexBackgroundColor,
    this.homepageUri,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.issuerName,
    this.kind,
    this.linksModuleData,
    this.localizedDetails,
    this.localizedFinePrint,
    this.localizedIssuerName,
    this.localizedProvider,
    this.localizedShortTitle,
    this.localizedTitle,
    this.locations,
    this.merchantLocations,
    this.messages,
    this.multipleDevicesAndHoldersAllowedStatus,
    this.notifyPreference,
    this.provider,
    this.redemptionChannel,
    this.redemptionIssuers,
    this.review,
    this.reviewStatus,
    this.securityAnimation,
    this.shortTitle,
    this.textModulesData,
    this.title,
    this.titleImage,
    this.valueAddedModuleData,
    this.version,
    this.viewUnlockRequirement,
    this.wideTitleImage,
    this.wordMark,
  });

  OfferClass.fromJson(core.Map json_)
      : this(
          allowMultipleUsersPerObject:
              json_['allowMultipleUsersPerObject'] as core.bool?,
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          callbackOptions: json_.containsKey('callbackOptions')
              ? CallbackOptions.fromJson(json_['callbackOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          classTemplateInfo: json_.containsKey('classTemplateInfo')
              ? ClassTemplateInfo.fromJson(json_['classTemplateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          countryCode: json_['countryCode'] as core.String?,
          details: json_['details'] as core.String?,
          enableSmartTap: json_['enableSmartTap'] as core.bool?,
          finePrint: json_['finePrint'] as core.String?,
          helpUri: json_.containsKey('helpUri')
              ? Uri.fromJson(
                  json_['helpUri'] as core.Map<core.String, core.dynamic>)
              : null,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          homepageUri: json_.containsKey('homepageUri')
              ? Uri.fromJson(
                  json_['homepageUri'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          issuerName: json_['issuerName'] as core.String?,
          kind: json_['kind'] as core.String?,
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedDetails: json_.containsKey('localizedDetails')
              ? LocalizedString.fromJson(json_['localizedDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedFinePrint: json_.containsKey('localizedFinePrint')
              ? LocalizedString.fromJson(json_['localizedFinePrint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedIssuerName: json_.containsKey('localizedIssuerName')
              ? LocalizedString.fromJson(json_['localizedIssuerName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedProvider: json_.containsKey('localizedProvider')
              ? LocalizedString.fromJson(json_['localizedProvider']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedShortTitle: json_.containsKey('localizedShortTitle')
              ? LocalizedString.fromJson(json_['localizedShortTitle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedTitle: json_.containsKey('localizedTitle')
              ? LocalizedString.fromJson(json_['localizedTitle']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          multipleDevicesAndHoldersAllowedStatus:
              json_['multipleDevicesAndHoldersAllowedStatus'] as core.String?,
          notifyPreference: json_['notifyPreference'] as core.String?,
          provider: json_['provider'] as core.String?,
          redemptionChannel: json_['redemptionChannel'] as core.String?,
          redemptionIssuers: (json_['redemptionIssuers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          review: json_.containsKey('review')
              ? Review.fromJson(
                  json_['review'] as core.Map<core.String, core.dynamic>)
              : null,
          reviewStatus: json_['reviewStatus'] as core.String?,
          securityAnimation: json_.containsKey('securityAnimation')
              ? SecurityAnimation.fromJson(json_['securityAnimation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          shortTitle: json_['shortTitle'] as core.String?,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          title: json_['title'] as core.String?,
          titleImage: json_.containsKey('titleImage')
              ? Image.fromJson(
                  json_['titleImage'] as core.Map<core.String, core.dynamic>)
              : null,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
          viewUnlockRequirement: json_['viewUnlockRequirement'] as core.String?,
          wideTitleImage: json_.containsKey('wideTitleImage')
              ? Image.fromJson(json_['wideTitleImage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          wordMark: json_.containsKey('wordMark')
              ? Image.fromJson(
                  json_['wordMark'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowMultipleUsersPerObject != null)
          'allowMultipleUsersPerObject': allowMultipleUsersPerObject!,
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (callbackOptions != null) 'callbackOptions': callbackOptions!,
        if (classTemplateInfo != null) 'classTemplateInfo': classTemplateInfo!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (details != null) 'details': details!,
        if (enableSmartTap != null) 'enableSmartTap': enableSmartTap!,
        if (finePrint != null) 'finePrint': finePrint!,
        if (helpUri != null) 'helpUri': helpUri!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (issuerName != null) 'issuerName': issuerName!,
        if (kind != null) 'kind': kind!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (localizedDetails != null) 'localizedDetails': localizedDetails!,
        if (localizedFinePrint != null)
          'localizedFinePrint': localizedFinePrint!,
        if (localizedIssuerName != null)
          'localizedIssuerName': localizedIssuerName!,
        if (localizedProvider != null) 'localizedProvider': localizedProvider!,
        if (localizedShortTitle != null)
          'localizedShortTitle': localizedShortTitle!,
        if (localizedTitle != null) 'localizedTitle': localizedTitle!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (multipleDevicesAndHoldersAllowedStatus != null)
          'multipleDevicesAndHoldersAllowedStatus':
              multipleDevicesAndHoldersAllowedStatus!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (provider != null) 'provider': provider!,
        if (redemptionChannel != null) 'redemptionChannel': redemptionChannel!,
        if (redemptionIssuers != null) 'redemptionIssuers': redemptionIssuers!,
        if (review != null) 'review': review!,
        if (reviewStatus != null) 'reviewStatus': reviewStatus!,
        if (securityAnimation != null) 'securityAnimation': securityAnimation!,
        if (shortTitle != null) 'shortTitle': shortTitle!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (title != null) 'title': title!,
        if (titleImage != null) 'titleImage': titleImage!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
        if (viewUnlockRequirement != null)
          'viewUnlockRequirement': viewUnlockRequirement!,
        if (wideTitleImage != null) 'wideTitleImage': wideTitleImage!,
        if (wordMark != null) 'wordMark': wordMark!,
      };
}

class OfferClassAddMessageResponse {
  /// The updated OfferClass resource.
  OfferClass? resource;

  OfferClassAddMessageResponse({
    this.resource,
  });

  OfferClassAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? OfferClass.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class OfferClassListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<OfferClass>? resources;

  OfferClassListResponse({
    this.pagination,
    this.resources,
  });

  OfferClassListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => OfferClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class OfferObject {
  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding class only object
  /// AppLinkData will be displayed.
  AppLinkData? appLinkData;

  /// The barcode type and value.
  Barcode? barcode;

  /// The class associated with this object.
  ///
  /// The class must be of the same type as this object, must already exist, and
  /// must be approved. Class IDs should follow the format issuer ID.identifier
  /// where the former is issued by Google and latter is chosen by you.
  ///
  /// Required.
  core.String? classId;

  /// A copy of the inherited fields of the parent class.
  ///
  /// These fields are retrieved during a GET.
  OfferClass? classReference;

  /// Indicates if notifications should explicitly be suppressed.
  ///
  /// If this field is set to true, regardless of the `messages` field,
  /// expiration notifications to the user will be suppressed. By default, this
  /// field is set to false. Currently, this can only be set for offers.
  core.bool? disableExpirationNotification;

  /// Information that controls how passes are grouped together.
  GroupingInfo? groupingInfo;

  /// Whether this object is currently linked to a single device.
  ///
  /// This field is set by the platform when a user saves the object, linking it
  /// to their device. Intended for use by select partners. Contact support for
  /// additional information.
  core.bool? hasLinkedDevice;

  /// Indicates if the object has users.
  ///
  /// This field is set by the platform.
  core.bool? hasUsers;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, hero image of the class, if present, will be
  /// displayed. If hero image of the class is also not present, nothing will be
  /// displayed.
  Image? heroImage;

  /// The unique identifier for an object.
  ///
  /// This ID must be unique across all objects from an issuer. This value
  /// should follow the format issuer ID.identifier where the former is issued
  /// by Google and latter is chosen by you. The unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  InfoModuleData? infoModuleData;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#offerObject"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// linked_object_ids are a list of other objects such as event ticket,
  /// loyalty, offer, generic, giftcard, transit and boarding pass that should
  /// be automatically attached to this offer object.
  ///
  /// If a user had saved this offer, then these linked_object_ids would be
  /// automatically pushed to the user's wallet (unless they turned off the
  /// setting to receive such linked passes). Make sure that objects present in
  /// linked_object_ids are already inserted - if not, calls would fail. Once
  /// linked, the linked objects cannot be unlinked. You cannot link objects
  /// belonging to another issuer. There is a limit to the number of objects
  /// that can be linked to a single object. After the limit is reached, new
  /// linked objects in the call will be ignored silently. Object IDs should
  /// follow the format issuer ID.identifier where the former is issued by
  /// Google and the latter is chosen by you.
  core.List<core.String>? linkedObjectIds;

  /// Links module data.
  ///
  /// If links module data is also defined on the class, both will be displayed.
  LinksModuleData? linksModuleData;

  /// Note: This field is currently not supported to trigger geo notifications.
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the object. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Whether or not field updates to this object should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If set to DO_NOT_NOTIFY or
  /// NOTIFICATION_SETTINGS_UNSPECIFIED, no notification will be triggered. This
  /// setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Pass constraints for the object.
  ///
  /// Includes limiting NFC and screenshot behaviors.
  PassConstraints? passConstraints;

  /// The rotating barcode type and value.
  RotatingBarcode? rotatingBarcode;

  /// Restrictions on the object that needs to be verified before the user tries
  /// to save the pass.
  ///
  /// Note that this restrictions will only be applied during save time. If the
  /// restrictions changed after a user saves the pass, the new restrictions
  /// will not be applied to an already saved pass.
  SaveRestrictions? saveRestrictions;

  /// The value that will be transmitted to a Smart Tap certified terminal over
  /// NFC for this object.
  ///
  /// The class level fields `enableSmartTap` and `redemptionIssuers` must also
  /// be set up correctly in order for the pass to support Smart Tap. Only ASCII
  /// characters are supported.
  core.String? smartTapRedemptionValue;

  /// The state of the object.
  ///
  /// This field is used to determine how an object is displayed in the app. For
  /// example, an `inactive` object is moved to the "Expired passes" section.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE" : Object is active and displayed to with other active objects.
  /// - "active" : Legacy alias for `ACTIVE`. Deprecated.
  /// - "COMPLETED"
  /// - "completed" : Legacy alias for `COMPLETED`. Deprecated.
  /// - "EXPIRED" : Object is no longer valid (`validTimeInterval` passed).
  /// - "expired" : Legacy alias for `EXPIRED`. Deprecated.
  /// - "INACTIVE"
  /// - "inactive" : Legacy alias for `INACTIVE`. Deprecated.
  core.String? state;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// The time period this object will be `active` and object can be used.
  ///
  /// An object's state will be changed to `expired` when this time period has
  /// passed.
  TimeInterval? validTimeInterval;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  OfferObject({
    this.appLinkData,
    this.barcode,
    this.classId,
    this.classReference,
    this.disableExpirationNotification,
    this.groupingInfo,
    this.hasLinkedDevice,
    this.hasUsers,
    this.heroImage,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.kind,
    this.linkedObjectIds,
    this.linksModuleData,
    this.locations,
    this.merchantLocations,
    this.messages,
    this.notifyPreference,
    this.passConstraints,
    this.rotatingBarcode,
    this.saveRestrictions,
    this.smartTapRedemptionValue,
    this.state,
    this.textModulesData,
    this.validTimeInterval,
    this.valueAddedModuleData,
    this.version,
  });

  OfferObject.fromJson(core.Map json_)
      : this(
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          barcode: json_.containsKey('barcode')
              ? Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          classId: json_['classId'] as core.String?,
          classReference: json_.containsKey('classReference')
              ? OfferClass.fromJson(json_['classReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          disableExpirationNotification:
              json_['disableExpirationNotification'] as core.bool?,
          groupingInfo: json_.containsKey('groupingInfo')
              ? GroupingInfo.fromJson(
                  json_['groupingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          hasLinkedDevice: json_['hasLinkedDevice'] as core.bool?,
          hasUsers: json_['hasUsers'] as core.bool?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          linkedObjectIds: (json_['linkedObjectIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          notifyPreference: json_['notifyPreference'] as core.String?,
          passConstraints: json_.containsKey('passConstraints')
              ? PassConstraints.fromJson(json_['passConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rotatingBarcode: json_.containsKey('rotatingBarcode')
              ? RotatingBarcode.fromJson(json_['rotatingBarcode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          saveRestrictions: json_.containsKey('saveRestrictions')
              ? SaveRestrictions.fromJson(json_['saveRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          smartTapRedemptionValue:
              json_['smartTapRedemptionValue'] as core.String?,
          state: json_['state'] as core.String?,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          validTimeInterval: json_.containsKey('validTimeInterval')
              ? TimeInterval.fromJson(json_['validTimeInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (barcode != null) 'barcode': barcode!,
        if (classId != null) 'classId': classId!,
        if (classReference != null) 'classReference': classReference!,
        if (disableExpirationNotification != null)
          'disableExpirationNotification': disableExpirationNotification!,
        if (groupingInfo != null) 'groupingInfo': groupingInfo!,
        if (hasLinkedDevice != null) 'hasLinkedDevice': hasLinkedDevice!,
        if (hasUsers != null) 'hasUsers': hasUsers!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (kind != null) 'kind': kind!,
        if (linkedObjectIds != null) 'linkedObjectIds': linkedObjectIds!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (passConstraints != null) 'passConstraints': passConstraints!,
        if (rotatingBarcode != null) 'rotatingBarcode': rotatingBarcode!,
        if (saveRestrictions != null) 'saveRestrictions': saveRestrictions!,
        if (smartTapRedemptionValue != null)
          'smartTapRedemptionValue': smartTapRedemptionValue!,
        if (state != null) 'state': state!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (validTimeInterval != null) 'validTimeInterval': validTimeInterval!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
      };
}

class OfferObjectAddMessageResponse {
  /// The updated OfferObject resource.
  OfferObject? resource;

  OfferObjectAddMessageResponse({
    this.resource,
  });

  OfferObjectAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? OfferObject.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class OfferObjectListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<OfferObject>? resources;

  OfferObjectListResponse({
    this.pagination,
    this.resources,
  });

  OfferObjectListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => OfferObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class Pagination {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#pagination"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Page token to send to fetch the next page.
  core.String? nextPageToken;

  /// Number of results returned in this page.
  core.int? resultsPerPage;

  Pagination({
    this.kind,
    this.nextPageToken,
    this.resultsPerPage,
  });

  Pagination.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          nextPageToken: json_['nextPageToken'] as core.String?,
          resultsPerPage: json_['resultsPerPage'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (resultsPerPage != null) 'resultsPerPage': resultsPerPage!,
      };
}

/// Container for any constraints that may be placed on passes.
class PassConstraints {
  /// The NFC constraints for the pass.
  core.List<core.String>? nfcConstraint;

  /// The screenshot eligibility for the pass.
  /// Possible string values are:
  /// - "SCREENSHOT_ELIGIBILITY_UNSPECIFIED" : Default value, same as ELIGIBLE.
  /// - "ELIGIBLE" : Default behavior for all existing Passes if
  /// ScreenshotEligibility is not set. Allows screenshots to be taken on
  /// Android devices.
  /// - "INELIGIBLE" : Disallows screenshots to be taken on Android devices.
  /// Note that older versions of Wallet may still allow screenshots to be
  /// taken.
  core.String? screenshotEligibility;

  PassConstraints({
    this.nfcConstraint,
    this.screenshotEligibility,
  });

  PassConstraints.fromJson(core.Map json_)
      : this(
          nfcConstraint: (json_['nfcConstraint'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          screenshotEligibility: json_['screenshotEligibility'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nfcConstraint != null) 'nfcConstraint': nfcConstraint!,
        if (screenshotEligibility != null)
          'screenshotEligibility': screenshotEligibility!,
      };
}

class Permission {
  /// The email address of the user, group, or service account to which this
  /// permission refers to.
  core.String? emailAddress;

  /// The role granted by this permission.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED"
  /// - "OWNER"
  /// - "owner" : Legacy alias for `OWNER`. Deprecated.
  /// - "READER"
  /// - "reader" : Legacy alias for `READER`. Deprecated.
  /// - "WRITER"
  /// - "writer" : Legacy alias for `WRITER`. Deprecated.
  core.String? role;

  Permission({
    this.emailAddress,
    this.role,
  });

  Permission.fromJson(core.Map json_)
      : this(
          emailAddress: json_['emailAddress'] as core.String?,
          role: json_['role'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddress != null) 'emailAddress': emailAddress!,
        if (role != null) 'role': role!,
      };
}

class Permissions {
  /// ID of the issuer the list of permissions refer to.
  core.String? issuerId;

  /// The complete list of permissions for the issuer account.
  core.List<Permission>? permissions;

  Permissions({
    this.issuerId,
    this.permissions,
  });

  Permissions.fromJson(core.Map json_)
      : this(
          issuerId: json_['issuerId'] as core.String?,
          permissions: (json_['permissions'] as core.List?)
              ?.map((value) => Permission.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (issuerId != null) 'issuerId': issuerId!,
        if (permissions != null) 'permissions': permissions!,
      };
}

class PurchaseDetails {
  /// ID of the account used to purchase the ticket.
  core.String? accountId;

  /// The confirmation code for the purchase.
  ///
  /// This may be the same for multiple different tickets and is used to group
  /// tickets together.
  core.String? confirmationCode;

  /// The purchase date/time of the ticket.
  ///
  /// This is an ISO 8601 extended format date/time, with or without an offset.
  /// Time may be specified up to nanosecond precision. Offsets may be specified
  /// with seconds precision (even though offset seconds is not part of ISO
  /// 8601). For example: `1985-04-12T23:20:50.52Z` would be 20 minutes and
  /// 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
  /// `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
  /// the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in
  /// time as the above example). If the event were in New York, this would be
  /// the equivalent of Eastern Daylight Time (EDT). Remember that offset varies
  /// in regions that observe Daylight Saving Time (or Summer Time), depending
  /// on the time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and
  /// 50.52 seconds after the 19th hour of April 12th, 1985 with no offset
  /// information. Without offset information, some rich features may not be
  /// available.
  core.String? purchaseDateTime;

  /// Receipt number/identifier for tracking the ticket purchase via the body
  /// that sold the ticket.
  core.String? purchaseReceiptNumber;

  /// The cost of the ticket.
  TicketCost? ticketCost;

  PurchaseDetails({
    this.accountId,
    this.confirmationCode,
    this.purchaseDateTime,
    this.purchaseReceiptNumber,
    this.ticketCost,
  });

  PurchaseDetails.fromJson(core.Map json_)
      : this(
          accountId: json_['accountId'] as core.String?,
          confirmationCode: json_['confirmationCode'] as core.String?,
          purchaseDateTime: json_['purchaseDateTime'] as core.String?,
          purchaseReceiptNumber: json_['purchaseReceiptNumber'] as core.String?,
          ticketCost: json_.containsKey('ticketCost')
              ? TicketCost.fromJson(
                  json_['ticketCost'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountId != null) 'accountId': accountId!,
        if (confirmationCode != null) 'confirmationCode': confirmationCode!,
        if (purchaseDateTime != null) 'purchaseDateTime': purchaseDateTime!,
        if (purchaseReceiptNumber != null)
          'purchaseReceiptNumber': purchaseReceiptNumber!,
        if (ticketCost != null) 'ticketCost': ticketCost!,
      };
}

class ReservationInfo {
  /// Confirmation code needed to check into this flight.
  ///
  /// This is the number that the passenger would enter into a kiosk at the
  /// airport to look up the flight and print a boarding pass.
  core.String? confirmationCode;

  /// E-ticket number.
  core.String? eticketNumber;

  /// Frequent flyer membership information.
  FrequentFlyerInfo? frequentFlyerInfo;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#reservationInfo"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  ReservationInfo({
    this.confirmationCode,
    this.eticketNumber,
    this.frequentFlyerInfo,
    this.kind,
  });

  ReservationInfo.fromJson(core.Map json_)
      : this(
          confirmationCode: json_['confirmationCode'] as core.String?,
          eticketNumber: json_['eticketNumber'] as core.String?,
          frequentFlyerInfo: json_.containsKey('frequentFlyerInfo')
              ? FrequentFlyerInfo.fromJson(json_['frequentFlyerInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confirmationCode != null) 'confirmationCode': confirmationCode!,
        if (eticketNumber != null) 'eticketNumber': eticketNumber!,
        if (frequentFlyerInfo != null) 'frequentFlyerInfo': frequentFlyerInfo!,
        if (kind != null) 'kind': kind!,
      };
}

class Resources {
  /// A list of event ticket classes.
  core.List<EventTicketClass>? eventTicketClasses;

  /// A list of event ticket objects.
  core.List<EventTicketObject>? eventTicketObjects;

  /// A list of flight classes.
  core.List<FlightClass>? flightClasses;

  /// A list of flight objects.
  core.List<FlightObject>? flightObjects;

  /// A list of generic classes.
  core.List<GenericClass>? genericClasses;

  /// A list of generic objects.
  core.List<GenericObject>? genericObjects;

  /// A list of gift card classes.
  core.List<GiftCardClass>? giftCardClasses;

  /// A list of gift card objects.
  core.List<GiftCardObject>? giftCardObjects;

  /// A list of loyalty classes.
  core.List<LoyaltyClass>? loyaltyClasses;

  /// A list of loyalty objects.
  core.List<LoyaltyObject>? loyaltyObjects;

  /// A list of offer classes.
  core.List<OfferClass>? offerClasses;

  /// A list of offer objects.
  core.List<OfferObject>? offerObjects;

  /// A list of transit classes.
  core.List<TransitClass>? transitClasses;

  /// A list of transit objects.
  core.List<TransitObject>? transitObjects;

  Resources({
    this.eventTicketClasses,
    this.eventTicketObjects,
    this.flightClasses,
    this.flightObjects,
    this.genericClasses,
    this.genericObjects,
    this.giftCardClasses,
    this.giftCardObjects,
    this.loyaltyClasses,
    this.loyaltyObjects,
    this.offerClasses,
    this.offerObjects,
    this.transitClasses,
    this.transitObjects,
  });

  Resources.fromJson(core.Map json_)
      : this(
          eventTicketClasses: (json_['eventTicketClasses'] as core.List?)
              ?.map((value) => EventTicketClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          eventTicketObjects: (json_['eventTicketObjects'] as core.List?)
              ?.map((value) => EventTicketObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          flightClasses: (json_['flightClasses'] as core.List?)
              ?.map((value) => FlightClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          flightObjects: (json_['flightObjects'] as core.List?)
              ?.map((value) => FlightObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          genericClasses: (json_['genericClasses'] as core.List?)
              ?.map((value) => GenericClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          genericObjects: (json_['genericObjects'] as core.List?)
              ?.map((value) => GenericObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          giftCardClasses: (json_['giftCardClasses'] as core.List?)
              ?.map((value) => GiftCardClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          giftCardObjects: (json_['giftCardObjects'] as core.List?)
              ?.map((value) => GiftCardObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          loyaltyClasses: (json_['loyaltyClasses'] as core.List?)
              ?.map((value) => LoyaltyClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          loyaltyObjects: (json_['loyaltyObjects'] as core.List?)
              ?.map((value) => LoyaltyObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          offerClasses: (json_['offerClasses'] as core.List?)
              ?.map((value) => OfferClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          offerObjects: (json_['offerObjects'] as core.List?)
              ?.map((value) => OfferObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          transitClasses: (json_['transitClasses'] as core.List?)
              ?.map((value) => TransitClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          transitObjects: (json_['transitObjects'] as core.List?)
              ?.map((value) => TransitObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventTicketClasses != null)
          'eventTicketClasses': eventTicketClasses!,
        if (eventTicketObjects != null)
          'eventTicketObjects': eventTicketObjects!,
        if (flightClasses != null) 'flightClasses': flightClasses!,
        if (flightObjects != null) 'flightObjects': flightObjects!,
        if (genericClasses != null) 'genericClasses': genericClasses!,
        if (genericObjects != null) 'genericObjects': genericObjects!,
        if (giftCardClasses != null) 'giftCardClasses': giftCardClasses!,
        if (giftCardObjects != null) 'giftCardObjects': giftCardObjects!,
        if (loyaltyClasses != null) 'loyaltyClasses': loyaltyClasses!,
        if (loyaltyObjects != null) 'loyaltyObjects': loyaltyObjects!,
        if (offerClasses != null) 'offerClasses': offerClasses!,
        if (offerObjects != null) 'offerObjects': offerObjects!,
        if (transitClasses != null) 'transitClasses': transitClasses!,
        if (transitObjects != null) 'transitObjects': transitObjects!,
      };
}

class Review {
  core.String? comments;

  Review({
    this.comments,
  });

  Review.fromJson(core.Map json_)
      : this(
          comments: json_['comments'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (comments != null) 'comments': comments!,
      };
}

class RotatingBarcode {
  /// An optional text that will override the default text that shows under the
  /// barcode.
  ///
  /// This field is intended for a human readable equivalent of the barcode
  /// value, used when the barcode cannot be scanned.
  core.String? alternateText;

  /// Input only.
  ///
  /// NOTE: This feature is only available for the transit vertical. Optional
  /// set of initial rotating barcode values. This allows a small subset of
  /// barcodes to be included with the object. Further rotating barcode values
  /// must be uploaded with the UploadRotatingBarcodeValues endpoint.
  RotatingBarcodeValues? initialRotatingBarcodeValues;

  /// The render encoding for the barcode.
  ///
  /// When specified, barcode is rendered in the given encoding. Otherwise best
  /// known encoding is chosen by Google.
  /// Possible string values are:
  /// - "RENDER_ENCODING_UNSPECIFIED"
  /// - "UTF_8" : UTF_8 encoding for barcodes. This is only supported for
  /// barcode type qrCode.
  core.String? renderEncoding;

  /// Optional text that will be shown when the barcode is hidden behind a click
  /// action.
  ///
  /// This happens in cases where a pass has Smart Tap enabled. If not
  /// specified, a default is chosen by Google.
  LocalizedString? showCodeText;

  /// Details used to evaluate the {totp_value_n} substitutions.
  RotatingBarcodeTotpDetails? totpDetails;

  /// The type of this barcode.
  /// Possible string values are:
  /// - "BARCODE_TYPE_UNSPECIFIED"
  /// - "AZTEC" : Not supported for Rotating Barcodes.
  /// - "aztec" : Legacy alias for `AZTEC`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "CODE_39" : Not supported for Rotating Barcodes.
  /// - "code39" : Legacy alias for `CODE_39`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "CODE_128" : Not supported for Rotating Barcodes.
  /// - "code128" : Legacy alias for `CODE_128`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "CODABAR" : Not supported for Rotating Barcodes.
  /// - "codabar" : Legacy alias for `CODABAR`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "DATA_MATRIX" : A 2D matrix barcode consisting of black and white. Cells
  /// or modules are arranged in either a square or rectangle. Not supported for
  /// Rotating Barcodes.
  /// - "dataMatrix" : Legacy alias for `DATA_MATRIX`. Deprecated. Not supported
  /// for Rotating Barcodes.
  /// - "EAN_8" : Not supported for Rotating Barcodes.
  /// - "ean8" : Legacy alias for `EAN_8`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "EAN_13" : Not supported for Rotating Barcodes.
  /// - "ean13" : Legacy alias for `EAN_13`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "EAN13" : Legacy alias for `EAN_13`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "ITF_14" : 14 digit ITF code Not supported for Rotating Barcodes.
  /// - "itf14" : Legacy alias for `ITF_14`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "PDF_417" : Supported for Rotating Barcodes.
  /// - "pdf417" : Legacy alias for `PDF_417`. Deprecated.
  /// - "PDF417" : Legacy alias for `PDF_417`. Deprecated.
  /// - "QR_CODE" : Supported for Rotating Barcodes.
  /// - "qrCode" : Legacy alias for `QR_CODE`. Deprecated.
  /// - "qrcode" : Legacy alias for `QR_CODE`. Deprecated.
  /// - "UPC_A" : 11 or 12 digit codes Not supported for Rotating Barcodes.
  /// - "upcA" : Legacy alias for `UPC_A`. Deprecated. Not supported for
  /// Rotating Barcodes.
  /// - "TEXT_ONLY" : Renders the field as a text field. The `alternateText`
  /// field may not be used with a barcode of type `textOnly`. Not supported for
  /// Rotating Barcodes.
  /// - "textOnly" : Legacy alias for `TEXT_ONLY`. Deprecated. Not supported for
  /// Rotating Barcodes.
  core.String? type;

  /// String encoded barcode value.
  ///
  /// This string supports the following substitutions: * {totp_value_n}:
  /// Replaced with the TOTP value (see TotpDetails.parameters). *
  /// {totp_timestamp_millis}: Replaced with the timestamp (millis since epoch)
  /// at which the barcode was generated. * {totp_timestamp_seconds}: Replaced
  /// with the timestamp (seconds since epoch) at which the barcode was
  /// generated.
  core.String? valuePattern;

  RotatingBarcode({
    this.alternateText,
    this.initialRotatingBarcodeValues,
    this.renderEncoding,
    this.showCodeText,
    this.totpDetails,
    this.type,
    this.valuePattern,
  });

  RotatingBarcode.fromJson(core.Map json_)
      : this(
          alternateText: json_['alternateText'] as core.String?,
          initialRotatingBarcodeValues:
              json_.containsKey('initialRotatingBarcodeValues')
                  ? RotatingBarcodeValues.fromJson(
                      json_['initialRotatingBarcodeValues']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          renderEncoding: json_['renderEncoding'] as core.String?,
          showCodeText: json_.containsKey('showCodeText')
              ? LocalizedString.fromJson(
                  json_['showCodeText'] as core.Map<core.String, core.dynamic>)
              : null,
          totpDetails: json_.containsKey('totpDetails')
              ? RotatingBarcodeTotpDetails.fromJson(
                  json_['totpDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_['type'] as core.String?,
          valuePattern: json_['valuePattern'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alternateText != null) 'alternateText': alternateText!,
        if (initialRotatingBarcodeValues != null)
          'initialRotatingBarcodeValues': initialRotatingBarcodeValues!,
        if (renderEncoding != null) 'renderEncoding': renderEncoding!,
        if (showCodeText != null) 'showCodeText': showCodeText!,
        if (totpDetails != null) 'totpDetails': totpDetails!,
        if (type != null) 'type': type!,
        if (valuePattern != null) 'valuePattern': valuePattern!,
      };
}

/// Configuration for the time-based OTP substitutions.
///
/// See https://tools.ietf.org/html/rfc6238
class RotatingBarcodeTotpDetails {
  /// The TOTP algorithm used to generate the OTP.
  /// Possible string values are:
  /// - "TOTP_ALGORITHM_UNSPECIFIED"
  /// - "TOTP_SHA1" : TOTP algorithm from RFC 6238 with the SHA1 hash function
  core.String? algorithm;

  /// The TOTP parameters for each of the {totp_value_*} substitutions.
  ///
  /// The TotpParameters at index n is used for the {totp_value_n} substitution.
  core.List<RotatingBarcodeTotpDetailsTotpParameters>? parameters;

  /// The time interval used for the TOTP value generation, in milliseconds.
  core.String? periodMillis;

  RotatingBarcodeTotpDetails({
    this.algorithm,
    this.parameters,
    this.periodMillis,
  });

  RotatingBarcodeTotpDetails.fromJson(core.Map json_)
      : this(
          algorithm: json_['algorithm'] as core.String?,
          parameters: (json_['parameters'] as core.List?)
              ?.map((value) =>
                  RotatingBarcodeTotpDetailsTotpParameters.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList(),
          periodMillis: json_['periodMillis'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (parameters != null) 'parameters': parameters!,
        if (periodMillis != null) 'periodMillis': periodMillis!,
      };
}

/// Configuration for the key and value length.
///
/// See https://www.rfc-editor.org/rfc/rfc4226#section-5.3
class RotatingBarcodeTotpDetailsTotpParameters {
  /// The secret key used for the TOTP value generation, encoded as a Base16
  /// string.
  core.String? key;

  /// The length of the TOTP value in decimal digits.
  core.int? valueLength;

  RotatingBarcodeTotpDetailsTotpParameters({
    this.key,
    this.valueLength,
  });

  RotatingBarcodeTotpDetailsTotpParameters.fromJson(core.Map json_)
      : this(
          key: json_['key'] as core.String?,
          valueLength: json_['valueLength'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (valueLength != null) 'valueLength': valueLength!,
      };
}

/// A payload containing many barcode values and start date/time.
class RotatingBarcodeValues {
  /// The amount of time each barcode is valid for.
  ///
  /// Required.
  core.String? periodMillis;

  /// The date/time the first barcode is valid from.
  ///
  /// Barcodes will be rotated through using period_millis defined on the
  /// object's RotatingBarcodeValueInfo. This is an ISO 8601 extended format
  /// date/time, with an offset. Time may be specified up to nanosecond
  /// precision. Offsets may be specified with seconds precision (even though
  /// offset seconds is not part of ISO 8601). For example:
  /// `1985-04-12T23:20:50.52Z` would be 20 minutes and 50.52 seconds after the
  /// 23rd hour of April 12th, 1985 in UTC. `1985-04-12T19:20:50.52-04:00` would
  /// be 20 minutes and 50.52 seconds after the 19th hour of April 12th, 1985, 4
  /// hours before UTC (same instant in time as the above example). If the event
  /// were in New York, this would be the equivalent of Eastern Daylight Time
  /// (EDT). Remember that offset varies in regions that observe Daylight Saving
  /// Time (or Summer Time), depending on the time of the year.
  ///
  /// Required.
  core.String? startDateTime;

  /// The values to encode in the barcode.
  ///
  /// At least one value is required.
  ///
  /// Required.
  core.List<core.String>? values;

  RotatingBarcodeValues({
    this.periodMillis,
    this.startDateTime,
    this.values,
  });

  RotatingBarcodeValues.fromJson(core.Map json_)
      : this(
          periodMillis: json_['periodMillis'] as core.String?,
          startDateTime: json_['startDateTime'] as core.String?,
          values: (json_['values'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (periodMillis != null) 'periodMillis': periodMillis!,
        if (startDateTime != null) 'startDateTime': startDateTime!,
        if (values != null) 'values': values!,
      };
}

/// Defines restrictions on the object that will be verified during save.
///
/// Note: this is an advanced feature, please contact Google for implementation
/// support.
class SaveRestrictions {
  /// Restrict the save of the referencing object to the given email address
  /// only.
  ///
  /// This is the hex output of SHA256 sum of the email address, all lowercase
  /// and without any notations like "." or "+", except "@". For example, for
  /// example@example.com, this value will be
  /// 31c5543c1734d25c7206f5fd591525d0295bec6fe84ff82f946a34fe970a1e66 and for
  /// Example@example.com, this value will be
  /// bc34f262c93ad7122763684ccea6f07fb7f5d8a2d11e60ce15a6f43fe70ce632 If email
  /// address of the logged-in user who tries to save this pass does not match
  /// with the defined value here, users won't be allowed to save this pass.
  /// They will instead be prompted with an error to contact the issuer. This
  /// information should be gathered from the user with an explicit consent via
  /// Sign in with Google integration
  /// https://developers.google.com/identity/authentication. Please contact with
  /// support before using Save Restrictions.
  core.String? restrictToEmailSha256;

  SaveRestrictions({
    this.restrictToEmailSha256,
  });

  SaveRestrictions.fromJson(core.Map json_)
      : this(
          restrictToEmailSha256: json_['restrictToEmailSha256'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (restrictToEmailSha256 != null)
          'restrictToEmailSha256': restrictToEmailSha256!,
      };
}

class SecurityAnimation {
  /// Type of animation.
  /// Possible string values are:
  /// - "ANIMATION_UNSPECIFIED"
  /// - "FOIL_SHIMMER" : Default Foil & Shimmer animation
  /// - "foilShimmer" : Legacy alias for `FOIL_SHIMMER`. Deprecated.
  core.String? animationType;

  SecurityAnimation({
    this.animationType,
  });

  SecurityAnimation.fromJson(core.Map json_)
      : this(
          animationType: json_['animationType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (animationType != null) 'animationType': animationType!,
      };
}

class SignUpInfo {
  /// ID of the class the user can sign up for.
  core.String? classId;

  SignUpInfo({
    this.classId,
  });

  SignUpInfo.fromJson(core.Map json_)
      : this(
          classId: json_['classId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (classId != null) 'classId': classId!,
      };
}

class SmartTap {
  /// The unique identifier for a smart tap.
  ///
  /// This value should follow the format issuer ID.identifier where the former
  /// is issued by Google and latter is the Smart Tap id. The Smart Tap id is a
  /// Base64 encoded string which represents the id which was generated by the
  /// Google Pay app.
  core.String? id;

  /// Communication from merchant to user.
  core.List<IssuerToUserInfo>? infos;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#smartTap"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Smart Tap merchant ID of who engaged in the Smart Tap interaction.
  core.String? merchantId;

  SmartTap({
    this.id,
    this.infos,
    this.kind,
    this.merchantId,
  });

  SmartTap.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.String?,
          infos: (json_['infos'] as core.List?)
              ?.map((value) => IssuerToUserInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          kind: json_['kind'] as core.String?,
          merchantId: json_['merchantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (infos != null) 'infos': infos!,
        if (kind != null) 'kind': kind!,
        if (merchantId != null) 'merchantId': merchantId!,
      };
}

class SmartTapMerchantData {
  /// Available only to Smart Tap enabled partners.
  ///
  /// Contact support for additional guidance.
  core.List<AuthenticationKey>? authenticationKeys;

  /// Available only to Smart Tap enabled partners.
  ///
  /// Contact support for additional guidance.
  core.String? smartTapMerchantId;

  SmartTapMerchantData({
    this.authenticationKeys,
    this.smartTapMerchantId,
  });

  SmartTapMerchantData.fromJson(core.Map json_)
      : this(
          authenticationKeys: (json_['authenticationKeys'] as core.List?)
              ?.map((value) => AuthenticationKey.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          smartTapMerchantId: json_['smartTapMerchantId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authenticationKeys != null)
          'authenticationKeys': authenticationKeys!,
        if (smartTapMerchantId != null)
          'smartTapMerchantId': smartTapMerchantId!,
      };
}

class TemplateItem {
  /// A reference to a field to display.
  ///
  /// If both `firstValue` and `secondValue` are populated, they will both
  /// appear as one item with a slash between them. For example, values A and B
  /// would be shown as "A / B".
  FieldSelector? firstValue;

  /// A predefined item to display.
  ///
  /// Only one of `firstValue` or `predefinedItem` may be set.
  /// Possible string values are:
  /// - "PREDEFINED_ITEM_UNSPECIFIED"
  /// - "FREQUENT_FLYER_PROGRAM_NAME_AND_NUMBER"
  /// - "frequentFlyerProgramNameAndNumber" : Legacy alias for
  /// `FREQUENT_FLYER_PROGRAM_NAME_AND_NUMBER`. Deprecated.
  /// - "FLIGHT_NUMBER_AND_OPERATING_FLIGHT_NUMBER"
  /// - "flightNumberAndOperatingFlightNumber" : Legacy alias for
  /// `FLIGHT_NUMBER_AND_OPERATING_FLIGHT_NUMBER`. Deprecated.
  core.String? predefinedItem;

  /// A reference to a field to display.
  ///
  /// This may only be populated if the `firstValue` field is populated.
  FieldSelector? secondValue;

  TemplateItem({
    this.firstValue,
    this.predefinedItem,
    this.secondValue,
  });

  TemplateItem.fromJson(core.Map json_)
      : this(
          firstValue: json_.containsKey('firstValue')
              ? FieldSelector.fromJson(
                  json_['firstValue'] as core.Map<core.String, core.dynamic>)
              : null,
          predefinedItem: json_['predefinedItem'] as core.String?,
          secondValue: json_.containsKey('secondValue')
              ? FieldSelector.fromJson(
                  json_['secondValue'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstValue != null) 'firstValue': firstValue!,
        if (predefinedItem != null) 'predefinedItem': predefinedItem!,
        if (secondValue != null) 'secondValue': secondValue!,
      };
}

/// Data for Text module.
///
/// All fields are optional. Header will be displayed if available, different
/// types of bodies will be concatenated if they are defined.
class TextModuleData {
  /// The body of the Text Module, which is defined as an uninterrupted string.
  ///
  /// Recommended maximum length is 500 characters to ensure full string is
  /// displayed on smaller screens.
  core.String? body;

  /// The header of the Text Module.
  ///
  /// Recommended maximum length is 35 characters to ensure full string is
  /// displayed on smaller screens.
  core.String? header;

  /// The ID associated with a text module.
  ///
  /// This field is here to enable ease of management of text modules and
  /// referencing them in template overrides. The ID should only include
  /// alphanumeric characters, '_', or '-'. It can not include dots, as dots are
  /// used to separate fields within FieldReference.fieldPaths in template
  /// overrides.
  core.String? id;

  /// Translated strings for the body.
  ///
  /// Recommended maximum length is 500 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedBody;

  /// Translated strings for the header.
  ///
  /// Recommended maximum length is 35 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedHeader;

  TextModuleData({
    this.body,
    this.header,
    this.id,
    this.localizedBody,
    this.localizedHeader,
  });

  TextModuleData.fromJson(core.Map json_)
      : this(
          body: json_['body'] as core.String?,
          header: json_['header'] as core.String?,
          id: json_['id'] as core.String?,
          localizedBody: json_.containsKey('localizedBody')
              ? LocalizedString.fromJson(
                  json_['localizedBody'] as core.Map<core.String, core.dynamic>)
              : null,
          localizedHeader: json_.containsKey('localizedHeader')
              ? LocalizedString.fromJson(json_['localizedHeader']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (header != null) 'header': header!,
        if (id != null) 'id': id!,
        if (localizedBody != null) 'localizedBody': localizedBody!,
        if (localizedHeader != null) 'localizedHeader': localizedHeader!,
      };
}

class TicketCost {
  /// A message describing any kind of discount that was applied.
  LocalizedString? discountMessage;

  /// The face value of the ticket.
  Money? faceValue;

  /// The actual purchase price of the ticket, after tax and/or discounts.
  Money? purchasePrice;

  TicketCost({
    this.discountMessage,
    this.faceValue,
    this.purchasePrice,
  });

  TicketCost.fromJson(core.Map json_)
      : this(
          discountMessage: json_.containsKey('discountMessage')
              ? LocalizedString.fromJson(json_['discountMessage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          faceValue: json_.containsKey('faceValue')
              ? Money.fromJson(
                  json_['faceValue'] as core.Map<core.String, core.dynamic>)
              : null,
          purchasePrice: json_.containsKey('purchasePrice')
              ? Money.fromJson(
                  json_['purchasePrice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (discountMessage != null) 'discountMessage': discountMessage!,
        if (faceValue != null) 'faceValue': faceValue!,
        if (purchasePrice != null) 'purchasePrice': purchasePrice!,
      };
}

class TicketLeg {
  /// The date/time of arrival.
  ///
  /// This is an ISO 8601 extended format date/time, with or without an offset.
  /// Time may be specified up to nanosecond precision. Offsets may be specified
  /// with seconds precision (even though offset seconds is not part of ISO
  /// 8601). For example: `1985-04-12T23:20:50.52Z` would be 20 minutes and
  /// 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
  /// `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
  /// the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in
  /// time as the above example). If the event were in New York, this would be
  /// the equivalent of Eastern Daylight Time (EDT). Remember that offset varies
  /// in regions that observe Daylight Saving Time (or Summer Time), depending
  /// on the time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and
  /// 50.52 seconds after the 19th hour of April 12th, 1985 with no offset
  /// information. The portion of the date/time without the offset is considered
  /// the "local date/time". This should be the local date/time at the
  /// destination station. For example, if the event occurs at the 20th hour of
  /// June 5th, 2018 at the destination station, the local date/time portion
  /// should be `2018-06-05T20:00:00`. If the local date/time at the destination
  /// station is 4 hours before UTC, an offset of `-04:00` may be appended.
  /// Without offset information, some rich features may not be available.
  core.String? arrivalDateTime;

  /// The train or ship name/number that the passsenger needs to board.
  core.String? carriage;

  /// The date/time of departure.
  ///
  /// This is required if there is no validity time interval set on the transit
  /// object. This is an ISO 8601 extended format date/time, with or without an
  /// offset. Time may be specified up to nanosecond precision. Offsets may be
  /// specified with seconds precision (even though offset seconds is not part
  /// of ISO 8601). For example: `1985-04-12T23:20:50.52Z` would be 20 minutes
  /// and 50.52 seconds after the 23rd hour of April 12th, 1985 in UTC.
  /// `1985-04-12T19:20:50.52-04:00` would be 20 minutes and 50.52 seconds after
  /// the 19th hour of April 12th, 1985, 4 hours before UTC (same instant in
  /// time as the above example). If the event were in New York, this would be
  /// the equivalent of Eastern Daylight Time (EDT). Remember that offset varies
  /// in regions that observe Daylight Saving Time (or Summer Time), depending
  /// on the time of the year. `1985-04-12T19:20:50.52` would be 20 minutes and
  /// 50.52 seconds after the 19th hour of April 12th, 1985 with no offset
  /// information. The portion of the date/time without the offset is considered
  /// the "local date/time". This should be the local date/time at the origin
  /// station. For example, if the departure occurs at the 20th hour of June
  /// 5th, 2018 at the origin station, the local date/time portion should be
  /// `2018-06-05T20:00:00`. If the local date/time at the origin station is 4
  /// hours before UTC, an offset of `-04:00` may be appended. Without offset
  /// information, some rich features may not be available.
  core.String? departureDateTime;

  /// The destination name.
  LocalizedString? destinationName;

  /// The destination station code.
  core.String? destinationStationCode;

  /// Short description/name of the fare for this leg of travel.
  ///
  /// Eg "Anytime Single Use".
  LocalizedString? fareName;

  /// The name of the origin station.
  ///
  /// This is required if `desinationName` is present or if `originStationCode`
  /// is not present.
  LocalizedString? originName;

  /// The origin station code.
  ///
  /// This is required if `destinationStationCode` is present or if `originName`
  /// is not present.
  core.String? originStationCode;

  /// The platform or gate where the passenger can board the carriage.
  core.String? platform;

  /// The reserved seat for the passenger(s).
  ///
  /// If more than one seat is to be specified then use the `ticketSeats` field
  /// instead. Both `ticketSeat` and `ticketSeats` may not be set.
  TicketSeat? ticketSeat;

  /// The reserved seat for the passenger(s).
  ///
  /// If only one seat is to be specified then use the `ticketSeat` field
  /// instead. Both `ticketSeat` and `ticketSeats` may not be set.
  core.List<TicketSeat>? ticketSeats;

  /// The name of the transit operator that is operating this leg of a trip.
  LocalizedString? transitOperatorName;

  /// Terminus station or destination of the train/bus/etc.
  LocalizedString? transitTerminusName;

  /// The zone of boarding within the platform.
  core.String? zone;

  TicketLeg({
    this.arrivalDateTime,
    this.carriage,
    this.departureDateTime,
    this.destinationName,
    this.destinationStationCode,
    this.fareName,
    this.originName,
    this.originStationCode,
    this.platform,
    this.ticketSeat,
    this.ticketSeats,
    this.transitOperatorName,
    this.transitTerminusName,
    this.zone,
  });

  TicketLeg.fromJson(core.Map json_)
      : this(
          arrivalDateTime: json_['arrivalDateTime'] as core.String?,
          carriage: json_['carriage'] as core.String?,
          departureDateTime: json_['departureDateTime'] as core.String?,
          destinationName: json_.containsKey('destinationName')
              ? LocalizedString.fromJson(json_['destinationName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          destinationStationCode:
              json_['destinationStationCode'] as core.String?,
          fareName: json_.containsKey('fareName')
              ? LocalizedString.fromJson(
                  json_['fareName'] as core.Map<core.String, core.dynamic>)
              : null,
          originName: json_.containsKey('originName')
              ? LocalizedString.fromJson(
                  json_['originName'] as core.Map<core.String, core.dynamic>)
              : null,
          originStationCode: json_['originStationCode'] as core.String?,
          platform: json_['platform'] as core.String?,
          ticketSeat: json_.containsKey('ticketSeat')
              ? TicketSeat.fromJson(
                  json_['ticketSeat'] as core.Map<core.String, core.dynamic>)
              : null,
          ticketSeats: (json_['ticketSeats'] as core.List?)
              ?.map((value) => TicketSeat.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          transitOperatorName: json_.containsKey('transitOperatorName')
              ? LocalizedString.fromJson(json_['transitOperatorName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transitTerminusName: json_.containsKey('transitTerminusName')
              ? LocalizedString.fromJson(json_['transitTerminusName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          zone: json_['zone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrivalDateTime != null) 'arrivalDateTime': arrivalDateTime!,
        if (carriage != null) 'carriage': carriage!,
        if (departureDateTime != null) 'departureDateTime': departureDateTime!,
        if (destinationName != null) 'destinationName': destinationName!,
        if (destinationStationCode != null)
          'destinationStationCode': destinationStationCode!,
        if (fareName != null) 'fareName': fareName!,
        if (originName != null) 'originName': originName!,
        if (originStationCode != null) 'originStationCode': originStationCode!,
        if (platform != null) 'platform': platform!,
        if (ticketSeat != null) 'ticketSeat': ticketSeat!,
        if (ticketSeats != null) 'ticketSeats': ticketSeats!,
        if (transitOperatorName != null)
          'transitOperatorName': transitOperatorName!,
        if (transitTerminusName != null)
          'transitTerminusName': transitTerminusName!,
        if (zone != null) 'zone': zone!,
      };
}

class TicketRestrictions {
  /// Extra restrictions that don't fall under the "route" or "time" categories.
  LocalizedString? otherRestrictions;

  /// Restrictions about routes that may be taken.
  ///
  /// For example, this may be the string "Reserved CrossCountry trains only".
  LocalizedString? routeRestrictions;

  /// More details about the above `routeRestrictions`.
  LocalizedString? routeRestrictionsDetails;

  /// Restrictions about times this ticket may be used.
  LocalizedString? timeRestrictions;

  TicketRestrictions({
    this.otherRestrictions,
    this.routeRestrictions,
    this.routeRestrictionsDetails,
    this.timeRestrictions,
  });

  TicketRestrictions.fromJson(core.Map json_)
      : this(
          otherRestrictions: json_.containsKey('otherRestrictions')
              ? LocalizedString.fromJson(json_['otherRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          routeRestrictions: json_.containsKey('routeRestrictions')
              ? LocalizedString.fromJson(json_['routeRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          routeRestrictionsDetails:
              json_.containsKey('routeRestrictionsDetails')
                  ? LocalizedString.fromJson(json_['routeRestrictionsDetails']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          timeRestrictions: json_.containsKey('timeRestrictions')
              ? LocalizedString.fromJson(json_['timeRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (otherRestrictions != null) 'otherRestrictions': otherRestrictions!,
        if (routeRestrictions != null) 'routeRestrictions': routeRestrictions!,
        if (routeRestrictionsDetails != null)
          'routeRestrictionsDetails': routeRestrictionsDetails!,
        if (timeRestrictions != null) 'timeRestrictions': timeRestrictions!,
      };
}

class TicketSeat {
  /// The identifier of the train car or coach in which the ticketed seat is
  /// located.
  ///
  /// Eg. "10"
  core.String? coach;

  /// A custome fare class to be used if no `fareClass` applies.
  ///
  /// Both `fareClass` and `customFareClass` may not be set.
  LocalizedString? customFareClass;

  /// The fare class of the ticketed seat.
  /// Possible string values are:
  /// - "FARE_CLASS_UNSPECIFIED"
  /// - "ECONOMY"
  /// - "economy" : Legacy alias for `ECONOMY`. Deprecated.
  /// - "FIRST"
  /// - "first" : Legacy alias for `FIRST`. Deprecated.
  /// - "BUSINESS"
  /// - "business" : Legacy alias for `BUSINESS`. Deprecated.
  core.String? fareClass;

  /// The identifier of where the ticketed seat is located.
  ///
  /// Eg. "42". If there is no specific identifier, use `seatAssigment` instead.
  core.String? seat;

  /// The passenger's seat assignment.
  ///
  /// Eg. "no specific seat". To be used when there is no specific identifier to
  /// use in `seat`.
  LocalizedString? seatAssignment;

  TicketSeat({
    this.coach,
    this.customFareClass,
    this.fareClass,
    this.seat,
    this.seatAssignment,
  });

  TicketSeat.fromJson(core.Map json_)
      : this(
          coach: json_['coach'] as core.String?,
          customFareClass: json_.containsKey('customFareClass')
              ? LocalizedString.fromJson(json_['customFareClass']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fareClass: json_['fareClass'] as core.String?,
          seat: json_['seat'] as core.String?,
          seatAssignment: json_.containsKey('seatAssignment')
              ? LocalizedString.fromJson(json_['seatAssignment']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coach != null) 'coach': coach!,
        if (customFareClass != null) 'customFareClass': customFareClass!,
        if (fareClass != null) 'fareClass': fareClass!,
        if (seat != null) 'seat': seat!,
        if (seatAssignment != null) 'seatAssignment': seatAssignment!,
      };
}

class TimeInterval {
  /// End time of the interval.
  ///
  /// Offset is not required. If an offset is provided and `start` time is set,
  /// `start` must also include an offset.
  DateTime? end;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#timeInterval"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Start time of the interval.
  ///
  /// Offset is not required. If an offset is provided and `end` time is set,
  /// `end` must also include an offset.
  DateTime? start;

  TimeInterval({
    this.end,
    this.kind,
    this.start,
  });

  TimeInterval.fromJson(core.Map json_)
      : this(
          end: json_.containsKey('end')
              ? DateTime.fromJson(
                  json_['end'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_['kind'] as core.String?,
          start: json_.containsKey('start')
              ? DateTime.fromJson(
                  json_['start'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (kind != null) 'kind': kind!,
        if (start != null) 'start': start!,
      };
}

class TransitClass {
  /// Activation options for an activatable ticket.
  ActivationOptions? activationOptions;

  /// Use `multipleDevicesAndHoldersAllowedStatus` instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? allowMultipleUsersPerObject;

  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding object that will be used
  /// instead.
  AppLinkData? appLinkData;

  /// Callback options to be used to call the issuer back for every save/delete
  /// of an object for this class by the end-user.
  ///
  /// All objects of this class are eligible for the callback.
  CallbackOptions? callbackOptions;

  /// Template information about how the class should be displayed.
  ///
  /// If unset, Google will fallback to a default set of fields to display.
  ClassTemplateInfo? classTemplateInfo;

  /// Country code used to display the card's country (when the user is not in
  /// that country), as well as to display localized content when content is not
  /// available in the user's locale.
  core.String? countryCode;

  /// A custom label to use for the carriage value
  /// (`transitObject.ticketLeg.carriage`).
  LocalizedString? customCarriageLabel;

  /// A custom label to use for the coach value
  /// (`transitObject.ticketLeg.ticketSeat.coach`).
  LocalizedString? customCoachLabel;

  /// A custom label to use for the transit concession category value
  /// (`transitObject.concessionCategory`).
  LocalizedString? customConcessionCategoryLabel;

  /// A custom label to use for the confirmation code value
  /// (`transitObject.purchaseDetails.confirmationCode`).
  LocalizedString? customConfirmationCodeLabel;

  /// A custom label to use for the transit discount message value
  /// (`transitObject.purchaseDetails.ticketCost.discountMessage`).
  LocalizedString? customDiscountMessageLabel;

  /// A custom label to use for the fare class value
  /// (`transitObject.ticketLeg.ticketSeat.fareClass`).
  LocalizedString? customFareClassLabel;

  /// A custom label to use for the transit fare name value
  /// (`transitObject.ticketLeg.fareName`).
  LocalizedString? customFareNameLabel;

  /// A custom label to use for the other restrictions value
  /// (`transitObject.ticketRestrictions.otherRestrictions`).
  LocalizedString? customOtherRestrictionsLabel;

  /// A custom label to use for the boarding platform value
  /// (`transitObject.ticketLeg.platform`).
  LocalizedString? customPlatformLabel;

  /// A custom label to use for the purchase face value
  /// (`transitObject.purchaseDetails.ticketCost.faceValue`).
  LocalizedString? customPurchaseFaceValueLabel;

  /// A custom label to use for the purchase price value
  /// (`transitObject.purchaseDetails.ticketCost.purchasePrice`).
  LocalizedString? customPurchasePriceLabel;

  /// A custom label to use for the purchase receipt number value
  /// (`transitObject.purchaseDetails.purchaseReceiptNumber`).
  LocalizedString? customPurchaseReceiptNumberLabel;

  /// A custom label to use for the route restrictions details value
  /// (`transitObject.ticketRestrictions.routeRestrictionsDetails`).
  LocalizedString? customRouteRestrictionsDetailsLabel;

  /// A custom label to use for the route restrictions value
  /// (`transitObject.ticketRestrictions.routeRestrictions`).
  LocalizedString? customRouteRestrictionsLabel;

  /// A custom label to use for the seat location value
  /// (`transitObject.ticketLeg.ticketSeat.seat`).
  LocalizedString? customSeatLabel;

  /// A custom label to use for the ticket number value
  /// (`transitObject.ticketNumber`).
  LocalizedString? customTicketNumberLabel;

  /// A custom label to use for the time restrictions details value
  /// (`transitObject.ticketRestrictions.timeRestrictions`).
  LocalizedString? customTimeRestrictionsLabel;

  /// A custom label to use for the transit terminus name value
  /// (`transitObject.ticketLeg.transitTerminusName`).
  LocalizedString? customTransitTerminusNameLabel;

  /// A custom label to use for the boarding zone value
  /// (`transitObject.ticketLeg.zone`).
  LocalizedString? customZoneLabel;

  /// Controls the display of the single-leg itinerary for this class.
  ///
  /// By default, an itinerary will only display for multi-leg trips.
  core.bool? enableSingleLegItinerary;

  /// Identifies whether this class supports Smart Tap.
  ///
  /// The `redemptionIssuers` and object level `smartTapRedemptionLevel` fields
  /// must also be set up correctly in order for a pass to support Smart Tap.
  core.bool? enableSmartTap;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, nothing will be displayed. The image will display at
  /// 100% width.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The URI of your application's home page.
  ///
  /// Populating the URI in this field results in the exact same behavior as
  /// populating an URI in linksModuleData (when an object is rendered, a link
  /// to the homepage is shown in what would usually be thought of as the
  /// linksModuleData section of the object).
  Uri? homepageUri;

  /// The unique identifier for a class.
  ///
  /// This ID must be unique across all classes from an issuer. This value
  /// should follow the format issuer ID. identifier where the former is issued
  /// by Google and latter is chosen by you. Your unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  InfoModuleData? infoModuleData;

  /// The issuer name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  ///
  /// Required.
  core.String? issuerName;

  /// If this field is present, transit tickets served to a user's device will
  /// always be in this language.
  ///
  /// Represents the BCP 47 language tag. Example values are "en-US", "en-GB",
  /// "de", or "de-AT".
  core.String? languageOverride;

  /// Links module data.
  ///
  /// If links module data is also defined on the object, both will be
  /// displayed.
  LinksModuleData? linksModuleData;

  /// Translated strings for the issuer_name.
  ///
  /// Recommended maximum length is 20 characters to ensure full string is
  /// displayed on smaller screens.
  LocalizedString? localizedIssuerName;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// The logo image of the ticket.
  ///
  /// This image is displayed in the card detail view of the app.
  ///
  /// Required.
  Image? logo;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the class. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Identifies whether multiple users and devices will save the same object
  /// referencing this class.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Unspecified preference.
  /// - "MULTIPLE_HOLDERS" : The Pass object is shareable by a user and can be
  /// saved by any number of different users, and on any number of devices.
  /// Partners typically use this setup for passes that do not need to be
  /// restricted to a single user or pinned to a single device.
  /// - "ONE_USER_ALL_DEVICES" : An object can only be saved by one user, but
  /// this user can view and use it on multiple of their devices. Once the first
  /// user saves the object, no other user will be allowed to view or save it.
  /// - "ONE_USER_ONE_DEVICE" : An object can only be saved by one user on a
  /// single device. Intended for use by select partners in limited
  /// circumstances. An example use case is a transit ticket that should be
  /// "device pinned", meaning it can be saved, viewed and used only by a single
  /// user on a single device. Contact support for additional information.
  /// - "multipleHolders" : Legacy alias for `MULTIPLE_HOLDERS`. Deprecated.
  /// - "oneUserAllDevices" : Legacy alias for `ONE_USER_ALL_DEVICES`.
  /// Deprecated.
  /// - "oneUserOneDevice" : Legacy alias for `ONE_USER_ONE_DEVICE`. Deprecated.
  core.String? multipleDevicesAndHoldersAllowedStatus;

  /// Whether or not field updates to this class should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If set to DO_NOT_NOTIFY or
  /// NOTIFICATION_SETTINGS_UNSPECIFIED, no notification will be triggered. This
  /// setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Identifies which redemption issuers can redeem the pass over Smart Tap.
  ///
  /// Redemption issuers are identified by their issuer ID. Redemption issuers
  /// must have at least one Smart Tap key configured. The `enableSmartTap` and
  /// object level `smartTapRedemptionLevel` fields must also be set up
  /// correctly in order for a pass to support Smart Tap.
  core.List<core.String>? redemptionIssuers;

  /// The review comments set by the platform when a class is marked `approved`
  /// or `rejected`.
  Review? review;

  /// The status of the class.
  ///
  /// This field can be set to `draft` or `underReview` using the insert, patch,
  /// or update API calls. Once the review state is changed from `draft` it may
  /// not be changed back to `draft`. You should keep this field to `draft` when
  /// the class is under development. A `draft` class cannot be used to create
  /// any object. You should set this field to `underReview` when you believe
  /// the class is ready for use. The platform will automatically set this field
  /// to `approved` and it can be immediately used to create or migrate objects.
  /// When updating an already `approved` class you should keep setting this
  /// field to `underReview`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REVIEW_STATUS_UNSPECIFIED"
  /// - "UNDER_REVIEW"
  /// - "underReview" : Legacy alias for `UNDER_REVIEW`. Deprecated.
  /// - "APPROVED"
  /// - "approved" : Legacy alias for `APPROVED`. Deprecated.
  /// - "REJECTED"
  /// - "rejected" : Legacy alias for `REJECTED`. Deprecated.
  /// - "DRAFT"
  /// - "draft" : Legacy alias for `DRAFT`. Deprecated.
  core.String? reviewStatus;

  /// Optional information about the security animation.
  ///
  /// If this is set a security animation will be rendered on pass details.
  SecurityAnimation? securityAnimation;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// The name of the transit operator.
  LocalizedString? transitOperatorName;

  /// The type of transit this class represents, such as "bus".
  ///
  /// Required.
  /// Possible string values are:
  /// - "TRANSIT_TYPE_UNSPECIFIED"
  /// - "BUS"
  /// - "bus" : Legacy alias for `BUS`. Deprecated.
  /// - "RAIL"
  /// - "rail" : Legacy alias for `RAIL`. Deprecated.
  /// - "TRAM"
  /// - "tram" : Legacy alias for `TRAM`. Deprecated.
  /// - "FERRY"
  /// - "ferry" : Legacy alias for `FERRY`. Deprecated.
  /// - "OTHER"
  /// - "other" : Legacy alias for `OTHER`. Deprecated.
  core.String? transitType;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the class. For a pass only ten will be displayed,
  /// prioritizing those from the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  /// View Unlock Requirement options for the transit ticket.
  /// Possible string values are:
  /// - "VIEW_UNLOCK_REQUIREMENT_UNSPECIFIED" : Default value, same as
  /// UNLOCK_NOT_REQUIRED.
  /// - "UNLOCK_NOT_REQUIRED" : Default behavior for all the existing Passes if
  /// ViewUnlockRequirement is not set.
  /// - "UNLOCK_REQUIRED_TO_VIEW" : Requires the user to unlock their device
  /// each time the pass is viewed. If the user removes their device lock after
  /// saving the pass, then they will be prompted to create a device lock before
  /// the pass can be viewed.
  core.String? viewUnlockRequirement;

  /// Watermark image to display on the user's device.
  Image? watermark;

  /// The wide logo of the ticket.
  ///
  /// When provided, this will be used in place of the logo in the top left of
  /// the card view.
  Image? wideLogo;

  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Image? wordMark;

  TransitClass({
    this.activationOptions,
    this.allowMultipleUsersPerObject,
    this.appLinkData,
    this.callbackOptions,
    this.classTemplateInfo,
    this.countryCode,
    this.customCarriageLabel,
    this.customCoachLabel,
    this.customConcessionCategoryLabel,
    this.customConfirmationCodeLabel,
    this.customDiscountMessageLabel,
    this.customFareClassLabel,
    this.customFareNameLabel,
    this.customOtherRestrictionsLabel,
    this.customPlatformLabel,
    this.customPurchaseFaceValueLabel,
    this.customPurchasePriceLabel,
    this.customPurchaseReceiptNumberLabel,
    this.customRouteRestrictionsDetailsLabel,
    this.customRouteRestrictionsLabel,
    this.customSeatLabel,
    this.customTicketNumberLabel,
    this.customTimeRestrictionsLabel,
    this.customTransitTerminusNameLabel,
    this.customZoneLabel,
    this.enableSingleLegItinerary,
    this.enableSmartTap,
    this.heroImage,
    this.hexBackgroundColor,
    this.homepageUri,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.issuerName,
    this.languageOverride,
    this.linksModuleData,
    this.localizedIssuerName,
    this.locations,
    this.logo,
    this.merchantLocations,
    this.messages,
    this.multipleDevicesAndHoldersAllowedStatus,
    this.notifyPreference,
    this.redemptionIssuers,
    this.review,
    this.reviewStatus,
    this.securityAnimation,
    this.textModulesData,
    this.transitOperatorName,
    this.transitType,
    this.valueAddedModuleData,
    this.version,
    this.viewUnlockRequirement,
    this.watermark,
    this.wideLogo,
    this.wordMark,
  });

  TransitClass.fromJson(core.Map json_)
      : this(
          activationOptions: json_.containsKey('activationOptions')
              ? ActivationOptions.fromJson(json_['activationOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          allowMultipleUsersPerObject:
              json_['allowMultipleUsersPerObject'] as core.bool?,
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          callbackOptions: json_.containsKey('callbackOptions')
              ? CallbackOptions.fromJson(json_['callbackOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          classTemplateInfo: json_.containsKey('classTemplateInfo')
              ? ClassTemplateInfo.fromJson(json_['classTemplateInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          countryCode: json_['countryCode'] as core.String?,
          customCarriageLabel: json_.containsKey('customCarriageLabel')
              ? LocalizedString.fromJson(json_['customCarriageLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customCoachLabel: json_.containsKey('customCoachLabel')
              ? LocalizedString.fromJson(json_['customCoachLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customConcessionCategoryLabel: json_
                  .containsKey('customConcessionCategoryLabel')
              ? LocalizedString.fromJson(json_['customConcessionCategoryLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customConfirmationCodeLabel: json_
                  .containsKey('customConfirmationCodeLabel')
              ? LocalizedString.fromJson(json_['customConfirmationCodeLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customDiscountMessageLabel:
              json_.containsKey('customDiscountMessageLabel')
                  ? LocalizedString.fromJson(json_['customDiscountMessageLabel']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          customFareClassLabel: json_.containsKey('customFareClassLabel')
              ? LocalizedString.fromJson(json_['customFareClassLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customFareNameLabel: json_.containsKey('customFareNameLabel')
              ? LocalizedString.fromJson(json_['customFareNameLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customOtherRestrictionsLabel: json_
                  .containsKey('customOtherRestrictionsLabel')
              ? LocalizedString.fromJson(json_['customOtherRestrictionsLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customPlatformLabel: json_.containsKey('customPlatformLabel')
              ? LocalizedString.fromJson(json_['customPlatformLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customPurchaseFaceValueLabel: json_
                  .containsKey('customPurchaseFaceValueLabel')
              ? LocalizedString.fromJson(json_['customPurchaseFaceValueLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customPurchasePriceLabel:
              json_.containsKey('customPurchasePriceLabel')
                  ? LocalizedString.fromJson(json_['customPurchasePriceLabel']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          customPurchaseReceiptNumberLabel:
              json_.containsKey('customPurchaseReceiptNumberLabel')
                  ? LocalizedString.fromJson(
                      json_['customPurchaseReceiptNumberLabel']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          customRouteRestrictionsDetailsLabel:
              json_.containsKey('customRouteRestrictionsDetailsLabel')
                  ? LocalizedString.fromJson(
                      json_['customRouteRestrictionsDetailsLabel']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          customRouteRestrictionsLabel: json_
                  .containsKey('customRouteRestrictionsLabel')
              ? LocalizedString.fromJson(json_['customRouteRestrictionsLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customSeatLabel: json_.containsKey('customSeatLabel')
              ? LocalizedString.fromJson(json_['customSeatLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customTicketNumberLabel: json_.containsKey('customTicketNumberLabel')
              ? LocalizedString.fromJson(json_['customTicketNumberLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customTimeRestrictionsLabel: json_
                  .containsKey('customTimeRestrictionsLabel')
              ? LocalizedString.fromJson(json_['customTimeRestrictionsLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customTransitTerminusNameLabel: json_
                  .containsKey('customTransitTerminusNameLabel')
              ? LocalizedString.fromJson(json_['customTransitTerminusNameLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          customZoneLabel: json_.containsKey('customZoneLabel')
              ? LocalizedString.fromJson(json_['customZoneLabel']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enableSingleLegItinerary:
              json_['enableSingleLegItinerary'] as core.bool?,
          enableSmartTap: json_['enableSmartTap'] as core.bool?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          homepageUri: json_.containsKey('homepageUri')
              ? Uri.fromJson(
                  json_['homepageUri'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          issuerName: json_['issuerName'] as core.String?,
          languageOverride: json_['languageOverride'] as core.String?,
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          localizedIssuerName: json_.containsKey('localizedIssuerName')
              ? LocalizedString.fromJson(json_['localizedIssuerName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          logo: json_.containsKey('logo')
              ? Image.fromJson(
                  json_['logo'] as core.Map<core.String, core.dynamic>)
              : null,
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          multipleDevicesAndHoldersAllowedStatus:
              json_['multipleDevicesAndHoldersAllowedStatus'] as core.String?,
          notifyPreference: json_['notifyPreference'] as core.String?,
          redemptionIssuers: (json_['redemptionIssuers'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          review: json_.containsKey('review')
              ? Review.fromJson(
                  json_['review'] as core.Map<core.String, core.dynamic>)
              : null,
          reviewStatus: json_['reviewStatus'] as core.String?,
          securityAnimation: json_.containsKey('securityAnimation')
              ? SecurityAnimation.fromJson(json_['securityAnimation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          transitOperatorName: json_.containsKey('transitOperatorName')
              ? LocalizedString.fromJson(json_['transitOperatorName']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transitType: json_['transitType'] as core.String?,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
          viewUnlockRequirement: json_['viewUnlockRequirement'] as core.String?,
          watermark: json_.containsKey('watermark')
              ? Image.fromJson(
                  json_['watermark'] as core.Map<core.String, core.dynamic>)
              : null,
          wideLogo: json_.containsKey('wideLogo')
              ? Image.fromJson(
                  json_['wideLogo'] as core.Map<core.String, core.dynamic>)
              : null,
          wordMark: json_.containsKey('wordMark')
              ? Image.fromJson(
                  json_['wordMark'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationOptions != null) 'activationOptions': activationOptions!,
        if (allowMultipleUsersPerObject != null)
          'allowMultipleUsersPerObject': allowMultipleUsersPerObject!,
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (callbackOptions != null) 'callbackOptions': callbackOptions!,
        if (classTemplateInfo != null) 'classTemplateInfo': classTemplateInfo!,
        if (countryCode != null) 'countryCode': countryCode!,
        if (customCarriageLabel != null)
          'customCarriageLabel': customCarriageLabel!,
        if (customCoachLabel != null) 'customCoachLabel': customCoachLabel!,
        if (customConcessionCategoryLabel != null)
          'customConcessionCategoryLabel': customConcessionCategoryLabel!,
        if (customConfirmationCodeLabel != null)
          'customConfirmationCodeLabel': customConfirmationCodeLabel!,
        if (customDiscountMessageLabel != null)
          'customDiscountMessageLabel': customDiscountMessageLabel!,
        if (customFareClassLabel != null)
          'customFareClassLabel': customFareClassLabel!,
        if (customFareNameLabel != null)
          'customFareNameLabel': customFareNameLabel!,
        if (customOtherRestrictionsLabel != null)
          'customOtherRestrictionsLabel': customOtherRestrictionsLabel!,
        if (customPlatformLabel != null)
          'customPlatformLabel': customPlatformLabel!,
        if (customPurchaseFaceValueLabel != null)
          'customPurchaseFaceValueLabel': customPurchaseFaceValueLabel!,
        if (customPurchasePriceLabel != null)
          'customPurchasePriceLabel': customPurchasePriceLabel!,
        if (customPurchaseReceiptNumberLabel != null)
          'customPurchaseReceiptNumberLabel': customPurchaseReceiptNumberLabel!,
        if (customRouteRestrictionsDetailsLabel != null)
          'customRouteRestrictionsDetailsLabel':
              customRouteRestrictionsDetailsLabel!,
        if (customRouteRestrictionsLabel != null)
          'customRouteRestrictionsLabel': customRouteRestrictionsLabel!,
        if (customSeatLabel != null) 'customSeatLabel': customSeatLabel!,
        if (customTicketNumberLabel != null)
          'customTicketNumberLabel': customTicketNumberLabel!,
        if (customTimeRestrictionsLabel != null)
          'customTimeRestrictionsLabel': customTimeRestrictionsLabel!,
        if (customTransitTerminusNameLabel != null)
          'customTransitTerminusNameLabel': customTransitTerminusNameLabel!,
        if (customZoneLabel != null) 'customZoneLabel': customZoneLabel!,
        if (enableSingleLegItinerary != null)
          'enableSingleLegItinerary': enableSingleLegItinerary!,
        if (enableSmartTap != null) 'enableSmartTap': enableSmartTap!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (homepageUri != null) 'homepageUri': homepageUri!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (issuerName != null) 'issuerName': issuerName!,
        if (languageOverride != null) 'languageOverride': languageOverride!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (localizedIssuerName != null)
          'localizedIssuerName': localizedIssuerName!,
        if (locations != null) 'locations': locations!,
        if (logo != null) 'logo': logo!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (multipleDevicesAndHoldersAllowedStatus != null)
          'multipleDevicesAndHoldersAllowedStatus':
              multipleDevicesAndHoldersAllowedStatus!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (redemptionIssuers != null) 'redemptionIssuers': redemptionIssuers!,
        if (review != null) 'review': review!,
        if (reviewStatus != null) 'reviewStatus': reviewStatus!,
        if (securityAnimation != null) 'securityAnimation': securityAnimation!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (transitOperatorName != null)
          'transitOperatorName': transitOperatorName!,
        if (transitType != null) 'transitType': transitType!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
        if (viewUnlockRequirement != null)
          'viewUnlockRequirement': viewUnlockRequirement!,
        if (watermark != null) 'watermark': watermark!,
        if (wideLogo != null) 'wideLogo': wideLogo!,
        if (wordMark != null) 'wordMark': wordMark!,
      };
}

class TransitClassAddMessageResponse {
  /// The updated TransitClass resource.
  TransitClass? resource;

  TransitClassAddMessageResponse({
    this.resource,
  });

  TransitClassAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? TransitClass.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class TransitClassListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<TransitClass>? resources;

  TransitClassListResponse({
    this.pagination,
    this.resources,
  });

  TransitClassListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => TransitClass.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

class TransitObject {
  /// The activation status for the object.
  ///
  /// Required if the class has `activationOptions` set.
  ActivationStatus? activationStatus;

  /// Optional app or website link that will be displayed as a button on the
  /// front of the pass.
  ///
  /// If AppLinkData is provided for the corresponding class only object
  /// AppLinkData will be displayed.
  AppLinkData? appLinkData;

  /// The barcode type and value.
  Barcode? barcode;

  /// The class associated with this object.
  ///
  /// The class must be of the same type as this object, must already exist, and
  /// must be approved. Class IDs should follow the format issuer ID.identifier
  /// where the former is issued by Google and latter is chosen by you.
  ///
  /// Required.
  core.String? classId;

  /// A copy of the inherited fields of the parent class.
  ///
  /// These fields are retrieved during a GET.
  TransitClass? classReference;

  /// The concession category for the ticket.
  /// Possible string values are:
  /// - "CONCESSION_CATEGORY_UNSPECIFIED"
  /// - "ADULT"
  /// - "adult" : Legacy alias for `ADULT`. Deprecated.
  /// - "CHILD"
  /// - "child" : Legacy alias for `CHILD`. Deprecated.
  /// - "SENIOR"
  /// - "senior" : Legacy alias for `SENIOR`. Deprecated.
  core.String? concessionCategory;

  /// A custom concession category to use when `concessionCategory` does not
  /// provide the right option.
  ///
  /// Both `concessionCategory` and `customConcessionCategory` may not be set.
  LocalizedString? customConcessionCategory;

  /// A custom status to use for the ticket status value when `ticketStatus`
  /// does not provide the right option.
  ///
  /// Both `ticketStatus` and `customTicketStatus` may not be set.
  LocalizedString? customTicketStatus;

  /// Device context associated with the object.
  DeviceContext? deviceContext;

  /// Indicates if notifications should explicitly be suppressed.
  ///
  /// If this field is set to true, regardless of the `messages` field,
  /// expiration notifications to the user will be suppressed. By default, this
  /// field is set to false. Currently, this can only be set for offers.
  core.bool? disableExpirationNotification;

  /// Information that controls how passes are grouped together.
  GroupingInfo? groupingInfo;

  /// Whether this object is currently linked to a single device.
  ///
  /// This field is set by the platform when a user saves the object, linking it
  /// to their device. Intended for use by select partners. Contact support for
  /// additional information.
  core.bool? hasLinkedDevice;

  /// Indicates if the object has users.
  ///
  /// This field is set by the platform.
  core.bool? hasUsers;

  /// Optional banner image displayed on the front of the card.
  ///
  /// If none is present, hero image of the class, if present, will be
  /// displayed. If hero image of the class is also not present, nothing will be
  /// displayed.
  Image? heroImage;

  /// The background color for the card.
  ///
  /// If not set the dominant color of the hero image is used, and if no hero
  /// image is set, the dominant color of the logo is used. The format is
  /// #rrggbb where rrggbb is a hex RGB triplet, such as `#ffcc00`. You can also
  /// use the shorthand version of the RGB triplet which is #rgb, such as
  /// `#fc0`.
  core.String? hexBackgroundColor;

  /// The unique identifier for an object.
  ///
  /// This ID must be unique across all objects from an issuer. This value
  /// should follow the format issuer ID.identifier where the former is issued
  /// by Google and latter is chosen by you. The unique identifier should only
  /// include alphanumeric characters, '.', '_', or '-'.
  ///
  /// Required.
  core.String? id;

  /// Image module data.
  ///
  /// The maximum number of these fields displayed is 1 from object level and 1
  /// for class object level.
  core.List<ImageModuleData>? imageModulesData;

  /// Use textModulesData instead.
  ///
  /// Deprecated.
  InfoModuleData? infoModuleData;

  /// linked_object_ids are a list of other objects such as event ticket,
  /// loyalty, offer, generic, giftcard, transit and boarding pass that should
  /// be automatically attached to this transit object.
  ///
  /// If a user had saved this transit card, then these linked_object_ids would
  /// be automatically pushed to the user's wallet (unless they turned off the
  /// setting to receive such linked passes). Make sure that objects present in
  /// linked_object_ids are already inserted - if not, calls would fail. Once
  /// linked, the linked objects cannot be unlinked. You cannot link objects
  /// belonging to another issuer. There is a limit to the number of objects
  /// that can be linked to a single object. After the limit is reached, new
  /// linked objects in the call will be ignored silently. Object IDs should
  /// follow the format issuer ID. identifier where the former is issued by
  /// Google and the latter is chosen by you.
  core.List<core.String>? linkedObjectIds;

  /// Links module data.
  ///
  /// If links module data is also defined on the class, both will be displayed.
  LinksModuleData? linksModuleData;

  /// Note: This field is currently not supported to trigger geo notifications.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<LatLongPoint>? locations;

  /// Merchant locations.
  ///
  /// There is a maximum of ten on the object. Any additional MerchantLocations
  /// added beyond the 10 will be rejected. These locations will trigger a
  /// notification when a user enters within a Google-set radius of the point.
  /// This field replaces the deprecated LatLongPoints.
  core.List<MerchantLocation>? merchantLocations;

  /// An array of messages displayed in the app.
  ///
  /// All users of this object will receive its associated messages. The maximum
  /// number of these fields is 10.
  core.List<Message>? messages;

  /// Whether or not field updates to this object should trigger notifications.
  ///
  /// When set to NOTIFY, we will attempt to trigger a field update notification
  /// to users. These notifications will only be sent to users if the field is
  /// part of an allowlist. If set to DO_NOT_NOTIFY or
  /// NOTIFICATION_SETTINGS_UNSPECIFIED, no notification will be triggered. This
  /// setting is ephemeral and needs to be set with each PATCH or UPDATE
  /// request, otherwise a notification will not be triggered.
  /// Possible string values are:
  /// - "NOTIFICATION_SETTINGS_FOR_UPDATES_UNSPECIFIED" : Default behavior is no
  /// notifications sent.
  /// - "NOTIFY_ON_UPDATE" : This value will result in a notification being
  /// sent, if the updated fields are part of an allowlist.
  core.String? notifyPreference;

  /// Pass constraints for the object.
  ///
  /// Includes limiting NFC and screenshot behaviors.
  PassConstraints? passConstraints;

  /// The name(s) of the passengers the ticket is assigned to.
  ///
  /// The above `passengerType` field is meant to give Google context on this
  /// field.
  core.String? passengerNames;

  /// The number of passengers.
  /// Possible string values are:
  /// - "PASSENGER_TYPE_UNSPECIFIED"
  /// - "SINGLE_PASSENGER"
  /// - "singlePassenger" : Legacy alias for `SINGLE_PASSENGER`. Deprecated.
  /// - "MULTIPLE_PASSENGERS"
  /// - "multiplePassengers" : Legacy alias for `MULTIPLE_PASSENGERS`.
  /// Deprecated.
  core.String? passengerType;

  /// Purchase details for this ticket.
  PurchaseDetails? purchaseDetails;

  /// The rotating barcode type and value.
  RotatingBarcode? rotatingBarcode;

  /// Restrictions on the object that needs to be verified before the user tries
  /// to save the pass.
  ///
  /// Note that this restrictions will only be applied during save time. If the
  /// restrictions changed after a user saves the pass, the new restrictions
  /// will not be applied to an already saved pass.
  SaveRestrictions? saveRestrictions;

  /// The value that will be transmitted to a Smart Tap certified terminal over
  /// NFC for this object.
  ///
  /// The class level fields `enableSmartTap` and `redemptionIssuers` must also
  /// be set up correctly in order for the pass to support Smart Tap. Only ASCII
  /// characters are supported.
  core.String? smartTapRedemptionValue;

  /// The state of the object.
  ///
  /// This field is used to determine how an object is displayed in the app. For
  /// example, an `inactive` object is moved to the "Expired passes" section.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "ACTIVE" : Object is active and displayed to with other active objects.
  /// - "active" : Legacy alias for `ACTIVE`. Deprecated.
  /// - "COMPLETED"
  /// - "completed" : Legacy alias for `COMPLETED`. Deprecated.
  /// - "EXPIRED" : Object is no longer valid (`validTimeInterval` passed).
  /// - "expired" : Legacy alias for `EXPIRED`. Deprecated.
  /// - "INACTIVE"
  /// - "inactive" : Legacy alias for `INACTIVE`. Deprecated.
  core.String? state;

  /// Text module data.
  ///
  /// If text module data is also defined on the class, both will be displayed.
  /// The maximum number of these fields displayed is 10 from the object and 10
  /// from the class.
  core.List<TextModuleData>? textModulesData;

  /// A single ticket leg contains departure and arrival information along with
  /// boarding and seating information.
  ///
  /// If more than one leg is to be specified then use the `ticketLegs` field
  /// instead. Both `ticketLeg` and `ticketLegs` may not be set.
  TicketLeg? ticketLeg;

  /// Each ticket may contain one or more legs.
  ///
  /// Each leg contains departure and arrival information along with boarding
  /// and seating information. If only one leg is to be specified then use the
  /// `ticketLeg` field instead. Both `ticketLeg` and `ticketLegs` may not be
  /// set.
  core.List<TicketLeg>? ticketLegs;

  /// The number of the ticket.
  ///
  /// This is a unique identifier for the ticket in the transit operator's
  /// system.
  core.String? ticketNumber;

  /// Information about what kind of restrictions there are on using this
  /// ticket.
  ///
  /// For example, which days of the week it must be used, or which routes are
  /// allowed to be taken.
  TicketRestrictions? ticketRestrictions;

  /// The status of the ticket.
  ///
  /// For states which affect display, use the `state` field instead.
  /// Possible string values are:
  /// - "TICKET_STATUS_UNSPECIFIED"
  /// - "USED"
  /// - "used" : Legacy alias for `USED`. Deprecated.
  /// - "REFUNDED"
  /// - "refunded" : Legacy alias for `REFUNDED`. Deprecated.
  /// - "EXCHANGED"
  /// - "exchanged" : Legacy alias for `EXCHANGED`. Deprecated.
  core.String? ticketStatus;

  /// This id is used to group tickets together if the user has saved multiple
  /// tickets for the same trip.
  core.String? tripId;

  /// The type of trip this transit object represents.
  ///
  /// Used to determine the pass title and/or which symbol to use between the
  /// origin and destination.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TRIP_TYPE_UNSPECIFIED"
  /// - "ROUND_TRIP"
  /// - "roundTrip" : Legacy alias for `ROUND_TRIP`. Deprecated.
  /// - "ONE_WAY"
  /// - "oneWay" : Legacy alias for `ONE_WAY`. Deprecated.
  core.String? tripType;

  /// The time period this object will be `active` and object can be used.
  ///
  /// An object's state will be changed to `expired` when this time period has
  /// passed.
  TimeInterval? validTimeInterval;

  /// Optional value added module data.
  ///
  /// Maximum of ten on the object.
  core.List<ValueAddedModuleData>? valueAddedModuleData;

  /// Deprecated
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? version;

  TransitObject({
    this.activationStatus,
    this.appLinkData,
    this.barcode,
    this.classId,
    this.classReference,
    this.concessionCategory,
    this.customConcessionCategory,
    this.customTicketStatus,
    this.deviceContext,
    this.disableExpirationNotification,
    this.groupingInfo,
    this.hasLinkedDevice,
    this.hasUsers,
    this.heroImage,
    this.hexBackgroundColor,
    this.id,
    this.imageModulesData,
    this.infoModuleData,
    this.linkedObjectIds,
    this.linksModuleData,
    this.locations,
    this.merchantLocations,
    this.messages,
    this.notifyPreference,
    this.passConstraints,
    this.passengerNames,
    this.passengerType,
    this.purchaseDetails,
    this.rotatingBarcode,
    this.saveRestrictions,
    this.smartTapRedemptionValue,
    this.state,
    this.textModulesData,
    this.ticketLeg,
    this.ticketLegs,
    this.ticketNumber,
    this.ticketRestrictions,
    this.ticketStatus,
    this.tripId,
    this.tripType,
    this.validTimeInterval,
    this.valueAddedModuleData,
    this.version,
  });

  TransitObject.fromJson(core.Map json_)
      : this(
          activationStatus: json_.containsKey('activationStatus')
              ? ActivationStatus.fromJson(json_['activationStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          appLinkData: json_.containsKey('appLinkData')
              ? AppLinkData.fromJson(
                  json_['appLinkData'] as core.Map<core.String, core.dynamic>)
              : null,
          barcode: json_.containsKey('barcode')
              ? Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          classId: json_['classId'] as core.String?,
          classReference: json_.containsKey('classReference')
              ? TransitClass.fromJson(json_['classReference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          concessionCategory: json_['concessionCategory'] as core.String?,
          customConcessionCategory:
              json_.containsKey('customConcessionCategory')
                  ? LocalizedString.fromJson(json_['customConcessionCategory']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          customTicketStatus: json_.containsKey('customTicketStatus')
              ? LocalizedString.fromJson(json_['customTicketStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          deviceContext: json_.containsKey('deviceContext')
              ? DeviceContext.fromJson(
                  json_['deviceContext'] as core.Map<core.String, core.dynamic>)
              : null,
          disableExpirationNotification:
              json_['disableExpirationNotification'] as core.bool?,
          groupingInfo: json_.containsKey('groupingInfo')
              ? GroupingInfo.fromJson(
                  json_['groupingInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          hasLinkedDevice: json_['hasLinkedDevice'] as core.bool?,
          hasUsers: json_['hasUsers'] as core.bool?,
          heroImage: json_.containsKey('heroImage')
              ? Image.fromJson(
                  json_['heroImage'] as core.Map<core.String, core.dynamic>)
              : null,
          hexBackgroundColor: json_['hexBackgroundColor'] as core.String?,
          id: json_['id'] as core.String?,
          imageModulesData: (json_['imageModulesData'] as core.List?)
              ?.map((value) => ImageModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          infoModuleData: json_.containsKey('infoModuleData')
              ? InfoModuleData.fromJson(json_['infoModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          linkedObjectIds: (json_['linkedObjectIds'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          linksModuleData: json_.containsKey('linksModuleData')
              ? LinksModuleData.fromJson(json_['linksModuleData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          locations: (json_['locations'] as core.List?)
              ?.map((value) => LatLongPoint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          merchantLocations: (json_['merchantLocations'] as core.List?)
              ?.map((value) => MerchantLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          messages: (json_['messages'] as core.List?)
              ?.map((value) => Message.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          notifyPreference: json_['notifyPreference'] as core.String?,
          passConstraints: json_.containsKey('passConstraints')
              ? PassConstraints.fromJson(json_['passConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
          passengerNames: json_['passengerNames'] as core.String?,
          passengerType: json_['passengerType'] as core.String?,
          purchaseDetails: json_.containsKey('purchaseDetails')
              ? PurchaseDetails.fromJson(json_['purchaseDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rotatingBarcode: json_.containsKey('rotatingBarcode')
              ? RotatingBarcode.fromJson(json_['rotatingBarcode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          saveRestrictions: json_.containsKey('saveRestrictions')
              ? SaveRestrictions.fromJson(json_['saveRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          smartTapRedemptionValue:
              json_['smartTapRedemptionValue'] as core.String?,
          state: json_['state'] as core.String?,
          textModulesData: (json_['textModulesData'] as core.List?)
              ?.map((value) => TextModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          ticketLeg: json_.containsKey('ticketLeg')
              ? TicketLeg.fromJson(
                  json_['ticketLeg'] as core.Map<core.String, core.dynamic>)
              : null,
          ticketLegs: (json_['ticketLegs'] as core.List?)
              ?.map((value) => TicketLeg.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          ticketNumber: json_['ticketNumber'] as core.String?,
          ticketRestrictions: json_.containsKey('ticketRestrictions')
              ? TicketRestrictions.fromJson(json_['ticketRestrictions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ticketStatus: json_['ticketStatus'] as core.String?,
          tripId: json_['tripId'] as core.String?,
          tripType: json_['tripType'] as core.String?,
          validTimeInterval: json_.containsKey('validTimeInterval')
              ? TimeInterval.fromJson(json_['validTimeInterval']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueAddedModuleData: (json_['valueAddedModuleData'] as core.List?)
              ?.map((value) => ValueAddedModuleData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationStatus != null) 'activationStatus': activationStatus!,
        if (appLinkData != null) 'appLinkData': appLinkData!,
        if (barcode != null) 'barcode': barcode!,
        if (classId != null) 'classId': classId!,
        if (classReference != null) 'classReference': classReference!,
        if (concessionCategory != null)
          'concessionCategory': concessionCategory!,
        if (customConcessionCategory != null)
          'customConcessionCategory': customConcessionCategory!,
        if (customTicketStatus != null)
          'customTicketStatus': customTicketStatus!,
        if (deviceContext != null) 'deviceContext': deviceContext!,
        if (disableExpirationNotification != null)
          'disableExpirationNotification': disableExpirationNotification!,
        if (groupingInfo != null) 'groupingInfo': groupingInfo!,
        if (hasLinkedDevice != null) 'hasLinkedDevice': hasLinkedDevice!,
        if (hasUsers != null) 'hasUsers': hasUsers!,
        if (heroImage != null) 'heroImage': heroImage!,
        if (hexBackgroundColor != null)
          'hexBackgroundColor': hexBackgroundColor!,
        if (id != null) 'id': id!,
        if (imageModulesData != null) 'imageModulesData': imageModulesData!,
        if (infoModuleData != null) 'infoModuleData': infoModuleData!,
        if (linkedObjectIds != null) 'linkedObjectIds': linkedObjectIds!,
        if (linksModuleData != null) 'linksModuleData': linksModuleData!,
        if (locations != null) 'locations': locations!,
        if (merchantLocations != null) 'merchantLocations': merchantLocations!,
        if (messages != null) 'messages': messages!,
        if (notifyPreference != null) 'notifyPreference': notifyPreference!,
        if (passConstraints != null) 'passConstraints': passConstraints!,
        if (passengerNames != null) 'passengerNames': passengerNames!,
        if (passengerType != null) 'passengerType': passengerType!,
        if (purchaseDetails != null) 'purchaseDetails': purchaseDetails!,
        if (rotatingBarcode != null) 'rotatingBarcode': rotatingBarcode!,
        if (saveRestrictions != null) 'saveRestrictions': saveRestrictions!,
        if (smartTapRedemptionValue != null)
          'smartTapRedemptionValue': smartTapRedemptionValue!,
        if (state != null) 'state': state!,
        if (textModulesData != null) 'textModulesData': textModulesData!,
        if (ticketLeg != null) 'ticketLeg': ticketLeg!,
        if (ticketLegs != null) 'ticketLegs': ticketLegs!,
        if (ticketNumber != null) 'ticketNumber': ticketNumber!,
        if (ticketRestrictions != null)
          'ticketRestrictions': ticketRestrictions!,
        if (ticketStatus != null) 'ticketStatus': ticketStatus!,
        if (tripId != null) 'tripId': tripId!,
        if (tripType != null) 'tripType': tripType!,
        if (validTimeInterval != null) 'validTimeInterval': validTimeInterval!,
        if (valueAddedModuleData != null)
          'valueAddedModuleData': valueAddedModuleData!,
        if (version != null) 'version': version!,
      };
}

class TransitObjectAddMessageResponse {
  /// The updated TransitObject resource.
  TransitObject? resource;

  TransitObjectAddMessageResponse({
    this.resource,
  });

  TransitObjectAddMessageResponse.fromJson(core.Map json_)
      : this(
          resource: json_.containsKey('resource')
              ? TransitObject.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resource != null) 'resource': resource!,
      };
}

class TransitObjectListResponse {
  /// Pagination of the response.
  Pagination? pagination;

  /// Resources corresponding to the list request.
  core.List<TransitObject>? resources;

  TransitObjectListResponse({
    this.pagination,
    this.resources,
  });

  TransitObjectListResponse.fromJson(core.Map json_)
      : this(
          pagination: json_.containsKey('pagination')
              ? Pagination.fromJson(
                  json_['pagination'] as core.Map<core.String, core.dynamic>)
              : null,
          resources: (json_['resources'] as core.List?)
              ?.map((value) => TransitObject.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagination != null) 'pagination': pagination!,
        if (resources != null) 'resources': resources!,
      };
}

/// Request to upload rotating barcode values.
class TransitObjectUploadRotatingBarcodeValuesRequest {
  /// A reference to the rotating barcode values payload that was uploaded.
  Media? blob;

  /// Extra information about the uploaded media.
  MediaRequestInfo? mediaRequestInfo;

  TransitObjectUploadRotatingBarcodeValuesRequest({
    this.blob,
    this.mediaRequestInfo,
  });

  TransitObjectUploadRotatingBarcodeValuesRequest.fromJson(core.Map json_)
      : this(
          blob: json_.containsKey('blob')
              ? Media.fromJson(
                  json_['blob'] as core.Map<core.String, core.dynamic>)
              : null,
          mediaRequestInfo: json_.containsKey('mediaRequestInfo')
              ? MediaRequestInfo.fromJson(json_['mediaRequestInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blob != null) 'blob': blob!,
        if (mediaRequestInfo != null) 'mediaRequestInfo': mediaRequestInfo!,
      };
}

/// Response for uploading rotating barcode values.
typedef TransitObjectUploadRotatingBarcodeValuesResponse = $Empty;

class TranslatedString {
  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#translatedString"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Represents the BCP 47 language tag.
  ///
  /// Example values are "en-US", "en-GB", "de", or "de-AT".
  core.String? language;

  /// The UTF-8 encoded translated string.
  core.String? value;

  TranslatedString({
    this.kind,
    this.language,
    this.value,
  });

  TranslatedString.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          language: json_['language'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (language != null) 'language': language!,
        if (value != null) 'value': value!,
      };
}

/// Indicates that the issuer would like Google Wallet to send an upcoming card
/// validity notification 1 day before card becomes valid/usable.
class UpcomingNotification {
  /// Indicates if the object needs to have upcoming notification enabled.
  core.bool? enableNotification;

  UpcomingNotification({
    this.enableNotification,
  });

  UpcomingNotification.fromJson(core.Map json_)
      : this(
          enableNotification: json_['enableNotification'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableNotification != null)
          'enableNotification': enableNotification!,
      };
}

class Uri {
  /// The URI's title appearing in the app as text.
  ///
  /// Recommended maximum is 20 characters to ensure full string is displayed on
  /// smaller screens. Note that in some contexts this text is not used, such as
  /// when `description` is part of an image.
  core.String? description;

  /// The ID associated with a uri.
  ///
  /// This field is here to enable ease of management of uris.
  core.String? id;

  /// Identifies what kind of resource this is.
  ///
  /// Value: the fixed string `"walletobjects#uri"`.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? kind;

  /// Translated strings for the description.
  ///
  /// Recommended maximum is 20 characters to ensure full string is displayed on
  /// smaller screens.
  LocalizedString? localizedDescription;

  /// The location of a web page, image, or other resource.
  ///
  /// URIs in the `LinksModuleData` module can have different prefixes
  /// indicating the type of URI (a link to a web page, a link to a map, a
  /// telephone number, or an email address). URIs must have a scheme.
  core.String? uri;

  Uri({
    this.description,
    this.id,
    this.kind,
    this.localizedDescription,
    this.uri,
  });

  Uri.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          id: json_['id'] as core.String?,
          kind: json_['kind'] as core.String?,
          localizedDescription: json_.containsKey('localizedDescription')
              ? LocalizedString.fromJson(json_['localizedDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (id != null) 'id': id!,
        if (kind != null) 'kind': kind!,
        if (localizedDescription != null)
          'localizedDescription': localizedDescription!,
        if (uri != null) 'uri': uri!,
      };
}

/// Data for Value Added module.
///
/// Required fields are header and uri.
class ValueAddedModuleData {
  /// Body to be displayed on the module.
  ///
  /// Character limit is 50 and longer strings will be truncated.
  LocalizedString? body;

  /// Header to be displayed on the module.
  ///
  /// Character limit is 60 and longer strings will be truncated.
  LocalizedString? header;

  /// Image to be displayed on the module.
  ///
  /// Recommended image ratio is 1:1. Images will be resized to fit this ratio.
  Image? image;

  /// The index for sorting the modules.
  ///
  /// Modules with a lower sort index are shown before modules with a higher
  /// sort index. If unspecified, the sort index is assumed to be INT_MAX. For
  /// two modules with the same index, the sorting behavior is undefined.
  core.int? sortIndex;

  /// URI that the module leads to on click.
  ///
  /// This can be a web link or a deep link as mentioned in
  /// https://developer.android.com/training/app-links/deep-linking.
  core.String? uri;

  /// Constraints that all must be met for the module to be shown.
  ModuleViewConstraints? viewConstraints;

  ValueAddedModuleData({
    this.body,
    this.header,
    this.image,
    this.sortIndex,
    this.uri,
    this.viewConstraints,
  });

  ValueAddedModuleData.fromJson(core.Map json_)
      : this(
          body: json_.containsKey('body')
              ? LocalizedString.fromJson(
                  json_['body'] as core.Map<core.String, core.dynamic>)
              : null,
          header: json_.containsKey('header')
              ? LocalizedString.fromJson(
                  json_['header'] as core.Map<core.String, core.dynamic>)
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          sortIndex: json_['sortIndex'] as core.int?,
          uri: json_['uri'] as core.String?,
          viewConstraints: json_.containsKey('viewConstraints')
              ? ModuleViewConstraints.fromJson(json_['viewConstraints']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (body != null) 'body': body!,
        if (header != null) 'header': header!,
        if (image != null) 'image': image!,
        if (sortIndex != null) 'sortIndex': sortIndex!,
        if (uri != null) 'uri': uri!,
        if (viewConstraints != null) 'viewConstraints': viewConstraints!,
      };
}
