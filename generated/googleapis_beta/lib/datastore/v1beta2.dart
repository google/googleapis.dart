// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.datastore.v1beta2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client datastore/v1beta2';

/** Stores and queries data in Google Cloud Datastore. */
class DatastoreApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View and manage your Google Cloud Datastore data */
  static const DatastoreScope = "https://www.googleapis.com/auth/datastore";

  /** View your email address */
  static const UserinfoEmailScope = "https://www.googleapis.com/auth/userinfo.email";


  final commons.ApiRequester _requester;

  DatasetsResourceApi get datasets => new DatasetsResourceApi(_requester);

  DatastoreApi(http.Client client, {core.String rootUrl: "https://www.googleapis.com/", core.String servicePath: "datastore/v1beta2/datasets/"}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class DatasetsResourceApi {
  final commons.ApiRequester _requester;

  DatasetsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Allocate IDs for incomplete keys (useful for referencing an entity before
   * it is inserted).
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - Identifies the dataset.
   *
   * Completes with a [AllocateIdsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<AllocateIdsResponse> allocateIds(AllocateIdsRequest request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = commons.Escaper.ecapeVariable('$datasetId') + '/allocateIds';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new AllocateIdsResponse.fromJson(data));
  }

  /**
   * Begin a new transaction.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - Identifies the dataset.
   *
   * Completes with a [BeginTransactionResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<BeginTransactionResponse> beginTransaction(BeginTransactionRequest request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = commons.Escaper.ecapeVariable('$datasetId') + '/beginTransaction';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new BeginTransactionResponse.fromJson(data));
  }

  /**
   * Commit a transaction, optionally creating, deleting or modifying some
   * entities.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - Identifies the dataset.
   *
   * Completes with a [CommitResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<CommitResponse> commit(CommitRequest request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = commons.Escaper.ecapeVariable('$datasetId') + '/commit';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new CommitResponse.fromJson(data));
  }

  /**
   * Look up some entities by key.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - Identifies the dataset.
   *
   * Completes with a [LookupResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LookupResponse> lookup(LookupRequest request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = commons.Escaper.ecapeVariable('$datasetId') + '/lookup';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LookupResponse.fromJson(data));
  }

  /**
   * Roll back a transaction.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - Identifies the dataset.
   *
   * Completes with a [RollbackResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RollbackResponse> rollback(RollbackRequest request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = commons.Escaper.ecapeVariable('$datasetId') + '/rollback';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RollbackResponse.fromJson(data));
  }

  /**
   * Query for entities.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [datasetId] - Identifies the dataset.
   *
   * Completes with a [RunQueryResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RunQueryResponse> runQuery(RunQueryRequest request, core.String datasetId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (datasetId == null) {
      throw new core.ArgumentError("Parameter datasetId is required.");
    }

    _url = commons.Escaper.ecapeVariable('$datasetId') + '/runQuery';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RunQueryResponse.fromJson(data));
  }

}



class AllocateIdsRequest {
  /**
   * A list of keys with incomplete key paths to allocate IDs for. No key may be
   * reserved/read-only.
   */
  core.List<Key> keys;

  AllocateIdsRequest();

  AllocateIdsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("keys")) {
      keys = _json["keys"].map((value) => new Key.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class AllocateIdsResponse {
  ResponseHeader header;
  /**
   * The keys specified in the request (in the same order), each with its key
   * path completed with a newly allocated ID.
   */
  core.List<Key> keys;

  AllocateIdsResponse();

  AllocateIdsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("header")) {
      header = new ResponseHeader.fromJson(_json["header"]);
    }
    if (_json.containsKey("keys")) {
      keys = _json["keys"].map((value) => new Key.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class BeginTransactionRequest {
  /**
   * The transaction isolation level. Either snapshot or serializable. The
   * default isolation level is snapshot isolation, which means that another
   * transaction may not concurrently modify the data that is modified by this
   * transaction. Optionally, a transaction can request to be made serializable
   * which means that another transaction cannot concurrently modify the data
   * that is read or modified by this transaction.
   * Possible string values are:
   * - "SERIALIZABLE"
   * - "SNAPSHOT"
   */
  core.String isolationLevel;

  BeginTransactionRequest();

  BeginTransactionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("isolationLevel")) {
      isolationLevel = _json["isolationLevel"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (isolationLevel != null) {
      _json["isolationLevel"] = isolationLevel;
    }
    return _json;
  }
}

class BeginTransactionResponse {
  ResponseHeader header;
  /** The transaction identifier (always present). */
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }

  BeginTransactionResponse();

  BeginTransactionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("header")) {
      header = new ResponseHeader.fromJson(_json["header"]);
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

class CommitRequest {
  core.bool ignoreReadOnly;
  /**
   * The type of commit to perform. Either TRANSACTIONAL or NON_TRANSACTIONAL.
   * Possible string values are:
   * - "NON_TRANSACTIONAL"
   * - "TRANSACTIONAL"
   */
  core.String mode;
  /** The mutation to perform. Optional. */
  Mutation mutation;
  /**
   * The transaction identifier, returned by a call to beginTransaction. Must be
   * set when mode is TRANSACTIONAL.
   */
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }

  CommitRequest();

  CommitRequest.fromJson(core.Map _json) {
    if (_json.containsKey("ignoreReadOnly")) {
      ignoreReadOnly = _json["ignoreReadOnly"];
    }
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
    }
    if (_json.containsKey("mutation")) {
      mutation = new Mutation.fromJson(_json["mutation"]);
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (ignoreReadOnly != null) {
      _json["ignoreReadOnly"] = ignoreReadOnly;
    }
    if (mode != null) {
      _json["mode"] = mode;
    }
    if (mutation != null) {
      _json["mutation"] = (mutation).toJson();
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

class CommitResponse {
  ResponseHeader header;
  /** The result of performing the mutation (if any). */
  MutationResult mutationResult;

  CommitResponse();

  CommitResponse.fromJson(core.Map _json) {
    if (_json.containsKey("header")) {
      header = new ResponseHeader.fromJson(_json["header"]);
    }
    if (_json.containsKey("mutationResult")) {
      mutationResult = new MutationResult.fromJson(_json["mutationResult"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    if (mutationResult != null) {
      _json["mutationResult"] = (mutationResult).toJson();
    }
    return _json;
  }
}

/**
 * A filter that merges the multiple other filters using the given operation.
 */
class CompositeFilter {
  /** The list of filters to combine. Must contain at least one filter. */
  core.List<Filter> filters;
  /**
   * The operator for combining multiple filters. Only "and" is currently
   * supported.
   * Possible string values are:
   * - "AND"
   */
  core.String operator;

  CompositeFilter();

  CompositeFilter.fromJson(core.Map _json) {
    if (_json.containsKey("filters")) {
      filters = _json["filters"].map((value) => new Filter.fromJson(value)).toList();
    }
    if (_json.containsKey("operator")) {
      operator = _json["operator"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filters != null) {
      _json["filters"] = filters.map((value) => (value).toJson()).toList();
    }
    if (operator != null) {
      _json["operator"] = operator;
    }
    return _json;
  }
}

/** An entity. */
class Entity {
  /**
   * The entity's key.
   *
   * An entity must have a key, unless otherwise documented (for example, an
   * entity in Value.entityValue may have no key). An entity's kind is its key's
   * path's last element's kind, or null if it has no key.
   */
  Key key;
  /** The entity's properties. */
  core.Map<core.String, Property> properties;

  Entity();

  Entity.fromJson(core.Map _json) {
    if (_json.containsKey("key")) {
      key = new Key.fromJson(_json["key"]);
    }
    if (_json.containsKey("properties")) {
      properties = commons.mapMap(_json["properties"], (item) => new Property.fromJson(item));
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (key != null) {
      _json["key"] = (key).toJson();
    }
    if (properties != null) {
      _json["properties"] = commons.mapMap(properties, (item) => (item).toJson());
    }
    return _json;
  }
}

/** The result of fetching an entity from the datastore. */
class EntityResult {
  /** The resulting entity. */
  Entity entity;

  EntityResult();

  EntityResult.fromJson(core.Map _json) {
    if (_json.containsKey("entity")) {
      entity = new Entity.fromJson(_json["entity"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entity != null) {
      _json["entity"] = (entity).toJson();
    }
    return _json;
  }
}

/** A holder for any type of filter. Exactly one field should be specified. */
class Filter {
  /** A composite filter. */
  CompositeFilter compositeFilter;
  /** A filter on a property. */
  PropertyFilter propertyFilter;

  Filter();

  Filter.fromJson(core.Map _json) {
    if (_json.containsKey("compositeFilter")) {
      compositeFilter = new CompositeFilter.fromJson(_json["compositeFilter"]);
    }
    if (_json.containsKey("propertyFilter")) {
      propertyFilter = new PropertyFilter.fromJson(_json["propertyFilter"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (compositeFilter != null) {
      _json["compositeFilter"] = (compositeFilter).toJson();
    }
    if (propertyFilter != null) {
      _json["propertyFilter"] = (propertyFilter).toJson();
    }
    return _json;
  }
}

/** A GQL query. */
class GqlQuery {
  /** When false, the query string must not contain a literal. */
  core.bool allowLiteral;
  /**
   * A named argument must set field GqlQueryArg.name. No two named arguments
   * may have the same name. For each non-reserved named binding site in the
   * query string, there must be a named argument with that name, but not
   * necessarily the inverse.
   */
  core.List<GqlQueryArg> nameArgs;
  /**
   * Numbered binding site @1 references the first numbered argument,
   * effectively using 1-based indexing, rather than the usual 0. A numbered
   * argument must NOT set field GqlQueryArg.name. For each binding site
   * numbered i in query_string, there must be an ith numbered argument. The
   * inverse must also be true.
   */
  core.List<GqlQueryArg> numberArgs;
  /** The query string. */
  core.String queryString;

  GqlQuery();

  GqlQuery.fromJson(core.Map _json) {
    if (_json.containsKey("allowLiteral")) {
      allowLiteral = _json["allowLiteral"];
    }
    if (_json.containsKey("nameArgs")) {
      nameArgs = _json["nameArgs"].map((value) => new GqlQueryArg.fromJson(value)).toList();
    }
    if (_json.containsKey("numberArgs")) {
      numberArgs = _json["numberArgs"].map((value) => new GqlQueryArg.fromJson(value)).toList();
    }
    if (_json.containsKey("queryString")) {
      queryString = _json["queryString"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (allowLiteral != null) {
      _json["allowLiteral"] = allowLiteral;
    }
    if (nameArgs != null) {
      _json["nameArgs"] = nameArgs.map((value) => (value).toJson()).toList();
    }
    if (numberArgs != null) {
      _json["numberArgs"] = numberArgs.map((value) => (value).toJson()).toList();
    }
    if (queryString != null) {
      _json["queryString"] = queryString;
    }
    return _json;
  }
}

/** A binding argument for a GQL query. */
class GqlQueryArg {
  core.String cursor;
  core.List<core.int> get cursorAsBytes {
    return convert.BASE64.decode(cursor);
  }

  void set cursorAsBytes(core.List<core.int> _bytes) {
    cursor = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }
  /**
   * Must match regex "[A-Za-z_$][A-Za-z_$0-9]*". Must not match regex "__.*__".
   * Must not be "".
   */
  core.String name;
  Value value;

  GqlQueryArg();

  GqlQueryArg.fromJson(core.Map _json) {
    if (_json.containsKey("cursor")) {
      cursor = _json["cursor"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = new Value.fromJson(_json["value"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cursor != null) {
      _json["cursor"] = cursor;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/** A unique identifier for an entity. */
class Key {
  /**
   * Entities are partitioned into subsets, currently identified by a dataset
   * (usually implicitly specified by the project) and namespace ID. Queries are
   * scoped to a single partition.
   */
  PartitionId partitionId;
  /**
   * The entity path. An entity path consists of one or more elements composed
   * of a kind and a string or numerical identifier, which identify entities.
   * The first element identifies a root entity, the second element identifies a
   * child of the root entity, the third element a child of the second entity,
   * and so forth. The entities identified by all prefixes of the path are
   * called the element's ancestors. An entity path is always fully complete:
   * ALL of the entity's ancestors are required to be in the path along with the
   * entity identifier itself. The only exception is that in some documented
   * cases, the identifier in the last path element (for the entity) itself may
   * be omitted. A path can never be empty. The path can have at most 100
   * elements.
   */
  core.List<KeyPathElement> path;

  Key();

  Key.fromJson(core.Map _json) {
    if (_json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(_json["partitionId"]);
    }
    if (_json.containsKey("path")) {
      path = _json["path"].map((value) => new KeyPathElement.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (partitionId != null) {
      _json["partitionId"] = (partitionId).toJson();
    }
    if (path != null) {
      _json["path"] = path.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A (kind, ID/name) pair used to construct a key path.
 *
 * At most one of name or ID may be set. If either is set, the element is
 * complete. If neither is set, the element is incomplete.
 */
class KeyPathElement {
  /**
   * The ID of the entity. Never equal to zero. Values less than zero are
   * discouraged and will not be supported in the future.
   */
  core.String id;
  /**
   * The kind of the entity. A kind matching regex "__.*__" is
   * reserved/read-only. A kind must not contain more than 500 characters.
   * Cannot be "".
   */
  core.String kind;
  /**
   * The name of the entity. A name matching regex "__.*__" is
   * reserved/read-only. A name must not be more than 500 characters. Cannot be
   * "".
   */
  core.String name;

  KeyPathElement();

  KeyPathElement.fromJson(core.Map _json) {
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
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
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** A representation of a kind. */
class KindExpression {
  /** The name of the kind. */
  core.String name;

  KindExpression();

  KindExpression.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

class LookupRequest {
  /** Keys of entities to look up from the datastore. */
  core.List<Key> keys;
  /** Options for this lookup request. Optional. */
  ReadOptions readOptions;

  LookupRequest();

  LookupRequest.fromJson(core.Map _json) {
    if (_json.containsKey("keys")) {
      keys = _json["keys"].map((value) => new Key.fromJson(value)).toList();
    }
    if (_json.containsKey("readOptions")) {
      readOptions = new ReadOptions.fromJson(_json["readOptions"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (keys != null) {
      _json["keys"] = keys.map((value) => (value).toJson()).toList();
    }
    if (readOptions != null) {
      _json["readOptions"] = (readOptions).toJson();
    }
    return _json;
  }
}

class LookupResponse {
  /** A list of keys that were not looked up due to resource constraints. */
  core.List<Key> deferred;
  /** Entities found. */
  core.List<EntityResult> found;
  ResponseHeader header;
  /** Entities not found, with only the key populated. */
  core.List<EntityResult> missing;

  LookupResponse();

  LookupResponse.fromJson(core.Map _json) {
    if (_json.containsKey("deferred")) {
      deferred = _json["deferred"].map((value) => new Key.fromJson(value)).toList();
    }
    if (_json.containsKey("found")) {
      found = _json["found"].map((value) => new EntityResult.fromJson(value)).toList();
    }
    if (_json.containsKey("header")) {
      header = new ResponseHeader.fromJson(_json["header"]);
    }
    if (_json.containsKey("missing")) {
      missing = _json["missing"].map((value) => new EntityResult.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (deferred != null) {
      _json["deferred"] = deferred.map((value) => (value).toJson()).toList();
    }
    if (found != null) {
      _json["found"] = found.map((value) => (value).toJson()).toList();
    }
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    if (missing != null) {
      _json["missing"] = missing.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** A set of changes to apply. */
class Mutation {
  /**
   * Keys of entities to delete. Each key must have a complete key path and must
   * not be reserved/read-only.
   */
  core.List<Key> delete;
  /** Ignore a user specified read-only period. Optional. */
  core.bool force;
  /**
   * Entities to insert. Each inserted entity's key must have a complete path
   * and must not be reserved/read-only.
   */
  core.List<Entity> insert;
  /**
   * Insert entities with a newly allocated ID. Each inserted entity's key must
   * omit the final identifier in its path and must not be reserved/read-only.
   */
  core.List<Entity> insertAutoId;
  /**
   * Entities to update. Each updated entity's key must have a complete path and
   * must not be reserved/read-only.
   */
  core.List<Entity> update;
  /**
   * Entities to upsert. Each upserted entity's key must have a complete path
   * and must not be reserved/read-only.
   */
  core.List<Entity> upsert;

  Mutation();

  Mutation.fromJson(core.Map _json) {
    if (_json.containsKey("delete")) {
      delete = _json["delete"].map((value) => new Key.fromJson(value)).toList();
    }
    if (_json.containsKey("force")) {
      force = _json["force"];
    }
    if (_json.containsKey("insert")) {
      insert = _json["insert"].map((value) => new Entity.fromJson(value)).toList();
    }
    if (_json.containsKey("insertAutoId")) {
      insertAutoId = _json["insertAutoId"].map((value) => new Entity.fromJson(value)).toList();
    }
    if (_json.containsKey("update")) {
      update = _json["update"].map((value) => new Entity.fromJson(value)).toList();
    }
    if (_json.containsKey("upsert")) {
      upsert = _json["upsert"].map((value) => new Entity.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (delete != null) {
      _json["delete"] = delete.map((value) => (value).toJson()).toList();
    }
    if (force != null) {
      _json["force"] = force;
    }
    if (insert != null) {
      _json["insert"] = insert.map((value) => (value).toJson()).toList();
    }
    if (insertAutoId != null) {
      _json["insertAutoId"] = insertAutoId.map((value) => (value).toJson()).toList();
    }
    if (update != null) {
      _json["update"] = update.map((value) => (value).toJson()).toList();
    }
    if (upsert != null) {
      _json["upsert"] = upsert.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class MutationResult {
  /** Number of index writes. */
  core.int indexUpdates;
  /**
   * Keys for insertAutoId entities. One per entity from the request, in the
   * same order.
   */
  core.List<Key> insertAutoIdKeys;

  MutationResult();

  MutationResult.fromJson(core.Map _json) {
    if (_json.containsKey("indexUpdates")) {
      indexUpdates = _json["indexUpdates"];
    }
    if (_json.containsKey("insertAutoIdKeys")) {
      insertAutoIdKeys = _json["insertAutoIdKeys"].map((value) => new Key.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (indexUpdates != null) {
      _json["indexUpdates"] = indexUpdates;
    }
    if (insertAutoIdKeys != null) {
      _json["insertAutoIdKeys"] = insertAutoIdKeys.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * An identifier for a particular subset of entities.
 *
 * Entities are partitioned into various subsets, each used by different
 * datasets and different namespaces within a dataset and so forth.
 */
class PartitionId {
  /** The dataset ID. */
  core.String datasetId;
  /** The namespace. */
  core.String namespace;

  PartitionId();

  PartitionId.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("namespace")) {
      namespace = _json["namespace"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (namespace != null) {
      _json["namespace"] = namespace;
    }
    return _json;
  }
}

/** An entity property. */
class Property {
  /** A blob key value. */
  core.String blobKeyValue;
  /**
   * A blob value. May be a maximum of 1,000,000 bytes. When indexed is true,
   * may have at most 500 bytes.
   */
  core.String blobValue;
  core.List<core.int> get blobValueAsBytes {
    return convert.BASE64.decode(blobValue);
  }

  void set blobValueAsBytes(core.List<core.int> _bytes) {
    blobValue = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }
  /** A boolean value. */
  core.bool booleanValue;
  /** A timestamp value. */
  core.DateTime dateTimeValue;
  /** A double value. */
  core.double doubleValue;
  /**
   * An entity value. May have no key. May have a key with an incomplete key
   * path. May have a reserved/read-only key.
   */
  Entity entityValue;
  /**
   * If the value should be indexed.
   *
   * The indexed property may be set for a null value. When indexed is true,
   * stringValue is limited to 500 characters and the blob value is limited to
   * 500 bytes. Input values by default have indexed set to true; however, you
   * can explicitly set indexed to true if you want. (An output value never has
   * indexed explicitly set to true.) If a value is itself an entity, it cannot
   * have indexed set to true.
   */
  core.bool indexed;
  /** An integer value. */
  core.String integerValue;
  /** A key value. */
  Key keyValue;
  /**
   * A list value. Cannot contain another list value. A Value instance that sets
   * field list_value must not set field meaning or field indexed.
   */
  core.List<Value> listValue;
  /** The meaning field is reserved and should not be used. */
  core.int meaning;
  /**
   * A UTF-8 encoded string value. When indexed is true, may have at most 500
   * characters.
   */
  core.String stringValue;

  Property();

  Property.fromJson(core.Map _json) {
    if (_json.containsKey("blobKeyValue")) {
      blobKeyValue = _json["blobKeyValue"];
    }
    if (_json.containsKey("blobValue")) {
      blobValue = _json["blobValue"];
    }
    if (_json.containsKey("booleanValue")) {
      booleanValue = _json["booleanValue"];
    }
    if (_json.containsKey("dateTimeValue")) {
      dateTimeValue = core.DateTime.parse(_json["dateTimeValue"]);
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"];
    }
    if (_json.containsKey("entityValue")) {
      entityValue = new Entity.fromJson(_json["entityValue"]);
    }
    if (_json.containsKey("indexed")) {
      indexed = _json["indexed"];
    }
    if (_json.containsKey("integerValue")) {
      integerValue = _json["integerValue"];
    }
    if (_json.containsKey("keyValue")) {
      keyValue = new Key.fromJson(_json["keyValue"]);
    }
    if (_json.containsKey("listValue")) {
      listValue = _json["listValue"].map((value) => new Value.fromJson(value)).toList();
    }
    if (_json.containsKey("meaning")) {
      meaning = _json["meaning"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (blobKeyValue != null) {
      _json["blobKeyValue"] = blobKeyValue;
    }
    if (blobValue != null) {
      _json["blobValue"] = blobValue;
    }
    if (booleanValue != null) {
      _json["booleanValue"] = booleanValue;
    }
    if (dateTimeValue != null) {
      _json["dateTimeValue"] = (dateTimeValue).toIso8601String();
    }
    if (doubleValue != null) {
      _json["doubleValue"] = doubleValue;
    }
    if (entityValue != null) {
      _json["entityValue"] = (entityValue).toJson();
    }
    if (indexed != null) {
      _json["indexed"] = indexed;
    }
    if (integerValue != null) {
      _json["integerValue"] = integerValue;
    }
    if (keyValue != null) {
      _json["keyValue"] = (keyValue).toJson();
    }
    if (listValue != null) {
      _json["listValue"] = listValue.map((value) => (value).toJson()).toList();
    }
    if (meaning != null) {
      _json["meaning"] = meaning;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/** A representation of a property in a projection. */
class PropertyExpression {
  /**
   * The aggregation function to apply to the property. Optional. Can only be
   * used when grouping by at least one property. Must then be set on all
   * properties in the projection that are not being grouped by. Aggregation
   * functions: first selects the first result as determined by the query's
   * order.
   * Possible string values are:
   * - "FIRST"
   */
  core.String aggregationFunction;
  /** The property to project. */
  PropertyReference property;

  PropertyExpression();

  PropertyExpression.fromJson(core.Map _json) {
    if (_json.containsKey("aggregationFunction")) {
      aggregationFunction = _json["aggregationFunction"];
    }
    if (_json.containsKey("property")) {
      property = new PropertyReference.fromJson(_json["property"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (aggregationFunction != null) {
      _json["aggregationFunction"] = aggregationFunction;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/** A filter on a specific property. */
class PropertyFilter {
  /**
   * The operator to filter by. One of lessThan, lessThanOrEqual, greaterThan,
   * greaterThanOrEqual, equal, or hasAncestor.
   * Possible string values are:
   * - "EQUAL"
   * - "GREATER_THAN"
   * - "GREATER_THAN_OR_EQUAL"
   * - "HAS_ANCESTOR"
   * - "LESS_THAN"
   * - "LESS_THAN_OR_EQUAL"
   */
  core.String operator;
  /** The property to filter by. */
  PropertyReference property;
  /** The value to compare the property to. */
  Value value;

  PropertyFilter();

  PropertyFilter.fromJson(core.Map _json) {
    if (_json.containsKey("operator")) {
      operator = _json["operator"];
    }
    if (_json.containsKey("property")) {
      property = new PropertyReference.fromJson(_json["property"]);
    }
    if (_json.containsKey("value")) {
      value = new Value.fromJson(_json["value"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (operator != null) {
      _json["operator"] = operator;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/** The desired order for a specific property. */
class PropertyOrder {
  /**
   * The direction to order by. One of ascending or descending. Optional,
   * defaults to ascending.
   * Possible string values are:
   * - "ASCENDING"
   * - "DESCENDING"
   */
  core.String direction;
  /** The property to order by. */
  PropertyReference property;

  PropertyOrder();

  PropertyOrder.fromJson(core.Map _json) {
    if (_json.containsKey("direction")) {
      direction = _json["direction"];
    }
    if (_json.containsKey("property")) {
      property = new PropertyReference.fromJson(_json["property"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (direction != null) {
      _json["direction"] = direction;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/** A reference to a property relative to the kind expressions. */
class PropertyReference {
  /** The name of the property. */
  core.String name;

  PropertyReference();

  PropertyReference.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** A query. */
class Query {
  /**
   * An ending point for the query results. Optional. Query cursors are returned
   * in query result batches.
   */
  core.String endCursor;
  core.List<core.int> get endCursorAsBytes {
    return convert.BASE64.decode(endCursor);
  }

  void set endCursorAsBytes(core.List<core.int> _bytes) {
    endCursor = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }
  /** The filter to apply (optional). */
  Filter filter;
  /**
   * The properties to group by (if empty, no grouping is applied to the result
   * set).
   */
  core.List<PropertyReference> groupBy;
  /** The kinds to query (if empty, returns entities from all kinds). */
  core.List<KindExpression> kinds;
  /**
   * The maximum number of results to return. Applies after all other
   * constraints. Optional.
   */
  core.int limit;
  /**
   * The number of results to skip. Applies before limit, but after all other
   * constraints (optional, defaults to 0).
   */
  core.int offset;
  /**
   * The order to apply to the query results (if empty, order is unspecified).
   */
  core.List<PropertyOrder> order;
  /** The projection to return. If not set the entire entity is returned. */
  core.List<PropertyExpression> projection;
  /**
   * A starting point for the query results. Optional. Query cursors are
   * returned in query result batches.
   */
  core.String startCursor;
  core.List<core.int> get startCursorAsBytes {
    return convert.BASE64.decode(startCursor);
  }

  void set startCursorAsBytes(core.List<core.int> _bytes) {
    startCursor = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }

  Query();

  Query.fromJson(core.Map _json) {
    if (_json.containsKey("endCursor")) {
      endCursor = _json["endCursor"];
    }
    if (_json.containsKey("filter")) {
      filter = new Filter.fromJson(_json["filter"]);
    }
    if (_json.containsKey("groupBy")) {
      groupBy = _json["groupBy"].map((value) => new PropertyReference.fromJson(value)).toList();
    }
    if (_json.containsKey("kinds")) {
      kinds = _json["kinds"].map((value) => new KindExpression.fromJson(value)).toList();
    }
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("offset")) {
      offset = _json["offset"];
    }
    if (_json.containsKey("order")) {
      order = _json["order"].map((value) => new PropertyOrder.fromJson(value)).toList();
    }
    if (_json.containsKey("projection")) {
      projection = _json["projection"].map((value) => new PropertyExpression.fromJson(value)).toList();
    }
    if (_json.containsKey("startCursor")) {
      startCursor = _json["startCursor"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endCursor != null) {
      _json["endCursor"] = endCursor;
    }
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    if (groupBy != null) {
      _json["groupBy"] = groupBy.map((value) => (value).toJson()).toList();
    }
    if (kinds != null) {
      _json["kinds"] = kinds.map((value) => (value).toJson()).toList();
    }
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (offset != null) {
      _json["offset"] = offset;
    }
    if (order != null) {
      _json["order"] = order.map((value) => (value).toJson()).toList();
    }
    if (projection != null) {
      _json["projection"] = projection.map((value) => (value).toJson()).toList();
    }
    if (startCursor != null) {
      _json["startCursor"] = startCursor;
    }
    return _json;
  }
}

/** A batch of results produced by a query. */
class QueryResultBatch {
  /**
   * A cursor that points to the position after the last result in the batch.
   * May be absent. TODO(arfuller): Once all plans produce cursors update
   * documentation here.
   */
  core.String endCursor;
  core.List<core.int> get endCursorAsBytes {
    return convert.BASE64.decode(endCursor);
  }

  void set endCursorAsBytes(core.List<core.int> _bytes) {
    endCursor = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }
  /**
   * The result type for every entity in entityResults. full for full entities,
   * projection for entities with only projected properties, keyOnly for
   * entities with only a key.
   * Possible string values are:
   * - "FULL"
   * - "KEY_ONLY"
   * - "PROJECTION"
   */
  core.String entityResultType;
  /** The results for this batch. */
  core.List<EntityResult> entityResults;
  /**
   * The state of the query after the current batch. One of notFinished,
   * moreResultsAfterLimit, noMoreResults.
   * Possible string values are:
   * - "MORE_RESULTS_AFTER_LIMIT"
   * - "NOT_FINISHED"
   * - "NO_MORE_RESULTS"
   */
  core.String moreResults;
  /** The number of results skipped because of Query.offset. */
  core.int skippedResults;

  QueryResultBatch();

  QueryResultBatch.fromJson(core.Map _json) {
    if (_json.containsKey("endCursor")) {
      endCursor = _json["endCursor"];
    }
    if (_json.containsKey("entityResultType")) {
      entityResultType = _json["entityResultType"];
    }
    if (_json.containsKey("entityResults")) {
      entityResults = _json["entityResults"].map((value) => new EntityResult.fromJson(value)).toList();
    }
    if (_json.containsKey("moreResults")) {
      moreResults = _json["moreResults"];
    }
    if (_json.containsKey("skippedResults")) {
      skippedResults = _json["skippedResults"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endCursor != null) {
      _json["endCursor"] = endCursor;
    }
    if (entityResultType != null) {
      _json["entityResultType"] = entityResultType;
    }
    if (entityResults != null) {
      _json["entityResults"] = entityResults.map((value) => (value).toJson()).toList();
    }
    if (moreResults != null) {
      _json["moreResults"] = moreResults;
    }
    if (skippedResults != null) {
      _json["skippedResults"] = skippedResults;
    }
    return _json;
  }
}

class ReadOptions {
  /**
   * The read consistency to use. One of default, strong, or eventual. Cannot be
   * set when transaction is set. Lookup and ancestor queries default to strong,
   * global queries default to eventual and cannot be set to strong. Optional.
   * Default is default.
   * Possible string values are:
   * - "DEFAULT"
   * - "EVENTUAL"
   * - "STRONG"
   */
  core.String readConsistency;
  /** The transaction to use. Optional. */
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }

  ReadOptions();

  ReadOptions.fromJson(core.Map _json) {
    if (_json.containsKey("readConsistency")) {
      readConsistency = _json["readConsistency"];
    }
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (readConsistency != null) {
      _json["readConsistency"] = readConsistency;
    }
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

class ResponseHeader {
  /**
   * Identifies what kind of resource this is. Value: the fixed string
   * "datastore#responseHeader".
   */
  core.String kind;

  ResponseHeader();

  ResponseHeader.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

class RollbackRequest {
  /** The transaction identifier, returned by a call to beginTransaction. */
  core.String transaction;
  core.List<core.int> get transactionAsBytes {
    return convert.BASE64.decode(transaction);
  }

  void set transactionAsBytes(core.List<core.int> _bytes) {
    transaction = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }

  RollbackRequest();

  RollbackRequest.fromJson(core.Map _json) {
    if (_json.containsKey("transaction")) {
      transaction = _json["transaction"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (transaction != null) {
      _json["transaction"] = transaction;
    }
    return _json;
  }
}

class RollbackResponse {
  ResponseHeader header;

  RollbackResponse();

  RollbackResponse.fromJson(core.Map _json) {
    if (_json.containsKey("header")) {
      header = new ResponseHeader.fromJson(_json["header"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    return _json;
  }
}

class RunQueryRequest {
  /**
   * The GQL query to run. Either this field or field query must be set, but not
   * both.
   */
  GqlQuery gqlQuery;
  /**
   * Entities are partitioned into subsets, identified by a dataset (usually
   * implicitly specified by the project) and namespace ID. Queries are scoped
   * to a single partition. This partition ID is normalized with the standard
   * default context partition ID, but all other partition IDs in
   * RunQueryRequest are normalized with this partition ID as the context
   * partition ID.
   */
  PartitionId partitionId;
  /**
   * The query to run. Either this field or field gql_query must be set, but not
   * both.
   */
  Query query;
  /** The options for this query. */
  ReadOptions readOptions;

  RunQueryRequest();

  RunQueryRequest.fromJson(core.Map _json) {
    if (_json.containsKey("gqlQuery")) {
      gqlQuery = new GqlQuery.fromJson(_json["gqlQuery"]);
    }
    if (_json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(_json["partitionId"]);
    }
    if (_json.containsKey("query")) {
      query = new Query.fromJson(_json["query"]);
    }
    if (_json.containsKey("readOptions")) {
      readOptions = new ReadOptions.fromJson(_json["readOptions"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (gqlQuery != null) {
      _json["gqlQuery"] = (gqlQuery).toJson();
    }
    if (partitionId != null) {
      _json["partitionId"] = (partitionId).toJson();
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (readOptions != null) {
      _json["readOptions"] = (readOptions).toJson();
    }
    return _json;
  }
}

class RunQueryResponse {
  /** A batch of query results (always present). */
  QueryResultBatch batch;
  ResponseHeader header;

  RunQueryResponse();

  RunQueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("batch")) {
      batch = new QueryResultBatch.fromJson(_json["batch"]);
    }
    if (_json.containsKey("header")) {
      header = new ResponseHeader.fromJson(_json["header"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (batch != null) {
      _json["batch"] = (batch).toJson();
    }
    if (header != null) {
      _json["header"] = (header).toJson();
    }
    return _json;
  }
}

/**
 * A message that can hold any of the supported value types and associated
 * metadata.
 */
class Value {
  /** A blob key value. */
  core.String blobKeyValue;
  /**
   * A blob value. May be a maximum of 1,000,000 bytes. When indexed is true,
   * may have at most 500 bytes.
   */
  core.String blobValue;
  core.List<core.int> get blobValueAsBytes {
    return convert.BASE64.decode(blobValue);
  }

  void set blobValueAsBytes(core.List<core.int> _bytes) {
    blobValue = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-").replaceAll("=", "");
  }
  /** A boolean value. */
  core.bool booleanValue;
  /** A timestamp value. */
  core.DateTime dateTimeValue;
  /** A double value. */
  core.double doubleValue;
  /**
   * An entity value. May have no key. May have a key with an incomplete key
   * path. May have a reserved/read-only key.
   */
  Entity entityValue;
  /**
   * If the value should be indexed.
   *
   * The indexed property may be set for a null value. When indexed is true,
   * stringValue is limited to 500 characters and the blob value is limited to
   * 500 bytes. Input values by default have indexed set to true; however, you
   * can explicitly set indexed to true if you want. (An output value never has
   * indexed explicitly set to true.) If a value is itself an entity, it cannot
   * have indexed set to true.
   */
  core.bool indexed;
  /** An integer value. */
  core.String integerValue;
  /** A key value. */
  Key keyValue;
  /**
   * A list value. Cannot contain another list value. A Value instance that sets
   * field list_value must not set field meaning or field indexed.
   */
  core.List<Value> listValue;
  /** The meaning field is reserved and should not be used. */
  core.int meaning;
  /**
   * A UTF-8 encoded string value. When indexed is true, may have at most 500
   * characters.
   */
  core.String stringValue;

  Value();

  Value.fromJson(core.Map _json) {
    if (_json.containsKey("blobKeyValue")) {
      blobKeyValue = _json["blobKeyValue"];
    }
    if (_json.containsKey("blobValue")) {
      blobValue = _json["blobValue"];
    }
    if (_json.containsKey("booleanValue")) {
      booleanValue = _json["booleanValue"];
    }
    if (_json.containsKey("dateTimeValue")) {
      dateTimeValue = core.DateTime.parse(_json["dateTimeValue"]);
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"];
    }
    if (_json.containsKey("entityValue")) {
      entityValue = new Entity.fromJson(_json["entityValue"]);
    }
    if (_json.containsKey("indexed")) {
      indexed = _json["indexed"];
    }
    if (_json.containsKey("integerValue")) {
      integerValue = _json["integerValue"];
    }
    if (_json.containsKey("keyValue")) {
      keyValue = new Key.fromJson(_json["keyValue"]);
    }
    if (_json.containsKey("listValue")) {
      listValue = _json["listValue"].map((value) => new Value.fromJson(value)).toList();
    }
    if (_json.containsKey("meaning")) {
      meaning = _json["meaning"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (blobKeyValue != null) {
      _json["blobKeyValue"] = blobKeyValue;
    }
    if (blobValue != null) {
      _json["blobValue"] = blobValue;
    }
    if (booleanValue != null) {
      _json["booleanValue"] = booleanValue;
    }
    if (dateTimeValue != null) {
      _json["dateTimeValue"] = (dateTimeValue).toIso8601String();
    }
    if (doubleValue != null) {
      _json["doubleValue"] = doubleValue;
    }
    if (entityValue != null) {
      _json["entityValue"] = (entityValue).toJson();
    }
    if (indexed != null) {
      _json["indexed"] = indexed;
    }
    if (integerValue != null) {
      _json["integerValue"] = integerValue;
    }
    if (keyValue != null) {
      _json["keyValue"] = (keyValue).toJson();
    }
    if (listValue != null) {
      _json["listValue"] = listValue.map((value) => (value).toJson()).toList();
    }
    if (meaning != null) {
      _json["meaning"] = meaning;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}
