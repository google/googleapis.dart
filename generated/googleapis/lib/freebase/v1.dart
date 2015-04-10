// This is a generated file (see the discoveryapis_generator project).

library googleapis.freebase.v1;

import 'dart:core' as core;
import 'dart:collection' as collection;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError, Media, UploadOptions,
    ResumableUploadOptions, DownloadOptions, PartialDownloadOptions,
    ByteRange;

const core.String USER_AGENT = 'dart-api-client freebase/v1';

/** Find Freebase entities using textual queries and other constraints. */
class FreebaseApi {

  final commons.ApiRequester _requester;

  FreebaseApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "freebase/v1/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);

  /**
   * Reconcile entities to Freebase open data.
   *
   * Request parameters:
   *
   * [confidence] - Required confidence for a candidate to match. Must be
   * between .5 and 1.0
   * Value must be between "0.0" and "1.0".
   *
   * [kind] - Classifications of entity e.g. type, category, title.
   *
   * [lang] - Languages for names and values. First language is used for
   * display. Default is 'en'.
   *
   * [limit] - Maximum number of candidates to return.
   * Value must be between "0" and "25".
   *
   * [name] - Name of entity.
   *
   * [prop] - Property values for entity formatted as
   * :
   *
   * Completes with a [ReconcileGet].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ReconcileGet> reconcile({core.double confidence, core.List<core.String> kind, core.List<core.String> lang, core.int limit, core.String name, core.List<core.String> prop}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (confidence != null) {
      _queryParams["confidence"] = ["${confidence}"];
    }
    if (kind != null) {
      _queryParams["kind"] = kind;
    }
    if (lang != null) {
      _queryParams["lang"] = lang;
    }
    if (limit != null) {
      _queryParams["limit"] = ["${limit}"];
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if (prop != null) {
      _queryParams["prop"] = prop;
    }


    _url = 'reconcile';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ReconcileGet.fromJson(data));
  }

  /**
   * Search Freebase open data.
   *
   * Request parameters:
   *
   * [asOfTime] - A mql as_of_time value to use with mql_output queries.
   *
   * [callback] - JS method name for JSONP callbacks.
   * Value must have pattern "([A-Za-z0-9_$.]|\[|\])+".
   *
   * [cursor] - The cursor value to use for the next page of results.
   *
   * [domain] - Restrict to topics with this Freebase domain id.
   *
   * [encode] - The encoding of the response. You can use this parameter to
   * enable html encoding.
   * Possible string values are:
   * - "html" : Encode certain characters in the response (such as tags and
   * ambersands) using html encoding.
   * - "off" : No encoding of the response. You should not print the results
   * directly on an web page without html-escaping the content first.
   *
   * [exact] - Query on exact name and keys only.
   *
   * [filter] - A filter to apply to the query.
   * Value must have pattern "^\(.*\)$".
   *
   * [format] - Structural format of the json response.
   * Possible string values are:
   * - "ac" : Compact format useful for autocomplete/suggest UIs.
   * - "classic" : [DEPRECATED] Same format as was returned by api.freebase.com.
   * - "entity" : Basic information about the entities.
   * - "guids" : [DEPRECATED] Ordered list of a freebase guids.
   * - "ids" : Ordered list of freebase ids.
   * - "mids" : Ordered list of freebase mids.
   *
   * [help] - The keyword to request help on.
   * Possible string values are:
   * - "langs" : The language codes served by the service.
   * - "mappings" : The property/path mappings supported by the filter and
   * output request parameters.
   * - "predicates" : The predicates and path-terminating properties supported
   * by the filter and output request parameters.
   *
   * [indent] - Whether to indent the json results or not.
   *
   * [lang] - The code of the language to run the query with. Default is 'en'.
   *
   * [limit] - Maximum number of results to return.
   *
   * [mid] - A mid to use instead of a query.
   * Value must have pattern "^/[mgtx]/[0-2][0-9bcdfghjklmnpqrstvwxyz_]{1,24}$".
   *
   * [mqlOutput] - The MQL query to run againist the results to extract more
   * data.
   *
   * [output] - An output expression to request data from matches.
   * Value must have pattern "^\(.*\)$".
   *
   * [prefixed] - Prefix match against names and aliases.
   *
   * [query] - Query term to search for.
   *
   * [scoring] - Relevance scoring algorithm to use.
   * Possible string values are:
   * - "entity" : Use freebase and popularity entity ranking.
   * - "freebase" : Use freebase entity ranking.
   * - "schema" : Use schema ranking for properties and types.
   *
   * [spell] - Request 'did you mean' suggestions
   * Possible string values are:
   * - "always" : Request spelling suggestions for any query at least three
   * characters long.
   * - "no_results" : Request spelling suggestions if no results were found.
   * - "no_spelling" : Don't request spelling suggestions.
   *
   * [stemmed] - Query on stemmed names and aliases. May not be used with
   * prefixed.
   *
   * [type] - Restrict to topics with this Freebase type id.
   *
   * [with_] - A rule to match against.
   *
   * [without] - A rule to not match against.
   *
   * [downloadOptions] - Options for downloading. A download can be either a
   * Metadata (default) or Media download. Partial Media downloads are possible
   * as well.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future search({core.String asOfTime, core.String callback, core.int cursor, core.List<core.String> domain, core.String encode, core.bool exact, core.List<core.String> filter, core.String format, core.String help, core.bool indent, core.List<core.String> lang, core.int limit, core.List<core.String> mid, core.String mqlOutput, core.String output, core.bool prefixed, core.String query, core.String scoring, core.String spell, core.bool stemmed, core.List<core.String> type, core.List<core.String> with_, core.List<core.String> without, commons.DownloadOptions downloadOptions: commons.DownloadOptions.Metadata}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (asOfTime != null) {
      _queryParams["as_of_time"] = [asOfTime];
    }
    if (callback != null) {
      _queryParams["callback"] = [callback];
    }
    if (cursor != null) {
      _queryParams["cursor"] = ["${cursor}"];
    }
    if (domain != null) {
      _queryParams["domain"] = domain;
    }
    if (encode != null) {
      _queryParams["encode"] = [encode];
    }
    if (exact != null) {
      _queryParams["exact"] = ["${exact}"];
    }
    if (filter != null) {
      _queryParams["filter"] = filter;
    }
    if (format != null) {
      _queryParams["format"] = [format];
    }
    if (help != null) {
      _queryParams["help"] = [help];
    }
    if (indent != null) {
      _queryParams["indent"] = ["${indent}"];
    }
    if (lang != null) {
      _queryParams["lang"] = lang;
    }
    if (limit != null) {
      _queryParams["limit"] = ["${limit}"];
    }
    if (mid != null) {
      _queryParams["mid"] = mid;
    }
    if (mqlOutput != null) {
      _queryParams["mql_output"] = [mqlOutput];
    }
    if (output != null) {
      _queryParams["output"] = [output];
    }
    if (prefixed != null) {
      _queryParams["prefixed"] = ["${prefixed}"];
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (scoring != null) {
      _queryParams["scoring"] = [scoring];
    }
    if (spell != null) {
      _queryParams["spell"] = [spell];
    }
    if (stemmed != null) {
      _queryParams["stemmed"] = ["${stemmed}"];
    }
    if (type != null) {
      _queryParams["type"] = type;
    }
    if (with_ != null) {
      _queryParams["with"] = with_;
    }
    if (without != null) {
      _queryParams["without"] = without;
    }

    _downloadOptions = downloadOptions;

    _url = 'search';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    if (_downloadOptions == null ||
        _downloadOptions == commons.DownloadOptions.Metadata) {
      return _response.then((data) => null);
    } else {
      return _response;
    }
  }

}



/** Type or profession the candidate is notable for. */
class ReconcileCandidateNotable {
  /** MID of notable category. */
  core.String id;

