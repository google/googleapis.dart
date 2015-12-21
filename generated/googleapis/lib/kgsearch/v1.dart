// This is a generated file (see the discoveryapis_generator project).

library googleapis.kgsearch.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client kgsearch/v1';

/**
 * Knowledge Graph Search API allows developers to search the Google Knowledge
 * Graph for entities.
 */
class KgsearchApi {

  final commons.ApiRequester _requester;

  EntitiesResourceApi get entities => new EntitiesResourceApi(_requester);

  KgsearchApi(http.Client client, {core.String rootUrl: "https://kgsearch.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class EntitiesResourceApi {
  final commons.ApiRequester _requester;

  EntitiesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Searches Knowledge Graph for entities that match the constraints. A list of
   * matched entities will be returned in response, which will be in JSON-LD
   * format and compatible with http://schema.org
   *
   * Request parameters:
   *
   * [query] - The literal query string for search.
   *
   * [ids] - The list of entity id to be used for search instead of query
   * string.
   *
   * [languages] - The list of language codes (defined in ISO 693) to run the
   * query with, e.g. 'en'.
   *
   * [types] - Restricts returned entities with these types, e.g. Person (as
   * defined in http://schema.org/Person).
   *
   * [indent] - Enables indenting of json results.
   *
   * [prefix] - Enables prefix match against names and aliases of entities
   *
   * [limit] - Limits the number of entities to be returned.
   *
   * Completes with a [SearchResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<SearchResponse> search({core.String query, core.List<core.String> ids, core.List<core.String> languages, core.List<core.String> types, core.bool indent, core.bool prefix, core.int limit}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (ids != null) {
      _queryParams["ids"] = ids;
    }
    if (languages != null) {
      _queryParams["languages"] = languages;
    }
    if (types != null) {
      _queryParams["types"] = types;
    }
    if (indent != null) {
      _queryParams["indent"] = ["${indent}"];
    }
    if (prefix != null) {
      _queryParams["prefix"] = ["${prefix}"];
    }
    if (limit != null) {
      _queryParams["limit"] = ["${limit}"];
    }

    _url = 'v1/entities:search';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchResponse.fromJson(data));
  }

}



/**
 * Response message includes the context and a list of matching results which
 * contain the detail of associated entities.
 */
class SearchResponse {
  /**
   * The local context applicable for the response. See more details at
   * http://www.w3.org/TR/json-ld/#context-definitions.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object context;
  /**
   * The item list of search results.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Object> itemListElement;
  /**
   * The schema type of top-level JSON-LD object, e.g. ItemList.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Object type;

  SearchResponse();

  SearchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("context")) {
      context = _json["context"];
    }
    if (_json.containsKey("itemListElement")) {
      itemListElement = _json["itemListElement"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (context != null) {
      _json["context"] = context;
    }
    if (itemListElement != null) {
      _json["itemListElement"] = itemListElement;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}
