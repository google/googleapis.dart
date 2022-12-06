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

/// My Business Place Actions API - v1
///
/// The My Business Place Actions API provides an interface for managing place
/// action links of a location on Google. Note - If you have a quota of 0 after
/// enabling the API, please request for GBP API access.
///
/// For more information, see <https://developers.google.com/my-business/>
///
/// Create an instance of [MyBusinessPlaceActionsApi] to access these resources:
///
/// - [LocationsResource]
///   - [LocationsPlaceActionLinksResource]
/// - [PlaceActionTypeMetadataResource]
library mybusinessplaceactions.v1;

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

/// The My Business Place Actions API provides an interface for managing place
/// action links of a location on Google.
///
/// Note - If you have a quota of 0 after enabling the API, please request for
/// GBP API access.
class MyBusinessPlaceActionsApi {
  final commons.ApiRequester _requester;

  LocationsResource get locations => LocationsResource(_requester);
  PlaceActionTypeMetadataResource get placeActionTypeMetadata =>
      PlaceActionTypeMetadataResource(_requester);

  MyBusinessPlaceActionsApi(http.Client client,
      {core.String rootUrl = 'https://mybusinessplaceactions.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsPlaceActionLinksResource get placeActionLinks =>
      LocationsPlaceActionLinksResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;
}

class LocationsPlaceActionLinksResource {
  final commons.ApiRequester _requester;

  LocationsPlaceActionLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a place action link associated with the specified location, and
  /// returns it.
  ///
  /// The request is considered duplicate if the `parent`,
  /// `place_action_link.uri` and `place_action_link.place_action_type` are the
  /// same as a previous request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the location where to create
  /// this place action link. `locations/{location_id}`.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaceActionLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaceActionLink> create(
    PlaceActionLink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/placeActionLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PlaceActionLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a place action link from the specified location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the place action link to remove
  /// from the location.
  /// Value must have pattern `^locations/\[^/\]+/placeActionLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Empty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Empty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified place action link.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the place action link to fetch.
  /// Value must have pattern `^locations/\[^/\]+/placeActionLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaceActionLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaceActionLink> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PlaceActionLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the place action links for the specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the location whose place action links
  /// will be listed. `locations/{location_id}`.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter constraining the place action links to
  /// return. The response includes entries that match the filter. We support
  /// only the following filter: 1. place_action_type=XYZ where XYZ is a valid
  /// PlaceActionType.
  ///
  /// [pageSize] - Optional. How many place action links to return per page.
  /// Default of 10. The minimum is 1.
  ///
  /// [pageToken] - Optional. If specified, returns the next page of place
  /// action links.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPlaceActionLinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPlaceActionLinksResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/placeActionLinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPlaceActionLinksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified place action link and returns it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Optional. The resource name, in the format
  /// `locations/{location_id}/placeActionLinks/{place_action_link_id}`. The
  /// name field will only be considered in UpdatePlaceActionLink and
  /// DeletePlaceActionLink requests for updating and deleting links
  /// respectively. However, it will be ignored in CreatePlaceActionLink
  /// request, where `place_action_link_id` will be assigned by the server on
  /// successful creation of a new link and returned as part of the response.
  /// Value must have pattern `^locations/\[^/\]+/placeActionLinks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The specific fields to update. The only editable
  /// fields are `uri`, `place_action_type` and `is_preferred`. If the updated
  /// link already exists at the same location with the same `place_action_type`
  /// and `uri`, fails with an `ALREADY_EXISTS` error.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PlaceActionLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PlaceActionLink> patch(
    PlaceActionLink request,
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
    return PlaceActionLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class PlaceActionTypeMetadataResource {
  final commons.ApiRequester _requester;

  PlaceActionTypeMetadataResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the list of available place action types for a location or
  /// country.
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. A filter constraining the place action types to
  /// return metadata for. The response includes entries that match the filter.
  /// We support only the following filters: 1. location=XYZ where XYZ is a
  /// string indicating the resource name of a location, in the format
  /// `locations/{location_id}`. 2. region_code=XYZ where XYZ is a Unicode CLDR
  /// region code to find available action types. If no filter is provided, all
  /// place action types are returned.
  ///
  /// [languageCode] - Optional. The IETF BCP-47 code of language to get display
  /// names in. If this language is not available, they will be provided in
  /// English.
  ///
  /// [pageSize] - Optional. How many action types to include per page. Default
  /// is 10, minimum is 1.
  ///
  /// [pageToken] - Optional. If specified, the next page of place action type
  /// metadata is retrieved. The `pageToken` is returned when a call to
  /// `placeActionTypeMetadata.list` returns more results than can fit into the
  /// requested page size.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPlaceActionTypeMetadataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPlaceActionTypeMetadataResponse> list({
    core.String? filter,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/placeActionTypeMetadata';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPlaceActionTypeMetadataResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Response message for PlaceActions.ListPlaceActionLinks.
class ListPlaceActionLinksResponse {
  /// If there are more place action links than the requested page size, then
  /// this field is populated with a token to fetch the next page of results.
  core.String? nextPageToken;

  /// The returned list of place action links.
  core.List<PlaceActionLink>? placeActionLinks;

  ListPlaceActionLinksResponse({
    this.nextPageToken,
    this.placeActionLinks,
  });

  ListPlaceActionLinksResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          placeActionLinks: json_.containsKey('placeActionLinks')
              ? (json_['placeActionLinks'] as core.List)
                  .map((value) => PlaceActionLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (placeActionLinks != null) 'placeActionLinks': placeActionLinks!,
      };
}

/// Response message for PlaceActions.ListPlaceActionTypeMetadata.
class ListPlaceActionTypeMetadataResponse {
  /// If the number of action types exceeded the requested page size, this field
  /// will be populated with a token to fetch the next page on a subsequent call
  /// to `placeActionTypeMetadata.list`.
  ///
  /// If there are no more results, this field will not be present in the
  /// response.
  core.String? nextPageToken;

  /// A collection of metadata for the available place action types.
  core.List<PlaceActionTypeMetadata>? placeActionTypeMetadata;

  ListPlaceActionTypeMetadataResponse({
    this.nextPageToken,
    this.placeActionTypeMetadata,
  });

  ListPlaceActionTypeMetadataResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          placeActionTypeMetadata: json_.containsKey('placeActionTypeMetadata')
              ? (json_['placeActionTypeMetadata'] as core.List)
                  .map((value) => PlaceActionTypeMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (placeActionTypeMetadata != null)
          'placeActionTypeMetadata': placeActionTypeMetadata!,
      };
}

/// Represents a place action link and its attributes.
class PlaceActionLink {
  /// The time when the place action link was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Indicates whether this link can be edited by the client.
  ///
  /// Output only.
  core.bool? isEditable;

  /// Whether this link is preferred by the merchant.
  ///
  /// Only one link can be marked as preferred per place action type at a
  /// location. If a future request marks a different link as preferred for the
  /// same place action type, then the current preferred link (if any exists)
  /// will lose its preference.
  ///
  /// Optional.
  core.bool? isPreferred;

  /// The resource name, in the format
  /// `locations/{location_id}/placeActionLinks/{place_action_link_id}`.
  ///
  /// The name field will only be considered in UpdatePlaceActionLink and
  /// DeletePlaceActionLink requests for updating and deleting links
  /// respectively. However, it will be ignored in CreatePlaceActionLink
  /// request, where `place_action_link_id` will be assigned by the server on
  /// successful creation of a new link and returned as part of the response.
  ///
  /// Optional.
  core.String? name;

  /// The type of place action that can be performed using this link.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PLACE_ACTION_TYPE_UNSPECIFIED" : Not specified.
  /// - "APPOINTMENT" : The action type is booking an appointment.
  /// - "ONLINE_APPOINTMENT" : The action type is booking an online appointment.
  /// - "DINING_RESERVATION" : The action type is making a dining reservation.
  /// - "FOOD_ORDERING" : The action type is ordering food for delivery and/or
  /// takeout.
  /// - "FOOD_DELIVERY" : The action type is ordering food for delivery.
  /// - "FOOD_TAKEOUT" : The action type is ordering food for takeout.
  /// - "SHOP_ONLINE" : The action type is shopping, that can be delivery and/or
  /// pickup.
  core.String? placeActionType;

  /// Specifies the provider type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROVIDER_TYPE_UNSPECIFIED" : Not specified.
  /// - "MERCHANT" : A 1P provider such as a merchant, or an agency on behalf of
  /// a merchant.
  /// - "AGGREGATOR_3P" : A 3P aggregator, such as a `Reserve with Google`
  /// partner.
  core.String? providerType;

  /// The time when the place action link was last modified.
  ///
  /// Output only.
  core.String? updateTime;

  /// The link uri.
  ///
  /// The same uri can be reused for different action types across different
  /// locations. However, only one place action link is allowed for each unique
  /// combination of (uri, place action type, location).
  ///
  /// Required.
  core.String? uri;

  PlaceActionLink({
    this.createTime,
    this.isEditable,
    this.isPreferred,
    this.name,
    this.placeActionType,
    this.providerType,
    this.updateTime,
    this.uri,
  });

  PlaceActionLink.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          isEditable: json_.containsKey('isEditable')
              ? json_['isEditable'] as core.bool
              : null,
          isPreferred: json_.containsKey('isPreferred')
              ? json_['isPreferred'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          placeActionType: json_.containsKey('placeActionType')
              ? json_['placeActionType'] as core.String
              : null,
          providerType: json_.containsKey('providerType')
              ? json_['providerType'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (isEditable != null) 'isEditable': isEditable!,
        if (isPreferred != null) 'isPreferred': isPreferred!,
        if (name != null) 'name': name!,
        if (placeActionType != null) 'placeActionType': placeActionType!,
        if (providerType != null) 'providerType': providerType!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (uri != null) 'uri': uri!,
      };
}

/// Metadata for supported place action types.
class PlaceActionTypeMetadata {
  /// The localized display name for the attribute, if available; otherwise, the
  /// English display name.
  core.String? displayName;

  /// The place action type.
  /// Possible string values are:
  /// - "PLACE_ACTION_TYPE_UNSPECIFIED" : Not specified.
  /// - "APPOINTMENT" : The action type is booking an appointment.
  /// - "ONLINE_APPOINTMENT" : The action type is booking an online appointment.
  /// - "DINING_RESERVATION" : The action type is making a dining reservation.
  /// - "FOOD_ORDERING" : The action type is ordering food for delivery and/or
  /// takeout.
  /// - "FOOD_DELIVERY" : The action type is ordering food for delivery.
  /// - "FOOD_TAKEOUT" : The action type is ordering food for takeout.
  /// - "SHOP_ONLINE" : The action type is shopping, that can be delivery and/or
  /// pickup.
  core.String? placeActionType;

  PlaceActionTypeMetadata({
    this.displayName,
    this.placeActionType,
  });

  PlaceActionTypeMetadata.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          placeActionType: json_.containsKey('placeActionType')
              ? json_['placeActionType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (placeActionType != null) 'placeActionType': placeActionType!,
      };
}
