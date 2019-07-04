// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.cloudsearch.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show
        ApiRequestError,
        DetailedApiRequestError,
        Media,
        UploadOptions,
        ResumableUploadOptions,
        DownloadOptions,
        PartialDownloadOptions,
        ByteRange;

const core.String USER_AGENT = 'dart-api-client cloudsearch/v1';

/// Cloud Search provides cloud-based search capabilities over G Suite data.
/// The Cloud Search API allows indexing of non-G Suite data into Cloud Search.
class CloudsearchApi {
  /// Index and serve your organization's data with Cloud Search
  static const CloudSearchScope =
      "https://www.googleapis.com/auth/cloud_search";

  /// New Service: https://www.googleapis.com/auth/cloud_search.debug
  static const CloudSearchDebugScope =
      "https://www.googleapis.com/auth/cloud_search.debug";

  /// New Service: https://www.googleapis.com/auth/cloud_search.indexing
  static const CloudSearchIndexingScope =
      "https://www.googleapis.com/auth/cloud_search.indexing";

  /// Search your organization's data in the Cloud Search index
  static const CloudSearchQueryScope =
      "https://www.googleapis.com/auth/cloud_search.query";

  /// New Service: https://www.googleapis.com/auth/cloud_search.settings
  static const CloudSearchSettingsScope =
      "https://www.googleapis.com/auth/cloud_search.settings";

  /// New Service:
  /// https://www.googleapis.com/auth/cloud_search.settings.indexing
  static const CloudSearchSettingsIndexingScope =
      "https://www.googleapis.com/auth/cloud_search.settings.indexing";

  /// New Service: https://www.googleapis.com/auth/cloud_search.settings.query
  static const CloudSearchSettingsQueryScope =
      "https://www.googleapis.com/auth/cloud_search.settings.query";

  /// New Service: https://www.googleapis.com/auth/cloud_search.stats
  static const CloudSearchStatsScope =
      "https://www.googleapis.com/auth/cloud_search.stats";

  /// New Service: https://www.googleapis.com/auth/cloud_search.stats.indexing
  static const CloudSearchStatsIndexingScope =
      "https://www.googleapis.com/auth/cloud_search.stats.indexing";

  final commons.ApiRequester _requester;

  DebugResourceApi get debug => new DebugResourceApi(_requester);
  IndexingResourceApi get indexing => new IndexingResourceApi(_requester);
  MediaResourceApi get media => new MediaResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  QueryResourceApi get query => new QueryResourceApi(_requester);
  SettingsResourceApi get settings => new SettingsResourceApi(_requester);
  StatsResourceApi get stats => new StatsResourceApi(_requester);

