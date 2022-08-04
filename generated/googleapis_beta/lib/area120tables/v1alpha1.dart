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

// ignore: deprecated_member_use_from_same_package
import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

class Area120TablesApi {
  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// See, edit, create, and delete only the specific Google Drive files you use
  /// with this app
  static const driveFileScope = 'https://www.googleapis.com/auth/drive.file';

  /// See and download all your Google Drive files
  static const driveReadonlyScope =
      'https://www.googleapis.com/auth/drive.readonly';

  /// See, edit, create, and delete all your Google Sheets spreadsheets
  static const spreadsheetsScope =
      'https://www.googleapis.com/auth/spreadsheets';

  /// See all your Google Sheets spreadsheets
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
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists tables for the user.
  ///
  /// Request parameters:
  ///
  /// [orderBy] - Optional. Sorting order for the list of tables on
  /// createTime/updateTime.
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
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/tables';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTablesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/rows:batchCreate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchCreateRowsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/rows:batchDelete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1alpha1/' + core.Uri.encodeFull('$parent') + '/rows:batchUpdate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchUpdateRowsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/rows';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Row.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Row.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [filter] - Optional. Filter to only include resources matching the
  /// requirements. For more information, see
  /// [Filtering list results](https://support.google.com/area120-tables/answer/10503371).
  ///
  /// [orderBy] - Optional. Sorting order for the list of rows on
  /// createTime/updateTime.
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
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$parent') + '/rows';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRowsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Row.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1alpha1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Workspace.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1alpha1/workspaces';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListWorkspacesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  BatchCreateRowsRequest({
    this.requests,
  });

