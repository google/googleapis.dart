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
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Area120 Tables API - v1alpha1
///
/// For more information, see
/// <https://support.google.com/area120-tables/answer/10011390>
///
/// Create an instance of [Area120TablesApi] to access these resources:
///
/// - [TablesResource]
///   - [TablesRowsResource]
/// - [WorkspacesResource]
library area120tables.v1alpha1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class Area120TablesApi {
  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// View and manage Google Drive files and folders that you have opened or
  /// created with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  /// See and download all your Google Drive files
  static const driveReadonlyScope =
      'https://www.googleapis.com/auth/drive.readonly';

  /// See, edit, create, and delete your spreadsheets in Google Drive
  static const spreadsheetsScope =
      'https://www.googleapis.com/auth/spreadsheets';

  /// View your Google Spreadsheets
  static const spreadsheetsReadonlyScope =
      'https://www.googleapis.com/auth/spreadsheets.readonly';

  /// See, edit, create, and delete your tables in Tables by Area 120
  static const tablesScope = 'https://www.googleapis.com/auth/tables';

  final commons.ApiRequester _requester;

  TablesResource get tables => TablesResource(_requester);
  WorkspacesResource get workspaces => WorkspacesResource(_requester);

  Area120TablesApi(http.Client client,
      {core.String rootUrl = 'https://area120tables.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class TablesResource {
  final commons.ApiRequester _requester;

  TablesRowsResource get rows => TablesRowsResource(_requester);

  TablesResource(commons.ApiRequester client) : _requester = client;

  /// Gets a table.
  ///
  /// Returns NOT_FOUND if the table does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the table to retrieve. Format:
  /// tables/{table}
  /// Value must have pattern `^tables/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Table.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists tables for the user.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of tables to return. The service may
  /// return fewer than this value. If unspecified, at most 20 tables are
  /// returned. The maximum value is 100; values above 100 are coerced to 100.
  ///
  /// [pageToken] - A page token, received from a previous `ListTables` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListTables` must match the call that provided the
  /// page token.
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
  async.Future<ListTablesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha1/tables';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTablesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class TablesRowsResource {
  final commons.ApiRequester _requester;

  TablesRowsResource(commons.ApiRequester client) : _requester = client;

  /// Creates multiple rows.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent table where the rows will be created.
  /// Format: tables/{table}
  /// Value must have pattern `^tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateRowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateRowsResponse> batchCreate(
    BatchCreateRowsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/rows:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchCreateRowsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes multiple rows.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent table shared by all rows being deleted.
  /// Format: tables/{table}
  /// Value must have pattern `^tables/\[^/\]+$`.
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
  async.Future<Empty> batchDelete(
    BatchDeleteRowsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/rows:batchDelete';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Updates multiple rows.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent table shared by all rows being updated.
  /// Format: tables/{table}
  /// Value must have pattern `^tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchUpdateRowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchUpdateRowsResponse> batchUpdate(
    BatchUpdateRowsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/rows:batchUpdate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchUpdateRowsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a row.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent table where this row will be created.
  /// Format: tables/{table}
  /// Value must have pattern `^tables/\[^/\]+$`.
  ///
  /// [view] - Optional. Column key to use for values in the row. Defaults to
  /// user entered name.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Defaults to user entered text.
  /// - "COLUMN_ID_VIEW" : Uses internally generated column id to identify
  /// values.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Row].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Row> create(
    Row request,
    core.String parent, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/rows';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Row.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a row.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the row to delete. Format:
  /// tables/{table}/rows/{row}
  /// Value must have pattern `^tables/\[^/\]+/rows/\[^/\]+$`.
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

    final _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a row.
  ///
  /// Returns NOT_FOUND if the row does not exist in the table.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the row to retrieve. Format:
  /// tables/{table}/rows/{row}
  /// Value must have pattern `^tables/\[^/\]+/rows/\[^/\]+$`.
  ///
  /// [view] - Optional. Column key to use for values in the row. Defaults to
  /// user entered name.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Defaults to user entered text.
  /// - "COLUMN_ID_VIEW" : Uses internally generated column id to identify
  /// values.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Row].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Row> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Row.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists rows in a table.
  ///
  /// Returns NOT_FOUND if the table does not exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent table. Format: tables/{table}
  /// Value must have pattern `^tables/\[^/\]+$`.
  ///
  /// [filter] - Optional. Raw text query to search for in rows of the table.
  /// Special characters must be escaped. Logical operators and field specific
  /// filtering not supported.
  ///
  /// [pageSize] - The maximum number of rows to return. The service may return
  /// fewer than this value. If unspecified, at most 50 rows are returned. The
  /// maximum value is 1,000; values above 1,000 are coerced to 1,000.
  ///
  /// [pageToken] - A page token, received from a previous `ListRows` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListRows` must match the call that provided the
  /// page token.
  ///
  /// [view] - Optional. Column key to use for values in the row. Defaults to
  /// user entered name.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Defaults to user entered text.
  /// - "COLUMN_ID_VIEW" : Uses internally generated column id to identify
  /// values.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRowsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRowsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/rows';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRowsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a row.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the row. Row names have the form
  /// `tables/{table}/rows/{row}`. The name is ignored when creating a row.
  /// Value must have pattern `^tables/\[^/\]+/rows/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update.
  ///
  /// [view] - Optional. Column key to use for values in the row. Defaults to
  /// user entered name.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Defaults to user entered text.
  /// - "COLUMN_ID_VIEW" : Uses internally generated column id to identify
  /// values.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Row].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Row> patch(
    Row request,
    core.String name, {
    core.String? updateMask,
    core.String? view,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Row.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class WorkspacesResource {
  final commons.ApiRequester _requester;

  WorkspacesResource(commons.ApiRequester client) : _requester = client;

  /// Gets a workspace.
  ///
  /// Returns NOT_FOUND if the workspace does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the workspace to retrieve. Format:
  /// workspaces/{workspace}
  /// Value must have pattern `^workspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Workspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Workspace> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1alpha1/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Workspace.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists workspaces for the user.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of workspaces to return. The service may
  /// return fewer than this value. If unspecified, at most 10 workspaces are
  /// returned. The maximum value is 25; values above 25 are coerced to 25.
  ///
  /// [pageToken] - A page token, received from a previous `ListWorkspaces`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListWorkspaces` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListWorkspacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListWorkspacesResponse> list({
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1alpha1/workspaces';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListWorkspacesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for TablesService.BatchCreateRows.
class BatchCreateRowsRequest {
  /// The request message specifying the rows to create.
  ///
  /// A maximum of 500 rows can be created in a single batch.
  ///
  /// Required.
  core.List<CreateRowRequest>? requests;

  BatchCreateRowsRequest();

  BatchCreateRowsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('requests')) {
      requests = (_json['requests'] as core.List)
          .map<CreateRowRequest>((value) => CreateRowRequest.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (requests != null)
          'requests': requests!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for TablesService.BatchCreateRows.
class BatchCreateRowsResponse {
  /// The created rows.
  core.List<Row>? rows;

  BatchCreateRowsResponse();

  BatchCreateRowsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('rows')) {
      rows = (_json['rows'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (rows != null) 'rows': rows!.map((value) => value.toJson()).toList(),
      };
}

/// Request message for TablesService.BatchDeleteRows
class BatchDeleteRowsRequest {
  /// The names of the rows to delete.
  ///
  /// All rows must belong to the parent table or else the entire batch will
  /// fail. A maximum of 500 rows can be deleted in a batch. Format:
  /// tables/{table}/rows/{row}
  ///
  /// Required.
  core.List<core.String>? names;

  BatchDeleteRowsRequest();

  BatchDeleteRowsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('names')) {
      names = (_json['names'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (names != null) 'names': names!,
      };
}

/// Request message for TablesService.BatchUpdateRows.
class BatchUpdateRowsRequest {
  /// The request messages specifying the rows to update.
  ///
  /// A maximum of 500 rows can be modified in a single batch.
  ///
  /// Required.
  core.List<UpdateRowRequest>? requests;

  BatchUpdateRowsRequest();

  BatchUpdateRowsRequest.fromJson(core.Map _json) {
    if (_json.containsKey('requests')) {
      requests = (_json['requests'] as core.List)
          .map<UpdateRowRequest>((value) => UpdateRowRequest.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (requests != null)
          'requests': requests!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for TablesService.BatchUpdateRows.
class BatchUpdateRowsResponse {
  /// The updated rows.
  core.List<Row>? rows;

  BatchUpdateRowsResponse();

  BatchUpdateRowsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('rows')) {
      rows = (_json['rows'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (rows != null) 'rows': rows!.map((value) => value.toJson()).toList(),
      };
}

/// Details on a column in the table.
class ColumnDescription {
  /// Data type of the column Supported types are auto_id, boolean,
  /// boolean_list, creator, create_timestamp, date, dropdown, location,
  /// integer, integer_list, number, number_list, person, person_list, tags,
  /// check_list, text, text_list, update_timestamp, updater, relationship,
  /// file_attachment_list.
  ///
  /// These types directly map to the column types supported on Tables website.
  core.String? dataType;

  /// Internal id for a column.
  core.String? id;

  /// Range of labeled values for the column.
  ///
  /// Some columns like tags and drop-downs limit the values to a set of
  /// possible values. We return the range of values in such cases to help
  /// clients implement better user data validation.
  ///
  /// Optional.
  core.List<LabeledItem>? labels;

  /// Indicates that this is a lookup column whose value is derived from the
  /// relationship column specified in the details.
  ///
  /// Lookup columns can not be updated directly. To change the value you must
  /// update the associated relationship column.
  ///
  /// Optional.
  LookupDetails? lookupDetails;

  /// column name
  core.String? name;

  /// Additional details about a relationship column.
  ///
  /// Specified when data_type is relationship.
  ///
  /// Optional.
  RelationshipDetails? relationshipDetails;

  ColumnDescription();

  ColumnDescription.fromJson(core.Map _json) {
    if (_json.containsKey('dataType')) {
      dataType = _json['dataType'] as core.String;
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.List)
          .map<LabeledItem>((value) => LabeledItem.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('lookupDetails')) {
      lookupDetails = LookupDetails.fromJson(
          _json['lookupDetails'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('relationshipDetails')) {
      relationshipDetails = RelationshipDetails.fromJson(
          _json['relationshipDetails'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (id != null) 'id': id!,
        if (labels != null)
          'labels': labels!.map((value) => value.toJson()).toList(),
        if (lookupDetails != null) 'lookupDetails': lookupDetails!.toJson(),
        if (name != null) 'name': name!,
        if (relationshipDetails != null)
          'relationshipDetails': relationshipDetails!.toJson(),
      };
}

/// Request message for TablesService.CreateRow.
class CreateRowRequest {
  /// The parent table where this row will be created.
  ///
  /// Format: tables/{table}
  ///
  /// Required.
  core.String? parent;

  /// The row to create.
  ///
  /// Required.
  Row? row;

  /// Column key to use for values in the row.
  ///
  /// Defaults to user entered name.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Defaults to user entered text.
  /// - "COLUMN_ID_VIEW" : Uses internally generated column id to identify
  /// values.
  core.String? view;

  CreateRowRequest();

  CreateRowRequest.fromJson(core.Map _json) {
    if (_json.containsKey('parent')) {
      parent = _json['parent'] as core.String;
    }
    if (_json.containsKey('row')) {
      row = Row.fromJson(_json['row'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('view')) {
      view = _json['view'] as core.String;
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (parent != null) 'parent': parent!,
        if (row != null) 'row': row!.toJson(),
        if (view != null) 'view': view!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object?> toJson() => {};
}

/// A single item in a labeled column.
class LabeledItem {
  /// Internal id associated with the item.
  core.String? id;

  /// Display string as entered by user.
  core.String? name;

  LabeledItem();

  LabeledItem.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// Response message for TablesService.ListRows.
class ListRowsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The rows from the specified table.
  core.List<Row>? rows;

  ListRowsResponse();

  ListRowsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('rows')) {
      rows = (_json['rows'] as core.List)
          .map<Row>((value) =>
              Row.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (rows != null) 'rows': rows!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for TablesService.ListTables.
class ListTablesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of tables.
  core.List<Table>? tables;

  ListTablesResponse();

  ListTablesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('tables')) {
      tables = (_json['tables'] as core.List)
          .map<Table>((value) =>
              Table.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (tables != null)
          'tables': tables!.map((value) => value.toJson()).toList(),
      };
}

/// Response message for TablesService.ListWorkspaces.
class ListWorkspacesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of workspaces.
  core.List<Workspace>? workspaces;

  ListWorkspacesResponse();

  ListWorkspacesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('workspaces')) {
      workspaces = (_json['workspaces'] as core.List)
          .map<Workspace>((value) =>
              Workspace.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workspaces != null)
          'workspaces': workspaces!.map((value) => value.toJson()).toList(),
      };
}

/// Details about a lookup column whose value comes from the associated
/// relationship.
class LookupDetails {
  /// The name of the relationship column associated with the lookup.
  core.String? relationshipColumn;

  /// The id of the relationship column.
  core.String? relationshipColumnId;

  LookupDetails();

  LookupDetails.fromJson(core.Map _json) {
    if (_json.containsKey('relationshipColumn')) {
      relationshipColumn = _json['relationshipColumn'] as core.String;
    }
    if (_json.containsKey('relationshipColumnId')) {
      relationshipColumnId = _json['relationshipColumnId'] as core.String;
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (relationshipColumn != null)
          'relationshipColumn': relationshipColumn!,
        if (relationshipColumnId != null)
          'relationshipColumnId': relationshipColumnId!,
      };
}

/// Details about a relationship column.
class RelationshipDetails {
  /// The name of the table this relationship is linked to.
  core.String? linkedTable;

  RelationshipDetails();

  RelationshipDetails.fromJson(core.Map _json) {
    if (_json.containsKey('linkedTable')) {
      linkedTable = _json['linkedTable'] as core.String;
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (linkedTable != null) 'linkedTable': linkedTable!,
      };
}

/// A single row in a table.
class Row {
  /// Time when the row was created.
  core.String? createTime;

  /// The resource name of the row.
  ///
  /// Row names have the form `tables/{table}/rows/{row}`. The name is ignored
  /// when creating a row.
  core.String? name;

  /// Time when the row was last updated.
  core.String? updateTime;

  /// The values of the row.
  ///
  /// This is a map of column key to value. Key is user entered name(default) or
  /// the internal column id based on the view in the request.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? values;

  Row();

  Row.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
    if (_json.containsKey('values')) {
      values =
          (_json['values'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (values != null) 'values': values!,
      };
}

/// A single table.
class Table {
  /// List of columns in this table.
  ///
  /// Order of columns matches the display order.
  core.List<ColumnDescription>? columns;

  /// Time when the table was created.
  core.String? createTime;

  /// The human readable title of the table.
  core.String? displayName;

  /// The resource name of the table.
  ///
  /// Table names have the form `tables/{table}`.
  core.String? name;

  /// Time when the table was last updated excluding updates to individual rows
  core.String? updateTime;

  Table();

  Table.fromJson(core.Map _json) {
    if (_json.containsKey('columns')) {
      columns = (_json['columns'] as core.List)
          .map<ColumnDescription>((value) => ColumnDescription.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (columns != null)
          'columns': columns!.map((value) => value.toJson()).toList(),
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Request message for TablesService.UpdateRow.
class UpdateRowRequest {
  /// The row to update.
  ///
  /// Required.
  Row? row;

  /// The list of fields to update.
  core.String? updateMask;

  /// Column key to use for values in the row.
  ///
  /// Defaults to user entered name.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Defaults to user entered text.
  /// - "COLUMN_ID_VIEW" : Uses internally generated column id to identify
  /// values.
  core.String? view;

  UpdateRowRequest();

  UpdateRowRequest.fromJson(core.Map _json) {
    if (_json.containsKey('row')) {
      row = Row.fromJson(_json['row'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('updateMask')) {
      updateMask = _json['updateMask'] as core.String;
    }
    if (_json.containsKey('view')) {
      view = _json['view'] as core.String;
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (row != null) 'row': row!.toJson(),
        if (updateMask != null) 'updateMask': updateMask!,
        if (view != null) 'view': view!,
      };
}

/// A single workspace.
class Workspace {
  /// Time when the workspace was created.
  core.String? createTime;

  /// The human readable title of the workspace.
  core.String? displayName;

  /// The resource name of the workspace.
  ///
  /// Workspace names have the form `workspaces/{workspace}`.
  core.String? name;

  /// The list of tables in the workspace.
  core.List<Table>? tables;

  /// Time when the workspace was last updated.
  core.String? updateTime;

  Workspace();

  Workspace.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('tables')) {
      tables = (_json['tables'] as core.List)
          .map<Table>((value) =>
              Table.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object?> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (tables != null)
          'tables': tables!.map((value) => value.toJson()).toList(),
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