  CloudsearchApi(http.Client client,
      {core.String rootUrl = "https://cloudsearch.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class DebugResourceApi {
  final commons.ApiRequester _requester;

  DebugDatasourcesResourceApi get datasources =>
      new DebugDatasourcesResourceApi(_requester);
  DebugIdentitysourcesResourceApi get identitysources =>
      new DebugIdentitysourcesResourceApi(_requester);

  DebugResourceApi(commons.ApiRequester client) : _requester = client;
}

class DebugDatasourcesResourceApi {
  final commons.ApiRequester _requester;

  DebugDatasourcesItemsResourceApi get items =>
      new DebugDatasourcesItemsResourceApi(_requester);

  DebugDatasourcesResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class DebugDatasourcesItemsResourceApi {
  final commons.ApiRequester _requester;

  DebugDatasourcesItemsUnmappedidsResourceApi get unmappedids =>
      new DebugDatasourcesItemsUnmappedidsResourceApi(_requester);

  DebugDatasourcesItemsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Checks whether an item is accessible by specified principal.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Item name, format:
  /// datasources/{source_id}/items/{item_id}
  /// Value must have pattern "^datasources/[^/]+/items/[^/]+$".
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckAccessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckAccessResponse> checkAccess(
      Principal request, core.String name,
      {core.bool debugOptions_enableDebugging, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/debug/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':checkAccess';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new CheckAccessResponse.fromJson(data));
  }

  /// Fetches the item whose viewUrl exactly matches that of the URL provided
  /// in the request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Source name, format:
  /// datasources/{source_id}
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchItemsByViewUrlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchItemsByViewUrlResponse> searchByViewUrl(
      SearchItemsByViewUrlRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/debug/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/items:searchByViewUrl';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new SearchItemsByViewUrlResponse.fromJson(data));
  }
}

class DebugDatasourcesItemsUnmappedidsResourceApi {
  final commons.ApiRequester _requester;

  DebugDatasourcesItemsUnmappedidsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// List all unmapped identities for a specific item.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the item, in the following format:
  /// datasources/{source_id}/items/{ID}
  /// Value must have pattern "^datasources/[^/]+/items/[^/]+$".
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - Maximum number of items to fetch in a request.
  /// Defaults to 100.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUnmappedIdentitiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUnmappedIdentitiesResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.bool debugOptions_enableDebugging,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/debug/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/unmappedids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListUnmappedIdentitiesResponse.fromJson(data));
  }
}

class DebugIdentitysourcesResourceApi {
  final commons.ApiRequester _requester;

  DebugIdentitysourcesItemsResourceApi get items =>
      new DebugIdentitysourcesItemsResourceApi(_requester);
  DebugIdentitysourcesUnmappedidsResourceApi get unmappedids =>
      new DebugIdentitysourcesUnmappedidsResourceApi(_requester);

  DebugIdentitysourcesResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class DebugIdentitysourcesItemsResourceApi {
  final commons.ApiRequester _requester;

  DebugIdentitysourcesItemsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists names of items associated with an unmapped identity.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the identity source, in the following format:
  /// identitysources/{source_id}}
  /// Value must have pattern "^identitysources/[^/]+$".
  ///
  /// [groupResourceName] - null
  ///
  /// [userResourceName] - null
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - Maximum number of items to fetch in a request.
  /// Defaults to 100.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListItemNamesForUnmappedIdentityResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListItemNamesForUnmappedIdentityResponse>
      listForunmappedidentity(core.String parent,
          {core.String groupResourceName,
          core.String userResourceName,
          core.String pageToken,
          core.int pageSize,
          core.bool debugOptions_enableDebugging,
          core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (groupResourceName != null) {
      _queryParams["groupResourceName"] = [groupResourceName];
    }
    if (userResourceName != null) {
      _queryParams["userResourceName"] = [userResourceName];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/debug/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/items:forunmappedidentity';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new ListItemNamesForUnmappedIdentityResponse.fromJson(data));
  }
}

class DebugIdentitysourcesUnmappedidsResourceApi {
  final commons.ApiRequester _requester;

  DebugIdentitysourcesUnmappedidsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Lists unmapped user identities for an identity source.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the identity source, in the following format:
  /// identitysources/{source_id}
  /// Value must have pattern "^identitysources/[^/]+$".
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - Maximum number of items to fetch in a request.
  /// Defaults to 100.
  ///
  /// [resolutionStatusCode] - Limit users selection to this status.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : A CODE_UNSPECIFIED.
  /// - "NOT_FOUND" : A NOT_FOUND.
  /// - "IDENTITY_SOURCE_NOT_FOUND" : A IDENTITY_SOURCE_NOT_FOUND.
  /// - "IDENTITY_SOURCE_MISCONFIGURED" : A IDENTITY_SOURCE_MISCONFIGURED.
  /// - "TOO_MANY_MAPPINGS_FOUND" : A TOO_MANY_MAPPINGS_FOUND.
  /// - "INTERNAL_ERROR" : A INTERNAL_ERROR.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUnmappedIdentitiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUnmappedIdentitiesResponse> list(core.String parent,
      {core.String pageToken,
      core.int pageSize,
      core.String resolutionStatusCode,
      core.bool debugOptions_enableDebugging,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (resolutionStatusCode != null) {
      _queryParams["resolutionStatusCode"] = [resolutionStatusCode];
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/debug/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/unmappedids';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListUnmappedIdentitiesResponse.fromJson(data));
  }
}

class IndexingResourceApi {
  final commons.ApiRequester _requester;

  IndexingDatasourcesResourceApi get datasources =>
      new IndexingDatasourcesResourceApi(_requester);

  IndexingResourceApi(commons.ApiRequester client) : _requester = client;
}

class IndexingDatasourcesResourceApi {
  final commons.ApiRequester _requester;

  IndexingDatasourcesItemsResourceApi get items =>
      new IndexingDatasourcesItemsResourceApi(_requester);

  IndexingDatasourcesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the schema of a data source.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the data source to delete Schema.  Format:
  /// datasources/{source_id}
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> deleteSchema(core.String name,
      {core.bool debugOptions_enableDebugging, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/schema';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the schema of a data source.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the data source to get Schema.  Format:
  /// datasources/{source_id}
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> getSchema(core.String name,
      {core.bool debugOptions_enableDebugging, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/schema';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Schema.fromJson(data));
  }

  /// Updates the schema of a data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the data source to update Schema.  Format:
  /// datasources/{source_id}
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> updateSchema(
      UpdateSchemaRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/schema';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class IndexingDatasourcesItemsResourceApi {
  final commons.ApiRequester _requester;

  IndexingDatasourcesItemsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Deletes Item resource for the
  /// specified resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the item to delete.
  /// Format: datasources/{source_id}/items/{item_id}
  /// Value must have pattern "^datasources/[^/]+/items/[^/]+$".
  ///
  /// [connectorName] - Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  ///
  /// [version] - Required. The incremented version of the item to delete from
  /// the index.
  /// The indexing system stores the version from the datasource as a
  /// byte string and compares the Item version in the index
  /// to the version of the queued Item using lexical ordering.
  /// <br /><br />
  /// Cloud Search Indexing won't delete any queued item with
  /// a version value that is less than or equal to
  /// the version of the currently indexed item.
  /// The maximum length for this field is 1024 bytes.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [mode] - Required. The RequestMode for this request.
  /// Possible string values are:
  /// - "UNSPECIFIED" : A UNSPECIFIED.
  /// - "SYNCHRONOUS" : A SYNCHRONOUS.
  /// - "ASYNCHRONOUS" : A ASYNCHRONOUS.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(core.String name,
      {core.String connectorName,
      core.String version,
      core.bool debugOptions_enableDebugging,
      core.String mode,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (connectorName != null) {
      _queryParams["connectorName"] = [connectorName];
    }
    if (version != null) {
      _queryParams["version"] = [version];
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if (mode != null) {
      _queryParams["mode"] = [mode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes all items in a queue. This method is useful for deleting stale
  /// items.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Data Source to delete items in a queue.
  /// Format: datasources/{source_id}
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> deleteQueueItems(
      DeleteQueueItemsRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/items:deleteQueueItems';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets Item resource by item name.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the item to get info.
  /// Format: datasources/{source_id}/items/{item_id}
  /// Value must have pattern "^datasources/[^/]+/items/[^/]+$".
  ///
  /// [connectorName] - Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Item].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Item> get(core.String name,
      {core.String connectorName,
      core.bool debugOptions_enableDebugging,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (connectorName != null) {
      _queryParams["connectorName"] = [connectorName];
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Item.fromJson(data));
  }

  /// Updates Item ACL, metadata, and
  /// content. It will insert the Item if it
  /// does not exist.
  /// This method does not support partial updates.  Fields with no provided
  /// values are cleared out in the Cloud Search index.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Item. Format:
  /// datasources/{source_id}/items/{item_id}
  /// <br />This is a required field.
  /// The maximum length is 1536 characters.
  /// Value must have pattern "^datasources/[^/]+/items/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> index(IndexItemRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':index';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists all or a subset of Item resources.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Data Source to list Items.  Format:
  /// datasources/{source_id}
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [pageSize] - Maximum number of items to fetch in a request.
  /// The max value is 1000 when brief is true.  The max value is 10 if brief
  /// is false.
  /// <br />The default value is 10
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [connectorName] - Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  ///
  /// [brief] - When set to true, the indexing system only populates the
  /// following fields:
  /// name,
  /// version,
  /// metadata.hash,
  /// structured_data.hash,
  /// content.hash.
  /// <br />If this value is false, then all the fields are populated in Item.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListItemsResponse> list(core.String name,
      {core.String pageToken,
      core.int pageSize,
      core.bool debugOptions_enableDebugging,
      core.String connectorName,
      core.bool brief,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if (connectorName != null) {
      _queryParams["connectorName"] = [connectorName];
    }
    if (brief != null) {
      _queryParams["brief"] = ["${brief}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/items';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListItemsResponse.fromJson(data));
  }

  /// Polls for unreserved items from the indexing queue and marks a
  /// set as reserved, starting with items that have
  /// the oldest timestamp from the highest priority
  /// ItemStatus.
  /// The priority order is as follows: <br />
  /// ERROR
  /// <br />
  /// MODIFIED
  /// <br />
  /// NEW_ITEM
  /// <br />
  /// ACCEPTED
  /// <br />
  /// Reserving items ensures that polling from other threads
  /// cannot create overlapping sets.
  ///
  /// After handling the reserved items, the client should put items back
  /// into the unreserved state, either by calling
  /// index,
  /// or by calling
  /// push with
  /// the type REQUEUE.
  ///
  /// Items automatically become available (unreserved) after 4 hours even if no
  /// update or push method is called.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Data Source to poll items.
  /// Format: datasources/{source_id}
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PollItemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PollItemsResponse> poll(
      PollItemsRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/items:poll';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new PollItemsResponse.fromJson(data));
  }

  /// Pushes an item onto a queue for later polling and updating.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the item to
  /// push into the indexing queue.<br />
  /// Format: datasources/{source_id}/items/{ID}
  /// <br />This is a required field.
  /// The maximum length is 1536 characters.
  /// Value must have pattern "^datasources/[^/]+/items/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Item].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Item> push(PushItemRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':push';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Item.fromJson(data));
  }

  /// Unreserves all items from a queue, making them all eligible to be
  /// polled.  This method is useful for resetting the indexing queue
  /// after a connector has been restarted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Data Source to unreserve all items.
  /// Format: datasources/{source_id}
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> unreserve(
      UnreserveItemsRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/items:unreserve';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Creates an upload session for uploading item content. For items smaller
  /// than 100 KiB, it's easier to embed the content
  /// inline within
  /// update.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Item to start a resumable upload.
  /// Format: datasources/{source_id}/items/{item_id}.
  /// Value must have pattern "^datasources/[^/]+/items/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UploadItemRef].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UploadItemRef> upload(
      StartUploadItemRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/indexing/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':upload';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UploadItemRef.fromJson(data));
  }
}

class MediaResourceApi {
  final commons.ApiRequester _requester;

  MediaResourceApi(commons.ApiRequester client) : _requester = client;

  /// Uploads media for indexing.
  ///
  /// The upload endpoint supports direct and resumable upload protocols and
  /// is intended for large items that can not be inlined during index requests.
  /// To
  /// index large content:
  ///
  /// 1. Call upload to begin
  ///    a session and get the item reference.
  /// 1. Upload the content using the item reference's resource name.
  /// 1. Call index with the item
  ///    reference as the content.
  ///
  /// For additional information, see
  /// [Create a content connector using the REST
  /// API](https://developers.google.com/cloud-search/docs/guides/content-connector#rest).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Name of the media that is being downloaded.  See
  /// ReadRequest.resource_name.
  /// Value must have pattern "^.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// [uploadMedia] - The media to upload.
  ///
  /// Completes with a [Media].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Media> upload(Media request, core.String resourceName,
      {core.String $fields, commons.Media uploadMedia}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (resourceName == null) {
      throw new core.ArgumentError("Parameter resourceName is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _uploadMedia = uploadMedia;

    _uploadOptions = commons.UploadOptions.Default;
    if (_uploadMedia == null) {
      _url =
          'v1/media/' + commons.Escaper.ecapeVariableReserved('$resourceName');
    } else {
      _url = '/upload/v1/media/' +
          commons.Escaper.ecapeVariableReserved('$resourceName');
    }

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Media.fromJson(data));
  }
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^operations/.+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class QueryResourceApi {
  final commons.ApiRequester _requester;

  QuerySourcesResourceApi get sources =>
      new QuerySourcesResourceApi(_requester);

  QueryResourceApi(commons.ApiRequester client) : _requester = client;

  /// The Cloud Search Query API provides the search method, which returns
  /// the most relevant results from a user query.  The results can come from
  /// G Suite Apps, such as Gmail or Google Drive, or they can come from data
  /// that you have indexed from a third party.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<SearchResponse> search(SearchRequest request,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/query/search';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchResponse.fromJson(data));
  }

  /// Provides suggestions for autocompleting the query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SuggestResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SuggestResponse> suggest(SuggestRequest request,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/query/suggest';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SuggestResponse.fromJson(data));
  }
}

class QuerySourcesResourceApi {
  final commons.ApiRequester _requester;

  QuerySourcesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns list of sources that user can use for Search and Suggest APIs.
  ///
  /// Request parameters:
  ///
  /// [requestOptions_languageCode] - The BCP-47 language code, such as "en-US"
  /// or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  /// For translations.
  ///
  /// When specified, the documents in search results are biased towards the
  /// specified language.
  /// Suggest API does not use this parameter. It autocompletes only based on
  /// characters in the query.
  ///
  /// [requestOptions_searchApplicationId] - Id of the application created using
  /// SearchApplicationsService.
  ///
  /// [requestOptions_timeZone] - Current user's time zone id, such as
  /// "America/Los_Angeles" or
  /// "Australia/Sydney". These IDs are defined by
  /// [Unicode Common Locale Data Repository (CLDR)](http://cldr.unicode.org/)
  /// project, and currently available in the file
  /// [timezone.xml](http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml)
  ///
  /// [pageToken] - Number of sources to return in the response.
  ///
  /// [requestOptions_debugOptions_enableDebugging] - If you are asked by Google
  /// to help with debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListQuerySourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListQuerySourcesResponse> list(
      {core.String requestOptions_languageCode,
      core.String requestOptions_searchApplicationId,
      core.String requestOptions_timeZone,
      core.String pageToken,
      core.bool requestOptions_debugOptions_enableDebugging,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (requestOptions_languageCode != null) {
      _queryParams["requestOptions.languageCode"] = [
        requestOptions_languageCode
      ];
    }
    if (requestOptions_searchApplicationId != null) {
      _queryParams["requestOptions.searchApplicationId"] = [
        requestOptions_searchApplicationId
      ];
    }
    if (requestOptions_timeZone != null) {
      _queryParams["requestOptions.timeZone"] = [requestOptions_timeZone];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (requestOptions_debugOptions_enableDebugging != null) {
      _queryParams["requestOptions.debugOptions.enableDebugging"] = [
        "${requestOptions_debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/query/sources';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListQuerySourcesResponse.fromJson(data));
  }
}

class SettingsResourceApi {
  final commons.ApiRequester _requester;

  SettingsDatasourcesResourceApi get datasources =>
      new SettingsDatasourcesResourceApi(_requester);
  SettingsSearchapplicationsResourceApi get searchapplications =>
      new SettingsSearchapplicationsResourceApi(_requester);

  SettingsResourceApi(commons.ApiRequester client) : _requester = client;
}

class SettingsDatasourcesResourceApi {
  final commons.ApiRequester _requester;

  SettingsDatasourcesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a datasource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(DataSource request, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/datasources';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a datasource.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the datasource.
  /// Format: datasources/{source_id}.
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(core.String name,
      {core.bool debugOptions_enableDebugging, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets a datasource.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the datasource resource.
  /// Format: datasources/{source_id}.
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSource> get(core.String name,
      {core.bool debugOptions_enableDebugging, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DataSource.fromJson(data));
  }

  /// Lists datasources.
  ///
  /// Request parameters:
  ///
  /// [pageToken] - Starting index of the results.
  ///
  /// [pageSize] - Maximum number of datasources to fetch in a request.
  /// The max value is 100.
  /// <br />The default value is 10
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDataSourceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDataSourceResponse> list(
      {core.String pageToken,
      core.int pageSize,
      core.bool debugOptions_enableDebugging,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/datasources';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDataSourceResponse.fromJson(data));
  }

  /// Updates a datasource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the datasource resource.
  /// Format: datasources/{source_id}.
  /// <br />The name is ignored when creating a datasource.
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> update(
      UpdateDataSourceRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class SettingsSearchapplicationsResourceApi {
  final commons.ApiRequester _requester;

  SettingsSearchapplicationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a search application.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(SearchApplication request,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/searchapplications';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Deletes a search application.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the search application to be deleted.
  /// <br />Format: applications/{application_id}.
  /// Value must have pattern "^searchapplications/[^/]+$".
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> delete(core.String name,
      {core.bool debugOptions_enableDebugging, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Gets the specified search application.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the search application.
  /// <br />Format: applications/{application_id}.
  /// Value must have pattern "^searchapplications/[^/]+$".
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchApplication].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchApplication> get(core.String name,
      {core.bool debugOptions_enableDebugging, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SearchApplication.fromJson(data));
  }

  /// Lists all search applications.
  ///
  /// Request parameters:
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field.
  /// Otherwise, ignore this field.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  /// <br/> The default value is 10
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSearchApplicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSearchApplicationsResponse> list(
      {core.bool debugOptions_enableDebugging,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (debugOptions_enableDebugging != null) {
      _queryParams["debugOptions.enableDebugging"] = [
        "${debugOptions_enableDebugging}"
      ];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/searchapplications';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListSearchApplicationsResponse.fromJson(data));
  }

  /// Resets a search application to default settings. This will return an empty
  /// response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the search application to be reset.
  /// <br />Format: applications/{application_id}.
  /// Value must have pattern "^searchapplications/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> reset(
      ResetSearchApplicationRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':reset';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates a search application.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Search Application.
  /// <br />Format: searchapplications/{application_id}.
  /// Value must have pattern "^searchapplications/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> update(SearchApplication request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/settings/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

class StatsResourceApi {
  final commons.ApiRequester _requester;

  StatsIndexResourceApi get index => new StatsIndexResourceApi(_requester);

  StatsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Gets indexed item statistics aggreggated across all data sources. This
  /// API only returns statistics for previous dates; it doesn't return
  /// statistics for the current day.
  ///
  /// Request parameters:
  ///
  /// [fromDate_year] - Year of date. Must be from 1 to 9999.
  ///
  /// [toDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [toDate_month] - Month of date. Must be from 1 to 12.
  ///
  /// [toDate_year] - Year of date. Must be from 1 to 9999.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetCustomerIndexStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetCustomerIndexStatsResponse> getIndex(
      {core.int fromDate_year,
      core.int toDate_day,
      core.int toDate_month,
      core.int toDate_year,
      core.int fromDate_month,
      core.int fromDate_day,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (fromDate_year != null) {
      _queryParams["fromDate.year"] = ["${fromDate_year}"];
    }
    if (toDate_day != null) {
      _queryParams["toDate.day"] = ["${toDate_day}"];
    }
    if (toDate_month != null) {
      _queryParams["toDate.month"] = ["${toDate_month}"];
    }
    if (toDate_year != null) {
      _queryParams["toDate.year"] = ["${toDate_year}"];
    }
    if (fromDate_month != null) {
      _queryParams["fromDate.month"] = ["${fromDate_month}"];
    }
    if (fromDate_day != null) {
      _queryParams["fromDate.day"] = ["${fromDate_day}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/stats/index';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GetCustomerIndexStatsResponse.fromJson(data));
  }
}

class StatsIndexResourceApi {
  final commons.ApiRequester _requester;

  StatsIndexDatasourcesResourceApi get datasources =>
      new StatsIndexDatasourcesResourceApi(_requester);

  StatsIndexResourceApi(commons.ApiRequester client) : _requester = client;
}

class StatsIndexDatasourcesResourceApi {
  final commons.ApiRequester _requester;

  StatsIndexDatasourcesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets indexed item statistics for a single data source.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource id of the data source to retrieve statistics for,
  /// in the following format: "datasources/{source_id}"
  /// Value must have pattern "^datasources/[^/]+$".
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_year] - Year of date. Must be from 1 to 9999.
  ///
  /// [toDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [toDate_month] - Month of date. Must be from 1 to 12.
  ///
  /// [toDate_year] - Year of date. Must be from 1 to 9999.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetDataSourceIndexStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetDataSourceIndexStatsResponse> get(core.String name,
      {core.int fromDate_day,
      core.int fromDate_year,
      core.int toDate_day,
      core.int toDate_month,
      core.int toDate_year,
      core.int fromDate_month,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (fromDate_day != null) {
      _queryParams["fromDate.day"] = ["${fromDate_day}"];
    }
    if (fromDate_year != null) {
      _queryParams["fromDate.year"] = ["${fromDate_year}"];
    }
    if (toDate_day != null) {
      _queryParams["toDate.day"] = ["${toDate_day}"];
    }
    if (toDate_month != null) {
      _queryParams["toDate.month"] = ["${toDate_month}"];
    }
    if (toDate_year != null) {
      _queryParams["toDate.year"] = ["${toDate_year}"];
    }
    if (fromDate_month != null) {
      _queryParams["fromDate.month"] = ["${fromDate_month}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/stats/index/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GetDataSourceIndexStatsResponse.fromJson(data));
  }
}

/// Used to provide a search operator for boolean properties. This is
/// optional. Search operators let users restrict the query to specific fields
/// relevant to the type of item being searched.
class BooleanOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// boolean property. For example, if operatorName is *closed* and the
  /// property's name is *isClosed*, then queries like
  /// *closed:&lt;value&gt;* will show results only where the value of the
  /// property named *isClosed* matches *&lt;value&gt;*. By contrast, a
  /// search that uses the same *&lt;value&gt;* without an operator will return
  /// all items where *&lt;value&gt;* matches the value of any
  /// String properties or text within the content field for the item.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String operatorName;

  BooleanOperatorOptions();

  BooleanOperatorOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    return _json;
  }
}

/// Options for boolean properties.
class BooleanPropertyOptions {
  /// If set, describes how the boolean should be used as a search operator.
  BooleanOperatorOptions operatorOptions;

  BooleanPropertyOptions();

  BooleanPropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorOptions")) {
      operatorOptions =
          new BooleanOperatorOptions.fromJson(_json["operatorOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorOptions != null) {
      _json["operatorOptions"] = (operatorOptions).toJson();
    }
    return _json;
  }
}

class CheckAccessResponse {
  /// Returns true if principal has access.  Returns false otherwise.
  core.bool hasAccess;

  CheckAccessResponse();

  CheckAccessResponse.fromJson(core.Map _json) {
    if (_json.containsKey("hasAccess")) {
      hasAccess = _json["hasAccess"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hasAccess != null) {
      _json["hasAccess"] = hasAccess;
    }
    return _json;
  }
}

class CompositeFilter {
  /// The logic operator of the sub filter.
  /// Possible string values are:
  /// - "AND" : Logical operators, which can only be applied to sub filters.
  /// - "OR"
  /// - "NOT" : NOT can only be applied on a single sub filter.
  core.String logicOperator;

  /// Sub filters.
  core.List<Filter> subFilters;

  CompositeFilter();

  CompositeFilter.fromJson(core.Map _json) {
    if (_json.containsKey("logicOperator")) {
      logicOperator = _json["logicOperator"];
    }
    if (_json.containsKey("subFilters")) {
      subFilters = (_json["subFilters"] as core.List)
          .map<Filter>((value) => new Filter.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (logicOperator != null) {
      _json["logicOperator"] = logicOperator;
    }
    if (subFilters != null) {
      _json["subFilters"] =
          subFilters.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Aggregation of items by status code as of the specified date.
class CustomerIndexStats {
  /// Date for which statistics were calculated.
  Date date;

  /// Number of items aggregrated by status code.
  core.List<ItemCountByStatus> itemCountByStatus;

  CustomerIndexStats();

  CustomerIndexStats.fromJson(core.Map _json) {
    if (_json.containsKey("date")) {
      date = new Date.fromJson(_json["date"]);
    }
    if (_json.containsKey("itemCountByStatus")) {
      itemCountByStatus = (_json["itemCountByStatus"] as core.List)
          .map<ItemCountByStatus>(
              (value) => new ItemCountByStatus.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (date != null) {
      _json["date"] = (date).toJson();
    }
    if (itemCountByStatus != null) {
      _json["itemCountByStatus"] =
          itemCountByStatus.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Datasource is a logical namespace for items to be indexed.
/// All items must belong to a datasource.  This is the prerequisite before
/// items can be indexed into Cloud Search.
class DataSource {
  /// If true, Indexing API rejects any modification calls to this datasource
  /// such as create, update, and delete.
  /// Disabling this does not imply halting process of previously
  /// accepted data.
  core.bool disableModifications;

  /// Disable serving any search or assist results.
  core.bool disableServing;

  /// Required. Display name of the datasource
  /// The maximum length is 300 characters.
  core.String displayName;

  /// List of service accounts that have indexing access.
  core.List<core.String> indexingServiceAccounts;

  /// This field restricts visibility to items at the datasource level. Items
  /// within the datasource are restricted to the union of users and groups
  /// included in this field. Note that, this does not ensure access to a
  /// specific item, as users need to have ACL permissions on the contained
  /// items. This ensures a high level access on the entire datasource, and
  /// that the individual items are not shared outside this visibility.
  core.List<GSuitePrincipal> itemsVisibility;

  /// Name of the datasource resource.
  /// Format: datasources/{source_id}.
  /// <br />The name is ignored when creating a datasource.
  core.String name;

  /// IDs of the Long Running Operations (LROs) currently running for this
  /// schema.
  core.List<core.String> operationIds;

  /// A short name or alias for the source.  This value will be used to match
  /// the
  /// 'source' operator. For example, if the short name is *&lt;value&gt;* then
  /// queries like *source:&lt;value&gt;* will only return results for this
  /// source. The value must be unique across all datasources. The value must
  /// only contain alphanumeric characters (a-zA-Z0-9). The value cannot start
  /// with 'google' and cannot be one of the following: mail, gmail, docs,
  /// drive,
  /// groups, sites, calendar, hangouts, gplus, keep, people, teams.
  /// Its maximum length is 32 characters.
  core.String shortName;

  DataSource();

  DataSource.fromJson(core.Map _json) {
    if (_json.containsKey("disableModifications")) {
      disableModifications = _json["disableModifications"];
    }
    if (_json.containsKey("disableServing")) {
      disableServing = _json["disableServing"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("indexingServiceAccounts")) {
      indexingServiceAccounts =
          (_json["indexingServiceAccounts"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("itemsVisibility")) {
      itemsVisibility = (_json["itemsVisibility"] as core.List)
          .map<GSuitePrincipal>((value) => new GSuitePrincipal.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationIds")) {
      operationIds = (_json["operationIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("shortName")) {
      shortName = _json["shortName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableModifications != null) {
      _json["disableModifications"] = disableModifications;
    }
    if (disableServing != null) {
      _json["disableServing"] = disableServing;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (indexingServiceAccounts != null) {
      _json["indexingServiceAccounts"] = indexingServiceAccounts;
    }
    if (itemsVisibility != null) {
      _json["itemsVisibility"] =
          itemsVisibility.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operationIds != null) {
      _json["operationIds"] = operationIds;
    }
    if (shortName != null) {
      _json["shortName"] = shortName;
    }
    return _json;
  }
}

/// Aggregation of items by status code as of the specified date.
class DataSourceIndexStats {
  /// Date for which index stats were calculated. If the date of request is not
  /// the current date then stats calculated on the next day are returned. Stats
  /// are calculated close to mid night in this case. If date of request is
  /// current date, then real time stats are returned.
  Date date;

  /// Number of items aggregrated by status code.
  core.List<ItemCountByStatus> itemCountByStatus;

  DataSourceIndexStats();

  DataSourceIndexStats.fromJson(core.Map _json) {
    if (_json.containsKey("date")) {
      date = new Date.fromJson(_json["date"]);
    }
    if (_json.containsKey("itemCountByStatus")) {
      itemCountByStatus = (_json["itemCountByStatus"] as core.List)
          .map<ItemCountByStatus>(
              (value) => new ItemCountByStatus.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (date != null) {
      _json["date"] = (date).toJson();
    }
    if (itemCountByStatus != null) {
      _json["itemCountByStatus"] =
          itemCountByStatus.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Restriction on Datasource.
class DataSourceRestriction {
  /// Filter options restricting the results. If multiple filters
  /// are present, they are grouped by object type before joining.
  /// Filters with the same object type are joined conjunctively, then
  /// the resulting expressions are joined disjunctively.
  ///
  /// The maximum number of elements is 20.
  ///
  /// NOTE: Suggest API supports only few filters at the moment:
  ///   "objecttype", "type" and "mimetype".
  /// For now, schema specific filters cannot be used to filter suggestions.
  core.List<FilterOptions> filterOptions;

  /// The source of restriction.
  Source source;

  DataSourceRestriction();

  DataSourceRestriction.fromJson(core.Map _json) {
    if (_json.containsKey("filterOptions")) {
      filterOptions = (_json["filterOptions"] as core.List)
          .map<FilterOptions>((value) => new FilterOptions.fromJson(value))
          .toList();
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filterOptions != null) {
      _json["filterOptions"] =
          filterOptions.map((value) => (value).toJson()).toList();
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// Represents a whole calendar date, for example a date of birth. The time of
/// day and time zone are either specified elsewhere or are not significant. The
/// date is relative to the [Proleptic Gregorian
/// Calendar](https://en.wikipedia.org/wiki/Proleptic_Gregorian_calendar). The
/// date must be a valid calendar date between the year 1 and 9999.
class Date {
  /// Day of month. Must be from 1 to 31 and valid for the year and month.
  core.int day;

  /// Month of date. Must be from 1 to 12.
  core.int month;

  /// Year of date. Must be from 1 to 9999.
  core.int year;

  Date();

  Date.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("month")) {
      month = _json["month"];
    }
    if (_json.containsKey("year")) {
      year = _json["year"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (day != null) {
      _json["day"] = day;
    }
    if (month != null) {
      _json["month"] = month;
    }
    if (year != null) {
      _json["year"] = year;
    }
    return _json;
  }
}

/// Optional. Provides a search operator for date properties.
/// Search operators let users restrict the query to specific fields relevant
/// to the type of item being searched.
class DateOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// date property using the greater-than operator. For example, if
  /// greaterThanOperatorName is *closedafter* and the property's name is
  /// *closeDate*, then queries like *closedafter:&lt;value&gt;* will
  /// show results only where the value of the property named *closeDate* is
  /// later than *&lt;value&gt;*.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String greaterThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// date property using the less-than operator. For example, if
  /// lessThanOperatorName is *closedbefore* and the property's name is
  /// *closeDate*, then queries like *closedbefore:&lt;value&gt;* will
  /// show results only where the value of the property named *closeDate* is
  /// earlier than *&lt;value&gt;*.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String lessThanOperatorName;

  /// Indicates the actual string required in the query in order to isolate the
  /// date property. For example, suppose an issue tracking schema object
  /// has a property named *closeDate* that specifies an operator with an
  /// operatorName of *closedon*. For searches on that data, queries like
  /// *closedon:&lt;value&gt;* will show results only where the value of the
  /// *closeDate* property matches *&lt;value&gt;*. By contrast, a
  /// search that uses the same *&lt;value&gt;* without an operator will return
  /// all items where *&lt;value&gt;* matches the value of any String
  /// properties or text within the content field for the indexed datasource.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String operatorName;

  DateOperatorOptions();

  DateOperatorOptions.fromJson(core.Map _json) {
    if (_json.containsKey("greaterThanOperatorName")) {
      greaterThanOperatorName = _json["greaterThanOperatorName"];
    }
    if (_json.containsKey("lessThanOperatorName")) {
      lessThanOperatorName = _json["lessThanOperatorName"];
    }
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (greaterThanOperatorName != null) {
      _json["greaterThanOperatorName"] = greaterThanOperatorName;
    }
    if (lessThanOperatorName != null) {
      _json["lessThanOperatorName"] = lessThanOperatorName;
    }
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    return _json;
  }
}

/// Options for date properties.
class DatePropertyOptions {
  /// If set, describes how the date should be used as a search operator.
  DateOperatorOptions operatorOptions;

  DatePropertyOptions();

  DatePropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorOptions")) {
      operatorOptions =
          new DateOperatorOptions.fromJson(_json["operatorOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorOptions != null) {
      _json["operatorOptions"] = (operatorOptions).toJson();
    }
    return _json;
  }
}

/// List of date values.
class DateValues {
  core.List<Date> values;

  DateValues();

  DateValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<Date>((value) => new Date.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Shared request debug options for all cloudsearch RPC methods.
class DebugOptions {
  /// If you are asked by Google to help with debugging, set this field.
  /// Otherwise, ignore this field.
  core.bool enableDebugging;

  DebugOptions();

  DebugOptions.fromJson(core.Map _json) {
    if (_json.containsKey("enableDebugging")) {
      enableDebugging = _json["enableDebugging"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (enableDebugging != null) {
      _json["enableDebugging"] = enableDebugging;
    }
    return _json;
  }
}

class DeleteQueueItemsRequest {
  /// Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  core.String connectorName;

  /// Common debug options.
  DebugOptions debugOptions;

  /// Name of a queue to delete items from.
  core.String queue;

  DeleteQueueItemsRequest();

  DeleteQueueItemsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("connectorName")) {
      connectorName = _json["connectorName"];
    }
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("queue")) {
      queue = _json["queue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (connectorName != null) {
      _json["connectorName"] = connectorName;
    }
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (queue != null) {
      _json["queue"] = queue;
    }
    return _json;
  }
}

/// A reference to a top-level property within the object that should be
/// displayed in search results. The values of the chosen properties will be
/// displayed in the search results along with the
/// dislpay label
/// for that property if one is specified. If a display label is not specified,
/// only the values will be shown.
class DisplayedProperty {
  /// The name of the top-level property as defined in a property definition
  /// for the object. If the name is not a defined property in the schema, an
  /// error will be given when attempting to update the schema.
  core.String propertyName;

  DisplayedProperty();

  DisplayedProperty.fromJson(core.Map _json) {
    if (_json.containsKey("propertyName")) {
      propertyName = _json["propertyName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (propertyName != null) {
      _json["propertyName"] = propertyName;
    }
    return _json;
  }
}

/// Used to provide a search operator for double properties. This is
/// optional. Search operators let users restrict the query to specific fields
/// relevant to the type of item being searched.
class DoubleOperatorOptions {
  /// Indicates the operator name required in the query in order to use the
  /// double property in sorting or as a facet.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String operatorName;

  DoubleOperatorOptions();

  DoubleOperatorOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    return _json;
  }
}

/// Options for double properties.
class DoublePropertyOptions {
  /// If set, describes how the double should be used as a search operator.
  DoubleOperatorOptions operatorOptions;

  DoublePropertyOptions();

  DoublePropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorOptions")) {
      operatorOptions =
          new DoubleOperatorOptions.fromJson(_json["operatorOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorOptions != null) {
      _json["operatorOptions"] = (operatorOptions).toJson();
    }
    return _json;
  }
}

/// List of double values.
class DoubleValues {
  core.List<core.double> values;

  DoubleValues();

  DoubleValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<core.double>((value) => value.toDouble())
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Drive follow-up search restricts (e.g. "followup:suggestions").
class DriveFollowUpRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "FOLLOWUP_SUGGESTIONS"
  /// - "FOLLOWUP_ACTION_ITEMS"
  core.String type;

  DriveFollowUpRestrict();

  DriveFollowUpRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Drive location search restricts (e.g. "is:starred").
class DriveLocationRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "TRASHED"
  /// - "STARRED"
  core.String type;

  DriveLocationRestrict();

  DriveLocationRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Drive mime-type search restricts (e.g. "type:pdf").
class DriveMimeTypeRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "PDF"
  /// - "DOCUMENT"
  /// - "PRESENTATION"
  /// - "SPREADSHEET"
  /// - "FORM"
  /// - "DRAWING"
  /// - "SCRIPT"
  /// - "MAP"
  /// - "IMAGE"
  /// - "AUDIO"
  /// - "VIDEO"
  /// - "FOLDER"
  /// - "ARCHIVE"
  /// - "SITE"
  core.String type;

  DriveMimeTypeRestrict();

  DriveMimeTypeRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// The time span search restrict (e.g. "after:2017-09-11 before:2017-09-12").
class DriveTimeSpanRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "TODAY"
  /// - "YESTERDAY"
  /// - "LAST_7_DAYS"
  /// - "LAST_30_DAYS" : Not Enabled
  /// - "LAST_90_DAYS" : Not Enabled
  core.String type;

  DriveTimeSpanRestrict();

  DriveTimeSpanRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// A person's email address.
class EmailAddress {
  /// The email address.
  core.String emailAddress;

  EmailAddress();

  EmailAddress.fromJson(core.Map _json) {
    if (_json.containsKey("emailAddress")) {
      emailAddress = _json["emailAddress"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (emailAddress != null) {
      _json["emailAddress"] = emailAddress;
    }
    return _json;
  }
}

/// Used to provide a search operator for enum properties. This is
/// optional. Search operators let users restrict the query to specific fields
/// relevant to the type of item being searched. For example, if you provide no
/// operator for a *priority* enum property with possible values *p0* and *p1*,
/// a query that contains the term *p0* will return items that have *p0* as the
/// value of the *priority* property, as well as any items that contain the
/// string *p0* in other fields. If you provide an operator name for the enum,
/// such as *priority*, then search users can use that operator to refine
/// results to only items that have *p0* as this property's value, with the
/// query *priority:p0*.
class EnumOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// enum property. For example, if operatorName is *priority* and the
  /// property's name is *priorityVal*, then queries like
  /// *priority:&lt;value&gt;* will show results only where the value of the
  /// property named *priorityVal* matches *&lt;value&gt;*. By contrast, a
  /// search that uses the same *&lt;value&gt;* without an operator will return
  /// all items where *&lt;value&gt;* matches the value of any String
  /// properties or text within the content field for the item.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String operatorName;

  EnumOperatorOptions();

  EnumOperatorOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    return _json;
  }
}

/// Options for enum properties, which allow you to define a restricted set of
/// strings to match user queries, set rankings for those string values, and
/// define an operator name to be paired with those strings so that users can
/// narrow results to only items with a specific value. For example, for items
/// in
/// a request tracking system with priority information, you could define *p0*
/// as
/// an allowable enum value and tie this enum to the operator name *priority* so
/// that search users could add *priority:p0* to their query to restrict the set
/// of results to only those items indexed with the value *p0*.
class EnumPropertyOptions {
  /// If set, describes how the enum should be used as a search operator.
  EnumOperatorOptions operatorOptions;

  /// Used to specify the ordered ranking for the enumeration that determines
  /// how
  /// the integer values provided in the possible EnumValuePairs are used to
  /// rank
  /// results. If specified, integer values must be provided for all possible
  /// EnumValuePair values given for this property. Can only be used if
  /// isRepeatable
  /// is false.
  /// Possible string values are:
  /// - "NO_ORDER" : There is no ranking order for the property. Results will
  /// not be adjusted
  /// by this property's value.
  /// - "ASCENDING" : This property is ranked in ascending order. Lower values
  /// indicate lower
  /// ranking.
  /// - "DESCENDING" : This property is ranked in descending order. Lower values
  /// indicate
  /// higher ranking.
  core.String orderedRanking;

  /// The list of possible values for the enumeration property. All
  /// EnumValuePairs must provide a string value. If you specify an integer
  /// value
  /// for one EnumValuePair, then all possible EnumValuePairs must provide an
  /// integer value. Both the string value and integer value must be unique over
  /// all possible values. Once set, possible values cannot be removed or
  /// modified. If you supply an ordered ranking and think you might insert
  /// additional enum values in the future, leave gaps in the initial integer
  /// values to allow adding a value in between previously registered values.
  /// The maximum number of elements is 100.
  core.List<EnumValuePair> possibleValues;

  EnumPropertyOptions();

  EnumPropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorOptions")) {
      operatorOptions =
          new EnumOperatorOptions.fromJson(_json["operatorOptions"]);
    }
    if (_json.containsKey("orderedRanking")) {
      orderedRanking = _json["orderedRanking"];
    }
    if (_json.containsKey("possibleValues")) {
      possibleValues = (_json["possibleValues"] as core.List)
          .map<EnumValuePair>((value) => new EnumValuePair.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorOptions != null) {
      _json["operatorOptions"] = (operatorOptions).toJson();
    }
    if (orderedRanking != null) {
      _json["orderedRanking"] = orderedRanking;
    }
    if (possibleValues != null) {
      _json["possibleValues"] =
          possibleValues.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The enumeration value pair defines two things: a required string value and
/// an optional integer value. The string value defines the necessary query
/// term required to retrieve that item, such as *p0* for a priority item.
/// The integer value determines the ranking of that string value relative
/// to other enumerated values for the same property. For example, you might
/// associate *p0* with *0* and define another enum pair such as *p1* and *1*.
/// You must use the integer value in combination with
/// ordered
/// ranking to
/// set the ranking of a given value relative to other enumerated values for
/// the same property name. Here, a ranking order of DESCENDING for *priority*
/// properties results in a ranking boost for items indexed with a value of
/// *p0* compared to items indexed with a value of *p1*. Without a specified
/// ranking order, the integer value has no effect on item ranking.
class EnumValuePair {
  /// The integer value of the EnumValuePair which must be non-negative.
  /// Optional.
  core.int integerValue;

  /// The string value of the EnumValuePair.
  /// The maximum length is 32 characters.
  core.String stringValue;

  EnumValuePair();

  EnumValuePair.fromJson(core.Map _json) {
    if (_json.containsKey("integerValue")) {
      integerValue = _json["integerValue"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (integerValue != null) {
      _json["integerValue"] = integerValue;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/// List of enum values.
class EnumValues {
  /// The maximum allowable length for string values is 32 characters.
  core.List<core.String> values;

  EnumValues();

  EnumValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Error information about the response.
class ErrorInfo {
  core.List<ErrorMessage> errorMessages;

  ErrorInfo();

  ErrorInfo.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessages")) {
      errorMessages = (_json["errorMessages"] as core.List)
          .map<ErrorMessage>((value) => new ErrorMessage.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorMessages != null) {
      _json["errorMessages"] =
          errorMessages.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Error message per source response.
class ErrorMessage {
  core.String errorMessage;
  Source source;

  ErrorMessage();

  ErrorMessage.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// A bucket in a facet is the basic unit of operation. A bucket can comprise
/// either a single value OR a contiguous range of values, depending on the
/// type of the field bucketed.
/// FacetBucket is currently used only for returning the response object.
class FacetBucket {
  /// Number of results that match the bucket value. Counts are only returned
  /// for searches when count accuracy is ensured. Can be empty.
  core.int count;

  /// Percent of results that match the bucket value. This value is between
  /// (0-100]. Percentages are returned for all searches, but are an estimate.
  /// Because percentages are always returned, you should render percentages
  /// instead of counts.
  core.int percentage;
  Value value;

  FacetBucket();

  FacetBucket.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("percentage")) {
      percentage = _json["percentage"];
    }
    if (_json.containsKey("value")) {
      value = new Value.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (percentage != null) {
      _json["percentage"] = percentage;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}

/// Specifies operators to return facet results for. There will be one
/// FacetResult for every source_name/object_type/operator_name combination.
class FacetOptions {
  /// Maximum number of facet buckets that should be returned for this facet.
  /// Defaults to 10.
  /// Maximum value is 100.
  core.int numFacetBuckets;

  /// If object_type is set, only those objects of that type will be used to
  /// compute facets. If empty, then all objects will be used to compute facets.
  core.String objectType;

  /// Name of the operator chosen for faceting. @see
  /// cloudsearch.SchemaPropertyOptions
  core.String operatorName;

  /// Source name to facet on. Format: datasources/{source_id}
  /// If empty, all data sources will be used.
  core.String sourceName;

  FacetOptions();

  FacetOptions.fromJson(core.Map _json) {
    if (_json.containsKey("numFacetBuckets")) {
      numFacetBuckets = _json["numFacetBuckets"];
    }
    if (_json.containsKey("objectType")) {
      objectType = _json["objectType"];
    }
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
    if (_json.containsKey("sourceName")) {
      sourceName = _json["sourceName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (numFacetBuckets != null) {
      _json["numFacetBuckets"] = numFacetBuckets;
    }
    if (objectType != null) {
      _json["objectType"] = objectType;
    }
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    if (sourceName != null) {
      _json["sourceName"] = sourceName;
    }
    return _json;
  }
}

/// Source specific facet response
class FacetResult {
  /// FacetBuckets for values in response containing at least a single result.
  core.List<FacetBucket> buckets;

  /// Object type for which facet results are returned. Can be empty.
  core.String objectType;

  /// Name of the operator chosen for faceting. @see
  /// cloudsearch.SchemaPropertyOptions
  core.String operatorName;

  /// Source name for which facet results are returned. Will not be empty.
  core.String sourceName;

  FacetResult();

  FacetResult.fromJson(core.Map _json) {
    if (_json.containsKey("buckets")) {
      buckets = (_json["buckets"] as core.List)
          .map<FacetBucket>((value) => new FacetBucket.fromJson(value))
          .toList();
    }
    if (_json.containsKey("objectType")) {
      objectType = _json["objectType"];
    }
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
    if (_json.containsKey("sourceName")) {
      sourceName = _json["sourceName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (buckets != null) {
      _json["buckets"] = buckets.map((value) => (value).toJson()).toList();
    }
    if (objectType != null) {
      _json["objectType"] = objectType;
    }
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    if (sourceName != null) {
      _json["sourceName"] = sourceName;
    }
    return _json;
  }
}

class FieldViolation {
  /// Description of the error.
  core.String description;

  /// Path of field with violation.
  core.String field;

  FieldViolation();

  FieldViolation.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("field")) {
      field = _json["field"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (field != null) {
      _json["field"] = field;
    }
    return _json;
  }
}

/// A generic way of expressing filters in a query, which supports two
/// approaches: <br/><br/>
/// **1. Setting a ValueFilter.** The name must match an operator_name defined
/// in
/// the schema for your data source.
/// <br/>
/// **2. Setting a CompositeFilter.** The filters are evaluated
/// using the logical operator. The top-level operators can only be either an
/// AND
/// or a NOT. AND can appear only at the top-most level. OR can appear only
/// under
/// a top-level AND.
class Filter {
  CompositeFilter compositeFilter;
  ValueFilter valueFilter;

  Filter();

  Filter.fromJson(core.Map _json) {
    if (_json.containsKey("compositeFilter")) {
      compositeFilter = new CompositeFilter.fromJson(_json["compositeFilter"]);
    }
    if (_json.containsKey("valueFilter")) {
      valueFilter = new ValueFilter.fromJson(_json["valueFilter"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (compositeFilter != null) {
      _json["compositeFilter"] = (compositeFilter).toJson();
    }
    if (valueFilter != null) {
      _json["valueFilter"] = (valueFilter).toJson();
    }
    return _json;
  }
}

/// Filter options to be applied on query.
class FilterOptions {
  /// Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  Filter filter;

  /// If object_type is set, only objects of that type are returned. This should
  /// correspond to the name of the object that was registered within the
  /// definition of schema. The maximum length is 256 characters.
  core.String objectType;

  FilterOptions();

  FilterOptions.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = new Filter.fromJson(_json["filter"]);
    }
    if (_json.containsKey("objectType")) {
      objectType = _json["objectType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (filter != null) {
      _json["filter"] = (filter).toJson();
    }
    if (objectType != null) {
      _json["objectType"] = objectType;
    }
    return _json;
  }
}

/// Indicates which freshness property to use when adjusting search ranking for
/// an item. Fresher, more recent dates indicate higher quality. Use the
/// freshness option property that best works with your data. For fileshare
/// documents, last modified time is most relevant. For calendar event data,
/// the time when the event occurs is a more relevant freshness indicator. In
/// this way, calendar events that occur closer to the time of the search query
/// are considered higher quality and ranked accordingly.
class FreshnessOptions {
  /// The duration after which an object should be considered
  /// stale. The default value is 180 days (in seconds).
  core.String freshnessDuration;

  /// This property indicates the freshness level of the object in the index.
  /// If set, this property must be a top-level property within the
  /// property definitions
  /// and it must be a
  /// timestamp type
  /// or
  /// date type.
  /// Otherwise, the Indexing API uses
  /// updateTime
  /// as the freshness indicator.
  /// The maximum length is 256 characters.
  ///
  /// When a property is used to calculate fresheness, the value defaults
  /// to 2 years from the current time.
  core.String freshnessProperty;

  FreshnessOptions();

  FreshnessOptions.fromJson(core.Map _json) {
    if (_json.containsKey("freshnessDuration")) {
      freshnessDuration = _json["freshnessDuration"];
    }
    if (_json.containsKey("freshnessProperty")) {
      freshnessProperty = _json["freshnessProperty"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (freshnessDuration != null) {
      _json["freshnessDuration"] = freshnessDuration;
    }
    if (freshnessProperty != null) {
      _json["freshnessProperty"] = freshnessProperty;
    }
    return _json;
  }
}

class GSuitePrincipal {
  /// This principal represents all users of the G Suite domain of the
  /// customer.
  core.bool gsuiteDomain;

  /// This principal references a G Suite group account
  core.String gsuiteGroupEmail;

  /// This principal references a G Suite user account
  core.String gsuiteUserEmail;

  GSuitePrincipal();

  GSuitePrincipal.fromJson(core.Map _json) {
    if (_json.containsKey("gsuiteDomain")) {
      gsuiteDomain = _json["gsuiteDomain"];
    }
    if (_json.containsKey("gsuiteGroupEmail")) {
      gsuiteGroupEmail = _json["gsuiteGroupEmail"];
    }
    if (_json.containsKey("gsuiteUserEmail")) {
      gsuiteUserEmail = _json["gsuiteUserEmail"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (gsuiteDomain != null) {
      _json["gsuiteDomain"] = gsuiteDomain;
    }
    if (gsuiteGroupEmail != null) {
      _json["gsuiteGroupEmail"] = gsuiteGroupEmail;
    }
    if (gsuiteUserEmail != null) {
      _json["gsuiteUserEmail"] = gsuiteUserEmail;
    }
    return _json;
  }
}

class GetCustomerIndexStatsResponse {
  /// Summary of indexed item counts, one for each day in the requested range.
  core.List<CustomerIndexStats> stats;

  GetCustomerIndexStatsResponse();

  GetCustomerIndexStatsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("stats")) {
      stats = (_json["stats"] as core.List)
          .map<CustomerIndexStats>(
              (value) => new CustomerIndexStats.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (stats != null) {
      _json["stats"] = stats.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class GetDataSourceIndexStatsResponse {
  /// Summary of indexed item counts, one for each day in the requested range.
  core.List<DataSourceIndexStats> stats;

  GetDataSourceIndexStatsResponse();

  GetDataSourceIndexStatsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("stats")) {
      stats = (_json["stats"] as core.List)
          .map<DataSourceIndexStats>(
              (value) => new DataSourceIndexStats.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (stats != null) {
      _json["stats"] = stats.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Gmail Action restricts (i.e. read/replied/snoozed).
class GmailActionRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "UNREAD" : is:unread
  /// - "READ" : is:read
  /// - "REPLIED_TO" : label:^io_re
  /// - "MUTED" : label:mute
  core.String type;

  GmailActionRestrict();

  GmailActionRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Gmail Attachment restricts (i.e. has:attachment, has:drive, filename:pdf).
class GmailAttachmentRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "HAS_ATTACHMENT" : has:attachment
  /// - "HAS_PHOTO" : has photos (changes to filename:(jpg OR jpeg OR png)  when
  /// typed)
  /// - "HAS_DRIVE" : has:drive
  /// - "HAS_DOCUMENT" : has:document
  /// - "HAS_SPREADSHEET" : has:spreadsheet
  /// - "HAS_PRESENTATION" : has:presentation
  /// - "HAS_YOUTUBE" : has:youtube
  /// - "HAS_PDF" : filename:pdf
  core.String type;

  GmailAttachmentRestrict();

  GmailAttachmentRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Gmail Folder restricts (i.e. in Drafts/Sent/Chats/User Generated Labels).
class GmailFolderRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "IN_SENT" : in:sent
  /// - "IN_DRAFT" : in:draft
  /// - "CHATS" : label:chats
  /// - "IN_TRASH" : in:trash
  /// - "USER_GENERATED_LABEL" : label:<user generated>
  core.String type;

  GmailFolderRestrict();

  GmailFolderRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Gmail Intelligent restricts (i.e. smartlabels, important).
class GmailIntelligentRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "SOCIAL" : category:social
  /// - "UPDATES" : category:updates
  /// - "FORUMS" : category:forums
  /// - "PROMOTIONS" : category:promotions
  /// - "IMPORTANT" : is:important
  /// - "FLIGHT_RESERVATION" : label:^cob_sm_flightreservation
  /// - "LODGING_RESERVATION" : label:^cob_sm_lodgingreservation
  /// - "CAR_RESERVATION" : label:^cob_sm_rentalcarreservation
  /// - "BUS_RESERVATION" : label:^cob_sm_busreservation
  core.String type;

  GmailIntelligentRestrict();

  GmailIntelligentRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Gmail Time restricts (i.e. received today, this week).
class GmailTimeRestrict {
  ///
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "FROM_THIS_WEEK" : newer_than:7d
  /// - "OLDER_THAN_ONE_YEAR" : older_than:1y
  /// - "FROM_TODAY" : newer_than:1d
  /// - "FROM_YESTERDAY" : newer_than:2d older_than:1d
  /// - "FROM_THIS_MONTH" : newer_than:30d
  /// - "FROM_CERTAIN_MONTH" : This will read as something like "From November"
  /// and will have operator
  /// before:X after:Y
  /// - "OLDER_THAN_TODAY" : older_than:1d
  /// - "OLDER_THAN_YESTERDAY" : older_than:2d
  /// - "OLDER_THAN_A_WEEK" : older_than:7d
  /// - "OLDER_THAN_A_MONTH" : older_than:30d
  core.String type;

  GmailTimeRestrict();

  GmailTimeRestrict.fromJson(core.Map _json) {
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Used to provide a search operator for html properties. This is optional.
/// Search operators let users restrict the query to specific fields relevant
/// to the type of item being searched.
class HtmlOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// html property. For example, if operatorName is *subject* and the
  /// property's name is *subjectLine*, then queries like
  /// *subject:&lt;value&gt;* will show results only where the value of the
  /// property named *subjectLine* matches *&lt;value&gt;*. By contrast, a
  /// search that uses the same *&lt;value&gt;* without an operator will return
  /// all items where *&lt;value&gt;* matches the value of any
  /// html properties or text within the content field for the item.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String operatorName;

  HtmlOperatorOptions();

  HtmlOperatorOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    return _json;
  }
}

/// Options for html properties.
class HtmlPropertyOptions {
  /// If set, describes how the property should be used as a search operator.
  HtmlOperatorOptions operatorOptions;

  /// Indicates the search quality importance of the tokens within the
  /// field when used for retrieval. Can only be set to DEFAULT or NONE.
  RetrievalImportance retrievalImportance;

  HtmlPropertyOptions();

  HtmlPropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorOptions")) {
      operatorOptions =
          new HtmlOperatorOptions.fromJson(_json["operatorOptions"]);
    }
    if (_json.containsKey("retrievalImportance")) {
      retrievalImportance =
          new RetrievalImportance.fromJson(_json["retrievalImportance"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorOptions != null) {
      _json["operatorOptions"] = (operatorOptions).toJson();
    }
    if (retrievalImportance != null) {
      _json["retrievalImportance"] = (retrievalImportance).toJson();
    }
    return _json;
  }
}

/// List of html values.
class HtmlValues {
  /// The maximum allowable length for html values is 2048 characters.
  core.List<core.String> values;

  HtmlValues();

  HtmlValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

class IndexItemOptions {
  /// Specifies if the index request should allow gsuite principals that do not
  /// exist or are deleted in the index request.
  core.bool allowUnknownGsuitePrincipals;

  IndexItemOptions();

  IndexItemOptions.fromJson(core.Map _json) {
    if (_json.containsKey("allowUnknownGsuitePrincipals")) {
      allowUnknownGsuitePrincipals = _json["allowUnknownGsuitePrincipals"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowUnknownGsuitePrincipals != null) {
      _json["allowUnknownGsuitePrincipals"] = allowUnknownGsuitePrincipals;
    }
    return _json;
  }
}

class IndexItemRequest {
  /// Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  core.String connectorName;

  /// Common debug options.
  DebugOptions debugOptions;
  IndexItemOptions indexItemOptions;

  /// Name of the item.  Format:
  /// datasources/{source_id}/items/{item_id}
  Item item;

  /// Required. The RequestMode for this request.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Priority is not specified in the update request.
  /// Leaving priority unspecified results in an update failure.
  /// - "SYNCHRONOUS" : For real-time updates.
  /// - "ASYNCHRONOUS" : For changes that are executed after the response is
  /// sent back to the
  /// caller.
  core.String mode;

  IndexItemRequest();

  IndexItemRequest.fromJson(core.Map _json) {
    if (_json.containsKey("connectorName")) {
      connectorName = _json["connectorName"];
    }
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("indexItemOptions")) {
      indexItemOptions =
          new IndexItemOptions.fromJson(_json["indexItemOptions"]);
    }
    if (_json.containsKey("item")) {
      item = new Item.fromJson(_json["item"]);
    }
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (connectorName != null) {
      _json["connectorName"] = connectorName;
    }
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (indexItemOptions != null) {
      _json["indexItemOptions"] = (indexItemOptions).toJson();
    }
    if (item != null) {
      _json["item"] = (item).toJson();
    }
    if (mode != null) {
      _json["mode"] = mode;
    }
    return _json;
  }
}

/// Used to provide a search operator for integer properties. This is
/// optional. Search operators let users restrict the query to specific fields
/// relevant to the type of item being searched.
class IntegerOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// integer property using the greater-than operator. For example, if
  /// greaterThanOperatorName is *priorityabove* and the property's name is
  /// *priorityVal*, then queries like *priorityabove:&lt;value&gt;* will
  /// show results only where the value of the property named *priorityVal* is
  /// greater than *&lt;value&gt;*.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String greaterThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// integer property using the less-than operator. For example, if
  /// lessThanOperatorName is *prioritybelow* and the property's name is
  /// *priorityVal*, then queries like *prioritybelow:&lt;value&gt;* will
  /// show results only where the value of the property named *priorityVal* is
  /// less than *&lt;value&gt;*.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String lessThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// integer property. For example, if operatorName is *priority* and the
  /// property's name is *priorityVal*, then queries like
  /// *priority:&lt;value&gt;* will show results only where the value of the
  /// property named *priorityVal* matches *&lt;value&gt;*. By contrast, a
  /// search that uses the same *&lt;value&gt;* without an operator will return
  /// all items where *&lt;value&gt;* matches the value of any String
  /// properties or text within the content field for the item.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String operatorName;

  IntegerOperatorOptions();

  IntegerOperatorOptions.fromJson(core.Map _json) {
    if (_json.containsKey("greaterThanOperatorName")) {
      greaterThanOperatorName = _json["greaterThanOperatorName"];
    }
    if (_json.containsKey("lessThanOperatorName")) {
      lessThanOperatorName = _json["lessThanOperatorName"];
    }
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (greaterThanOperatorName != null) {
      _json["greaterThanOperatorName"] = greaterThanOperatorName;
    }
    if (lessThanOperatorName != null) {
      _json["lessThanOperatorName"] = lessThanOperatorName;
    }
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    return _json;
  }
}

/// Options for integer properties.
class IntegerPropertyOptions {
  /// The maximum value of the property. The minimum and maximum values for the
  /// property are used to rank results according to the
  /// ordered ranking.
  /// Indexing requests with values greater than the maximum are accepted and
  /// ranked with the same weight as items indexed with the maximum value.
  core.String maximumValue;

  /// The minimum value of the property. The minimum and maximum values for the
  /// property are used to rank results according to the
  /// ordered ranking.
  /// Indexing requests with values less than the minimum are accepted and
  /// ranked with the same weight as items indexed with the minimum value.
  core.String minimumValue;

  /// If set, describes how the integer should be used as a search operator.
  IntegerOperatorOptions operatorOptions;

  /// Used to specify the ordered ranking for the integer. Can only be used if
  /// isRepeatable
  /// is false.
  /// Possible string values are:
  /// - "NO_ORDER" : There is no ranking order for the property. Results will
  /// not be adjusted
  /// by this property's value.
  /// - "ASCENDING" : This property is ranked in ascending order. Lower values
  /// indicate lower
  /// ranking.
  /// - "DESCENDING" : This property is ranked in descending order. Lower values
  /// indicate
  /// higher ranking.
  core.String orderedRanking;

  IntegerPropertyOptions();

  IntegerPropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("maximumValue")) {
      maximumValue = _json["maximumValue"];
    }
    if (_json.containsKey("minimumValue")) {
      minimumValue = _json["minimumValue"];
    }
    if (_json.containsKey("operatorOptions")) {
      operatorOptions =
          new IntegerOperatorOptions.fromJson(_json["operatorOptions"]);
    }
    if (_json.containsKey("orderedRanking")) {
      orderedRanking = _json["orderedRanking"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (maximumValue != null) {
      _json["maximumValue"] = maximumValue;
    }
    if (minimumValue != null) {
      _json["minimumValue"] = minimumValue;
    }
    if (operatorOptions != null) {
      _json["operatorOptions"] = (operatorOptions).toJson();
    }
    if (orderedRanking != null) {
      _json["orderedRanking"] = orderedRanking;
    }
    return _json;
  }
}

/// List of integer values.
class IntegerValues {
  core.List<core.String> values;

  IntegerValues();

  IntegerValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Represents an interaction between a user and an item.
class Interaction {
  /// The time when the user acted on the item.  If multiple actions of the same
  /// type exist for a single user, only the most recent action is recorded.
  core.String interactionTime;

  /// The user that acted on the item.
  Principal principal;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED" : Invalid value.
  /// - "VIEW" : This interaction indicates the user viewed the item.
  /// - "EDIT" : This interaction indicates the user edited the item.
  core.String type;

  Interaction();

  Interaction.fromJson(core.Map _json) {
    if (_json.containsKey("interactionTime")) {
      interactionTime = _json["interactionTime"];
    }
    if (_json.containsKey("principal")) {
      principal = new Principal.fromJson(_json["principal"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (interactionTime != null) {
      _json["interactionTime"] = interactionTime;
    }
    if (principal != null) {
      _json["principal"] = (principal).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Represents a single object that is an item in the search index, such as a
/// file, folder, or a database record.
class Item {
  /// Access control list for this item.
  ItemAcl acl;

  /// Item content to be indexed and made text searchable.
  ItemContent content;

  /// Type for this item.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "CONTENT_ITEM" : An item that is indexed for the only purpose of serving
  /// information.
  /// These items cannot be referred in
  /// containerName
  /// or inheritAclFrom
  /// fields.
  /// - "CONTAINER_ITEM" : An item that gets indexed and whose purpose is to
  /// supply other items
  /// with ACLs and/or contain other items.
  /// - "VIRTUAL_CONTAINER_ITEM" : An item that does not get indexed, but
  /// otherwise has the same purpose
  /// as CONTAINER_ITEM.
  core.String itemType;

  /// Metadata information.
  ItemMetadata metadata;

  /// Name of the Item. Format:
  /// datasources/{source_id}/items/{item_id}
  /// <br />This is a required field.
  /// The maximum length is 1536 characters.
  core.String name;

  /// Additional state connector can store for this item.
  /// The maximum length is 10000 bytes.
  core.String payload;
  core.List<core.int> get payloadAsBytes {
    return convert.base64.decode(payload);
  }

  set payloadAsBytes(core.List<core.int> _bytes) {
    payload =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Queue this item belongs to.
  /// The maximum length is 100 characters.
  core.String queue;

  /// Status of the item.
  /// Output only field.
  ItemStatus status;

  /// The structured data for the item that should conform to a registered
  /// object definition in the schema for the data source.
  ItemStructuredData structuredData;

  /// Required. The indexing system stores the version from the datasource as a
  /// byte string and compares the Item version in the index
  /// to the version of the queued Item using lexical ordering.
  /// <br /><br />
  /// Cloud Search Indexing won't index or delete any queued item with
  /// a version value that is less than or equal to the version of the
  /// currently indexed item.
  /// The maximum length for this field is 1024 bytes.
  core.String version;
  core.List<core.int> get versionAsBytes {
    return convert.base64.decode(version);
  }

  set versionAsBytes(core.List<core.int> _bytes) {
    version =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  Item();

  Item.fromJson(core.Map _json) {
    if (_json.containsKey("acl")) {
      acl = new ItemAcl.fromJson(_json["acl"]);
    }
    if (_json.containsKey("content")) {
      content = new ItemContent.fromJson(_json["content"]);
    }
    if (_json.containsKey("itemType")) {
      itemType = _json["itemType"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new ItemMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("queue")) {
      queue = _json["queue"];
    }
    if (_json.containsKey("status")) {
      status = new ItemStatus.fromJson(_json["status"]);
    }
    if (_json.containsKey("structuredData")) {
      structuredData = new ItemStructuredData.fromJson(_json["structuredData"]);
    }
    if (_json.containsKey("version")) {
      version = _json["version"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (acl != null) {
      _json["acl"] = (acl).toJson();
    }
    if (content != null) {
      _json["content"] = (content).toJson();
    }
    if (itemType != null) {
      _json["itemType"] = itemType;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (queue != null) {
      _json["queue"] = queue;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (structuredData != null) {
      _json["structuredData"] = (structuredData).toJson();
    }
    if (version != null) {
      _json["version"] = version;
    }
    return _json;
  }
}

/// Access control list information for the item. For more information see
/// https://developers.google.com/cloud-search/docs/guides/index-your-data#acls
class ItemAcl {
  /// Sets the type of access rules to apply when an item inherits its ACL from
  /// a
  /// parent. This should always be set in tandem with the
  /// inheritAclFrom
  /// field. Also, when the
  /// inheritAclFrom field
  /// is set, this field should be set to a valid AclInheritanceType.
  /// Possible string values are:
  /// - "NOT_APPLICABLE" : The default value when this item does not inherit an
  /// ACL.
  /// Use NOT_APPLICABLE when
  /// inheritAclFrom
  /// is empty.  An item without ACL inheritance can still have ACLs supplied
  /// by its own readers and
  /// deniedReaders fields.
  /// - "CHILD_OVERRIDE" : During an authorization conflict, the ACL of the
  /// child item determines
  /// its read access.
  /// - "PARENT_OVERRIDE" : During an authorization conflict, the ACL of the
  /// parent item
  /// specified in the
  /// inheritAclFrom
  /// field determines read access.
  /// - "BOTH_PERMIT" : Access is granted only if this item and the parent item
  /// specified in
  /// the inheritAclFrom
  /// field both permit read access.
  core.String aclInheritanceType;

  /// List of principals who are explicitly denied access to the item in search
  /// results. While principals are denied access by default, use denied readers
  /// to handle exceptions and override the list allowed readers.
  /// The maximum number of elements is 100.
  core.List<Principal> deniedReaders;

  /// Name of the item to inherit the Access Permission List (ACL) from.
  /// Note: ACL inheritance *only* provides access permissions
  /// to child items and does not define structural relationships, nor does it
  /// provide convenient ways to delete large groups of items.
  /// Deleting an ACL parent from the index only alters the access permissions
  /// of
  /// child items that reference the parent in the
  /// inheritAclFrom
  /// field. The item is still in the index, but may not
  /// visible in search results. By contrast, deletion of a container item
  /// also deletes all items that reference the container via the
  /// containerName
  /// field.
  /// The maximum length for this field is 1536 characters.
  core.String inheritAclFrom;

  /// Optional. List of owners for the item. This field has no bearing on
  /// document access permissions. It does, however, offer
  /// a slight ranking boosts items where the querying user is an owner.
  /// The maximum number of elements is 5.
  core.List<Principal> owners;

  /// List of principals who are allowed to see the item in search results.
  /// Optional if inheriting permissions from another item or if the item
  /// is not intended to be visible, such as
  /// virtual
  /// containers.
  /// The maximum number of elements is 1000.
  core.List<Principal> readers;

  ItemAcl();

  ItemAcl.fromJson(core.Map _json) {
    if (_json.containsKey("aclInheritanceType")) {
      aclInheritanceType = _json["aclInheritanceType"];
    }
    if (_json.containsKey("deniedReaders")) {
      deniedReaders = (_json["deniedReaders"] as core.List)
          .map<Principal>((value) => new Principal.fromJson(value))
          .toList();
    }
    if (_json.containsKey("inheritAclFrom")) {
      inheritAclFrom = _json["inheritAclFrom"];
    }
    if (_json.containsKey("owners")) {
      owners = (_json["owners"] as core.List)
          .map<Principal>((value) => new Principal.fromJson(value))
          .toList();
    }
    if (_json.containsKey("readers")) {
      readers = (_json["readers"] as core.List)
          .map<Principal>((value) => new Principal.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (aclInheritanceType != null) {
      _json["aclInheritanceType"] = aclInheritanceType;
    }
    if (deniedReaders != null) {
      _json["deniedReaders"] =
          deniedReaders.map((value) => (value).toJson()).toList();
    }
    if (inheritAclFrom != null) {
      _json["inheritAclFrom"] = inheritAclFrom;
    }
    if (owners != null) {
      _json["owners"] = owners.map((value) => (value).toJson()).toList();
    }
    if (readers != null) {
      _json["readers"] = readers.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Content of an item to be indexed and surfaced by Cloud Search.
class ItemContent {
  /// Upload reference ID of a previously uploaded content via write method.
  UploadItemRef contentDataRef;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED" : Invalid value.
  /// - "HTML" : contentFormat is HTML.
  /// - "TEXT" : contentFormat is free text.
  /// - "RAW" : contentFormat is raw bytes.
  core.String contentFormat;

  /// Hashing info calculated and provided by the API client for content.
  /// Can be used with the items.push method to calculate modified state.
  /// The maximum length is 2048 characters.
  core.String hash;

  /// Content that is supplied inlined within the update method.
  /// The maximum length is 102400 bytes (100 KiB).
  core.String inlineContent;
  core.List<core.int> get inlineContentAsBytes {
    return convert.base64.decode(inlineContent);
  }

  set inlineContentAsBytes(core.List<core.int> _bytes) {
    inlineContent =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  ItemContent();

  ItemContent.fromJson(core.Map _json) {
    if (_json.containsKey("contentDataRef")) {
      contentDataRef = new UploadItemRef.fromJson(_json["contentDataRef"]);
    }
    if (_json.containsKey("contentFormat")) {
      contentFormat = _json["contentFormat"];
    }
    if (_json.containsKey("hash")) {
      hash = _json["hash"];
    }
    if (_json.containsKey("inlineContent")) {
      inlineContent = _json["inlineContent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentDataRef != null) {
      _json["contentDataRef"] = (contentDataRef).toJson();
    }
    if (contentFormat != null) {
      _json["contentFormat"] = contentFormat;
    }
    if (hash != null) {
      _json["hash"] = hash;
    }
    if (inlineContent != null) {
      _json["inlineContent"] = inlineContent;
    }
    return _json;
  }
}

class ItemCountByStatus {
  /// Number of items matching the status code.
  core.String count;

  /// Status of the items.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Input-only value.  Used with
  /// Items.list
  /// to list all items in the queue, regardless of status.
  /// - "ERROR" : Error encountered by Cloud Search while processing this item.
  /// Details of the error are in
  /// repositoryError.
  /// - "MODIFIED" : Item has been modified in the repository, and is out of
  /// date with
  /// the version previously accepted into Cloud Search.
  /// - "NEW_ITEM" : Item is known to exist in the repository, but is not yet
  /// accepted by
  /// Cloud Search.
  /// An item can be in this state when
  /// Items.push
  /// has been called for
  /// an item of this name that did not exist previously.
  /// - "ACCEPTED" : API has accepted the up-to-date data of this item.
  core.String statusCode;

  ItemCountByStatus();

  ItemCountByStatus.fromJson(core.Map _json) {
    if (_json.containsKey("count")) {
      count = _json["count"];
    }
    if (_json.containsKey("statusCode")) {
      statusCode = _json["statusCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (count != null) {
      _json["count"] = count;
    }
    if (statusCode != null) {
      _json["statusCode"] = statusCode;
    }
    return _json;
  }
}

/// Available metadata fields for the item.
class ItemMetadata {
  /// The name of the container for this item.
  /// Deletion of the container item leads to automatic deletion of this
  /// item.  Note: ACLs are not inherited from a container item.
  /// To provide ACL inheritance for an item, use the
  /// inheritAclFrom
  /// field. The maximum length is 1536 characters.
  core.String containerName;

  /// The BCP-47 language code for the item, such as "en-US" or "sr-Latn". For
  /// more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  /// The maximum length is 32 characters.
  core.String contentLanguage;

  /// The time when the item was created in the source repository.
  core.String createTime;

  /// Hashing value provided by the API caller.
  /// This can be used with the
  /// items.push
  /// method to calculate modified state.
  /// The maximum length is 2048 characters.
  core.String hash;

  /// A list of interactions for the item.  Interactions are used to improve
  /// Search quality, but are not exposed to end users.
  /// The maximum number of elements is 1000.
  core.List<Interaction> interactions;

  /// Additional keywords or phrases that should match the item.
  /// Used internally for user generated content.
  /// The maximum number of elements is 100.
  /// The maximum length is 8192 characters.
  core.List<core.String> keywords;

  /// The original mime-type of
  /// ItemContent.content
  /// in the source repository.
  /// The maximum length is 256 characters.
  core.String mimeType;

  /// The type of the item.  This should correspond to the name of an object
  /// definition in the schema registered for the data source.  For example, if
  /// the schema for the data source contains an object definition with name
  /// 'document', then item indexing requests for objects of that type should
  /// set
  /// objectType to 'document'.
  /// The maximum length is 256 characters.
  core.String objectType;

  /// Additional search quality metadata of the item
  SearchQualityMetadata searchQualityMetadata;

  /// Link to the source repository serving the data.  &#83;earch results apply
  /// this link to the title.
  /// The maximum length is 2048 characters.
  core.String sourceRepositoryUrl;

  /// The title of the item.  If given, this will be the displayed title of the
  /// Search result.
  /// The maximum length is 2048 characters.
  core.String title;

  /// The time when the item was last modified in the source repository.
  core.String updateTime;

  ItemMetadata();

  ItemMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("containerName")) {
      containerName = _json["containerName"];
    }
    if (_json.containsKey("contentLanguage")) {
      contentLanguage = _json["contentLanguage"];
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("hash")) {
      hash = _json["hash"];
    }
    if (_json.containsKey("interactions")) {
      interactions = (_json["interactions"] as core.List)
          .map<Interaction>((value) => new Interaction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("keywords")) {
      keywords = (_json["keywords"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("objectType")) {
      objectType = _json["objectType"];
    }
    if (_json.containsKey("searchQualityMetadata")) {
      searchQualityMetadata =
          new SearchQualityMetadata.fromJson(_json["searchQualityMetadata"]);
    }
    if (_json.containsKey("sourceRepositoryUrl")) {
      sourceRepositoryUrl = _json["sourceRepositoryUrl"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (containerName != null) {
      _json["containerName"] = containerName;
    }
    if (contentLanguage != null) {
      _json["contentLanguage"] = contentLanguage;
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (hash != null) {
      _json["hash"] = hash;
    }
    if (interactions != null) {
      _json["interactions"] =
          interactions.map((value) => (value).toJson()).toList();
    }
    if (keywords != null) {
      _json["keywords"] = keywords;
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (objectType != null) {
      _json["objectType"] = objectType;
    }
    if (searchQualityMetadata != null) {
      _json["searchQualityMetadata"] = (searchQualityMetadata).toJson();
    }
    if (sourceRepositoryUrl != null) {
      _json["sourceRepositoryUrl"] = sourceRepositoryUrl;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// This contains item's status and any errors.
class ItemStatus {
  /// Status code.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Input-only value.  Used with
  /// Items.list
  /// to list all items in the queue, regardless of status.
  /// - "ERROR" : Error encountered by Cloud Search while processing this item.
  /// Details of the error are in
  /// repositoryError.
  /// - "MODIFIED" : Item has been modified in the repository, and is out of
  /// date with
  /// the version previously accepted into Cloud Search.
  /// - "NEW_ITEM" : Item is known to exist in the repository, but is not yet
  /// accepted by
  /// Cloud Search.
  /// An item can be in this state when
  /// Items.push
  /// has been called for
  /// an item of this name that did not exist previously.
  /// - "ACCEPTED" : API has accepted the up-to-date data of this item.
  core.String code;

  /// Error details in case the item is in ERROR state.
  core.List<ProcessingError> processingErrors;

  /// Repository error reported by connector.
  core.List<RepositoryError> repositoryErrors;

  ItemStatus();

  ItemStatus.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("processingErrors")) {
      processingErrors = (_json["processingErrors"] as core.List)
          .map<ProcessingError>((value) => new ProcessingError.fromJson(value))
          .toList();
    }
    if (_json.containsKey("repositoryErrors")) {
      repositoryErrors = (_json["repositoryErrors"] as core.List)
          .map<RepositoryError>((value) => new RepositoryError.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (processingErrors != null) {
      _json["processingErrors"] =
          processingErrors.map((value) => (value).toJson()).toList();
    }
    if (repositoryErrors != null) {
      _json["repositoryErrors"] =
          repositoryErrors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Available structured data fields for the item.
class ItemStructuredData {
  /// Hashing value provided by the API caller.
  /// This can be used with the
  /// items.push
  /// method to calculate modified state.
  /// The maximum length is 2048 characters.
  core.String hash;

  /// The structured data object that should conform to a registered object
  /// definition in the schema for the data source.
  StructuredDataObject object;

  ItemStructuredData();

  ItemStructuredData.fromJson(core.Map _json) {
    if (_json.containsKey("hash")) {
      hash = _json["hash"];
    }
    if (_json.containsKey("object")) {
      object = new StructuredDataObject.fromJson(_json["object"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hash != null) {
      _json["hash"] = hash;
    }
    if (object != null) {
      _json["object"] = (object).toJson();
    }
    return _json;
  }
}

class ListDataSourceResponse {
  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;
  core.List<DataSource> sources;

  ListDataSourceResponse();

  ListDataSourceResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("sources")) {
      sources = (_json["sources"] as core.List)
          .map<DataSource>((value) => new DataSource.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListItemNamesForUnmappedIdentityResponse {
  core.List<core.String> itemNames;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  ListItemNamesForUnmappedIdentityResponse();

  ListItemNamesForUnmappedIdentityResponse.fromJson(core.Map _json) {
    if (_json.containsKey("itemNames")) {
      itemNames = (_json["itemNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (itemNames != null) {
      _json["itemNames"] = itemNames;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

class ListItemsResponse {
  core.List<Item> items;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  ListItemsResponse();

  ListItemsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Item>((value) => new Item.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// List sources response.
class ListQuerySourcesResponse {
  core.String nextPageToken;
  core.List<QuerySource> sources;

  ListQuerySourcesResponse();

  ListQuerySourcesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("sources")) {
      sources = (_json["sources"] as core.List)
          .map<QuerySource>((value) => new QuerySource.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (sources != null) {
      _json["sources"] = sources.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListSearchApplicationsResponse {
  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;
  core.List<SearchApplication> searchApplications;

  ListSearchApplicationsResponse();

  ListSearchApplicationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("searchApplications")) {
      searchApplications = (_json["searchApplications"] as core.List)
          .map<SearchApplication>(
              (value) => new SearchApplication.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (searchApplications != null) {
      _json["searchApplications"] =
          searchApplications.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ListUnmappedIdentitiesResponse {
  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;
  core.List<UnmappedIdentity> unmappedIdentities;

  ListUnmappedIdentitiesResponse();

  ListUnmappedIdentitiesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("unmappedIdentities")) {
      unmappedIdentities = (_json["unmappedIdentities"] as core.List)
          .map<UnmappedIdentity>(
              (value) => new UnmappedIdentity.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (unmappedIdentities != null) {
      _json["unmappedIdentities"] =
          unmappedIdentities.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Matched range of a snippet [start, end).
class MatchRange {
  /// End of the match in the snippet.
  core.int end;

  /// Starting position of the match in the snippet.
  core.int start;

  MatchRange();

  MatchRange.fromJson(core.Map _json) {
    if (_json.containsKey("end")) {
      end = _json["end"];
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (end != null) {
      _json["end"] = end;
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}

/// Media resource.
class Media {
  /// Name of the media resource.
  core.String resourceName;

  Media();

  Media.fromJson(core.Map _json) {
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    return _json;
  }
}

/// Metadata of a matched search result.
class Metadata {
  /// The creation time for this document or object in the search result.
  core.String createTime;

  /// Options that specify how to display a structured data search result.
  ResultDisplayMetadata displayOptions;

  /// Indexed fields in structured data, returned as a generic named property.
  core.List<NamedProperty> fields;

  /// Mime type of the search result.
  core.String mimeType;

  /// Object type of the search result.
  core.String objectType;

  /// Owner (usually creator) of the document or object of the search result.
  Person owner;

  /// The named source for the result, such as Gmail.
  Source source;

  /// The last modified date for the object in the search result. If not
  /// set in the item, the value returned here is empty. When
  /// `updateTime` is used for calculating freshness and is not set, this
  /// value defaults to 2 years from the current time.
  core.String updateTime;

  Metadata();

  Metadata.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("displayOptions")) {
      displayOptions =
          new ResultDisplayMetadata.fromJson(_json["displayOptions"]);
    }
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<NamedProperty>((value) => new NamedProperty.fromJson(value))
          .toList();
    }
    if (_json.containsKey("mimeType")) {
      mimeType = _json["mimeType"];
    }
    if (_json.containsKey("objectType")) {
      objectType = _json["objectType"];
    }
    if (_json.containsKey("owner")) {
      owner = new Person.fromJson(_json["owner"]);
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (displayOptions != null) {
      _json["displayOptions"] = (displayOptions).toJson();
    }
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    if (mimeType != null) {
      _json["mimeType"] = mimeType;
    }
    if (objectType != null) {
      _json["objectType"] = objectType;
    }
    if (owner != null) {
      _json["owner"] = (owner).toJson();
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// A metaline is a list of properties that are displayed along with the search
/// result to provide context.
class Metaline {
  /// The list of displayed properties for the metaline. The maxiumum number of
  /// properties is 5.
  core.List<DisplayedProperty> properties;

  Metaline();

  Metaline.fromJson(core.Map _json) {
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<DisplayedProperty>(
              (value) => new DisplayedProperty.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A person's name.
class Name {
  /// The read-only display name formatted according to the locale specified by
  /// the viewer's account or the <code>Accept-Language</code> HTTP header.
  core.String displayName;

  Name();

  Name.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    return _json;
  }
}

/// A typed name-value pair for structured data.  The type of the value should
/// be the same as the registered type for the `name` property in the object
/// definition of `objectType`.
class NamedProperty {
  core.bool booleanValue;
  DateValues dateValues;
  DoubleValues doubleValues;
  EnumValues enumValues;
  HtmlValues htmlValues;
  IntegerValues integerValues;

  /// The name of the property.  This name should correspond to the name of the
  /// property that was registered for object definition in the schema.
  /// The maximum allowable length for this property is 256 characters.
  core.String name;
  ObjectValues objectValues;
  TextValues textValues;
  TimestampValues timestampValues;

  NamedProperty();

  NamedProperty.fromJson(core.Map _json) {
    if (_json.containsKey("booleanValue")) {
      booleanValue = _json["booleanValue"];
    }
    if (_json.containsKey("dateValues")) {
      dateValues = new DateValues.fromJson(_json["dateValues"]);
    }
    if (_json.containsKey("doubleValues")) {
      doubleValues = new DoubleValues.fromJson(_json["doubleValues"]);
    }
    if (_json.containsKey("enumValues")) {
      enumValues = new EnumValues.fromJson(_json["enumValues"]);
    }
    if (_json.containsKey("htmlValues")) {
      htmlValues = new HtmlValues.fromJson(_json["htmlValues"]);
    }
    if (_json.containsKey("integerValues")) {
      integerValues = new IntegerValues.fromJson(_json["integerValues"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("objectValues")) {
      objectValues = new ObjectValues.fromJson(_json["objectValues"]);
    }
    if (_json.containsKey("textValues")) {
      textValues = new TextValues.fromJson(_json["textValues"]);
    }
    if (_json.containsKey("timestampValues")) {
      timestampValues = new TimestampValues.fromJson(_json["timestampValues"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (booleanValue != null) {
      _json["booleanValue"] = booleanValue;
    }
    if (dateValues != null) {
      _json["dateValues"] = (dateValues).toJson();
    }
    if (doubleValues != null) {
      _json["doubleValues"] = (doubleValues).toJson();
    }
    if (enumValues != null) {
      _json["enumValues"] = (enumValues).toJson();
    }
    if (htmlValues != null) {
      _json["htmlValues"] = (htmlValues).toJson();
    }
    if (integerValues != null) {
      _json["integerValues"] = (integerValues).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (objectValues != null) {
      _json["objectValues"] = (objectValues).toJson();
    }
    if (textValues != null) {
      _json["textValues"] = (textValues).toJson();
    }
    if (timestampValues != null) {
      _json["timestampValues"] = (timestampValues).toJson();
    }
    return _json;
  }
}

/// The definition for an object within a data source.
class ObjectDefinition {
  /// Name for the object, which then defines its type. Item indexing requests
  /// should set the
  /// objectType field
  /// equal to this value. For example, if *name* is *Document*, then indexing
  /// requests for items of type Document should set
  /// objectType equal to
  /// *Document*. Each object definition must be uniquely named within a schema.
  /// The name must start with a letter and can only contain letters (A-Z, a-z)
  /// or numbers (0-9).
  /// The maximum length is 256 characters.
  core.String name;

  /// The optional object-specific options.
  ObjectOptions options;

  /// The property definitions for the object.
  /// The maximum number of elements is 1000.
  core.List<PropertyDefinition> propertyDefinitions;

  ObjectDefinition();

  ObjectDefinition.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("options")) {
      options = new ObjectOptions.fromJson(_json["options"]);
    }
    if (_json.containsKey("propertyDefinitions")) {
      propertyDefinitions = (_json["propertyDefinitions"] as core.List)
          .map<PropertyDefinition>(
              (value) => new PropertyDefinition.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (options != null) {
      _json["options"] = (options).toJson();
    }
    if (propertyDefinitions != null) {
      _json["propertyDefinitions"] =
          propertyDefinitions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The display options for an object.
class ObjectDisplayOptions {
  /// Defines the properties that will be displayed in the metalines of the
  /// search results. The property values will be displayed in the order given
  /// here. If a property holds multiple values, all of the values will be
  /// diplayed before the next properties. For this reason, it is a good
  /// practice
  /// to specify singular properties before repeated properties in this list.
  /// All
  /// of the properties must set
  /// is_returnable
  /// to true. The maximum number of metalines is 3.
  core.List<Metaline> metalines;

  /// The user friendly label to display in the search result to inidicate the
  /// type of the item. This is OPTIONAL; if not given, an object label will not
  /// be displayed on the context line of the search results. The maximum length
  /// is 32 characters.
  core.String objectDisplayLabel;

  ObjectDisplayOptions();

  ObjectDisplayOptions.fromJson(core.Map _json) {
    if (_json.containsKey("metalines")) {
      metalines = (_json["metalines"] as core.List)
          .map<Metaline>((value) => new Metaline.fromJson(value))
          .toList();
    }
    if (_json.containsKey("objectDisplayLabel")) {
      objectDisplayLabel = _json["objectDisplayLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metalines != null) {
      _json["metalines"] = metalines.map((value) => (value).toJson()).toList();
    }
    if (objectDisplayLabel != null) {
      _json["objectDisplayLabel"] = objectDisplayLabel;
    }
    return _json;
  }
}

/// The options for an object.
class ObjectOptions {
  /// Options that determine how the object is displayed in the Cloud Search
  /// results page.
  ObjectDisplayOptions displayOptions;

  /// The freshness options for an object.
  FreshnessOptions freshnessOptions;

  ObjectOptions();

  ObjectOptions.fromJson(core.Map _json) {
    if (_json.containsKey("displayOptions")) {
      displayOptions =
          new ObjectDisplayOptions.fromJson(_json["displayOptions"]);
    }
    if (_json.containsKey("freshnessOptions")) {
      freshnessOptions =
          new FreshnessOptions.fromJson(_json["freshnessOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayOptions != null) {
      _json["displayOptions"] = (displayOptions).toJson();
    }
    if (freshnessOptions != null) {
      _json["freshnessOptions"] = (freshnessOptions).toJson();
    }
    return _json;
  }
}

/// Options for object properties.
class ObjectPropertyOptions {
  /// The properties of the sub-object. These properties represent a nested
  /// object. For example, if this property represents a postal address, the
  /// subobjectProperties might be named *street*, *city*, and *state*.
  /// The maximum number of elements is 1000.
  core.List<PropertyDefinition> subobjectProperties;

  ObjectPropertyOptions();

  ObjectPropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("subobjectProperties")) {
      subobjectProperties = (_json["subobjectProperties"] as core.List)
          .map<PropertyDefinition>(
              (value) => new PropertyDefinition.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (subobjectProperties != null) {
      _json["subobjectProperties"] =
          subobjectProperties.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// List of object values.
class ObjectValues {
  core.List<StructuredDataObject> values;

  ObjectValues();

  ObjectValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<StructuredDataObject>(
              (value) => new StructuredDataObject.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
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
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// This field contains information about the person being suggested.
class PeopleSuggestion {
  /// Suggested person. All fields of the person object might not be populated.
  Person person;

  PeopleSuggestion();

  PeopleSuggestion.fromJson(core.Map _json) {
    if (_json.containsKey("person")) {
      person = new Person.fromJson(_json["person"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (person != null) {
      _json["person"] = (person).toJson();
    }
    return _json;
  }
}

/// Object to represent a person.
class Person {
  /// The person's email addresses
  core.List<EmailAddress> emailAddresses;

  /// The resource name of the person to provide information about.
  /// See <a href="https://developers.google.com/people/api/rest/v1/people/get">
  /// People.get</a> from Google People API.
  core.String name;

  /// Obfuscated ID of a person.
  core.String obfuscatedId;

  /// The person's name
  core.List<Name> personNames;

  /// A person's read-only photo. A picture shown next to the person's name to
  /// help others recognize the person in search results.
  core.List<Photo> photos;

  Person();

  Person.fromJson(core.Map _json) {
    if (_json.containsKey("emailAddresses")) {
      emailAddresses = (_json["emailAddresses"] as core.List)
          .map<EmailAddress>((value) => new EmailAddress.fromJson(value))
          .toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("obfuscatedId")) {
      obfuscatedId = _json["obfuscatedId"];
    }
    if (_json.containsKey("personNames")) {
      personNames = (_json["personNames"] as core.List)
          .map<Name>((value) => new Name.fromJson(value))
          .toList();
    }
    if (_json.containsKey("photos")) {
      photos = (_json["photos"] as core.List)
          .map<Photo>((value) => new Photo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (emailAddresses != null) {
      _json["emailAddresses"] =
          emailAddresses.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (obfuscatedId != null) {
      _json["obfuscatedId"] = obfuscatedId;
    }
    if (personNames != null) {
      _json["personNames"] =
          personNames.map((value) => (value).toJson()).toList();
    }
    if (photos != null) {
      _json["photos"] = photos.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A person's photo.
class Photo {
  /// The URL of the photo.
  core.String url;

  Photo();

  Photo.fromJson(core.Map _json) {
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

class PollItemsRequest {
  /// Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  core.String connectorName;

  /// Common debug options.
  DebugOptions debugOptions;

  /// Maximum number of items to return.
  /// <br />The maximum and the default value is 1000
  core.int limit;

  /// Queue name to fetch items from.  If unspecified, PollItems will
  /// fetch from 'default' queue.
  /// The maximum length is 100 characters.
  core.String queue;

  /// Limit the items polled to the ones with these statuses.
  core.List<core.String> statusCodes;

  PollItemsRequest();

  PollItemsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("connectorName")) {
      connectorName = _json["connectorName"];
    }
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("limit")) {
      limit = _json["limit"];
    }
    if (_json.containsKey("queue")) {
      queue = _json["queue"];
    }
    if (_json.containsKey("statusCodes")) {
      statusCodes = (_json["statusCodes"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (connectorName != null) {
      _json["connectorName"] = connectorName;
    }
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (limit != null) {
      _json["limit"] = limit;
    }
    if (queue != null) {
      _json["queue"] = queue;
    }
    if (statusCodes != null) {
      _json["statusCodes"] = statusCodes;
    }
    return _json;
  }
}

class PollItemsResponse {
  /// Set of items from the queue available for connector to process.
  /// <br />These items have the following subset of fields populated: <br />
  /// <br />version
  /// <br />metadata.hash
  /// <br />structured_data.hash
  /// <br />content.hash
  /// <br />payload
  /// <br />status
  /// <br />queue
  core.List<Item> items;

  PollItemsResponse();

  PollItemsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Item>((value) => new Item.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Reference to a user, group, or domain.
class Principal {
  /// This principal is a group identified using an external identity.
  /// The name field must specify the group resource name with this format:
  /// identitysources/{source_id}/groups/{ID}
  core.String groupResourceName;

  /// This principal is a GSuite user, group or domain.
  GSuitePrincipal gsuitePrincipal;

  /// This principal is a user identified using an external identity.
  /// The name field must specify the user resource name with this format:
  /// identitysources/{source_id}/users/{ID}
  core.String userResourceName;

  Principal();

  Principal.fromJson(core.Map _json) {
    if (_json.containsKey("groupResourceName")) {
      groupResourceName = _json["groupResourceName"];
    }
    if (_json.containsKey("gsuitePrincipal")) {
      gsuitePrincipal = new GSuitePrincipal.fromJson(_json["gsuitePrincipal"]);
    }
    if (_json.containsKey("userResourceName")) {
      userResourceName = _json["userResourceName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (groupResourceName != null) {
      _json["groupResourceName"] = groupResourceName;
    }
    if (gsuitePrincipal != null) {
      _json["gsuitePrincipal"] = (gsuitePrincipal).toJson();
    }
    if (userResourceName != null) {
      _json["userResourceName"] = userResourceName;
    }
    return _json;
  }
}

class ProcessingError {
  /// Error code indicating the nature of the error.
  /// Possible string values are:
  /// - "PROCESSING_ERROR_CODE_UNSPECIFIED" : Input only value.  Use this value
  /// in Items.
  /// - "MALFORMED_REQUEST" : Item's ACL, metadata, or content is malformed or
  /// in invalid state.
  /// FieldViolations contains more details on where the problem is.
  /// - "UNSUPPORTED_CONTENT_FORMAT" : Countent format is unsupported.
  /// - "INDIRECT_BROKEN_ACL" : Items with incomplete ACL information due to
  /// inheriting other
  /// items with broken ACL or having groups with unmapped descendants.
  /// - "ACL_CYCLE" : ACL inheritance graph formed a cycle.
  core.String code;

  /// Description of the error.
  core.String errorMessage;

  /// In case the item fields are invalid, this field contains the details
  /// about the validation errors.
  core.List<FieldViolation> fieldViolations;

  ProcessingError();

  ProcessingError.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("fieldViolations")) {
      fieldViolations = (_json["fieldViolations"] as core.List)
          .map<FieldViolation>((value) => new FieldViolation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (fieldViolations != null) {
      _json["fieldViolations"] =
          fieldViolations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// The definition of a property within an object.
class PropertyDefinition {
  BooleanPropertyOptions booleanPropertyOptions;
  DatePropertyOptions datePropertyOptions;

  /// Options that determine how the property is displayed in the Cloud Search
  /// results page if it is specified to be displayed in the object's
  /// display options
  /// .
  PropertyDisplayOptions displayOptions;
  DoublePropertyOptions doublePropertyOptions;
  EnumPropertyOptions enumPropertyOptions;
  HtmlPropertyOptions htmlPropertyOptions;
  IntegerPropertyOptions integerPropertyOptions;

  /// Indicates that the property can be used for generating facets. Cannot be
  /// true for properties whose type is object. IsReturnable must be true to set
  /// this option.
  /// Only supported for Boolean, Enum, and Text properties.
  core.bool isFacetable;

  /// Indicates that multiple values are allowed for the property. For example,
  /// a
  /// document only has one description but can have multiple comments. Cannot
  /// be
  /// true for properties whose type is a boolean.
  /// If set to false, properties that contain more than one value will cause
  /// the
  /// indexing request for that item to be rejected.
  core.bool isRepeatable;

  /// Indicates that the property identifies data that should be returned in
  /// search results via the Query API. If set to *true*, indicates that Query
  /// API users can use matching property fields in results. However, storing
  /// fields requires more space allocation and uses more bandwidth for search
  /// queries, which impacts performance over large datasets. Set to *true* here
  /// only if the field is needed for search results. Cannot be true for
  /// properties whose type is an object.
  core.bool isReturnable;

  /// Indicates that the property can be used for sorting. Cannot be true for
  /// properties that are repeatable. Cannot be true for properties whose type
  /// is object or user identifier. IsReturnable must be true to set this
  /// option.
  /// Only supported for Boolean, Date, Double, Integer, and Timestamp
  /// properties.
  core.bool isSortable;

  /// Indicates that users can perform wildcard search for this
  /// property. Only supported for Text properties. IsReturnable must be true to
  /// set this option. In a given datasource maximum of 5 properties can be
  /// marked as is_wildcard_searchable.
  ///
  /// Note: This is an alpha feature and is enabled for whitelisted users only.
  core.bool isWildcardSearchable;

  /// The name of the property. Item indexing requests sent to the Indexing API
  /// should set the property name
  /// equal to this value. For example, if name is *subject_line*, then indexing
  /// requests for document items with subject fields should set the
  /// name for that field equal to
  /// *subject_line*. Use the name as the identifier for the object property.
  /// Once registered as a property for an object, you cannot re-use this name
  /// for another property within that object.
  /// The name must start with a letter and can only contain letters (A-Z, a-z)
  /// or numbers (0-9).
  /// The maximum length is 256 characters.
  core.String name;
  ObjectPropertyOptions objectPropertyOptions;
  TextPropertyOptions textPropertyOptions;
  TimestampPropertyOptions timestampPropertyOptions;

  PropertyDefinition();

  PropertyDefinition.fromJson(core.Map _json) {
    if (_json.containsKey("booleanPropertyOptions")) {
      booleanPropertyOptions =
          new BooleanPropertyOptions.fromJson(_json["booleanPropertyOptions"]);
    }
    if (_json.containsKey("datePropertyOptions")) {
      datePropertyOptions =
          new DatePropertyOptions.fromJson(_json["datePropertyOptions"]);
    }
    if (_json.containsKey("displayOptions")) {
      displayOptions =
          new PropertyDisplayOptions.fromJson(_json["displayOptions"]);
    }
    if (_json.containsKey("doublePropertyOptions")) {
      doublePropertyOptions =
          new DoublePropertyOptions.fromJson(_json["doublePropertyOptions"]);
    }
    if (_json.containsKey("enumPropertyOptions")) {
      enumPropertyOptions =
          new EnumPropertyOptions.fromJson(_json["enumPropertyOptions"]);
    }
    if (_json.containsKey("htmlPropertyOptions")) {
      htmlPropertyOptions =
          new HtmlPropertyOptions.fromJson(_json["htmlPropertyOptions"]);
    }
    if (_json.containsKey("integerPropertyOptions")) {
      integerPropertyOptions =
          new IntegerPropertyOptions.fromJson(_json["integerPropertyOptions"]);
    }
    if (_json.containsKey("isFacetable")) {
      isFacetable = _json["isFacetable"];
    }
    if (_json.containsKey("isRepeatable")) {
      isRepeatable = _json["isRepeatable"];
    }
    if (_json.containsKey("isReturnable")) {
      isReturnable = _json["isReturnable"];
    }
    if (_json.containsKey("isSortable")) {
      isSortable = _json["isSortable"];
    }
    if (_json.containsKey("isWildcardSearchable")) {
      isWildcardSearchable = _json["isWildcardSearchable"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("objectPropertyOptions")) {
      objectPropertyOptions =
          new ObjectPropertyOptions.fromJson(_json["objectPropertyOptions"]);
    }
    if (_json.containsKey("textPropertyOptions")) {
      textPropertyOptions =
          new TextPropertyOptions.fromJson(_json["textPropertyOptions"]);
    }
    if (_json.containsKey("timestampPropertyOptions")) {
      timestampPropertyOptions = new TimestampPropertyOptions.fromJson(
          _json["timestampPropertyOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (booleanPropertyOptions != null) {
      _json["booleanPropertyOptions"] = (booleanPropertyOptions).toJson();
    }
    if (datePropertyOptions != null) {
      _json["datePropertyOptions"] = (datePropertyOptions).toJson();
    }
    if (displayOptions != null) {
      _json["displayOptions"] = (displayOptions).toJson();
    }
    if (doublePropertyOptions != null) {
      _json["doublePropertyOptions"] = (doublePropertyOptions).toJson();
    }
    if (enumPropertyOptions != null) {
      _json["enumPropertyOptions"] = (enumPropertyOptions).toJson();
    }
    if (htmlPropertyOptions != null) {
      _json["htmlPropertyOptions"] = (htmlPropertyOptions).toJson();
    }
    if (integerPropertyOptions != null) {
      _json["integerPropertyOptions"] = (integerPropertyOptions).toJson();
    }
    if (isFacetable != null) {
      _json["isFacetable"] = isFacetable;
    }
    if (isRepeatable != null) {
      _json["isRepeatable"] = isRepeatable;
    }
    if (isReturnable != null) {
      _json["isReturnable"] = isReturnable;
    }
    if (isSortable != null) {
      _json["isSortable"] = isSortable;
    }
    if (isWildcardSearchable != null) {
      _json["isWildcardSearchable"] = isWildcardSearchable;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (objectPropertyOptions != null) {
      _json["objectPropertyOptions"] = (objectPropertyOptions).toJson();
    }
    if (textPropertyOptions != null) {
      _json["textPropertyOptions"] = (textPropertyOptions).toJson();
    }
    if (timestampPropertyOptions != null) {
      _json["timestampPropertyOptions"] = (timestampPropertyOptions).toJson();
    }
    return _json;
  }
}

/// The display options for a property.
class PropertyDisplayOptions {
  /// The user friendly label for the property that will be used if the property
  /// is specified to be displayed in ObjectDisplayOptions. If given, the
  /// display
  /// label will be shown in front of the property values when the property is
  /// part of the object display options. For example, if the property value is
  /// '1', the value by itself may not be useful context for the user. If the
  /// display name given was 'priority', then the user will see 'priority : 1'
  /// in
  /// the search results which provides clear conext to search users. This is
  /// OPTIONAL; if not given, only the property values will be displayed.
  /// The maximum length is 32 characters.
  core.String displayLabel;

  PropertyDisplayOptions();

  PropertyDisplayOptions.fromJson(core.Map _json) {
    if (_json.containsKey("displayLabel")) {
      displayLabel = _json["displayLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayLabel != null) {
      _json["displayLabel"] = displayLabel;
    }
    return _json;
  }
}

/// Represents an item to be pushed to the indexing queue.
class PushItem {
  /// Content hash of the item according to the repository. If specified, this
  /// is
  /// used to determine how to modify this
  /// item's status. Setting this field and the
  /// type field results in argument
  /// error.
  /// The maximum length is 2048 characters.
  core.String contentHash;

  /// Metadata hash of the item according to the repository. If specified, this
  /// is used to determine how to modify this
  /// item's status. Setting this field and the
  /// type field results in argument
  /// error.
  /// The maximum length is 2048 characters.
  core.String metadataHash;

  /// Provides additional document state information for the connector,
  /// such as an alternate repository ID and other metadata.
  /// The maximum length is 8192 bytes.
  core.String payload;
  core.List<core.int> get payloadAsBytes {
    return convert.base64.decode(payload);
  }

  set payloadAsBytes(core.List<core.int> _bytes) {
    payload =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Queue to which this item belongs to.  The <code>default</code> queue is
  /// chosen if this field is not specified. The maximum length is
  /// 512 characters.
  core.String queue;

  /// Populate this field to store Connector or repository error details.
  /// This information is displayed in the Admin Console.
  /// This field may only be populated when the
  /// Type is
  /// REPOSITORY_ERROR.
  RepositoryError repositoryError;

  /// Structured data hash of the item according to the repository. If
  /// specified,
  /// this is used to determine how to modify this item's status. Setting this
  /// field and the type field
  /// results in argument error.
  /// The maximum length is 2048 characters.
  core.String structuredDataHash;

  /// The type of the push operation that defines the push behavior.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default UNSPECIFIED.  Specifies that the push operation
  /// should not modify
  /// ItemStatus
  /// - "MODIFIED" : Indicates that the repository document has been modified or
  /// updated since
  /// the previous
  /// update
  /// call. This changes status to
  /// MODIFIED state for
  /// an existing item. If this is called on a non existing item, the status is
  /// changed to
  /// NEW_ITEM.
  /// - "NOT_MODIFIED" : Item in the repository has not been modified since the
  /// last update
  /// call.  This push operation will set status to
  /// ACCEPTED state.
  /// - "REPOSITORY_ERROR" : Connector is facing a repository error regarding
  /// this item.  Change
  /// status to
  /// REPOSITORY_ERROR
  /// state. Item is unreserved and rescheduled at a future time determined by
  /// exponential backoff.
  /// - "REQUEUE" : Call push with REQUEUE only for items that have been
  /// reserved.
  /// This action unreserves the item and resets its available time to the
  /// wall clock time.
  core.String type;

  PushItem();

  PushItem.fromJson(core.Map _json) {
    if (_json.containsKey("contentHash")) {
      contentHash = _json["contentHash"];
    }
    if (_json.containsKey("metadataHash")) {
      metadataHash = _json["metadataHash"];
    }
    if (_json.containsKey("payload")) {
      payload = _json["payload"];
    }
    if (_json.containsKey("queue")) {
      queue = _json["queue"];
    }
    if (_json.containsKey("repositoryError")) {
      repositoryError = new RepositoryError.fromJson(_json["repositoryError"]);
    }
    if (_json.containsKey("structuredDataHash")) {
      structuredDataHash = _json["structuredDataHash"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (contentHash != null) {
      _json["contentHash"] = contentHash;
    }
    if (metadataHash != null) {
      _json["metadataHash"] = metadataHash;
    }
    if (payload != null) {
      _json["payload"] = payload;
    }
    if (queue != null) {
      _json["queue"] = queue;
    }
    if (repositoryError != null) {
      _json["repositoryError"] = (repositoryError).toJson();
    }
    if (structuredDataHash != null) {
      _json["structuredDataHash"] = structuredDataHash;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

class PushItemRequest {
  /// Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  core.String connectorName;

  /// Common debug options.
  DebugOptions debugOptions;

  /// Item to push onto the queue.
  PushItem item;

  PushItemRequest();

  PushItemRequest.fromJson(core.Map _json) {
    if (_json.containsKey("connectorName")) {
      connectorName = _json["connectorName"];
    }
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("item")) {
      item = new PushItem.fromJson(_json["item"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (connectorName != null) {
      _json["connectorName"] = connectorName;
    }
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (item != null) {
      _json["item"] = (item).toJson();
    }
    return _json;
  }
}

class QueryInterpretation {
  ///
  /// Possible string values are:
  /// - "NONE" : No natural language interpretation or the natural language
  /// interpretation
  /// is not used to fetch the search results.
  /// - "BLEND" : The natural language results is mixed with results from
  /// original query.
  /// - "REPLACE" : The results only contain natural language results.
  core.String interpretationType;

  /// The interpretation of the query used in search. For example, query "email
  /// from john" will be interpreted as "from:john source:mail"
  core.String interpretedQuery;

  QueryInterpretation();

  QueryInterpretation.fromJson(core.Map _json) {
    if (_json.containsKey("interpretationType")) {
      interpretationType = _json["interpretationType"];
    }
    if (_json.containsKey("interpretedQuery")) {
      interpretedQuery = _json["interpretedQuery"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (interpretationType != null) {
      _json["interpretationType"] = interpretationType;
    }
    if (interpretedQuery != null) {
      _json["interpretedQuery"] = interpretedQuery;
    }
    return _json;
  }
}

/// Options to interpret user query.
class QueryInterpretationOptions {
  /// Flag to disable natural language (NL) interpretation of queries. Default
  /// is
  /// false, Set to true to disable natural language interpretation. NL
  /// interpretation only applies to predefined datasources.
  core.bool disableNlInterpretation;

  QueryInterpretationOptions();

  QueryInterpretationOptions.fromJson(core.Map _json) {
    if (_json.containsKey("disableNlInterpretation")) {
      disableNlInterpretation = _json["disableNlInterpretation"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableNlInterpretation != null) {
      _json["disableNlInterpretation"] = disableNlInterpretation;
    }
    return _json;
  }
}

/// Information relevant only to a query entry.
class QueryItem {
  /// True if the text was generated by means other than a previous user search.
  core.bool isSynthetic;

  QueryItem();

  QueryItem.fromJson(core.Map _json) {
    if (_json.containsKey("isSynthetic")) {
      isSynthetic = _json["isSynthetic"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (isSynthetic != null) {
      _json["isSynthetic"] = isSynthetic;
    }
    return _json;
  }
}

/// The definition of a operator that can be used in a Search/Suggest request.
class QueryOperator {
  /// Display name of the operator
  core.String displayName;

  /// Potential list of values for the opeatror field. This field is only filled
  /// when we can safely enumerate all the possible values of this operator.
  core.List<core.String> enumValues;

  /// Indicates the operator name that can be used to  isolate the property
  /// using
  /// the greater-than operator.
  core.String greaterThanOperatorName;

  /// Can this operator be used to get facets.
  core.bool isFacetable;

  /// Indicates if multiple values can be set for this property.
  core.bool isRepeatable;

  /// Will the property associated with this facet be returned as part of search
  /// results.
  core.bool isReturnable;

  /// Can this operator be used to sort results.
  core.bool isSortable;

  /// Can get suggestions for this field.
  core.bool isSuggestable;

  /// Indicates the operator name that can be used to  isolate the property
  /// using
  /// the less-than operator.
  core.String lessThanOperatorName;

  /// The name of the operator.
  core.String operatorName;

  /// Type of the operator.
  /// Possible string values are:
  /// - "UNKNOWN" : Invalid value.
  /// - "INTEGER"
  /// - "DOUBLE"
  /// - "TIMESTAMP"
  /// - "BOOLEAN"
  /// - "ENUM"
  /// - "DATE"
  /// - "TEXT"
  /// - "HTML"
  core.String type;

  QueryOperator();

  QueryOperator.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("enumValues")) {
      enumValues = (_json["enumValues"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("greaterThanOperatorName")) {
      greaterThanOperatorName = _json["greaterThanOperatorName"];
    }
    if (_json.containsKey("isFacetable")) {
      isFacetable = _json["isFacetable"];
    }
    if (_json.containsKey("isRepeatable")) {
      isRepeatable = _json["isRepeatable"];
    }
    if (_json.containsKey("isReturnable")) {
      isReturnable = _json["isReturnable"];
    }
    if (_json.containsKey("isSortable")) {
      isSortable = _json["isSortable"];
    }
    if (_json.containsKey("isSuggestable")) {
      isSuggestable = _json["isSuggestable"];
    }
    if (_json.containsKey("lessThanOperatorName")) {
      lessThanOperatorName = _json["lessThanOperatorName"];
    }
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (enumValues != null) {
      _json["enumValues"] = enumValues;
    }
    if (greaterThanOperatorName != null) {
      _json["greaterThanOperatorName"] = greaterThanOperatorName;
    }
    if (isFacetable != null) {
      _json["isFacetable"] = isFacetable;
    }
    if (isRepeatable != null) {
      _json["isRepeatable"] = isRepeatable;
    }
    if (isReturnable != null) {
      _json["isReturnable"] = isReturnable;
    }
    if (isSortable != null) {
      _json["isSortable"] = isSortable;
    }
    if (isSuggestable != null) {
      _json["isSuggestable"] = isSuggestable;
    }
    if (lessThanOperatorName != null) {
      _json["lessThanOperatorName"] = lessThanOperatorName;
    }
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// List of sources that the user can search using the query API.
class QuerySource {
  /// Display name of the data source.
  core.String displayName;

  /// List of all operators applicable for this source.
  core.List<QueryOperator> operators;

  /// A short name or alias for the source.  This value can be used with the
  /// 'source' operator.
  core.String shortName;

  /// Name of the source
  Source source;

  QuerySource();

  QuerySource.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("operators")) {
      operators = (_json["operators"] as core.List)
          .map<QueryOperator>((value) => new QueryOperator.fromJson(value))
          .toList();
    }
    if (_json.containsKey("shortName")) {
      shortName = _json["shortName"];
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (operators != null) {
      _json["operators"] = operators.map((value) => (value).toJson()).toList();
    }
    if (shortName != null) {
      _json["shortName"] = shortName;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// This field does not contain anything as of now and is just used as an
/// indicator that the suggest result was a phrase completion.
class QuerySuggestion {
  QuerySuggestion();

  QuerySuggestion.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// Errors when the connector is communicating to the source repository.
class RepositoryError {
  /// Message that describes the error. The maximum allowable length
  /// of the message is 8192 characters.
  core.String errorMessage;

  /// Error codes.  Matches the definition of HTTP status codes.
  core.int httpStatusCode;

  /// Type of error.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown error.
  /// - "NETWORK_ERROR" : Unknown or unreachable host.
  /// - "DNS_ERROR" : DNS problem, such as the DNS server is not responding.
  /// - "CONNECTION_ERROR" : Cannot connect to the repository server.
  /// - "AUTHENTICATION_ERROR" : Failed authentication due to incorrect
  /// credentials.
  /// - "AUTHORIZATION_ERROR" : Service account is not authorized for the
  /// repository.
  /// - "SERVER_ERROR" : Repository server error.
  /// - "QUOTA_EXCEEDED" : Quota exceeded.
  /// - "SERVICE_UNAVAILABLE" : Server temporarily unavailable.
  /// - "CLIENT_ERROR" : Client-related error, such as an invalid request from
  /// the connector to
  /// the repository server.
  core.String type;

  RepositoryError();

  RepositoryError.fromJson(core.Map _json) {
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("httpStatusCode")) {
      httpStatusCode = _json["httpStatusCode"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (httpStatusCode != null) {
      _json["httpStatusCode"] = httpStatusCode;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Shared request options for all RPC methods.
class RequestOptions {
  /// Debug options of the request
  DebugOptions debugOptions;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  /// For translations.
  ///
  /// When specified, the documents in search results are biased towards the
  /// specified language.
  /// Suggest API does not use this parameter. It autocompletes only based on
  /// characters in the query.
  core.String languageCode;

  /// Id of the application created using SearchApplicationsService.
  core.String searchApplicationId;

  /// Current user's time zone id, such as "America/Los_Angeles" or
  /// "Australia/Sydney". These IDs are defined by
  /// [Unicode Common Locale Data Repository (CLDR)](http://cldr.unicode.org/)
  /// project, and currently available in the file
  /// [timezone.xml](http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml)
  core.String timeZone;

  RequestOptions();

  RequestOptions.fromJson(core.Map _json) {
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("searchApplicationId")) {
      searchApplicationId = _json["searchApplicationId"];
    }
    if (_json.containsKey("timeZone")) {
      timeZone = _json["timeZone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (searchApplicationId != null) {
      _json["searchApplicationId"] = searchApplicationId;
    }
    if (timeZone != null) {
      _json["timeZone"] = timeZone;
    }
    return _json;
  }
}

class ResetSearchApplicationRequest {
  /// Common debug options.
  DebugOptions debugOptions;

  ResetSearchApplicationRequest();

  ResetSearchApplicationRequest.fromJson(core.Map _json) {
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    return _json;
  }
}

/// Debugging information about the response.
class ResponseDebugInfo {
  /// General debug info formatted for display.
  core.String formattedDebugInfo;

  ResponseDebugInfo();

  ResponseDebugInfo.fromJson(core.Map _json) {
    if (_json.containsKey("formattedDebugInfo")) {
      formattedDebugInfo = _json["formattedDebugInfo"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (formattedDebugInfo != null) {
      _json["formattedDebugInfo"] = formattedDebugInfo;
    }
    return _json;
  }
}

/// Information relevant only to a restrict entry.
/// NextId: 12
class RestrictItem {
  /// LINT.ThenChange(//depot/google3/java/com/google/apps/search/quality/itemsuggest/utils/SubtypeRerankingUtils.java)
  DriveFollowUpRestrict driveFollowUpRestrict;
  DriveLocationRestrict driveLocationRestrict;

  /// LINT.IfChange
  /// Drive Types.
  DriveMimeTypeRestrict driveMimeTypeRestrict;
  DriveTimeSpanRestrict driveTimeSpanRestrict;
  GmailActionRestrict gmailActionRestrict;
  GmailAttachmentRestrict gmailAttachmentRestrict;

  /// Gmail Types.
  GmailFolderRestrict gmailFolderRestrict;
  GmailIntelligentRestrict gmailIntelligentRestrict;
  GmailTimeRestrict gmailTimeRestrict;

  /// The search restrict (e.g. "after:2017-09-11 before:2017-09-12").
  core.String searchOperator;

  RestrictItem();

  RestrictItem.fromJson(core.Map _json) {
    if (_json.containsKey("driveFollowUpRestrict")) {
      driveFollowUpRestrict =
          new DriveFollowUpRestrict.fromJson(_json["driveFollowUpRestrict"]);
    }
    if (_json.containsKey("driveLocationRestrict")) {
      driveLocationRestrict =
          new DriveLocationRestrict.fromJson(_json["driveLocationRestrict"]);
    }
    if (_json.containsKey("driveMimeTypeRestrict")) {
      driveMimeTypeRestrict =
          new DriveMimeTypeRestrict.fromJson(_json["driveMimeTypeRestrict"]);
    }
    if (_json.containsKey("driveTimeSpanRestrict")) {
      driveTimeSpanRestrict =
          new DriveTimeSpanRestrict.fromJson(_json["driveTimeSpanRestrict"]);
    }
    if (_json.containsKey("gmailActionRestrict")) {
      gmailActionRestrict =
          new GmailActionRestrict.fromJson(_json["gmailActionRestrict"]);
    }
    if (_json.containsKey("gmailAttachmentRestrict")) {
      gmailAttachmentRestrict = new GmailAttachmentRestrict.fromJson(
          _json["gmailAttachmentRestrict"]);
    }
    if (_json.containsKey("gmailFolderRestrict")) {
      gmailFolderRestrict =
          new GmailFolderRestrict.fromJson(_json["gmailFolderRestrict"]);
    }
    if (_json.containsKey("gmailIntelligentRestrict")) {
      gmailIntelligentRestrict = new GmailIntelligentRestrict.fromJson(
          _json["gmailIntelligentRestrict"]);
    }
    if (_json.containsKey("gmailTimeRestrict")) {
      gmailTimeRestrict =
          new GmailTimeRestrict.fromJson(_json["gmailTimeRestrict"]);
    }
    if (_json.containsKey("searchOperator")) {
      searchOperator = _json["searchOperator"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (driveFollowUpRestrict != null) {
      _json["driveFollowUpRestrict"] = (driveFollowUpRestrict).toJson();
    }
    if (driveLocationRestrict != null) {
      _json["driveLocationRestrict"] = (driveLocationRestrict).toJson();
    }
    if (driveMimeTypeRestrict != null) {
      _json["driveMimeTypeRestrict"] = (driveMimeTypeRestrict).toJson();
    }
    if (driveTimeSpanRestrict != null) {
      _json["driveTimeSpanRestrict"] = (driveTimeSpanRestrict).toJson();
    }
    if (gmailActionRestrict != null) {
      _json["gmailActionRestrict"] = (gmailActionRestrict).toJson();
    }
    if (gmailAttachmentRestrict != null) {
      _json["gmailAttachmentRestrict"] = (gmailAttachmentRestrict).toJson();
    }
    if (gmailFolderRestrict != null) {
      _json["gmailFolderRestrict"] = (gmailFolderRestrict).toJson();
    }
    if (gmailIntelligentRestrict != null) {
      _json["gmailIntelligentRestrict"] = (gmailIntelligentRestrict).toJson();
    }
    if (gmailTimeRestrict != null) {
      _json["gmailTimeRestrict"] = (gmailTimeRestrict).toJson();
    }
    if (searchOperator != null) {
      _json["searchOperator"] = searchOperator;
    }
    return _json;
  }
}

/// Result count information
class ResultCounts {
  /// Result count information for each source with results.
  core.List<SourceResultCount> sourceResultCounts;

  ResultCounts();

  ResultCounts.fromJson(core.Map _json) {
    if (_json.containsKey("sourceResultCounts")) {
      sourceResultCounts = (_json["sourceResultCounts"] as core.List)
          .map<SourceResultCount>(
              (value) => new SourceResultCount.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sourceResultCounts != null) {
      _json["sourceResultCounts"] =
          sourceResultCounts.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Debugging information about the result.
class ResultDebugInfo {
  /// General debug info formatted for display.
  core.String formattedDebugInfo;

  ResultDebugInfo();

  ResultDebugInfo.fromJson(core.Map _json) {
    if (_json.containsKey("formattedDebugInfo")) {
      formattedDebugInfo = _json["formattedDebugInfo"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (formattedDebugInfo != null) {
      _json["formattedDebugInfo"] = formattedDebugInfo;
    }
    return _json;
  }
}

/// Display Fields for Search Results
class ResultDisplayField {
  /// The display label for the property.
  core.String label;

  /// The operator name of the property.
  core.String operatorName;

  /// The name value pair for the property.
  NamedProperty property;

  ResultDisplayField();

  ResultDisplayField.fromJson(core.Map _json) {
    if (_json.containsKey("label")) {
      label = _json["label"];
    }
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
    if (_json.containsKey("property")) {
      property = new NamedProperty.fromJson(_json["property"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (label != null) {
      _json["label"] = label;
    }
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    if (property != null) {
      _json["property"] = (property).toJson();
    }
    return _json;
  }
}

/// The collection of fields that make up a displayed line
class ResultDisplayLine {
  core.List<ResultDisplayField> fields;

  ResultDisplayLine();

  ResultDisplayLine.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = (_json["fields"] as core.List)
          .map<ResultDisplayField>(
              (value) => new ResultDisplayField.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class ResultDisplayMetadata {
  /// The metalines content to be displayed with the result.
  core.List<ResultDisplayLine> metalines;

  /// The display label for the object.
  core.String objectTypeLabel;

  ResultDisplayMetadata();

  ResultDisplayMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("metalines")) {
      metalines = (_json["metalines"] as core.List)
          .map<ResultDisplayLine>(
              (value) => new ResultDisplayLine.fromJson(value))
          .toList();
    }
    if (_json.containsKey("objectTypeLabel")) {
      objectTypeLabel = _json["objectTypeLabel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (metalines != null) {
      _json["metalines"] = metalines.map((value) => (value).toJson()).toList();
    }
    if (objectTypeLabel != null) {
      _json["objectTypeLabel"] = objectTypeLabel;
    }
    return _json;
  }
}

class RetrievalImportance {
  /// Indicates the ranking importance given to property when it is matched
  /// during retrieval. Once set, the token importance of a property cannot be
  /// changed.
  /// Possible string values are:
  /// - "DEFAULT" : Treat the match like a body text match.
  /// - "HIGHEST" : Treat the match like a match against title of the item.
  /// - "HIGH" : Treat the match with higher importance than body text.
  /// - "LOW" : Treat the match with lower importance than body text.
  /// - "NONE" : Do not match against this field during retrieval. The property
  /// can still
  /// be used for operator matching, faceting, and suggest if
  /// desired.
  core.String importance;

  RetrievalImportance();

  RetrievalImportance.fromJson(core.Map _json) {
    if (_json.containsKey("importance")) {
      importance = _json["importance"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (importance != null) {
      _json["importance"] = importance;
    }
    return _json;
  }
}

/// The schema definition for a data source.
class Schema {
  /// The list of top-level objects for the data source.
  /// The maximum number of elements is 10.
  core.List<ObjectDefinition> objectDefinitions;

  /// IDs of the Long Running Operations (LROs) currently running for this
  /// schema. After modifying the schema, wait for operations to complete
  /// before indexing additional content.
  core.List<core.String> operationIds;

  Schema();

  Schema.fromJson(core.Map _json) {
    if (_json.containsKey("objectDefinitions")) {
      objectDefinitions = (_json["objectDefinitions"] as core.List)
          .map<ObjectDefinition>(
              (value) => new ObjectDefinition.fromJson(value))
          .toList();
    }
    if (_json.containsKey("operationIds")) {
      operationIds = (_json["operationIds"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (objectDefinitions != null) {
      _json["objectDefinitions"] =
          objectDefinitions.map((value) => (value).toJson()).toList();
    }
    if (operationIds != null) {
      _json["operationIds"] = operationIds;
    }
    return _json;
  }
}

/// Scoring configurations for a source while processing a
/// Search or
/// Suggest request.
class ScoringConfig {
  /// Whether to use freshness as a ranking signal. By default, freshness is
  /// used
  /// as a ranking signal. Note that this setting is not available in the Admin
  /// UI.
  core.bool disableFreshness;

  /// Whether to personalize the results. By default, personal signals will
  /// be used to boost results.
  core.bool disablePersonalization;

  ScoringConfig();

  ScoringConfig.fromJson(core.Map _json) {
    if (_json.containsKey("disableFreshness")) {
      disableFreshness = _json["disableFreshness"];
    }
    if (_json.containsKey("disablePersonalization")) {
      disablePersonalization = _json["disablePersonalization"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (disableFreshness != null) {
      _json["disableFreshness"] = disableFreshness;
    }
    if (disablePersonalization != null) {
      _json["disablePersonalization"] = disablePersonalization;
    }
    return _json;
  }
}

/// SearchApplication
class SearchApplication {
  /// Retrictions applied to the configurations.
  /// The maximum number of elements is 10.
  core.List<DataSourceRestriction> dataSourceRestrictions;

  /// The default fields for returning facet results.
  /// The sources specified here also have been included in
  /// data_source_restrictions
  /// above.
  core.List<FacetOptions> defaultFacetOptions;

  /// The default options for sorting the search results
  SortOptions defaultSortOptions;

  /// Display name of the Search Application.
  /// The maximum length is 300 characters.
  core.String displayName;

  /// Name of the Search Application.
  /// <br />Format: searchapplications/{application_id}.
  core.String name;

  /// IDs of the Long Running Operations (LROs) currently running for this
  /// schema. Output only field.
  core.List<core.String> operationIds;

  /// Configuration for ranking results.
  ScoringConfig scoringConfig;

  /// Configuration for a sources specified in data_source_restrictions.
  core.List<SourceConfig> sourceConfig;

  SearchApplication();

  SearchApplication.fromJson(core.Map _json) {
    if (_json.containsKey("dataSourceRestrictions")) {
      dataSourceRestrictions = (_json["dataSourceRestrictions"] as core.List)
          .map<DataSourceRestriction>(
              (value) => new DataSourceRestriction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("defaultFacetOptions")) {
      defaultFacetOptions = (_json["defaultFacetOptions"] as core.List)
          .map<FacetOptions>((value) => new FacetOptions.fromJson(value))
          .toList();
    }
    if (_json.containsKey("defaultSortOptions")) {
      defaultSortOptions =
          new SortOptions.fromJson(_json["defaultSortOptions"]);
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationIds")) {
      operationIds = (_json["operationIds"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("scoringConfig")) {
      scoringConfig = new ScoringConfig.fromJson(_json["scoringConfig"]);
    }
    if (_json.containsKey("sourceConfig")) {
      sourceConfig = (_json["sourceConfig"] as core.List)
          .map<SourceConfig>((value) => new SourceConfig.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataSourceRestrictions != null) {
      _json["dataSourceRestrictions"] =
          dataSourceRestrictions.map((value) => (value).toJson()).toList();
    }
    if (defaultFacetOptions != null) {
      _json["defaultFacetOptions"] =
          defaultFacetOptions.map((value) => (value).toJson()).toList();
    }
    if (defaultSortOptions != null) {
      _json["defaultSortOptions"] = (defaultSortOptions).toJson();
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operationIds != null) {
      _json["operationIds"] = operationIds;
    }
    if (scoringConfig != null) {
      _json["scoringConfig"] = (scoringConfig).toJson();
    }
    if (sourceConfig != null) {
      _json["sourceConfig"] =
          sourceConfig.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

class SearchItemsByViewUrlRequest {
  /// Common debug options.
  DebugOptions debugOptions;

  /// The next_page_token value returned from a previous request, if any.
  core.String pageToken;

  /// Specify the full view URL to find the corresponding item.
  /// The maximum length is 2048 characters.
  core.String viewUrl;

  SearchItemsByViewUrlRequest();

  SearchItemsByViewUrlRequest.fromJson(core.Map _json) {
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("viewUrl")) {
      viewUrl = _json["viewUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (viewUrl != null) {
      _json["viewUrl"] = viewUrl;
    }
    return _json;
  }
}

class SearchItemsByViewUrlResponse {
  core.List<Item> items;

  /// Token to retrieve the next page of results, or empty if there are no
  /// more results in the list.
  core.String nextPageToken;

  SearchItemsByViewUrlResponse();

  SearchItemsByViewUrlResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Item>((value) => new Item.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Additional search quality metadata of the item.
class SearchQualityMetadata {
  /// An indication of the quality of the item, used to influence search
  /// quality.
  /// Value should be between 0.0 (lowest quality) and 1.0 (highest quality).
  /// The
  /// default value is 0.0.
  core.double quality;

  SearchQualityMetadata();

  SearchQualityMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("quality")) {
      quality = _json["quality"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (quality != null) {
      _json["quality"] = quality;
    }
    return _json;
  }
}

/// The search API request.
class SearchRequest {
  /// The sources to use for querying. If not specified, all data sources
  /// from the current search application are used.
  core.List<DataSourceRestriction> dataSourceRestrictions;
  core.List<FacetOptions> facetOptions;

  /// Maximum number of search results to return in one page.
  /// Valid values are between 1 and 100, inclusive.
  /// Default value is 10.
  core.int pageSize;

  /// The raw query string.
  /// See supported search operators in the [Cloud search
  /// Cheat
  /// Sheet](https://gsuite.google.com/learning-center/products/cloudsearch/cheat-sheet/)
  core.String query;

  /// Options to interpret the user query.
  QueryInterpretationOptions queryInterpretationOptions;

  /// Request options, such as the search application and user timezone.
  RequestOptions requestOptions;

  /// The options for sorting the search results
  SortOptions sortOptions;

  /// Starting index of the results.
  core.int start;

  SearchRequest();

  SearchRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataSourceRestrictions")) {
      dataSourceRestrictions = (_json["dataSourceRestrictions"] as core.List)
          .map<DataSourceRestriction>(
              (value) => new DataSourceRestriction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("facetOptions")) {
      facetOptions = (_json["facetOptions"] as core.List)
          .map<FacetOptions>((value) => new FacetOptions.fromJson(value))
          .toList();
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
    if (_json.containsKey("queryInterpretationOptions")) {
      queryInterpretationOptions = new QueryInterpretationOptions.fromJson(
          _json["queryInterpretationOptions"]);
    }
    if (_json.containsKey("requestOptions")) {
      requestOptions = new RequestOptions.fromJson(_json["requestOptions"]);
    }
    if (_json.containsKey("sortOptions")) {
      sortOptions = new SortOptions.fromJson(_json["sortOptions"]);
    }
    if (_json.containsKey("start")) {
      start = _json["start"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataSourceRestrictions != null) {
      _json["dataSourceRestrictions"] =
          dataSourceRestrictions.map((value) => (value).toJson()).toList();
    }
    if (facetOptions != null) {
      _json["facetOptions"] =
          facetOptions.map((value) => (value).toJson()).toList();
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (query != null) {
      _json["query"] = query;
    }
    if (queryInterpretationOptions != null) {
      _json["queryInterpretationOptions"] =
          (queryInterpretationOptions).toJson();
    }
    if (requestOptions != null) {
      _json["requestOptions"] = (requestOptions).toJson();
    }
    if (sortOptions != null) {
      _json["sortOptions"] = (sortOptions).toJson();
    }
    if (start != null) {
      _json["start"] = start;
    }
    return _json;
  }
}

/// The search API response.
class SearchResponse {
  /// Debugging information about the response.
  ResponseDebugInfo debugInfo;

  /// Error information about the response.
  ErrorInfo errorInfo;

  /// Repeated facet results.
  core.List<FacetResult> facetResults;

  /// Whether there are more search results matching the query.
  core.bool hasMoreResults;

  /// Query interpretation result for user query. Empty if query interpretation
  /// is disabled.
  QueryInterpretation queryInterpretation;

  /// The estimated result count for this query.
  core.String resultCountEstimate;

  /// The exact result count for this query.
  core.String resultCountExact;

  /// Expanded result count information.
  ResultCounts resultCounts;

  /// Results from a search query.
  core.List<SearchResult> results;

  /// Suggested spelling for the query.
  core.List<SpellResult> spellResults;

  /// Structured results for the user query. These results are not counted
  /// against the page_size.
  core.List<StructuredResult> structuredResults;

  SearchResponse();

  SearchResponse.fromJson(core.Map _json) {
    if (_json.containsKey("debugInfo")) {
      debugInfo = new ResponseDebugInfo.fromJson(_json["debugInfo"]);
    }
    if (_json.containsKey("errorInfo")) {
      errorInfo = new ErrorInfo.fromJson(_json["errorInfo"]);
    }
    if (_json.containsKey("facetResults")) {
      facetResults = (_json["facetResults"] as core.List)
          .map<FacetResult>((value) => new FacetResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("hasMoreResults")) {
      hasMoreResults = _json["hasMoreResults"];
    }
    if (_json.containsKey("queryInterpretation")) {
      queryInterpretation =
          new QueryInterpretation.fromJson(_json["queryInterpretation"]);
    }
    if (_json.containsKey("resultCountEstimate")) {
      resultCountEstimate = _json["resultCountEstimate"];
    }
    if (_json.containsKey("resultCountExact")) {
      resultCountExact = _json["resultCountExact"];
    }
    if (_json.containsKey("resultCounts")) {
      resultCounts = new ResultCounts.fromJson(_json["resultCounts"]);
    }
    if (_json.containsKey("results")) {
      results = (_json["results"] as core.List)
          .map<SearchResult>((value) => new SearchResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("spellResults")) {
      spellResults = (_json["spellResults"] as core.List)
          .map<SpellResult>((value) => new SpellResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("structuredResults")) {
      structuredResults = (_json["structuredResults"] as core.List)
          .map<StructuredResult>(
              (value) => new StructuredResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (debugInfo != null) {
      _json["debugInfo"] = (debugInfo).toJson();
    }
    if (errorInfo != null) {
      _json["errorInfo"] = (errorInfo).toJson();
    }
    if (facetResults != null) {
      _json["facetResults"] =
          facetResults.map((value) => (value).toJson()).toList();
    }
    if (hasMoreResults != null) {
      _json["hasMoreResults"] = hasMoreResults;
    }
    if (queryInterpretation != null) {
      _json["queryInterpretation"] = (queryInterpretation).toJson();
    }
    if (resultCountEstimate != null) {
      _json["resultCountEstimate"] = resultCountEstimate;
    }
    if (resultCountExact != null) {
      _json["resultCountExact"] = resultCountExact;
    }
    if (resultCounts != null) {
      _json["resultCounts"] = (resultCounts).toJson();
    }
    if (results != null) {
      _json["results"] = results.map((value) => (value).toJson()).toList();
    }
    if (spellResults != null) {
      _json["spellResults"] =
          spellResults.map((value) => (value).toJson()).toList();
    }
    if (structuredResults != null) {
      _json["structuredResults"] =
          structuredResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Results containing indexed information for a document.
class SearchResult {
  /// If source is clustered, provide list of clustered results. There will only
  /// be one level of clustered results. If current source is not enabled for
  /// clustering, this field will be empty.
  core.List<SearchResult> clusteredResults;

  /// Debugging information about this search result.
  ResultDebugInfo debugInfo;

  /// Metadata of the search result.
  Metadata metadata;

  /// The concatenation of all snippets (summaries) available for this result.
  Snippet snippet;

  /// Title of the search result.
  core.String title;

  /// The URL of the search result. The URL contains a Google redirect to the
  /// actual item. This URL is signed and shouldn't be changed.
  core.String url;

  SearchResult();

  SearchResult.fromJson(core.Map _json) {
    if (_json.containsKey("clusteredResults")) {
      clusteredResults = (_json["clusteredResults"] as core.List)
          .map<SearchResult>((value) => new SearchResult.fromJson(value))
          .toList();
    }
    if (_json.containsKey("debugInfo")) {
      debugInfo = new ResultDebugInfo.fromJson(_json["debugInfo"]);
    }
    if (_json.containsKey("metadata")) {
      metadata = new Metadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("snippet")) {
      snippet = new Snippet.fromJson(_json["snippet"]);
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clusteredResults != null) {
      _json["clusteredResults"] =
          clusteredResults.map((value) => (value).toJson()).toList();
    }
    if (debugInfo != null) {
      _json["debugInfo"] = (debugInfo).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (snippet != null) {
      _json["snippet"] = (snippet).toJson();
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (url != null) {
      _json["url"] = url;
    }
    return _json;
  }
}

/// Snippet of the search result, which summarizes the content of the resulting
/// page.
class Snippet {
  /// The matched ranges in the snippet.
  core.List<MatchRange> matchRanges;

  /// The snippet of the document.
  /// The snippet of the document. May contain escaped HTML character that
  /// should be unescaped prior to rendering.
  core.String snippet;

  Snippet();

  Snippet.fromJson(core.Map _json) {
    if (_json.containsKey("matchRanges")) {
      matchRanges = (_json["matchRanges"] as core.List)
          .map<MatchRange>((value) => new MatchRange.fromJson(value))
          .toList();
    }
    if (_json.containsKey("snippet")) {
      snippet = _json["snippet"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (matchRanges != null) {
      _json["matchRanges"] =
          matchRanges.map((value) => (value).toJson()).toList();
    }
    if (snippet != null) {
      _json["snippet"] = snippet;
    }
    return _json;
  }
}

class SortOptions {
  /// Name of the operator corresponding to the field to sort on.
  /// The corresponding property must be marked as
  /// sortable.
  core.String operatorName;

  /// Ascending is the default sort order
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  core.String sortOrder;

  SortOptions();

  SortOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
    if (_json.containsKey("sortOrder")) {
      sortOrder = _json["sortOrder"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    if (sortOrder != null) {
      _json["sortOrder"] = sortOrder;
    }
    return _json;
  }
}

/// Defines sources for the suggest/search APIs.
class Source {
  /// Source name for content indexed by the
  /// Indexing API.
  core.String name;

  /// Predefined content source for Google Apps.
  /// Possible string values are:
  /// - "NONE"
  /// - "QUERY_HISTORY" : Suggests queries issued by the user in the past. Only
  /// valid when used
  /// with the suggest API. Ignored when used in the query API.
  /// - "PERSON" : Suggests people in the organization. Only valid when used
  /// with the suggest API. Results in an error when used in the query API.
  /// - "GOOGLE_DRIVE"
  /// - "GOOGLE_GMAIL"
  /// - "GOOGLE_SITES"
  /// - "GOOGLE_GROUPS"
  /// - "GOOGLE_CALENDAR"
  /// - "GOOGLE_KEEP"
  core.String predefinedSource;

  Source();

  Source.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("predefinedSource")) {
      predefinedSource = _json["predefinedSource"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (predefinedSource != null) {
      _json["predefinedSource"] = predefinedSource;
    }
    return _json;
  }
}

/// Configurations for a source while processing a
/// Search or
/// Suggest request.
class SourceConfig {
  /// The crowding configuration for the source.
  SourceCrowdingConfig crowdingConfig;

  /// The scoring configuration for the source.
  SourceScoringConfig scoringConfig;

  /// The source for which this configuration is to be used.
  Source source;

  SourceConfig();

  SourceConfig.fromJson(core.Map _json) {
    if (_json.containsKey("crowdingConfig")) {
      crowdingConfig =
          new SourceCrowdingConfig.fromJson(_json["crowdingConfig"]);
    }
    if (_json.containsKey("scoringConfig")) {
      scoringConfig = new SourceScoringConfig.fromJson(_json["scoringConfig"]);
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (crowdingConfig != null) {
      _json["crowdingConfig"] = (crowdingConfig).toJson();
    }
    if (scoringConfig != null) {
      _json["scoringConfig"] = (scoringConfig).toJson();
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// Set search results crowding limits. Crowding is a situation in which
/// multiple results from the same source or host "crowd out" other results,
/// diminishing the quality of search for users. To foster better search quality
/// and source diversity in search results, you can set a condition to reduce
/// repetitive results by source.
class SourceCrowdingConfig {
  /// Use a field to control results crowding. For example, if you want to
  /// control overly similar results from Gmail topics, use `thread_id`.
  /// For similar pages from Google Sites, you can use `webspace_id`.
  /// When matching query results contain the same field value in
  /// `GenericMetadata`, crowding limits are set on those records.
  core.String field;

  /// Maximum number of results allowed from a source.
  /// No limits will be set on results if this value is less than or equal to 0.
  core.int numResults;

  /// Maximum number of suggestions allowed from a source.
  /// No limits will be set on results if this value is less than or equal to 0.
  core.int numSuggestions;

  /// Control results by content source. This option limits the total number
  /// of results from a given source and ignores field-based crowding control.
  core.bool source;

  SourceCrowdingConfig();

  SourceCrowdingConfig.fromJson(core.Map _json) {
    if (_json.containsKey("field")) {
      field = _json["field"];
    }
    if (_json.containsKey("numResults")) {
      numResults = _json["numResults"];
    }
    if (_json.containsKey("numSuggestions")) {
      numSuggestions = _json["numSuggestions"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (field != null) {
      _json["field"] = field;
    }
    if (numResults != null) {
      _json["numResults"] = numResults;
    }
    if (numSuggestions != null) {
      _json["numSuggestions"] = numSuggestions;
    }
    if (source != null) {
      _json["source"] = source;
    }
    return _json;
  }
}

/// Per source result count information.
class SourceResultCount {
  /// Whether there are more search results for this source.
  core.bool hasMoreResults;

  /// The estimated result count for this source.
  core.String resultCountEstimate;

  /// The exact result count for this source.
  core.String resultCountExact;

  /// The source the result count information is associated with.
  Source source;

  SourceResultCount();

  SourceResultCount.fromJson(core.Map _json) {
    if (_json.containsKey("hasMoreResults")) {
      hasMoreResults = _json["hasMoreResults"];
    }
    if (_json.containsKey("resultCountEstimate")) {
      resultCountEstimate = _json["resultCountEstimate"];
    }
    if (_json.containsKey("resultCountExact")) {
      resultCountExact = _json["resultCountExact"];
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hasMoreResults != null) {
      _json["hasMoreResults"] = hasMoreResults;
    }
    if (resultCountEstimate != null) {
      _json["resultCountEstimate"] = resultCountEstimate;
    }
    if (resultCountExact != null) {
      _json["resultCountExact"] = resultCountExact;
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

/// Set the scoring configuration. This allows modifying the ranking of results
/// for a source.
class SourceScoringConfig {
  /// Importance of the source.
  /// Possible string values are:
  /// - "DEFAULT"
  /// - "LOW"
  /// - "HIGH"
  core.String sourceImportance;

  SourceScoringConfig();

  SourceScoringConfig.fromJson(core.Map _json) {
    if (_json.containsKey("sourceImportance")) {
      sourceImportance = _json["sourceImportance"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (sourceImportance != null) {
      _json["sourceImportance"] = sourceImportance;
    }
    return _json;
  }
}

class SpellResult {
  /// The suggested spelling of the query.
  core.String suggestedQuery;

  SpellResult();

  SpellResult.fromJson(core.Map _json) {
    if (_json.containsKey("suggestedQuery")) {
      suggestedQuery = _json["suggestedQuery"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (suggestedQuery != null) {
      _json["suggestedQuery"] = suggestedQuery;
    }
    return _json;
  }
}

/// Start upload file request.
class StartUploadItemRequest {
  /// Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  core.String connectorName;

  /// Common debug options.
  DebugOptions debugOptions;

  StartUploadItemRequest();

  StartUploadItemRequest.fromJson(core.Map _json) {
    if (_json.containsKey("connectorName")) {
      connectorName = _json["connectorName"];
    }
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (connectorName != null) {
      _json["connectorName"] = connectorName;
    }
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details.
///
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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

/// A structured data object consisting of named properties.
class StructuredDataObject {
  /// The properties for the object.
  /// The maximum number of elements is 1000.
  core.List<NamedProperty> properties;

  StructuredDataObject();

  StructuredDataObject.fromJson(core.Map _json) {
    if (_json.containsKey("properties")) {
      properties = (_json["properties"] as core.List)
          .map<NamedProperty>((value) => new NamedProperty.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (properties != null) {
      _json["properties"] =
          properties.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Structured results that are returned as part of search request.
class StructuredResult {
  /// Representation of a person
  Person person;

  StructuredResult();

  StructuredResult.fromJson(core.Map _json) {
    if (_json.containsKey("person")) {
      person = new Person.fromJson(_json["person"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (person != null) {
      _json["person"] = (person).toJson();
    }
    return _json;
  }
}

/// Request of suggest API.
class SuggestRequest {
  /// The sources to use for suggestions. If not specified, all data sources
  /// from the current search application are used.
  /// Suggestions are based on Gmail titles. Suggestions from third party
  /// sources
  /// are not available.
  core.List<DataSourceRestriction> dataSourceRestrictions;

  /// Partial query for which autocomplete suggestions will be shown.
  /// For example, if the query is "sea", then the server might return
  /// "season", "search", "seagull" and so on.
  core.String query;

  /// Request options, such as the search application and user timezone.
  RequestOptions requestOptions;

  SuggestRequest();

  SuggestRequest.fromJson(core.Map _json) {
    if (_json.containsKey("dataSourceRestrictions")) {
      dataSourceRestrictions = (_json["dataSourceRestrictions"] as core.List)
          .map<DataSourceRestriction>(
              (value) => new DataSourceRestriction.fromJson(value))
          .toList();
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
    if (_json.containsKey("requestOptions")) {
      requestOptions = new RequestOptions.fromJson(_json["requestOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (dataSourceRestrictions != null) {
      _json["dataSourceRestrictions"] =
          dataSourceRestrictions.map((value) => (value).toJson()).toList();
    }
    if (query != null) {
      _json["query"] = query;
    }
    if (requestOptions != null) {
      _json["requestOptions"] = (requestOptions).toJson();
    }
    return _json;
  }
}

/// Response of the suggest API.
class SuggestResponse {
  /// List of suggestions.
  core.List<SuggestResult> suggestResults;

  SuggestResponse();

  SuggestResponse.fromJson(core.Map _json) {
    if (_json.containsKey("suggestResults")) {
      suggestResults = (_json["suggestResults"] as core.List)
          .map<SuggestResult>((value) => new SuggestResult.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (suggestResults != null) {
      _json["suggestResults"] =
          suggestResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// One suggestion result.
class SuggestResult {
  /// This is present when the suggestion indicates a person. It
  /// contains more information about the person - like their email ID,
  /// name etc.
  PeopleSuggestion peopleSuggestion;

  /// This field will be present if the suggested query is a word/phrase
  /// completion.
  QuerySuggestion querySuggestion;

  /// The source of the suggestion.
  Source source;

  /// The suggested query that will be used for search, when the user
  /// clicks on the suggestion
  core.String suggestedQuery;

  SuggestResult();

  SuggestResult.fromJson(core.Map _json) {
    if (_json.containsKey("peopleSuggestion")) {
      peopleSuggestion =
          new PeopleSuggestion.fromJson(_json["peopleSuggestion"]);
    }
    if (_json.containsKey("querySuggestion")) {
      querySuggestion = new QuerySuggestion.fromJson(_json["querySuggestion"]);
    }
    if (_json.containsKey("source")) {
      source = new Source.fromJson(_json["source"]);
    }
    if (_json.containsKey("suggestedQuery")) {
      suggestedQuery = _json["suggestedQuery"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (peopleSuggestion != null) {
      _json["peopleSuggestion"] = (peopleSuggestion).toJson();
    }
    if (querySuggestion != null) {
      _json["querySuggestion"] = (querySuggestion).toJson();
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    if (suggestedQuery != null) {
      _json["suggestedQuery"] = suggestedQuery;
    }
    return _json;
  }
}

/// Used to provide a search operator for text properties. This is optional.
/// Search operators let users restrict the query to specific fields relevant
/// to the type of item being searched.
class TextOperatorOptions {
  /// If true, the text value will be tokenized as one atomic value in
  /// operator searches and facet matches. For example, if the operator name is
  /// "genre" and the value is "science-fiction" the query restrictions
  /// "genre:science" and "genre:fiction" will not match the item;
  /// "genre:science-fiction" will. Value matching is case-sensitive
  /// and does not remove special characters.
  /// If false, the text will be tokenized. For example, if the value is
  /// "science-fiction" the queries "genre:science" and "genre:fiction" will
  /// match the item.
  core.bool exactMatchWithOperator;

  /// Indicates the operator name required in the query in order to isolate the
  /// text property. For example, if operatorName is *subject* and the
  /// property's name is *subjectLine*, then queries like
  /// *subject:&lt;value&gt;* will show results only where the value of the
  /// property named *subjectLine* matches *&lt;value&gt;*. By contrast, a
  /// search that uses the same *&lt;value&gt;* without an operator will return
  /// all items where *&lt;value&gt;* matches the value of any
  /// text properties or text within the content field for the item.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String operatorName;

  TextOperatorOptions();

  TextOperatorOptions.fromJson(core.Map _json) {
    if (_json.containsKey("exactMatchWithOperator")) {
      exactMatchWithOperator = _json["exactMatchWithOperator"];
    }
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exactMatchWithOperator != null) {
      _json["exactMatchWithOperator"] = exactMatchWithOperator;
    }
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    return _json;
  }
}

/// Options for text properties.
class TextPropertyOptions {
  /// If set, describes how the property should be used as a search operator.
  TextOperatorOptions operatorOptions;

  /// Indicates the search quality importance of the tokens within the
  /// field when used for retrieval.
  RetrievalImportance retrievalImportance;

  TextPropertyOptions();

  TextPropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorOptions")) {
      operatorOptions =
          new TextOperatorOptions.fromJson(_json["operatorOptions"]);
    }
    if (_json.containsKey("retrievalImportance")) {
      retrievalImportance =
          new RetrievalImportance.fromJson(_json["retrievalImportance"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorOptions != null) {
      _json["operatorOptions"] = (operatorOptions).toJson();
    }
    if (retrievalImportance != null) {
      _json["retrievalImportance"] = (retrievalImportance).toJson();
    }
    return _json;
  }
}

/// List of text values.
class TextValues {
  /// The maximum allowable length for text values is 2048 characters.
  core.List<core.String> values;

  TextValues();

  TextValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

/// Used to provide a search operator for timestamp properties. This is
/// optional. Search operators let users restrict the query to specific fields
/// relevant to the type of item being searched.
class TimestampOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// timestamp property using the greater-than operator. For example, if
  /// greaterThanOperatorName is *closedafter* and the property's name is
  /// *closeDate*, then queries like *closedafter:&lt;value&gt;* will
  /// show results only where the value of the property named *closeDate* is
  /// later than *&lt;value&gt;*.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String greaterThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// timestamp property using the less-than operator. For example, if
  /// lessThanOperatorName is *closedbefore* and the property's name is
  /// *closeDate*, then queries like *closedbefore:&lt;value&gt;* will
  /// show results only where the value of the property named *closeDate* is
  /// earlier than *&lt;value&gt;*.
  /// The operator name can only contain lowercase letters (a-z).
  /// The maximum length is 32 characters.
  core.String lessThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// timestamp property. For example, if operatorName is *closedon* and the
  /// property's name is *closeDate*, then queries like
  /// *closedon:&lt;value&gt;* will show results only where the value of the
  /// property named *closeDate* matches *&lt;value&gt;*. By contrast, a
  /// search that uses the same *&lt;value&gt;* without an operator will return
  /// all items where *&lt;value&gt;* matches the value of any String
  /// properties or text within the content field for the item. The operator
  /// name can only contain lowercase letters (a-z). The maximum length is 32
  /// characters.
  core.String operatorName;

  TimestampOperatorOptions();

  TimestampOperatorOptions.fromJson(core.Map _json) {
    if (_json.containsKey("greaterThanOperatorName")) {
      greaterThanOperatorName = _json["greaterThanOperatorName"];
    }
    if (_json.containsKey("lessThanOperatorName")) {
      lessThanOperatorName = _json["lessThanOperatorName"];
    }
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (greaterThanOperatorName != null) {
      _json["greaterThanOperatorName"] = greaterThanOperatorName;
    }
    if (lessThanOperatorName != null) {
      _json["lessThanOperatorName"] = lessThanOperatorName;
    }
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    return _json;
  }
}

/// Options for timestamp properties.
class TimestampPropertyOptions {
  /// If set, describes how the timestamp should be used as a search operator.
  TimestampOperatorOptions operatorOptions;

  TimestampPropertyOptions();

  TimestampPropertyOptions.fromJson(core.Map _json) {
    if (_json.containsKey("operatorOptions")) {
      operatorOptions =
          new TimestampOperatorOptions.fromJson(_json["operatorOptions"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorOptions != null) {
      _json["operatorOptions"] = (operatorOptions).toJson();
    }
    return _json;
  }
}

/// List of timestamp values.
class TimestampValues {
  core.List<core.String> values;

  TimestampValues();

  TimestampValues.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values;
    }
    return _json;
  }
}

class UnmappedIdentity {
  /// The resource name for an external user.
  Principal externalIdentity;

  /// The resolution status for the external identity.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Input-only value.  Used to list all unmapped
  /// identities regardless of
  /// status.
  /// - "NOT_FOUND" : The unmapped identity was not found in IDaaS, and needs to
  /// be provided by
  /// the user.
  /// - "IDENTITY_SOURCE_NOT_FOUND" : The identity source associated with the
  /// identity was either not found or
  /// deleted.
  /// - "IDENTITY_SOURCE_MISCONFIGURED" : IDaaS does not understand the identity
  /// source, probably because the
  /// schema was modified in a non compatible way.
  /// - "TOO_MANY_MAPPINGS_FOUND" : The number of users associated with the
  /// external identity is too large.
  /// - "INTERNAL_ERROR" : Internal error.
  core.String resolutionStatusCode;

  UnmappedIdentity();

  UnmappedIdentity.fromJson(core.Map _json) {
    if (_json.containsKey("externalIdentity")) {
      externalIdentity = new Principal.fromJson(_json["externalIdentity"]);
    }
    if (_json.containsKey("resolutionStatusCode")) {
      resolutionStatusCode = _json["resolutionStatusCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (externalIdentity != null) {
      _json["externalIdentity"] = (externalIdentity).toJson();
    }
    if (resolutionStatusCode != null) {
      _json["resolutionStatusCode"] = resolutionStatusCode;
    }
    return _json;
  }
}

class UnreserveItemsRequest {
  /// Name of connector making this call.
  /// <br />Format: datasources/{source_id}/connectors/{ID}
  core.String connectorName;

  /// Common debug options.
  DebugOptions debugOptions;

  /// Name of a queue to unreserve items from.
  core.String queue;

  UnreserveItemsRequest();

  UnreserveItemsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("connectorName")) {
      connectorName = _json["connectorName"];
    }
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("queue")) {
      queue = _json["queue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (connectorName != null) {
      _json["connectorName"] = connectorName;
    }
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (queue != null) {
      _json["queue"] = queue;
    }
    return _json;
  }
}

class UpdateDataSourceRequest {
  /// Common debug options.
  DebugOptions debugOptions;
  DataSource source;

  UpdateDataSourceRequest();

  UpdateDataSourceRequest.fromJson(core.Map _json) {
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("source")) {
      source = new DataSource.fromJson(_json["source"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (source != null) {
      _json["source"] = (source).toJson();
    }
    return _json;
  }
}

class UpdateSchemaRequest {
  /// Common debug options.
  DebugOptions debugOptions;

  /// The new schema for the source.
  Schema schema;

  /// If true, the request will be validated without side effects.
  core.bool validateOnly;

  UpdateSchemaRequest();

  UpdateSchemaRequest.fromJson(core.Map _json) {
    if (_json.containsKey("debugOptions")) {
      debugOptions = new DebugOptions.fromJson(_json["debugOptions"]);
    }
    if (_json.containsKey("schema")) {
      schema = new Schema.fromJson(_json["schema"]);
    }
    if (_json.containsKey("validateOnly")) {
      validateOnly = _json["validateOnly"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (debugOptions != null) {
      _json["debugOptions"] = (debugOptions).toJson();
    }
    if (schema != null) {
      _json["schema"] = (schema).toJson();
    }
    if (validateOnly != null) {
      _json["validateOnly"] = validateOnly;
    }
    return _json;
  }
}

/// Represents an upload session reference.
/// This reference is created via upload
/// method.
/// Updating of item content may refer to this uploaded content via
/// contentDataRef.
class UploadItemRef {
  /// Name of the content reference.
  /// The maximum length is 2048 characters.
  core.String name;

  UploadItemRef();

  UploadItemRef.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// Definition of a single value with generic type.
class Value {
  core.bool booleanValue;
  Date dateValue;
  core.double doubleValue;
  core.String integerValue;
  core.String stringValue;
  core.String timestampValue;

  Value();

  Value.fromJson(core.Map _json) {
    if (_json.containsKey("booleanValue")) {
      booleanValue = _json["booleanValue"];
    }
    if (_json.containsKey("dateValue")) {
      dateValue = new Date.fromJson(_json["dateValue"]);
    }
    if (_json.containsKey("doubleValue")) {
      doubleValue = _json["doubleValue"].toDouble();
    }
    if (_json.containsKey("integerValue")) {
      integerValue = _json["integerValue"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
    if (_json.containsKey("timestampValue")) {
      timestampValue = _json["timestampValue"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (booleanValue != null) {
      _json["booleanValue"] = booleanValue;
    }
    if (dateValue != null) {
      _json["dateValue"] = (dateValue).toJson();
    }
    if (doubleValue != null) {
      _json["doubleValue"] = doubleValue;
    }
    if (integerValue != null) {
      _json["integerValue"] = integerValue;
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

class ValueFilter {
  /// The `operator_name` applied to the query, such as *price_greater_than*.
  /// The filter can work against both types of filters defined in the schema
  /// for your data source:
  /// <br/><br/>
  /// 1. `operator_name`, where the query filters results by the property
  /// that matches the value.
  /// <br/>
  /// 2. `greater_than_operator_name` or `less_than_operator_name` in your
  /// schema. The query filters the results for the property values that are
  /// greater than or less than  the supplied value in the query.
  core.String operatorName;

  /// The value to be compared with.
  Value value;

  ValueFilter();

  ValueFilter.fromJson(core.Map _json) {
    if (_json.containsKey("operatorName")) {
      operatorName = _json["operatorName"];
    }
    if (_json.containsKey("value")) {
      value = new Value.fromJson(_json["value"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (operatorName != null) {
      _json["operatorName"] = operatorName;
    }
    if (value != null) {
      _json["value"] = (value).toJson();
    }
    return _json;
  }
}
