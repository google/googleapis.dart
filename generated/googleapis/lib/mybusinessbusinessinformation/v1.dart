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

/// My Business Business Information API - v1
///
/// The My Business Business Information API provides an interface for managing
/// business information on Google.
///
/// For more information, see <https://developers.google.com/my-business/>
///
/// Create an instance of [MyBusinessBusinessInformationApi] to access these
/// resources:
///
/// - [AccountsResource]
///   - [AccountsLocationsResource]
/// - [AttributesResource]
/// - [CategoriesResource]
/// - [ChainsResource]
/// - [GoogleLocationsResource]
/// - [LocationsResource]
///   - [LocationsAttributesResource]
library mybusinessbusinessinformation.v1;

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

/// The My Business Business Information API provides an interface for managing
/// business information on Google.
class MyBusinessBusinessInformationApi {
  final commons.ApiRequester _requester;

  AccountsResource get accounts => AccountsResource(_requester);
  AttributesResource get attributes => AttributesResource(_requester);
  CategoriesResource get categories => CategoriesResource(_requester);
  ChainsResource get chains => ChainsResource(_requester);
  GoogleLocationsResource get googleLocations =>
      GoogleLocationsResource(_requester);
  LocationsResource get locations => LocationsResource(_requester);

  MyBusinessBusinessInformationApi(http.Client client,
      {core.String rootUrl =
          'https://mybusinessbusinessinformation.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class AccountsResource {
  final commons.ApiRequester _requester;

  AccountsLocationsResource get locations =>
      AccountsLocationsResource(_requester);

  AccountsResource(commons.ApiRequester client) : _requester = client;
}

class AccountsLocationsResource {
  final commons.ApiRequester _requester;

  AccountsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a new Location that will be owned by the logged in user.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the account in which to create this
  /// location.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique request ID for the server to detect
  /// duplicated requests. We recommend using UUIDs. Max length is 50
  /// characters.
  ///
  /// [validateOnly] - Optional. If true, the request is validated without
  /// actually creating the location.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> create(
    Location request,
    core.String parent, {
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/locations';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the locations for the specified account.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the account to fetch locations from. If
  /// the parent Account is of AccountType PERSONAL, only Locations that are
  /// directly owned by the Account are returned, otherwise it will return all
  /// accessible locations from the Account, either directly or indirectly.
  /// Value must have pattern `^accounts/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter constraining the locations to return. The
  /// response includes only entries that match the filter. If `filter` is
  /// empty, then constraints are applied and all locations (paginated) are
  /// retrieved for the requested account. For more information about valid
  /// fields and example usage, see
  /// [Work with Location Data Guide](https://developers.google.com/my-business/content/location-data#filter_results_when_you_list_locations).
  ///
  /// [orderBy] - Optional. Sorting order for the request. Multiple fields
  /// should be comma-separated, following SQL syntax. The default sorting order
  /// is ascending. To specify descending order, a suffix " desc" should be
  /// added. Valid fields to order_by are title and store_code. For example:
  /// "title, store_code desc" or "title" or "store_code desc"
  ///
  /// [pageSize] - Optional. How many locations to fetch per page. Default value
  /// is 10 if not set. Minimum is 1, and maximum page size is 100.
  ///
  /// [pageToken] - Optional. If specified, it fetches the next `page` of
  /// locations. The page token is returned by previous calls to `ListLocations`
  /// when there were more locations than could fit in the requested page size.
  ///
  /// [readMask] - Required. Read mask to specify what fields will be returned
  /// in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class AttributesResource {
  final commons.ApiRequester _requester;

  AttributesResource(commons.ApiRequester client) : _requester = client;

  /// Returns the list of attributes that would be available for a location with
  /// the given primary category and country.
  ///
  /// Request parameters:
  ///
  /// [categoryName] - The primary category stable ID to find available
  /// attributes. Must be of the format categories/{category_id}.
  ///
  /// [languageCode] - The BCP 47 code of language to get attribute display
  /// names in. If this language is not available, they will be provided in
  /// English.
  ///
  /// [pageSize] - How many attributes to include per page. Default is 200,
  /// minimum is 1.
  ///
  /// [pageToken] - If specified, the next page of attribute metadata is
  /// retrieved.
  ///
  /// [parent] - Resource name of the location to look up available attributes.
  /// If this field is set, category_name, region_code, language_code and
  /// show_all are not required and must not be set.
  ///
  /// [regionCode] - The ISO 3166-1 alpha-2 country code to find available
  /// attributes.
  ///
  /// [showAll] - Metadata for all available attributes are returned when this
  /// field is set to true, disregarding parent and category_name fields.
  /// language_code and region_code are required when show_all is set to true.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAttributeMetadataResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAttributeMetadataResponse> list({
    core.String? categoryName,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? parent,
    core.String? regionCode,
    core.bool? showAll,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (categoryName != null) 'categoryName': [categoryName],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (parent != null) 'parent': [parent],
      if (regionCode != null) 'regionCode': [regionCode],
      if (showAll != null) 'showAll': ['${showAll}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/attributes';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAttributeMetadataResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class CategoriesResource {
  final commons.ApiRequester _requester;

  CategoriesResource(commons.ApiRequester client) : _requester = client;

  /// Returns a list of business categories for the provided language and
  /// GConcept ids.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - Required. The BCP 47 code of language that the category
  /// names should be returned in.
  ///
  /// [names] - Required. At least one name must be set. The GConcept ids the
  /// localized category names should be returned for. To return details for
  /// more than one category, repeat this parameter in the request.
  ///
  /// [regionCode] - Optional. The ISO 3166-1 alpha-2 country code used to infer
  /// non-standard language.
  ///
  /// [view] - Required. Specifies which parts to the Category resource should
  /// be returned in the response.
  /// Possible string values are:
  /// - "CATEGORY_VIEW_UNSPECIFIED" : Not specified, equivalent to
  /// CATEGORY_METADATA_ONLY.
  /// - "BASIC" : The server response will only include Category fields
  /// display_name, category_id and language_code. It omits any service type
  /// metadata related fields.
  /// - "FULL" : Returns all the fields in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetCategoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetCategoriesResponse> batchGet({
    core.String? languageCode,
    core.List<core.String>? names,
    core.String? regionCode,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if (names != null) 'names': names,
      if (regionCode != null) 'regionCode': [regionCode],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/categories:batchGet';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BatchGetCategoriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of business categories.
  ///
  /// Search will match the category name but not the category ID. Search only
  /// matches the front of a category name (that is, 'food' may return 'Food
  /// Court' but not 'Fast Food Restaurant').
  ///
  /// Request parameters:
  ///
  /// [filter] - Optional. Filter string from user. The only field that
  /// supported is `displayName`. Eg: `filter=displayName=foo`.
  ///
  /// [languageCode] - Required. The BCP 47 code of language.
  ///
  /// [pageSize] - Optional. How many categories to fetch per page. Default is
  /// 100, minimum is 1, and maximum page size is 100.
  ///
  /// [pageToken] - Optional. If specified, the next page of categories will be
  /// fetched.
  ///
  /// [regionCode] - Required. The ISO 3166-1 alpha-2 country code.
  ///
  /// [view] - Required. Specifies which parts to the Category resource should
  /// be returned in the response.
  /// Possible string values are:
  /// - "CATEGORY_VIEW_UNSPECIFIED" : Not specified, equivalent to
  /// CATEGORY_METADATA_ONLY.
  /// - "BASIC" : The server response will only include Category fields
  /// display_name, category_id and language_code. It omits any service type
  /// metadata related fields.
  /// - "FULL" : Returns all the fields in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCategoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCategoriesResponse> list({
    core.String? filter,
    core.String? languageCode,
    core.int? pageSize,
    core.String? pageToken,
    core.String? regionCode,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (languageCode != null) 'languageCode': [languageCode],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (regionCode != null) 'regionCode': [regionCode],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/categories';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListCategoriesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ChainsResource {
  final commons.ApiRequester _requester;

  ChainsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the specified chain.
  ///
  /// Returns `NOT_FOUND` if the chain does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The chain's resource name, in the format
  /// `chains/{chain_place_id}`.
  /// Value must have pattern `^chains/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Chain].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Chain> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Chain.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Searches the chain based on chain name.
  ///
  /// Request parameters:
  ///
  /// [chainName] - Required. Search for a chain by its name.
  /// Exact/partial/fuzzy/related queries are supported. Examples: "walmart",
  /// "wal-mart", "walmmmart", "沃尔玛"
  ///
  /// [pageSize] - The maximum number of matched chains to return from this
  /// query. The default is 10. The maximum possible value is 500.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchChainsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchChainsResponse> search({
    core.String? chainName,
    core.int? pageSize,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (chainName != null) 'chainName': [chainName],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/chains:search';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchChainsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class GoogleLocationsResource {
  final commons.ApiRequester _requester;

  GoogleLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Search all of the possible locations that are a match to the specified
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchGoogleLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchGoogleLocationsResponse> search(
    SearchGoogleLocationsRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/googleLocations:search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SearchGoogleLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsAttributesResource get attributes =>
      LocationsAttributesResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;

  /// Associates a location to a place ID.
  ///
  /// Any previous association is overwritten. This operation is only valid if
  /// the location is unverified. The association must be valid, that is, it
  /// appears in the list of `SearchGoogleLocations`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the location to associate.
  /// Value must have pattern `^locations/\[^/\]+$`.
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
  async.Future<Empty> associate(
    AssociateLocationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':associate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Clears an association between a location and its place ID.
  ///
  /// This operation is only valid if the location is unverified.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the location to disassociate.
  /// Value must have pattern `^locations/\[^/\]+$`.
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
  async.Future<Empty> clearLocationAssociation(
    ClearLocationAssociationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$name') + ':clearLocationAssociation';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a location.
  ///
  /// If this location cannot be deleted using the API and it is marked so in
  /// the `google.mybusiness.businessinformation.v1.LocationState`, use the
  /// [Google Business Profile](https://business.google.com/manage/) website.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the location to delete.
  /// Value must have pattern `^locations/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the specified location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the location to fetch.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [readMask] - Required. Read mask to specify what fields will be returned
  /// in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
    core.String name, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up all the attributes set for a given location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Google identifier for this location in the form of
  /// `locations/{location_id}/attributes`.
  /// Value must have pattern `^locations/\[^/\]+/attributes$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attributes> getAttributes(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Attributes.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the Google-updated version of the specified location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the location to fetch.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [readMask] - Required. Read mask to specify what fields will be returned
  /// in the response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleUpdatedLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleUpdatedLocation> getGoogleUpdated(
    core.String name, {
    core.String? readMask,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':getGoogleUpdated';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleUpdatedLocation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the specified location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Google identifier for this location in the form:
  /// `locations/{location_id}`.
  /// Value must have pattern `^locations/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The specific fields to update.
  ///
  /// [validateOnly] - Optional. If true, the request is validated without
  /// actually updating the location. When this field is set, we will only
  /// return validation errors if there were any. The response will be empty if
  /// no errors were found.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> patch(
    Location request,
    core.String name, {
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Update attributes for a given location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Google identifier for this location in the form of
  /// `locations/{location_id}/attributes`.
  /// Value must have pattern `^locations/\[^/\]+/attributes$`.
  ///
  /// [attributeMask] - Required. Attribute name of attributes that you'd like
  /// to update. Represented by `attributes/{attribute}`. Updates: All
  /// attributes provided in the attributes field that you would like to update
  /// must be set in the `attribute_mask`. Attributes set in the above list but
  /// not in the `attribute_mask` will be ignored. Deletes: If you'd like to
  /// delete certain attributes, they must be specified in the `attribute_mask`
  /// with no matching entry in the attributes list. If you'd like to delete all
  /// attributes set on a location, you should look up all the applicable
  /// attributes for the location and then add them to the `attribute_mask` with
  /// an empty attributes field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attributes> updateAttributes(
    Attributes request,
    core.String name, {
    core.String? attributeMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (attributeMask != null) 'attributeMask': [attributeMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Attributes.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class LocationsAttributesResource {
  final commons.ApiRequester _requester;

  LocationsAttributesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the Google-updated version of the specified location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Google identifier for this location in the form of
  /// `locations/{location_id}/attributes`.
  /// Value must have pattern `^locations/\[^/\]+/attributes$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Attributes].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Attributes> getGoogleUpdated(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':getGoogleUpdated';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Attributes.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Additional information that is surfaced in AdWords.
class AdWordsLocationExtensions {
  /// An alternate phone number to display on AdWords location extensions
  /// instead of the location's primary phone number.
  ///
  /// Required.
  core.String? adPhone;

  AdWordsLocationExtensions({
    this.adPhone,
  });

  AdWordsLocationExtensions.fromJson(core.Map _json)
      : this(
          adPhone: _json.containsKey('adPhone')
              ? _json['adPhone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adPhone != null) 'adPhone': adPhone!,
      };
}

/// Request message for Locations.AssociateLocationRequest.
class AssociateLocationRequest {
  /// The association to establish.
  ///
  /// If not set, it indicates no match.
  core.String? placeId;

  AssociateLocationRequest({
    this.placeId,
  });

  AssociateLocationRequest.fromJson(core.Map _json)
      : this(
          placeId: _json.containsKey('placeId')
              ? _json['placeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placeId != null) 'placeId': placeId!,
      };
}

/// A location attribute.
///
/// Attributes provide additional information about a location. The attributes
/// that can be set on a location may vary based on the properties of that
/// location (for example, category). Available attributes are determined by
/// Google and may be added and removed without API changes.
class Attribute {
  /// The resource name for this attribute.
  ///
  /// Required.
  core.String? name;

  /// When the attribute value type is REPEATED_ENUM, this contains the
  /// attribute value, and the other values fields must be empty.
  RepeatedEnumAttributeValue? repeatedEnumValue;

  /// When the attribute value type is URL, this field contains the value(s) for
  /// this attribute, and the other values fields must be empty.
  core.List<UriAttributeValue>? uriValues;

  /// The type of value that this attribute contains.
  ///
  /// This should be used to determine how to interpret the value.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ATTRIBUTE_VALUE_TYPE_UNSPECIFIED" : Not specified.
  /// - "BOOL" : The values for this attribute are boolean values.
  /// - "ENUM" : The attribute has a predetermined list of available values that
  /// can be used. Metadata for this attribute will list these values.
  /// - "URL" : The values for this attribute are URLs.
  /// - "REPEATED_ENUM" : The attribute value is an enum with multiple possible
  /// values that can be explicitly set or unset.
  core.String? valueType;

  /// The values for this attribute.
  ///
  /// The type of the values supplied must match that expected for that
  /// attribute. This is a repeated field where multiple attribute values may be
  /// provided. Attribute types only support one value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? values;

  Attribute({
    this.name,
    this.repeatedEnumValue,
    this.uriValues,
    this.valueType,
    this.values,
  });

  Attribute.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          repeatedEnumValue: _json.containsKey('repeatedEnumValue')
              ? RepeatedEnumAttributeValue.fromJson(_json['repeatedEnumValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uriValues: _json.containsKey('uriValues')
              ? (_json['uriValues'] as core.List)
                  .map((value) => UriAttributeValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
          values:
              _json.containsKey('values') ? _json['values'] as core.List : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (repeatedEnumValue != null) 'repeatedEnumValue': repeatedEnumValue!,
        if (uriValues != null) 'uriValues': uriValues!,
        if (valueType != null) 'valueType': valueType!,
        if (values != null) 'values': values!,
      };
}

/// Metadata for an attribute.
///
/// Contains display information for the attribute, including a localized name
/// and a heading for grouping related attributes together.
class AttributeMetadata {
  /// If true, the attribute is deprecated and should no longer be used.
  ///
  /// If deprecated, updating this attribute will not result in an error, but
  /// updates will not be saved. At some point after being deprecated, the
  /// attribute will be removed entirely and it will become an error.
  core.bool? deprecated;

  /// The localized display name for the attribute, if available; otherwise, the
  /// English display name.
  core.String? displayName;

  /// The localized display name of the group that contains this attribute, if
  /// available; otherwise, the English group name.
  ///
  /// Related attributes are collected into a group and should be displayed
  /// together under the heading given here.
  core.String? groupDisplayName;

  /// The unique identifier for the attribute.
  core.String? parent;

  /// If true, the attribute supports multiple values.
  ///
  /// If false, only a single value should be provided.
  core.bool? repeatable;

  /// For some types of attributes (for example, enums), a list of supported
  /// values and corresponding display names for those values is provided.
  core.List<AttributeValueMetadata>? valueMetadata;

  /// The value type for the attribute.
  ///
  /// Values set and retrieved should be expected to be of this type.
  /// Possible string values are:
  /// - "ATTRIBUTE_VALUE_TYPE_UNSPECIFIED" : Not specified.
  /// - "BOOL" : The values for this attribute are boolean values.
  /// - "ENUM" : The attribute has a predetermined list of available values that
  /// can be used. Metadata for this attribute will list these values.
  /// - "URL" : The values for this attribute are URLs.
  /// - "REPEATED_ENUM" : The attribute value is an enum with multiple possible
  /// values that can be explicitly set or unset.
  core.String? valueType;

  AttributeMetadata({
    this.deprecated,
    this.displayName,
    this.groupDisplayName,
    this.parent,
    this.repeatable,
    this.valueMetadata,
    this.valueType,
  });

  AttributeMetadata.fromJson(core.Map _json)
      : this(
          deprecated: _json.containsKey('deprecated')
              ? _json['deprecated'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          groupDisplayName: _json.containsKey('groupDisplayName')
              ? _json['groupDisplayName'] as core.String
              : null,
          parent: _json.containsKey('parent')
              ? _json['parent'] as core.String
              : null,
          repeatable: _json.containsKey('repeatable')
              ? _json['repeatable'] as core.bool
              : null,
          valueMetadata: _json.containsKey('valueMetadata')
              ? (_json['valueMetadata'] as core.List)
                  .map((value) => AttributeValueMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deprecated != null) 'deprecated': deprecated!,
        if (displayName != null) 'displayName': displayName!,
        if (groupDisplayName != null) 'groupDisplayName': groupDisplayName!,
        if (parent != null) 'parent': parent!,
        if (repeatable != null) 'repeatable': repeatable!,
        if (valueMetadata != null) 'valueMetadata': valueMetadata!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Metadata for supported attribute values.
class AttributeValueMetadata {
  /// The display name for this value, localized where available; otherwise, in
  /// English.
  ///
  /// The value display name is intended to be used in context with the
  /// attribute display name. For example, for a "WiFi" enum attribute, this
  /// could contain "Paid" to represent paid Wi-Fi.
  core.String? displayName;

  /// The attribute value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  AttributeValueMetadata({
    this.displayName,
    this.value,
  });

  AttributeValueMetadata.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          value: _json.containsKey('value') ? _json['value'] : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (value != null) 'value': value!,
      };
}

/// A container for all the attributes for a given location.
class Attributes {
  /// A collection of attributes that need to be updated.
  core.List<Attribute>? attributes;

  /// Google identifier for this location in the form of
  /// `locations/{location_id}/attributes`.
  ///
  /// Required.
  core.String? name;

  Attributes({
    this.attributes,
    this.name,
  });

  Attributes.fromJson(core.Map _json)
      : this(
          attributes: _json.containsKey('attributes')
              ? (_json['attributes'] as core.List)
                  .map((value) => Attribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributes != null) 'attributes': attributes!,
        if (name != null) 'name': name!,
      };
}

/// Response message for BusinessCategories.BatchGetBusinessCategories.
class BatchGetCategoriesResponse {
  /// Categories that match the GConcept ids provided in the request.
  ///
  /// They will not come in the same order as category ids in the request.
  core.List<Category>? categories;

  BatchGetCategoriesResponse({
    this.categories,
  });

  BatchGetCategoriesResponse.fromJson(core.Map _json)
      : this(
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map((value) => Category.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
      };
}

/// Represents the time periods that this location is open for business.
///
/// Holds a collection of TimePeriod instances.
class BusinessHours {
  /// A collection of times that this location is open for business.
  ///
  /// Each period represents a range of hours when the location is open during
  /// the week.
  ///
  /// Required.
  core.List<TimePeriod>? periods;

  BusinessHours({
    this.periods,
  });

  BusinessHours.fromJson(core.Map _json)
      : this(
          periods: _json.containsKey('periods')
              ? (_json['periods'] as core.List)
                  .map((value) => TimePeriod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (periods != null) 'periods': periods!,
      };
}

/// A collection of categories that describes the business.
///
/// During updates, both fields must be set. Clients are prohibited from
/// individually updating the primary or additional categories using the update
/// mask.
class Categories {
  /// Additional categories to describe your business.
  ///
  /// Categories help your customers find accurate, specific results for
  /// services they're interested in. To keep your business information accurate
  /// and live, make sure that you use as few categories as possible to describe
  /// your overall core business. Choose categories that are as specific as
  /// possible, but representative of your main business.
  ///
  /// Optional.
  core.List<Category>? additionalCategories;

  /// Category that best describes the core business this location engages in.
  ///
  /// Required.
  Category? primaryCategory;

  Categories({
    this.additionalCategories,
    this.primaryCategory,
  });

  Categories.fromJson(core.Map _json)
      : this(
          additionalCategories: _json.containsKey('additionalCategories')
              ? (_json['additionalCategories'] as core.List)
                  .map((value) => Category.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          primaryCategory: _json.containsKey('primaryCategory')
              ? Category.fromJson(_json['primaryCategory']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalCategories != null)
          'additionalCategories': additionalCategories!,
        if (primaryCategory != null) 'primaryCategory': primaryCategory!,
      };
}

/// A category describing what this business is (not what it does).
///
/// For a list of valid category IDs, and the mappings to their human-readable
/// names, see `categories.list`.
class Category {
  /// The human-readable name of the category.
  ///
  /// This is set when reading the location. When modifying the location,
  /// `category_id` must be set.
  ///
  /// Output only.
  core.String? displayName;

  /// More hours types that are available for this business category.
  ///
  /// Output only.
  core.List<MoreHoursType>? moreHoursTypes;

  /// A stable ID (provided by Google) for this category.
  ///
  /// The value must be specified when modifying the category (when creating or
  /// updating a location).
  ///
  /// Required.
  core.String? name;

  /// A list of all the service types that are available for this business
  /// category.
  ///
  /// Output only.
  core.List<ServiceType>? serviceTypes;

  Category({
    this.displayName,
    this.moreHoursTypes,
    this.name,
    this.serviceTypes,
  });

  Category.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          moreHoursTypes: _json.containsKey('moreHoursTypes')
              ? (_json['moreHoursTypes'] as core.List)
                  .map((value) => MoreHoursType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          serviceTypes: _json.containsKey('serviceTypes')
              ? (_json['serviceTypes'] as core.List)
                  .map((value) => ServiceType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (moreHoursTypes != null) 'moreHoursTypes': moreHoursTypes!,
        if (name != null) 'name': name!,
        if (serviceTypes != null) 'serviceTypes': serviceTypes!,
      };
}

/// A chain is a brand that your business's locations can be affiliated with.
class Chain {
  /// Names of the chain.
  core.List<ChainName>? chainNames;

  /// Number of locations that are part of this chain.
  core.int? locationCount;

  /// The chain's resource name, in the format `chains/{chain_id}`.
  ///
  /// Required.
  core.String? name;

  /// Websites of the chain.
  core.List<ChainUri>? websites;

  Chain({
    this.chainNames,
    this.locationCount,
    this.name,
    this.websites,
  });

  Chain.fromJson(core.Map _json)
      : this(
          chainNames: _json.containsKey('chainNames')
              ? (_json['chainNames'] as core.List)
                  .map((value) => ChainName.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          locationCount: _json.containsKey('locationCount')
              ? _json['locationCount'] as core.int
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          websites: _json.containsKey('websites')
              ? (_json['websites'] as core.List)
                  .map((value) => ChainUri.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chainNames != null) 'chainNames': chainNames!,
        if (locationCount != null) 'locationCount': locationCount!,
        if (name != null) 'name': name!,
        if (websites != null) 'websites': websites!,
      };
}

/// Name to be used when displaying the chain.
class ChainName {
  /// The display name for this chain.
  core.String? displayName;

  /// The BCP 47 code of language of the name.
  core.String? languageCode;

  ChainName({
    this.displayName,
    this.languageCode,
  });

  ChainName.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Url to be used when displaying the chain.
class ChainUri {
  /// The uri for this chain.
  core.String? uri;

  ChainUri({
    this.uri,
  });

  ChainUri.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Request message for Locations.ClearLocationAssociationRequest.
typedef ClearLocationAssociationRequest = $Empty;

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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Represents a free-form service offered by the merchant.
///
/// These are services that are not exposed as part of our structure service
/// data. The merchant manually enters the names for of such services via a
/// geomerchant surface.
class FreeFormServiceItem {
  /// This field represents the category name (i.e. the category's stable ID).
  ///
  /// The `category` and `service_type_id` should match the possible
  /// combinations provided in the `Category` message.
  ///
  /// Required.
  core.String? category;

  /// Language-tagged labels for the item.
  ///
  /// We recommend that item names be 140 characters or less, and descriptions
  /// 250 characters or less. This field should only be set if the input is a
  /// custom service item. Standardized service types should be updated via
  /// service_type_id.
  ///
  /// Required.
  Label? label;

  FreeFormServiceItem({
    this.category,
    this.label,
  });

  FreeFormServiceItem.fromJson(core.Map _json)
      : this(
          category: _json.containsKey('category')
              ? _json['category'] as core.String
              : null,
          label: _json.containsKey('label')
              ? Label.fromJson(
                  _json['label'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (category != null) 'category': category!,
        if (label != null) 'label': label!,
      };
}

/// Represents a Location that is present on Google.
///
/// This can be a location that has been claimed by the user, someone else, or
/// could be unclaimed.
class GoogleLocation {
  /// The sparsely populated Location information.
  ///
  /// This field can be re-used in CreateLocation if it is not currently claimed
  /// by a user.
  Location? location;

  /// Resource name of this GoogleLocation, in the format
  /// `googleLocations/{googleLocationId}`.
  core.String? name;

  /// A URL that will redirect the user to the request admin rights UI.
  ///
  /// This field is only present if the location has already been claimed by any
  /// user, including the current user.
  core.String? requestAdminRightsUri;

  GoogleLocation({
    this.location,
    this.name,
    this.requestAdminRightsUri,
  });

  GoogleLocation.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? Location.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          requestAdminRightsUri: _json.containsKey('requestAdminRightsUri')
              ? _json['requestAdminRightsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (requestAdminRightsUri != null)
          'requestAdminRightsUri': requestAdminRightsUri!,
      };
}

/// Represents a location that was modified by Google.
class GoogleUpdatedLocation {
  /// The fields that Google updated.
  core.String? diffMask;

  /// The Google-updated version of this location.
  Location? location;

  /// The fields that have pending edits that haven't yet been pushed to Maps
  /// and Search.
  core.String? pendingMask;

  GoogleUpdatedLocation({
    this.diffMask,
    this.location,
    this.pendingMask,
  });

  GoogleUpdatedLocation.fromJson(core.Map _json)
      : this(
          diffMask: _json.containsKey('diffMask')
              ? _json['diffMask'] as core.String
              : null,
          location: _json.containsKey('location')
              ? Location.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
          pendingMask: _json.containsKey('pendingMask')
              ? _json['pendingMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diffMask != null) 'diffMask': diffMask!,
        if (location != null) 'location': location!,
        if (pendingMask != null) 'pendingMask': pendingMask!,
      };
}

/// Label to be used when displaying the price list, section, or item.
class Label {
  /// Description of the price list, section, or item.
  ///
  /// Optional.
  core.String? description;

  /// Display name for the price list, section, or item.
  ///
  /// Required.
  core.String? displayName;

  /// The BCP-47 language code that these strings apply for.
  ///
  /// Only one set of labels may be set per language.
  ///
  /// Optional.
  core.String? languageCode;

  Label({
    this.description,
    this.displayName,
    this.languageCode,
  });

  Label.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// Response for AttributesService.ListAttributeMetadata.
class ListAttributeMetadataResponse {
  /// A collection of attribute metadata for the available attributes.
  core.List<AttributeMetadata>? attributeMetadata;

  /// If the number of attributes exceeded the requested page size, this field
  /// will be populated with a token to fetch the next page of attributes on a
  /// subsequent call to `attributes.list`.
  ///
  /// If there are no more attributes, this field will not be present in the
  /// response.
  core.String? nextPageToken;

  ListAttributeMetadataResponse({
    this.attributeMetadata,
    this.nextPageToken,
  });

  ListAttributeMetadataResponse.fromJson(core.Map _json)
      : this(
          attributeMetadata: _json.containsKey('attributeMetadata')
              ? (_json['attributeMetadata'] as core.List)
                  .map((value) => AttributeMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attributeMetadata != null) 'attributeMetadata': attributeMetadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for BusinessCategories.ListCategories.
class ListCategoriesResponse {
  /// The matching categories based on the requested parameters.
  core.List<Category>? categories;

  /// If the number of categories exceeded the requested page size, this field
  /// will be populated with a token to fetch the next page of categories on a
  /// subsequent call to `ListCategories`.
  core.String? nextPageToken;

  ListCategoriesResponse({
    this.categories,
    this.nextPageToken,
  });

  ListCategoriesResponse.fromJson(core.Map _json)
      : this(
          categories: _json.containsKey('categories')
              ? (_json['categories'] as core.List)
                  .map((value) => Category.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (categories != null) 'categories': categories!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for Locations.ListLocations.
class ListLocationsResponse {
  /// The locations.
  core.List<Location>? locations;

  /// If the number of locations exceeded the requested page size, this field is
  /// populated with a token to fetch the next page of locations on a subsequent
  /// call to `ListLocations`.
  ///
  /// If there are no more locations, this field is not present in the response.
  core.String? nextPageToken;

  /// The approximate number of Locations in the list irrespective of
  /// pagination.
  core.int? totalSize;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
    this.totalSize,
  });

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// A location.
///
/// See the
/// [help center article](https://support.google.com/business/answer/3038177)
/// for a detailed description of these fields, or the \[category
/// endpoint\](/my-business/reference/rest/v4/categories) for a list of valid
/// business categories.
class Location {
  /// Additional information that is surfaced in AdWords.
  ///
  /// Optional.
  AdWordsLocationExtensions? adWordsLocationExtensions;

  /// The different categories that describe the business.
  ///
  /// Optional.
  Categories? categories;

  /// A collection of free-form strings to allow you to tag your business.
  ///
  /// These labels are NOT user facing; only you can see them. Must be between
  /// 1-255 characters per label.
  ///
  /// Optional.
  core.List<core.String>? labels;

  /// The language of the location.
  ///
  /// Set during creation and not updateable.
  ///
  /// Immutable.
  core.String? languageCode;

  /// User-provided latitude and longitude.
  ///
  /// When creating a location, this field is ignored if the provided address
  /// geocodes successfully. This field is only returned on get requests if the
  /// user-provided `latlng` value was accepted during create, or the `latlng`
  /// value was updated through the Google Business Profile website. This field
  /// can only be updated by approved clients.
  ///
  /// Optional.
  LatLng? latlng;

  /// Additional non-user-editable information.
  ///
  /// Output only.
  Metadata? metadata;

  /// More hours for a business's different departments or specific customers.
  ///
  /// Optional.
  core.List<MoreHours>? moreHours;

  /// Google identifier for this location in the form:
  /// `locations/{location_id}`.
  core.String? name;

  /// A flag that indicates whether the location is currently open for business.
  ///
  /// Optional.
  OpenInfo? openInfo;

  /// The different phone numbers that customers can use to get in touch with
  /// the business.
  ///
  /// Optional.
  PhoneNumbers? phoneNumbers;

  /// Describes your business in your own voice and shares with users the unique
  /// story of your business and offerings.
  ///
  /// This field is required for all categories except lodging categories (e.g.
  /// hotels, motels, inns).
  ///
  /// Optional.
  Profile? profile;

  /// Operating hours for the business.
  ///
  /// Optional.
  BusinessHours? regularHours;

  /// All locations and chain related to this one.
  ///
  /// Optional.
  RelationshipData? relationshipData;

  /// Service area businesses provide their service at the customer's location.
  ///
  /// If this business is a service area business, this field describes the
  /// area(s) serviced by the business.
  ///
  /// Optional.
  ServiceAreaBusiness? serviceArea;

  /// List of services supported by merchants.
  ///
  /// A service can be haircut, install water heater, etc. Duplicated service
  /// items will be removed automatically.
  ///
  /// Optional.
  core.List<ServiceItem>? serviceItems;

  /// Special hours for the business.
  ///
  /// This typically includes holiday hours, and other times outside of regular
  /// operating hours. These override regular business hours. This field cannot
  /// be set without regular hours.
  ///
  /// Optional.
  SpecialHours? specialHours;

  /// External identifier for this location, which must be unique within a given
  /// account.
  ///
  /// This is a means of associating the location with your own records.
  ///
  /// Optional.
  core.String? storeCode;

  /// A precise, accurate address to describe your business location.
  ///
  /// PO boxes or mailboxes located at remote locations are not acceptable. At
  /// this time, you can specify a maximum of five `address_lines` values in the
  /// address. This field should only be set for businesses that have a
  /// storefront. This field should not be set for locations of type
  /// `CUSTOMER_LOCATION_ONLY`.
  ///
  /// Optional.
  PostalAddress? storefrontAddress;

  /// Location name should reflect your business's real-world name, as used
  /// consistently on your storefront, website, and stationery, and as known to
  /// customers.
  ///
  /// Any additional information, when relevant, can be included in other fields
  /// of the resource (for example, `Address`, `Categories`). Don't add
  /// unnecessary information to your name (for example, prefer "Google" over
  /// "Google Inc. - Mountain View Corporate Headquarters"). Don't include
  /// marketing taglines, store codes, special characters, hours or closed/open
  /// status, phone numbers, website URLs, service/product information,
  /// location/address or directions, or containment information (for example,
  /// "Chase ATM in Duane Reade").
  ///
  /// Required.
  core.String? title;

  /// A URL for this business.
  ///
  /// If possible, use a URL that represents this individual business location
  /// instead of a generic website/URL that represents all locations, or the
  /// brand.
  ///
  /// Optional.
  core.String? websiteUri;

  Location({
    this.adWordsLocationExtensions,
    this.categories,
    this.labels,
    this.languageCode,
    this.latlng,
    this.metadata,
    this.moreHours,
    this.name,
    this.openInfo,
    this.phoneNumbers,
    this.profile,
    this.regularHours,
    this.relationshipData,
    this.serviceArea,
    this.serviceItems,
    this.specialHours,
    this.storeCode,
    this.storefrontAddress,
    this.title,
    this.websiteUri,
  });

  Location.fromJson(core.Map _json)
      : this(
          adWordsLocationExtensions:
              _json.containsKey('adWordsLocationExtensions')
                  ? AdWordsLocationExtensions.fromJson(
                      _json['adWordsLocationExtensions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          categories: _json.containsKey('categories')
              ? Categories.fromJson(
                  _json['categories'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          latlng: _json.containsKey('latlng')
              ? LatLng.fromJson(
                  _json['latlng'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? Metadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          moreHours: _json.containsKey('moreHours')
              ? (_json['moreHours'] as core.List)
                  .map((value) => MoreHours.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          openInfo: _json.containsKey('openInfo')
              ? OpenInfo.fromJson(
                  _json['openInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          phoneNumbers: _json.containsKey('phoneNumbers')
              ? PhoneNumbers.fromJson(
                  _json['phoneNumbers'] as core.Map<core.String, core.dynamic>)
              : null,
          profile: _json.containsKey('profile')
              ? Profile.fromJson(
                  _json['profile'] as core.Map<core.String, core.dynamic>)
              : null,
          regularHours: _json.containsKey('regularHours')
              ? BusinessHours.fromJson(
                  _json['regularHours'] as core.Map<core.String, core.dynamic>)
              : null,
          relationshipData: _json.containsKey('relationshipData')
              ? RelationshipData.fromJson(_json['relationshipData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          serviceArea: _json.containsKey('serviceArea')
              ? ServiceAreaBusiness.fromJson(
                  _json['serviceArea'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceItems: _json.containsKey('serviceItems')
              ? (_json['serviceItems'] as core.List)
                  .map((value) => ServiceItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          specialHours: _json.containsKey('specialHours')
              ? SpecialHours.fromJson(
                  _json['specialHours'] as core.Map<core.String, core.dynamic>)
              : null,
          storeCode: _json.containsKey('storeCode')
              ? _json['storeCode'] as core.String
              : null,
          storefrontAddress: _json.containsKey('storefrontAddress')
              ? PostalAddress.fromJson(_json['storefrontAddress']
                  as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          websiteUri: _json.containsKey('websiteUri')
              ? _json['websiteUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adWordsLocationExtensions != null)
          'adWordsLocationExtensions': adWordsLocationExtensions!,
        if (categories != null) 'categories': categories!,
        if (labels != null) 'labels': labels!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (latlng != null) 'latlng': latlng!,
        if (metadata != null) 'metadata': metadata!,
        if (moreHours != null) 'moreHours': moreHours!,
        if (name != null) 'name': name!,
        if (openInfo != null) 'openInfo': openInfo!,
        if (phoneNumbers != null) 'phoneNumbers': phoneNumbers!,
        if (profile != null) 'profile': profile!,
        if (regularHours != null) 'regularHours': regularHours!,
        if (relationshipData != null) 'relationshipData': relationshipData!,
        if (serviceArea != null) 'serviceArea': serviceArea!,
        if (serviceItems != null) 'serviceItems': serviceItems!,
        if (specialHours != null) 'specialHours': specialHours!,
        if (storeCode != null) 'storeCode': storeCode!,
        if (storefrontAddress != null) 'storefrontAddress': storefrontAddress!,
        if (title != null) 'title': title!,
        if (websiteUri != null) 'websiteUri': websiteUri!,
      };
}

/// Additional non-user-editable information about the location.
class Metadata {
  /// Indicates whether the location can be deleted using the API.
  ///
  /// Output only.
  core.bool? canDelete;

  /// Indicates if the listing is eligible for business calls.
  ///
  /// Output only.
  core.bool? canHaveBusinessCalls;

  /// Indicates if the listing is eligible for food menu.
  ///
  /// Output only.
  core.bool? canHaveFoodMenus;

  /// Indicates if the listing can modify the service list.
  ///
  /// Output only.
  core.bool? canModifyServiceList;

  /// Indicates whether the location can operate on Health data.
  ///
  /// Output only.
  core.bool? canOperateHealthData;

  /// Indicates if the listing can manage local posts.
  ///
  /// Output only.
  core.bool? canOperateLocalPost;

  /// Indicates whether the location can operate on Lodging data.
  ///
  /// Output only.
  core.bool? canOperateLodgingData;

  /// The location resource that this location duplicates.
  ///
  /// Output only.
  core.String? duplicateLocation;

  /// Indicates whether the place ID associated with this location has updates
  /// that need to be updated or rejected by the client.
  ///
  /// If this boolean is set, you should call the `getGoogleUpdated` method to
  /// lookup information that's needs to be verified.
  ///
  /// Output only.
  core.bool? hasGoogleUpdated;

  /// Indicates whether any of this Location's properties are in the edit
  /// pending state.
  ///
  /// Output only.
  core.bool? hasPendingEdits;

  /// Indicates if the listing has Voice of Merchant.
  ///
  /// If this boolean is false, you should call the
  /// locations.getVoiceOfMerchantState API to get details as to why they do not
  /// have Voice of Merchant.
  ///
  /// Output only.
  core.bool? hasVoiceOfMerchant;

  /// A link to the location on Maps.
  ///
  /// Output only.
  core.String? mapsUri;

  /// A link to the page on Google Search where a customer can leave a review
  /// for the location.
  ///
  /// Output only.
  core.String? newReviewUri;

  /// If this locationappears on Google Maps, this field is populated with the
  /// place ID for the location.
  ///
  /// This ID can be used in various Places APIs. This field can be set during
  /// Create calls, but not for Update.
  ///
  /// Output only.
  core.String? placeId;

  Metadata({
    this.canDelete,
    this.canHaveBusinessCalls,
    this.canHaveFoodMenus,
    this.canModifyServiceList,
    this.canOperateHealthData,
    this.canOperateLocalPost,
    this.canOperateLodgingData,
    this.duplicateLocation,
    this.hasGoogleUpdated,
    this.hasPendingEdits,
    this.hasVoiceOfMerchant,
    this.mapsUri,
    this.newReviewUri,
    this.placeId,
  });

  Metadata.fromJson(core.Map _json)
      : this(
          canDelete: _json.containsKey('canDelete')
              ? _json['canDelete'] as core.bool
              : null,
          canHaveBusinessCalls: _json.containsKey('canHaveBusinessCalls')
              ? _json['canHaveBusinessCalls'] as core.bool
              : null,
          canHaveFoodMenus: _json.containsKey('canHaveFoodMenus')
              ? _json['canHaveFoodMenus'] as core.bool
              : null,
          canModifyServiceList: _json.containsKey('canModifyServiceList')
              ? _json['canModifyServiceList'] as core.bool
              : null,
          canOperateHealthData: _json.containsKey('canOperateHealthData')
              ? _json['canOperateHealthData'] as core.bool
              : null,
          canOperateLocalPost: _json.containsKey('canOperateLocalPost')
              ? _json['canOperateLocalPost'] as core.bool
              : null,
          canOperateLodgingData: _json.containsKey('canOperateLodgingData')
              ? _json['canOperateLodgingData'] as core.bool
              : null,
          duplicateLocation: _json.containsKey('duplicateLocation')
              ? _json['duplicateLocation'] as core.String
              : null,
          hasGoogleUpdated: _json.containsKey('hasGoogleUpdated')
              ? _json['hasGoogleUpdated'] as core.bool
              : null,
          hasPendingEdits: _json.containsKey('hasPendingEdits')
              ? _json['hasPendingEdits'] as core.bool
              : null,
          hasVoiceOfMerchant: _json.containsKey('hasVoiceOfMerchant')
              ? _json['hasVoiceOfMerchant'] as core.bool
              : null,
          mapsUri: _json.containsKey('mapsUri')
              ? _json['mapsUri'] as core.String
              : null,
          newReviewUri: _json.containsKey('newReviewUri')
              ? _json['newReviewUri'] as core.String
              : null,
          placeId: _json.containsKey('placeId')
              ? _json['placeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canDelete != null) 'canDelete': canDelete!,
        if (canHaveBusinessCalls != null)
          'canHaveBusinessCalls': canHaveBusinessCalls!,
        if (canHaveFoodMenus != null) 'canHaveFoodMenus': canHaveFoodMenus!,
        if (canModifyServiceList != null)
          'canModifyServiceList': canModifyServiceList!,
        if (canOperateHealthData != null)
          'canOperateHealthData': canOperateHealthData!,
        if (canOperateLocalPost != null)
          'canOperateLocalPost': canOperateLocalPost!,
        if (canOperateLodgingData != null)
          'canOperateLodgingData': canOperateLodgingData!,
        if (duplicateLocation != null) 'duplicateLocation': duplicateLocation!,
        if (hasGoogleUpdated != null) 'hasGoogleUpdated': hasGoogleUpdated!,
        if (hasPendingEdits != null) 'hasPendingEdits': hasPendingEdits!,
        if (hasVoiceOfMerchant != null)
          'hasVoiceOfMerchant': hasVoiceOfMerchant!,
        if (mapsUri != null) 'mapsUri': mapsUri!,
        if (newReviewUri != null) 'newReviewUri': newReviewUri!,
        if (placeId != null) 'placeId': placeId!,
      };
}

/// Represents an amount of money with its currency type.
typedef Money = $Money;

/// The time periods during which a location is open for certain types of
/// business.
class MoreHours {
  /// Type of hours.
  ///
  /// Clients should call {#link businessCategories:BatchGet} to get supported
  /// hours types for categories of their locations.
  ///
  /// Required.
  core.String? hoursTypeId;

  /// A collection of times that this location is open.
  ///
  /// Each period represents a range of hours when the location is open during
  /// the week.
  ///
  /// Required.
  core.List<TimePeriod>? periods;

  MoreHours({
    this.hoursTypeId,
    this.periods,
  });

  MoreHours.fromJson(core.Map _json)
      : this(
          hoursTypeId: _json.containsKey('hoursTypeId')
              ? _json['hoursTypeId'] as core.String
              : null,
          periods: _json.containsKey('periods')
              ? (_json['periods'] as core.List)
                  .map((value) => TimePeriod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hoursTypeId != null) 'hoursTypeId': hoursTypeId!,
        if (periods != null) 'periods': periods!,
      };
}

/// More hours types that a business can offers, in addition to its regular
/// hours.
class MoreHoursType {
  /// The human-readable English display name for the hours type.
  ///
  /// Output only.
  core.String? displayName;

  /// A stable ID provided by Google for this hours type.
  ///
  /// Output only.
  core.String? hoursTypeId;

  /// The human-readable localized display name for the hours type.
  ///
  /// Output only.
  core.String? localizedDisplayName;

  MoreHoursType({
    this.displayName,
    this.hoursTypeId,
    this.localizedDisplayName,
  });

  MoreHoursType.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          hoursTypeId: _json.containsKey('hoursTypeId')
              ? _json['hoursTypeId'] as core.String
              : null,
          localizedDisplayName: _json.containsKey('localizedDisplayName')
              ? _json['localizedDisplayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (hoursTypeId != null) 'hoursTypeId': hoursTypeId!,
        if (localizedDisplayName != null)
          'localizedDisplayName': localizedDisplayName!,
      };
}

/// Information related to the opening state of the business.
class OpenInfo {
  /// Indicates whether this business is eligible for re-open.
  ///
  /// Output only.
  core.bool? canReopen;

  /// The date on which the location first opened.
  ///
  /// If the exact day is not known, month and year only can be provided. The
  /// date must be in the past or be no more than one year in the future.
  ///
  /// Optional.
  Date? openingDate;

  /// Indicates whether or not the Location is currently open for business.
  ///
  /// All locations are open by default, unless updated to be closed.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OPEN_FOR_BUSINESS_UNSPECIFIED" : Not specified.
  /// - "OPEN" : Indicates that the location is open.
  /// - "CLOSED_PERMANENTLY" : Indicates that the location has been permanently
  /// closed.
  /// - "CLOSED_TEMPORARILY" : Indicates that the location has been temporarily
  /// closed.
  core.String? status;

  OpenInfo({
    this.canReopen,
    this.openingDate,
    this.status,
  });

  OpenInfo.fromJson(core.Map _json)
      : this(
          canReopen: _json.containsKey('canReopen')
              ? _json['canReopen'] as core.bool
              : null,
          openingDate: _json.containsKey('openingDate')
              ? Date.fromJson(
                  _json['openingDate'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canReopen != null) 'canReopen': canReopen!,
        if (openingDate != null) 'openingDate': openingDate!,
        if (status != null) 'status': status!,
      };
}

/// A collection of phone numbers for the business.
///
/// During updates, both fields must be set. Clients may not update just the
/// primary or additional phone numbers using the update mask. International
/// phone format is preferred, such as "+1 415 555 0132", see more in
/// (https://developers.google.com/style/phone-numbers#international-phone-numbers).
class PhoneNumbers {
  /// Up to two phone numbers (mobile or landline, no fax) at which your
  /// business can be called, in addition to your primary phone number.
  ///
  /// Optional.
  core.List<core.String>? additionalPhones;

  /// A phone number that connects to your individual business location as
  /// directly as possible.
  ///
  /// Use a local phone number instead of a central, call center helpline number
  /// whenever possible.
  ///
  /// Required.
  core.String? primaryPhone;

  PhoneNumbers({
    this.additionalPhones,
    this.primaryPhone,
  });

  PhoneNumbers.fromJson(core.Map _json)
      : this(
          additionalPhones: _json.containsKey('additionalPhones')
              ? (_json['additionalPhones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          primaryPhone: _json.containsKey('primaryPhone')
              ? _json['primaryPhone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalPhones != null) 'additionalPhones': additionalPhones!,
        if (primaryPhone != null) 'primaryPhone': primaryPhone!,
      };
}

/// Defines an area that's represented by a place ID.
class PlaceInfo {
  /// The ID of the place.
  ///
  /// Must correspond to a region.
  /// (https://developers.google.com/places/web-service/supported_types#table3)
  ///
  /// Required.
  core.String? placeId;

  /// The localized name of the place.
  ///
  /// For example, `Scottsdale, AZ`.
  ///
  /// Required.
  core.String? placeName;

  PlaceInfo({
    this.placeId,
    this.placeName,
  });

  PlaceInfo.fromJson(core.Map _json)
      : this(
          placeId: _json.containsKey('placeId')
              ? _json['placeId'] as core.String
              : null,
          placeName: _json.containsKey('placeName')
              ? _json['placeName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placeId != null) 'placeId': placeId!,
        if (placeName != null) 'placeName': placeName!,
      };
}

/// Defines the union of areas represented by a set of places.
class Places {
  /// The areas represented by place IDs.
  ///
  /// Limited to a maximum of 20 places.
  core.List<PlaceInfo>? placeInfos;

  Places({
    this.placeInfos,
  });

  Places.fromJson(core.Map _json)
      : this(
          placeInfos: _json.containsKey('placeInfos')
              ? (_json['placeInfos'] as core.List)
                  .map((value) => PlaceInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placeInfos != null) 'placeInfos': placeInfos!,
      };
}

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
typedef PostalAddress = $PostalAddress;

/// All information pertaining to the location's profile.
class Profile {
  /// Description of the location in your own voice, not editable by anyone
  /// else.
  ///
  /// Required.
  core.String? description;

  Profile({
    this.description,
  });

  Profile.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
      };
}

/// Information of all parent and children locations related to this one.
class RelationshipData {
  /// The list of children locations that this location has relations with.
  core.List<RelevantLocation>? childrenLocations;

  /// The resource name of the Chain that this location is member of.
  ///
  /// How to find Chain ID
  core.String? parentChain;

  /// The parent location that this location has relations with.
  RelevantLocation? parentLocation;

  RelationshipData({
    this.childrenLocations,
    this.parentChain,
    this.parentLocation,
  });

  RelationshipData.fromJson(core.Map _json)
      : this(
          childrenLocations: _json.containsKey('childrenLocations')
              ? (_json['childrenLocations'] as core.List)
                  .map((value) => RelevantLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          parentChain: _json.containsKey('parentChain')
              ? _json['parentChain'] as core.String
              : null,
          parentLocation: _json.containsKey('parentLocation')
              ? RelevantLocation.fromJson(_json['parentLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childrenLocations != null) 'childrenLocations': childrenLocations!,
        if (parentChain != null) 'parentChain': parentChain!,
        if (parentLocation != null) 'parentLocation': parentLocation!,
      };
}

/// Information about another location that is related to current one.
///
/// The relation can be any one of DEPARTMENT_OF or
/// INDEPENDENT_ESTABLISHMENT_OF, and the location specified here can be on
/// either side (parent/child) of the location.
class RelevantLocation {
  /// Specify the location that is on the other side of the relation by its
  /// placeID.
  ///
  /// Required.
  core.String? placeId;

  /// The type of the relationship.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RELATION_TYPE_UNSPECIFIED" : Type unspecified.
  /// - "DEPARTMENT_OF" : This represents a relation between 2 locations which
  /// share one physical area, same brand/upper management/organization, but
  /// with different key attributes like store hours or phone numbers. For
  /// example, Costco Pharmacy is a department in Costco Wholesale.
  /// - "INDEPENDENT_ESTABLISHMENT_IN" : This represents the cases where 2
  /// locations are co-located in the same physical location, but from different
  /// companies (e.g. Starbucks in a Safeway, shops in a mall).
  core.String? relationType;

  RelevantLocation({
    this.placeId,
    this.relationType,
  });

  RelevantLocation.fromJson(core.Map _json)
      : this(
          placeId: _json.containsKey('placeId')
              ? _json['placeId'] as core.String
              : null,
          relationType: _json.containsKey('relationType')
              ? _json['relationType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (placeId != null) 'placeId': placeId!,
        if (relationType != null) 'relationType': relationType!,
      };
}

/// Values for an attribute with a `value_type` of REPEATED_ENUM.
///
/// This consists of two lists of value IDs: those that are set (true) and those
/// that are unset (false). Values absent are considered unknown. At least one
/// value must be specified.
class RepeatedEnumAttributeValue {
  /// Enum values that are set.
  core.List<core.String>? setValues;

  /// Enum values that are unset.
  core.List<core.String>? unsetValues;

  RepeatedEnumAttributeValue({
    this.setValues,
    this.unsetValues,
  });

  RepeatedEnumAttributeValue.fromJson(core.Map _json)
      : this(
          setValues: _json.containsKey('setValues')
              ? (_json['setValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          unsetValues: _json.containsKey('unsetValues')
              ? (_json['unsetValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (setValues != null) 'setValues': setValues!,
        if (unsetValues != null) 'unsetValues': unsetValues!,
      };
}

/// Response message for Locations.SearchChains.
class SearchChainsResponse {
  /// Chains that match the queried chain_display_name in SearchChainsRequest.
  ///
  /// If there are no matches, this field will be empty. Results are listed in
  /// order of relevance.
  core.List<Chain>? chains;

  SearchChainsResponse({
    this.chains,
  });

  SearchChainsResponse.fromJson(core.Map _json)
      : this(
          chains: _json.containsKey('chains')
              ? (_json['chains'] as core.List)
                  .map((value) => Chain.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chains != null) 'chains': chains!,
      };
}

/// Request message for GoogleLocations.SearchGoogleLocations.
class SearchGoogleLocationsRequest {
  /// Location to search for.
  ///
  /// If provided, will find locations which match the provided location
  /// details.
  Location? location;

  /// The number of matches to return.
  ///
  /// The default value is 3, with a maximum of 10. Note that latency may
  /// increase if more are requested. There is no pagination.
  core.int? pageSize;

  /// Text query to search for.
  ///
  /// The search results from a query string will be less accurate than if
  /// providing an exact location, but can provide more inexact matches.
  core.String? query;

  SearchGoogleLocationsRequest({
    this.location,
    this.pageSize,
    this.query,
  });

  SearchGoogleLocationsRequest.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? Location.fromJson(
                  _json['location'] as core.Map<core.String, core.dynamic>)
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (query != null) 'query': query!,
      };
}

/// Response message for GoogleLocations.SearchGoogleLocations.
class SearchGoogleLocationsResponse {
  /// A collection of GoogleLocations that are potential matches to the
  /// specified request, listed in order from most to least accuracy.
  core.List<GoogleLocation>? googleLocations;

  SearchGoogleLocationsResponse({
    this.googleLocations,
  });

  SearchGoogleLocationsResponse.fromJson(core.Map _json)
      : this(
          googleLocations: _json.containsKey('googleLocations')
              ? (_json['googleLocations'] as core.List)
                  .map((value) => GoogleLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (googleLocations != null) 'googleLocations': googleLocations!,
      };
}

/// Service area businesses provide their service at the customer's location
/// (for example, a locksmith or plumber).
class ServiceAreaBusiness {
  /// Indicates the type of the service area business.
  ///
  /// Required.
  /// Possible string values are:
  /// - "BUSINESS_TYPE_UNSPECIFIED" : Output only. Not specified.
  /// - "CUSTOMER_LOCATION_ONLY" : Offers service only in the surrounding area
  /// (not at the business address). If a business is being updated from a
  /// CUSTOMER_AND_BUSINESS_LOCATION to a CUSTOMER_LOCATION_ONLY, the location
  /// update must include field mask `storefront_address` and set the field to
  /// empty.
  /// - "CUSTOMER_AND_BUSINESS_LOCATION" : Offers service at the business
  /// address and the surrounding area.
  core.String? businessType;

  /// The area that this business serves defined through a set of places.
  Places? places;

  /// CLDR region code of the country/region that this service area business is
  /// based in.
  ///
  /// See http://cldr.unicode.org/ and
  /// http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland. This field is required for
  /// CUSTOMER_LOCATION_ONLY businesses, and is ignored otherwise. The region
  /// specified here can be different from regions for the areas that this
  /// business serves (e.g. service area businesses that provide services in
  /// regions other than the one that they are based in). If this location
  /// requires verification after creation, the address provided for
  /// verification purposes *must* be located within this region, and the
  /// business owner or their authorized representative *must* be able to
  /// receive postal mail at the provided verification address.
  ///
  /// Immutable.
  core.String? regionCode;

  ServiceAreaBusiness({
    this.businessType,
    this.places,
    this.regionCode,
  });

  ServiceAreaBusiness.fromJson(core.Map _json)
      : this(
          businessType: _json.containsKey('businessType')
              ? _json['businessType'] as core.String
              : null,
          places: _json.containsKey('places')
              ? Places.fromJson(
                  _json['places'] as core.Map<core.String, core.dynamic>)
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (businessType != null) 'businessType': businessType!,
        if (places != null) 'places': places!,
        if (regionCode != null) 'regionCode': regionCode!,
      };
}

/// A message that describes a single service item.
///
/// It is used to describe the type of service that the merchant provides. For
/// example, haircut can be a service.
class ServiceItem {
  /// This field will be set case of free-form services data.
  ///
  /// Optional.
  FreeFormServiceItem? freeFormServiceItem;

  /// Represents the monetary price of the service item.
  ///
  /// We recommend that currency_code and units should be set when including a
  /// price. This will be treated as a fixed price for the service item.
  ///
  /// Optional.
  Money? price;

  /// This field will be set case of structured services data.
  ///
  /// Optional.
  StructuredServiceItem? structuredServiceItem;

  ServiceItem({
    this.freeFormServiceItem,
    this.price,
    this.structuredServiceItem,
  });

  ServiceItem.fromJson(core.Map _json)
      : this(
          freeFormServiceItem: _json.containsKey('freeFormServiceItem')
              ? FreeFormServiceItem.fromJson(_json['freeFormServiceItem']
                  as core.Map<core.String, core.dynamic>)
              : null,
          price: _json.containsKey('price')
              ? Money.fromJson(
                  _json['price'] as core.Map<core.String, core.dynamic>)
              : null,
          structuredServiceItem: _json.containsKey('structuredServiceItem')
              ? StructuredServiceItem.fromJson(_json['structuredServiceItem']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (freeFormServiceItem != null)
          'freeFormServiceItem': freeFormServiceItem!,
        if (price != null) 'price': price!,
        if (structuredServiceItem != null)
          'structuredServiceItem': structuredServiceItem!,
      };
}

/// A message describing a service type that the business offers.
class ServiceType {
  /// The human-readable display name for the service type.
  ///
  /// Output only.
  core.String? displayName;

  /// A stable ID (provided by Google) for this service type.
  ///
  /// Output only.
  core.String? serviceTypeId;

  ServiceType({
    this.displayName,
    this.serviceTypeId,
  });

  ServiceType.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          serviceTypeId: _json.containsKey('serviceTypeId')
              ? _json['serviceTypeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (serviceTypeId != null) 'serviceTypeId': serviceTypeId!,
      };
}

/// Represents a single time period when a location's operational hours differ
/// from its normal business hours.
///
/// A special hour period must represent a range of less than 24 hours. The
/// `open_time` and `start_date` must predate the `close_time` and `end_date`.
/// The `close_time` and `end_date` can extend to 11:59 a.m. on the day after
/// the specified `start_date`. For example, the following inputs are valid:
/// start_date=2015-11-23, open_time=08:00, close_time=18:00
/// start_date=2015-11-23, end_date=2015-11-23, open_time=08:00,
/// close_time=18:00 start_date=2015-11-23, end_date=2015-11-24,
/// open_time=13:00, close_time=11:59 The following inputs are not valid:
/// start_date=2015-11-23, open_time=13:00, close_time=11:59
/// start_date=2015-11-23, end_date=2015-11-24, open_time=13:00,
/// close_time=12:00 start_date=2015-11-23, end_date=2015-11-25,
/// open_time=08:00, close_time=18:00
class SpecialHourPeriod {
  /// Valid values are 00:00-24:00, where 24:00 represents midnight at the end
  /// of the specified day field.
  ///
  /// Must be specified if `closed` is false.
  ///
  /// Optional.
  TimeOfDay? closeTime;

  /// If true, `end_date`, `open_time`, and `close_time` are ignored, and the
  /// date specified in `start_date` is treated as the location being closed for
  /// the entire day.
  ///
  /// Optional.
  core.bool? closed;

  /// The calendar date this special hour period ends on.
  ///
  /// If `end_date` field is not set, default to the date specified in
  /// `start_date`. If set, this field must be equal to or at most 1 day after
  /// `start_date`.
  ///
  /// Optional.
  Date? endDate;

  /// Valid values are 00:00-24:00 where 24:00 represents midnight at the end of
  /// the specified day field.
  ///
  /// Must be specified if `closed` is false.
  ///
  /// Optional.
  TimeOfDay? openTime;

  /// The calendar date this special hour period starts on.
  ///
  /// Required.
  Date? startDate;

  SpecialHourPeriod({
    this.closeTime,
    this.closed,
    this.endDate,
    this.openTime,
    this.startDate,
  });

  SpecialHourPeriod.fromJson(core.Map _json)
      : this(
          closeTime: _json.containsKey('closeTime')
              ? TimeOfDay.fromJson(
                  _json['closeTime'] as core.Map<core.String, core.dynamic>)
              : null,
          closed:
              _json.containsKey('closed') ? _json['closed'] as core.bool : null,
          endDate: _json.containsKey('endDate')
              ? Date.fromJson(
                  _json['endDate'] as core.Map<core.String, core.dynamic>)
              : null,
          openTime: _json.containsKey('openTime')
              ? TimeOfDay.fromJson(
                  _json['openTime'] as core.Map<core.String, core.dynamic>)
              : null,
          startDate: _json.containsKey('startDate')
              ? Date.fromJson(
                  _json['startDate'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (closeTime != null) 'closeTime': closeTime!,
        if (closed != null) 'closed': closed!,
        if (endDate != null) 'endDate': endDate!,
        if (openTime != null) 'openTime': openTime!,
        if (startDate != null) 'startDate': startDate!,
      };
}

/// Represents a set of time periods when a location's operational hours differ
/// from its normal business hours.
class SpecialHours {
  /// A list of exceptions to the business's regular hours.
  ///
  /// Required.
  core.List<SpecialHourPeriod>? specialHourPeriods;

  SpecialHours({
    this.specialHourPeriods,
  });

  SpecialHours.fromJson(core.Map _json)
      : this(
          specialHourPeriods: _json.containsKey('specialHourPeriods')
              ? (_json['specialHourPeriods'] as core.List)
                  .map((value) => SpecialHourPeriod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (specialHourPeriods != null)
          'specialHourPeriods': specialHourPeriods!,
      };
}

/// Represents a structured service offered by the merchant.
///
/// For eg: toilet_installation.
class StructuredServiceItem {
  /// Description of structured service item.
  ///
  /// The character limit is 300.
  ///
  /// Optional.
  core.String? description;

  /// The `service_type_id` field is a Google provided unique ID that can be
  /// found in `ServiceType`.
  ///
  /// This information is provided by `BatchGetCategories` rpc service.
  ///
  /// Required.
  core.String? serviceTypeId;

  StructuredServiceItem({
    this.description,
    this.serviceTypeId,
  });

  StructuredServiceItem.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          serviceTypeId: _json.containsKey('serviceTypeId')
              ? _json['serviceTypeId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (serviceTypeId != null) 'serviceTypeId': serviceTypeId!,
      };
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Represents a span of time that the business is open, starting on the
/// specified open day/time and closing on the specified close day/time.
///
/// The closing time must occur after the opening time, for example later in the
/// same day, or on a subsequent day.
class TimePeriod {
  /// Indicates the day of the week this period ends on.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? closeDay;

  /// Valid values are 00:00-24:00, where 24:00 represents midnight at the end
  /// of the specified day field.
  ///
  /// Required.
  TimeOfDay? closeTime;

  /// Indicates the day of the week this period starts on.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? openDay;

  /// Valid values are 00:00-24:00, where 24:00 represents midnight at the end
  /// of the specified day field.
  ///
  /// Required.
  TimeOfDay? openTime;

  TimePeriod({
    this.closeDay,
    this.closeTime,
    this.openDay,
    this.openTime,
  });

  TimePeriod.fromJson(core.Map _json)
      : this(
          closeDay: _json.containsKey('closeDay')
              ? _json['closeDay'] as core.String
              : null,
          closeTime: _json.containsKey('closeTime')
              ? TimeOfDay.fromJson(
                  _json['closeTime'] as core.Map<core.String, core.dynamic>)
              : null,
          openDay: _json.containsKey('openDay')
              ? _json['openDay'] as core.String
              : null,
          openTime: _json.containsKey('openTime')
              ? TimeOfDay.fromJson(
                  _json['openTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (closeDay != null) 'closeDay': closeDay!,
        if (closeTime != null) 'closeTime': closeTime!,
        if (openDay != null) 'openDay': openDay!,
        if (openTime != null) 'openTime': openTime!,
      };
}

/// Values for an attribute with a `value_type` of URL.
class UriAttributeValue {
  /// The proposed URI value for this attribute.
  ///
  /// Required.
  core.String? uri;

  UriAttributeValue({
    this.uri,
  });

  UriAttributeValue.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}
