// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis.kgsearch.v1;

import 'dart:core' as core;
import 'dart:async' as async;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client kgsearch/v1';

/// Searches the Google Knowledge Graph for entities.
class KgsearchApi {
  final commons.ApiRequester _requester;

  EntitiesResourceApi get entities => EntitiesResourceApi(_requester);

  KgsearchApi(http.Client client,
      {core.String rootUrl = 'https://kgsearch.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class EntitiesResourceApi {
  final commons.ApiRequester _requester;

  EntitiesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Searches Knowledge Graph for entities that match the constraints. A list
  /// of matched entities will be returned in response, which will be in JSON-LD
  /// format and compatible with http://schema.org
  ///
  /// Request parameters:
  ///
  /// [ids] - The list of entity id to be used for search instead of query
  /// string. To specify multiple ids in the HTTP request, repeat the parameter
  /// in the URL as in ...?ids=A&ids=B
  ///
  /// [types] - Restricts returned entities with these types, e.g. Person (as
  /// defined in http://schema.org/Person). If multiple types are specified,
  /// returned entities will contain one or more of these types.
  ///
  /// [query] - The literal query string for search.
  ///
  /// [prefix] - Enables prefix match against names and aliases of entities
  ///
  /// [indent] - Enables indenting of json results.
  ///
  /// [limit] - Limits the number of entities to be returned.
  ///
  /// [languages] - The list of language codes (defined in ISO 693) to run the
  /// query with, e.g. 'en'.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchResponse> search({
    core.List<core.String> ids,
    core.List<core.String> types,
    core.String query,
    core.bool prefix,
    core.bool indent,
    core.int limit,
    core.List<core.String> languages,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (ids != null) {
      _queryParams['ids'] = ids;
    }
    if (types != null) {
      _queryParams['types'] = types;
    }
    if (query != null) {
      _queryParams['query'] = [query];
    }
    if (prefix != null) {
      _queryParams['prefix'] = ['${prefix}'];
    }
    if (indent != null) {
      _queryParams['indent'] = ['${indent}'];
    }
    if (limit != null) {
      _queryParams['limit'] = ['${limit}'];
    }
    if (languages != null) {
      _queryParams['languages'] = languages;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/entities:search';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SearchResponse.fromJson(data));
  }
}

/// Response message includes the context and a list of matching results which
/// contain the detail of associated entities.
class SearchResponse {
  /// The local context applicable for the response. See more details at
  /// http://www.w3.org/TR/json-ld/#context-definitions.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object P_context;

  /// The schema type of top-level JSON-LD object, e.g. ItemList.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object P_type;

  /// The item list of search results.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> itemListElement;

  SearchResponse();

  SearchResponse.fromJson(core.Map _json) {
    if (_json.containsKey('@context')) {
      P_context = _json['@context'];
    }
    if (_json.containsKey('@type')) {
      P_type = _json['@type'];
    }
    if (_json.containsKey('itemListElement')) {
      itemListElement =
          (_json['itemListElement'] as core.List).cast<core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (P_context != null) {
      _json['@context'] = P_context;
    }
    if (P_type != null) {
      _json['@type'] = P_type;
    }
    if (itemListElement != null) {
      _json['itemListElement'] = itemListElement;
    }
    return _json;
  }
}
