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

/// Cloud Search API - v1
///
/// Cloud Search provides cloud-based search capabilities over Google Workspace
/// data. The Cloud Search API allows indexing of non-Google Workspace data into
/// Cloud Search.
///
/// For more information, see
/// <https://developers.google.com/cloud-search/docs/guides/>
///
/// Create an instance of [CloudSearchApi] to access these resources:
///
/// - [DebugResource]
///   - [DebugDatasourcesResource]
///     - [DebugDatasourcesItemsResource]
///       - [DebugDatasourcesItemsUnmappedidsResource]
///   - [DebugIdentitysourcesResource]
///     - [DebugIdentitysourcesItemsResource]
///     - [DebugIdentitysourcesUnmappedidsResource]
/// - [IndexingResource]
///   - [IndexingDatasourcesResource]
///     - [IndexingDatasourcesItemsResource]
/// - [MediaResource]
/// - [OperationsResource]
///   - [OperationsLroResource]
/// - [QueryResource]
///   - [QuerySourcesResource]
/// - [SettingsResource]
///   - [SettingsDatasourcesResource]
///   - [SettingsSearchapplicationsResource]
/// - [StatsResource]
///   - [StatsIndexResource]
///     - [StatsIndexDatasourcesResource]
///   - [StatsQueryResource]
///     - [StatsQuerySearchapplicationsResource]
///   - [StatsSessionResource]
///     - [StatsSessionSearchapplicationsResource]
///   - [StatsUserResource]
///     - [StatsUserSearchapplicationsResource]
/// - [V1Resource]
library cloudsearch.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

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

/// Cloud Search provides cloud-based search capabilities over Google Workspace
/// data.
///
/// The Cloud Search API allows indexing of non-Google Workspace data into Cloud
/// Search.
class CloudSearchApi {
  /// Index and serve your organization's data with Cloud Search
  static const cloudSearchScope =
      'https://www.googleapis.com/auth/cloud_search';

  /// Index and serve your organization's data with Cloud Search
  static const cloudSearchDebugScope =
      'https://www.googleapis.com/auth/cloud_search.debug';

  /// Index and serve your organization's data with Cloud Search
  static const cloudSearchIndexingScope =
      'https://www.googleapis.com/auth/cloud_search.indexing';

  /// Search your organization's data in the Cloud Search index
  static const cloudSearchQueryScope =
      'https://www.googleapis.com/auth/cloud_search.query';

  /// Index and serve your organization's data with Cloud Search
  static const cloudSearchSettingsScope =
      'https://www.googleapis.com/auth/cloud_search.settings';

  /// Index and serve your organization's data with Cloud Search
  static const cloudSearchSettingsIndexingScope =
      'https://www.googleapis.com/auth/cloud_search.settings.indexing';

  /// Index and serve your organization's data with Cloud Search
  static const cloudSearchSettingsQueryScope =
      'https://www.googleapis.com/auth/cloud_search.settings.query';

  /// Index and serve your organization's data with Cloud Search
  static const cloudSearchStatsScope =
      'https://www.googleapis.com/auth/cloud_search.stats';

  /// Index and serve your organization's data with Cloud Search
  static const cloudSearchStatsIndexingScope =
      'https://www.googleapis.com/auth/cloud_search.stats.indexing';

  final commons.ApiRequester _requester;

  DebugResource get debug => DebugResource(_requester);
  IndexingResource get indexing => IndexingResource(_requester);
  MediaResource get media => MediaResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  QueryResource get query => QueryResource(_requester);
  SettingsResource get settings => SettingsResource(_requester);
  StatsResource get stats => StatsResource(_requester);
  V1Resource get v1 => V1Resource(_requester);

