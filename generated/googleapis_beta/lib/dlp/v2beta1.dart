// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.dlp.v2beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client dlp/v2beta1';

/**
 * The Google Data Loss Prevention API provides methods for detection of
 * privacy-sensitive fragments in text, images, and Google Cloud Platform
 * storage repositories.
 */
class DlpApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  ContentResourceApi get content => new ContentResourceApi(_requester);
  InspectResourceApi get inspect => new InspectResourceApi(_requester);
  RootCategoriesResourceApi get rootCategories => new RootCategoriesResourceApi(_requester);

  DlpApi(http.Client client, {core.String rootUrl: "https://dlp.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ContentResourceApi {
  final commons.ApiRequester _requester;

  ContentResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Find potentially sensitive info in a list of strings.
   * This method has limits on input size, processing time, and output size.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [InspectContentResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<InspectContentResponse> inspect(InspectContentRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2beta1/content:inspect';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new InspectContentResponse.fromJson(data));
  }

  /**
   * Redact potentially sensitive info from a list of strings.
   * This method has limits on input size, processing time, and output size.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [RedactContentResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<RedactContentResponse> redact(RedactContentRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2beta1/content:redact';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new RedactContentResponse.fromJson(data));
  }

}


class InspectResourceApi {
  final commons.ApiRequester _requester;

  InspectOperationsResourceApi get operations => new InspectOperationsResourceApi(_requester);
  InspectResultsResourceApi get results => new InspectResultsResourceApi(_requester);

  InspectResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class InspectOperationsResourceApi {
  final commons.ApiRequester _requester;

  InspectOperationsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Cancels an operation. Use the get method to check whether the cancellation
   * succeeded or whether the operation completed despite cancellation.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource to be cancelled.
   * Value must have pattern "^inspect/operations/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> cancel(CancelOperationRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Schedule a job scanning content in a Google Cloud Platform data repository.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> create(CreateInspectOperationRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2beta1/inspect/operations';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * This method is not supported and the server returns `UNIMPLEMENTED`.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource to be deleted.
   * Value must have pattern "^inspect/operations/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

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
   * Gets the latest state of a long-running operation.  Clients can use this
   * method to poll the operation result at intervals as recommended by the API
   * service.
   *
   * Request parameters:
   *
   * [name] - The name of the operation resource.
   * Value must have pattern "^inspect/operations/[^/]+$".
   *
   * Completes with a [Operation].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Operation> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /**
   * Lists operations that match the specified filter in the request. If the
   * server doesn't support this method, it returns `UNIMPLEMENTED`.
   *
   * NOTE: the `name` binding below allows API services to override the binding
   * to use different resource name schemes, such as `users / * /operations`.
   *
   * Request parameters:
   *
   * [name] - The name of the operation collection.
   * Value must have pattern "^inspect/operations$".
   *
   * [filter] - This parameter supports filtering by done, ie done=true or
   * done=false.
   *
   * [pageToken] - The list page token.
   *
   * [pageSize] - The list page size. The max allowed value is 256 and default
   * is 100.
   *
   * Completes with a [ListOperationsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListOperationsResponse> list(core.String name, {core.String filter, core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListOperationsResponse.fromJson(data));
  }

}


class InspectResultsResourceApi {
  final commons.ApiRequester _requester;

  InspectResultsFindingsResourceApi get findings => new InspectResultsFindingsResourceApi(_requester);

  InspectResultsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class InspectResultsFindingsResourceApi {
  final commons.ApiRequester _requester;

  InspectResultsFindingsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns list of results for given inspect operation result set id.
   *
   * Request parameters:
   *
   * [name] - Identifier of the results set returned as metadata of
   * the longrunning operation created by a call to CreateInspectOperation.
   * Should be in the format of `inspect/results/{id}.
   * Value must have pattern "^inspect/results/[^/]+$".
   *
   * [pageToken] - The value returned by the last `ListInspectFindingsResponse`;
   * indicates
   * that this is a continuation of a prior `ListInspectFindings` call, and that
   * the system should return the next page of data.
   *
   * [pageSize] - Maximum number of results to return.
   * If 0, the implementation will select a reasonable value.
   *
   * Completes with a [ListInspectFindingsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListInspectFindingsResponse> list(core.String name, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$name') + '/findings';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListInspectFindingsResponse.fromJson(data));
  }

}


class RootCategoriesResourceApi {
  final commons.ApiRequester _requester;

  RootCategoriesInfoTypesResourceApi get infoTypes => new RootCategoriesInfoTypesResourceApi(_requester);

  RootCategoriesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns the list of root categories of sensitive information.
   *
   * Request parameters:
   *
   * [languageCode] - Optional language code for localized friendly category
   * names.
   * If omitted or if localized strings are not available,
   * en-US strings will be returned.
   *
   * Completes with a [ListRootCategoriesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListRootCategoriesResponse> list({core.String languageCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }

    _url = 'v2beta1/rootCategories';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListRootCategoriesResponse.fromJson(data));
  }

}


class RootCategoriesInfoTypesResourceApi {
  final commons.ApiRequester _requester;

  RootCategoriesInfoTypesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns sensitive information types for given category.
   *
   * Request parameters:
   *
   * [category] - Category name as returned by ListRootCategories.
   * Value must have pattern "^[^/]+$".
   *
   * [languageCode] - Optional BCP-47 language code for localized info type
   * friendly
   * names. If omitted, or if localized strings are not available,
   * en-US strings will be returned.
   *
   * Completes with a [ListInfoTypesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListInfoTypesResponse> list(core.String category, {core.String languageCode}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (category == null) {
      throw new core.ArgumentError("Parameter category is required.");
    }
    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }

    _url = 'v2beta1/rootCategories/' + commons.Escaper.ecapeVariableReserved('$category') + '/infoTypes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListInfoTypesResponse.fromJson(data));
  }

}



/** The request message for Operations.CancelOperation. */
class CancelOperationRequest {

  CancelOperationRequest();

  CancelOperationRequest.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** Info Type Category description. */
class CategoryDescription {
  /** Human readable form of the category name. */
  core.String displayName;
  /** Internal name of the category. */
  core.String name;

  CategoryDescription();

  CategoryDescription.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** Record key for a finding in a Cloud Storage file. */
class CloudStorageKey {
  /** Path to the file. */
  core.String filePath;
  /** Byte offset of the referenced data in the file. */
  core.String startOffset;

  CloudStorageKey();

  CloudStorageKey.fromJson(core.Map _json) {
    if (_json.containsKey("filePath")) {
      filePath = _json["filePath"];
    }
    if (_json.containsKey("startOffset")) {
      startOffset = _json["startOffset"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filePath != null) {
      _json["filePath"] = filePath;
    }
    if (startOffset != null) {
      _json["startOffset"] = startOffset;
    }
    return _json;
  }
}

/**
 * Options defining a file or a set of files (path ending with *) within
 * a Google Cloud Storage bucket.
 */
class CloudStorageOptions {
  FileSet fileSet;

  CloudStorageOptions();

  CloudStorageOptions.fromJson(core.Map _json) {
    if (_json.containsKey("fileSet")) {
      fileSet = new FileSet.fromJson(_json["fileSet"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fileSet != null) {
      _json["fileSet"] = (fileSet).toJson();
    }
    return _json;
  }
}

/** Container structure for the content to inspect. */
class ContentItem {
  /** Content data to inspect or redact. */
  core.String data;
  core.List<core.int> get dataAsBytes {
    return convert.BASE64.decode(data);
  }

  void set dataAsBytes(core.List<core.int> _bytes) {
    data = convert.BASE64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }
  /**
   * Type of the content, as defined in Content-Type HTTP header.
   * Supported types are: all "text" types, octet streams, PNG images,
   * JPEG images.
   */
  core.String type;
  /** String data to inspect or redact. */
  core.String value;

  ContentItem();

  ContentItem.fromJson(core.Map _json) {
    if (_json.containsKey("data")) {
      data = _json["data"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (data != null) {
      _json["data"] = data;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/**
 * Request for scheduling a scan of a data subset from a Google Platform data
 * repository.
 */
class CreateInspectOperationRequest {
  /** Configuration for the inspector. */
  InspectConfig inspectConfig;
  /** Specification of the data set to process. */
  StorageConfig storageConfig;

  CreateInspectOperationRequest();

  CreateInspectOperationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inspectConfig")) {
      inspectConfig = new InspectConfig.fromJson(_json["inspectConfig"]);
    }
    if (_json.containsKey("storageConfig")) {
      storageConfig = new StorageConfig.fromJson(_json["storageConfig"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inspectConfig != null) {
      _json["inspectConfig"] = (inspectConfig).toJson();
    }
    if (storageConfig != null) {
      _json["storageConfig"] = (storageConfig).toJson();
    }
    return _json;
  }
}

/** Record key for a finding in Cloud Datastore. */
class DatastoreKey {
  /** Datastore entity key. */
  Key entityKey;

  DatastoreKey();

  DatastoreKey.fromJson(core.Map _json) {
    if (_json.containsKey("entityKey")) {
      entityKey = new Key.fromJson(_json["entityKey"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entityKey != null) {
      _json["entityKey"] = (entityKey).toJson();
    }
    return _json;
  }
}

/** Options defining a data set within Google Cloud Datastore. */
class DatastoreOptions {
  /** The kind to process. */
  KindExpression kind;
  /**
   * A partition ID identifies a grouping of entities. The grouping is always
   * by project and namespace, however the namespace ID may be empty.
   */
  PartitionId partitionId;
  /**
   * Properties to scan. If none are specified, all properties will be scanned
   * by default.
   */
  core.List<Projection> projection;

  DatastoreOptions();

  DatastoreOptions.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = new KindExpression.fromJson(_json["kind"]);
    }
    if (_json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(_json["partitionId"]);
    }
    if (_json.containsKey("projection")) {
      projection = _json["projection"].map((value) => new Projection.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kind != null) {
      _json["kind"] = (kind).toJson();
    }
    if (partitionId != null) {
      _json["partitionId"] = (partitionId).toJson();
    }
    if (projection != null) {
      _json["projection"] = projection.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request
 * or the response type of an API method. For instance:
 *
 *     service Foo {
 *       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *     }
 *
 * The JSON representation for `Empty` is empty JSON object `{}`.
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

/** General identifier of a data field in a storage service. */
class FieldId {
  /** Column name describing the field. */
  core.String columnName;

  FieldId();

  FieldId.fromJson(core.Map _json) {
    if (_json.containsKey("columnName")) {
      columnName = _json["columnName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (columnName != null) {
      _json["columnName"] = columnName;
    }
    return _json;
  }
}

/** Set of files to scan. */
class FileSet {
  /**
   * The url, in the format gs://<bucket>/<path>. Trailing wildcard in the
   * path is allowed.
   */
  core.String url;

  FileSet();

  FileSet.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/**
 * Container structure describing a single finding within a string or image.
 */
class Finding {
  /** Timestamp when finding was detected. */
  core.String createTime;
  /** The specific type of info the string might be. */
  InfoType infoType;
  /**
   * Estimate of how likely it is that the info_type is correct.
   * Possible string values are:
   * - "LIKELIHOOD_UNSPECIFIED" : Default value; information with all
   * likelihoods will be included.
   * - "VERY_UNLIKELY" : Few matching elements.
   * - "UNLIKELY"
   * - "POSSIBLE" : Some matching elements.
   * - "LIKELY"
   * - "VERY_LIKELY" : Many matching elements.
   */
  core.String likelihood;
  /** Location of the info found. */
  Location location;
  /** The specific string that may be potentially sensitive info. */
  core.String quote;

  Finding();

  Finding.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("infoType")) {
      infoType = new InfoType.fromJson(_json["infoType"]);
    }
    if (_json.containsKey("likelihood")) {
      likelihood = _json["likelihood"];
    }
    if (_json.containsKey("location")) {
      location = new Location.fromJson(_json["location"]);
    }
    if (_json.containsKey("quote")) {
      quote = _json["quote"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    if (likelihood != null) {
      _json["likelihood"] = likelihood;
    }
    if (location != null) {
      _json["location"] = (location).toJson();
    }
    if (quote != null) {
      _json["quote"] = quote;
    }
    return _json;
  }
}

/** Bounding box encompassing detected text within an image. */
class ImageLocation {
  /** Height of the bounding box in pixels. */
  core.int height;
  /** Left coordinate of the bounding box. (0,0) is upper left. */
  core.int left;
  /** Top coordinate of the bounding box. (0,0) is upper left. */
  core.int top;
  /** Width of the bounding box in pixels. */
  core.int width;

  ImageLocation();

  ImageLocation.fromJson(core.Map _json) {
    if (_json.containsKey("height")) {
      height = _json["height"];
    }
    if (_json.containsKey("left")) {
      left = _json["left"];
    }
    if (_json.containsKey("top")) {
      top = _json["top"];
    }
    if (_json.containsKey("width")) {
      width = _json["width"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (height != null) {
      _json["height"] = height;
    }
    if (left != null) {
      _json["left"] = left;
    }
    if (top != null) {
      _json["top"] = top;
    }
    if (width != null) {
      _json["width"] = width;
    }
    return _json;
  }
}

/** Type of information detected by the API. */
class InfoType {
  /** Name of the information type, provided by the API call ListInfoTypes. */
  core.String name;

  InfoType();

  InfoType.fromJson(core.Map _json) {
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

/** Info type description. */
class InfoTypeDescription {
  /** List of categories this info type belongs to. */
  core.List<CategoryDescription> categories;
  /** Human readable form of the info type name. */
  core.String displayName;
  /** Internal name of the info type. */
  core.String name;

  InfoTypeDescription();

  InfoTypeDescription.fromJson(core.Map _json) {
    if (_json.containsKey("categories")) {
      categories = _json["categories"].map((value) => new CategoryDescription.fromJson(value)).toList();
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (categories != null) {
      _json["categories"] = categories.map((value) => (value).toJson()).toList();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/**
 * Configuration description of the scanning process.
 * When used with redactContent only info_types and min_likelihood are currently
 * used.
 */
class InspectConfig {
  /** When true, exclude type information of the findings. */
  core.bool excludeTypes;
  /**
   * When true, a contextual quote from the data that triggered a finding will
   * be included in the response; see Finding.quote.
   */
  core.bool includeQuote;
  /**
   * Restrict what info_types to look for. The values must correspond to
   * InfoType values returned by ListInfoTypes or found in documentation.
   * Empty info_types runs all enabled detectors.
   */
  core.List<InfoType> infoTypes;
  /** Limit the number of findings per content item. */
  core.int maxFindings;
  /**
   * Only return findings equal or above this threshold.
   * Possible string values are:
   * - "LIKELIHOOD_UNSPECIFIED" : Default value; information with all
   * likelihoods will be included.
   * - "VERY_UNLIKELY" : Few matching elements.
   * - "UNLIKELY"
   * - "POSSIBLE" : Some matching elements.
   * - "LIKELY"
   * - "VERY_LIKELY" : Many matching elements.
   */
  core.String minLikelihood;

  InspectConfig();

  InspectConfig.fromJson(core.Map _json) {
    if (_json.containsKey("excludeTypes")) {
      excludeTypes = _json["excludeTypes"];
    }
    if (_json.containsKey("includeQuote")) {
      includeQuote = _json["includeQuote"];
    }
    if (_json.containsKey("infoTypes")) {
      infoTypes = _json["infoTypes"].map((value) => new InfoType.fromJson(value)).toList();
    }
    if (_json.containsKey("maxFindings")) {
      maxFindings = _json["maxFindings"];
    }
    if (_json.containsKey("minLikelihood")) {
      minLikelihood = _json["minLikelihood"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (excludeTypes != null) {
      _json["excludeTypes"] = excludeTypes;
    }
    if (includeQuote != null) {
      _json["includeQuote"] = includeQuote;
    }
    if (infoTypes != null) {
      _json["infoTypes"] = infoTypes.map((value) => (value).toJson()).toList();
    }
    if (maxFindings != null) {
      _json["maxFindings"] = maxFindings;
    }
    if (minLikelihood != null) {
      _json["minLikelihood"] = minLikelihood;
    }
    return _json;
  }
}

/** Request to search for potentially sensitive info in a list of items. */
class InspectContentRequest {
  /** Configuration for the inspector. */
  InspectConfig inspectConfig;
  /**
   * The list of items to inspect. Items in a single request are
   * considered "related" unless inspect_config.independent_inputs is true.
   * Up to 100 are allowed per request.
   */
  core.List<ContentItem> items;

  InspectContentRequest();

  InspectContentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inspectConfig")) {
      inspectConfig = new InspectConfig.fromJson(_json["inspectConfig"]);
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new ContentItem.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inspectConfig != null) {
      _json["inspectConfig"] = (inspectConfig).toJson();
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Results of inspecting a list of items. */
class InspectContentResponse {
  /**
   * Each content_item from the request will have a result in this list, in the
   * same order as the request.
   */
  core.List<InspectResult> results;

  InspectContentResponse();

  InspectContentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("results")) {
      results = _json["results"].map((value) => new InspectResult.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** All the findings for a single scanned item. */
class InspectResult {
  /** List of findings for an item. */
  core.List<Finding> findings;
  /**
   * If true, then this item might have more findings than were returned,
   * and the findings returned are an arbitrary subset of all findings.
   * The findings list might be truncated because the input items were too
   * large, or because the server reached the maximum amount of resources
   * allowed for a single API call. For best results, divide the input into
   * smaller batches.
   */
  core.bool findingsTruncated;

  InspectResult();

  InspectResult.fromJson(core.Map _json) {
    if (_json.containsKey("findings")) {
      findings = _json["findings"].map((value) => new Finding.fromJson(value)).toList();
    }
    if (_json.containsKey("findingsTruncated")) {
      findingsTruncated = _json["findingsTruncated"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (findings != null) {
      _json["findings"] = findings.map((value) => (value).toJson()).toList();
    }
    if (findingsTruncated != null) {
      _json["findingsTruncated"] = findingsTruncated;
    }
    return _json;
  }
}

/**
 * A unique identifier for a Datastore entity.
 * If a key's partition ID or any of its path kinds or names are
 * reserved/read-only, the key is reserved/read-only.
 * A reserved/read-only key is forbidden in certain documented contexts.
 */
class Key {
  /**
   * Entities are partitioned into subsets, currently identified by a project
   * ID and namespace ID.
   * Queries are scoped to a single partition.
   */
  PartitionId partitionId;
  /**
   * The entity path.
   * An entity path consists of one or more elements composed of a kind and a
   * string or numerical identifier, which identify entities. The first
   * element identifies a _root entity_, the second element identifies
   * a _child_ of the root entity, the third element identifies a child of the
   * second entity, and so forth. The entities identified by all prefixes of
   * the path are called the element's _ancestors_.
   *
   * A path can never be empty, and a path can have at most 100 elements.
   */
  core.List<PathElement> path;

  Key();

  Key.fromJson(core.Map _json) {
    if (_json.containsKey("partitionId")) {
      partitionId = new PartitionId.fromJson(_json["partitionId"]);
    }
    if (_json.containsKey("path")) {
      path = _json["path"].map((value) => new PathElement.fromJson(value)).toList();
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

/** A representation of a Datastore kind. */
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

/** Response to the ListInfoTypes request. */
class ListInfoTypesResponse {
  /** Set of sensitive info types belonging to a category. */
  core.List<InfoTypeDescription> infoTypes;

  ListInfoTypesResponse();

  ListInfoTypesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("infoTypes")) {
      infoTypes = _json["infoTypes"].map((value) => new InfoTypeDescription.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (infoTypes != null) {
      _json["infoTypes"] = infoTypes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Response to the ListInspectFindings request. */
class ListInspectFindingsResponse {
  /**
   * If not empty, indicates that there may be more results that match the
   * request; this value should be passed in a new `ListInspectFindingsRequest`.
   */
  core.String nextPageToken;
  /** The results. */
  InspectResult result;

  ListInspectFindingsResponse();

  ListInspectFindingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("result")) {
      result = new InspectResult.fromJson(_json["result"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    return _json;
  }
}

/** The response message for Operations.ListOperations. */
class ListOperationsResponse {
  /** The standard List next-page token. */
  core.String nextPageToken;
  /** A list of operations that matches the specified filter in the request. */
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = _json["operations"].map((value) => new Operation.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] = operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Response for ListRootCategories request. */
class ListRootCategoriesResponse {
  /** List of all into type categories supported by the API. */
  core.List<CategoryDescription> categories;

  ListRootCategoriesResponse();

  ListRootCategoriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("categories")) {
      categories = _json["categories"].map((value) => new CategoryDescription.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (categories != null) {
      _json["categories"] = categories.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Specifies the location of a finding within its source item. */
class Location {
  /** Zero-based byte offsets within a content item. */
  Range byteRange;
  /**
   * Character offsets within a content item, included when content type
   * is a text. Default charset assumed to be UTF-8.
   */
  Range codepointRange;
  /** Field id of the field containing the finding. */
  FieldId fieldId;
  /** Location within an image's pixels. */
  core.List<ImageLocation> imageBoxes;
  /** Key of the finding. */
  RecordKey recordKey;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey("byteRange")) {
      byteRange = new Range.fromJson(_json["byteRange"]);
    }
    if (_json.containsKey("codepointRange")) {
      codepointRange = new Range.fromJson(_json["codepointRange"]);
    }
    if (_json.containsKey("fieldId")) {
      fieldId = new FieldId.fromJson(_json["fieldId"]);
    }
    if (_json.containsKey("imageBoxes")) {
      imageBoxes = _json["imageBoxes"].map((value) => new ImageLocation.fromJson(value)).toList();
    }
    if (_json.containsKey("recordKey")) {
      recordKey = new RecordKey.fromJson(_json["recordKey"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (byteRange != null) {
      _json["byteRange"] = (byteRange).toJson();
    }
    if (codepointRange != null) {
      _json["codepointRange"] = (codepointRange).toJson();
    }
    if (fieldId != null) {
      _json["fieldId"] = (fieldId).toJson();
    }
    if (imageBoxes != null) {
      _json["imageBoxes"] = imageBoxes.map((value) => (value).toJson()).toList();
    }
    if (recordKey != null) {
      _json["recordKey"] = (recordKey).toJson();
    }
    return _json;
  }
}

/**
 * This resource represents a long-running operation that is the result of a
 * network API call.
 */
class Operation {
  /**
   * If the value is `false`, it means the operation is still in progress.
   * If true, the operation is completed, and either `error` or `response` is
   * available.
   */
  core.bool done;
  /** The error result of the operation in case of failure or cancellation. */
  Status error;
  /**
   * This field will contain an `InspectOperationMetdata` object.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> metadata;
  /**
   * The server-assigned name, The `name` should have the format of
   * `inspect/operations/<identifier>`.
   */
  core.String name;
  /**
   * This field will contain an `InspectOperationResult` object.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata = _json["metadata"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response = _json["response"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/**
 * Datastore partition ID.
 * A partition ID identifies a grouping of entities. The grouping is always
 * by project and namespace, however the namespace ID may be empty.
 *
 * A partition ID contains several dimensions:
 * project ID and namespace ID.
 */
class PartitionId {
  /**
   * If not empty, the ID of the database to which the entities
   * belong.
   */
  core.String databaseId;
  /** If not empty, the ID of the namespace to which the entities belong. */
  core.String namespaceId;
  /** The ID of the project to which the entities belong. */
  core.String projectId;

  PartitionId();

  PartitionId.fromJson(core.Map _json) {
    if (_json.containsKey("databaseId")) {
      databaseId = _json["databaseId"];
    }
    if (_json.containsKey("namespaceId")) {
      namespaceId = _json["namespaceId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (databaseId != null) {
      _json["databaseId"] = databaseId;
    }
    if (namespaceId != null) {
      _json["namespaceId"] = namespaceId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/**
 * A (kind, ID/name) pair used to construct a key path.
 *
 * If either name or ID is set, the element is complete.
 * If neither is set, the element is incomplete.
 */
class PathElement {
  /**
   * The auto-allocated ID of the entity.
   * Never equal to zero. Values less than zero are discouraged and may not
   * be supported in the future.
   */
  core.String id;
  /**
   * The kind of the entity.
   * A kind matching regex `__.*__` is reserved/read-only.
   * A kind must not contain more than 1500 bytes when UTF-8 encoded.
   * Cannot be `""`.
   */
  core.String kind;
  /**
   * The name of the entity.
   * A name matching regex `__.*__` is reserved/read-only.
   * A name must not be more than 1500 bytes when UTF-8 encoded.
   * Cannot be `""`.
   */
  core.String name;

  PathElement();

  PathElement.fromJson(core.Map _json) {
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

/** A representation of a Datastore property in a projection. */
class Projection {
  /** The property to project. */
  PropertyReference property;

  Projection();

  Projection.fromJson(core.Map _json) {
    if (_json.containsKey("property")) {
      property = new PropertyReference.fromJson(_json["property"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/** A reference to a property relative to the Datastore kind expressions. */
class PropertyReference {
  /**
   * The name of the property.
   * If name includes "."s, it may be interpreted as a property name path.
   */
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

/** Generic half-open interval [start, end) */
class Range {
  /** Index of the last character of the range (exclusive). */
  core.String end;
  /** Index of the first character of the range (inclusive). */
  core.String start;

  Range();

  Range.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (end != null) {
      _json["end"] = end;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}

/** Message for a unique key indicating a record that contains a finding. */
class RecordKey {
  CloudStorageKey cloudStorageKey;
  DatastoreKey datastoreKey;

  RecordKey();

  RecordKey.fromJson(core.Map _json) {
    if (_json.containsKey("cloudStorageKey")) {
      cloudStorageKey = new CloudStorageKey.fromJson(_json["cloudStorageKey"]);
    }
    if (_json.containsKey("datastoreKey")) {
      datastoreKey = new DatastoreKey.fromJson(_json["datastoreKey"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cloudStorageKey != null) {
      _json["cloudStorageKey"] = (cloudStorageKey).toJson();
    }
    if (datastoreKey != null) {
      _json["datastoreKey"] = (datastoreKey).toJson();
    }
    return _json;
  }
}

/**
 * Request to search for potentially sensitive info in a list of items
 * and replace it with a default or provided content.
 */
class RedactContentRequest {
  /** Configuration for the inspector. */
  InspectConfig inspectConfig;
  /** The list of items to inspect. Up to 100 are allowed per request. */
  core.List<ContentItem> items;
  /** The strings to replace findings with. Must specify at least one. */
  core.List<ReplaceConfig> replaceConfigs;

  RedactContentRequest();

  RedactContentRequest.fromJson(core.Map _json) {
    if (_json.containsKey("inspectConfig")) {
      inspectConfig = new InspectConfig.fromJson(_json["inspectConfig"]);
    }
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new ContentItem.fromJson(value)).toList();
    }
    if (_json.containsKey("replaceConfigs")) {
      replaceConfigs = _json["replaceConfigs"].map((value) => new ReplaceConfig.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (inspectConfig != null) {
      _json["inspectConfig"] = (inspectConfig).toJson();
    }
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (replaceConfigs != null) {
      _json["replaceConfigs"] = replaceConfigs.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Results of deidentifying a list of items. */
class RedactContentResponse {
  /** The redacted content. */
  core.List<ContentItem> items;

  RedactContentResponse();

  RedactContentResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = _json["items"].map((value) => new ContentItem.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ReplaceConfig {
  /**
   * Type of information to replace. Only one ReplaceConfig per info_type
   * should be provided. If ReplaceConfig does not have an info_type, we'll
   * match it against all info_types that are found but not specified in
   * another ReplaceConfig.
   */
  InfoType infoType;
  /** Content replacing sensitive information of given type. Max 256 chars. */
  core.String replaceWith;

  ReplaceConfig();

  ReplaceConfig.fromJson(core.Map _json) {
    if (_json.containsKey("infoType")) {
      infoType = new InfoType.fromJson(_json["infoType"]);
    }
    if (_json.containsKey("replaceWith")) {
      replaceWith = _json["replaceWith"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (infoType != null) {
      _json["infoType"] = (infoType).toJson();
    }
    if (replaceWith != null) {
      _json["replaceWith"] = replaceWith;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different
 * programming environments, including REST APIs and RPC APIs. It is used by
 * [gRPC](https://github.com/grpc). The error model is designed to be:
 *
 * - Simple to use and understand for most users
 * - Flexible enough to meet unexpected needs
 *
 * # Overview
 *
 * The `Status` message contains three pieces of data: error code, error
 * message,
 * and error details. The error code should be an enum value of
 * google.rpc.Code, but it may accept additional error codes if needed.  The
 * error message should be a developer-facing English message that helps
 * developers *understand* and *resolve* the error. If a localized user-facing
 * error message is needed, put the localized message in the error details or
 * localize it in the client. The optional error details may contain arbitrary
 * information about the error. There is a predefined set of error detail types
 * in the package `google.rpc` which can be used for common error conditions.
 *
 * # Language mapping
 *
 * The `Status` message is the logical representation of the error model, but it
 * is not necessarily the actual wire format. When the `Status` message is
 * exposed in different client libraries and different wire protocols, it can be
 * mapped differently. For example, it will likely be mapped to some exceptions
 * in Java, but more likely mapped to some error codes in C.
 *
 * # Other uses
 *
 * The error model and the `Status` message can be used in a variety of
 * environments, either with or without APIs, to provide a
 * consistent developer experience across different environments.
 *
 * Example uses of this error model include:
 *
 * - Partial errors. If a service needs to return partial errors to the client,
 *     it may embed the `Status` in the normal response to indicate the partial
 *     errors.
 *
 * - Workflow errors. A typical workflow has multiple steps. Each step may
 *     have a `Status` message for error reporting purpose.
 *
 * - Batch operations. If a client uses batch request and batch response, the
 *     `Status` message should be used directly inside batch response, one for
 *     each error sub-response.
 *
 * - Asynchronous operations. If an API call embeds asynchronous operation
 *     results in its response, the status of those operations should be
 *     represented directly using the `Status` message.
 *
 * - Logging. If some API errors are stored in logs, the message `Status` could
 * be used directly after any stripping needed for security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details.  There will be a
   * common set of message types for APIs to use.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * google.rpc.Status.details field, or localized by the client.
   */
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/** Shared message indicating Cloud storage type. */
class StorageConfig {
  /** Google Cloud Storage options specification. */
  CloudStorageOptions cloudStorageOptions;
  /** Google Cloud Datastore options specification. */
  DatastoreOptions datastoreOptions;

  StorageConfig();

  StorageConfig.fromJson(core.Map _json) {
    if (_json.containsKey("cloudStorageOptions")) {
      cloudStorageOptions = new CloudStorageOptions.fromJson(_json["cloudStorageOptions"]);
    }
    if (_json.containsKey("datastoreOptions")) {
      datastoreOptions = new DatastoreOptions.fromJson(_json["datastoreOptions"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cloudStorageOptions != null) {
      _json["cloudStorageOptions"] = (cloudStorageOptions).toJson();
    }
    if (datastoreOptions != null) {
      _json["datastoreOptions"] = (datastoreOptions).toJson();
    }
    return _json;
  }
}