  /** Name of notable category in specified language. */
  core.String name;


  ReconcileCandidateNotable();

  ReconcileCandidateNotable.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (id != null) {
      _json["id"] = id;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


class ReconcileCandidate {
  /**
   * Percentage likelihood that this candidate is the unique matching entity.
   * Value will be between 0.0 and 1.0
   */
  core.double confidence;

  /** Language code that candidate and notable names are displayed in. */
  core.String lang;

  /** Freebase MID of candidate entity. */
  core.String mid;

  /** Freebase name of matching entity in specified language. */
  core.String name;

  /** Type or profession the candidate is notable for. */
  ReconcileCandidateNotable notable;


  ReconcileCandidate();

  ReconcileCandidate.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"];
    }
    if (_json.containsKey("lang")) {
      lang = _json["lang"];
    }
    if (_json.containsKey("mid")) {
      mid = _json["mid"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("notable")) {
      notable = new ReconcileCandidateNotable.fromJson(_json["notable"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (lang != null) {
      _json["lang"] = lang;
    }
    if (mid != null) {
      _json["mid"] = mid;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (notable != null) {
      _json["notable"] = (notable).toJson();
    }
    return _json;
  }
}


/** Server costs for reconciling. */
class ReconcileGetCosts {
  /** Total number of hits found. */
  core.int hits;

  /** Total milliseconds spent. */
  core.int ms;


  ReconcileGetCosts();

  ReconcileGetCosts.fromJson(core.Map _json) {
    if (_json.containsKey("hits")) {
      hits = _json["hits"];
    }
    if (_json.containsKey("ms")) {
      ms = _json["ms"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (hits != null) {
      _json["hits"] = hits;
    }
    if (ms != null) {
      _json["ms"] = ms;
    }
    return _json;
  }
}


class ReconcileGetWarning {
  /** Location of warning in the request e.g. invalid predicate. */
  core.String location;

  /** Warning message to display to the user. */
  core.String message;

  /** Code for identifying classes of warnings. */
  core.String reason;


  ReconcileGetWarning();

  ReconcileGetWarning.fromJson(core.Map _json) {
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
    if (_json.containsKey("reason")) {
      reason = _json["reason"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (location != null) {
      _json["location"] = location;
    }
    if (message != null) {
      _json["message"] = message;
    }
    if (reason != null) {
      _json["reason"] = reason;
    }
    return _json;
  }
}


class ReconcileGet {
  /**
   * If filled, then the listed candidates are potential matches, and such
   * should be evaluated by a more discerning algorithm or human. The matches
   * are ordered by confidence.
   */
  core.List<ReconcileCandidate> candidate;

  /** Server costs for reconciling. */
  ReconcileGetCosts costs;

  /**
   * If filled, this entity is guaranteed to match at requested confidence
   * probability (default 99%).
   */
  ReconcileCandidate match;

  /**
   * If filled, then there were recoverable problems that affected the request.
   * For example, some of the properties were ignored because they either are
   * not valid Freebase predicates or are not indexed for reconciliation. The
   * candidates returned should be considered valid results, with the caveat
   * that sections of the request were ignored as specified by the warning text.
   */
  core.List<ReconcileGetWarning> warning;


  ReconcileGet();

  ReconcileGet.fromJson(core.Map _json) {
    if (_json.containsKey("candidate")) {
      candidate = _json["candidate"].map((value) => new ReconcileCandidate.fromJson(value)).toList();
    }
    if (_json.containsKey("costs")) {
      costs = new ReconcileGetCosts.fromJson(_json["costs"]);
    }
    if (_json.containsKey("match")) {
      match = new ReconcileCandidate.fromJson(_json["match"]);
    }
    if (_json.containsKey("warning")) {
      warning = _json["warning"].map((value) => new ReconcileGetWarning.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (candidate != null) {
      _json["candidate"] = candidate.map((value) => (value).toJson()).toList();
    }
    if (costs != null) {
      _json["costs"] = (costs).toJson();
    }
    if (match != null) {
      _json["match"] = (match).toJson();
    }
    if (warning != null) {
      _json["warning"] = warning.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
