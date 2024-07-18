// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// BigLake API - v1
///
/// The BigLake API provides access to BigLake Metastore, a serverless, fully
/// managed, and highly available metastore for open-source data that can be
/// used for querying Apache Iceberg tables in BigQuery.
///
/// For more information, see <https://cloud.google.com/bigquery/>
///
/// Create an instance of [BigLakeServiceApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCatalogsResource]
///       - [ProjectsLocationsCatalogsDatabasesResource]
///         - [ProjectsLocationsCatalogsDatabasesTablesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// The BigLake API provides access to BigLake Metastore, a serverless, fully
/// managed, and highly available metastore for open-source data that can be
/// used for querying Apache Iceberg tables in BigQuery.
class BigLakeServiceApi {
  /// View and manage your data in Google BigQuery and see the email address for
  /// your Google Account
  static const bigqueryScope = 'https://www.googleapis.com/auth/bigquery';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BigLakeServiceApi(http.Client client,
      {core.String rootUrl = 'https://biglake.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsResource get catalogs =>
      ProjectsLocationsCatalogsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsCatalogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsDatabasesResource get databases =>
      ProjectsLocationsCatalogsDatabasesResource(_requester);

  ProjectsLocationsCatalogsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this catalog will be
  /// created. Format: projects/{project_id_or_number}/locations/{location_id}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [catalogId] - Required. The ID to use for the catalog, which will become
  /// the final component of the catalog's resource name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Catalog> create(
    Catalog request,
    core.String parent, {
    core.String? catalogId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (catalogId != null) 'catalogId': [catalogId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/catalogs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Catalog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing catalog specified by the catalog ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the catalog to delete. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Catalog> delete(
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
    return Catalog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the catalog specified by the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the catalog to retrieve. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Catalog> get(
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
    return Catalog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all catalogs in a specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of catalogs.
  /// Format: projects/{project_id_or_number}/locations/{location_id}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of catalogs to return. The service may
  /// return fewer than this value. If unspecified, at most 50 catalogs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListCatalogs` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListCatalogs` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCatalogsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/catalogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCatalogsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsDatabasesTablesResource get tables =>
      ProjectsLocationsCatalogsDatabasesTablesResource(_requester);

  ProjectsLocationsCatalogsDatabasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this database will be
  /// created. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [databaseId] - Required. The ID to use for the database, which will become
  /// the final component of the database's resource name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Database].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Database> create(
    Database request,
    core.String parent, {
    core.String? databaseId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (databaseId != null) 'databaseId': [databaseId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing database specified by the database ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the database to delete. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Database].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Database> delete(
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
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the database specified by the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the database to retrieve. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Database].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Database> get(
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
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all databases in a specified catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of databases.
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of databases to return. The service may
  /// return fewer than this value. If unspecified, at most 50 databases will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListDatabases` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListDatabases` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatabasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatabasesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDatabasesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing database specified by the database ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. For the `FieldMask`
  /// definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// If not set, defaults to all of the fields that are allowed to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Database].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Database> patch(
    Database request,
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
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsDatabasesTablesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsDatabasesTablesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this table will be created.
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [tableId] - Required. The ID to use for the table, which will become the
  /// final component of the table's resource name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> create(
    Table request,
    core.String parent, {
    core.String? tableId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (tableId != null) 'tableId': [tableId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tables';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing table specified by the table ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the table to delete. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> delete(
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
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the table specified by the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the table to retrieve. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> get(
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
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all tables in a specified database.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of tables.
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of tables to return. The service may
  /// return fewer than this value. If unspecified, at most 50 tables will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListTables` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListTables` must match the call that provided the
  /// page token.
  ///
  /// [view] - The view for the returned tables.
  /// Possible string values are:
  /// - "TABLE_VIEW_UNSPECIFIED" : Default value. The API will default to the
  /// BASIC view.
  /// - "BASIC" : Include only table names. This is the default value.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTablesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tables';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTablesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing table specified by the table ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. For the `FieldMask`
  /// definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// If not set, defaults to all of the fields that are allowed to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> patch(
    Table request,
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
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Renames an existing table specified by the table ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The table's `name` field is used to identify the table
  /// to rename. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> rename(
    RenameTableRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rename';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Catalog is the container of databases.
class Catalog {
  /// The creation time of the catalog.
  ///
  /// Output only.
  core.String? createTime;

  /// The deletion time of the catalog.
  ///
  /// Only set after the catalog is deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The time when this catalog is considered expired.
  ///
  /// Only set after the catalog is deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// The resource name.
  ///
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  ///
  /// Output only.
  core.String? name;

  /// The last modification time of the catalog.
  ///
  /// Output only.
  core.String? updateTime;

  Catalog({
    this.createTime,
    this.deleteTime,
    this.expireTime,
    this.name,
    this.updateTime,
  });

  Catalog.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          expireTime: json_['expireTime'] as core.String?,
          name: json_['name'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Database is the container of tables.
class Database {
  /// The creation time of the database.
  ///
  /// Output only.
  core.String? createTime;

  /// The deletion time of the database.
  ///
  /// Only set after the database is deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The time when this database is considered expired.
  ///
  /// Only set after the database is deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// Options of a Hive database.
  HiveDatabaseOptions? hiveOptions;

  /// The resource name.
  ///
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  ///
  /// Output only.
  core.String? name;

  /// The database type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is not specified.
  /// - "HIVE" : Represents a database storing tables compatible with Hive
  /// Metastore tables.
  core.String? type;

  /// The last modification time of the database.
  ///
  /// Output only.
  core.String? updateTime;

  Database({
    this.createTime,
    this.deleteTime,
    this.expireTime,
    this.hiveOptions,
    this.name,
    this.type,
    this.updateTime,
  });

  Database.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          expireTime: json_['expireTime'] as core.String?,
          hiveOptions: json_.containsKey('hiveOptions')
              ? HiveDatabaseOptions.fromJson(
                  json_['hiveOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          type: json_['type'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (hiveOptions != null) 'hiveOptions': hiveOptions!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Options of a Hive database.
class HiveDatabaseOptions {
  /// Cloud Storage folder URI where the database data is stored, starting with
  /// "gs://".
  core.String? locationUri;

  /// Stores user supplied Hive database parameters.
  core.Map<core.String, core.String>? parameters;

  HiveDatabaseOptions({
    this.locationUri,
    this.parameters,
  });

  HiveDatabaseOptions.fromJson(core.Map json_)
      : this(
          locationUri: json_['locationUri'] as core.String?,
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationUri != null) 'locationUri': locationUri!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Options of a Hive table.
class HiveTableOptions {
  /// Stores user supplied Hive table parameters.
  core.Map<core.String, core.String>? parameters;

  /// Stores physical storage information of the data.
  StorageDescriptor? storageDescriptor;

  /// Hive table type.
  ///
  /// For example, MANAGED_TABLE, EXTERNAL_TABLE.
  core.String? tableType;

  HiveTableOptions({
    this.parameters,
    this.storageDescriptor,
    this.tableType,
  });

  HiveTableOptions.fromJson(core.Map json_)
      : this(
          parameters: json_.containsKey('parameters')
              ? (json_['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          storageDescriptor: json_.containsKey('storageDescriptor')
              ? StorageDescriptor.fromJson(json_['storageDescriptor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          tableType: json_['tableType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
        if (storageDescriptor != null) 'storageDescriptor': storageDescriptor!,
        if (tableType != null) 'tableType': tableType!,
      };
}

/// Response message for the ListCatalogs method.
class ListCatalogsResponse {
  /// The catalogs from the specified project.
  core.List<Catalog>? catalogs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListCatalogsResponse({
    this.catalogs,
    this.nextPageToken,
  });

  ListCatalogsResponse.fromJson(core.Map json_)
      : this(
          catalogs: json_.containsKey('catalogs')
              ? (json_['catalogs'] as core.List)
                  .map((value) => Catalog.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (catalogs != null) 'catalogs': catalogs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the ListDatabases method.
class ListDatabasesResponse {
  /// The databases from the specified catalog.
  core.List<Database>? databases;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDatabasesResponse({
    this.databases,
    this.nextPageToken,
  });

  ListDatabasesResponse.fromJson(core.Map json_)
      : this(
          databases: json_.containsKey('databases')
              ? (json_['databases'] as core.List)
                  .map((value) => Database.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databases != null) 'databases': databases!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the ListTables method.
class ListTablesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The tables from the specified database.
  core.List<Table>? tables;

  ListTablesResponse({
    this.nextPageToken,
    this.tables,
  });

  ListTablesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          tables: json_.containsKey('tables')
              ? (json_['tables'] as core.List)
                  .map((value) => Table.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tables != null) 'tables': tables!,
      };
}

/// Request message for the RenameTable method in MetastoreService
class RenameTableRequest {
  /// The new `name` for the specified table, must be in the same database.
  ///
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  ///
  /// Required.
  core.String? newName;

  RenameTableRequest({
    this.newName,
  });

  RenameTableRequest.fromJson(core.Map json_)
      : this(
          newName: json_['newName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newName != null) 'newName': newName!,
      };
}

/// Serializer and deserializer information.
class SerDeInfo {
  /// The fully qualified Java class name of the serialization library.
  core.String? serializationLib;

  SerDeInfo({
    this.serializationLib,
  });

  SerDeInfo.fromJson(core.Map json_)
      : this(
          serializationLib: json_['serializationLib'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serializationLib != null) 'serializationLib': serializationLib!,
      };
}

/// Stores physical storage information of the data.
class StorageDescriptor {
  /// The fully qualified Java class name of the input format.
  core.String? inputFormat;

  /// Cloud Storage folder URI where the table data is stored, starting with
  /// "gs://".
  core.String? locationUri;

  /// The fully qualified Java class name of the output format.
  core.String? outputFormat;

  /// Serializer and deserializer information.
  SerDeInfo? serdeInfo;

  StorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  StorageDescriptor.fromJson(core.Map json_)
      : this(
          inputFormat: json_['inputFormat'] as core.String?,
          locationUri: json_['locationUri'] as core.String?,
          outputFormat: json_['outputFormat'] as core.String?,
          serdeInfo: json_.containsKey('serdeInfo')
              ? SerDeInfo.fromJson(
                  json_['serdeInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputFormat != null) 'inputFormat': inputFormat!,
        if (locationUri != null) 'locationUri': locationUri!,
        if (outputFormat != null) 'outputFormat': outputFormat!,
        if (serdeInfo != null) 'serdeInfo': serdeInfo!,
      };
}

/// Represents a table.
class Table {
  /// The creation time of the table.
  ///
  /// Output only.
  core.String? createTime;

  /// The deletion time of the table.
  ///
  /// Only set after the table is deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The checksum of a table object computed by the server based on the value
  /// of other fields.
  ///
  /// It may be sent on update requests to ensure the client has an up-to-date
  /// value before proceeding. It is only checked for update table operations.
  core.String? etag;

  /// The time when this table is considered expired.
  ///
  /// Only set after the table is deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// Options of a Hive table.
  HiveTableOptions? hiveOptions;

  /// The resource name.
  ///
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  ///
  /// Output only.
  core.String? name;

  /// The table type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is not specified.
  /// - "HIVE" : Represents a table compatible with Hive Metastore tables.
  core.String? type;

  /// The last modification time of the table.
  ///
  /// Output only.
  core.String? updateTime;

  Table({
    this.createTime,
    this.deleteTime,
    this.etag,
    this.expireTime,
    this.hiveOptions,
    this.name,
    this.type,
    this.updateTime,
  });

  Table.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          deleteTime: json_['deleteTime'] as core.String?,
          etag: json_['etag'] as core.String?,
          expireTime: json_['expireTime'] as core.String?,
          hiveOptions: json_.containsKey('hiveOptions')
              ? HiveTableOptions.fromJson(
                  json_['hiveOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          type: json_['type'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (hiveOptions != null) 'hiveOptions': hiveOptions!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
