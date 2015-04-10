// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudsearch.v1;

import 'dart:core' as core;
import 'dart:collection' as collection;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudsearch/v1';

/**
 * The Google Cloud Search API defines an application interface to index
 * documents that contain structured data and to search those indexes. It
 * supports full text search.
 */
class CloudsearchApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** FOR TESTING ONLY */
  static const CloudsearchScope = "https://www.googleapis.com/auth/cloudsearch";

  /** View your email address */
  static const UserinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudsearchApi(http.Client client, {core.String rootUrl: "https://cloudsearch.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsIndexesResourceApi get indexes => new ProjectsIndexesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsIndexesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsIndexesDocumentsResourceApi get documents => new ProjectsIndexesDocumentsResourceApi(_requester);

  ProjectsIndexesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists search indexes belonging to the specified project.
   *
   * Request parameters:
   *
   * [projectId] - The project from which to retrieve indexes. It cannot be the
   * empty string.
   *
   * [indexNamePrefix] - The prefix of the index name. It is used to list all
   * indexes with names that have this prefix.
   *
   * [pageSize] - The maximum number of indexes to return per page. If not
   * specified, 100 indexes are returned per page.
   *
   * [pageToken] - A `nextPageToken` returned from previous list indexes call as
   * the starting point for this call. If not specified, list indexes from the
   * beginning.
   *
   * [view] - Specifies which parts of the IndexInfo resource is returned in the
   * response. If not specified, `ID_ONLY` is used.
   * Possible string values are:
   * - "INDEX_VIEW_UNSPECIFIED" : A INDEX_VIEW_UNSPECIFIED.
   * - "ID_ONLY" : A ID_ONLY.
   * - "FULL" : A FULL.
   *
   * Completes with a [ListIndexesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListIndexesResponse> list(core.String projectId, {core.String indexNamePrefix, core.int pageSize, core.String pageToken, core.String view}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (indexNamePrefix != null) {
      _queryParams["indexNamePrefix"] = [indexNamePrefix];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }


    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/indexes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListIndexesResponse.fromJson(data));
  }

  /**
   * Lists the documents in the named index that match the query.
   *
   * Request parameters:
   *
   * [projectId] - The project associated with the index for searching document.
   * It cannot be the empty string.
   *
   * [indexId] - The index to search. It cannot be the empty string.
   *
   * [query] - The query string in search query syntax. If the query is missing
   * or empty, all documents are returned.
   *
   * [fieldExpressions] - Customized expressions used in `orderBy` or
   * `returnFields`. The expression can contain fields in `Document`, the
   * built-in fields ( `_rank`, the document rank, and `_score` if scoring is
   * enabled) and fields defined in `fieldExpressions`. Each field expression is
   * represented in a json object with the following fields: * `name`: the name
   * of the field expression in string. * `expression`: the expression to be
   * computed. It can be a combination of supported functions encoded in string.
   * Expressions involving number fields can use the arithmetical operators
   * (`+`, `-`, `*`, `/`) and the built-in numeric functions (`max`, `min`,
   * `pow`, `count`, `log`, `abs`). Expressions involving geopoint fields can
   * use the `geopoint` and `distance` functions. Expressions for text and html
   * fields can use the `snippet` function. For example: ```
   * fieldExpressions={name: "TotalPrice", expression: "(Price+Tax)"} ``` ```
   * fieldExpressions={name: "snippet", expression: "snippet('good times',
   * content)"} ``` The field expression names can be used in `orderBy` and
   * `returnFields` after they are defined in `fieldExpressions`.
   *
   * [pageSize] - The maximum number of search results to return per page.
   * Searches perform best when the `pageSize` is kept as small as possible. If
   * not specified, 10 results are returned per page.
   *
   * [pageToken] - A `nextPageToken` returned from previous Search call as the
   * starting point for this call. Pagination tokens provide better performance
   * and consistency than offsets, and they cannot be used in combination with
   * offsets.
   *
   * [offset] - Offset is used to move to an arbitrary result, independent of
   * the previous results. Offsets are inefficient when compared to `pageToken`.
   * `pageToken` and `offset` cannot be both set. The default value of `offset`
   * is 0.
   *
   * [matchedCountAccuracy] - Minimum accuracy requirement for `matchedCount` in
   * search response. If specified, `matchedCount` will be accurate up to at
   * least that number. For example, when set to 100, any `matchedCount <= 100`
   * is accurate. This option may add considerable latency/expense. By default
   * (when it is not specified or set to 0), the accuracy is the same as
   * `pageSize`.
   *
   * [orderBy] - Comma-separated list of fields for sorting on the search
   * result, including fields from `Document`, the built-in fields (`_rank` and
   * `_score`), and fields defined in `fieldExpressions`. For example:
   * `orderBy="foo,bar"`. The default sorting order is ascending. To specify
   * descending order for a field, a suffix `" desc"` should be appended to the
   * field name. For example: `orderBy="foo desc,bar"`. The default value for
   * text sort is the empty string, and the default value for numeric sort is 0.
   * If not specified, the search results are automatically sorted by descending
   * `_rank`. Sorting by ascending `_rank` is not allowed.
   *
   * [scorer] - The scoring function to invoke on a search result for this
   * query. If `scorer` is not set, scoring is disabled and `_score` is 0 for
   * all documents in the search result. To enable document relevancy score
   * based on term frequency, set `"scorer=generic"`.
   *
   * [scorerSize] - Maximum number of top retrieved results to score. It is
   * valid only when `scorer` is set. If not specified, 100 retrieved results
   * are scored.
   *
   * [returnFields] - List of fields to return in `SearchResult` objects. It can
   * be fields from `Document`, the built-in fields `_rank` and `_score`, and
   * fields defined in `fieldExpressions`. Use `"*"` to return all fields from
   * `Document`.
   *
   * Completes with a [SearchResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<SearchResponse> search(core.String projectId, core.String indexId, {core.String query, core.List<core.String> fieldExpressions, core.int pageSize, core.String pageToken, core.int offset, core.int matchedCountAccuracy, core.String orderBy, core.String scorer, core.int scorerSize, core.List<core.String> returnFields}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (indexId == null) {
      throw new core.ArgumentError("Parameter indexId is required.");
    }
    if (query != null) {
      _queryParams["query"] = [query];
    }
    if (fieldExpressions != null) {
      _queryParams["fieldExpressions"] = fieldExpressions;
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (offset != null) {
      _queryParams["offset"] = ["${offset}"];
    }
    if (matchedCountAccuracy != null) {
      _queryParams["matchedCountAccuracy"] = ["${matchedCountAccuracy}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }
    if (scorer != null) {
      _queryParams["scorer"] = [scorer];
    }
    if (scorerSize != null) {
      _queryParams["scorerSize"] = ["${scorerSize}"];
    }
    if (returnFields != null) {
      _queryParams["returnFields"] = returnFields;
    }


    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/indexes/' + commons.Escaper.ecapeVariable('$indexId') + '/search';

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


class ProjectsIndexesDocumentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsIndexesDocumentsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Inserts a document for indexing or updates an indexed document. The
   * returned document contains only the ID of the new document. When `docId` is
   * absent from the document, it is provided by the server.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The project associated with the index for adding document. It
   * cannot be the empty string.
   *
   * [indexId] - The index to add document to. It cannot be the empty string.
   *
   * Completes with a [Document].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Document> create(Document request, core.String projectId, core.String indexId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (indexId == null) {
      throw new core.ArgumentError("Parameter indexId is required.");
    }


    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/indexes/' + commons.Escaper.ecapeVariable('$indexId') + '/documents';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Document.fromJson(data));
  }

  /**
   * Deletes a document from an index.
   *
   * Request parameters:
   *
   * [projectId] - The project associated with the index for deleting document.
   * It cannot be the empty string.
   *
   * [indexId] - The index from which to delete the document. It cannot be the
   * empty string.
   *
   * [docId] - The document to be deleted. It cannot be the empty string.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Empty> delete(core.String projectId, core.String indexId, core.String docId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (indexId == null) {
      throw new core.ArgumentError("Parameter indexId is required.");
    }
    if (docId == null) {
      throw new core.ArgumentError("Parameter docId is required.");
    }


    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/indexes/' + commons.Escaper.ecapeVariable('$indexId') + '/documents/' + commons.Escaper.ecapeVariable('$docId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Retrieves a document from an index.
   *
   * Request parameters:
   *
   * [projectId] - The project associated with the index for retrieving the
   * document. It cannot be the empty string.
   *
   * [indexId] - The index from which to retrieve the document. It cannot be the
   * empty string.
   *
   * [docId] - The identifier of the document to retrieve. It cannot be the
   * empty string.
   *
   * Completes with a [Document].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<Document> get(core.String projectId, core.String indexId, core.String docId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (indexId == null) {
      throw new core.ArgumentError("Parameter indexId is required.");
    }
    if (docId == null) {
      throw new core.ArgumentError("Parameter docId is required.");
    }


    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/indexes/' + commons.Escaper.ecapeVariable('$indexId') + '/documents/' + commons.Escaper.ecapeVariable('$docId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Document.fromJson(data));
  }

  /**
   * Lists documents in the specified search index. Intended for batch
   * processing.
   *
   * Request parameters:
   *
   * [projectId] - The project associated with the index for listing documents.
   * It cannot be the empty string.
   *
   * [indexId] - The index from which to list the documents. It cannot be the
   * empty string.
   *
   * [pageSize] - The maximum number of documents to return per page. If not
   * specified, 100 documents are returned per page.
   *
   * [pageToken] - A `nextPageToken` returned from previous list documents call
   * as the starting point for this call. If not specified, list documents from
   * the beginning.
   *
   * [view] - Specifies which part of the document resource is returned in the
   * response. If not specified, `ID_ONLY` is used.
   * Possible string values are:
   * - "DOCUMENT_VIEW_UNSPECIFIED" : A DOCUMENT_VIEW_UNSPECIFIED.
   * - "ID_ONLY" : A ID_ONLY.
   * - "FULL" : A FULL.
   *
   * Completes with a [ListDocumentsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method  will complete with the same error.
   */
  async.Future<ListDocumentsResponse> list(core.String projectId, core.String indexId, {core.int pageSize, core.String pageToken, core.String view}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (indexId == null) {
      throw new core.ArgumentError("Parameter indexId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }


    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/indexes/' + commons.Escaper.ecapeVariable('$indexId') + '/documents';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDocumentsResponse.fromJson(data));
  }

}



/** The message representing a document resource. */
class Document {
  /**
   * The unique identifier of the document. It must contain only visible,
   * printable ASCII characters (ASCII codes 33 through 126 inclusive) and be no
   * longer than 500 characters. It cannot begin with an exclamation point
   * ('!'), and it can't begin and end with double underscores ("__"). If
   * missing, it is automatically assigned for the document.
   */
  core.String docId;

  /**
   * The list of fields in the document. It cannot be the empty list. Each field
   * has a name and a list of values. The field name is unique to a document and
   * is case sensitive. The name can only contain ASCII characters. It must
   * start with a letter and can contain letters, digits, or underscore. It
   * cannot be longer than 500 characters and cannot be the empty string. A
   * field can have multiple values with same or different types, however, it
   * cannot have multiple Timestamp or number values.
   */
  core.Map<core.String, FieldValueList> fields;

  /**
   * A positive integer which determines the default ordering of documents
   * returned from a search. The rank can be set explicitly when the document is
   * created. It is a bad idea to assign the same rank to many documents, and
   * the same rank should never be assigned to more than 10,000 documents. By
   * default (when it is not specified or set to 0), it is set at the time the
   * document is created to the number of seconds since January 1, 2011. The
   * rank can be used in field_expressions, order_by or return_fields in a
   * search request, where it is referenced as `_rank`.
   */
  core.int rank;


  Document();

  Document.fromJson(core.Map _json) {
    if (_json.containsKey("docId")) {
      docId = _json["docId"];
    }
    if (_json.containsKey("fields")) {
      fields = commons.mapMap(_json["fields"], (item) => new FieldValueList.fromJson(item));
    }
    if (_json.containsKey("rank")) {
      rank = _json["rank"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (docId != null) {
      _json["docId"] = docId;
    }
    if (fields != null) {
      _json["fields"] = commons.mapMap(fields, (item) => (item).toJson());
    }
    if (rank != null) {
      _json["rank"] = rank;
    }
    return _json;
  }
}


/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}


/** Names of indexed fields. */
class FieldNames {
  /** The names of fields in which ATOM values are stored. */
  core.List<core.String> atomFields;

  /** The names of fields in which DATE values are stored. */
  core.List<core.String> dateFields;

  /** The names of fields in which GEO values are stored. */
  core.List<core.String> geoFields;

  /** The names of fields in which HTML values are stored. */
  core.List<core.String> htmlFields;

  /** The names of fields in which NUMBER values are stored. */
  core.List<core.String> numberFields;

  /** The names of fields in which TEXT values are stored. */
  core.List<core.String> textFields;


  FieldNames();

  FieldNames.fromJson(core.Map _json) {
    if (_json.containsKey("atomFields")) {
      atomFields = _json["atomFields"];
    }
    if (_json.containsKey("dateFields")) {
      dateFields = _json["dateFields"];
    }
    if (_json.containsKey("geoFields")) {
      geoFields = _json["geoFields"];
    }
    if (_json.containsKey("htmlFields")) {
      htmlFields = _json["htmlFields"];
    }
    if (_json.containsKey("numberFields")) {
      numberFields = _json["numberFields"];
    }
    if (_json.containsKey("textFields")) {
      textFields = _json["textFields"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (atomFields != null) {
      _json["atomFields"] = atomFields;
    }
    if (dateFields != null) {
      _json["dateFields"] = dateFields;
    }
    if (geoFields != null) {
      _json["geoFields"] = geoFields;
    }
    if (htmlFields != null) {
      _json["htmlFields"] = htmlFields;
    }
    if (numberFields != null) {
      _json["numberFields"] = numberFields;
    }
    if (textFields != null) {
      _json["textFields"] = textFields;
    }
    return _json;
  }
}


/**
 * The value of a document field and associated metadata. Exactly one of the
 * value fields may be set.
 */
class FieldValue {
  /**
   * The value of a GEO-valued field, represented in string with any of the
   * listed [ways of writing
   * coordinates](http://en.wikipedia.org/wiki/Geographic_coordinate_conversion#Ways_of_writing_coordinates)
   */
  core.String geoValue;

  /**
   * The language of a string value. If given, the language must be a valid `ISO
   * 639-1` code.
   */
  core.String lang;

  /** The value of a number-valued field. */
  core.double numberValue;

  /**
   * The format of a string value. By default, the string format is `DEFAULT`,
   * where a format will be automatically detected.
   * Possible string values are:
   * - "DEFAULT" : A DEFAULT.
   * - "ATOM" : A ATOM.
   * - "TEXT" : A TEXT.
   * - "HTML" : A HTML.
   */
  core.String stringFormat;

  /** The value of a string-valued field. */
  core.String stringValue;

  /** The value of a timestamp-valued field. */
  core.String timestampValue;


  FieldValue();

  FieldValue.fromJson(core.Map _json) {
    if (_json.containsKey("geoValue")) {
      geoValue = _json["geoValue"];
    }
    if (_json.containsKey("lang")) {
      lang = _json["lang"];
    }
    if (_json.containsKey("numberValue")) {
      numberValue = _json["numberValue"];
    }
    if (_json.containsKey("stringFormat")) {
      stringFormat = _json["stringFormat"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
    if (_json.containsKey("timestampValue")) {
      timestampValue = _json["timestampValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (geoValue != null) {
      _json["geoValue"] = geoValue;
    }
    if (lang != null) {
      _json["lang"] = lang;
    }
    if (numberValue != null) {
      _json["numberValue"] = numberValue;
    }
    if (stringFormat != null) {
      _json["stringFormat"] = stringFormat;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    if (timestampValue != null) {
      _json["timestampValue"] = timestampValue;
    }
    return _json;
  }
}


/** The values of a document field under the same field name. */
class FieldValueList {
  /** The list of typed values. */
  core.List<FieldValue> values;


  FieldValueList();

  FieldValueList.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = _json["values"].map((value) => new FieldValue.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** Information about an index. */
class IndexInfo {
  /**
   * The index identifier. It cannot be the empty string. It must contain only
   * visible, printable ASCII characters (ASCII codes 33 through 126 inclusive)
   * and be no longer than 100 characters. It cannot begin with an exclamation
   * point ('!'), and it can't begin and end with double underscores ("__").
   */
  core.String indexId;

  /** Names of indexed fields. */
  FieldNames indexedField;

  /** The project associated with the index. It cannot be the empty string. */
  core.String projectId;


  IndexInfo();

  IndexInfo.fromJson(core.Map _json) {
    if (_json.containsKey("indexId")) {
      indexId = _json["indexId"];
    }
    if (_json.containsKey("indexedField")) {
      indexedField = new FieldNames.fromJson(_json["indexedField"]);
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (indexId != null) {
      _json["indexId"] = indexId;
    }
    if (indexedField != null) {
      _json["indexedField"] = (indexedField).toJson();
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}


/** A response returned from a listing documents request. */
class ListDocumentsResponse {
  /** The list of documents. */
  core.List<Document> documents;

  /**
   * If there are more results, retrieve them by invoking list documents call
   * with the same arguments and this `nextPageToken`. If there are no more
   * results, this field is not set.
   */
  core.String nextPageToken;


  ListDocumentsResponse();

  ListDocumentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("documents")) {
      documents = _json["documents"].map((value) => new Document.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (documents != null) {
      _json["documents"] = documents.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** A response returned from a listing indexes request. */
class ListIndexesResponse {
  /** The information about available indexes. */
  core.List<IndexInfo> indexes;

  /**
   * If there are more results, retrieve them by invoking list indexes call with
   * the same arguments and this `nextPageToken`. If there are no more results,
   * this field is not set.
   */
  core.String nextPageToken;


  ListIndexesResponse();

  ListIndexesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("indexes")) {
      indexes = _json["indexes"].map((value) => new IndexInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (indexes != null) {
      _json["indexes"] = indexes.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}


/** A response returned from a search request. */
class SearchResponse {
  /**
   * The number of documents that match the query. It is greater than or equal
   * to the number of documents actually returned. This is an approximation and
   * not an exact count unless it is less than or equal to
   * `matchedCountAccuracy` in search parameter.
   */
  core.String matchedCount;

  /** The list of documents that match the search query. */
  core.List<SearchResult> results;


  SearchResponse();

  SearchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("matchedCount")) {
      matchedCount = _json["matchedCount"];
    }
    if (_json.containsKey("results")) {
      results = _json["results"].map((value) => new SearchResult.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (matchedCount != null) {
      _json["matchedCount"] = matchedCount;
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}


/** A document returned in a SearchResponse. */
class SearchResult {
  /** The unique identifier of the document. */
  core.String docId;

  /**
   * The list of fields in the result. Each field is either from the stored
   * document, the built-in fields (`_rank`, the document rank, and `_score` if
   * scoring is enabled), or computed from any extra `fieldExpressions` defined
   * in the request. For example, if a request contains a `fieldExpressions`
   * named `"TotalPrice"` and expressed as `"Price + Tax"`, the result will have
   * a field whose name is `"TotalPrice"` and whose value is set to the computed
   * sum of the value of field `"Price"` and the value of field `"Tax"`. If a
   * request contains a `fieldExpressions` named `"snippet"` and expressed as
   * `"snippet(\"good times\", content)"`, the result will have a field whose
   * name is `"snippet"` and whose value contains a snippet of text from field
   * `"content"` matching the query "good times".
   */
  core.Map<core.String, FieldValueList> fields;

  /**
   * If there are more results, retrieve them by invoking search call with the
   * same arguments and this `nextPageToken`. If there are no more results, this
   * field is not set.
   */
  core.String nextPageToken;


  SearchResult();

  SearchResult.fromJson(core.Map _json) {
    if (_json.containsKey("docId")) {
      docId = _json["docId"];
    }
    if (_json.containsKey("fields")) {
      fields = commons.mapMap(_json["fields"], (item) => new FieldValueList.fromJson(item));
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (docId != null) {
      _json["docId"] = docId;
    }
    if (fields != null) {
      _json["fields"] = commons.mapMap(fields, (item) => (item).toJson());
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}