  CloudSearchApi(http.Client client,
      {core.String rootUrl = 'https://cloudsearch.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class DebugResource {
  final commons.ApiRequester _requester;

  DebugDatasourcesResource get datasources =>
      DebugDatasourcesResource(_requester);
  DebugIdentitysourcesResource get identitysources =>
      DebugIdentitysourcesResource(_requester);

  DebugResource(commons.ApiRequester client) : _requester = client;
}

class DebugDatasourcesResource {
  final commons.ApiRequester _requester;

  DebugDatasourcesItemsResource get items =>
      DebugDatasourcesItemsResource(_requester);

  DebugDatasourcesResource(commons.ApiRequester client) : _requester = client;
}

class DebugDatasourcesItemsResource {
  final commons.ApiRequester _requester;

  DebugDatasourcesItemsUnmappedidsResource get unmappedids =>
      DebugDatasourcesItemsUnmappedidsResource(_requester);

  DebugDatasourcesItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Checks whether an item is accessible by specified principal.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Item name, format: datasources/{source_id}/items/{item_id}
  /// Value must have pattern `^datasources/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
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
    Principal request,
    core.String name, {
    core.bool? debugOptions_enableDebugging,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/debug/' + core.Uri.encodeFull('$name') + ':checkAccess';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CheckAccessResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Fetches the item whose viewUrl exactly matches that of the URL provided in
  /// the request.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Source name, format: datasources/{source_id}
  /// Value must have pattern `^datasources/\[^/\]+$`.
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
    SearchItemsByViewUrlRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/debug/' + core.Uri.encodeFull('$name') + '/items:searchByViewUrl';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SearchItemsByViewUrlResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DebugDatasourcesItemsUnmappedidsResource {
  final commons.ApiRequester _requester;

  DebugDatasourcesItemsUnmappedidsResource(commons.ApiRequester client)
      : _requester = client;

  /// List all unmapped identities for a specific item.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the item, in the following format:
  /// datasources/{source_id}/items/{ID}
  /// Value must have pattern `^datasources/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
  ///
  /// [pageSize] - Maximum number of items to fetch in a request. Defaults to
  /// 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
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
  async.Future<ListUnmappedIdentitiesResponse> list(
    core.String parent, {
    core.bool? debugOptions_enableDebugging,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/debug/' + core.Uri.encodeFull('$parent') + '/unmappedids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListUnmappedIdentitiesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DebugIdentitysourcesResource {
  final commons.ApiRequester _requester;

  DebugIdentitysourcesItemsResource get items =>
      DebugIdentitysourcesItemsResource(_requester);
  DebugIdentitysourcesUnmappedidsResource get unmappedids =>
      DebugIdentitysourcesUnmappedidsResource(_requester);

  DebugIdentitysourcesResource(commons.ApiRequester client)
      : _requester = client;
}

class DebugIdentitysourcesItemsResource {
  final commons.ApiRequester _requester;

  DebugIdentitysourcesItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists names of items associated with an unmapped identity.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the identity source, in the following format:
  /// identitysources/{source_id}}
  /// Value must have pattern `^identitysources/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
  ///
  /// [groupResourceName] - null
  ///
  /// [pageSize] - Maximum number of items to fetch in a request. Defaults to
  /// 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [userResourceName] - null
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
      listForunmappedidentity(
    core.String parent, {
    core.bool? debugOptions_enableDebugging,
    core.String? groupResourceName,
    core.int? pageSize,
    core.String? pageToken,
    core.String? userResourceName,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if (groupResourceName != null) 'groupResourceName': [groupResourceName],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (userResourceName != null) 'userResourceName': [userResourceName],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/debug/' +
        core.Uri.encodeFull('$parent') +
        '/items:forunmappedidentity';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListItemNamesForUnmappedIdentityResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class DebugIdentitysourcesUnmappedidsResource {
  final commons.ApiRequester _requester;

  DebugIdentitysourcesUnmappedidsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists unmapped user identities for an identity source.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [parent] - The name of the identity source, in the following format:
  /// identitysources/{source_id}
  /// Value must have pattern `^identitysources/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
  ///
  /// [pageSize] - Maximum number of items to fetch in a request. Defaults to
  /// 100.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [resolutionStatusCode] - Limit users selection to this status.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Input-only value. Used to list all unmapped
  /// identities regardless of status.
  /// - "NOT_FOUND" : The unmapped identity was not found in IDaaS, and needs to
  /// be provided by the user.
  /// - "IDENTITY_SOURCE_NOT_FOUND" : The identity source associated with the
  /// identity was either not found or deleted.
  /// - "IDENTITY_SOURCE_MISCONFIGURED" : IDaaS does not understand the identity
  /// source, probably because the schema was modified in a non compatible way.
  /// - "TOO_MANY_MAPPINGS_FOUND" : The number of users associated with the
  /// external identity is too large.
  /// - "INTERNAL_ERROR" : Internal error.
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
  async.Future<ListUnmappedIdentitiesResponse> list(
    core.String parent, {
    core.bool? debugOptions_enableDebugging,
    core.int? pageSize,
    core.String? pageToken,
    core.String? resolutionStatusCode,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (resolutionStatusCode != null)
        'resolutionStatusCode': [resolutionStatusCode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/debug/' + core.Uri.encodeFull('$parent') + '/unmappedids';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListUnmappedIdentitiesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class IndexingResource {
  final commons.ApiRequester _requester;

  IndexingDatasourcesResource get datasources =>
      IndexingDatasourcesResource(_requester);

  IndexingResource(commons.ApiRequester client) : _requester = client;
}

class IndexingDatasourcesResource {
  final commons.ApiRequester _requester;

  IndexingDatasourcesItemsResource get items =>
      IndexingDatasourcesItemsResource(_requester);

  IndexingDatasourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes the schema of a data source.
  ///
  /// **Note:** This API requires an admin or service account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the data source to delete Schema. Format:
  /// datasources/{source_id}
  /// Value must have pattern `^datasources/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
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
  async.Future<Operation> deleteSchema(
    core.String name, {
    core.bool? debugOptions_enableDebugging,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name') + '/schema';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the schema of a data source.
  ///
  /// **Note:** This API requires an admin or service account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the data source to get Schema. Format:
  /// datasources/{source_id}
  /// Value must have pattern `^datasources/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
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
  async.Future<Schema> getSchema(
    core.String name, {
    core.bool? debugOptions_enableDebugging,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name') + '/schema';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Schema.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the schema of a data source.
  ///
  /// This method does not perform incremental updates to the schema. Instead,
  /// this method updates the schema by overwriting the entire schema. **Note:**
  /// This API requires an admin or service account to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the data source to update Schema. Format:
  /// datasources/{source_id}
  /// Value must have pattern `^datasources/\[^/\]+$`.
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
    UpdateSchemaRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name') + '/schema';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class IndexingDatasourcesItemsResource {
  final commons.ApiRequester _requester;

  IndexingDatasourcesItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes Item resource for the specified resource name.
  ///
  /// This API requires an admin or service account to execute. The service
  /// account used is the one whitelisted in the corresponding data source.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the item to delete. Format:
  /// datasources/{source_id}/items/{item_id}
  /// Value must have pattern `^datasources/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [connectorName] - Name of connector making this call. Format:
  /// datasources/{source_id}/connectors/{ID}
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
  ///
  /// [mode] - Required. The RequestMode for this request.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Priority is not specified in the update request. Leaving
  /// priority unspecified results in an update failure.
  /// - "SYNCHRONOUS" : For real-time updates.
  /// - "ASYNCHRONOUS" : For changes that are executed after the response is
  /// sent back to the caller.
  ///
  /// [version] - Required. The incremented version of the item to delete from
  /// the index. The indexing system stores the version from the datasource as a
  /// byte string and compares the Item version in the index to the version of
  /// the queued Item using lexical ordering. Cloud Search Indexing won't delete
  /// any queued item with a version value that is less than or equal to the
  /// version of the currently indexed item. The maximum length for this field
  /// is 1024 bytes. For information on how item version affects the deletion
  /// process, refer to
  /// [Handle revisions after manual deletes](https://developers.google.com/cloud-search/docs/guides/operations).
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? connectorName,
    core.bool? debugOptions_enableDebugging,
    core.String? mode,
    core.String? version,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (connectorName != null) 'connectorName': [connectorName],
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if (mode != null) 'mode': [mode],
      if (version != null) 'version': [version],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes all items in a queue.
  ///
  /// This method is useful for deleting stale items. This API requires an admin
  /// or service account to execute. The service account used is the one
  /// whitelisted in the corresponding data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Data Source to delete items in a queue. Format:
  /// datasources/{source_id}
  /// Value must have pattern `^datasources/\[^/\]+$`.
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
    DeleteQueueItemsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' +
        core.Uri.encodeFull('$name') +
        '/items:deleteQueueItems';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets Item resource by item name.
  ///
  /// This API requires an admin or service account to execute. The service
  /// account used is the one whitelisted in the corresponding data source.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the item to get info. Format:
  /// datasources/{source_id}/items/{item_id}
  /// Value must have pattern `^datasources/\[^/\]+/items/\[^/\]+$`.
  ///
  /// [connectorName] - Name of connector making this call. Format:
  /// datasources/{source_id}/connectors/{ID}
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
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
  async.Future<Item> get(
    core.String name, {
    core.String? connectorName,
    core.bool? debugOptions_enableDebugging,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (connectorName != null) 'connectorName': [connectorName],
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Item.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates Item ACL, metadata, and content.
  ///
  /// It will insert the Item if it does not exist. This method does not support
  /// partial updates. Fields with no provided values are cleared out in the
  /// Cloud Search index. This API requires an admin or service account to
  /// execute. The service account used is the one whitelisted in the
  /// corresponding data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Item. Format: datasources/{source_id}/items/{item_id}
  /// This is a required field. The maximum length is 1536 characters.
  /// Value must have pattern `^datasources/\[^/\]+/items/\[^/\]+$`.
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
  async.Future<Operation> index(
    IndexItemRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name') + ':index';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all or a subset of Item resources.
  ///
  /// This API requires an admin or service account to execute. The service
  /// account used is the one whitelisted in the corresponding data source.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Data Source to list Items. Format:
  /// datasources/{source_id}
  /// Value must have pattern `^datasources/\[^/\]+$`.
  ///
  /// [brief] - When set to true, the indexing system only populates the
  /// following fields: name, version, queue. metadata.hash, metadata.title,
  /// metadata.sourceRepositoryURL, metadata.objectType, metadata.createTime,
  /// metadata.updateTime, metadata.contentLanguage, metadata.mimeType,
  /// structured_data.hash, content.hash, itemType, itemStatus.code,
  /// itemStatus.processingError.code, itemStatus.repositoryError.type, If this
  /// value is false, then all the fields are populated in Item.
  ///
  /// [connectorName] - Name of connector making this call. Format:
  /// datasources/{source_id}/connectors/{ID}
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
  ///
  /// [pageSize] - Maximum number of items to fetch in a request. The max value
  /// is 1000 when brief is true. The max value is 10 if brief is false. The
  /// default value is 10
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
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
  async.Future<ListItemsResponse> list(
    core.String name, {
    core.bool? brief,
    core.String? connectorName,
    core.bool? debugOptions_enableDebugging,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (brief != null) 'brief': ['${brief}'],
      if (connectorName != null) 'connectorName': [connectorName],
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name') + '/items';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Polls for unreserved items from the indexing queue and marks a set as
  /// reserved, starting with items that have the oldest timestamp from the
  /// highest priority ItemStatus.
  ///
  /// The priority order is as follows: ERROR MODIFIED NEW_ITEM ACCEPTED
  /// Reserving items ensures that polling from other threads cannot create
  /// overlapping sets. After handling the reserved items, the client should put
  /// items back into the unreserved state, either by calling index, or by
  /// calling push with the type REQUEUE. Items automatically become available
  /// (unreserved) after 4 hours even if no update or push method is called.
  /// This API requires an admin or service account to execute. The service
  /// account used is the one whitelisted in the corresponding data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Data Source to poll items. Format:
  /// datasources/{source_id}
  /// Value must have pattern `^datasources/\[^/\]+$`.
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
    PollItemsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name') + '/items:poll';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PollItemsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Pushes an item onto a queue for later polling and updating.
  ///
  /// This API requires an admin or service account to execute. The service
  /// account used is the one whitelisted in the corresponding data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the item to push into the indexing queue. Format:
  /// datasources/{source_id}/items/{ID} This is a required field. The maximum
  /// length is 1536 characters.
  /// Value must have pattern `^datasources/\[^/\]+/items/\[^/\]+$`.
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
  async.Future<Item> push(
    PushItemRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name') + ':push';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Item.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Unreserves all items from a queue, making them all eligible to be polled.
  ///
  /// This method is useful for resetting the indexing queue after a connector
  /// has been restarted. This API requires an admin or service account to
  /// execute. The service account used is the one whitelisted in the
  /// corresponding data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Data Source to unreserve all items. Format:
  /// datasources/{source_id}
  /// Value must have pattern `^datasources/\[^/\]+$`.
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
    UnreserveItemsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/indexing/' + core.Uri.encodeFull('$name') + '/items:unreserve';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates an upload session for uploading item content.
  ///
  /// For items smaller than 100 KB, it's easier to embed the content inline
  /// within an index request. This API requires an admin or service account to
  /// execute. The service account used is the one whitelisted in the
  /// corresponding data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Item to start a resumable upload. Format:
  /// datasources/{source_id}/items/{item_id}. The maximum length is 1536 bytes.
  /// Value must have pattern `^datasources/\[^/\]+/items/\[^/\]+$`.
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
    StartUploadItemRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/indexing/' + core.Uri.encodeFull('$name') + ':upload';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return UploadItemRef.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class MediaResource {
  final commons.ApiRequester _requester;

  MediaResource(commons.ApiRequester client) : _requester = client;

  /// Uploads media for indexing.
  ///
  /// The upload endpoint supports direct and resumable upload protocols and is
  /// intended for large items that can not be
  /// [inlined during index requests](https://developers.google.com/cloud-search/docs/reference/rest/v1/indexing.datasources.items#itemcontent).
  /// To index large content: 1. Call indexing.datasources.items.upload with the
  /// item name to begin an upload session and retrieve the UploadItemRef. 1.
  /// Call media.upload to upload the content, as a streaming request, using the
  /// same resource name from the UploadItemRef from step 1. 1. Call
  /// indexing.datasources.items.index to index the item. Populate the
  /// \[ItemContent\](/cloud-search/docs/reference/rest/v1/indexing.datasources.items#ItemContent)
  /// with the UploadItemRef from step 1. For additional information, see
  /// [Create a content connector using the REST API](https://developers.google.com/cloud-search/docs/guides/content-connector#rest).
  /// **Note:** This API requires a service account to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourceName] - Name of the media that is being downloaded. See
  /// ReadRequest.resource_name.
  /// Value must have pattern `^.*$`.
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
  async.Future<Media> upload(
    Media request,
    core.String resourceName, {
    core.String? $fields,
    commons.Media? uploadMedia,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    core.String _url;
    if (uploadMedia == null) {
      _url = 'v1/media/' + core.Uri.encodeFull('$resourceName');
    } else {
      _url = '/upload/v1/media/' + core.Uri.encodeFull('$resourceName');
    }

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadMedia: uploadMedia,
      uploadOptions: commons.UploadOptions.defaultOptions,
    );
    return Media.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsLroResource get lro => OperationsLroResource(_requester);

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^operations/.*$`.
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
  async.Future<Operation> get(
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class OperationsLroResource {
  final commons.ApiRequester _requester;

  OperationsLroResource(commons.ApiRequester client) : _requester = client;

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/lro';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class QueryResource {
  final commons.ApiRequester _requester;

  QuerySourcesResource get sources => QuerySourcesResource(_requester);

  QueryResource(commons.ApiRequester client) : _requester = client;

  /// The Cloud Search Query API provides the search method, which returns the
  /// most relevant results from a user query.
  ///
  /// The results can come from Google Workspace apps, such as Gmail or Google
  /// Drive, or they can come from data that you have indexed from a third
  /// party. **Note:** This API requires a standard end user account to execute.
  /// A service account can't perform Query API requests directly; to use a
  /// service account to perform queries, set up \[Google Workspace domain-wide
  /// delegation of
  /// authority\](https://developers.google.com/cloud-search/docs/guides/delegation/).
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
  async.Future<SearchResponse> search(
    SearchRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/query/search';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SearchResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Provides suggestions for autocompleting the query.
  ///
  /// **Note:** This API requires a standard end user account to execute. A
  /// service account can't perform Query API requests directly; to use a
  /// service account to perform queries, set up \[Google Workspace domain-wide
  /// delegation of
  /// authority\](https://developers.google.com/cloud-search/docs/guides/delegation/).
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
  async.Future<SuggestResponse> suggest(
    SuggestRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/query/suggest';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SuggestResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class QuerySourcesResource {
  final commons.ApiRequester _requester;

  QuerySourcesResource(commons.ApiRequester client) : _requester = client;

  /// Returns list of sources that user can use for Search and Suggest APIs.
  ///
  /// **Note:** This API requires a standard end user account to execute. A
  /// service account can't perform Query API requests directly; to use a
  /// service account to perform queries, set up \[Google Workspace domain-wide
  /// delegation of
  /// authority\](https://developers.google.com/cloud-search/docs/guides/delegation/).
  ///
  /// Request parameters:
  ///
  /// [pageToken] - Number of sources to return in the response.
  ///
  /// [requestOptions_debugOptions_enableDebugging] - If you are asked by Google
  /// to help with debugging, set this field. Otherwise, ignore this field.
  ///
  /// [requestOptions_languageCode] - The BCP-47 language code, such as "en-US"
  /// or "sr-Latn". For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. For
  /// translations. Set this field using the language set in browser or for the
  /// page. In the event that the user's language preference is known, set this
  /// field to the known user language. When specified, the documents in search
  /// results are biased towards the specified language. The suggest API does
  /// not use this parameter. Instead, suggest autocompletes only based on
  /// characters in the query.
  ///
  /// [requestOptions_searchApplicationId] - The ID generated when you create a
  /// search application using the
  /// [admin console](https://support.google.com/a/answer/9043922).
  ///
  /// [requestOptions_timeZone] - Current user's time zone id, such as
  /// "America/Los_Angeles" or "Australia/Sydney". These IDs are defined by
  /// \[Unicode Common Locale Data Repository (CLDR)\](http://cldr.unicode.org/)
  /// project, and currently available in the file
  /// [timezone.xml](http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml).
  /// This field is used to correctly interpret date and time queries. If this
  /// field is not specified, the default time zone (UTC) is used.
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
  async.Future<ListQuerySourcesResponse> list({
    core.String? pageToken,
    core.bool? requestOptions_debugOptions_enableDebugging,
    core.String? requestOptions_languageCode,
    core.String? requestOptions_searchApplicationId,
    core.String? requestOptions_timeZone,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageToken != null) 'pageToken': [pageToken],
      if (requestOptions_debugOptions_enableDebugging != null)
        'requestOptions.debugOptions.enableDebugging': [
          '${requestOptions_debugOptions_enableDebugging}'
        ],
      if (requestOptions_languageCode != null)
        'requestOptions.languageCode': [requestOptions_languageCode],
      if (requestOptions_searchApplicationId != null)
        'requestOptions.searchApplicationId': [
          requestOptions_searchApplicationId
        ],
      if (requestOptions_timeZone != null)
        'requestOptions.timeZone': [requestOptions_timeZone],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/query/sources';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListQuerySourcesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class SettingsResource {
  final commons.ApiRequester _requester;

  SettingsDatasourcesResource get datasources =>
      SettingsDatasourcesResource(_requester);
  SettingsSearchapplicationsResource get searchapplications =>
      SettingsSearchapplicationsResource(_requester);

  SettingsResource(commons.ApiRequester client) : _requester = client;

  /// Get customer settings.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomerSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomerSettings> getCustomer({
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/settings/customer';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return CustomerSettings.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update customer settings.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [updateMask] - Update mask to control which fields get updated. If you
  /// specify a field in the update_mask but don't specify its value here, that
  /// field will be cleared. If the mask is not present or empty, all fields
  /// will be updated. Currently supported field paths: vpc_settings and
  /// audit_logging_settings
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
  async.Future<Operation> updateCustomer(
    CustomerSettings request, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/settings/customer';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SettingsDatasourcesResource {
  final commons.ApiRequester _requester;

  SettingsDatasourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a datasource.
  ///
  /// **Note:** This API requires an admin account to execute.
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
  async.Future<Operation> create(
    DataSource request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/settings/datasources';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a datasource.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the datasource. Format: datasources/{source_id}.
  /// Value must have pattern `^datasources/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? debugOptions_enableDebugging,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/settings/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a datasource.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the datasource resource. Format: datasources/{source_id}.
  /// Value must have pattern `^datasources/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
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
  async.Future<DataSource> get(
    core.String name, {
    core.bool? debugOptions_enableDebugging,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/settings/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DataSource.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists datasources.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
  ///
  /// [pageSize] - Maximum number of datasources to fetch in a request. The max
  /// value is 1000. The default value is 1000.
  ///
  /// [pageToken] - Starting index of the results.
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
  async.Future<ListDataSourceResponse> list({
    core.bool? debugOptions_enableDebugging,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/settings/datasources';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDataSourceResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a datasource.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the datasource resource. Format: datasources/{source_id}.
  /// The name is ignored when creating a datasource.
  /// Value must have pattern `^datasources/\[^/\]+$`.
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
    UpdateDataSourceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/settings/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class SettingsSearchapplicationsResource {
  final commons.ApiRequester _requester;

  SettingsSearchapplicationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a search application.
  ///
  /// **Note:** This API requires an admin account to execute.
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
  async.Future<Operation> create(
    SearchApplication request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/settings/searchapplications';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a search application.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the search application to be deleted. Format:
  /// applications/{application_id}.
  /// Value must have pattern `^searchapplications/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? debugOptions_enableDebugging,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/settings/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the specified search application.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the search application. Format:
  /// searchapplications/{application_id}.
  /// Value must have pattern `^searchapplications/\[^/\]+$`.
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
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
  async.Future<SearchApplication> get(
    core.String name, {
    core.bool? debugOptions_enableDebugging,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/settings/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SearchApplication.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all search applications.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// Request parameters:
  ///
  /// [debugOptions_enableDebugging] - If you are asked by Google to help with
  /// debugging, set this field. Otherwise, ignore this field.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any. The default value is 10
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
  async.Future<ListSearchApplicationsResponse> list({
    core.bool? debugOptions_enableDebugging,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (debugOptions_enableDebugging != null)
        'debugOptions.enableDebugging': ['${debugOptions_enableDebugging}'],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/settings/searchapplications';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSearchApplicationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Resets a search application to default settings.
  ///
  /// This will return an empty response. **Note:** This API requires an admin
  /// account to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the search application to be reset. Format:
  /// applications/{application_id}.
  /// Value must have pattern `^searchapplications/\[^/\]+$`.
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
    ResetSearchApplicationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/settings/' + core.Uri.encodeFull('$name') + ':reset';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a search application.
  ///
  /// **Note:** This API requires an admin account to execute.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the Search Application. Format:
  /// searchapplications/{application_id}.
  /// Value must have pattern `^searchapplications/\[^/\]+$`.
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
    SearchApplication request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/settings/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class StatsResource {
  final commons.ApiRequester _requester;

  StatsIndexResource get index => StatsIndexResource(_requester);
  StatsQueryResource get query => StatsQueryResource(_requester);
  StatsSessionResource get session => StatsSessionResource(_requester);
  StatsUserResource get user => StatsUserResource(_requester);

  StatsResource(commons.ApiRequester client) : _requester = client;

  /// Gets indexed item statistics aggreggated across all data sources.
  ///
  /// This API only returns statistics for previous dates; it doesn't return
  /// statistics for the current day. **Note:** This API requires a standard end
  /// user account to execute.
  ///
  /// Request parameters:
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
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
  async.Future<GetCustomerIndexStatsResponse> getIndex({
    core.int? fromDate_day,
    core.int? fromDate_month,
    core.int? fromDate_year,
    core.int? toDate_day,
    core.int? toDate_month,
    core.int? toDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fromDate_day != null) 'fromDate.day': ['${fromDate_day}'],
      if (fromDate_month != null) 'fromDate.month': ['${fromDate_month}'],
      if (fromDate_year != null) 'fromDate.year': ['${fromDate_year}'],
      if (toDate_day != null) 'toDate.day': ['${toDate_day}'],
      if (toDate_month != null) 'toDate.month': ['${toDate_month}'],
      if (toDate_year != null) 'toDate.year': ['${toDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/stats/index';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetCustomerIndexStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get the query statistics for customer.
  ///
  /// **Note:** This API requires a standard end user account to execute.
  ///
  /// Request parameters:
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetCustomerQueryStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetCustomerQueryStatsResponse> getQuery({
    core.int? fromDate_day,
    core.int? fromDate_month,
    core.int? fromDate_year,
    core.int? toDate_day,
    core.int? toDate_month,
    core.int? toDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fromDate_day != null) 'fromDate.day': ['${fromDate_day}'],
      if (fromDate_month != null) 'fromDate.month': ['${fromDate_month}'],
      if (fromDate_year != null) 'fromDate.year': ['${fromDate_year}'],
      if (toDate_day != null) 'toDate.day': ['${toDate_day}'],
      if (toDate_month != null) 'toDate.month': ['${toDate_month}'],
      if (toDate_year != null) 'toDate.year': ['${toDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/stats/query';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetCustomerQueryStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get search application stats for customer.
  ///
  /// **Note:** This API requires a standard end user account to execute.
  ///
  /// Request parameters:
  ///
  /// [endDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [endDate_month] - Month of date. Must be from 1 to 12.
  ///
  /// [endDate_year] - Year of date. Must be from 1 to 9999.
  ///
  /// [startDate_day] - Day of month. Must be from 1 to 31 and valid for the
  /// year and month.
  ///
  /// [startDate_month] - Month of date. Must be from 1 to 12.
  ///
  /// [startDate_year] - Year of date. Must be from 1 to 9999.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetCustomerSearchApplicationStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetCustomerSearchApplicationStatsResponse> getSearchapplication({
    core.int? endDate_day,
    core.int? endDate_month,
    core.int? endDate_year,
    core.int? startDate_day,
    core.int? startDate_month,
    core.int? startDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endDate_day != null) 'endDate.day': ['${endDate_day}'],
      if (endDate_month != null) 'endDate.month': ['${endDate_month}'],
      if (endDate_year != null) 'endDate.year': ['${endDate_year}'],
      if (startDate_day != null) 'startDate.day': ['${startDate_day}'],
      if (startDate_month != null) 'startDate.month': ['${startDate_month}'],
      if (startDate_year != null) 'startDate.year': ['${startDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/stats/searchapplication';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetCustomerSearchApplicationStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get the # of search sessions, % of successful sessions with a click query
  /// statistics for customer.
  ///
  /// **Note:** This API requires a standard end user account to execute.
  ///
  /// Request parameters:
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetCustomerSessionStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetCustomerSessionStatsResponse> getSession({
    core.int? fromDate_day,
    core.int? fromDate_month,
    core.int? fromDate_year,
    core.int? toDate_day,
    core.int? toDate_month,
    core.int? toDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fromDate_day != null) 'fromDate.day': ['${fromDate_day}'],
      if (fromDate_month != null) 'fromDate.month': ['${fromDate_month}'],
      if (fromDate_year != null) 'fromDate.year': ['${fromDate_year}'],
      if (toDate_day != null) 'toDate.day': ['${toDate_day}'],
      if (toDate_month != null) 'toDate.month': ['${toDate_month}'],
      if (toDate_year != null) 'toDate.year': ['${toDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/stats/session';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetCustomerSessionStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Get the users statistics for customer.
  ///
  /// **Note:** This API requires a standard end user account to execute.
  ///
  /// Request parameters:
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetCustomerUserStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetCustomerUserStatsResponse> getUser({
    core.int? fromDate_day,
    core.int? fromDate_month,
    core.int? fromDate_year,
    core.int? toDate_day,
    core.int? toDate_month,
    core.int? toDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fromDate_day != null) 'fromDate.day': ['${fromDate_day}'],
      if (fromDate_month != null) 'fromDate.month': ['${fromDate_month}'],
      if (fromDate_year != null) 'fromDate.year': ['${fromDate_year}'],
      if (toDate_day != null) 'toDate.day': ['${toDate_day}'],
      if (toDate_month != null) 'toDate.month': ['${toDate_month}'],
      if (toDate_year != null) 'toDate.year': ['${toDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/stats/user';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetCustomerUserStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class StatsIndexResource {
  final commons.ApiRequester _requester;

  StatsIndexDatasourcesResource get datasources =>
      StatsIndexDatasourcesResource(_requester);

  StatsIndexResource(commons.ApiRequester client) : _requester = client;
}

class StatsIndexDatasourcesResource {
  final commons.ApiRequester _requester;

  StatsIndexDatasourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets indexed item statistics for a single data source.
  ///
  /// **Note:** This API requires a standard end user account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource id of the data source to retrieve statistics for, in
  /// the following format: "datasources/{source_id}"
  /// Value must have pattern `^datasources/\[^/\]+$`.
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
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
  async.Future<GetDataSourceIndexStatsResponse> get(
    core.String name, {
    core.int? fromDate_day,
    core.int? fromDate_month,
    core.int? fromDate_year,
    core.int? toDate_day,
    core.int? toDate_month,
    core.int? toDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fromDate_day != null) 'fromDate.day': ['${fromDate_day}'],
      if (fromDate_month != null) 'fromDate.month': ['${fromDate_month}'],
      if (fromDate_year != null) 'fromDate.year': ['${fromDate_year}'],
      if (toDate_day != null) 'toDate.day': ['${toDate_day}'],
      if (toDate_month != null) 'toDate.month': ['${toDate_month}'],
      if (toDate_year != null) 'toDate.year': ['${toDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/stats/index/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetDataSourceIndexStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class StatsQueryResource {
  final commons.ApiRequester _requester;

  StatsQuerySearchapplicationsResource get searchapplications =>
      StatsQuerySearchapplicationsResource(_requester);

  StatsQueryResource(commons.ApiRequester client) : _requester = client;
}

class StatsQuerySearchapplicationsResource {
  final commons.ApiRequester _requester;

  StatsQuerySearchapplicationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the query statistics for search application.
  ///
  /// **Note:** This API requires a standard end user account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource id of the search application query stats, in the
  /// following format: searchapplications/{application_id}
  /// Value must have pattern `^searchapplications/\[^/\]+$`.
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetSearchApplicationQueryStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetSearchApplicationQueryStatsResponse> get(
    core.String name, {
    core.int? fromDate_day,
    core.int? fromDate_month,
    core.int? fromDate_year,
    core.int? toDate_day,
    core.int? toDate_month,
    core.int? toDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fromDate_day != null) 'fromDate.day': ['${fromDate_day}'],
      if (fromDate_month != null) 'fromDate.month': ['${fromDate_month}'],
      if (fromDate_year != null) 'fromDate.year': ['${fromDate_year}'],
      if (toDate_day != null) 'toDate.day': ['${toDate_day}'],
      if (toDate_month != null) 'toDate.month': ['${toDate_month}'],
      if (toDate_year != null) 'toDate.year': ['${toDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/stats/query/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetSearchApplicationQueryStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class StatsSessionResource {
  final commons.ApiRequester _requester;

  StatsSessionSearchapplicationsResource get searchapplications =>
      StatsSessionSearchapplicationsResource(_requester);

  StatsSessionResource(commons.ApiRequester client) : _requester = client;
}

class StatsSessionSearchapplicationsResource {
  final commons.ApiRequester _requester;

  StatsSessionSearchapplicationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the # of search sessions, % of successful sessions with a click query
  /// statistics for search application.
  ///
  /// **Note:** This API requires a standard end user account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource id of the search application session stats, in the
  /// following format: searchapplications/{application_id}
  /// Value must have pattern `^searchapplications/\[^/\]+$`.
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetSearchApplicationSessionStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetSearchApplicationSessionStatsResponse> get(
    core.String name, {
    core.int? fromDate_day,
    core.int? fromDate_month,
    core.int? fromDate_year,
    core.int? toDate_day,
    core.int? toDate_month,
    core.int? toDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fromDate_day != null) 'fromDate.day': ['${fromDate_day}'],
      if (fromDate_month != null) 'fromDate.month': ['${fromDate_month}'],
      if (fromDate_year != null) 'fromDate.year': ['${fromDate_year}'],
      if (toDate_day != null) 'toDate.day': ['${toDate_day}'],
      if (toDate_month != null) 'toDate.month': ['${toDate_month}'],
      if (toDate_year != null) 'toDate.year': ['${toDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/stats/session/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetSearchApplicationSessionStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class StatsUserResource {
  final commons.ApiRequester _requester;

  StatsUserSearchapplicationsResource get searchapplications =>
      StatsUserSearchapplicationsResource(_requester);

  StatsUserResource(commons.ApiRequester client) : _requester = client;
}

class StatsUserSearchapplicationsResource {
  final commons.ApiRequester _requester;

  StatsUserSearchapplicationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Get the users statistics for search application.
  ///
  /// **Note:** This API requires a standard end user account to execute.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource id of the search application session stats, in the
  /// following format: searchapplications/{application_id}
  /// Value must have pattern `^searchapplications/\[^/\]+$`.
  ///
  /// [fromDate_day] - Day of month. Must be from 1 to 31 and valid for the year
  /// and month.
  ///
  /// [fromDate_month] - Month of date. Must be from 1 to 12.
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
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetSearchApplicationUserStatsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetSearchApplicationUserStatsResponse> get(
    core.String name, {
    core.int? fromDate_day,
    core.int? fromDate_month,
    core.int? fromDate_year,
    core.int? toDate_day,
    core.int? toDate_month,
    core.int? toDate_year,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fromDate_day != null) 'fromDate.day': ['${fromDate_day}'],
      if (fromDate_month != null) 'fromDate.month': ['${fromDate_month}'],
      if (fromDate_year != null) 'fromDate.year': ['${fromDate_year}'],
      if (toDate_day != null) 'toDate.day': ['${toDate_day}'],
      if (toDate_month != null) 'toDate.month': ['${toDate_month}'],
      if (toDate_year != null) 'toDate.year': ['${toDate_year}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/stats/user/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetSearchApplicationUserStatsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class V1Resource {
  final commons.ApiRequester _requester;

  V1Resource(commons.ApiRequester client) : _requester = client;

  /// Enables `third party` support in Google Cloud Search.
  ///
  /// **Note:** This API requires an admin account to execute.
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
  async.Future<Operation> initializeCustomer(
    InitializeCustomerRequest request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1:initializeCustomer';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Represents the settings for Cloud audit logging
class AuditLoggingSettings {
  /// Indicates whether audit logging is on/off for admin activity read APIs
  /// i.e. Get/List DataSources, Get/List SearchApplications etc.
  core.bool? logAdminReadActions;

  /// Indicates whether audit logging is on/off for data access read APIs i.e.
  /// ListItems, GetItem etc.
  core.bool? logDataReadActions;

  /// Indicates whether audit logging is on/off for data access write APIs i.e.
  /// IndexItem etc.
  core.bool? logDataWriteActions;

  /// The resource name of the GCP Project to store audit logs.
  ///
  /// Cloud audit logging will be enabled after project_name has been updated
  /// through CustomerService. Format: projects/{project_id}
  core.String? project;

  AuditLoggingSettings({
    this.logAdminReadActions,
    this.logDataReadActions,
    this.logDataWriteActions,
    this.project,
  });

  AuditLoggingSettings.fromJson(core.Map _json)
      : this(
          logAdminReadActions: _json.containsKey('logAdminReadActions')
              ? _json['logAdminReadActions'] as core.bool
              : null,
          logDataReadActions: _json.containsKey('logDataReadActions')
              ? _json['logDataReadActions'] as core.bool
              : null,
          logDataWriteActions: _json.containsKey('logDataWriteActions')
              ? _json['logDataWriteActions'] as core.bool
              : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (logAdminReadActions != null)
          'logAdminReadActions': logAdminReadActions!,
        if (logDataReadActions != null)
          'logDataReadActions': logDataReadActions!,
        if (logDataWriteActions != null)
          'logDataWriteActions': logDataWriteActions!,
        if (project != null) 'project': project!,
      };
}

/// Used to provide a search operator for boolean properties.
///
/// This is optional. Search operators let users restrict the query to specific
/// fields relevant to the type of item being searched.
class BooleanOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// boolean property.
  ///
  /// For example, if operatorName is *closed* and the property's name is
  /// *isClosed*, then queries like *closed:\<value\>* show results only where
  /// the value of the property named *isClosed* matches *\<value\>*. By
  /// contrast, a search that uses the same *\<value\>* without an operator
  /// returns all items where *\<value\>* matches the value of any String
  /// properties or text within the content field for the item. The operator
  /// name can only contain lowercase letters (a-z). The maximum length is 32
  /// characters.
  core.String? operatorName;

  BooleanOperatorOptions({
    this.operatorName,
  });

  BooleanOperatorOptions.fromJson(core.Map _json)
      : this(
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorName != null) 'operatorName': operatorName!,
      };
}

/// Options for boolean properties.
class BooleanPropertyOptions {
  /// If set, describes how the boolean should be used as a search operator.
  BooleanOperatorOptions? operatorOptions;

  BooleanPropertyOptions({
    this.operatorOptions,
  });

  BooleanPropertyOptions.fromJson(core.Map _json)
      : this(
          operatorOptions: _json.containsKey('operatorOptions')
              ? BooleanOperatorOptions.fromJson(_json['operatorOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorOptions != null) 'operatorOptions': operatorOptions!,
      };
}

class CheckAccessResponse {
  /// Returns true if principal has access.
  ///
  /// Returns false otherwise.
  core.bool? hasAccess;

  CheckAccessResponse({
    this.hasAccess,
  });

  CheckAccessResponse.fromJson(core.Map _json)
      : this(
          hasAccess: _json.containsKey('hasAccess')
              ? _json['hasAccess'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasAccess != null) 'hasAccess': hasAccess!,
      };
}

class CompositeFilter {
  /// The logic operator of the sub filter.
  /// Possible string values are:
  /// - "AND" : Logical operators, which can only be applied to sub filters.
  /// - "OR"
  /// - "NOT" : NOT can only be applied on a single sub filter.
  core.String? logicOperator;

  /// Sub filters.
  core.List<Filter>? subFilters;

  CompositeFilter({
    this.logicOperator,
    this.subFilters,
  });

  CompositeFilter.fromJson(core.Map _json)
      : this(
          logicOperator: _json.containsKey('logicOperator')
              ? _json['logicOperator'] as core.String
              : null,
          subFilters: _json.containsKey('subFilters')
              ? (_json['subFilters'] as core.List)
                  .map((value) => Filter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (logicOperator != null) 'logicOperator': logicOperator!,
        if (subFilters != null) 'subFilters': subFilters!,
      };
}

/// A named attribute associated with an item which can be used for influencing
/// the ranking of the item based on the context in the request.
class ContextAttribute {
  /// The name of the attribute.
  ///
  /// It should not be empty. The maximum length is 32 characters. The name must
  /// start with a letter and can only contain letters (A-Z, a-z) or numbers
  /// (0-9). The name will be normalized (lower-cased) before being matched.
  core.String? name;

  /// Text values of the attribute.
  ///
  /// The maximum number of elements is 10. The maximum length of an element in
  /// the array is 32 characters. The value will be normalized (lower-cased)
  /// before being matched.
  core.List<core.String>? values;

  ContextAttribute({
    this.name,
    this.values,
  });

  ContextAttribute.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (values != null) 'values': values!,
      };
}

/// Aggregation of items by status code as of the specified date.
class CustomerIndexStats {
  /// Date for which statistics were calculated.
  Date? date;

  /// Number of items aggregrated by status code.
  core.List<ItemCountByStatus>? itemCountByStatus;

  CustomerIndexStats({
    this.date,
    this.itemCountByStatus,
  });

  CustomerIndexStats.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          itemCountByStatus: _json.containsKey('itemCountByStatus')
              ? (_json['itemCountByStatus'] as core.List)
                  .map((value) => ItemCountByStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (itemCountByStatus != null) 'itemCountByStatus': itemCountByStatus!,
      };
}

class CustomerQueryStats {
  /// Date for which query stats were calculated.
  ///
  /// Stats calculated on the next day close to midnight are returned.
  Date? date;
  core.List<QueryCountByStatus>? queryCountByStatus;

  CustomerQueryStats({
    this.date,
    this.queryCountByStatus,
  });

  CustomerQueryStats.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          queryCountByStatus: _json.containsKey('queryCountByStatus')
              ? (_json['queryCountByStatus'] as core.List)
                  .map((value) => QueryCountByStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (queryCountByStatus != null)
          'queryCountByStatus': queryCountByStatus!,
      };
}

/// Search application stats for a customer for the given date.
class CustomerSearchApplicationStats {
  /// The count of search applications for the date.
  core.String? count;

  /// Date for which search application stats were calculated.
  Date? date;

  CustomerSearchApplicationStats({
    this.count,
    this.date,
  });

  CustomerSearchApplicationStats.fromJson(core.Map _json)
      : this(
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (date != null) 'date': date!,
      };
}

class CustomerSessionStats {
  /// Date for which session stats were calculated.
  ///
  /// Stats are calculated on the following day, close to midnight PST, and then
  /// returned.
  Date? date;

  /// The count of search sessions on the day
  core.String? searchSessionsCount;

  CustomerSessionStats({
    this.date,
    this.searchSessionsCount,
  });

  CustomerSessionStats.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          searchSessionsCount: _json.containsKey('searchSessionsCount')
              ? _json['searchSessionsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (searchSessionsCount != null)
          'searchSessionsCount': searchSessionsCount!,
      };
}

/// Represents settings at a customer level.
class CustomerSettings {
  /// Audit Logging settings for the customer.
  ///
  /// If update_mask is empty then this field will be updated based on
  /// UpdateCustomerSettings request.
  AuditLoggingSettings? auditLoggingSettings;

  /// VPC SC settings for the customer.
  ///
  /// If update_mask is empty then this field will be updated based on
  /// UpdateCustomerSettings request.
  VPCSettings? vpcSettings;

  CustomerSettings({
    this.auditLoggingSettings,
    this.vpcSettings,
  });

  CustomerSettings.fromJson(core.Map _json)
      : this(
          auditLoggingSettings: _json.containsKey('auditLoggingSettings')
              ? AuditLoggingSettings.fromJson(_json['auditLoggingSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vpcSettings: _json.containsKey('vpcSettings')
              ? VPCSettings.fromJson(
                  _json['vpcSettings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLoggingSettings != null)
          'auditLoggingSettings': auditLoggingSettings!,
        if (vpcSettings != null) 'vpcSettings': vpcSettings!,
      };
}

class CustomerUserStats {
  /// Date for which session stats were calculated.
  ///
  /// Stats calculated on the next day close to midnight are returned.
  Date? date;

  /// The count of unique active users in the past one day
  core.String? oneDayActiveUsersCount;

  /// The count of unique active users in the past seven days
  core.String? sevenDaysActiveUsersCount;

  /// The count of unique active users in the past thirty days
  core.String? thirtyDaysActiveUsersCount;

  CustomerUserStats({
    this.date,
    this.oneDayActiveUsersCount,
    this.sevenDaysActiveUsersCount,
    this.thirtyDaysActiveUsersCount,
  });

  CustomerUserStats.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          oneDayActiveUsersCount: _json.containsKey('oneDayActiveUsersCount')
              ? _json['oneDayActiveUsersCount'] as core.String
              : null,
          sevenDaysActiveUsersCount:
              _json.containsKey('sevenDaysActiveUsersCount')
                  ? _json['sevenDaysActiveUsersCount'] as core.String
                  : null,
          thirtyDaysActiveUsersCount:
              _json.containsKey('thirtyDaysActiveUsersCount')
                  ? _json['thirtyDaysActiveUsersCount'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (oneDayActiveUsersCount != null)
          'oneDayActiveUsersCount': oneDayActiveUsersCount!,
        if (sevenDaysActiveUsersCount != null)
          'sevenDaysActiveUsersCount': sevenDaysActiveUsersCount!,
        if (thirtyDaysActiveUsersCount != null)
          'thirtyDaysActiveUsersCount': thirtyDaysActiveUsersCount!,
      };
}

/// Datasource is a logical namespace for items to be indexed.
///
/// All items must belong to a datasource. This is the prerequisite before items
/// can be indexed into Cloud Search.
class DataSource {
  /// If true, sets the datasource to read-only mode.
  ///
  /// In read-only mode, the Indexing API rejects any requests to index or
  /// delete items in this source. Enabling read-only mode does not stop the
  /// processing of previously accepted data.
  core.bool? disableModifications;

  /// Disable serving any search or assist results.
  core.bool? disableServing;

  /// Display name of the datasource The maximum length is 300 characters.
  ///
  /// Required.
  core.String? displayName;

  /// List of service accounts that have indexing access.
  core.List<core.String>? indexingServiceAccounts;

  /// This field restricts visibility to items at the datasource level.
  ///
  /// Items within the datasource are restricted to the union of users and
  /// groups included in this field. Note that, this does not ensure access to a
  /// specific item, as users need to have ACL permissions on the contained
  /// items. This ensures a high level access on the entire datasource, and that
  /// the individual items are not shared outside this visibility.
  core.List<GSuitePrincipal>? itemsVisibility;

  /// Name of the datasource resource.
  ///
  /// Format: datasources/{source_id}. The name is ignored when creating a
  /// datasource.
  core.String? name;

  /// IDs of the Long Running Operations (LROs) currently running for this
  /// schema.
  core.List<core.String>? operationIds;

  /// Can a user request to get thumbnail URI for Items indexed in this data
  /// source.
  core.bool? returnThumbnailUrls;

  /// A short name or alias for the source.
  ///
  /// This value will be used to match the 'source' operator. For example, if
  /// the short name is *\<value\>* then queries like *source:\<value\>* will
  /// only return results for this source. The value must be unique across all
  /// datasources. The value must only contain alphanumeric characters
  /// (a-zA-Z0-9). The value cannot start with 'google' and cannot be one of the
  /// following: mail, gmail, docs, drive, groups, sites, calendar, hangouts,
  /// gplus, keep, people, teams. Its maximum length is 32 characters.
  core.String? shortName;

  DataSource({
    this.disableModifications,
    this.disableServing,
    this.displayName,
    this.indexingServiceAccounts,
    this.itemsVisibility,
    this.name,
    this.operationIds,
    this.returnThumbnailUrls,
    this.shortName,
  });

  DataSource.fromJson(core.Map _json)
      : this(
          disableModifications: _json.containsKey('disableModifications')
              ? _json['disableModifications'] as core.bool
              : null,
          disableServing: _json.containsKey('disableServing')
              ? _json['disableServing'] as core.bool
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          indexingServiceAccounts: _json.containsKey('indexingServiceAccounts')
              ? (_json['indexingServiceAccounts'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          itemsVisibility: _json.containsKey('itemsVisibility')
              ? (_json['itemsVisibility'] as core.List)
                  .map((value) => GSuitePrincipal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          operationIds: _json.containsKey('operationIds')
              ? (_json['operationIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          returnThumbnailUrls: _json.containsKey('returnThumbnailUrls')
              ? _json['returnThumbnailUrls'] as core.bool
              : null,
          shortName: _json.containsKey('shortName')
              ? _json['shortName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableModifications != null)
          'disableModifications': disableModifications!,
        if (disableServing != null) 'disableServing': disableServing!,
        if (displayName != null) 'displayName': displayName!,
        if (indexingServiceAccounts != null)
          'indexingServiceAccounts': indexingServiceAccounts!,
        if (itemsVisibility != null) 'itemsVisibility': itemsVisibility!,
        if (name != null) 'name': name!,
        if (operationIds != null) 'operationIds': operationIds!,
        if (returnThumbnailUrls != null)
          'returnThumbnailUrls': returnThumbnailUrls!,
        if (shortName != null) 'shortName': shortName!,
      };
}

/// Aggregation of items by status code as of the specified date.
class DataSourceIndexStats {
  /// Date for which index stats were calculated.
  ///
  /// If the date of request is not the current date then stats calculated on
  /// the next day are returned. Stats are calculated close to mid night in this
  /// case. If date of request is current date, then real time stats are
  /// returned.
  Date? date;

  /// Number of items aggregrated by status code.
  core.List<ItemCountByStatus>? itemCountByStatus;

  DataSourceIndexStats({
    this.date,
    this.itemCountByStatus,
  });

  DataSourceIndexStats.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          itemCountByStatus: _json.containsKey('itemCountByStatus')
              ? (_json['itemCountByStatus'] as core.List)
                  .map((value) => ItemCountByStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (itemCountByStatus != null) 'itemCountByStatus': itemCountByStatus!,
      };
}

/// Restriction on Datasource.
class DataSourceRestriction {
  /// Filter options restricting the results.
  ///
  /// If multiple filters are present, they are grouped by object type before
  /// joining. Filters with the same object type are joined conjunctively, then
  /// the resulting expressions are joined disjunctively. The maximum number of
  /// elements is 20. NOTE: Suggest API supports only few filters at the moment:
  /// "objecttype", "type" and "mimetype". For now, schema specific filters
  /// cannot be used to filter suggestions.
  core.List<FilterOptions>? filterOptions;

  /// The source of restriction.
  Source? source;

  DataSourceRestriction({
    this.filterOptions,
    this.source,
  });

  DataSourceRestriction.fromJson(core.Map _json)
      : this(
          filterOptions: _json.containsKey('filterOptions')
              ? (_json['filterOptions'] as core.List)
                  .map((value) => FilterOptions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filterOptions != null) 'filterOptions': filterOptions!,
        if (source != null) 'source': source!,
      };
}

/// Represents a whole calendar date, for example a date of birth.
///
/// The time of day and time zone are either specified elsewhere or are not
/// significant. The date is relative to the
/// [Proleptic Gregorian Calendar](https://en.wikipedia.org/wiki/Proleptic_Gregorian_calendar).
/// The date must be a valid calendar date between the year 1 and 9999.
class Date {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month.
  core.int? day;

  /// Month of date.
  ///
  /// Must be from 1 to 12.
  core.int? month;

  /// Year of date.
  ///
  /// Must be from 1 to 9999.
  core.int? year;

  Date({
    this.day,
    this.month,
    this.year,
  });

  Date.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Provides a search operator for date properties.
///
/// Search operators let users restrict the query to specific fields relevant to
/// the type of item being searched.
///
/// Optional.
class DateOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// date property using the greater-than operator.
  ///
  /// For example, if greaterThanOperatorName is *closedafter* and the
  /// property's name is *closeDate*, then queries like *closedafter:\<value\>*
  /// show results only where the value of the property named *closeDate* is
  /// later than *\<value\>*. The operator name can only contain lowercase
  /// letters (a-z). The maximum length is 32 characters.
  core.String? greaterThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// date property using the less-than operator.
  ///
  /// For example, if lessThanOperatorName is *closedbefore* and the property's
  /// name is *closeDate*, then queries like *closedbefore:\<value\>* show
  /// results only where the value of the property named *closeDate* is earlier
  /// than *\<value\>*. The operator name can only contain lowercase letters
  /// (a-z). The maximum length is 32 characters.
  core.String? lessThanOperatorName;

  /// Indicates the actual string required in the query in order to isolate the
  /// date property.
  ///
  /// For example, suppose an issue tracking schema object has a property named
  /// *closeDate* that specifies an operator with an operatorName of *closedon*.
  /// For searches on that data, queries like *closedon:\<value\>* show results
  /// only where the value of the *closeDate* property matches *\<value\>*. By
  /// contrast, a search that uses the same *\<value\>* without an operator
  /// returns all items where *\<value\>* matches the value of any String
  /// properties or text within the content field for the indexed datasource.
  /// The operator name can only contain lowercase letters (a-z). The maximum
  /// length is 32 characters.
  core.String? operatorName;

  DateOperatorOptions({
    this.greaterThanOperatorName,
    this.lessThanOperatorName,
    this.operatorName,
  });

  DateOperatorOptions.fromJson(core.Map _json)
      : this(
          greaterThanOperatorName: _json.containsKey('greaterThanOperatorName')
              ? _json['greaterThanOperatorName'] as core.String
              : null,
          lessThanOperatorName: _json.containsKey('lessThanOperatorName')
              ? _json['lessThanOperatorName'] as core.String
              : null,
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (greaterThanOperatorName != null)
          'greaterThanOperatorName': greaterThanOperatorName!,
        if (lessThanOperatorName != null)
          'lessThanOperatorName': lessThanOperatorName!,
        if (operatorName != null) 'operatorName': operatorName!,
      };
}

/// Options for date properties.
class DatePropertyOptions {
  /// If set, describes how the date should be used as a search operator.
  DateOperatorOptions? operatorOptions;

  DatePropertyOptions({
    this.operatorOptions,
  });

  DatePropertyOptions.fromJson(core.Map _json)
      : this(
          operatorOptions: _json.containsKey('operatorOptions')
              ? DateOperatorOptions.fromJson(_json['operatorOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorOptions != null) 'operatorOptions': operatorOptions!,
      };
}

/// List of date values.
class DateValues {
  core.List<Date>? values;

  DateValues({
    this.values,
  });

  DateValues.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => Date.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Shared request debug options for all cloudsearch RPC methods.
class DebugOptions {
  /// If you are asked by Google to help with debugging, set this field.
  ///
  /// Otherwise, ignore this field.
  core.bool? enableDebugging;

  DebugOptions({
    this.enableDebugging,
  });

  DebugOptions.fromJson(core.Map _json)
      : this(
          enableDebugging: _json.containsKey('enableDebugging')
              ? _json['enableDebugging'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableDebugging != null) 'enableDebugging': enableDebugging!,
      };
}

class DeleteQueueItemsRequest {
  /// Name of connector making this call.
  ///
  /// Format: datasources/{source_id}/connectors/{ID}
  core.String? connectorName;

  /// Common debug options.
  DebugOptions? debugOptions;

  /// Name of a queue to delete items from.
  core.String? queue;

  DeleteQueueItemsRequest({
    this.connectorName,
    this.debugOptions,
    this.queue,
  });

  DeleteQueueItemsRequest.fromJson(core.Map _json)
      : this(
          connectorName: _json.containsKey('connectorName')
              ? _json['connectorName'] as core.String
              : null,
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          queue:
              _json.containsKey('queue') ? _json['queue'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorName != null) 'connectorName': connectorName!,
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (queue != null) 'queue': queue!,
      };
}

/// A reference to a top-level property within the object that should be
/// displayed in search results.
///
/// The values of the chosen properties is displayed in the search results along
/// with the display label for that property if one is specified. If a display
/// label is not specified, only the values is shown.
class DisplayedProperty {
  /// The name of the top-level property as defined in a property definition for
  /// the object.
  ///
  /// If the name is not a defined property in the schema, an error is given
  /// when attempting to update the schema.
  core.String? propertyName;

  DisplayedProperty({
    this.propertyName,
  });

  DisplayedProperty.fromJson(core.Map _json)
      : this(
          propertyName: _json.containsKey('propertyName')
              ? _json['propertyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (propertyName != null) 'propertyName': propertyName!,
      };
}

/// Used to provide a search operator for double properties.
///
/// This is optional. Search operators let users restrict the query to specific
/// fields relevant to the type of item being searched.
class DoubleOperatorOptions {
  /// Indicates the operator name required in the query in order to use the
  /// double property in sorting or as a facet.
  ///
  /// The operator name can only contain lowercase letters (a-z). The maximum
  /// length is 32 characters.
  core.String? operatorName;

  DoubleOperatorOptions({
    this.operatorName,
  });

  DoubleOperatorOptions.fromJson(core.Map _json)
      : this(
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorName != null) 'operatorName': operatorName!,
      };
}

/// Options for double properties.
class DoublePropertyOptions {
  /// If set, describes how the double should be used as a search operator.
  DoubleOperatorOptions? operatorOptions;

  DoublePropertyOptions({
    this.operatorOptions,
  });

  DoublePropertyOptions.fromJson(core.Map _json)
      : this(
          operatorOptions: _json.containsKey('operatorOptions')
              ? DoubleOperatorOptions.fromJson(_json['operatorOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorOptions != null) 'operatorOptions': operatorOptions!,
      };
}

/// List of double values.
class DoubleValues {
  core.List<core.double>? values;

  DoubleValues({
    this.values,
  });

  DoubleValues.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// A person's email address.
class EmailAddress {
  /// The email address.
  core.String? emailAddress;

  EmailAddress({
    this.emailAddress,
  });

  EmailAddress.fromJson(core.Map _json)
      : this(
          emailAddress: _json.containsKey('emailAddress')
              ? _json['emailAddress'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddress != null) 'emailAddress': emailAddress!,
      };
}

/// Used to provide a search operator for enum properties.
///
/// This is optional. Search operators let users restrict the query to specific
/// fields relevant to the type of item being searched. For example, if you
/// provide no operator for a *priority* enum property with possible values *p0*
/// and *p1*, a query that contains the term *p0* returns items that have *p0*
/// as the value of the *priority* property, as well as any items that contain
/// the string *p0* in other fields. If you provide an operator name for the
/// enum, such as *priority*, then search users can use that operator to refine
/// results to only items that have *p0* as this property's value, with the
/// query *priority:p0*.
class EnumOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// enum property.
  ///
  /// For example, if operatorName is *priority* and the property's name is
  /// *priorityVal*, then queries like *priority:\<value\>* show results only
  /// where the value of the property named *priorityVal* matches *\<value\>*.
  /// By contrast, a search that uses the same *\<value\>* without an operator
  /// returns all items where *\<value\>* matches the value of any String
  /// properties or text within the content field for the item. The operator
  /// name can only contain lowercase letters (a-z). The maximum length is 32
  /// characters.
  core.String? operatorName;

  EnumOperatorOptions({
    this.operatorName,
  });

  EnumOperatorOptions.fromJson(core.Map _json)
      : this(
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorName != null) 'operatorName': operatorName!,
      };
}

/// Options for enum properties, which allow you to define a restricted set of
/// strings to match user queries, set rankings for those string values, and
/// define an operator name to be paired with those strings so that users can
/// narrow results to only items with a specific value.
///
/// For example, for items in a request tracking system with priority
/// information, you could define *p0* as an allowable enum value and tie this
/// enum to the operator name *priority* so that search users could add
/// *priority:p0* to their query to restrict the set of results to only those
/// items indexed with the value *p0*.
class EnumPropertyOptions {
  /// If set, describes how the enum should be used as a search operator.
  EnumOperatorOptions? operatorOptions;

  /// Used to specify the ordered ranking for the enumeration that determines
  /// how the integer values provided in the possible EnumValuePairs are used to
  /// rank results.
  ///
  /// If specified, integer values must be provided for all possible
  /// EnumValuePair values given for this property. Can only be used if
  /// isRepeatable is false.
  /// Possible string values are:
  /// - "NO_ORDER" : There is no ranking order for the property. Results aren't
  /// adjusted by this property's value.
  /// - "ASCENDING" : This property is ranked in ascending order. Lower values
  /// indicate lower ranking.
  /// - "DESCENDING" : This property is ranked in descending order. Lower values
  /// indicate higher ranking.
  core.String? orderedRanking;

  /// The list of possible values for the enumeration property.
  ///
  /// All EnumValuePairs must provide a string value. If you specify an integer
  /// value for one EnumValuePair, then all possible EnumValuePairs must provide
  /// an integer value. Both the string value and integer value must be unique
  /// over all possible values. Once set, possible values cannot be removed or
  /// modified. If you supply an ordered ranking and think you might insert
  /// additional enum values in the future, leave gaps in the initial integer
  /// values to allow adding a value in between previously registered values.
  /// The maximum number of elements is 100.
  core.List<EnumValuePair>? possibleValues;

  EnumPropertyOptions({
    this.operatorOptions,
    this.orderedRanking,
    this.possibleValues,
  });

  EnumPropertyOptions.fromJson(core.Map _json)
      : this(
          operatorOptions: _json.containsKey('operatorOptions')
              ? EnumOperatorOptions.fromJson(_json['operatorOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          orderedRanking: _json.containsKey('orderedRanking')
              ? _json['orderedRanking'] as core.String
              : null,
          possibleValues: _json.containsKey('possibleValues')
              ? (_json['possibleValues'] as core.List)
                  .map((value) => EnumValuePair.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorOptions != null) 'operatorOptions': operatorOptions!,
        if (orderedRanking != null) 'orderedRanking': orderedRanking!,
        if (possibleValues != null) 'possibleValues': possibleValues!,
      };
}

/// The enumeration value pair defines two things: a required string value and
/// an optional integer value.
///
/// The string value defines the necessary query term required to retrieve that
/// item, such as *p0* for a priority item. The integer value determines the
/// ranking of that string value relative to other enumerated values for the
/// same property. For example, you might associate *p0* with *0* and define
/// another enum pair such as *p1* and *1*. You must use the integer value in
/// combination with ordered ranking to set the ranking of a given value
/// relative to other enumerated values for the same property name. Here, a
/// ranking order of DESCENDING for *priority* properties results in a ranking
/// boost for items indexed with a value of *p0* compared to items indexed with
/// a value of *p1*. Without a specified ranking order, the integer value has no
/// effect on item ranking.
class EnumValuePair {
  /// The integer value of the EnumValuePair which must be non-negative.
  ///
  /// Optional.
  core.int? integerValue;

  /// The string value of the EnumValuePair.
  ///
  /// The maximum length is 32 characters.
  core.String? stringValue;

  EnumValuePair({
    this.integerValue,
    this.stringValue,
  });

  EnumValuePair.fromJson(core.Map _json)
      : this(
          integerValue: _json.containsKey('integerValue')
              ? _json['integerValue'] as core.int
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (integerValue != null) 'integerValue': integerValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// List of enum values.
class EnumValues {
  /// The maximum allowable length for string values is 32 characters.
  core.List<core.String>? values;

  EnumValues({
    this.values,
  });

  EnumValues.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Error information about the response.
class ErrorInfo {
  core.List<ErrorMessage>? errorMessages;

  ErrorInfo({
    this.errorMessages,
  });

  ErrorInfo.fromJson(core.Map _json)
      : this(
          errorMessages: _json.containsKey('errorMessages')
              ? (_json['errorMessages'] as core.List)
                  .map((value) => ErrorMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessages != null) 'errorMessages': errorMessages!,
      };
}

/// Error message per source response.
class ErrorMessage {
  core.String? errorMessage;
  Source? source;

  ErrorMessage({
    this.errorMessage,
    this.source,
  });

  ErrorMessage.fromJson(core.Map _json)
      : this(
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (source != null) 'source': source!,
      };
}

/// A bucket in a facet is the basic unit of operation.
///
/// A bucket can comprise either a single value OR a contiguous range of values,
/// depending on the type of the field bucketed. FacetBucket is currently used
/// only for returning the response object.
class FacetBucket {
  /// Number of results that match the bucket value.
  ///
  /// Counts are only returned for searches when count accuracy is ensured.
  /// Cloud Search does not guarantee facet counts for any query and facet
  /// counts might be present only intermittently, even for identical queries.
  /// Do not build dependencies on facet count existence; instead use facet ount
  /// percentages which are always returned.
  core.int? count;

  /// Percent of results that match the bucket value.
  ///
  /// The returned value is between (0-100\], and is rounded down to an integer
  /// if fractional. If the value is not explicitly returned, it represents a
  /// percentage value that rounds to 0. Percentages are returned for all
  /// searches, but are an estimate. Because percentages are always returned,
  /// you should render percentages instead of counts.
  core.int? percentage;
  Value? value;

  FacetBucket({
    this.count,
    this.percentage,
    this.value,
  });

  FacetBucket.fromJson(core.Map _json)
      : this(
          count: _json.containsKey('count') ? _json['count'] as core.int : null,
          percentage: _json.containsKey('percentage')
              ? _json['percentage'] as core.int
              : null,
          value: _json.containsKey('value')
              ? Value.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (percentage != null) 'percentage': percentage!,
        if (value != null) 'value': value!,
      };
}

/// Specifies operators to return facet results for.
///
/// There will be one FacetResult for every
/// source_name/object_type/operator_name combination.
class FacetOptions {
  /// Maximum number of facet buckets that should be returned for this facet.
  ///
  /// Defaults to 10. Maximum value is 100.
  core.int? numFacetBuckets;

  /// If object_type is set, only those objects of that type will be used to
  /// compute facets.
  ///
  /// If empty, then all objects will be used to compute facets.
  core.String? objectType;

  /// Name of the operator chosen for faceting.
  ///
  /// @see cloudsearch.SchemaPropertyOptions
  core.String? operatorName;

  /// Source name to facet on.
  ///
  /// Format: datasources/{source_id} If empty, all data sources will be used.
  core.String? sourceName;

  FacetOptions({
    this.numFacetBuckets,
    this.objectType,
    this.operatorName,
    this.sourceName,
  });

  FacetOptions.fromJson(core.Map _json)
      : this(
          numFacetBuckets: _json.containsKey('numFacetBuckets')
              ? _json['numFacetBuckets'] as core.int
              : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
          sourceName: _json.containsKey('sourceName')
              ? _json['sourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numFacetBuckets != null) 'numFacetBuckets': numFacetBuckets!,
        if (objectType != null) 'objectType': objectType!,
        if (operatorName != null) 'operatorName': operatorName!,
        if (sourceName != null) 'sourceName': sourceName!,
      };
}

/// Source specific facet response
class FacetResult {
  /// FacetBuckets for values in response containing at least a single result.
  core.List<FacetBucket>? buckets;

  /// Object type for which facet results are returned.
  ///
  /// Can be empty.
  core.String? objectType;

  /// Name of the operator chosen for faceting.
  ///
  /// @see cloudsearch.SchemaPropertyOptions
  core.String? operatorName;

  /// Source name for which facet results are returned.
  ///
  /// Will not be empty.
  core.String? sourceName;

  FacetResult({
    this.buckets,
    this.objectType,
    this.operatorName,
    this.sourceName,
  });

  FacetResult.fromJson(core.Map _json)
      : this(
          buckets: _json.containsKey('buckets')
              ? (_json['buckets'] as core.List)
                  .map((value) => FacetBucket.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
          sourceName: _json.containsKey('sourceName')
              ? _json['sourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (buckets != null) 'buckets': buckets!,
        if (objectType != null) 'objectType': objectType!,
        if (operatorName != null) 'operatorName': operatorName!,
        if (sourceName != null) 'sourceName': sourceName!,
      };
}

class FieldViolation {
  /// Description of the error.
  core.String? description;

  /// Path of field with violation.
  core.String? field;

  FieldViolation({
    this.description,
    this.field,
  });

  FieldViolation.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (field != null) 'field': field!,
      };
}

/// A generic way of expressing filters in a query, which supports two
/// approaches: **1.
///
/// Setting a ValueFilter.** The name must match an operator_name defined in the
/// schema for your data source. **2. Setting a CompositeFilter.** The filters
/// are evaluated using the logical operator. The top-level operators can only
/// be either an AND or a NOT. AND can appear only at the top-most level. OR can
/// appear only under a top-level AND.
class Filter {
  CompositeFilter? compositeFilter;
  ValueFilter? valueFilter;

  Filter({
    this.compositeFilter,
    this.valueFilter,
  });

  Filter.fromJson(core.Map _json)
      : this(
          compositeFilter: _json.containsKey('compositeFilter')
              ? CompositeFilter.fromJson(_json['compositeFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueFilter: _json.containsKey('valueFilter')
              ? ValueFilter.fromJson(
                  _json['valueFilter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compositeFilter != null) 'compositeFilter': compositeFilter!,
        if (valueFilter != null) 'valueFilter': valueFilter!,
      };
}

/// Filter options to be applied on query.
class FilterOptions {
  /// Generic filter to restrict the search, such as `lang:en`, `site:xyz`.
  Filter? filter;

  /// If object_type is set, only objects of that type are returned.
  ///
  /// This should correspond to the name of the object that was registered
  /// within the definition of schema. The maximum length is 256 characters.
  core.String? objectType;

  FilterOptions({
    this.filter,
    this.objectType,
  });

  FilterOptions.fromJson(core.Map _json)
      : this(
          filter: _json.containsKey('filter')
              ? Filter.fromJson(
                  _json['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
        if (objectType != null) 'objectType': objectType!,
      };
}

/// Indicates which freshness property to use when adjusting search ranking for
/// an item.
///
/// Fresher, more recent dates indicate higher quality. Use the freshness option
/// property that best works with your data. For fileshare documents, last
/// modified time is most relevant. For calendar event data, the time when the
/// event occurs is a more relevant freshness indicator. In this way, calendar
/// events that occur closer to the time of the search query are considered
/// higher quality and ranked accordingly.
class FreshnessOptions {
  /// The duration after which an object should be considered stale.
  ///
  /// The default value is 180 days (in seconds).
  core.String? freshnessDuration;

  /// This property indicates the freshness level of the object in the index.
  ///
  /// If set, this property must be a top-level property within the property
  /// definitions and it must be a timestamp type or date type. Otherwise, the
  /// Indexing API uses updateTime as the freshness indicator. The maximum
  /// length is 256 characters. When a property is used to calculate freshness,
  /// the value defaults to 2 years from the current time.
  core.String? freshnessProperty;

  FreshnessOptions({
    this.freshnessDuration,
    this.freshnessProperty,
  });

  FreshnessOptions.fromJson(core.Map _json)
      : this(
          freshnessDuration: _json.containsKey('freshnessDuration')
              ? _json['freshnessDuration'] as core.String
              : null,
          freshnessProperty: _json.containsKey('freshnessProperty')
              ? _json['freshnessProperty'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (freshnessDuration != null) 'freshnessDuration': freshnessDuration!,
        if (freshnessProperty != null) 'freshnessProperty': freshnessProperty!,
      };
}

class GSuitePrincipal {
  /// This principal represents all users of the G Suite domain of the customer.
  core.bool? gsuiteDomain;

  /// This principal references a G Suite group account
  core.String? gsuiteGroupEmail;

  /// This principal references a G Suite user account
  core.String? gsuiteUserEmail;

  GSuitePrincipal({
    this.gsuiteDomain,
    this.gsuiteGroupEmail,
    this.gsuiteUserEmail,
  });

  GSuitePrincipal.fromJson(core.Map _json)
      : this(
          gsuiteDomain: _json.containsKey('gsuiteDomain')
              ? _json['gsuiteDomain'] as core.bool
              : null,
          gsuiteGroupEmail: _json.containsKey('gsuiteGroupEmail')
              ? _json['gsuiteGroupEmail'] as core.String
              : null,
          gsuiteUserEmail: _json.containsKey('gsuiteUserEmail')
              ? _json['gsuiteUserEmail'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gsuiteDomain != null) 'gsuiteDomain': gsuiteDomain!,
        if (gsuiteGroupEmail != null) 'gsuiteGroupEmail': gsuiteGroupEmail!,
        if (gsuiteUserEmail != null) 'gsuiteUserEmail': gsuiteUserEmail!,
      };
}

class GetCustomerIndexStatsResponse {
  /// Average item count for the given date range for which billing is done.
  core.String? averageIndexedItemCount;

  /// Summary of indexed item counts, one for each day in the requested range.
  core.List<CustomerIndexStats>? stats;

  GetCustomerIndexStatsResponse({
    this.averageIndexedItemCount,
    this.stats,
  });

  GetCustomerIndexStatsResponse.fromJson(core.Map _json)
      : this(
          averageIndexedItemCount: _json.containsKey('averageIndexedItemCount')
              ? _json['averageIndexedItemCount'] as core.String
              : null,
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => CustomerIndexStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageIndexedItemCount != null)
          'averageIndexedItemCount': averageIndexedItemCount!,
        if (stats != null) 'stats': stats!,
      };
}

class GetCustomerQueryStatsResponse {
  core.List<CustomerQueryStats>? stats;

  /// Total successful query count (status code 200) for the given date range.
  core.String? totalQueryCount;

  GetCustomerQueryStatsResponse({
    this.stats,
    this.totalQueryCount,
  });

  GetCustomerQueryStatsResponse.fromJson(core.Map _json)
      : this(
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => CustomerQueryStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalQueryCount: _json.containsKey('totalQueryCount')
              ? _json['totalQueryCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stats != null) 'stats': stats!,
        if (totalQueryCount != null) 'totalQueryCount': totalQueryCount!,
      };
}

/// Response format for search application stats for a customer.
class GetCustomerSearchApplicationStatsResponse {
  /// Average search application count for the given date range.
  core.String? averageSearchApplicationCount;

  /// Search application stats by date.
  core.List<CustomerSearchApplicationStats>? stats;

  GetCustomerSearchApplicationStatsResponse({
    this.averageSearchApplicationCount,
    this.stats,
  });

  GetCustomerSearchApplicationStatsResponse.fromJson(core.Map _json)
      : this(
          averageSearchApplicationCount:
              _json.containsKey('averageSearchApplicationCount')
                  ? _json['averageSearchApplicationCount'] as core.String
                  : null,
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => CustomerSearchApplicationStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageSearchApplicationCount != null)
          'averageSearchApplicationCount': averageSearchApplicationCount!,
        if (stats != null) 'stats': stats!,
      };
}

class GetCustomerSessionStatsResponse {
  core.List<CustomerSessionStats>? stats;

  GetCustomerSessionStatsResponse({
    this.stats,
  });

  GetCustomerSessionStatsResponse.fromJson(core.Map _json)
      : this(
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => CustomerSessionStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stats != null) 'stats': stats!,
      };
}

class GetCustomerUserStatsResponse {
  core.List<CustomerUserStats>? stats;

  GetCustomerUserStatsResponse({
    this.stats,
  });

  GetCustomerUserStatsResponse.fromJson(core.Map _json)
      : this(
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => CustomerUserStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stats != null) 'stats': stats!,
      };
}

class GetDataSourceIndexStatsResponse {
  /// Average item count for the given date range for which billing is done.
  core.String? averageIndexedItemCount;

  /// Summary of indexed item counts, one for each day in the requested range.
  core.List<DataSourceIndexStats>? stats;

  GetDataSourceIndexStatsResponse({
    this.averageIndexedItemCount,
    this.stats,
  });

  GetDataSourceIndexStatsResponse.fromJson(core.Map _json)
      : this(
          averageIndexedItemCount: _json.containsKey('averageIndexedItemCount')
              ? _json['averageIndexedItemCount'] as core.String
              : null,
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => DataSourceIndexStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (averageIndexedItemCount != null)
          'averageIndexedItemCount': averageIndexedItemCount!,
        if (stats != null) 'stats': stats!,
      };
}

/// Response format for getting query stats for a search application between
/// given dates.
class GetSearchApplicationQueryStatsResponse {
  /// Query stats per date for a search application.
  core.List<SearchApplicationQueryStats>? stats;

  /// Total successful query count (status code 200) for the given date range.
  core.String? totalQueryCount;

  GetSearchApplicationQueryStatsResponse({
    this.stats,
    this.totalQueryCount,
  });

  GetSearchApplicationQueryStatsResponse.fromJson(core.Map _json)
      : this(
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => SearchApplicationQueryStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalQueryCount: _json.containsKey('totalQueryCount')
              ? _json['totalQueryCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stats != null) 'stats': stats!,
        if (totalQueryCount != null) 'totalQueryCount': totalQueryCount!,
      };
}

class GetSearchApplicationSessionStatsResponse {
  core.List<SearchApplicationSessionStats>? stats;

  GetSearchApplicationSessionStatsResponse({
    this.stats,
  });

  GetSearchApplicationSessionStatsResponse.fromJson(core.Map _json)
      : this(
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => SearchApplicationSessionStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stats != null) 'stats': stats!,
      };
}

class GetSearchApplicationUserStatsResponse {
  core.List<SearchApplicationUserStats>? stats;

  GetSearchApplicationUserStatsResponse({
    this.stats,
  });

  GetSearchApplicationUserStatsResponse.fromJson(core.Map _json)
      : this(
          stats: _json.containsKey('stats')
              ? (_json['stats'] as core.List)
                  .map((value) => SearchApplicationUserStats.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stats != null) 'stats': stats!,
      };
}

/// Used to provide a search operator for html properties.
///
/// This is optional. Search operators let users restrict the query to specific
/// fields relevant to the type of item being searched.
class HtmlOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// html property.
  ///
  /// For example, if operatorName is *subject* and the property's name is
  /// *subjectLine*, then queries like *subject:\<value\>* show results only
  /// where the value of the property named *subjectLine* matches *\<value\>*.
  /// By contrast, a search that uses the same *\<value\>* without an operator
  /// return all items where *\<value\>* matches the value of any html
  /// properties or text within the content field for the item. The operator
  /// name can only contain lowercase letters (a-z). The maximum length is 32
  /// characters.
  core.String? operatorName;

  HtmlOperatorOptions({
    this.operatorName,
  });

  HtmlOperatorOptions.fromJson(core.Map _json)
      : this(
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorName != null) 'operatorName': operatorName!,
      };
}

/// Options for html properties.
class HtmlPropertyOptions {
  /// If set, describes how the property should be used as a search operator.
  HtmlOperatorOptions? operatorOptions;

  /// Indicates the search quality importance of the tokens within the field
  /// when used for retrieval.
  ///
  /// Can only be set to DEFAULT or NONE.
  RetrievalImportance? retrievalImportance;

  HtmlPropertyOptions({
    this.operatorOptions,
    this.retrievalImportance,
  });

  HtmlPropertyOptions.fromJson(core.Map _json)
      : this(
          operatorOptions: _json.containsKey('operatorOptions')
              ? HtmlOperatorOptions.fromJson(_json['operatorOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          retrievalImportance: _json.containsKey('retrievalImportance')
              ? RetrievalImportance.fromJson(_json['retrievalImportance']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorOptions != null) 'operatorOptions': operatorOptions!,
        if (retrievalImportance != null)
          'retrievalImportance': retrievalImportance!,
      };
}

/// List of html values.
class HtmlValues {
  /// The maximum allowable length for html values is 2048 characters.
  core.List<core.String>? values;

  HtmlValues({
    this.values,
  });

  HtmlValues.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

class IndexItemOptions {
  /// Specifies if the index request should allow gsuite principals that do not
  /// exist or are deleted in the index request.
  core.bool? allowUnknownGsuitePrincipals;

  IndexItemOptions({
    this.allowUnknownGsuitePrincipals,
  });

  IndexItemOptions.fromJson(core.Map _json)
      : this(
          allowUnknownGsuitePrincipals:
              _json.containsKey('allowUnknownGsuitePrincipals')
                  ? _json['allowUnknownGsuitePrincipals'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowUnknownGsuitePrincipals != null)
          'allowUnknownGsuitePrincipals': allowUnknownGsuitePrincipals!,
      };
}

class IndexItemRequest {
  /// Name of connector making this call.
  ///
  /// Format: datasources/{source_id}/connectors/{ID}
  core.String? connectorName;

  /// Common debug options.
  DebugOptions? debugOptions;
  IndexItemOptions? indexItemOptions;

  /// Name of the item.
  ///
  /// Format: datasources/{source_id}/items/{item_id}
  Item? item;

  /// The RequestMode for this request.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Priority is not specified in the update request. Leaving
  /// priority unspecified results in an update failure.
  /// - "SYNCHRONOUS" : For real-time updates.
  /// - "ASYNCHRONOUS" : For changes that are executed after the response is
  /// sent back to the caller.
  core.String? mode;

  IndexItemRequest({
    this.connectorName,
    this.debugOptions,
    this.indexItemOptions,
    this.item,
    this.mode,
  });

  IndexItemRequest.fromJson(core.Map _json)
      : this(
          connectorName: _json.containsKey('connectorName')
              ? _json['connectorName'] as core.String
              : null,
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          indexItemOptions: _json.containsKey('indexItemOptions')
              ? IndexItemOptions.fromJson(_json['indexItemOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          item: _json.containsKey('item')
              ? Item.fromJson(
                  _json['item'] as core.Map<core.String, core.dynamic>)
              : null,
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorName != null) 'connectorName': connectorName!,
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (indexItemOptions != null) 'indexItemOptions': indexItemOptions!,
        if (item != null) 'item': item!,
        if (mode != null) 'mode': mode!,
      };
}

/// Request message for `InitializeCustomer` method.
typedef InitializeCustomerRequest = $Empty;

/// Used to provide a search operator for integer properties.
///
/// This is optional. Search operators let users restrict the query to specific
/// fields relevant to the type of item being searched.
class IntegerOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// integer property using the greater-than operator.
  ///
  /// For example, if greaterThanOperatorName is *priorityabove* and the
  /// property's name is *priorityVal*, then queries like
  /// *priorityabove:\<value\>* show results only where the value of the
  /// property named *priorityVal* is greater than *\<value\>*. The operator
  /// name can only contain lowercase letters (a-z). The maximum length is 32
  /// characters.
  core.String? greaterThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// integer property using the less-than operator.
  ///
  /// For example, if lessThanOperatorName is *prioritybelow* and the property's
  /// name is *priorityVal*, then queries like *prioritybelow:\<value\>* show
  /// results only where the value of the property named *priorityVal* is less
  /// than *\<value\>*. The operator name can only contain lowercase letters
  /// (a-z). The maximum length is 32 characters.
  core.String? lessThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// integer property.
  ///
  /// For example, if operatorName is *priority* and the property's name is
  /// *priorityVal*, then queries like *priority:\<value\>* show results only
  /// where the value of the property named *priorityVal* matches *\<value\>*.
  /// By contrast, a search that uses the same *\<value\>* without an operator
  /// returns all items where *\<value\>* matches the value of any String
  /// properties or text within the content field for the item. The operator
  /// name can only contain lowercase letters (a-z). The maximum length is 32
  /// characters.
  core.String? operatorName;

  IntegerOperatorOptions({
    this.greaterThanOperatorName,
    this.lessThanOperatorName,
    this.operatorName,
  });

  IntegerOperatorOptions.fromJson(core.Map _json)
      : this(
          greaterThanOperatorName: _json.containsKey('greaterThanOperatorName')
              ? _json['greaterThanOperatorName'] as core.String
              : null,
          lessThanOperatorName: _json.containsKey('lessThanOperatorName')
              ? _json['lessThanOperatorName'] as core.String
              : null,
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (greaterThanOperatorName != null)
          'greaterThanOperatorName': greaterThanOperatorName!,
        if (lessThanOperatorName != null)
          'lessThanOperatorName': lessThanOperatorName!,
        if (operatorName != null) 'operatorName': operatorName!,
      };
}

/// Options for integer properties.
class IntegerPropertyOptions {
  /// The maximum value of the property.
  ///
  /// The minimum and maximum values for the property are used to rank results
  /// according to the ordered ranking. Indexing requests with values greater
  /// than the maximum are accepted and ranked with the same weight as items
  /// indexed with the maximum value.
  core.String? maximumValue;

  /// The minimum value of the property.
  ///
  /// The minimum and maximum values for the property are used to rank results
  /// according to the ordered ranking. Indexing requests with values less than
  /// the minimum are accepted and ranked with the same weight as items indexed
  /// with the minimum value.
  core.String? minimumValue;

  /// If set, describes how the integer should be used as a search operator.
  IntegerOperatorOptions? operatorOptions;

  /// Used to specify the ordered ranking for the integer.
  ///
  /// Can only be used if isRepeatable is false.
  /// Possible string values are:
  /// - "NO_ORDER" : There is no ranking order for the property. Results are not
  /// adjusted by this property's value.
  /// - "ASCENDING" : This property is ranked in ascending order. Lower values
  /// indicate lower ranking.
  /// - "DESCENDING" : This property is ranked in descending order. Lower values
  /// indicate higher ranking.
  core.String? orderedRanking;

  IntegerPropertyOptions({
    this.maximumValue,
    this.minimumValue,
    this.operatorOptions,
    this.orderedRanking,
  });

  IntegerPropertyOptions.fromJson(core.Map _json)
      : this(
          maximumValue: _json.containsKey('maximumValue')
              ? _json['maximumValue'] as core.String
              : null,
          minimumValue: _json.containsKey('minimumValue')
              ? _json['minimumValue'] as core.String
              : null,
          operatorOptions: _json.containsKey('operatorOptions')
              ? IntegerOperatorOptions.fromJson(_json['operatorOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          orderedRanking: _json.containsKey('orderedRanking')
              ? _json['orderedRanking'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maximumValue != null) 'maximumValue': maximumValue!,
        if (minimumValue != null) 'minimumValue': minimumValue!,
        if (operatorOptions != null) 'operatorOptions': operatorOptions!,
        if (orderedRanking != null) 'orderedRanking': orderedRanking!,
      };
}

/// List of integer values.
class IntegerValues {
  core.List<core.String>? values;

  IntegerValues({
    this.values,
  });

  IntegerValues.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Represents an interaction between a user and an item.
class Interaction {
  /// The time when the user acted on the item.
  ///
  /// If multiple actions of the same type exist for a single user, only the
  /// most recent action is recorded.
  core.String? interactionTime;

  /// The user that acted on the item.
  Principal? principal;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED" : Invalid value.
  /// - "VIEW" : This interaction indicates the user viewed the item.
  /// - "EDIT" : This interaction indicates the user edited the item.
  core.String? type;

  Interaction({
    this.interactionTime,
    this.principal,
    this.type,
  });

  Interaction.fromJson(core.Map _json)
      : this(
          interactionTime: _json.containsKey('interactionTime')
              ? _json['interactionTime'] as core.String
              : null,
          principal: _json.containsKey('principal')
              ? Principal.fromJson(
                  _json['principal'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (interactionTime != null) 'interactionTime': interactionTime!,
        if (principal != null) 'principal': principal!,
        if (type != null) 'type': type!,
      };
}

/// Represents a single object that is an item in the search index, such as a
/// file, folder, or a database record.
class Item {
  /// Access control list for this item.
  ItemAcl? acl;

  /// Item content to be indexed and made text searchable.
  ItemContent? content;

  /// Type for this item.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "CONTENT_ITEM" : An item that is indexed for the only purpose of serving
  /// information. These items cannot be referred in containerName or
  /// inheritAclFrom fields.
  /// - "CONTAINER_ITEM" : An item that gets indexed and whose purpose is to
  /// supply other items with ACLs and/or contain other items.
  /// - "VIRTUAL_CONTAINER_ITEM" : An item that does not get indexed, but
  /// otherwise has the same purpose as CONTAINER_ITEM.
  core.String? itemType;

  /// Metadata information.
  ItemMetadata? metadata;

  /// Name of the Item.
  ///
  /// Format: datasources/{source_id}/items/{item_id} This is a required field.
  /// The maximum length is 1536 characters.
  core.String? name;

  /// Additional state connector can store for this item.
  ///
  /// The maximum length is 10000 bytes.
  core.String? payload;
  core.List<core.int> get payloadAsBytes => convert.base64.decode(payload!);

  set payloadAsBytes(core.List<core.int> _bytes) {
    payload =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Queue this item belongs to.
  ///
  /// The maximum length is 100 characters.
  core.String? queue;

  /// Status of the item.
  ///
  /// Output only field.
  ItemStatus? status;

  /// The structured data for the item that should conform to a registered
  /// object definition in the schema for the data source.
  ItemStructuredData? structuredData;

  /// The indexing system stores the version from the datasource as a byte
  /// string and compares the Item version in the index to the version of the
  /// queued Item using lexical ordering.
  ///
  /// Cloud Search Indexing won't index or delete any queued item with a version
  /// value that is less than or equal to the version of the currently indexed
  /// item. The maximum length for this field is 1024 bytes. For information on
  /// how item version affects the deletion process, refer to
  /// [Handle revisions after manual deletes](https://developers.google.com/cloud-search/docs/guides/operations).
  ///
  /// Required.
  core.String? version;
  core.List<core.int> get versionAsBytes => convert.base64.decode(version!);

  set versionAsBytes(core.List<core.int> _bytes) {
    version =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Item({
    this.acl,
    this.content,
    this.itemType,
    this.metadata,
    this.name,
    this.payload,
    this.queue,
    this.status,
    this.structuredData,
    this.version,
  });

  Item.fromJson(core.Map _json)
      : this(
          acl: _json.containsKey('acl')
              ? ItemAcl.fromJson(
                  _json['acl'] as core.Map<core.String, core.dynamic>)
              : null,
          content: _json.containsKey('content')
              ? ItemContent.fromJson(
                  _json['content'] as core.Map<core.String, core.dynamic>)
              : null,
          itemType: _json.containsKey('itemType')
              ? _json['itemType'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? ItemMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          payload: _json.containsKey('payload')
              ? _json['payload'] as core.String
              : null,
          queue:
              _json.containsKey('queue') ? _json['queue'] as core.String : null,
          status: _json.containsKey('status')
              ? ItemStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          structuredData: _json.containsKey('structuredData')
              ? ItemStructuredData.fromJson(_json['structuredData']
                  as core.Map<core.String, core.dynamic>)
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acl != null) 'acl': acl!,
        if (content != null) 'content': content!,
        if (itemType != null) 'itemType': itemType!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (payload != null) 'payload': payload!,
        if (queue != null) 'queue': queue!,
        if (status != null) 'status': status!,
        if (structuredData != null) 'structuredData': structuredData!,
        if (version != null) 'version': version!,
      };
}

/// Access control list information for the item.
///
/// For more information see \[Map ACLs\](/cloud-search/docs/guides/acls).
class ItemAcl {
  /// Sets the type of access rules to apply when an item inherits its ACL from
  /// a parent.
  ///
  /// This should always be set in tandem with the inheritAclFrom field. Also,
  /// when the inheritAclFrom field is set, this field should be set to a valid
  /// AclInheritanceType.
  /// Possible string values are:
  /// - "NOT_APPLICABLE" : The default value when this item does not inherit an
  /// ACL. Use NOT_APPLICABLE when inheritAclFrom is empty. An item without ACL
  /// inheritance can still have ACLs supplied by its own readers and
  /// deniedReaders fields.
  /// - "CHILD_OVERRIDE" : During an authorization conflict, the ACL of the
  /// child item determines its read access.
  /// - "PARENT_OVERRIDE" : During an authorization conflict, the ACL of the
  /// parent item specified in the inheritAclFrom field determines read access.
  /// - "BOTH_PERMIT" : Access is granted only if this item and the parent item
  /// specified in the inheritAclFrom field both permit read access.
  core.String? aclInheritanceType;

  /// List of principals who are explicitly denied access to the item in search
  /// results.
  ///
  /// While principals are denied access by default, use denied readers to
  /// handle exceptions and override the list allowed readers. The maximum
  /// number of elements is 100.
  core.List<Principal>? deniedReaders;

  /// Name of the item to inherit the Access Permission List (ACL) from.
  ///
  /// Note: ACL inheritance *only* provides access permissions to child items
  /// and does not define structural relationships, nor does it provide
  /// convenient ways to delete large groups of items. Deleting an ACL parent
  /// from the index only alters the access permissions of child items that
  /// reference the parent in the inheritAclFrom field. The item is still in the
  /// index, but may not visible in search results. By contrast, deletion of a
  /// container item also deletes all items that reference the container via the
  /// containerName field. The maximum length for this field is 1536 characters.
  core.String? inheritAclFrom;

  /// List of owners for the item.
  ///
  /// This field has no bearing on document access permissions. It does,
  /// however, offer a slight ranking boosts items where the querying user is an
  /// owner. The maximum number of elements is 5.
  ///
  /// Optional.
  core.List<Principal>? owners;

  /// List of principals who are allowed to see the item in search results.
  ///
  /// Optional if inheriting permissions from another item or if the item is not
  /// intended to be visible, such as virtual containers. The maximum number of
  /// elements is 1000.
  core.List<Principal>? readers;

  ItemAcl({
    this.aclInheritanceType,
    this.deniedReaders,
    this.inheritAclFrom,
    this.owners,
    this.readers,
  });

  ItemAcl.fromJson(core.Map _json)
      : this(
          aclInheritanceType: _json.containsKey('aclInheritanceType')
              ? _json['aclInheritanceType'] as core.String
              : null,
          deniedReaders: _json.containsKey('deniedReaders')
              ? (_json['deniedReaders'] as core.List)
                  .map((value) => Principal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inheritAclFrom: _json.containsKey('inheritAclFrom')
              ? _json['inheritAclFrom'] as core.String
              : null,
          owners: _json.containsKey('owners')
              ? (_json['owners'] as core.List)
                  .map((value) => Principal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          readers: _json.containsKey('readers')
              ? (_json['readers'] as core.List)
                  .map((value) => Principal.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aclInheritanceType != null)
          'aclInheritanceType': aclInheritanceType!,
        if (deniedReaders != null) 'deniedReaders': deniedReaders!,
        if (inheritAclFrom != null) 'inheritAclFrom': inheritAclFrom!,
        if (owners != null) 'owners': owners!,
        if (readers != null) 'readers': readers!,
      };
}

/// Content of an item to be indexed and surfaced by Cloud Search.
///
/// Only UTF-8 encoded strings are allowed as inlineContent. If the content is
/// uploaded and not binary, it must be UTF-8 encoded.
class ItemContent {
  /// Upload reference ID of a previously uploaded content via write method.
  UploadItemRef? contentDataRef;

  ///
  /// Possible string values are:
  /// - "UNSPECIFIED" : Invalid value.
  /// - "HTML" : contentFormat is HTML.
  /// - "TEXT" : contentFormat is free text.
  /// - "RAW" : contentFormat is raw bytes.
  core.String? contentFormat;

  /// Hashing info calculated and provided by the API client for content.
  ///
  /// Can be used with the items.push method to calculate modified state. The
  /// maximum length is 2048 characters.
  core.String? hash;

  /// Content that is supplied inlined within the update method.
  ///
  /// The maximum length is 102400 bytes (100 KiB).
  core.String? inlineContent;
  core.List<core.int> get inlineContentAsBytes =>
      convert.base64.decode(inlineContent!);

  set inlineContentAsBytes(core.List<core.int> _bytes) {
    inlineContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  ItemContent({
    this.contentDataRef,
    this.contentFormat,
    this.hash,
    this.inlineContent,
  });

  ItemContent.fromJson(core.Map _json)
      : this(
          contentDataRef: _json.containsKey('contentDataRef')
              ? UploadItemRef.fromJson(_json['contentDataRef']
                  as core.Map<core.String, core.dynamic>)
              : null,
          contentFormat: _json.containsKey('contentFormat')
              ? _json['contentFormat'] as core.String
              : null,
          hash: _json.containsKey('hash') ? _json['hash'] as core.String : null,
          inlineContent: _json.containsKey('inlineContent')
              ? _json['inlineContent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentDataRef != null) 'contentDataRef': contentDataRef!,
        if (contentFormat != null) 'contentFormat': contentFormat!,
        if (hash != null) 'hash': hash!,
        if (inlineContent != null) 'inlineContent': inlineContent!,
      };
}

class ItemCountByStatus {
  /// Number of items matching the status code.
  core.String? count;

  /// Number of items matching the status code for which billing is done.
  ///
  /// This excludes virtual container items from the total count. This count
  /// would not be applicable for items with ERROR or NEW_ITEM status code.
  core.String? indexedItemsCount;

  /// Status of the items.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Input-only value. Used with Items.list to list all
  /// items in the queue, regardless of status.
  /// - "ERROR" : Error encountered by Cloud Search while processing this item.
  /// Details of the error are in repositoryError.
  /// - "MODIFIED" : Item has been modified in the repository, and is out of
  /// date with the version previously accepted into Cloud Search.
  /// - "NEW_ITEM" : Item is known to exist in the repository, but is not yet
  /// accepted by Cloud Search. An item can be in this state when Items.push has
  /// been called for an item of this name that did not exist previously.
  /// - "ACCEPTED" : API has accepted the up-to-date data of this item.
  core.String? statusCode;

  ItemCountByStatus({
    this.count,
    this.indexedItemsCount,
    this.statusCode,
  });

  ItemCountByStatus.fromJson(core.Map _json)
      : this(
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          indexedItemsCount: _json.containsKey('indexedItemsCount')
              ? _json['indexedItemsCount'] as core.String
              : null,
          statusCode: _json.containsKey('statusCode')
              ? _json['statusCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (indexedItemsCount != null) 'indexedItemsCount': indexedItemsCount!,
        if (statusCode != null) 'statusCode': statusCode!,
      };
}

/// Available metadata fields for the item.
class ItemMetadata {
  /// The name of the container for this item.
  ///
  /// Deletion of the container item leads to automatic deletion of this item.
  /// Note: ACLs are not inherited from a container item. To provide ACL
  /// inheritance for an item, use the inheritAclFrom field. The maximum length
  /// is 1536 characters.
  core.String? containerName;

  /// The BCP-47 language code for the item, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. The
  /// maximum length is 32 characters.
  core.String? contentLanguage;

  /// A set of named attributes associated with the item.
  ///
  /// This can be used for influencing the ranking of the item based on the
  /// context in the request. The maximum number of elements is 10.
  core.List<ContextAttribute>? contextAttributes;

  /// The time when the item was created in the source repository.
  core.String? createTime;

  /// Hashing value provided by the API caller.
  ///
  /// This can be used with the items.push method to calculate modified state.
  /// The maximum length is 2048 characters.
  core.String? hash;

  /// A list of interactions for the item.
  ///
  /// Interactions are used to improve Search quality, but are not exposed to
  /// end users. The maximum number of elements is 1000.
  core.List<Interaction>? interactions;

  /// Additional keywords or phrases that should match the item.
  ///
  /// Used internally for user generated content. The maximum number of elements
  /// is 100. The maximum length is 8192 characters.
  core.List<core.String>? keywords;

  /// The original mime-type of ItemContent.content in the source repository.
  ///
  /// The maximum length is 256 characters.
  core.String? mimeType;

  /// The type of the item.
  ///
  /// This should correspond to the name of an object definition in the schema
  /// registered for the data source. For example, if the schema for the data
  /// source contains an object definition with name 'document', then item
  /// indexing requests for objects of that type should set objectType to
  /// 'document'. The maximum length is 256 characters.
  core.String? objectType;

  /// Additional search quality metadata of the item
  SearchQualityMetadata? searchQualityMetadata;

  /// Link to the source repository serving the data.
  ///
  /// Seach results apply this link to the title. Whitespace or special
  /// characters may cause Cloud Seach result links to trigger a redirect
  /// notice; to avoid this, encode the URL. The maximum length is 2048
  /// characters.
  core.String? sourceRepositoryUrl;

  /// The title of the item.
  ///
  /// If given, this will be the displayed title of the Search result. The
  /// maximum length is 2048 characters.
  core.String? title;

  /// The time when the item was last modified in the source repository.
  core.String? updateTime;

  ItemMetadata({
    this.containerName,
    this.contentLanguage,
    this.contextAttributes,
    this.createTime,
    this.hash,
    this.interactions,
    this.keywords,
    this.mimeType,
    this.objectType,
    this.searchQualityMetadata,
    this.sourceRepositoryUrl,
    this.title,
    this.updateTime,
  });

  ItemMetadata.fromJson(core.Map _json)
      : this(
          containerName: _json.containsKey('containerName')
              ? _json['containerName'] as core.String
              : null,
          contentLanguage: _json.containsKey('contentLanguage')
              ? _json['contentLanguage'] as core.String
              : null,
          contextAttributes: _json.containsKey('contextAttributes')
              ? (_json['contextAttributes'] as core.List)
                  .map((value) => ContextAttribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          hash: _json.containsKey('hash') ? _json['hash'] as core.String : null,
          interactions: _json.containsKey('interactions')
              ? (_json['interactions'] as core.List)
                  .map((value) => Interaction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          keywords: _json.containsKey('keywords')
              ? (_json['keywords'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
          searchQualityMetadata: _json.containsKey('searchQualityMetadata')
              ? SearchQualityMetadata.fromJson(_json['searchQualityMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sourceRepositoryUrl: _json.containsKey('sourceRepositoryUrl')
              ? _json['sourceRepositoryUrl'] as core.String
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerName != null) 'containerName': containerName!,
        if (contentLanguage != null) 'contentLanguage': contentLanguage!,
        if (contextAttributes != null) 'contextAttributes': contextAttributes!,
        if (createTime != null) 'createTime': createTime!,
        if (hash != null) 'hash': hash!,
        if (interactions != null) 'interactions': interactions!,
        if (keywords != null) 'keywords': keywords!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (objectType != null) 'objectType': objectType!,
        if (searchQualityMetadata != null)
          'searchQualityMetadata': searchQualityMetadata!,
        if (sourceRepositoryUrl != null)
          'sourceRepositoryUrl': sourceRepositoryUrl!,
        if (title != null) 'title': title!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// This contains item's status and any errors.
class ItemStatus {
  /// Status code.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Input-only value. Used with Items.list to list all
  /// items in the queue, regardless of status.
  /// - "ERROR" : Error encountered by Cloud Search while processing this item.
  /// Details of the error are in repositoryError.
  /// - "MODIFIED" : Item has been modified in the repository, and is out of
  /// date with the version previously accepted into Cloud Search.
  /// - "NEW_ITEM" : Item is known to exist in the repository, but is not yet
  /// accepted by Cloud Search. An item can be in this state when Items.push has
  /// been called for an item of this name that did not exist previously.
  /// - "ACCEPTED" : API has accepted the up-to-date data of this item.
  core.String? code;

  /// Error details in case the item is in ERROR state.
  core.List<ProcessingError>? processingErrors;

  /// Repository error reported by connector.
  core.List<RepositoryError>? repositoryErrors;

  ItemStatus({
    this.code,
    this.processingErrors,
    this.repositoryErrors,
  });

  ItemStatus.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          processingErrors: _json.containsKey('processingErrors')
              ? (_json['processingErrors'] as core.List)
                  .map((value) => ProcessingError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          repositoryErrors: _json.containsKey('repositoryErrors')
              ? (_json['repositoryErrors'] as core.List)
                  .map((value) => RepositoryError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (processingErrors != null) 'processingErrors': processingErrors!,
        if (repositoryErrors != null) 'repositoryErrors': repositoryErrors!,
      };
}

/// Available structured data fields for the item.
class ItemStructuredData {
  /// Hashing value provided by the API caller.
  ///
  /// This can be used with the items.push method to calculate modified state.
  /// The maximum length is 2048 characters.
  core.String? hash;

  /// The structured data object that should conform to a registered object
  /// definition in the schema for the data source.
  StructuredDataObject? object;

  ItemStructuredData({
    this.hash,
    this.object,
  });

  ItemStructuredData.fromJson(core.Map _json)
      : this(
          hash: _json.containsKey('hash') ? _json['hash'] as core.String : null,
          object: _json.containsKey('object')
              ? StructuredDataObject.fromJson(
                  _json['object'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hash != null) 'hash': hash!,
        if (object != null) 'object': object!,
      };
}

class ListDataSourceResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;
  core.List<DataSource>? sources;

  ListDataSourceResponse({
    this.nextPageToken,
    this.sources,
  });

  ListDataSourceResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map((value) => DataSource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sources != null) 'sources': sources!,
      };
}

class ListItemNamesForUnmappedIdentityResponse {
  core.List<core.String>? itemNames;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListItemNamesForUnmappedIdentityResponse({
    this.itemNames,
    this.nextPageToken,
  });

  ListItemNamesForUnmappedIdentityResponse.fromJson(core.Map _json)
      : this(
          itemNames: _json.containsKey('itemNames')
              ? (_json['itemNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (itemNames != null) 'itemNames': itemNames!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

class ListItemsResponse {
  core.List<Item>? items;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListItemsResponse({
    this.items,
    this.nextPageToken,
  });

  ListItemsResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Item.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// List sources response.
class ListQuerySourcesResponse {
  core.String? nextPageToken;
  core.List<QuerySource>? sources;

  ListQuerySourcesResponse({
    this.nextPageToken,
    this.sources,
  });

  ListQuerySourcesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sources: _json.containsKey('sources')
              ? (_json['sources'] as core.List)
                  .map((value) => QuerySource.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sources != null) 'sources': sources!,
      };
}

class ListSearchApplicationsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;
  core.List<SearchApplication>? searchApplications;

  ListSearchApplicationsResponse({
    this.nextPageToken,
    this.searchApplications,
  });

  ListSearchApplicationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          searchApplications: _json.containsKey('searchApplications')
              ? (_json['searchApplications'] as core.List)
                  .map((value) => SearchApplication.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (searchApplications != null)
          'searchApplications': searchApplications!,
      };
}

class ListUnmappedIdentitiesResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;
  core.List<UnmappedIdentity>? unmappedIdentities;

  ListUnmappedIdentitiesResponse({
    this.nextPageToken,
    this.unmappedIdentities,
  });

  ListUnmappedIdentitiesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unmappedIdentities: _json.containsKey('unmappedIdentities')
              ? (_json['unmappedIdentities'] as core.List)
                  .map((value) => UnmappedIdentity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unmappedIdentities != null)
          'unmappedIdentities': unmappedIdentities!,
      };
}

/// Matched range of a snippet \[start, end).
class MatchRange {
  /// End of the match in the snippet.
  core.int? end;

  /// Starting position of the match in the snippet.
  core.int? start;

  MatchRange({
    this.end,
    this.start,
  });

  MatchRange.fromJson(core.Map _json)
      : this(
          end: _json.containsKey('end') ? _json['end'] as core.int : null,
          start: _json.containsKey('start') ? _json['start'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Media resource.
typedef Media = $Media;

/// Metadata of a matched search result.
class Metadata {
  /// The creation time for this document or object in the search result.
  core.String? createTime;

  /// Options that specify how to display a structured data search result.
  ResultDisplayMetadata? displayOptions;

  /// Indexed fields in structured data, returned as a generic named property.
  core.List<NamedProperty>? fields;

  /// Mime type of the search result.
  core.String? mimeType;

  /// Object type of the search result.
  core.String? objectType;

  /// Owner (usually creator) of the document or object of the search result.
  Person? owner;

  /// The named source for the result, such as Gmail.
  Source? source;

  /// The thumbnail URL of the result.
  core.String? thumbnailUrl;

  /// The last modified date for the object in the search result.
  ///
  /// If not set in the item, the value returned here is empty. When
  /// `updateTime` is used for calculating freshness and is not set, this value
  /// defaults to 2 years from the current time.
  core.String? updateTime;

  Metadata({
    this.createTime,
    this.displayOptions,
    this.fields,
    this.mimeType,
    this.objectType,
    this.owner,
    this.source,
    this.thumbnailUrl,
    this.updateTime,
  });

  Metadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayOptions: _json.containsKey('displayOptions')
              ? ResultDisplayMetadata.fromJson(_json['displayOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => NamedProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
          owner: _json.containsKey('owner')
              ? Person.fromJson(
                  _json['owner'] as core.Map<core.String, core.dynamic>)
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
          thumbnailUrl: _json.containsKey('thumbnailUrl')
              ? _json['thumbnailUrl'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayOptions != null) 'displayOptions': displayOptions!,
        if (fields != null) 'fields': fields!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (objectType != null) 'objectType': objectType!,
        if (owner != null) 'owner': owner!,
        if (source != null) 'source': source!,
        if (thumbnailUrl != null) 'thumbnailUrl': thumbnailUrl!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A metaline is a list of properties that are displayed along with the search
/// result to provide context.
class Metaline {
  /// The list of displayed properties for the metaline.
  ///
  /// The maximum number of properties is 5.
  core.List<DisplayedProperty>? properties;

  Metaline({
    this.properties,
  });

  Metaline.fromJson(core.Map _json)
      : this(
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.List)
                  .map((value) => DisplayedProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
      };
}

/// A person's name.
class Name {
  /// The read-only display name formatted according to the locale specified by
  /// the viewer's account or the Accept-Language HTTP header.
  core.String? displayName;

  Name({
    this.displayName,
  });

  Name.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
      };
}

/// A typed name-value pair for structured data.
///
/// The type of the value should be the same as the registered type for the
/// `name` property in the object definition of `objectType`.
class NamedProperty {
  core.bool? booleanValue;
  DateValues? dateValues;
  DoubleValues? doubleValues;
  EnumValues? enumValues;
  HtmlValues? htmlValues;
  IntegerValues? integerValues;

  /// The name of the property.
  ///
  /// This name should correspond to the name of the property that was
  /// registered for object definition in the schema. The maximum allowable
  /// length for this property is 256 characters.
  core.String? name;
  ObjectValues? objectValues;
  TextValues? textValues;
  TimestampValues? timestampValues;

  NamedProperty({
    this.booleanValue,
    this.dateValues,
    this.doubleValues,
    this.enumValues,
    this.htmlValues,
    this.integerValues,
    this.name,
    this.objectValues,
    this.textValues,
    this.timestampValues,
  });

  NamedProperty.fromJson(core.Map _json)
      : this(
          booleanValue: _json.containsKey('booleanValue')
              ? _json['booleanValue'] as core.bool
              : null,
          dateValues: _json.containsKey('dateValues')
              ? DateValues.fromJson(
                  _json['dateValues'] as core.Map<core.String, core.dynamic>)
              : null,
          doubleValues: _json.containsKey('doubleValues')
              ? DoubleValues.fromJson(
                  _json['doubleValues'] as core.Map<core.String, core.dynamic>)
              : null,
          enumValues: _json.containsKey('enumValues')
              ? EnumValues.fromJson(
                  _json['enumValues'] as core.Map<core.String, core.dynamic>)
              : null,
          htmlValues: _json.containsKey('htmlValues')
              ? HtmlValues.fromJson(
                  _json['htmlValues'] as core.Map<core.String, core.dynamic>)
              : null,
          integerValues: _json.containsKey('integerValues')
              ? IntegerValues.fromJson(
                  _json['integerValues'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          objectValues: _json.containsKey('objectValues')
              ? ObjectValues.fromJson(
                  _json['objectValues'] as core.Map<core.String, core.dynamic>)
              : null,
          textValues: _json.containsKey('textValues')
              ? TextValues.fromJson(
                  _json['textValues'] as core.Map<core.String, core.dynamic>)
              : null,
          timestampValues: _json.containsKey('timestampValues')
              ? TimestampValues.fromJson(_json['timestampValues']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValues != null) 'dateValues': dateValues!,
        if (doubleValues != null) 'doubleValues': doubleValues!,
        if (enumValues != null) 'enumValues': enumValues!,
        if (htmlValues != null) 'htmlValues': htmlValues!,
        if (integerValues != null) 'integerValues': integerValues!,
        if (name != null) 'name': name!,
        if (objectValues != null) 'objectValues': objectValues!,
        if (textValues != null) 'textValues': textValues!,
        if (timestampValues != null) 'timestampValues': timestampValues!,
      };
}

/// The definition for an object within a data source.
class ObjectDefinition {
  /// Name for the object, which then defines its type.
  ///
  /// Item indexing requests should set the objectType field equal to this
  /// value. For example, if *name* is *Document*, then indexing requests for
  /// items of type Document should set objectType equal to *Document*. Each
  /// object definition must be uniquely named within a schema. The name must
  /// start with a letter and can only contain letters (A-Z, a-z) or numbers
  /// (0-9). The maximum length is 256 characters.
  core.String? name;

  /// The optional object-specific options.
  ObjectOptions? options;

  /// The property definitions for the object.
  ///
  /// The maximum number of elements is 1000.
  core.List<PropertyDefinition>? propertyDefinitions;

  ObjectDefinition({
    this.name,
    this.options,
    this.propertyDefinitions,
  });

  ObjectDefinition.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          options: _json.containsKey('options')
              ? ObjectOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
          propertyDefinitions: _json.containsKey('propertyDefinitions')
              ? (_json['propertyDefinitions'] as core.List)
                  .map((value) => PropertyDefinition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (options != null) 'options': options!,
        if (propertyDefinitions != null)
          'propertyDefinitions': propertyDefinitions!,
      };
}

/// The display options for an object.
class ObjectDisplayOptions {
  /// Defines the properties that are displayed in the metalines of the search
  /// results.
  ///
  /// The property values are displayed in the order given here. If a property
  /// holds multiple values, all of the values are displayed before the next
  /// properties. For this reason, it is a good practice to specify singular
  /// properties before repeated properties in this list. All of the properties
  /// must set is_returnable to true. The maximum number of metalines is 3.
  core.List<Metaline>? metalines;

  /// The user friendly label to display in the search result to indicate the
  /// type of the item.
  ///
  /// This is OPTIONAL; if not provided, an object label isn't displayed on the
  /// context line of the search results. The maximum length is 64 characters.
  core.String? objectDisplayLabel;

  ObjectDisplayOptions({
    this.metalines,
    this.objectDisplayLabel,
  });

  ObjectDisplayOptions.fromJson(core.Map _json)
      : this(
          metalines: _json.containsKey('metalines')
              ? (_json['metalines'] as core.List)
                  .map((value) => Metaline.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          objectDisplayLabel: _json.containsKey('objectDisplayLabel')
              ? _json['objectDisplayLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metalines != null) 'metalines': metalines!,
        if (objectDisplayLabel != null)
          'objectDisplayLabel': objectDisplayLabel!,
      };
}

/// The options for an object.
class ObjectOptions {
  /// Options that determine how the object is displayed in the Cloud Search
  /// results page.
  ObjectDisplayOptions? displayOptions;

  /// The freshness options for an object.
  FreshnessOptions? freshnessOptions;

  ObjectOptions({
    this.displayOptions,
    this.freshnessOptions,
  });

  ObjectOptions.fromJson(core.Map _json)
      : this(
          displayOptions: _json.containsKey('displayOptions')
              ? ObjectDisplayOptions.fromJson(_json['displayOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          freshnessOptions: _json.containsKey('freshnessOptions')
              ? FreshnessOptions.fromJson(_json['freshnessOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayOptions != null) 'displayOptions': displayOptions!,
        if (freshnessOptions != null) 'freshnessOptions': freshnessOptions!,
      };
}

/// Options for object properties.
class ObjectPropertyOptions {
  /// The properties of the sub-object.
  ///
  /// These properties represent a nested object. For example, if this property
  /// represents a postal address, the subobjectProperties might be named
  /// *street*, *city*, and *state*. The maximum number of elements is 1000.
  core.List<PropertyDefinition>? subobjectProperties;

  ObjectPropertyOptions({
    this.subobjectProperties,
  });

  ObjectPropertyOptions.fromJson(core.Map _json)
      : this(
          subobjectProperties: _json.containsKey('subobjectProperties')
              ? (_json['subobjectProperties'] as core.List)
                  .map((value) => PropertyDefinition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subobjectProperties != null)
          'subobjectProperties': subobjectProperties!,
      };
}

/// List of object values.
class ObjectValues {
  core.List<StructuredDataObject>? values;

  ObjectValues({
    this.values,
  });

  ObjectValues.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => StructuredDataObject.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
        if (response != null) 'response': response!,
      };
}

/// This field contains information about the person being suggested.
class PeopleSuggestion {
  /// Suggested person.
  ///
  /// All fields of the person object might not be populated.
  Person? person;

  PeopleSuggestion({
    this.person,
  });

  PeopleSuggestion.fromJson(core.Map _json)
      : this(
          person: _json.containsKey('person')
              ? Person.fromJson(
                  _json['person'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!,
      };
}

/// Object to represent a person.
class Person {
  /// The person's email addresses
  core.List<EmailAddress>? emailAddresses;

  /// The resource name of the person to provide information about.
  ///
  /// See People.get from Google People API.
  core.String? name;

  /// Obfuscated ID of a person.
  core.String? obfuscatedId;

  /// The person's name
  core.List<Name>? personNames;

  /// A person's read-only photo.
  ///
  /// A picture shown next to the person's name to help others recognize the
  /// person in search results.
  core.List<Photo>? photos;

  Person({
    this.emailAddresses,
    this.name,
    this.obfuscatedId,
    this.personNames,
    this.photos,
  });

  Person.fromJson(core.Map _json)
      : this(
          emailAddresses: _json.containsKey('emailAddresses')
              ? (_json['emailAddresses'] as core.List)
                  .map((value) => EmailAddress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          obfuscatedId: _json.containsKey('obfuscatedId')
              ? _json['obfuscatedId'] as core.String
              : null,
          personNames: _json.containsKey('personNames')
              ? (_json['personNames'] as core.List)
                  .map((value) => Name.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          photos: _json.containsKey('photos')
              ? (_json['photos'] as core.List)
                  .map((value) => Photo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (emailAddresses != null) 'emailAddresses': emailAddresses!,
        if (name != null) 'name': name!,
        if (obfuscatedId != null) 'obfuscatedId': obfuscatedId!,
        if (personNames != null) 'personNames': personNames!,
        if (photos != null) 'photos': photos!,
      };
}

/// A person's photo.
class Photo {
  /// The URL of the photo.
  core.String? url;

  Photo({
    this.url,
  });

  Photo.fromJson(core.Map _json)
      : this(
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (url != null) 'url': url!,
      };
}

class PollItemsRequest {
  /// Name of connector making this call.
  ///
  /// Format: datasources/{source_id}/connectors/{ID}
  core.String? connectorName;

  /// Common debug options.
  DebugOptions? debugOptions;

  /// Maximum number of items to return.
  ///
  /// The maximum value is 100 and the default value is 20.
  core.int? limit;

  /// Queue name to fetch items from.
  ///
  /// If unspecified, PollItems will fetch from 'default' queue. The maximum
  /// length is 100 characters.
  core.String? queue;

  /// Limit the items polled to the ones with these statuses.
  core.List<core.String>? statusCodes;

  PollItemsRequest({
    this.connectorName,
    this.debugOptions,
    this.limit,
    this.queue,
    this.statusCodes,
  });

  PollItemsRequest.fromJson(core.Map _json)
      : this(
          connectorName: _json.containsKey('connectorName')
              ? _json['connectorName'] as core.String
              : null,
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          limit: _json.containsKey('limit') ? _json['limit'] as core.int : null,
          queue:
              _json.containsKey('queue') ? _json['queue'] as core.String : null,
          statusCodes: _json.containsKey('statusCodes')
              ? (_json['statusCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorName != null) 'connectorName': connectorName!,
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (limit != null) 'limit': limit!,
        if (queue != null) 'queue': queue!,
        if (statusCodes != null) 'statusCodes': statusCodes!,
      };
}

class PollItemsResponse {
  /// Set of items from the queue available for connector to process.
  ///
  /// These items have the following subset of fields populated: version
  /// metadata.hash structured_data.hash content.hash payload status queue
  core.List<Item>? items;

  PollItemsResponse({
    this.items,
  });

  PollItemsResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Item.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// Reference to a user, group, or domain.
class Principal {
  /// This principal is a group identified using an external identity.
  ///
  /// The name field must specify the group resource name with this format:
  /// identitysources/{source_id}/groups/{ID}
  core.String? groupResourceName;

  /// This principal is a GSuite user, group or domain.
  GSuitePrincipal? gsuitePrincipal;

  /// This principal is a user identified using an external identity.
  ///
  /// The name field must specify the user resource name with this format:
  /// identitysources/{source_id}/users/{ID}
  core.String? userResourceName;

  Principal({
    this.groupResourceName,
    this.gsuitePrincipal,
    this.userResourceName,
  });

  Principal.fromJson(core.Map _json)
      : this(
          groupResourceName: _json.containsKey('groupResourceName')
              ? _json['groupResourceName'] as core.String
              : null,
          gsuitePrincipal: _json.containsKey('gsuitePrincipal')
              ? GSuitePrincipal.fromJson(_json['gsuitePrincipal']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userResourceName: _json.containsKey('userResourceName')
              ? _json['userResourceName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupResourceName != null) 'groupResourceName': groupResourceName!,
        if (gsuitePrincipal != null) 'gsuitePrincipal': gsuitePrincipal!,
        if (userResourceName != null) 'userResourceName': userResourceName!,
      };
}

class ProcessingError {
  /// Error code indicating the nature of the error.
  /// Possible string values are:
  /// - "PROCESSING_ERROR_CODE_UNSPECIFIED" : Input only value. Use this value
  /// in Items.
  /// - "MALFORMED_REQUEST" : Item's ACL, metadata, or content is malformed or
  /// in invalid state. FieldViolations contains more details on where the
  /// problem is.
  /// - "UNSUPPORTED_CONTENT_FORMAT" : Countent format is unsupported.
  /// - "INDIRECT_BROKEN_ACL" : Items with incomplete ACL information due to
  /// inheriting other items with broken ACL or having groups with unmapped
  /// descendants.
  /// - "ACL_CYCLE" : ACL inheritance graph formed a cycle.
  core.String? code;

  /// Description of the error.
  core.String? errorMessage;

  /// In case the item fields are invalid, this field contains the details about
  /// the validation errors.
  core.List<FieldViolation>? fieldViolations;

  ProcessingError({
    this.code,
    this.errorMessage,
    this.fieldViolations,
  });

  ProcessingError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          fieldViolations: _json.containsKey('fieldViolations')
              ? (_json['fieldViolations'] as core.List)
                  .map((value) => FieldViolation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (fieldViolations != null) 'fieldViolations': fieldViolations!,
      };
}

/// The definition of a property within an object.
class PropertyDefinition {
  BooleanPropertyOptions? booleanPropertyOptions;
  DatePropertyOptions? datePropertyOptions;

  /// Options that determine how the property is displayed in the Cloud Search
  /// results page if it is specified to be displayed in the object's display
  /// options .
  PropertyDisplayOptions? displayOptions;
  DoublePropertyOptions? doublePropertyOptions;
  EnumPropertyOptions? enumPropertyOptions;
  HtmlPropertyOptions? htmlPropertyOptions;
  IntegerPropertyOptions? integerPropertyOptions;

  /// Indicates that the property can be used for generating facets.
  ///
  /// Cannot be true for properties whose type is object. IsReturnable must be
  /// true to set this option. Only supported for Boolean, Enum, and Text
  /// properties.
  core.bool? isFacetable;

  /// Indicates that multiple values are allowed for the property.
  ///
  /// For example, a document only has one description but can have multiple
  /// comments. Cannot be true for properties whose type is a boolean. If set to
  /// false, properties that contain more than one value cause the indexing
  /// request for that item to be rejected.
  core.bool? isRepeatable;

  /// Indicates that the property identifies data that should be returned in
  /// search results via the Query API.
  ///
  /// If set to *true*, indicates that Query API users can use matching property
  /// fields in results. However, storing fields requires more space allocation
  /// and uses more bandwidth for search queries, which impacts performance over
  /// large datasets. Set to *true* here only if the field is needed for search
  /// results. Cannot be true for properties whose type is an object.
  core.bool? isReturnable;

  /// Indicates that the property can be used for sorting.
  ///
  /// Cannot be true for properties that are repeatable. Cannot be true for
  /// properties whose type is object. IsReturnable must be true to set this
  /// option. Only supported for Boolean, Date, Double, Integer, and Timestamp
  /// properties.
  core.bool? isSortable;

  /// Indicates that the property can be used for generating query suggestions.
  core.bool? isSuggestable;

  /// Indicates that users can perform wildcard search for this property.
  ///
  /// Only supported for Text properties. IsReturnable must be true to set this
  /// option. In a given datasource maximum of 5 properties can be marked as
  /// is_wildcard_searchable.
  core.bool? isWildcardSearchable;

  /// The name of the property.
  ///
  /// Item indexing requests sent to the Indexing API should set the property
  /// name equal to this value. For example, if name is *subject_line*, then
  /// indexing requests for document items with subject fields should set the
  /// name for that field equal to *subject_line*. Use the name as the
  /// identifier for the object property. Once registered as a property for an
  /// object, you cannot re-use this name for another property within that
  /// object. The name must start with a letter and can only contain letters
  /// (A-Z, a-z) or numbers (0-9). The maximum length is 256 characters.
  core.String? name;
  ObjectPropertyOptions? objectPropertyOptions;
  TextPropertyOptions? textPropertyOptions;
  TimestampPropertyOptions? timestampPropertyOptions;

  PropertyDefinition({
    this.booleanPropertyOptions,
    this.datePropertyOptions,
    this.displayOptions,
    this.doublePropertyOptions,
    this.enumPropertyOptions,
    this.htmlPropertyOptions,
    this.integerPropertyOptions,
    this.isFacetable,
    this.isRepeatable,
    this.isReturnable,
    this.isSortable,
    this.isSuggestable,
    this.isWildcardSearchable,
    this.name,
    this.objectPropertyOptions,
    this.textPropertyOptions,
    this.timestampPropertyOptions,
  });

  PropertyDefinition.fromJson(core.Map _json)
      : this(
          booleanPropertyOptions: _json.containsKey('booleanPropertyOptions')
              ? BooleanPropertyOptions.fromJson(_json['booleanPropertyOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          datePropertyOptions: _json.containsKey('datePropertyOptions')
              ? DatePropertyOptions.fromJson(_json['datePropertyOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayOptions: _json.containsKey('displayOptions')
              ? PropertyDisplayOptions.fromJson(_json['displayOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          doublePropertyOptions: _json.containsKey('doublePropertyOptions')
              ? DoublePropertyOptions.fromJson(_json['doublePropertyOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enumPropertyOptions: _json.containsKey('enumPropertyOptions')
              ? EnumPropertyOptions.fromJson(_json['enumPropertyOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          htmlPropertyOptions: _json.containsKey('htmlPropertyOptions')
              ? HtmlPropertyOptions.fromJson(_json['htmlPropertyOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          integerPropertyOptions: _json.containsKey('integerPropertyOptions')
              ? IntegerPropertyOptions.fromJson(_json['integerPropertyOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          isFacetable: _json.containsKey('isFacetable')
              ? _json['isFacetable'] as core.bool
              : null,
          isRepeatable: _json.containsKey('isRepeatable')
              ? _json['isRepeatable'] as core.bool
              : null,
          isReturnable: _json.containsKey('isReturnable')
              ? _json['isReturnable'] as core.bool
              : null,
          isSortable: _json.containsKey('isSortable')
              ? _json['isSortable'] as core.bool
              : null,
          isSuggestable: _json.containsKey('isSuggestable')
              ? _json['isSuggestable'] as core.bool
              : null,
          isWildcardSearchable: _json.containsKey('isWildcardSearchable')
              ? _json['isWildcardSearchable'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          objectPropertyOptions: _json.containsKey('objectPropertyOptions')
              ? ObjectPropertyOptions.fromJson(_json['objectPropertyOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textPropertyOptions: _json.containsKey('textPropertyOptions')
              ? TextPropertyOptions.fromJson(_json['textPropertyOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          timestampPropertyOptions:
              _json.containsKey('timestampPropertyOptions')
                  ? TimestampPropertyOptions.fromJson(
                      _json['timestampPropertyOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanPropertyOptions != null)
          'booleanPropertyOptions': booleanPropertyOptions!,
        if (datePropertyOptions != null)
          'datePropertyOptions': datePropertyOptions!,
        if (displayOptions != null) 'displayOptions': displayOptions!,
        if (doublePropertyOptions != null)
          'doublePropertyOptions': doublePropertyOptions!,
        if (enumPropertyOptions != null)
          'enumPropertyOptions': enumPropertyOptions!,
        if (htmlPropertyOptions != null)
          'htmlPropertyOptions': htmlPropertyOptions!,
        if (integerPropertyOptions != null)
          'integerPropertyOptions': integerPropertyOptions!,
        if (isFacetable != null) 'isFacetable': isFacetable!,
        if (isRepeatable != null) 'isRepeatable': isRepeatable!,
        if (isReturnable != null) 'isReturnable': isReturnable!,
        if (isSortable != null) 'isSortable': isSortable!,
        if (isSuggestable != null) 'isSuggestable': isSuggestable!,
        if (isWildcardSearchable != null)
          'isWildcardSearchable': isWildcardSearchable!,
        if (name != null) 'name': name!,
        if (objectPropertyOptions != null)
          'objectPropertyOptions': objectPropertyOptions!,
        if (textPropertyOptions != null)
          'textPropertyOptions': textPropertyOptions!,
        if (timestampPropertyOptions != null)
          'timestampPropertyOptions': timestampPropertyOptions!,
      };
}

/// The display options for a property.
class PropertyDisplayOptions {
  /// The user friendly label for the property that is used if the property is
  /// specified to be displayed in ObjectDisplayOptions.
  ///
  /// If provided, the display label is shown in front of the property values
  /// when the property is part of the object display options. For example, if
  /// the property value is '1', the value by itself may not be useful context
  /// for the user. If the display name given was 'priority', then the user sees
  /// 'priority : 1' in the search results which provides clear context to
  /// search users. This is OPTIONAL; if not given, only the property values are
  /// displayed. The maximum length is 64 characters.
  core.String? displayLabel;

  PropertyDisplayOptions({
    this.displayLabel,
  });

  PropertyDisplayOptions.fromJson(core.Map _json)
      : this(
          displayLabel: _json.containsKey('displayLabel')
              ? _json['displayLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayLabel != null) 'displayLabel': displayLabel!,
      };
}

/// Represents an item to be pushed to the indexing queue.
class PushItem {
  /// Content hash of the item according to the repository.
  ///
  /// If specified, this is used to determine how to modify this item's status.
  /// Setting this field and the type field results in argument error. The
  /// maximum length is 2048 characters.
  core.String? contentHash;

  /// Metadata hash of the item according to the repository.
  ///
  /// If specified, this is used to determine how to modify this item's status.
  /// Setting this field and the type field results in argument error. The
  /// maximum length is 2048 characters.
  core.String? metadataHash;

  /// Provides additional document state information for the connector, such as
  /// an alternate repository ID and other metadata.
  ///
  /// The maximum length is 8192 bytes.
  core.String? payload;
  core.List<core.int> get payloadAsBytes => convert.base64.decode(payload!);

  set payloadAsBytes(core.List<core.int> _bytes) {
    payload =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Queue to which this item belongs to.
  ///
  /// The default queue is chosen if this field is not specified. The maximum
  /// length is 512 characters.
  core.String? queue;

  /// Populate this field to store Connector or repository error details.
  ///
  /// This information is displayed in the Admin Console. This field may only be
  /// populated when the Type is REPOSITORY_ERROR.
  RepositoryError? repositoryError;

  /// Structured data hash of the item according to the repository.
  ///
  /// If specified, this is used to determine how to modify this item's status.
  /// Setting this field and the type field results in argument error. The
  /// maximum length is 2048 characters.
  core.String? structuredDataHash;

  /// The type of the push operation that defines the push behavior.
  /// Possible string values are:
  /// - "UNSPECIFIED" : Default UNSPECIFIED. Specifies that the push operation
  /// should not modify ItemStatus
  /// - "MODIFIED" : Indicates that the repository document has been modified or
  /// updated since the previous update call. This changes status to MODIFIED
  /// state for an existing item. If this is called on a non existing item, the
  /// status is changed to NEW_ITEM.
  /// - "NOT_MODIFIED" : Item in the repository has not been modified since the
  /// last update call. This push operation will set status to ACCEPTED state.
  /// - "REPOSITORY_ERROR" : Connector is facing a repository error regarding
  /// this item. Change status to REPOSITORY_ERROR state. Item is unreserved and
  /// rescheduled at a future time determined by exponential backoff.
  /// - "REQUEUE" : Call push with REQUEUE only for items that have been
  /// reserved. This action unreserves the item and resets its available time to
  /// the wall clock time.
  core.String? type;

  PushItem({
    this.contentHash,
    this.metadataHash,
    this.payload,
    this.queue,
    this.repositoryError,
    this.structuredDataHash,
    this.type,
  });

  PushItem.fromJson(core.Map _json)
      : this(
          contentHash: _json.containsKey('contentHash')
              ? _json['contentHash'] as core.String
              : null,
          metadataHash: _json.containsKey('metadataHash')
              ? _json['metadataHash'] as core.String
              : null,
          payload: _json.containsKey('payload')
              ? _json['payload'] as core.String
              : null,
          queue:
              _json.containsKey('queue') ? _json['queue'] as core.String : null,
          repositoryError: _json.containsKey('repositoryError')
              ? RepositoryError.fromJson(_json['repositoryError']
                  as core.Map<core.String, core.dynamic>)
              : null,
          structuredDataHash: _json.containsKey('structuredDataHash')
              ? _json['structuredDataHash'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contentHash != null) 'contentHash': contentHash!,
        if (metadataHash != null) 'metadataHash': metadataHash!,
        if (payload != null) 'payload': payload!,
        if (queue != null) 'queue': queue!,
        if (repositoryError != null) 'repositoryError': repositoryError!,
        if (structuredDataHash != null)
          'structuredDataHash': structuredDataHash!,
        if (type != null) 'type': type!,
      };
}

class PushItemRequest {
  /// Name of connector making this call.
  ///
  /// Format: datasources/{source_id}/connectors/{ID}
  core.String? connectorName;

  /// Common debug options.
  DebugOptions? debugOptions;

  /// Item to push onto the queue.
  PushItem? item;

  PushItemRequest({
    this.connectorName,
    this.debugOptions,
    this.item,
  });

  PushItemRequest.fromJson(core.Map _json)
      : this(
          connectorName: _json.containsKey('connectorName')
              ? _json['connectorName'] as core.String
              : null,
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          item: _json.containsKey('item')
              ? PushItem.fromJson(
                  _json['item'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorName != null) 'connectorName': connectorName!,
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (item != null) 'item': item!,
      };
}

class QueryCountByStatus {
  core.String? count;

  /// This represents the http status code.
  core.int? statusCode;

  QueryCountByStatus({
    this.count,
    this.statusCode,
  });

  QueryCountByStatus.fromJson(core.Map _json)
      : this(
          count:
              _json.containsKey('count') ? _json['count'] as core.String : null,
          statusCode: _json.containsKey('statusCode')
              ? _json['statusCode'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (statusCode != null) 'statusCode': statusCode!,
      };
}

class QueryInterpretation {
  ///
  /// Possible string values are:
  /// - "NONE" : Neither the natural language interpretation, nor a broader
  /// version of the query is used to fetch the search results.
  /// - "BLEND" : The results from original query are blended with other
  /// results. The reason for blending these other results with the results from
  /// original query is populated in the 'Reason' field below.
  /// - "REPLACE" : The results from original query are replaced. The reason for
  /// replacing the results from original query is populated in the 'Reason'
  /// field below.
  core.String? interpretationType;

  /// The interpretation of the query used in search.
  ///
  /// For example, queries with natural language intent like "email from john"
  /// will be interpreted as "from:john source:mail". This field will not be
  /// filled when the reason is NOT_ENOUGH_RESULTS_FOUND_FOR_USER_QUERY.
  core.String? interpretedQuery;

  /// The reason for interpretation of the query.
  ///
  /// This field will not be UNSPECIFIED if the interpretation type is not NONE.
  /// Possible string values are:
  /// - "UNSPECIFIED"
  /// - "QUERY_HAS_NATURAL_LANGUAGE_INTENT" : Natural language interpretation of
  /// the query is used to fetch the search results.
  /// - "NOT_ENOUGH_RESULTS_FOUND_FOR_USER_QUERY" : Query and document terms
  /// similarity is used to selectively broaden the query to retrieve additional
  /// search results since enough results were not found for the user query.
  /// Interpreted query will be empty for this case.
  core.String? reason;

  QueryInterpretation({
    this.interpretationType,
    this.interpretedQuery,
    this.reason,
  });

  QueryInterpretation.fromJson(core.Map _json)
      : this(
          interpretationType: _json.containsKey('interpretationType')
              ? _json['interpretationType'] as core.String
              : null,
          interpretedQuery: _json.containsKey('interpretedQuery')
              ? _json['interpretedQuery'] as core.String
              : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (interpretationType != null)
          'interpretationType': interpretationType!,
        if (interpretedQuery != null) 'interpretedQuery': interpretedQuery!,
        if (reason != null) 'reason': reason!,
      };
}

/// Default options to interpret user query.
class QueryInterpretationConfig {
  /// Set this flag to disable supplemental results retrieval, setting a flag
  /// here will not retrieve supplemental results for queries associated with a
  /// given search application.
  ///
  /// If this flag is set to True, it will take precedence over the option set
  /// at Query level. For the default value of False, query level flag will set
  /// the correct interpretation for supplemental results.
  core.bool? forceDisableSupplementalResults;

  /// Enable this flag to turn off all internal optimizations like natural
  /// language (NL) interpretation of queries, supplemental results retrieval,
  /// and usage of synonyms including custom ones.
  ///
  /// If this flag is set to True, it will take precedence over the option set
  /// at Query level. For the default value of False, query level flag will set
  /// the correct interpretation for verbatim mode.
  core.bool? forceVerbatimMode;

  QueryInterpretationConfig({
    this.forceDisableSupplementalResults,
    this.forceVerbatimMode,
  });

  QueryInterpretationConfig.fromJson(core.Map _json)
      : this(
          forceDisableSupplementalResults:
              _json.containsKey('forceDisableSupplementalResults')
                  ? _json['forceDisableSupplementalResults'] as core.bool
                  : null,
          forceVerbatimMode: _json.containsKey('forceVerbatimMode')
              ? _json['forceVerbatimMode'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (forceDisableSupplementalResults != null)
          'forceDisableSupplementalResults': forceDisableSupplementalResults!,
        if (forceVerbatimMode != null) 'forceVerbatimMode': forceVerbatimMode!,
      };
}

/// Options to interpret user query.
class QueryInterpretationOptions {
  /// Flag to disable natural language (NL) interpretation of queries.
  ///
  /// Default is false, Set to true to disable natural language interpretation.
  /// NL interpretation only applies to predefined datasources.
  core.bool? disableNlInterpretation;

  /// Use this flag to disable supplemental results for a query.
  ///
  /// Supplemental results setting chosen at SearchApplication level will take
  /// precedence if set to True.
  core.bool? disableSupplementalResults;

  /// Enable this flag to turn off all internal optimizations like natural
  /// language (NL) interpretation of queries, supplemental result retrieval,
  /// and usage of synonyms including custom ones.
  ///
  /// Nl interpretation will be disabled if either one of the two flags is true.
  core.bool? enableVerbatimMode;

  QueryInterpretationOptions({
    this.disableNlInterpretation,
    this.disableSupplementalResults,
    this.enableVerbatimMode,
  });

  QueryInterpretationOptions.fromJson(core.Map _json)
      : this(
          disableNlInterpretation: _json.containsKey('disableNlInterpretation')
              ? _json['disableNlInterpretation'] as core.bool
              : null,
          disableSupplementalResults:
              _json.containsKey('disableSupplementalResults')
                  ? _json['disableSupplementalResults'] as core.bool
                  : null,
          enableVerbatimMode: _json.containsKey('enableVerbatimMode')
              ? _json['enableVerbatimMode'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableNlInterpretation != null)
          'disableNlInterpretation': disableNlInterpretation!,
        if (disableSupplementalResults != null)
          'disableSupplementalResults': disableSupplementalResults!,
        if (enableVerbatimMode != null)
          'enableVerbatimMode': enableVerbatimMode!,
      };
}

/// The definition of a operator that can be used in a Search/Suggest request.
class QueryOperator {
  /// Display name of the operator
  core.String? displayName;

  /// Potential list of values for the opeatror field.
  ///
  /// This field is only filled when we can safely enumerate all the possible
  /// values of this operator.
  core.List<core.String>? enumValues;

  /// Indicates the operator name that can be used to isolate the property using
  /// the greater-than operator.
  core.String? greaterThanOperatorName;

  /// Can this operator be used to get facets.
  core.bool? isFacetable;

  /// Indicates if multiple values can be set for this property.
  core.bool? isRepeatable;

  /// Will the property associated with this facet be returned as part of search
  /// results.
  core.bool? isReturnable;

  /// Can this operator be used to sort results.
  core.bool? isSortable;

  /// Can get suggestions for this field.
  core.bool? isSuggestable;

  /// Indicates the operator name that can be used to isolate the property using
  /// the less-than operator.
  core.String? lessThanOperatorName;

  /// Name of the object corresponding to the operator.
  ///
  /// This field is only filled for schema-specific operators, and is unset for
  /// common operators.
  core.String? objectType;

  /// The name of the operator.
  core.String? operatorName;

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
  core.String? type;

  QueryOperator({
    this.displayName,
    this.enumValues,
    this.greaterThanOperatorName,
    this.isFacetable,
    this.isRepeatable,
    this.isReturnable,
    this.isSortable,
    this.isSuggestable,
    this.lessThanOperatorName,
    this.objectType,
    this.operatorName,
    this.type,
  });

  QueryOperator.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enumValues: _json.containsKey('enumValues')
              ? (_json['enumValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          greaterThanOperatorName: _json.containsKey('greaterThanOperatorName')
              ? _json['greaterThanOperatorName'] as core.String
              : null,
          isFacetable: _json.containsKey('isFacetable')
              ? _json['isFacetable'] as core.bool
              : null,
          isRepeatable: _json.containsKey('isRepeatable')
              ? _json['isRepeatable'] as core.bool
              : null,
          isReturnable: _json.containsKey('isReturnable')
              ? _json['isReturnable'] as core.bool
              : null,
          isSortable: _json.containsKey('isSortable')
              ? _json['isSortable'] as core.bool
              : null,
          isSuggestable: _json.containsKey('isSuggestable')
              ? _json['isSuggestable'] as core.bool
              : null,
          lessThanOperatorName: _json.containsKey('lessThanOperatorName')
              ? _json['lessThanOperatorName'] as core.String
              : null,
          objectType: _json.containsKey('objectType')
              ? _json['objectType'] as core.String
              : null,
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (enumValues != null) 'enumValues': enumValues!,
        if (greaterThanOperatorName != null)
          'greaterThanOperatorName': greaterThanOperatorName!,
        if (isFacetable != null) 'isFacetable': isFacetable!,
        if (isRepeatable != null) 'isRepeatable': isRepeatable!,
        if (isReturnable != null) 'isReturnable': isReturnable!,
        if (isSortable != null) 'isSortable': isSortable!,
        if (isSuggestable != null) 'isSuggestable': isSuggestable!,
        if (lessThanOperatorName != null)
          'lessThanOperatorName': lessThanOperatorName!,
        if (objectType != null) 'objectType': objectType!,
        if (operatorName != null) 'operatorName': operatorName!,
        if (type != null) 'type': type!,
      };
}

/// List of sources that the user can search using the query API.
class QuerySource {
  /// Display name of the data source.
  core.String? displayName;

  /// List of all operators applicable for this source.
  core.List<QueryOperator>? operators;

  /// A short name or alias for the source.
  ///
  /// This value can be used with the 'source' operator.
  core.String? shortName;

  /// Name of the source
  Source? source;

  QuerySource({
    this.displayName,
    this.operators,
    this.shortName,
    this.source,
  });

  QuerySource.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          operators: _json.containsKey('operators')
              ? (_json['operators'] as core.List)
                  .map((value) => QueryOperator.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shortName: _json.containsKey('shortName')
              ? _json['shortName'] as core.String
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (operators != null) 'operators': operators!,
        if (shortName != null) 'shortName': shortName!,
        if (source != null) 'source': source!,
      };
}

/// This field does not contain anything as of now and is just used as an
/// indicator that the suggest result was a phrase completion.
typedef QuerySuggestion = $Empty;

/// Errors when the connector is communicating to the source repository.
class RepositoryError {
  /// Message that describes the error.
  ///
  /// The maximum allowable length of the message is 8192 characters.
  core.String? errorMessage;

  /// Error codes.
  ///
  /// Matches the definition of HTTP status codes.
  core.int? httpStatusCode;

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
  /// the connector to the repository server.
  core.String? type;

  RepositoryError({
    this.errorMessage,
    this.httpStatusCode,
    this.type,
  });

  RepositoryError.fromJson(core.Map _json)
      : this(
          errorMessage: _json.containsKey('errorMessage')
              ? _json['errorMessage'] as core.String
              : null,
          httpStatusCode: _json.containsKey('httpStatusCode')
              ? _json['httpStatusCode'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (errorMessage != null) 'errorMessage': errorMessage!,
        if (httpStatusCode != null) 'httpStatusCode': httpStatusCode!,
        if (type != null) 'type': type!,
      };
}

/// Shared request options for all RPC methods.
class RequestOptions {
  /// Debug options of the request
  DebugOptions? debugOptions;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. For
  /// translations. Set this field using the language set in browser or for the
  /// page. In the event that the user's language preference is known, set this
  /// field to the known user language. When specified, the documents in search
  /// results are biased towards the specified language. The suggest API does
  /// not use this parameter. Instead, suggest autocompletes only based on
  /// characters in the query.
  core.String? languageCode;

  /// The ID generated when you create a search application using the
  /// [admin console](https://support.google.com/a/answer/9043922).
  core.String? searchApplicationId;

  /// Current user's time zone id, such as "America/Los_Angeles" or
  /// "Australia/Sydney".
  ///
  /// These IDs are defined by \[Unicode Common Locale Data Repository
  /// (CLDR)\](http://cldr.unicode.org/) project, and currently available in the
  /// file
  /// [timezone.xml](http://unicode.org/repos/cldr/trunk/common/bcp47/timezone.xml).
  /// This field is used to correctly interpret date and time queries. If this
  /// field is not specified, the default time zone (UTC) is used.
  core.String? timeZone;

  RequestOptions({
    this.debugOptions,
    this.languageCode,
    this.searchApplicationId,
    this.timeZone,
  });

  RequestOptions.fromJson(core.Map _json)
      : this(
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          searchApplicationId: _json.containsKey('searchApplicationId')
              ? _json['searchApplicationId'] as core.String
              : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (searchApplicationId != null)
          'searchApplicationId': searchApplicationId!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

class ResetSearchApplicationRequest {
  /// Common debug options.
  DebugOptions? debugOptions;

  ResetSearchApplicationRequest({
    this.debugOptions,
  });

  ResetSearchApplicationRequest.fromJson(core.Map _json)
      : this(
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugOptions != null) 'debugOptions': debugOptions!,
      };
}

/// Debugging information about the response.
typedef ResponseDebugInfo = $DebugInfo;

/// Result count information
class ResultCounts {
  /// Result count information for each source with results.
  core.List<SourceResultCount>? sourceResultCounts;

  ResultCounts({
    this.sourceResultCounts,
  });

  ResultCounts.fromJson(core.Map _json)
      : this(
          sourceResultCounts: _json.containsKey('sourceResultCounts')
              ? (_json['sourceResultCounts'] as core.List)
                  .map((value) => SourceResultCount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceResultCounts != null)
          'sourceResultCounts': sourceResultCounts!,
      };
}

/// Debugging information about the result.
typedef ResultDebugInfo = $DebugInfo;

/// Display Fields for Search Results
class ResultDisplayField {
  /// The display label for the property.
  core.String? label;

  /// The operator name of the property.
  core.String? operatorName;

  /// The name value pair for the property.
  NamedProperty? property;

  ResultDisplayField({
    this.label,
    this.operatorName,
    this.property,
  });

  ResultDisplayField.fromJson(core.Map _json)
      : this(
          label:
              _json.containsKey('label') ? _json['label'] as core.String : null,
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
          property: _json.containsKey('property')
              ? NamedProperty.fromJson(
                  _json['property'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (operatorName != null) 'operatorName': operatorName!,
        if (property != null) 'property': property!,
      };
}

/// The collection of fields that make up a displayed line
class ResultDisplayLine {
  core.List<ResultDisplayField>? fields;

  ResultDisplayLine({
    this.fields,
  });

  ResultDisplayLine.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => ResultDisplayField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

class ResultDisplayMetadata {
  /// The metalines content to be displayed with the result.
  core.List<ResultDisplayLine>? metalines;

  /// The display label for the object.
  core.String? objectTypeLabel;

  ResultDisplayMetadata({
    this.metalines,
    this.objectTypeLabel,
  });

  ResultDisplayMetadata.fromJson(core.Map _json)
      : this(
          metalines: _json.containsKey('metalines')
              ? (_json['metalines'] as core.List)
                  .map((value) => ResultDisplayLine.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          objectTypeLabel: _json.containsKey('objectTypeLabel')
              ? _json['objectTypeLabel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metalines != null) 'metalines': metalines!,
        if (objectTypeLabel != null) 'objectTypeLabel': objectTypeLabel!,
      };
}

class RetrievalImportance {
  /// Indicates the ranking importance given to property when it is matched
  /// during retrieval.
  ///
  /// Once set, the token importance of a property cannot be changed.
  /// Possible string values are:
  /// - "DEFAULT" : Treat the match like a body text match.
  /// - "HIGHEST" : Treat the match like a match against title of the item.
  /// - "HIGH" : Treat the match with higher importance than body text.
  /// - "LOW" : Treat the match with lower importance than body text.
  /// - "NONE" : Do not match against this field during retrieval. The property
  /// can still be used for operator matching, faceting, and suggest if desired.
  core.String? importance;

  RetrievalImportance({
    this.importance,
  });

  RetrievalImportance.fromJson(core.Map _json)
      : this(
          importance: _json.containsKey('importance')
              ? _json['importance'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (importance != null) 'importance': importance!,
      };
}

/// The schema definition for a data source.
class Schema {
  /// The list of top-level objects for the data source.
  ///
  /// The maximum number of elements is 10.
  core.List<ObjectDefinition>? objectDefinitions;

  /// IDs of the Long Running Operations (LROs) currently running for this
  /// schema.
  ///
  /// After modifying the schema, wait for operations to complete before
  /// indexing additional content.
  core.List<core.String>? operationIds;

  Schema({
    this.objectDefinitions,
    this.operationIds,
  });

  Schema.fromJson(core.Map _json)
      : this(
          objectDefinitions: _json.containsKey('objectDefinitions')
              ? (_json['objectDefinitions'] as core.List)
                  .map((value) => ObjectDefinition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          operationIds: _json.containsKey('operationIds')
              ? (_json['operationIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectDefinitions != null) 'objectDefinitions': objectDefinitions!,
        if (operationIds != null) 'operationIds': operationIds!,
      };
}

/// Scoring configurations for a source while processing a Search or Suggest
/// request.
class ScoringConfig {
  /// Whether to use freshness as a ranking signal.
  ///
  /// By default, freshness is used as a ranking signal. Note that this setting
  /// is not available in the Admin UI.
  core.bool? disableFreshness;

  /// Whether to personalize the results.
  ///
  /// By default, personal signals will be used to boost results.
  core.bool? disablePersonalization;

  ScoringConfig({
    this.disableFreshness,
    this.disablePersonalization,
  });

  ScoringConfig.fromJson(core.Map _json)
      : this(
          disableFreshness: _json.containsKey('disableFreshness')
              ? _json['disableFreshness'] as core.bool
              : null,
          disablePersonalization: _json.containsKey('disablePersonalization')
              ? _json['disablePersonalization'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disableFreshness != null) 'disableFreshness': disableFreshness!,
        if (disablePersonalization != null)
          'disablePersonalization': disablePersonalization!,
      };
}

/// SearchApplication
class SearchApplication {
  /// Retrictions applied to the configurations.
  ///
  /// The maximum number of elements is 10.
  core.List<DataSourceRestriction>? dataSourceRestrictions;

  /// The default fields for returning facet results.
  ///
  /// The sources specified here also have been included in
  /// data_source_restrictions above.
  core.List<FacetOptions>? defaultFacetOptions;

  /// The default options for sorting the search results
  SortOptions? defaultSortOptions;

  /// Display name of the Search Application.
  ///
  /// The maximum length is 300 characters.
  core.String? displayName;

  /// Indicates whether audit logging is on/off for requests made for the search
  /// application in query APIs.
  core.bool? enableAuditLog;

  /// Name of the Search Application.
  ///
  /// Format: searchapplications/{application_id}.
  core.String? name;

  /// IDs of the Long Running Operations (LROs) currently running for this
  /// schema.
  ///
  /// Output only field.
  ///
  /// Output only.
  core.List<core.String>? operationIds;

  /// The default options for query interpretation
  QueryInterpretationConfig? queryInterpretationConfig;

  /// With each result we should return the URI for its thumbnail (when
  /// applicable)
  core.bool? returnResultThumbnailUrls;

  /// Configuration for ranking results.
  ScoringConfig? scoringConfig;

  /// Configuration for a sources specified in data_source_restrictions.
  core.List<SourceConfig>? sourceConfig;

  SearchApplication({
    this.dataSourceRestrictions,
    this.defaultFacetOptions,
    this.defaultSortOptions,
    this.displayName,
    this.enableAuditLog,
    this.name,
    this.operationIds,
    this.queryInterpretationConfig,
    this.returnResultThumbnailUrls,
    this.scoringConfig,
    this.sourceConfig,
  });

  SearchApplication.fromJson(core.Map _json)
      : this(
          dataSourceRestrictions: _json.containsKey('dataSourceRestrictions')
              ? (_json['dataSourceRestrictions'] as core.List)
                  .map((value) => DataSourceRestriction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          defaultFacetOptions: _json.containsKey('defaultFacetOptions')
              ? (_json['defaultFacetOptions'] as core.List)
                  .map((value) => FacetOptions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          defaultSortOptions: _json.containsKey('defaultSortOptions')
              ? SortOptions.fromJson(_json['defaultSortOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enableAuditLog: _json.containsKey('enableAuditLog')
              ? _json['enableAuditLog'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          operationIds: _json.containsKey('operationIds')
              ? (_json['operationIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          queryInterpretationConfig:
              _json.containsKey('queryInterpretationConfig')
                  ? QueryInterpretationConfig.fromJson(
                      _json['queryInterpretationConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          returnResultThumbnailUrls:
              _json.containsKey('returnResultThumbnailUrls')
                  ? _json['returnResultThumbnailUrls'] as core.bool
                  : null,
          scoringConfig: _json.containsKey('scoringConfig')
              ? ScoringConfig.fromJson(
                  _json['scoringConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceConfig: _json.containsKey('sourceConfig')
              ? (_json['sourceConfig'] as core.List)
                  .map((value) => SourceConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceRestrictions != null)
          'dataSourceRestrictions': dataSourceRestrictions!,
        if (defaultFacetOptions != null)
          'defaultFacetOptions': defaultFacetOptions!,
        if (defaultSortOptions != null)
          'defaultSortOptions': defaultSortOptions!,
        if (displayName != null) 'displayName': displayName!,
        if (enableAuditLog != null) 'enableAuditLog': enableAuditLog!,
        if (name != null) 'name': name!,
        if (operationIds != null) 'operationIds': operationIds!,
        if (queryInterpretationConfig != null)
          'queryInterpretationConfig': queryInterpretationConfig!,
        if (returnResultThumbnailUrls != null)
          'returnResultThumbnailUrls': returnResultThumbnailUrls!,
        if (scoringConfig != null) 'scoringConfig': scoringConfig!,
        if (sourceConfig != null) 'sourceConfig': sourceConfig!,
      };
}

/// Search application level query stats per date
class SearchApplicationQueryStats {
  /// Date for which query stats were calculated.
  ///
  /// Stats calculated on the next day close to midnight are returned.
  Date? date;
  core.List<QueryCountByStatus>? queryCountByStatus;

  SearchApplicationQueryStats({
    this.date,
    this.queryCountByStatus,
  });

  SearchApplicationQueryStats.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          queryCountByStatus: _json.containsKey('queryCountByStatus')
              ? (_json['queryCountByStatus'] as core.List)
                  .map((value) => QueryCountByStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (queryCountByStatus != null)
          'queryCountByStatus': queryCountByStatus!,
      };
}

class SearchApplicationSessionStats {
  /// Date for which session stats were calculated.
  ///
  /// Stats are calculated on the following day, close to midnight PST, and then
  /// returned.
  Date? date;

  /// The count of search sessions on the day
  core.String? searchSessionsCount;

  SearchApplicationSessionStats({
    this.date,
    this.searchSessionsCount,
  });

  SearchApplicationSessionStats.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          searchSessionsCount: _json.containsKey('searchSessionsCount')
              ? _json['searchSessionsCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (searchSessionsCount != null)
          'searchSessionsCount': searchSessionsCount!,
      };
}

class SearchApplicationUserStats {
  /// Date for which session stats were calculated.
  ///
  /// Stats calculated on the next day close to midnight are returned.
  Date? date;

  /// The count of unique active users in the past one day
  core.String? oneDayActiveUsersCount;

  /// The count of unique active users in the past seven days
  core.String? sevenDaysActiveUsersCount;

  /// The count of unique active users in the past thirty days
  core.String? thirtyDaysActiveUsersCount;

  SearchApplicationUserStats({
    this.date,
    this.oneDayActiveUsersCount,
    this.sevenDaysActiveUsersCount,
    this.thirtyDaysActiveUsersCount,
  });

  SearchApplicationUserStats.fromJson(core.Map _json)
      : this(
          date: _json.containsKey('date')
              ? Date.fromJson(
                  _json['date'] as core.Map<core.String, core.dynamic>)
              : null,
          oneDayActiveUsersCount: _json.containsKey('oneDayActiveUsersCount')
              ? _json['oneDayActiveUsersCount'] as core.String
              : null,
          sevenDaysActiveUsersCount:
              _json.containsKey('sevenDaysActiveUsersCount')
                  ? _json['sevenDaysActiveUsersCount'] as core.String
                  : null,
          thirtyDaysActiveUsersCount:
              _json.containsKey('thirtyDaysActiveUsersCount')
                  ? _json['thirtyDaysActiveUsersCount'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (date != null) 'date': date!,
        if (oneDayActiveUsersCount != null)
          'oneDayActiveUsersCount': oneDayActiveUsersCount!,
        if (sevenDaysActiveUsersCount != null)
          'sevenDaysActiveUsersCount': sevenDaysActiveUsersCount!,
        if (thirtyDaysActiveUsersCount != null)
          'thirtyDaysActiveUsersCount': thirtyDaysActiveUsersCount!,
      };
}

class SearchItemsByViewUrlRequest {
  /// Common debug options.
  DebugOptions? debugOptions;

  /// The next_page_token value returned from a previous request, if any.
  core.String? pageToken;

  /// Specify the full view URL to find the corresponding item.
  ///
  /// The maximum length is 2048 characters.
  core.String? viewUrl;

  SearchItemsByViewUrlRequest({
    this.debugOptions,
    this.pageToken,
    this.viewUrl,
  });

  SearchItemsByViewUrlRequest.fromJson(core.Map _json)
      : this(
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          pageToken: _json.containsKey('pageToken')
              ? _json['pageToken'] as core.String
              : null,
          viewUrl: _json.containsKey('viewUrl')
              ? _json['viewUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (viewUrl != null) 'viewUrl': viewUrl!,
      };
}

class SearchItemsByViewUrlResponse {
  core.List<Item>? items;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  SearchItemsByViewUrlResponse({
    this.items,
    this.nextPageToken,
  });

  SearchItemsByViewUrlResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Item.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Additional search quality metadata of the item.
class SearchQualityMetadata {
  /// An indication of the quality of the item, used to influence search
  /// quality.
  ///
  /// Value should be between 0.0 (lowest quality) and 1.0 (highest quality).
  /// The default value is 0.0.
  core.double? quality;

  SearchQualityMetadata({
    this.quality,
  });

  SearchQualityMetadata.fromJson(core.Map _json)
      : this(
          quality: _json.containsKey('quality')
              ? (_json['quality'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (quality != null) 'quality': quality!,
      };
}

/// The search API request.
class SearchRequest {
  /// Context attributes for the request which will be used to adjust ranking of
  /// search results.
  ///
  /// The maximum number of elements is 10.
  core.List<ContextAttribute>? contextAttributes;

  /// The sources to use for querying.
  ///
  /// If not specified, all data sources from the current search application are
  /// used.
  core.List<DataSourceRestriction>? dataSourceRestrictions;
  core.List<FacetOptions>? facetOptions;

  /// Maximum number of search results to return in one page.
  ///
  /// Valid values are between 1 and 100, inclusive. Default value is 10.
  /// Minimum value is 50 when results beyond 2000 are requested.
  core.int? pageSize;

  /// The raw query string.
  ///
  /// See supported search operators in the
  /// [Narrow your search with operators](https://support.google.com/cloudsearch/answer/6172299)
  core.String? query;

  /// Options to interpret the user query.
  QueryInterpretationOptions? queryInterpretationOptions;

  /// Request options, such as the search application and user timezone.
  RequestOptions? requestOptions;

  /// The options for sorting the search results
  SortOptions? sortOptions;

  /// Starting index of the results.
  core.int? start;

  SearchRequest({
    this.contextAttributes,
    this.dataSourceRestrictions,
    this.facetOptions,
    this.pageSize,
    this.query,
    this.queryInterpretationOptions,
    this.requestOptions,
    this.sortOptions,
    this.start,
  });

  SearchRequest.fromJson(core.Map _json)
      : this(
          contextAttributes: _json.containsKey('contextAttributes')
              ? (_json['contextAttributes'] as core.List)
                  .map((value) => ContextAttribute.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dataSourceRestrictions: _json.containsKey('dataSourceRestrictions')
              ? (_json['dataSourceRestrictions'] as core.List)
                  .map((value) => DataSourceRestriction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          facetOptions: _json.containsKey('facetOptions')
              ? (_json['facetOptions'] as core.List)
                  .map((value) => FacetOptions.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageSize: _json.containsKey('pageSize')
              ? _json['pageSize'] as core.int
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          queryInterpretationOptions:
              _json.containsKey('queryInterpretationOptions')
                  ? QueryInterpretationOptions.fromJson(
                      _json['queryInterpretationOptions']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          requestOptions: _json.containsKey('requestOptions')
              ? RequestOptions.fromJson(_json['requestOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sortOptions: _json.containsKey('sortOptions')
              ? SortOptions.fromJson(
                  _json['sortOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          start: _json.containsKey('start') ? _json['start'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contextAttributes != null) 'contextAttributes': contextAttributes!,
        if (dataSourceRestrictions != null)
          'dataSourceRestrictions': dataSourceRestrictions!,
        if (facetOptions != null) 'facetOptions': facetOptions!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (query != null) 'query': query!,
        if (queryInterpretationOptions != null)
          'queryInterpretationOptions': queryInterpretationOptions!,
        if (requestOptions != null) 'requestOptions': requestOptions!,
        if (sortOptions != null) 'sortOptions': sortOptions!,
        if (start != null) 'start': start!,
      };
}

/// The search API response.
class SearchResponse {
  /// Debugging information about the response.
  ResponseDebugInfo? debugInfo;

  /// Error information about the response.
  ErrorInfo? errorInfo;

  /// Repeated facet results.
  core.List<FacetResult>? facetResults;

  /// Whether there are more search results matching the query.
  core.bool? hasMoreResults;

  /// Query interpretation result for user query.
  ///
  /// Empty if query interpretation is disabled.
  QueryInterpretation? queryInterpretation;

  /// The estimated result count for this query.
  core.String? resultCountEstimate;

  /// The exact result count for this query.
  core.String? resultCountExact;

  /// Expanded result count information.
  ResultCounts? resultCounts;

  /// Results from a search query.
  core.List<SearchResult>? results;

  /// Suggested spelling for the query.
  core.List<SpellResult>? spellResults;

  /// Structured results for the user query.
  ///
  /// These results are not counted against the page_size.
  core.List<StructuredResult>? structuredResults;

  SearchResponse({
    this.debugInfo,
    this.errorInfo,
    this.facetResults,
    this.hasMoreResults,
    this.queryInterpretation,
    this.resultCountEstimate,
    this.resultCountExact,
    this.resultCounts,
    this.results,
    this.spellResults,
    this.structuredResults,
  });

  SearchResponse.fromJson(core.Map _json)
      : this(
          debugInfo: _json.containsKey('debugInfo')
              ? ResponseDebugInfo.fromJson(
                  _json['debugInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          errorInfo: _json.containsKey('errorInfo')
              ? ErrorInfo.fromJson(
                  _json['errorInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          facetResults: _json.containsKey('facetResults')
              ? (_json['facetResults'] as core.List)
                  .map((value) => FacetResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          hasMoreResults: _json.containsKey('hasMoreResults')
              ? _json['hasMoreResults'] as core.bool
              : null,
          queryInterpretation: _json.containsKey('queryInterpretation')
              ? QueryInterpretation.fromJson(_json['queryInterpretation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resultCountEstimate: _json.containsKey('resultCountEstimate')
              ? _json['resultCountEstimate'] as core.String
              : null,
          resultCountExact: _json.containsKey('resultCountExact')
              ? _json['resultCountExact'] as core.String
              : null,
          resultCounts: _json.containsKey('resultCounts')
              ? ResultCounts.fromJson(
                  _json['resultCounts'] as core.Map<core.String, core.dynamic>)
              : null,
          results: _json.containsKey('results')
              ? (_json['results'] as core.List)
                  .map((value) => SearchResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          spellResults: _json.containsKey('spellResults')
              ? (_json['spellResults'] as core.List)
                  .map((value) => SpellResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          structuredResults: _json.containsKey('structuredResults')
              ? (_json['structuredResults'] as core.List)
                  .map((value) => StructuredResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugInfo != null) 'debugInfo': debugInfo!,
        if (errorInfo != null) 'errorInfo': errorInfo!,
        if (facetResults != null) 'facetResults': facetResults!,
        if (hasMoreResults != null) 'hasMoreResults': hasMoreResults!,
        if (queryInterpretation != null)
          'queryInterpretation': queryInterpretation!,
        if (resultCountEstimate != null)
          'resultCountEstimate': resultCountEstimate!,
        if (resultCountExact != null) 'resultCountExact': resultCountExact!,
        if (resultCounts != null) 'resultCounts': resultCounts!,
        if (results != null) 'results': results!,
        if (spellResults != null) 'spellResults': spellResults!,
        if (structuredResults != null) 'structuredResults': structuredResults!,
      };
}

/// Results containing indexed information for a document.
class SearchResult {
  /// If source is clustered, provide list of clustered results.
  ///
  /// There will only be one level of clustered results. If current source is
  /// not enabled for clustering, this field will be empty.
  core.List<SearchResult>? clusteredResults;

  /// Debugging information about this search result.
  ResultDebugInfo? debugInfo;

  /// Metadata of the search result.
  Metadata? metadata;

  /// The concatenation of all snippets (summaries) available for this result.
  Snippet? snippet;

  /// Title of the search result.
  core.String? title;

  /// The URL of the search result.
  ///
  /// The URL contains a Google redirect to the actual item. This URL is signed
  /// and shouldn't be changed.
  core.String? url;

  SearchResult({
    this.clusteredResults,
    this.debugInfo,
    this.metadata,
    this.snippet,
    this.title,
    this.url,
  });

  SearchResult.fromJson(core.Map _json)
      : this(
          clusteredResults: _json.containsKey('clusteredResults')
              ? (_json['clusteredResults'] as core.List)
                  .map((value) => SearchResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          debugInfo: _json.containsKey('debugInfo')
              ? ResultDebugInfo.fromJson(
                  _json['debugInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? Metadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          snippet: _json.containsKey('snippet')
              ? Snippet.fromJson(
                  _json['snippet'] as core.Map<core.String, core.dynamic>)
              : null,
          title:
              _json.containsKey('title') ? _json['title'] as core.String : null,
          url: _json.containsKey('url') ? _json['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusteredResults != null) 'clusteredResults': clusteredResults!,
        if (debugInfo != null) 'debugInfo': debugInfo!,
        if (metadata != null) 'metadata': metadata!,
        if (snippet != null) 'snippet': snippet!,
        if (title != null) 'title': title!,
        if (url != null) 'url': url!,
      };
}

/// Snippet of the search result, which summarizes the content of the resulting
/// page.
class Snippet {
  /// The matched ranges in the snippet.
  core.List<MatchRange>? matchRanges;

  /// The snippet of the document.
  ///
  /// The snippet of the document. May contain escaped HTML character that
  /// should be unescaped prior to rendering.
  core.String? snippet;

  Snippet({
    this.matchRanges,
    this.snippet,
  });

  Snippet.fromJson(core.Map _json)
      : this(
          matchRanges: _json.containsKey('matchRanges')
              ? (_json['matchRanges'] as core.List)
                  .map((value) => MatchRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          snippet: _json.containsKey('snippet')
              ? _json['snippet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (matchRanges != null) 'matchRanges': matchRanges!,
        if (snippet != null) 'snippet': snippet!,
      };
}

class SortOptions {
  /// Name of the operator corresponding to the field to sort on.
  ///
  /// The corresponding property must be marked as sortable.
  core.String? operatorName;

  /// Ascending is the default sort order
  /// Possible string values are:
  /// - "ASCENDING"
  /// - "DESCENDING"
  core.String? sortOrder;

  SortOptions({
    this.operatorName,
    this.sortOrder,
  });

  SortOptions.fromJson(core.Map _json)
      : this(
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
          sortOrder: _json.containsKey('sortOrder')
              ? _json['sortOrder'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorName != null) 'operatorName': operatorName!,
        if (sortOrder != null) 'sortOrder': sortOrder!,
      };
}

/// Defines sources for the suggest/search APIs.
class Source {
  /// Source name for content indexed by the Indexing API.
  core.String? name;

  /// Predefined content source for Google Apps.
  /// Possible string values are:
  /// - "NONE"
  /// - "QUERY_HISTORY" : Suggests queries issued by the user in the past. Only
  /// valid when used with the suggest API. Ignored when used in the query API.
  /// - "PERSON" : Suggests people in the organization. Only valid when used
  /// with the suggest API. Results in an error when used in the query API.
  /// - "GOOGLE_DRIVE"
  /// - "GOOGLE_GMAIL"
  /// - "GOOGLE_SITES"
  /// - "GOOGLE_GROUPS"
  /// - "GOOGLE_CALENDAR"
  /// - "GOOGLE_KEEP"
  core.String? predefinedSource;

  Source({
    this.name,
    this.predefinedSource,
  });

  Source.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          predefinedSource: _json.containsKey('predefinedSource')
              ? _json['predefinedSource'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (predefinedSource != null) 'predefinedSource': predefinedSource!,
      };
}

/// Configurations for a source while processing a Search or Suggest request.
class SourceConfig {
  /// The crowding configuration for the source.
  SourceCrowdingConfig? crowdingConfig;

  /// The scoring configuration for the source.
  SourceScoringConfig? scoringConfig;

  /// The source for which this configuration is to be used.
  Source? source;

  SourceConfig({
    this.crowdingConfig,
    this.scoringConfig,
    this.source,
  });

  SourceConfig.fromJson(core.Map _json)
      : this(
          crowdingConfig: _json.containsKey('crowdingConfig')
              ? SourceCrowdingConfig.fromJson(_json['crowdingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          scoringConfig: _json.containsKey('scoringConfig')
              ? SourceScoringConfig.fromJson(
                  _json['scoringConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (crowdingConfig != null) 'crowdingConfig': crowdingConfig!,
        if (scoringConfig != null) 'scoringConfig': scoringConfig!,
        if (source != null) 'source': source!,
      };
}

/// Set search results crowding limits.
///
/// Crowding is a situation in which multiple results from the same source or
/// host "crowd out" other results, diminishing the quality of search for users.
/// To foster better search quality and source diversity in search results, you
/// can set a condition to reduce repetitive results by source.
class SourceCrowdingConfig {
  /// Maximum number of results allowed from a datasource in a result page as
  /// long as results from other sources are not exhausted.
  ///
  /// Value specified must not be negative. A default value is used if this
  /// value is equal to 0. To disable crowding, set the value greater than 100.
  core.int? numResults;

  /// Maximum number of suggestions allowed from a source.
  ///
  /// No limits will be set on results if this value is less than or equal to 0.
  core.int? numSuggestions;

  SourceCrowdingConfig({
    this.numResults,
    this.numSuggestions,
  });

  SourceCrowdingConfig.fromJson(core.Map _json)
      : this(
          numResults: _json.containsKey('numResults')
              ? _json['numResults'] as core.int
              : null,
          numSuggestions: _json.containsKey('numSuggestions')
              ? _json['numSuggestions'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numResults != null) 'numResults': numResults!,
        if (numSuggestions != null) 'numSuggestions': numSuggestions!,
      };
}

/// Per source result count information.
class SourceResultCount {
  /// Whether there are more search results for this source.
  core.bool? hasMoreResults;

  /// The estimated result count for this source.
  core.String? resultCountEstimate;

  /// The exact result count for this source.
  core.String? resultCountExact;

  /// The source the result count information is associated with.
  Source? source;

  SourceResultCount({
    this.hasMoreResults,
    this.resultCountEstimate,
    this.resultCountExact,
    this.source,
  });

  SourceResultCount.fromJson(core.Map _json)
      : this(
          hasMoreResults: _json.containsKey('hasMoreResults')
              ? _json['hasMoreResults'] as core.bool
              : null,
          resultCountEstimate: _json.containsKey('resultCountEstimate')
              ? _json['resultCountEstimate'] as core.String
              : null,
          resultCountExact: _json.containsKey('resultCountExact')
              ? _json['resultCountExact'] as core.String
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasMoreResults != null) 'hasMoreResults': hasMoreResults!,
        if (resultCountEstimate != null)
          'resultCountEstimate': resultCountEstimate!,
        if (resultCountExact != null) 'resultCountExact': resultCountExact!,
        if (source != null) 'source': source!,
      };
}

/// Set the scoring configuration.
///
/// This allows modifying the ranking of results for a source.
class SourceScoringConfig {
  /// Importance of the source.
  /// Possible string values are:
  /// - "DEFAULT"
  /// - "LOW"
  /// - "HIGH"
  core.String? sourceImportance;

  SourceScoringConfig({
    this.sourceImportance,
  });

  SourceScoringConfig.fromJson(core.Map _json)
      : this(
          sourceImportance: _json.containsKey('sourceImportance')
              ? _json['sourceImportance'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceImportance != null) 'sourceImportance': sourceImportance!,
      };
}

class SpellResult {
  /// The suggested spelling of the query.
  core.String? suggestedQuery;

  SpellResult({
    this.suggestedQuery,
  });

  SpellResult.fromJson(core.Map _json)
      : this(
          suggestedQuery: _json.containsKey('suggestedQuery')
              ? _json['suggestedQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (suggestedQuery != null) 'suggestedQuery': suggestedQuery!,
      };
}

/// Start upload file request.
class StartUploadItemRequest {
  /// Name of connector making this call.
  ///
  /// Format: datasources/{source_id}/connectors/{ID}
  core.String? connectorName;

  /// Common debug options.
  DebugOptions? debugOptions;

  StartUploadItemRequest({
    this.connectorName,
    this.debugOptions,
  });

  StartUploadItemRequest.fromJson(core.Map _json)
      : this(
          connectorName: _json.containsKey('connectorName')
              ? _json['connectorName'] as core.String
              : null,
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorName != null) 'connectorName': connectorName!,
        if (debugOptions != null) 'debugOptions': debugOptions!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// A structured data object consisting of named properties.
class StructuredDataObject {
  /// The properties for the object.
  ///
  /// The maximum number of elements is 1000.
  core.List<NamedProperty>? properties;

  StructuredDataObject({
    this.properties,
  });

  StructuredDataObject.fromJson(core.Map _json)
      : this(
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.List)
                  .map((value) => NamedProperty.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
      };
}

/// Structured results that are returned as part of search request.
class StructuredResult {
  /// Representation of a person
  Person? person;

  StructuredResult({
    this.person,
  });

  StructuredResult.fromJson(core.Map _json)
      : this(
          person: _json.containsKey('person')
              ? Person.fromJson(
                  _json['person'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (person != null) 'person': person!,
      };
}

/// Request of suggest API.
class SuggestRequest {
  /// The sources to use for suggestions.
  ///
  /// If not specified, the data sources are taken from the current search
  /// application. NOTE: Suggestions are only supported for the following
  /// sources: * Third-party data sources * PredefinedSource.PERSON *
  /// PredefinedSource.GOOGLE_DRIVE
  core.List<DataSourceRestriction>? dataSourceRestrictions;

  /// Partial query for which autocomplete suggestions will be shown.
  ///
  /// For example, if the query is "sea", then the server might return "season",
  /// "search", "seagull" and so on.
  core.String? query;

  /// Request options, such as the search application and user timezone.
  RequestOptions? requestOptions;

  SuggestRequest({
    this.dataSourceRestrictions,
    this.query,
    this.requestOptions,
  });

  SuggestRequest.fromJson(core.Map _json)
      : this(
          dataSourceRestrictions: _json.containsKey('dataSourceRestrictions')
              ? (_json['dataSourceRestrictions'] as core.List)
                  .map((value) => DataSourceRestriction.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          query:
              _json.containsKey('query') ? _json['query'] as core.String : null,
          requestOptions: _json.containsKey('requestOptions')
              ? RequestOptions.fromJson(_json['requestOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceRestrictions != null)
          'dataSourceRestrictions': dataSourceRestrictions!,
        if (query != null) 'query': query!,
        if (requestOptions != null) 'requestOptions': requestOptions!,
      };
}

/// Response of the suggest API.
class SuggestResponse {
  /// List of suggestions.
  core.List<SuggestResult>? suggestResults;

  SuggestResponse({
    this.suggestResults,
  });

  SuggestResponse.fromJson(core.Map _json)
      : this(
          suggestResults: _json.containsKey('suggestResults')
              ? (_json['suggestResults'] as core.List)
                  .map((value) => SuggestResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (suggestResults != null) 'suggestResults': suggestResults!,
      };
}

/// One suggestion result.
class SuggestResult {
  /// This is present when the suggestion indicates a person.
  ///
  /// It contains more information about the person - like their email ID, name
  /// etc.
  PeopleSuggestion? peopleSuggestion;

  /// This field will be present if the suggested query is a word/phrase
  /// completion.
  QuerySuggestion? querySuggestion;

  /// The source of the suggestion.
  Source? source;

  /// The suggested query that will be used for search, when the user clicks on
  /// the suggestion
  core.String? suggestedQuery;

  SuggestResult({
    this.peopleSuggestion,
    this.querySuggestion,
    this.source,
    this.suggestedQuery,
  });

  SuggestResult.fromJson(core.Map _json)
      : this(
          peopleSuggestion: _json.containsKey('peopleSuggestion')
              ? PeopleSuggestion.fromJson(_json['peopleSuggestion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          querySuggestion: _json.containsKey('querySuggestion')
              ? QuerySuggestion.fromJson(_json['querySuggestion']
                  as core.Map<core.String, core.dynamic>)
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
          suggestedQuery: _json.containsKey('suggestedQuery')
              ? _json['suggestedQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (peopleSuggestion != null) 'peopleSuggestion': peopleSuggestion!,
        if (querySuggestion != null) 'querySuggestion': querySuggestion!,
        if (source != null) 'source': source!,
        if (suggestedQuery != null) 'suggestedQuery': suggestedQuery!,
      };
}

/// Used to provide a search operator for text properties.
///
/// This is optional. Search operators let users restrict the query to specific
/// fields relevant to the type of item being searched.
class TextOperatorOptions {
  /// If true, the text value is tokenized as one atomic value in operator
  /// searches and facet matches.
  ///
  /// For example, if the operator name is "genre" and the value is
  /// "science-fiction" the query restrictions "genre:science" and
  /// "genre:fiction" doesn't match the item; "genre:science-fiction" does.
  /// Value matching is case-sensitive and does not remove special characters.
  /// If false, the text is tokenized. For example, if the value is
  /// "science-fiction" the queries "genre:science" and "genre:fiction" matches
  /// the item.
  core.bool? exactMatchWithOperator;

  /// Indicates the operator name required in the query in order to isolate the
  /// text property.
  ///
  /// For example, if operatorName is *subject* and the property's name is
  /// *subjectLine*, then queries like *subject:\<value\>* show results only
  /// where the value of the property named *subjectLine* matches *\<value\>*.
  /// By contrast, a search that uses the same *\<value\>* without an operator
  /// returns all items where *\<value\>* matches the value of any text
  /// properties or text within the content field for the item. The operator
  /// name can only contain lowercase letters (a-z). The maximum length is 32
  /// characters.
  core.String? operatorName;

  TextOperatorOptions({
    this.exactMatchWithOperator,
    this.operatorName,
  });

  TextOperatorOptions.fromJson(core.Map _json)
      : this(
          exactMatchWithOperator: _json.containsKey('exactMatchWithOperator')
              ? _json['exactMatchWithOperator'] as core.bool
              : null,
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exactMatchWithOperator != null)
          'exactMatchWithOperator': exactMatchWithOperator!,
        if (operatorName != null) 'operatorName': operatorName!,
      };
}

/// Options for text properties.
class TextPropertyOptions {
  /// If set, describes how the property should be used as a search operator.
  TextOperatorOptions? operatorOptions;

  /// Indicates the search quality importance of the tokens within the field
  /// when used for retrieval.
  RetrievalImportance? retrievalImportance;

  TextPropertyOptions({
    this.operatorOptions,
    this.retrievalImportance,
  });

  TextPropertyOptions.fromJson(core.Map _json)
      : this(
          operatorOptions: _json.containsKey('operatorOptions')
              ? TextOperatorOptions.fromJson(_json['operatorOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          retrievalImportance: _json.containsKey('retrievalImportance')
              ? RetrievalImportance.fromJson(_json['retrievalImportance']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorOptions != null) 'operatorOptions': operatorOptions!,
        if (retrievalImportance != null)
          'retrievalImportance': retrievalImportance!,
      };
}

/// List of text values.
class TextValues {
  /// The maximum allowable length for text values is 2048 characters.
  core.List<core.String>? values;

  TextValues({
    this.values,
  });

  TextValues.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Used to provide a search operator for timestamp properties.
///
/// This is optional. Search operators let users restrict the query to specific
/// fields relevant to the type of item being searched.
class TimestampOperatorOptions {
  /// Indicates the operator name required in the query in order to isolate the
  /// timestamp property using the greater-than operator.
  ///
  /// For example, if greaterThanOperatorName is *closedafter* and the
  /// property's name is *closeDate*, then queries like *closedafter:\<value\>*
  /// show results only where the value of the property named *closeDate* is
  /// later than *\<value\>*. The operator name can only contain lowercase
  /// letters (a-z). The maximum length is 32 characters.
  core.String? greaterThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// timestamp property using the less-than operator.
  ///
  /// For example, if lessThanOperatorName is *closedbefore* and the property's
  /// name is *closeDate*, then queries like *closedbefore:\<value\>* show
  /// results only where the value of the property named *closeDate* is earlier
  /// than *\<value\>*. The operator name can only contain lowercase letters
  /// (a-z). The maximum length is 32 characters.
  core.String? lessThanOperatorName;

  /// Indicates the operator name required in the query in order to isolate the
  /// timestamp property.
  ///
  /// For example, if operatorName is *closedon* and the property's name is
  /// *closeDate*, then queries like *closedon:\<value\>* show results only
  /// where the value of the property named *closeDate* matches *\<value\>*. By
  /// contrast, a search that uses the same *\<value\>* without an operator
  /// returns all items where *\<value\>* matches the value of any String
  /// properties or text within the content field for the item. The operator
  /// name can only contain lowercase letters (a-z). The maximum length is 32
  /// characters.
  core.String? operatorName;

  TimestampOperatorOptions({
    this.greaterThanOperatorName,
    this.lessThanOperatorName,
    this.operatorName,
  });

  TimestampOperatorOptions.fromJson(core.Map _json)
      : this(
          greaterThanOperatorName: _json.containsKey('greaterThanOperatorName')
              ? _json['greaterThanOperatorName'] as core.String
              : null,
          lessThanOperatorName: _json.containsKey('lessThanOperatorName')
              ? _json['lessThanOperatorName'] as core.String
              : null,
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (greaterThanOperatorName != null)
          'greaterThanOperatorName': greaterThanOperatorName!,
        if (lessThanOperatorName != null)
          'lessThanOperatorName': lessThanOperatorName!,
        if (operatorName != null) 'operatorName': operatorName!,
      };
}

/// Options for timestamp properties.
class TimestampPropertyOptions {
  /// If set, describes how the timestamp should be used as a search operator.
  TimestampOperatorOptions? operatorOptions;

  TimestampPropertyOptions({
    this.operatorOptions,
  });

  TimestampPropertyOptions.fromJson(core.Map _json)
      : this(
          operatorOptions: _json.containsKey('operatorOptions')
              ? TimestampOperatorOptions.fromJson(_json['operatorOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorOptions != null) 'operatorOptions': operatorOptions!,
      };
}

/// List of timestamp values.
class TimestampValues {
  core.List<core.String>? values;

  TimestampValues({
    this.values,
  });

  TimestampValues.fromJson(core.Map _json)
      : this(
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

class UnmappedIdentity {
  /// The resource name for an external user.
  Principal? externalIdentity;

  /// The resolution status for the external identity.
  /// Possible string values are:
  /// - "CODE_UNSPECIFIED" : Input-only value. Used to list all unmapped
  /// identities regardless of status.
  /// - "NOT_FOUND" : The unmapped identity was not found in IDaaS, and needs to
  /// be provided by the user.
  /// - "IDENTITY_SOURCE_NOT_FOUND" : The identity source associated with the
  /// identity was either not found or deleted.
  /// - "IDENTITY_SOURCE_MISCONFIGURED" : IDaaS does not understand the identity
  /// source, probably because the schema was modified in a non compatible way.
  /// - "TOO_MANY_MAPPINGS_FOUND" : The number of users associated with the
  /// external identity is too large.
  /// - "INTERNAL_ERROR" : Internal error.
  core.String? resolutionStatusCode;

  UnmappedIdentity({
    this.externalIdentity,
    this.resolutionStatusCode,
  });

  UnmappedIdentity.fromJson(core.Map _json)
      : this(
          externalIdentity: _json.containsKey('externalIdentity')
              ? Principal.fromJson(_json['externalIdentity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resolutionStatusCode: _json.containsKey('resolutionStatusCode')
              ? _json['resolutionStatusCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalIdentity != null) 'externalIdentity': externalIdentity!,
        if (resolutionStatusCode != null)
          'resolutionStatusCode': resolutionStatusCode!,
      };
}

class UnreserveItemsRequest {
  /// Name of connector making this call.
  ///
  /// Format: datasources/{source_id}/connectors/{ID}
  core.String? connectorName;

  /// Common debug options.
  DebugOptions? debugOptions;

  /// Name of a queue to unreserve items from.
  core.String? queue;

  UnreserveItemsRequest({
    this.connectorName,
    this.debugOptions,
    this.queue,
  });

  UnreserveItemsRequest.fromJson(core.Map _json)
      : this(
          connectorName: _json.containsKey('connectorName')
              ? _json['connectorName'] as core.String
              : null,
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          queue:
              _json.containsKey('queue') ? _json['queue'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectorName != null) 'connectorName': connectorName!,
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (queue != null) 'queue': queue!,
      };
}

class UpdateDataSourceRequest {
  /// Common debug options.
  DebugOptions? debugOptions;
  DataSource? source;

  UpdateDataSourceRequest({
    this.debugOptions,
    this.source,
  });

  UpdateDataSourceRequest.fromJson(core.Map _json)
      : this(
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          source: _json.containsKey('source')
              ? DataSource.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (source != null) 'source': source!,
      };
}

class UpdateSchemaRequest {
  /// Common debug options.
  DebugOptions? debugOptions;

  /// The new schema for the source.
  Schema? schema;

  /// If true, the schema will be checked for validity, but will not be
  /// registered with the data source, even if valid.
  core.bool? validateOnly;

  UpdateSchemaRequest({
    this.debugOptions,
    this.schema,
    this.validateOnly,
  });

  UpdateSchemaRequest.fromJson(core.Map _json)
      : this(
          debugOptions: _json.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  _json['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          schema: _json.containsKey('schema')
              ? Schema.fromJson(
                  _json['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: _json.containsKey('validateOnly')
              ? _json['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (schema != null) 'schema': schema!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Represents an upload session reference.
///
/// This reference is created via upload method. This reference is valid for 30
/// days after its creation. Updating of item content may refer to this uploaded
/// content via contentDataRef.
class UploadItemRef {
  /// Name of the content reference.
  ///
  /// The maximum length is 2048 characters.
  core.String? name;

  UploadItemRef({
    this.name,
  });

  UploadItemRef.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

class VPCSettings {
  /// The resource name of the GCP Project to be used for VPC SC policy check.
  ///
  /// VPC security settings on this project will be honored for Cloud Search
  /// APIs after project_name has been updated through CustomerService. Format:
  /// projects/{project_id}
  core.String? project;

  VPCSettings({
    this.project,
  });

  VPCSettings.fromJson(core.Map _json)
      : this(
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (project != null) 'project': project!,
      };
}

/// Definition of a single value with generic type.
class Value {
  core.bool? booleanValue;
  Date? dateValue;
  core.double? doubleValue;
  core.String? integerValue;
  core.String? stringValue;
  core.String? timestampValue;

  Value({
    this.booleanValue,
    this.dateValue,
    this.doubleValue,
    this.integerValue,
    this.stringValue,
    this.timestampValue,
  });

  Value.fromJson(core.Map _json)
      : this(
          booleanValue: _json.containsKey('booleanValue')
              ? _json['booleanValue'] as core.bool
              : null,
          dateValue: _json.containsKey('dateValue')
              ? Date.fromJson(
                  _json['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          doubleValue: _json.containsKey('doubleValue')
              ? (_json['doubleValue'] as core.num).toDouble()
              : null,
          integerValue: _json.containsKey('integerValue')
              ? _json['integerValue'] as core.String
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
          timestampValue: _json.containsKey('timestampValue')
              ? _json['timestampValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValue != null) 'dateValue': dateValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (stringValue != null) 'stringValue': stringValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
      };
}

class ValueFilter {
  /// The `operator_name` applied to the query, such as *price_greater_than*.
  ///
  /// The filter can work against both types of filters defined in the schema
  /// for your data source: 1. `operator_name`, where the query filters results
  /// by the property that matches the value. 2. `greater_than_operator_name` or
  /// `less_than_operator_name` in your schema. The query filters the results
  /// for the property values that are greater than or less than the supplied
  /// value in the query.
  core.String? operatorName;

  /// The value to be compared with.
  Value? value;

  ValueFilter({
    this.operatorName,
    this.value,
  });

  ValueFilter.fromJson(core.Map _json)
      : this(
          operatorName: _json.containsKey('operatorName')
              ? _json['operatorName'] as core.String
              : null,
          value: _json.containsKey('value')
              ? Value.fromJson(
                  _json['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operatorName != null) 'operatorName': operatorName!,
        if (value != null) 'value': value!,
      };
}