  BatchCreateRowsRequest.fromJson(core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => CreateRowRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Response message for TablesService.BatchCreateRows.
class BatchCreateRowsResponse {
  /// The created rows.
  core.List<Row>? rows;

  BatchCreateRowsResponse({
    this.rows,
  });

  BatchCreateRowsResponse.fromJson(core.Map json_)
      : this(
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rows != null) 'rows': rows!,
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

  BatchDeleteRowsRequest({
    this.names,
  });

  BatchDeleteRowsRequest.fromJson(core.Map json_)
      : this(
          names: json_.containsKey('names')
              ? (json_['names'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  BatchUpdateRowsRequest({
    this.requests,
  });

  BatchUpdateRowsRequest.fromJson(core.Map json_)
      : this(
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => UpdateRowRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requests != null) 'requests': requests!,
      };
}

/// Response message for TablesService.BatchUpdateRows.
class BatchUpdateRowsResponse {
  /// The updated rows.
  core.List<Row>? rows;

  BatchUpdateRowsResponse({
    this.rows,
  });

  BatchUpdateRowsResponse.fromJson(core.Map json_)
      : this(
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rows != null) 'rows': rows!,
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

  /// Additional details about a date column.
  ///
  /// Optional.
  DateDetails? dateDetails;

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

  /// Indicates whether or not multiple values are allowed for array types where
  /// such a restriction is possible.
  ///
  /// Optional.
  core.bool? multipleValuesDisallowed;

  /// column name
  core.String? name;

  /// Indicates that values for the column cannot be set by the user.
  ///
  /// Optional.
  core.bool? readonly;

  /// Additional details about a relationship column.
  ///
  /// Specified when data_type is relationship.
  ///
  /// Optional.
  RelationshipDetails? relationshipDetails;

  ColumnDescription({
    this.dataType,
    this.dateDetails,
    this.id,
    this.labels,
    this.lookupDetails,
    this.multipleValuesDisallowed,
    this.name,
    this.readonly,
    this.relationshipDetails,
  });

  ColumnDescription.fromJson(core.Map json_)
      : this(
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          dateDetails: json_.containsKey('dateDetails')
              ? DateDetails.fromJson(
                  json_['dateDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.List)
                  .map((value) => LabeledItem.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          lookupDetails: json_.containsKey('lookupDetails')
              ? LookupDetails.fromJson(
                  json_['lookupDetails'] as core.Map<core.String, core.dynamic>)
              : null,
          multipleValuesDisallowed:
              json_.containsKey('multipleValuesDisallowed')
                  ? json_['multipleValuesDisallowed'] as core.bool
                  : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          readonly: json_.containsKey('readonly')
              ? json_['readonly'] as core.bool
              : null,
          relationshipDetails: json_.containsKey('relationshipDetails')
              ? RelationshipDetails.fromJson(json_['relationshipDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (dateDetails != null) 'dateDetails': dateDetails!,
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
        if (lookupDetails != null) 'lookupDetails': lookupDetails!,
        if (multipleValuesDisallowed != null)
          'multipleValuesDisallowed': multipleValuesDisallowed!,
        if (name != null) 'name': name!,
        if (readonly != null) 'readonly': readonly!,
        if (relationshipDetails != null)
          'relationshipDetails': relationshipDetails!,
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

  CreateRowRequest({
    this.parent,
    this.row,
    this.view,
  });

  CreateRowRequest.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          row: json_.containsKey('row')
              ? Row.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>)
              : null,
          view: json_.containsKey('view') ? json_['view'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (row != null) 'row': row!,
        if (view != null) 'view': view!,
      };
}

/// Details about a date column.
class DateDetails {
  /// Whether the date column includes time.
  core.bool? hasTime;

  DateDetails({
    this.hasTime,
  });

  DateDetails.fromJson(core.Map json_)
      : this(
          hasTime: json_.containsKey('hasTime')
              ? json_['hasTime'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hasTime != null) 'hasTime': hasTime!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A single item in a labeled column.
class LabeledItem {
  /// Internal id associated with the item.
  core.String? id;

  /// Display string as entered by user.
  core.String? name;

  LabeledItem({
    this.id,
    this.name,
  });

  LabeledItem.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  ListRowsResponse({
    this.nextPageToken,
    this.rows,
  });

  ListRowsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          rows: json_.containsKey('rows')
              ? (json_['rows'] as core.List)
                  .map((value) => Row.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (rows != null) 'rows': rows!,
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

  ListTablesResponse({
    this.nextPageToken,
    this.tables,
  });

  ListTablesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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

/// Response message for TablesService.ListWorkspaces.
class ListWorkspacesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of workspaces.
  core.List<Workspace>? workspaces;

  ListWorkspacesResponse({
    this.nextPageToken,
    this.workspaces,
  });

  ListWorkspacesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          workspaces: json_.containsKey('workspaces')
              ? (json_['workspaces'] as core.List)
                  .map((value) => Workspace.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workspaces != null) 'workspaces': workspaces!,
      };
}

/// Details about a lookup column whose value comes from the associated
/// relationship.
class LookupDetails {
  /// The name of the relationship column associated with the lookup.
  core.String? relationshipColumn;

  /// The id of the relationship column.
  core.String? relationshipColumnId;

  LookupDetails({
    this.relationshipColumn,
    this.relationshipColumnId,
  });

  LookupDetails.fromJson(core.Map json_)
      : this(
          relationshipColumn: json_.containsKey('relationshipColumn')
              ? json_['relationshipColumn'] as core.String
              : null,
          relationshipColumnId: json_.containsKey('relationshipColumnId')
              ? json_['relationshipColumnId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  RelationshipDetails({
    this.linkedTable,
  });

  RelationshipDetails.fromJson(core.Map json_)
      : this(
          linkedTable: json_.containsKey('linkedTable')
              ? json_['linkedTable'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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
  core.Map<core.String, core.Object?>? values;

  Row({
    this.createTime,
    this.name,
    this.updateTime,
    this.values,
  });

  Row.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          values: json_.containsKey('values')
              ? json_['values'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (values != null) 'values': values!,
      };
}

/// A saved view of a table.
///
/// NextId: 3
class SavedView {
  /// Internal id associated with the saved view.
  core.String? id;

  /// Display name of the saved view.
  core.String? name;

  SavedView({
    this.id,
    this.name,
  });

  SavedView.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
      };
}

/// A single table.
///
/// NextId: 8
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

  /// Saved views for this table.
  core.List<SavedView>? savedViews;

  /// The time zone of the table.
  ///
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  core.String? timeZone;

  /// Time when the table was last updated excluding updates to individual rows
  core.String? updateTime;

  Table({
    this.columns,
    this.createTime,
    this.displayName,
    this.name,
    this.savedViews,
    this.timeZone,
    this.updateTime,
  });

  Table.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => ColumnDescription.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          savedViews: json_.containsKey('savedViews')
              ? (json_['savedViews'] as core.List)
                  .map((value) => SavedView.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (savedViews != null) 'savedViews': savedViews!,
        if (timeZone != null) 'timeZone': timeZone!,
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

  UpdateRowRequest({
    this.row,
    this.updateMask,
    this.view,
  });

  UpdateRowRequest.fromJson(core.Map json_)
      : this(
          row: json_.containsKey('row')
              ? Row.fromJson(
                  json_['row'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
          view: json_.containsKey('view') ? json_['view'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (row != null) 'row': row!,
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

  Workspace({
    this.createTime,
    this.displayName,
    this.name,
    this.tables,
    this.updateTime,
  });

  Workspace.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          tables: json_.containsKey('tables')
              ? (json_['tables'] as core.List)
                  .map((value) => Table.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (tables != null) 'tables': tables!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
