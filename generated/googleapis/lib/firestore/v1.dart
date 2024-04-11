// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Firestore API - v1
///
/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
///
/// For more information, see <https://cloud.google.com/firestore>
///
/// Create an instance of [FirestoreApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsDatabasesResource]
///     - [ProjectsDatabasesBackupSchedulesResource]
///     - [ProjectsDatabasesCollectionGroupsResource]
///       - [ProjectsDatabasesCollectionGroupsFieldsResource]
///       - [ProjectsDatabasesCollectionGroupsIndexesResource]
///     - [ProjectsDatabasesDocumentsResource]
///     - [ProjectsDatabasesOperationsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBackupsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
class FirestoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Cloud Datastore data
  static const datastoreScope = 'https://www.googleapis.com/auth/datastore';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirestoreApi(http.Client client,
      {core.String rootUrl = 'https://firestore.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesResource get databases =>
      ProjectsDatabasesResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesBackupSchedulesResource get backupSchedules =>
      ProjectsDatabasesBackupSchedulesResource(_requester);
  ProjectsDatabasesCollectionGroupsResource get collectionGroups =>
      ProjectsDatabasesCollectionGroupsResource(_requester);
  ProjectsDatabasesDocumentsResource get documents =>
      ProjectsDatabasesDocumentsResource(_requester);
  ProjectsDatabasesOperationsResource get operations =>
      ProjectsDatabasesOperationsResource(_requester);

  ProjectsDatabasesResource(commons.ApiRequester client) : _requester = client;

  /// Create a database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form `projects/{project_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [databaseId] - Required. The ID to use for the database, which will become
  /// the final component of the database's resource name. This value should be
  /// 4-63 characters. Valid characters are /a-z-/ with first character a letter
  /// and the last a letter or a number. Must not be UUID-like
  /// /\[0-9a-f\]{8}(-\[0-9a-f\]{4}){3}-\[0-9a-f\]{12}/. "(default)" database id
  /// is also valid.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleFirestoreAdminV1Database request,
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a database.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [etag] - The current etag of the Database. If an etag is provided and does
  /// not match the current etag of the database, deletion will be blocked and a
  /// FAILED_PRECONDITION error will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Exports a copy of all or a subset of documents from Google Cloud Firestore
  /// to another storage system, such as Google Cloud Storage.
  ///
  /// Recent updates to documents may not be reflected in the export. The export
  /// occurs in the background and its progress can be monitored and managed via
  /// the Operation resource that is created. The output of an export may only
  /// be used once the associated operation is done. If an export operation is
  /// cancelled before completion it may leave partial data behind in Google
  /// Cloud Storage. For more details on export behavior and output format,
  /// refer to:
  /// https://cloud.google.com/firestore/docs/manage-data/export-import
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Database to export. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> exportDocuments(
    GoogleFirestoreAdminV1ExportDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':exportDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a database.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1Database].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1Database> get(
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
    return GoogleFirestoreAdminV1Database.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports documents into Google Cloud Firestore.
  ///
  /// Existing documents with the same name are overwritten. The import occurs
  /// in the background and its progress can be monitored and managed via the
  /// Operation resource that is created. If an ImportDocuments operation is
  /// cancelled, it is possible that a subset of the data has already been
  /// imported to Cloud Firestore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Database to import into. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> importDocuments(
    GoogleFirestoreAdminV1ImportDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':importDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all the databases in the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form `projects/{project_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1ListDatabasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1ListDatabasesResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListDatabasesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Database. Format:
  /// `projects/{project}/databases/{database}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleFirestoreAdminV1Database request,
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new database by restoring from an existing backup.
  ///
  /// The new database must be in the same cloud region or multi-region location
  /// as the existing backup. This behaves similar to
  /// FirestoreAdmin.CreateDatabase except instead of creating a new empty
  /// database, a new database is created with the database type, index
  /// configuration, and documents from an existing backup. The long-running
  /// operation can be used to track the progress of the restore, with the
  /// Operation's metadata field type being the RestoreDatabaseMetadata. The
  /// response type is the Database if the restore was successful. The new
  /// database is not readable or writeable until the LRO has completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to restore the database in. Format is
  /// `projects/{project_id}`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> restore(
    GoogleFirestoreAdminV1RestoreDatabaseRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases:restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatabasesBackupSchedulesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesBackupSchedulesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a backup schedule on a database.
  ///
  /// At most two backup schedules can be configured on a database, one daily
  /// backup schedule with retention up to 7 days and one weekly backup schedule
  /// with retention up to 14 weeks.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent database. Format
  /// `projects/{project}/databases/{database}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1BackupSchedule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1BackupSchedule> create(
    GoogleFirestoreAdminV1BackupSchedule request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupSchedules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1BackupSchedule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a backup schedule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the backup schedule. Format
  /// `projects/{project}/databases/{database}/backupSchedules/{backup_schedule}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/backupSchedules/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a backup schedule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the backup schedule. Format
  /// `projects/{project}/databases/{database}/backupSchedules/{backup_schedule}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/backupSchedules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1BackupSchedule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1BackupSchedule> get(
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
    return GoogleFirestoreAdminV1BackupSchedule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List backup schedules.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent database. Format is
  /// `projects/{project}/databases/{database}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1ListBackupSchedulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1ListBackupSchedulesResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupSchedules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListBackupSchedulesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a backup schedule.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The unique backup schedule identifier across all
  /// locations and databases for the given project. This will be auto-assigned.
  /// Format is
  /// `projects/{project}/databases/{database}/backupSchedules/{backup_schedule}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/backupSchedules/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1BackupSchedule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1BackupSchedule> patch(
    GoogleFirestoreAdminV1BackupSchedule request,
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
    return GoogleFirestoreAdminV1BackupSchedule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatabasesCollectionGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsFieldsResource get fields =>
      ProjectsDatabasesCollectionGroupsFieldsResource(_requester);
  ProjectsDatabasesCollectionGroupsIndexesResource get indexes =>
      ProjectsDatabasesCollectionGroupsIndexesResource(_requester);

  ProjectsDatabasesCollectionGroupsResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsDatabasesCollectionGroupsFieldsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsFieldsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the metadata and configuration for a Field.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+/fields/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1Field].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1Field> get(
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
    return GoogleFirestoreAdminV1Field.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the field configuration and metadata for this database.
  ///
  /// Currently, FirestoreAdmin.ListFields only supports listing fields that
  /// have been explicitly overridden. To issue this query, call
  /// FirestoreAdmin.ListFields with the filter set to
  /// `indexConfig.usesAncestorConfig:false` or `ttlConfig:*`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+$`.
  ///
  /// [filter] - The filter to apply to list results. Currently,
  /// FirestoreAdmin.ListFields only supports listing fields that have been
  /// explicitly overridden. To issue this query, call FirestoreAdmin.ListFields
  /// with a filter that includes `indexConfig.usesAncestorConfig:false` .
  ///
  /// [pageSize] - The number of results to return.
  ///
  /// [pageToken] - A page token, returned from a previous call to
  /// FirestoreAdmin.ListFields, that may be used to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1ListFieldsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1ListFieldsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fields';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListFieldsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a field configuration.
  ///
  /// Currently, field updates apply only to single field index configuration.
  /// However, calls to FirestoreAdmin.UpdateField should provide a field mask
  /// to avoid changing any configuration that the caller isn't aware of. The
  /// field mask should be specified as: `{ paths: "index_config" }`. This call
  /// returns a google.longrunning.Operation which may be used to track the
  /// status of the field update. The metadata for the operation will be the
  /// type FieldOperationMetadata. To configure the default field settings for
  /// the database, use the special `Field` with resource name:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * `.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A field name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  /// A field path may be a simple field name, e.g. `address` or a path to
  /// fields within map_value , e.g. `address.city`, or a special field path.
  /// The only valid special field is `*`, which represents any field. Field
  /// paths may be quoted using ` (backtick). The only character that needs to
  /// be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that must be
  /// quoted include: `*`, `.`, ``` (backtick), `[`, `]`, as well as any ascii
  /// symbolic characters. Examples: (Note: Comments here are written in
  /// markdown syntax, so there is an additional layer of backticks to represent
  /// a code block) `\`address.city\`` represents a field named `address.city`,
  /// not the map key `city` in the field `address`. `\`*\`` represents a field
  /// named `*`, not any field. A special `Field` contains the default indexing
  /// settings for all fields. This field's resource name is:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * ` Indexes defined on this `Field` will be applied to all fields which
  /// do not have their own `Field` index configuration.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+/fields/\[^/\]+$`.
  ///
  /// [updateMask] - A mask, relative to the field. If specified, only
  /// configuration specified by this field_mask will be updated in the field.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    GoogleFirestoreAdminV1Field request,
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatabasesCollectionGroupsIndexesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsIndexesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a composite index.
  ///
  /// This returns a google.longrunning.Operation which may be used to track the
  /// status of the creation. The metadata for the operation will be the type
  /// IndexOperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    GoogleFirestoreAdminV1Index request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a composite index.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+/indexes/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a composite index.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+/indexes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1Index].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1Index> get(
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
    return GoogleFirestoreAdminV1Index.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists composite indexes.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+$`.
  ///
  /// [filter] - The filter to apply to list results.
  ///
  /// [pageSize] - The number of results to return.
  ///
  /// [pageToken] - A page token, returned from a previous call to
  /// FirestoreAdmin.ListIndexes, that may be used to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1ListIndexesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1ListIndexesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListIndexesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatabasesDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesDocumentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets multiple documents.
  ///
  /// Documents returned by this method are not guaranteed to be returned in the
  /// same order that they were requested.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchGetDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchGetDocumentsResponse> batchGet(
    BatchGetDocumentsRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$database') + '/documents:batchGet';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return (response_ as core.List)
        .map((value) => BatchGetDocumentsResponseElement.fromJson(
            value as core.Map<core.String, core.dynamic>))
        .toList();
  }

  /// Applies a batch of write operations.
  ///
  /// The BatchWrite method does not apply the write operations atomically and
  /// can apply them out of order. Method does not allow more than one write per
  /// document. Each write succeeds or fails independently. See the
  /// BatchWriteResponse for the success status of each write. If you require an
  /// atomically applied set of writes, use Commit instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchWriteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchWriteResponse> batchWrite(
    BatchWriteRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$database') + '/documents:batchWrite';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchWriteResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts a new transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BeginTransactionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BeginTransactionResponse> beginTransaction(
    BeginTransactionRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$database') +
        '/documents:beginTransaction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BeginTransactionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Commits a transaction, while optionally updating documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitResponse> commit(
    CommitRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$database') + '/documents:commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommitResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource. For example:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/chatrooms/{chatroom_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/.*$`.
  ///
  /// [collectionId] - Required. The collection ID, relative to `parent`, to
  /// list. For example: `chatrooms`.
  ///
  /// [documentId] - The client-assigned document ID to use for this document.
  /// Optional. If not specified, an ID will be assigned by the service.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> createDocument(
    Document request,
    core.String parent,
    core.String collectionId, {
    core.String? documentId,
    core.List<core.String>? mask_fieldPaths,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (documentId != null) 'documentId': [documentId],
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Document to delete. In the
  /// format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist. When set to `false`, the target document must not exist.
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at that time. Timestamp must be microsecond
  /// aligned.
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
    core.bool? currentDocument_exists,
    core.String? currentDocument_updateTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currentDocument_exists != null)
        'currentDocument.exists': ['${currentDocument_exists}'],
      if (currentDocument_updateTime != null)
        'currentDocument.updateTime': [currentDocument_updateTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single document.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Document to get. In the
  /// format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [readTime] - Reads the version of the document at the given time. This
  /// must be a microsecond precision timestamp within the past one hour, or if
  /// Point-in-Time Recovery is enabled, can additionally be a whole minute
  /// timestamp within the past 7 days.
  ///
  /// [transaction] - Reads the document in a transaction.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> get(
    core.String name, {
    core.List<core.String>? mask_fieldPaths,
    core.String? readTime,
    core.String? transaction,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (readTime != null) 'readTime': [readTime],
      if (transaction != null) 'transaction': [transaction],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists documents.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [collectionId] - Optional. The collection ID, relative to `parent`, to
  /// list. For example: `chatrooms` or `messages`. This is optional, and when
  /// not provided, Firestore will list documents from all collections under the
  /// provided `parent`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [orderBy] - Optional. The optional ordering of the documents to return.
  /// For example: `priority desc, __name__ desc`. This mirrors the `ORDER BY`
  /// used in Firestore queries but in a string representation. When absent,
  /// documents are ordered based on `__name__ ASC`.
  ///
  /// [pageSize] - Optional. The maximum number of documents to return in a
  /// single response. Firestore may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDocuments` response. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters (with the exception of `page_size`)
  /// must match the values set in the request that generated the page token.
  ///
  /// [readTime] - Perform the read at the provided time. This must be a
  /// microsecond precision timestamp within the past one hour, or if
  /// Point-in-Time Recovery is enabled, can additionally be a whole minute
  /// timestamp within the past 7 days.
  ///
  /// [showMissing] - If the list should show missing documents. A document is
  /// missing if it does not exist, but there are sub-documents nested
  /// underneath it. When true, such missing documents will be returned with a
  /// key but will not have fields, `create_time`, or `update_time` set.
  /// Requests with `show_missing` may not specify `where` or `order_by`.
  ///
  /// [transaction] - Perform the read as part of an already active transaction.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDocumentsResponse> list(
    core.String parent,
    core.String collectionId, {
    core.List<core.String>? mask_fieldPaths,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.bool? showMissing,
    core.String? transaction,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if (showMissing != null) 'showMissing': ['${showMissing}'],
      if (transaction != null) 'transaction': [transaction],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDocumentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the collection IDs underneath a document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent document. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example:
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCollectionIdsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCollectionIdsResponse> listCollectionIds(
    ListCollectionIdsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':listCollectionIds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListCollectionIdsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists documents.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+/documents$`.
  ///
  /// [collectionId] - Optional. The collection ID, relative to `parent`, to
  /// list. For example: `chatrooms` or `messages`. This is optional, and when
  /// not provided, Firestore will list documents from all collections under the
  /// provided `parent`.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [orderBy] - Optional. The optional ordering of the documents to return.
  /// For example: `priority desc, __name__ desc`. This mirrors the `ORDER BY`
  /// used in Firestore queries but in a string representation. When absent,
  /// documents are ordered based on `__name__ ASC`.
  ///
  /// [pageSize] - Optional. The maximum number of documents to return in a
  /// single response. Firestore may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDocuments` response. Provide this to retrieve the subsequent page.
  /// When paginating, all other parameters (with the exception of `page_size`)
  /// must match the values set in the request that generated the page token.
  ///
  /// [readTime] - Perform the read at the provided time. This must be a
  /// microsecond precision timestamp within the past one hour, or if
  /// Point-in-Time Recovery is enabled, can additionally be a whole minute
  /// timestamp within the past 7 days.
  ///
  /// [showMissing] - If the list should show missing documents. A document is
  /// missing if it does not exist, but there are sub-documents nested
  /// underneath it. When true, such missing documents will be returned with a
  /// key but will not have fields, `create_time`, or `update_time` set.
  /// Requests with `show_missing` may not specify `where` or `order_by`.
  ///
  /// [transaction] - Perform the read as part of an already active transaction.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDocumentsResponse> listDocuments(
    core.String parent,
    core.String collectionId, {
    core.List<core.String>? mask_fieldPaths,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? readTime,
    core.bool? showMissing,
    core.String? transaction,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (readTime != null) 'readTime': [readTime],
      if (showMissing != null) 'showMissing': ['${showMissing}'],
      if (transaction != null) 'transaction': [transaction],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDocumentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Partitions a query by returning partition cursors that can be used to run
  /// the query in parallel.
  ///
  /// The returned partition cursors are split points that can be used by
  /// RunQuery as starting/end points for the query results.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents`. Document
  /// resource names are not supported; only database resource names can be
  /// specified.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartitionQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartitionQueryResponse> partitionQuery(
    PartitionQueryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':partitionQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PartitionQueryResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates or inserts a document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [currentDocument_exists] - When set to `true`, the target document must
  /// exist. When set to `false`, the target document must not exist.
  ///
  /// [currentDocument_updateTime] - When set, the target document must exist
  /// and have been last updated at that time. Timestamp must be microsecond
  /// aligned.
  ///
  /// [mask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [updateMask_fieldPaths] - The list of field paths in the mask. See
  /// Document.fields for a field path syntax reference.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Document> patch(
    Document request,
    core.String name, {
    core.bool? currentDocument_exists,
    core.String? currentDocument_updateTime,
    core.List<core.String>? mask_fieldPaths,
    core.List<core.String>? updateMask_fieldPaths,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (currentDocument_exists != null)
        'currentDocument.exists': ['${currentDocument_exists}'],
      if (currentDocument_updateTime != null)
        'currentDocument.updateTime': [currentDocument_updateTime],
      if (mask_fieldPaths != null) 'mask.fieldPaths': mask_fieldPaths,
      if (updateMask_fieldPaths != null)
        'updateMask.fieldPaths': updateMask_fieldPaths,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Document.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rolls back a transaction.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<Empty> rollback(
    RollbackRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$database') + '/documents:rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Runs an aggregation query.
  ///
  /// Rather than producing Document results like Firestore.RunQuery, this API
  /// allows running an aggregation to produce a series of AggregationResult
  /// server-side. High-Level Example: ``` -- Return the number of documents in
  /// table given a filter. SELECT COUNT(*) FROM ( SELECT * FROM k where a =
  /// true ); ```
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunAggregationQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunAggregationQueryResponse> runAggregationQuery(
    RunAggregationQueryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':runAggregationQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return (response_ as core.List)
        .map((value) => RunAggregationQueryResponseElement.fromJson(
            value as core.Map<core.String, core.dynamic>))
        .toList();
  }

  /// Runs a query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name. In the format:
  /// `projects/{project_id}/databases/{database_id}/documents` or
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// For example: `projects/my-project/databases/my-database/documents` or
  /// `projects/my-project/databases/my-database/documents/chatrooms/my-chatroom`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/documents/\[^/\]+/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RunQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RunQueryResponse> runQuery(
    RunQueryRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':runQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return (response_ as core.List)
        .map((value) => RunQueryResponseElement.fromJson(
            value as core.Map<core.String, core.dynamic>))
        .toList();
  }

  /// Streams batches of document updates and deletes, in order.
  ///
  /// This method is only available via gRPC or WebChannel (not REST).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database name. In the format:
  /// `projects/{project_id}/databases/{database_id}`. This is only required in
  /// the first message.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [WriteResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<WriteResponse> write(
    WriteRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$database') + '/documents:write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsDatabasesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    GoogleLongrunningCancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupsResource get backups =>
      ProjectsLocationsBackupsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
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
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup to delete. format is
  /// `projects/{project}/locations/{location}/backups/{backup}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backups/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup to fetch. Format is
  /// `projects/{project}/locations/{location}/backups/{backup}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1Backup> get(
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
    return GoogleFirestoreAdminV1Backup.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the backups.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to list backups from. Format is
  /// `projects/{project}/locations/{location}`. Use `{location} = '-'` to list
  /// backups from all locations for the given project. This allows listing
  /// backups from a single location or from all locations.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1ListBackupsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListBackupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Defines an aggregation that produces a single result.
class Aggregation {
  /// Optional name of the field to store the result of the aggregation into.
  ///
  /// If not provided, Firestore will pick a default name following the format
  /// `field_`. For example: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1,
  /// COUNT_UP_TO(2), COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) OVER ( ... );
  /// ``` becomes: ``` AGGREGATE COUNT_UP_TO(1) AS count_up_to_1, COUNT_UP_TO(2)
  /// AS field_1, COUNT_UP_TO(3) AS count_up_to_3, COUNT(*) AS field_2 OVER (
  /// ... ); ``` Requires: * Must be unique across all aggregation aliases. *
  /// Conform to document field name limitations.
  ///
  /// Optional.
  core.String? alias;

  /// Average aggregator.
  Avg? avg;

  /// Count aggregator.
  Count? count;

  /// Sum aggregator.
  Sum? sum;

  Aggregation({
    this.alias,
    this.avg,
    this.count,
    this.sum,
  });

  Aggregation.fromJson(core.Map json_)
      : this(
          alias:
              json_.containsKey('alias') ? json_['alias'] as core.String : null,
          avg: json_.containsKey('avg')
              ? Avg.fromJson(
                  json_['avg'] as core.Map<core.String, core.dynamic>)
              : null,
          count: json_.containsKey('count')
              ? Count.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>)
              : null,
          sum: json_.containsKey('sum')
              ? Sum.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alias != null) 'alias': alias!,
        if (avg != null) 'avg': avg!,
        if (count != null) 'count': count!,
        if (sum != null) 'sum': sum!,
      };
}

/// The result of a single bucket from a Firestore aggregation query.
///
/// The keys of `aggregate_fields` are the same for all results in an
/// aggregation query, unlike document queries which can have different fields
/// present for each result.
class AggregationResult {
  /// The result of the aggregation functions, ex: `COUNT(*) AS total_docs`.
  ///
  /// The key is the alias assigned to the aggregation function on input and the
  /// size of this map equals the number of aggregation functions in the query.
  core.Map<core.String, Value>? aggregateFields;

  AggregationResult({
    this.aggregateFields,
  });

  AggregationResult.fromJson(core.Map json_)
      : this(
          aggregateFields: json_.containsKey('aggregateFields')
              ? (json_['aggregateFields']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    Value.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateFields != null) 'aggregateFields': aggregateFields!,
      };
}

/// An array value.
class ArrayValue {
  /// Values in the array.
  core.List<Value>? values;

  ArrayValue({
    this.values,
  });

  ArrayValue.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Average of the values of the requested field.
///
/// * Only numeric values will be aggregated. All non-numeric values including
/// `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`.
/// Infinity math follows IEEE-754 standards. * If the aggregated value set is
/// empty, returns `NULL`. * Always returns the result as a double.
class Avg {
  /// The field to aggregate on.
  FieldReference? field;

  Avg({
    this.field,
  });

  Avg.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
      };
}

/// The request for Firestore.BatchGetDocuments.
class BatchGetDocumentsRequest {
  /// The names of the documents to retrieve.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  /// The request will fail if any of the document is not a child resource of
  /// the given `database`. Duplicate names will be elided.
  core.List<core.String>? documents;

  /// The fields to return.
  ///
  /// If not set, returns all fields. If a document has a field that is not
  /// present in this mask, that field will not be returned in the response.
  DocumentMask? mask;

  /// Starts a new transaction and reads the documents.
  ///
  /// Defaults to a read-only transaction. The new transaction ID will be
  /// returned as the first response in the stream.
  TransactionOptions? newTransaction;

  /// Reads documents as they were at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// Reads documents in a transaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  BatchGetDocumentsRequest({
    this.documents,
    this.mask,
    this.newTransaction,
    this.readTime,
    this.transaction,
  });

  BatchGetDocumentsRequest.fromJson(core.Map json_)
      : this(
          documents: json_.containsKey('documents')
              ? (json_['documents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          mask: json_.containsKey('mask')
              ? DocumentMask.fromJson(
                  json_['mask'] as core.Map<core.String, core.dynamic>)
              : null,
          newTransaction: json_.containsKey('newTransaction')
              ? TransactionOptions.fromJson(json_['newTransaction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
        if (mask != null) 'mask': mask!,
        if (newTransaction != null) 'newTransaction': newTransaction!,
        if (readTime != null) 'readTime': readTime!,
        if (transaction != null) 'transaction': transaction!,
      };
}

class BatchGetDocumentsResponseElement {
  /// A document that was requested.
  Document? found;

  /// A document name that was requested but does not exist.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? missing;

  /// The time at which the document was read.
  ///
  /// This may be monotically increasing, in this case the previous documents in
  /// the result stream are guaranteed not to have changed between their
  /// read_time and this one.
  core.String? readTime;

  /// The transaction that was started as part of this request.
  ///
  /// Will only be set in the first response, and only if
  /// BatchGetDocumentsRequest.new_transaction was set in the request.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  BatchGetDocumentsResponseElement({
    this.found,
    this.missing,
    this.readTime,
    this.transaction,
  });

  BatchGetDocumentsResponseElement.fromJson(core.Map json_)
      : this(
          found: json_.containsKey('found')
              ? Document.fromJson(
                  json_['found'] as core.Map<core.String, core.dynamic>)
              : null,
          missing: json_.containsKey('missing')
              ? json_['missing'] as core.String
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (found != null) 'found': found!,
        if (missing != null) 'missing': missing!,
        if (readTime != null) 'readTime': readTime!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The streamed response for Firestore.BatchGetDocuments.
typedef BatchGetDocumentsResponse = core.List<BatchGetDocumentsResponseElement>;

/// The request for Firestore.BatchWrite.
class BatchWriteRequest {
  /// Labels associated with this batch write.
  core.Map<core.String, core.String>? labels;

  /// The writes to apply.
  ///
  /// Method does not apply writes atomically and does not guarantee ordering.
  /// Each write succeeds or fails independently. You cannot write to the same
  /// document more than once per request.
  core.List<Write>? writes;

  BatchWriteRequest({
    this.labels,
    this.writes,
  });

  BatchWriteRequest.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          writes: json_.containsKey('writes')
              ? (json_['writes'] as core.List)
                  .map((value) => Write.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (writes != null) 'writes': writes!,
      };
}

/// The response from Firestore.BatchWrite.
class BatchWriteResponse {
  /// The status of applying the writes.
  ///
  /// This i-th write status corresponds to the i-th write in the request.
  core.List<Status>? status;

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  BatchWriteResponse({
    this.status,
    this.writeResults,
  });

  BatchWriteResponse.fromJson(core.Map json_)
      : this(
          status: json_.containsKey('status')
              ? (json_['status'] as core.List)
                  .map((value) => Status.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          writeResults: json_.containsKey('writeResults')
              ? (json_['writeResults'] as core.List)
                  .map((value) => WriteResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
        if (writeResults != null) 'writeResults': writeResults!,
      };
}

/// The request for Firestore.BeginTransaction.
class BeginTransactionRequest {
  /// The options for the transaction.
  ///
  /// Defaults to a read-write transaction.
  TransactionOptions? options;

  BeginTransactionRequest({
    this.options,
  });

  BeginTransactionRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? TransactionOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// The response for Firestore.BeginTransaction.
class BeginTransactionResponse {
  /// The transaction that was started.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  BeginTransactionResponse({
    this.transaction,
  });

  BeginTransactionResponse.fromJson(core.Map json_)
      : this(
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
      };
}

/// A selection of a collection, such as `messages as m1`.
class CollectionSelector {
  /// When false, selects only collections that are immediate children of the
  /// `parent` specified in the containing `RunQueryRequest`.
  ///
  /// When true, selects all descendant collections.
  core.bool? allDescendants;

  /// The collection ID.
  ///
  /// When set, selects only collections with this ID.
  core.String? collectionId;

  CollectionSelector({
    this.allDescendants,
    this.collectionId,
  });

  CollectionSelector.fromJson(core.Map json_)
      : this(
          allDescendants: json_.containsKey('allDescendants')
              ? json_['allDescendants'] as core.bool
              : null,
          collectionId: json_.containsKey('collectionId')
              ? json_['collectionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allDescendants != null) 'allDescendants': allDescendants!,
        if (collectionId != null) 'collectionId': collectionId!,
      };
}

/// The request for Firestore.Commit.
class CommitRequest {
  /// If set, applies all writes in this transaction, and commits it.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order.
  core.List<Write>? writes;

  CommitRequest({
    this.transaction,
    this.writes,
  });

  CommitRequest.fromJson(core.Map json_)
      : this(
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
          writes: json_.containsKey('writes')
              ? (json_['writes'] as core.List)
                  .map((value) => Write.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
        if (writes != null) 'writes': writes!,
      };
}

/// The response for Firestore.Commit.
class CommitResponse {
  /// The time at which the commit occurred.
  ///
  /// Any read with an equal or greater `read_time` is guaranteed to see the
  /// effects of the commit.
  core.String? commitTime;

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  CommitResponse({
    this.commitTime,
    this.writeResults,
  });

  CommitResponse.fromJson(core.Map json_)
      : this(
          commitTime: json_.containsKey('commitTime')
              ? json_['commitTime'] as core.String
              : null,
          writeResults: json_.containsKey('writeResults')
              ? (json_['writeResults'] as core.List)
                  .map((value) => WriteResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitTime != null) 'commitTime': commitTime!,
        if (writeResults != null) 'writeResults': writeResults!,
      };
}

/// A filter that merges multiple other filters using the given operator.
class CompositeFilter {
  /// The list of filters to combine.
  ///
  /// Requires: * At least one filter is present.
  core.List<Filter>? filters;

  /// The operator for combining multiple filters.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "AND" : Documents are required to satisfy all of the combined filters.
  /// - "OR" : Documents are required to satisfy at least one of the combined
  /// filters.
  core.String? op;

  CompositeFilter({
    this.filters,
    this.op,
  });

  CompositeFilter.fromJson(core.Map json_)
      : this(
          filters: json_.containsKey('filters')
              ? (json_['filters'] as core.List)
                  .map((value) => Filter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          op: json_.containsKey('op') ? json_['op'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filters != null) 'filters': filters!,
        if (op != null) 'op': op!,
      };
}

/// Count of documents that match the query.
///
/// The `COUNT(*)` aggregation function operates on the entire document so it
/// does not require a field reference.
class Count {
  /// Optional constraint on the maximum number of documents to count.
  ///
  /// This provides a way to set an upper bound on the number of documents to
  /// scan, limiting latency, and cost. Unspecified is interpreted as no bound.
  /// High-Level Example: ``` AGGREGATE COUNT_UP_TO(1000) OVER ( SELECT * FROM k
  /// ); ``` Requires: * Must be greater than zero when present.
  ///
  /// Optional.
  core.String? upTo;

  Count({
    this.upTo,
  });

  Count.fromJson(core.Map json_)
      : this(
          upTo: json_.containsKey('upTo') ? json_['upTo'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (upTo != null) 'upTo': upTo!,
      };
}

/// A position in a query result set.
class Cursor {
  /// If the position is just before or just after the given values, relative to
  /// the sort order defined by the query.
  core.bool? before;

  /// The values that represent a position, in the order they appear in the
  /// order by clause of a query.
  ///
  /// Can contain fewer values than specified in the order by clause.
  core.List<Value>? values;

  Cursor({
    this.before,
    this.values,
  });

  Cursor.fromJson(core.Map json_)
      : this(
          before:
              json_.containsKey('before') ? json_['before'] as core.bool : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (before != null) 'before': before!,
        if (values != null) 'values': values!,
      };
}

/// A Firestore document.
///
/// Must not exceed 1 MiB - 4 bytes.
class Document {
  /// The time at which the document was created.
  ///
  /// This value increases monotonically when a document is deleted then
  /// recreated. It can also be compared to values from other documents and the
  /// `read_time` of a query.
  ///
  /// Output only.
  core.String? createTime;

  /// The document's fields.
  ///
  /// The map keys represent field names. Field names matching the regular
  /// expression `__.*__` are reserved. Reserved field names are forbidden
  /// except in certain documented contexts. The field names, represented as
  /// UTF-8, must not exceed 1,500 bytes and cannot be empty. Field paths may be
  /// used in other contexts to refer to structured fields defined here. For
  /// `map_value`, the field path is represented by a dot-delimited (`.`) string
  /// of segments. Each segment is either a simple field name (defined below) or
  /// a quoted field name. For example, the structured field `"foo" : {
  /// map_value: { "x&y" : { string_value: "hello" }}}` would be represented by
  /// the field path `` foo.`x&y` ``. A simple field name contains only
  /// characters `a` to `z`, `A` to `Z`, `0` to `9`, or `_`, and must not start
  /// with `0` to `9`. For example, `foo_bar_17`. A quoted field name starts and
  /// ends with `` ` `` and may contain any character. Some characters,
  /// including `` ` ``, must be escaped using a `\`. For example, `` `x&y` ``
  /// represents `x&y` and `` `bak\`tik` `` represents `` bak`tik ``.
  core.Map<core.String, Value>? fields;

  /// The resource name of the document, for example
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? name;

  /// The time at which the document was last changed.
  ///
  /// This value is initially set to the `create_time` then increases
  /// monotonically with each change to the document. It can also be compared to
  /// values from other documents and the `read_time` of a query.
  ///
  /// Output only.
  core.String? updateTime;

  Document({
    this.createTime,
    this.fields,
    this.name,
    this.updateTime,
  });

  Document.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    Value.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A set of field paths on a document.
///
/// Used to restrict a get or update operation on a document to a subset of its
/// fields. This is different from standard field masks, as this is always
/// scoped to a Document, and takes in account the dynamic nature of Value.
class DocumentMask {
  /// The list of field paths in the mask.
  ///
  /// See Document.fields for a field path syntax reference.
  core.List<core.String>? fieldPaths;

  DocumentMask({
    this.fieldPaths,
  });

  DocumentMask.fromJson(core.Map json_)
      : this(
          fieldPaths: json_.containsKey('fieldPaths')
              ? (json_['fieldPaths'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldPaths != null) 'fieldPaths': fieldPaths!,
      };
}

/// A transformation of a document.
class DocumentTransform {
  /// The name of the document to transform.
  core.String? document;

  /// The list of transformations to apply to the fields of the document, in
  /// order.
  ///
  /// This must not be empty.
  core.List<FieldTransform>? fieldTransforms;

  DocumentTransform({
    this.document,
    this.fieldTransforms,
  });

  DocumentTransform.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? json_['document'] as core.String
              : null,
          fieldTransforms: json_.containsKey('fieldTransforms')
              ? (json_['fieldTransforms'] as core.List)
                  .map((value) => FieldTransform.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (fieldTransforms != null) 'fieldTransforms': fieldTransforms!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Execution statistics for the query.
typedef ExecutionStats = $ExecutionStats;

/// Explain metrics for the query.
class ExplainMetrics {
  /// Aggregated stats from the execution of the query.
  ///
  /// Only present when ExplainOptions.analyze is set to true.
  ExecutionStats? executionStats;

  /// Planning phase information for the query.
  PlanSummary? planSummary;

  ExplainMetrics({
    this.executionStats,
    this.planSummary,
  });

  ExplainMetrics.fromJson(core.Map json_)
      : this(
          executionStats: json_.containsKey('executionStats')
              ? ExecutionStats.fromJson(json_['executionStats']
                  as core.Map<core.String, core.dynamic>)
              : null,
          planSummary: json_.containsKey('planSummary')
              ? PlanSummary.fromJson(
                  json_['planSummary'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (executionStats != null) 'executionStats': executionStats!,
        if (planSummary != null) 'planSummary': planSummary!,
      };
}

/// Explain options for the query.
typedef ExplainOptions = $ExplainOptions;

/// A filter on a specific field.
class FieldFilter {
  /// The field to filter by.
  FieldReference? field;

  /// The operator to filter by.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "LESS_THAN" : The given `field` is less than the given `value`.
  /// Requires: * That `field` come first in `order_by`.
  /// - "LESS_THAN_OR_EQUAL" : The given `field` is less than or equal to the
  /// given `value`. Requires: * That `field` come first in `order_by`.
  /// - "GREATER_THAN" : The given `field` is greater than the given `value`.
  /// Requires: * That `field` come first in `order_by`.
  /// - "GREATER_THAN_OR_EQUAL" : The given `field` is greater than or equal to
  /// the given `value`. Requires: * That `field` come first in `order_by`.
  /// - "EQUAL" : The given `field` is equal to the given `value`.
  /// - "NOT_EQUAL" : The given `field` is not equal to the given `value`.
  /// Requires: * No other `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or
  /// `IS_NOT_NAN`. * That `field` comes first in the `order_by`.
  /// - "ARRAY_CONTAINS" : The given `field` is an array that contains the given
  /// `value`.
  /// - "IN" : The given `field` is equal to at least one value in the given
  /// array. Requires: * That `value` is a non-empty `ArrayValue`, subject to
  /// disjunction limits. * No `NOT_IN` filters in the same query.
  /// - "ARRAY_CONTAINS_ANY" : The given `field` is an array that contains any
  /// of the values in the given array. Requires: * That `value` is a non-empty
  /// `ArrayValue`, subject to disjunction limits. * No other
  /// `ARRAY_CONTAINS_ANY` filters within the same disjunction. * No `NOT_IN`
  /// filters in the same query.
  /// - "NOT_IN" : The value of the `field` is not in the given array. Requires:
  /// * That `value` is a non-empty `ArrayValue` with at most 10 values. * No
  /// other `OR`, `IN`, `ARRAY_CONTAINS_ANY`, `NOT_IN`, `NOT_EQUAL`,
  /// `IS_NOT_NULL`, or `IS_NOT_NAN`. * That `field` comes first in the
  /// `order_by`.
  core.String? op;

  /// The value to compare to.
  Value? value;

  FieldFilter({
    this.field,
    this.op,
    this.value,
  });

  FieldFilter.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
          op: json_.containsKey('op') ? json_['op'] as core.String : null,
          value: json_.containsKey('value')
              ? Value.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (op != null) 'op': op!,
        if (value != null) 'value': value!,
      };
}

/// A reference to a field in a document, ex: `stats.operations`.
class FieldReference {
  /// A reference to a field in a document.
  ///
  /// Requires: * MUST be a dot-delimited (`.`) string of segments, where each
  /// segment conforms to document field name limitations.
  core.String? fieldPath;

  FieldReference({
    this.fieldPath,
  });

  FieldReference.fromJson(core.Map json_)
      : this(
          fieldPath: json_.containsKey('fieldPath')
              ? json_['fieldPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldPath != null) 'fieldPath': fieldPath!,
      };
}

/// A transformation of a field of the document.
class FieldTransform {
  /// Append the given elements in order if they are not already present in the
  /// current field value.
  ///
  /// If the field is not an array, or if the field does not yet exist, it is
  /// first set to the empty array. Equivalent numbers of different types (e.g.
  /// 3L and 3.0) are considered equal when checking if a value is missing. NaN
  /// is equal to NaN, and Null is equal to Null. If the input contains multiple
  /// equivalent values, only the first will be considered. The corresponding
  /// transform_result will be the null value.
  ArrayValue? appendMissingElements;

  /// The path of the field.
  ///
  /// See Document.fields for the field path syntax reference.
  core.String? fieldPath;

  /// Adds the given value to the field's current value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the given value. If either of the given value or the current
  /// field value are doubles, both values will be interpreted as doubles.
  /// Double arithmetic and representation of double values follow IEEE 754
  /// semantics. If there is positive/negative integer overflow, the field is
  /// resolved to the largest magnitude positive/negative integer.
  Value? increment;

  /// Sets the field to the maximum of its current value and the given value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the given value. If a maximum operation is applied where the
  /// field and the input value are of mixed types (that is - one is an integer
  /// and one is a double) the field takes on the type of the larger operand. If
  /// the operands are equivalent (e.g. 3 and 3.0), the field does not change.
  /// 0, 0.0, and -0.0 are all zero. The maximum of a zero stored value and zero
  /// input value is always the stored value. The maximum of any numeric value x
  /// and NaN is NaN.
  Value? maximum;

  /// Sets the field to the minimum of its current value and the given value.
  ///
  /// This must be an integer or a double value. If the field is not an integer
  /// or double, or if the field does not yet exist, the transformation will set
  /// the field to the input value. If a minimum operation is applied where the
  /// field and the input value are of mixed types (that is - one is an integer
  /// and one is a double) the field takes on the type of the smaller operand.
  /// If the operands are equivalent (e.g. 3 and 3.0), the field does not
  /// change. 0, 0.0, and -0.0 are all zero. The minimum of a zero stored value
  /// and zero input value is always the stored value. The minimum of any
  /// numeric value x and NaN is NaN.
  Value? minimum;

  /// Remove all of the given elements from the array in the field.
  ///
  /// If the field is not an array, or if the field does not yet exist, it is
  /// set to the empty array. Equivalent numbers of the different types (e.g. 3L
  /// and 3.0) are considered equal when deciding whether an element should be
  /// removed. NaN is equal to NaN, and Null is equal to Null. This will remove
  /// all equivalent values if there are duplicates. The corresponding
  /// transform_result will be the null value.
  ArrayValue? removeAllFromArray;

  /// Sets the field to the given server value.
  /// Possible string values are:
  /// - "SERVER_VALUE_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "REQUEST_TIME" : The time at which the server processed the request,
  /// with millisecond precision. If used on multiple fields (same or different
  /// documents) in a transaction, all the fields will get the same server
  /// timestamp.
  core.String? setToServerValue;

  FieldTransform({
    this.appendMissingElements,
    this.fieldPath,
    this.increment,
    this.maximum,
    this.minimum,
    this.removeAllFromArray,
    this.setToServerValue,
  });

  FieldTransform.fromJson(core.Map json_)
      : this(
          appendMissingElements: json_.containsKey('appendMissingElements')
              ? ArrayValue.fromJson(json_['appendMissingElements']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fieldPath: json_.containsKey('fieldPath')
              ? json_['fieldPath'] as core.String
              : null,
          increment: json_.containsKey('increment')
              ? Value.fromJson(
                  json_['increment'] as core.Map<core.String, core.dynamic>)
              : null,
          maximum: json_.containsKey('maximum')
              ? Value.fromJson(
                  json_['maximum'] as core.Map<core.String, core.dynamic>)
              : null,
          minimum: json_.containsKey('minimum')
              ? Value.fromJson(
                  json_['minimum'] as core.Map<core.String, core.dynamic>)
              : null,
          removeAllFromArray: json_.containsKey('removeAllFromArray')
              ? ArrayValue.fromJson(json_['removeAllFromArray']
                  as core.Map<core.String, core.dynamic>)
              : null,
          setToServerValue: json_.containsKey('setToServerValue')
              ? json_['setToServerValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appendMissingElements != null)
          'appendMissingElements': appendMissingElements!,
        if (fieldPath != null) 'fieldPath': fieldPath!,
        if (increment != null) 'increment': increment!,
        if (maximum != null) 'maximum': maximum!,
        if (minimum != null) 'minimum': minimum!,
        if (removeAllFromArray != null)
          'removeAllFromArray': removeAllFromArray!,
        if (setToServerValue != null) 'setToServerValue': setToServerValue!,
      };
}

/// A filter.
class Filter {
  /// A composite filter.
  CompositeFilter? compositeFilter;

  /// A filter on a document field.
  FieldFilter? fieldFilter;

  /// A filter that takes exactly one argument.
  UnaryFilter? unaryFilter;

  Filter({
    this.compositeFilter,
    this.fieldFilter,
    this.unaryFilter,
  });

  Filter.fromJson(core.Map json_)
      : this(
          compositeFilter: json_.containsKey('compositeFilter')
              ? CompositeFilter.fromJson(json_['compositeFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fieldFilter: json_.containsKey('fieldFilter')
              ? FieldFilter.fromJson(
                  json_['fieldFilter'] as core.Map<core.String, core.dynamic>)
              : null,
          unaryFilter: json_.containsKey('unaryFilter')
              ? UnaryFilter.fromJson(
                  json_['unaryFilter'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (compositeFilter != null) 'compositeFilter': compositeFilter!,
        if (fieldFilter != null) 'fieldFilter': fieldFilter!,
        if (unaryFilter != null) 'unaryFilter': unaryFilter!,
      };
}

/// Nearest Neighbors search config.
class FindNearest {
  /// The Distance Measure to use, required.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DISTANCE_MEASURE_UNSPECIFIED" : Should not be set.
  /// - "EUCLIDEAN" : Measures the EUCLIDEAN distance between the vectors. See
  /// [Euclidean](https://en.wikipedia.org/wiki/Euclidean_distance) to learn
  /// more
  /// - "COSINE" : Compares vectors based on the angle between them, which
  /// allows you to measure similarity that isn't based on the vectors
  /// magnitude. We recommend using DOT_PRODUCT with unit normalized vectors
  /// instead of COSINE distance, which is mathematically equivalent with better
  /// performance. See
  /// [Cosine Similarity](https://en.wikipedia.org/wiki/Cosine_similarity) to
  /// learn more.
  /// - "DOT_PRODUCT" : Similar to cosine but is affected by the magnitude of
  /// the vectors. See [Dot Product](https://en.wikipedia.org/wiki/Dot_product)
  /// to learn more.
  core.String? distanceMeasure;

  /// The number of nearest neighbors to return.
  ///
  /// Must be a positive integer of no more than 1000.
  ///
  /// Required.
  core.int? limit;

  /// The query vector that we are searching on.
  ///
  /// Must be a vector of no more than 2048 dimensions.
  ///
  /// Required.
  Value? queryVector;

  /// An indexed vector field to search upon.
  ///
  /// Only documents which contain vectors whose dimensionality match the
  /// query_vector can be returned.
  ///
  /// Required.
  FieldReference? vectorField;

  FindNearest({
    this.distanceMeasure,
    this.limit,
    this.queryVector,
    this.vectorField,
  });

  FindNearest.fromJson(core.Map json_)
      : this(
          distanceMeasure: json_.containsKey('distanceMeasure')
              ? json_['distanceMeasure'] as core.String
              : null,
          limit: json_.containsKey('limit') ? json_['limit'] as core.int : null,
          queryVector: json_.containsKey('queryVector')
              ? Value.fromJson(
                  json_['queryVector'] as core.Map<core.String, core.dynamic>)
              : null,
          vectorField: json_.containsKey('vectorField')
              ? FieldReference.fromJson(
                  json_['vectorField'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (distanceMeasure != null) 'distanceMeasure': distanceMeasure!,
        if (limit != null) 'limit': limit!,
        if (queryVector != null) 'queryVector': queryVector!,
        if (vectorField != null) 'vectorField': vectorField!,
      };
}

/// A Backup of a Cloud Firestore Database.
///
/// The backup contains all documents and index configurations for the given
/// database at a specific point in time.
class GoogleFirestoreAdminV1Backup {
  /// Name of the Firestore database that the backup is from.
  ///
  /// Format is `projects/{project}/databases/{database}`.
  ///
  /// Output only.
  core.String? database;

  /// The system-generated UUID4 for the Firestore database that the backup is
  /// from.
  ///
  /// Output only.
  core.String? databaseUid;

  /// The timestamp at which this backup expires.
  ///
  /// Output only.
  core.String? expireTime;

  /// The unique resource name of the Backup.
  ///
  /// Format is `projects/{project}/locations/{location}/backups/{backup}`.
  ///
  /// Output only.
  core.String? name;

  /// The backup contains an externally consistent copy of the database at this
  /// time.
  ///
  /// Output only.
  core.String? snapshotTime;

  /// The current state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The pending backup is still being created. Operations on
  /// the backup will be rejected in this state.
  /// - "READY" : The backup is complete and ready to use.
  /// - "NOT_AVAILABLE" : The backup is not available at this moment.
  core.String? state;

  /// Statistics about the backup.
  ///
  /// This data only becomes available after the backup is fully materialized to
  /// secondary storage. This field will be empty till then.
  ///
  /// Output only.
  GoogleFirestoreAdminV1Stats? stats;

  GoogleFirestoreAdminV1Backup({
    this.database,
    this.databaseUid,
    this.expireTime,
    this.name,
    this.snapshotTime,
    this.state,
    this.stats,
  });

  GoogleFirestoreAdminV1Backup.fromJson(core.Map json_)
      : this(
          database: json_.containsKey('database')
              ? json_['database'] as core.String
              : null,
          databaseUid: json_.containsKey('databaseUid')
              ? json_['databaseUid'] as core.String
              : null,
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          snapshotTime: json_.containsKey('snapshotTime')
              ? json_['snapshotTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stats: json_.containsKey('stats')
              ? GoogleFirestoreAdminV1Stats.fromJson(
                  json_['stats'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
        if (databaseUid != null) 'databaseUid': databaseUid!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (snapshotTime != null) 'snapshotTime': snapshotTime!,
        if (state != null) 'state': state!,
        if (stats != null) 'stats': stats!,
      };
}

/// A backup schedule for a Cloud Firestore Database.
///
/// This resource is owned by the database it is backing up, and is deleted
/// along with the database. The actual backups are not though.
class GoogleFirestoreAdminV1BackupSchedule {
  /// The timestamp at which this backup schedule was created and effective
  /// since.
  ///
  /// No backups will be created for this schedule before this time.
  ///
  /// Output only.
  core.String? createTime;

  /// For a schedule that runs daily at a specified time.
  GoogleFirestoreAdminV1DailyRecurrence? dailyRecurrence;

  /// The unique backup schedule identifier across all locations and databases
  /// for the given project.
  ///
  /// This will be auto-assigned. Format is
  /// `projects/{project}/databases/{database}/backupSchedules/{backup_schedule}`
  ///
  /// Output only.
  core.String? name;

  /// At what relative time in the future, compared to its creation time, the
  /// backup should be deleted, e.g. keep backups for 7 days.
  core.String? retention;

  /// The timestamp at which this backup schedule was most recently updated.
  ///
  /// When a backup schedule is first created, this is the same as create_time.
  ///
  /// Output only.
  core.String? updateTime;

  /// For a schedule that runs weekly on a specific day and time.
  GoogleFirestoreAdminV1WeeklyRecurrence? weeklyRecurrence;

  GoogleFirestoreAdminV1BackupSchedule({
    this.createTime,
    this.dailyRecurrence,
    this.name,
    this.retention,
    this.updateTime,
    this.weeklyRecurrence,
  });

  GoogleFirestoreAdminV1BackupSchedule.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          dailyRecurrence: json_.containsKey('dailyRecurrence')
              ? GoogleFirestoreAdminV1DailyRecurrence.fromJson(
                  json_['dailyRecurrence']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          retention: json_.containsKey('retention')
              ? json_['retention'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          weeklyRecurrence: json_.containsKey('weeklyRecurrence')
              ? GoogleFirestoreAdminV1WeeklyRecurrence.fromJson(
                  json_['weeklyRecurrence']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dailyRecurrence != null) 'dailyRecurrence': dailyRecurrence!,
        if (name != null) 'name': name!,
        if (retention != null) 'retention': retention!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (weeklyRecurrence != null) 'weeklyRecurrence': weeklyRecurrence!,
      };
}

/// The CMEK (Customer Managed Encryption Key) configuration for a Firestore
/// database.
///
/// If not present, the database is secured by the default Google encryption
/// key.
class GoogleFirestoreAdminV1CmekConfig {
  /// Currently in-use
  /// [KMS key versions](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions).
  ///
  /// During [key rotation](https://cloud.google.com/kms/docs/key-rotation),
  /// there can be multiple in-use key versions. The expected format is
  /// `projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{key_version}`.
  ///
  /// Output only.
  core.List<core.String>? activeKeyVersion;

  /// Only keys in the same location as this database are allowed to be used for
  /// encryption.
  ///
  /// For Firestore's nam5 multi-region, this corresponds to Cloud KMS
  /// multi-region us. For Firestore's eur3 multi-region, this corresponds to
  /// Cloud KMS multi-region europe. See
  /// https://cloud.google.com/kms/docs/locations. The expected format is
  /// `projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  ///
  /// Required.
  core.String? kmsKeyName;

  GoogleFirestoreAdminV1CmekConfig({
    this.activeKeyVersion,
    this.kmsKeyName,
  });

  GoogleFirestoreAdminV1CmekConfig.fromJson(core.Map json_)
      : this(
          activeKeyVersion: json_.containsKey('activeKeyVersion')
              ? (json_['activeKeyVersion'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeKeyVersion != null) 'activeKeyVersion': activeKeyVersion!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// Represents a recurring schedule that runs at a specific time every day.
///
/// The time zone is UTC.
typedef GoogleFirestoreAdminV1DailyRecurrence = $Empty;

/// A Cloud Firestore Database.
class GoogleFirestoreAdminV1Database {
  /// The App Engine integration mode to use for this database.
  /// Possible string values are:
  /// - "APP_ENGINE_INTEGRATION_MODE_UNSPECIFIED" : Not used.
  /// - "ENABLED" : If an App Engine application exists in the same region as
  /// this database, App Engine configuration will impact this database. This
  /// includes disabling of the application & database, as well as disabling
  /// writes to the database.
  /// - "DISABLED" : App Engine has no effect on the ability of this database to
  /// serve requests. This is the default setting for databases created with the
  /// Firestore API.
  core.String? appEngineIntegrationMode;

  /// Presence indicates CMEK is enabled for this database.
  ///
  /// Optional.
  GoogleFirestoreAdminV1CmekConfig? cmekConfig;

  /// The concurrency control mode to use for this database.
  /// Possible string values are:
  /// - "CONCURRENCY_MODE_UNSPECIFIED" : Not used.
  /// - "OPTIMISTIC" : Use optimistic concurrency control by default. This mode
  /// is available for Cloud Firestore databases.
  /// - "PESSIMISTIC" : Use pessimistic concurrency control by default. This
  /// mode is available for Cloud Firestore databases. This is the default
  /// setting for Cloud Firestore.
  /// - "OPTIMISTIC_WITH_ENTITY_GROUPS" : Use optimistic concurrency control
  /// with entity groups by default. This is the only available mode for Cloud
  /// Datastore. This mode is also available for Cloud Firestore with Datastore
  /// Mode but is not recommended.
  core.String? concurrencyMode;

  /// The timestamp at which this database was created.
  ///
  /// Databases created before 2016 do not populate create_time.
  ///
  /// Output only.
  core.String? createTime;

  /// State of delete protection for the database.
  /// Possible string values are:
  /// - "DELETE_PROTECTION_STATE_UNSPECIFIED" : The default value. Delete
  /// protection type is not specified
  /// - "DELETE_PROTECTION_DISABLED" : Delete protection is disabled
  /// - "DELETE_PROTECTION_ENABLED" : Delete protection is enabled
  core.String? deleteProtectionState;

  /// The earliest timestamp at which older versions of the data can be read
  /// from the database.
  ///
  /// See \[version_retention_period\] above; this field is populated with `now
  /// - version_retention_period`. This value is continuously updated, and
  /// becomes stale the moment it is queried. If you are using this value to
  /// recover data, make sure to account for the time from the moment when the
  /// value is queried to the moment when you initiate the recovery.
  ///
  /// Output only.
  core.String? earliestVersionTime;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  core.String? etag;

  /// The key_prefix for this database.
  ///
  /// This key_prefix is used, in combination with the project id ("~") to
  /// construct the application id that is returned from the Cloud Datastore
  /// APIs in Google App Engine first generation runtimes. This value may be
  /// empty in which case the appid to use for URL-encoded keys is the
  /// project_id (eg: foo instead of v~foo).
  ///
  /// Output only.
  core.String? keyPrefix;

  /// The location of the database.
  ///
  /// Available locations are listed at
  /// https://cloud.google.com/firestore/docs/locations.
  core.String? locationId;

  /// The resource name of the Database.
  ///
  /// Format: `projects/{project}/databases/{database}`
  core.String? name;

  /// Whether to enable the PITR feature on this database.
  /// Possible string values are:
  /// - "POINT_IN_TIME_RECOVERY_ENABLEMENT_UNSPECIFIED" : Not used.
  /// - "POINT_IN_TIME_RECOVERY_ENABLED" : Reads are supported on selected
  /// versions of the data from within the past 7 days: * Reads against any
  /// timestamp within the past hour * Reads against 1-minute snapshots beyond 1
  /// hour and within 7 days `version_retention_period` and
  /// `earliest_version_time` can be used to determine the supported versions.
  /// - "POINT_IN_TIME_RECOVERY_DISABLED" : Reads are supported on any version
  /// of the data from within the past 1 hour.
  core.String? pointInTimeRecoveryEnablement;

  /// The type of the database.
  ///
  /// See https://cloud.google.com/datastore/docs/firestore-or-datastore for
  /// information about how to choose.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : The default value. This value is used if
  /// the database type is omitted.
  /// - "FIRESTORE_NATIVE" : Firestore Native Mode
  /// - "DATASTORE_MODE" : Firestore in Datastore Mode.
  core.String? type;

  /// The system-generated UUID4 for this Database.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp at which this database was most recently updated.
  ///
  /// Note this only includes updates to the database resource and not data
  /// contained by the database.
  ///
  /// Output only.
  core.String? updateTime;

  /// The period during which past versions of data are retained in the
  /// database.
  ///
  /// Any read or query can specify a `read_time` within this window, and will
  /// read the state of the database at that time. If the PITR feature is
  /// enabled, the retention period is 7 days. Otherwise, the retention period
  /// is 1 hour.
  ///
  /// Output only.
  core.String? versionRetentionPeriod;

  GoogleFirestoreAdminV1Database({
    this.appEngineIntegrationMode,
    this.cmekConfig,
    this.concurrencyMode,
    this.createTime,
    this.deleteProtectionState,
    this.earliestVersionTime,
    this.etag,
    this.keyPrefix,
    this.locationId,
    this.name,
    this.pointInTimeRecoveryEnablement,
    this.type,
    this.uid,
    this.updateTime,
    this.versionRetentionPeriod,
  });

  GoogleFirestoreAdminV1Database.fromJson(core.Map json_)
      : this(
          appEngineIntegrationMode:
              json_.containsKey('appEngineIntegrationMode')
                  ? json_['appEngineIntegrationMode'] as core.String
                  : null,
          cmekConfig: json_.containsKey('cmekConfig')
              ? GoogleFirestoreAdminV1CmekConfig.fromJson(
                  json_['cmekConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          concurrencyMode: json_.containsKey('concurrencyMode')
              ? json_['concurrencyMode'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteProtectionState: json_.containsKey('deleteProtectionState')
              ? json_['deleteProtectionState'] as core.String
              : null,
          earliestVersionTime: json_.containsKey('earliestVersionTime')
              ? json_['earliestVersionTime'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          keyPrefix: json_.containsKey('keyPrefix')
              ? json_['keyPrefix'] as core.String
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          pointInTimeRecoveryEnablement:
              json_.containsKey('pointInTimeRecoveryEnablement')
                  ? json_['pointInTimeRecoveryEnablement'] as core.String
                  : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          uid: json_.containsKey('uid') ? json_['uid'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          versionRetentionPeriod: json_.containsKey('versionRetentionPeriod')
              ? json_['versionRetentionPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (appEngineIntegrationMode != null)
          'appEngineIntegrationMode': appEngineIntegrationMode!,
        if (cmekConfig != null) 'cmekConfig': cmekConfig!,
        if (concurrencyMode != null) 'concurrencyMode': concurrencyMode!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteProtectionState != null)
          'deleteProtectionState': deleteProtectionState!,
        if (earliestVersionTime != null)
          'earliestVersionTime': earliestVersionTime!,
        if (etag != null) 'etag': etag!,
        if (keyPrefix != null) 'keyPrefix': keyPrefix!,
        if (locationId != null) 'locationId': locationId!,
        if (name != null) 'name': name!,
        if (pointInTimeRecoveryEnablement != null)
          'pointInTimeRecoveryEnablement': pointInTimeRecoveryEnablement!,
        if (type != null) 'type': type!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (versionRetentionPeriod != null)
          'versionRetentionPeriod': versionRetentionPeriod!,
      };
}

/// A consistent snapshot of a database at a specific point in time.
class GoogleFirestoreAdminV1DatabaseSnapshot {
  /// A name of the form `projects/{project_id}/databases/{database_id}`
  ///
  /// Required.
  core.String? database;

  /// The timestamp at which the database snapshot is taken.
  ///
  /// The requested timestamp must be a whole minute within the PITR window.
  ///
  /// Required.
  core.String? snapshotTime;

  GoogleFirestoreAdminV1DatabaseSnapshot({
    this.database,
    this.snapshotTime,
  });

  GoogleFirestoreAdminV1DatabaseSnapshot.fromJson(core.Map json_)
      : this(
          database: json_.containsKey('database')
              ? json_['database'] as core.String
              : null,
          snapshotTime: json_.containsKey('snapshotTime')
              ? json_['snapshotTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
        if (snapshotTime != null) 'snapshotTime': snapshotTime!,
      };
}

/// The request for FirestoreAdmin.ExportDocuments.
class GoogleFirestoreAdminV1ExportDocumentsRequest {
  /// Which collection ids to export.
  ///
  /// Unspecified means all collections.
  core.List<core.String>? collectionIds;

  /// An empty list represents all namespaces.
  ///
  /// This is the preferred usage for databases that don't use namespaces. An
  /// empty string element represents the default namespace. This should be used
  /// if the database has data in non-default namespaces, but doesn't want to
  /// include them. Each namespace in this list must be unique.
  core.List<core.String>? namespaceIds;

  /// The output URI.
  ///
  /// Currently only supports Google Cloud Storage URIs of the form:
  /// `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name of
  /// the Google Cloud Storage bucket and `NAMESPACE_PATH` is an optional Google
  /// Cloud Storage namespace path. When choosing a name, be sure to consider
  /// Google Cloud Storage naming guidelines:
  /// https://cloud.google.com/storage/docs/naming. If the URI is a bucket
  /// (without a namespace path), a prefix will be generated based on the start
  /// time.
  core.String? outputUriPrefix;

  /// The timestamp that corresponds to the version of the database to be
  /// exported.
  ///
  /// The timestamp must be in the past, rounded to the minute and not older
  /// than earliestVersionTime. If specified, then the exported documents will
  /// represent a consistent view of the database at the provided time.
  /// Otherwise, there are no guarantees about the consistency of the exported
  /// documents.
  core.String? snapshotTime;

  GoogleFirestoreAdminV1ExportDocumentsRequest({
    this.collectionIds,
    this.namespaceIds,
    this.outputUriPrefix,
    this.snapshotTime,
  });

  GoogleFirestoreAdminV1ExportDocumentsRequest.fromJson(core.Map json_)
      : this(
          collectionIds: json_.containsKey('collectionIds')
              ? (json_['collectionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          namespaceIds: json_.containsKey('namespaceIds')
              ? (json_['namespaceIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          outputUriPrefix: json_.containsKey('outputUriPrefix')
              ? json_['outputUriPrefix'] as core.String
              : null,
          snapshotTime: json_.containsKey('snapshotTime')
              ? json_['snapshotTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionIds != null) 'collectionIds': collectionIds!,
        if (namespaceIds != null) 'namespaceIds': namespaceIds!,
        if (outputUriPrefix != null) 'outputUriPrefix': outputUriPrefix!,
        if (snapshotTime != null) 'snapshotTime': snapshotTime!,
      };
}

/// Represents a single field in the database.
///
/// Fields are grouped by their "Collection Group", which represent all
/// collections in the database with the same id.
class GoogleFirestoreAdminV1Field {
  /// The index configuration for this field.
  ///
  /// If unset, field indexing will revert to the configuration defined by the
  /// `ancestor_field`. To explicitly remove all indexes for this field, specify
  /// an index config with an empty list of indexes.
  GoogleFirestoreAdminV1IndexConfig? indexConfig;

  /// A field name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  /// A field path may be a simple field name, e.g. `address` or a path to
  /// fields within map_value , e.g. `address.city`, or a special field path.
  ///
  /// The only valid special field is `*`, which represents any field. Field
  /// paths may be quoted using ` (backtick). The only character that needs to
  /// be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that must be
  /// quoted include: `*`, `.`, ``` (backtick), `[`, `]`, as well as any ascii
  /// symbolic characters. Examples: (Note: Comments here are written in
  /// markdown syntax, so there is an additional layer of backticks to represent
  /// a code block) `\`address.city\`` represents a field named `address.city`,
  /// not the map key `city` in the field `address`. `\`*\`` represents a field
  /// named `*`, not any field. A special `Field` contains the default indexing
  /// settings for all fields. This field's resource name is:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * ` Indexes defined on this `Field` will be applied to all fields which
  /// do not have their own `Field` index configuration.
  ///
  /// Required.
  core.String? name;

  /// The TTL configuration for this `Field`.
  ///
  /// Setting or unsetting this will enable or disable the TTL for documents
  /// that have this `Field`.
  GoogleFirestoreAdminV1TtlConfig? ttlConfig;

  GoogleFirestoreAdminV1Field({
    this.indexConfig,
    this.name,
    this.ttlConfig,
  });

  GoogleFirestoreAdminV1Field.fromJson(core.Map json_)
      : this(
          indexConfig: json_.containsKey('indexConfig')
              ? GoogleFirestoreAdminV1IndexConfig.fromJson(
                  json_['indexConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          ttlConfig: json_.containsKey('ttlConfig')
              ? GoogleFirestoreAdminV1TtlConfig.fromJson(
                  json_['ttlConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexConfig != null) 'indexConfig': indexConfig!,
        if (name != null) 'name': name!,
        if (ttlConfig != null) 'ttlConfig': ttlConfig!,
      };
}

/// An index that stores vectors in a flat data structure, and supports
/// exhaustive search.
typedef GoogleFirestoreAdminV1FlatIndex = $Empty;

/// The request for FirestoreAdmin.ImportDocuments.
class GoogleFirestoreAdminV1ImportDocumentsRequest {
  /// Which collection ids to import.
  ///
  /// Unspecified means all collections included in the import.
  core.List<core.String>? collectionIds;

  /// Location of the exported files.
  ///
  /// This must match the output_uri_prefix of an ExportDocumentsResponse from
  /// an export that has completed successfully. See:
  /// google.firestore.admin.v1.ExportDocumentsResponse.output_uri_prefix.
  core.String? inputUriPrefix;

  /// An empty list represents all namespaces.
  ///
  /// This is the preferred usage for databases that don't use namespaces. An
  /// empty string element represents the default namespace. This should be used
  /// if the database has data in non-default namespaces, but doesn't want to
  /// include them. Each namespace in this list must be unique.
  core.List<core.String>? namespaceIds;

  GoogleFirestoreAdminV1ImportDocumentsRequest({
    this.collectionIds,
    this.inputUriPrefix,
    this.namespaceIds,
  });

  GoogleFirestoreAdminV1ImportDocumentsRequest.fromJson(core.Map json_)
      : this(
          collectionIds: json_.containsKey('collectionIds')
              ? (json_['collectionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inputUriPrefix: json_.containsKey('inputUriPrefix')
              ? json_['inputUriPrefix'] as core.String
              : null,
          namespaceIds: json_.containsKey('namespaceIds')
              ? (json_['namespaceIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionIds != null) 'collectionIds': collectionIds!,
        if (inputUriPrefix != null) 'inputUriPrefix': inputUriPrefix!,
        if (namespaceIds != null) 'namespaceIds': namespaceIds!,
      };
}

/// Cloud Firestore indexes enable simple and complex queries against documents
/// in a database.
class GoogleFirestoreAdminV1Index {
  /// The API scope supported by this index.
  /// Possible string values are:
  /// - "ANY_API" : The index can only be used by the Firestore Native query
  /// API. This is the default.
  /// - "DATASTORE_MODE_API" : The index can only be used by the Firestore in
  /// Datastore Mode query API.
  core.String? apiScope;

  /// The fields supported by this index.
  ///
  /// For composite indexes, this requires a minimum of 2 and a maximum of 100
  /// fields. The last field entry is always for the field path `__name__`. If,
  /// on creation, `__name__` was not specified as the last field, it will be
  /// added automatically with the same direction as that of the last field
  /// defined. If the final field in a composite index is not directional, the
  /// `__name__` will be ordered ASCENDING (unless explicitly specified). For
  /// single field indexes, this will always be exactly one entry with a field
  /// path equal to the field path of the associated field.
  core.List<GoogleFirestoreAdminV1IndexField>? fields;

  /// A server defined name for this index.
  ///
  /// The form of this name for composite indexes will be:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}`
  /// For single field indexes, this field will be empty.
  ///
  /// Output only.
  core.String? name;

  /// Indexes with a collection query scope specified allow queries against a
  /// collection that is the child of a specific document, specified at query
  /// time, and that has the same collection id.
  ///
  /// Indexes with a collection group query scope specified allow queries
  /// against all collections descended from a specific document, specified at
  /// query time, and that have the same collection id as this index.
  /// Possible string values are:
  /// - "QUERY_SCOPE_UNSPECIFIED" : The query scope is unspecified. Not a valid
  /// option.
  /// - "COLLECTION" : Indexes with a collection query scope specified allow
  /// queries against a collection that is the child of a specific document,
  /// specified at query time, and that has the collection id specified by the
  /// index.
  /// - "COLLECTION_GROUP" : Indexes with a collection group query scope
  /// specified allow queries against all collections that has the collection id
  /// specified by the index.
  /// - "COLLECTION_RECURSIVE" : Include all the collections's ancestor in the
  /// index. Only available for Datastore Mode databases.
  core.String? queryScope;

  /// The serving state of the index.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The index is being created. There is an active long-running
  /// operation for the index. The index is updated when writing a document.
  /// Some index data may exist.
  /// - "READY" : The index is ready to be used. The index is updated when
  /// writing a document. The index is fully populated from all stored documents
  /// it applies to.
  /// - "NEEDS_REPAIR" : The index was being created, but something went wrong.
  /// There is no active long-running operation for the index, and the most
  /// recently finished long-running operation failed. The index is not updated
  /// when writing a document. Some index data may exist. Use the
  /// google.longrunning.Operations API to determine why the operation that last
  /// attempted to create this index failed, then re-create the index.
  core.String? state;

  GoogleFirestoreAdminV1Index({
    this.apiScope,
    this.fields,
    this.name,
    this.queryScope,
    this.state,
  });

  GoogleFirestoreAdminV1Index.fromJson(core.Map json_)
      : this(
          apiScope: json_.containsKey('apiScope')
              ? json_['apiScope'] as core.String
              : null,
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => GoogleFirestoreAdminV1IndexField.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          queryScope: json_.containsKey('queryScope')
              ? json_['queryScope'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apiScope != null) 'apiScope': apiScope!,
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
        if (queryScope != null) 'queryScope': queryScope!,
        if (state != null) 'state': state!,
      };
}

/// The index configuration for this field.
class GoogleFirestoreAdminV1IndexConfig {
  /// Specifies the resource name of the `Field` from which this field's index
  /// configuration is set (when `uses_ancestor_config` is true), or from which
  /// it *would* be set if this field had no index configuration (when
  /// `uses_ancestor_config` is false).
  ///
  /// Output only.
  core.String? ancestorField;

  /// The indexes supported for this field.
  core.List<GoogleFirestoreAdminV1Index>? indexes;

  /// Output only When true, the `Field`'s index configuration is in the process
  /// of being reverted.
  ///
  /// Once complete, the index config will transition to the same state as the
  /// field specified by `ancestor_field`, at which point `uses_ancestor_config`
  /// will be `true` and `reverting` will be `false`.
  core.bool? reverting;

  /// When true, the `Field`'s index configuration is set from the configuration
  /// specified by the `ancestor_field`.
  ///
  /// When false, the `Field`'s index configuration is defined explicitly.
  ///
  /// Output only.
  core.bool? usesAncestorConfig;

  GoogleFirestoreAdminV1IndexConfig({
    this.ancestorField,
    this.indexes,
    this.reverting,
    this.usesAncestorConfig,
  });

  GoogleFirestoreAdminV1IndexConfig.fromJson(core.Map json_)
      : this(
          ancestorField: json_.containsKey('ancestorField')
              ? json_['ancestorField'] as core.String
              : null,
          indexes: json_.containsKey('indexes')
              ? (json_['indexes'] as core.List)
                  .map((value) => GoogleFirestoreAdminV1Index.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          reverting: json_.containsKey('reverting')
              ? json_['reverting'] as core.bool
              : null,
          usesAncestorConfig: json_.containsKey('usesAncestorConfig')
              ? json_['usesAncestorConfig'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ancestorField != null) 'ancestorField': ancestorField!,
        if (indexes != null) 'indexes': indexes!,
        if (reverting != null) 'reverting': reverting!,
        if (usesAncestorConfig != null)
          'usesAncestorConfig': usesAncestorConfig!,
      };
}

/// A field in an index.
///
/// The field_path describes which field is indexed, the value_mode describes
/// how the field value is indexed.
class GoogleFirestoreAdminV1IndexField {
  /// Indicates that this field supports operations on `array_value`s.
  /// Possible string values are:
  /// - "ARRAY_CONFIG_UNSPECIFIED" : The index does not support additional array
  /// queries.
  /// - "CONTAINS" : The index supports array containment queries.
  core.String? arrayConfig;

  /// Can be __name__.
  ///
  /// For single field indexes, this must match the name of the field or may be
  /// omitted.
  core.String? fieldPath;

  /// Indicates that this field supports ordering by the specified order or
  /// comparing using =, !=, \<, \<=, \>, \>=.
  /// Possible string values are:
  /// - "ORDER_UNSPECIFIED" : The ordering is unspecified. Not a valid option.
  /// - "ASCENDING" : The field is ordered by ascending field value.
  /// - "DESCENDING" : The field is ordered by descending field value.
  core.String? order;

  /// Indicates that this field supports nearest neighbors and distance
  /// operations on vector.
  GoogleFirestoreAdminV1VectorConfig? vectorConfig;

  GoogleFirestoreAdminV1IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
    this.vectorConfig,
  });

  GoogleFirestoreAdminV1IndexField.fromJson(core.Map json_)
      : this(
          arrayConfig: json_.containsKey('arrayConfig')
              ? json_['arrayConfig'] as core.String
              : null,
          fieldPath: json_.containsKey('fieldPath')
              ? json_['fieldPath'] as core.String
              : null,
          order:
              json_.containsKey('order') ? json_['order'] as core.String : null,
          vectorConfig: json_.containsKey('vectorConfig')
              ? GoogleFirestoreAdminV1VectorConfig.fromJson(
                  json_['vectorConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayConfig != null) 'arrayConfig': arrayConfig!,
        if (fieldPath != null) 'fieldPath': fieldPath!,
        if (order != null) 'order': order!,
        if (vectorConfig != null) 'vectorConfig': vectorConfig!,
      };
}

/// The response for FirestoreAdmin.ListBackupSchedules.
class GoogleFirestoreAdminV1ListBackupSchedulesResponse {
  /// List of all backup schedules.
  core.List<GoogleFirestoreAdminV1BackupSchedule>? backupSchedules;

  GoogleFirestoreAdminV1ListBackupSchedulesResponse({
    this.backupSchedules,
  });

  GoogleFirestoreAdminV1ListBackupSchedulesResponse.fromJson(core.Map json_)
      : this(
          backupSchedules: json_.containsKey('backupSchedules')
              ? (json_['backupSchedules'] as core.List)
                  .map((value) => GoogleFirestoreAdminV1BackupSchedule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupSchedules != null) 'backupSchedules': backupSchedules!,
      };
}

/// The response for FirestoreAdmin.ListBackups.
class GoogleFirestoreAdminV1ListBackupsResponse {
  /// List of all backups for the project.
  core.List<GoogleFirestoreAdminV1Backup>? backups;

  /// List of locations that existing backups were not able to be fetched from.
  ///
  /// Instead of failing the entire requests when a single location is
  /// unreachable, this response returns a partial result set and list of
  /// locations unable to be reached here. The request can be retried against a
  /// single location to get a concrete error.
  core.List<core.String>? unreachable;

  GoogleFirestoreAdminV1ListBackupsResponse({
    this.backups,
    this.unreachable,
  });

  GoogleFirestoreAdminV1ListBackupsResponse.fromJson(core.Map json_)
      : this(
          backups: json_.containsKey('backups')
              ? (json_['backups'] as core.List)
                  .map((value) => GoogleFirestoreAdminV1Backup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The list of databases for a project.
class GoogleFirestoreAdminV1ListDatabasesResponse {
  /// The databases in the project.
  core.List<GoogleFirestoreAdminV1Database>? databases;

  /// In the event that data about individual databases cannot be listed they
  /// will be recorded here.
  ///
  /// An example entry might be: projects/some_project/locations/some_location
  /// This can happen if the Cloud Region that the Database resides in is
  /// currently unavailable. In this case we can't fetch all the details about
  /// the database. You may be able to get a more detailed error message (or
  /// possibly fetch the resource) by sending a 'Get' request for the resource
  /// or a 'List' request for the specific location.
  core.List<core.String>? unreachable;

  GoogleFirestoreAdminV1ListDatabasesResponse({
    this.databases,
    this.unreachable,
  });

  GoogleFirestoreAdminV1ListDatabasesResponse.fromJson(core.Map json_)
      : this(
          databases: json_.containsKey('databases')
              ? (json_['databases'] as core.List)
                  .map((value) => GoogleFirestoreAdminV1Database.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databases != null) 'databases': databases!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response for FirestoreAdmin.ListFields.
class GoogleFirestoreAdminV1ListFieldsResponse {
  /// The requested fields.
  core.List<GoogleFirestoreAdminV1Field>? fields;

  /// A page token that may be used to request another page of results.
  ///
  /// If blank, this is the last page.
  core.String? nextPageToken;

  GoogleFirestoreAdminV1ListFieldsResponse({
    this.fields,
    this.nextPageToken,
  });

  GoogleFirestoreAdminV1ListFieldsResponse.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => GoogleFirestoreAdminV1Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for FirestoreAdmin.ListIndexes.
class GoogleFirestoreAdminV1ListIndexesResponse {
  /// The requested indexes.
  core.List<GoogleFirestoreAdminV1Index>? indexes;

  /// A page token that may be used to request another page of results.
  ///
  /// If blank, this is the last page.
  core.String? nextPageToken;

  GoogleFirestoreAdminV1ListIndexesResponse({
    this.indexes,
    this.nextPageToken,
  });

  GoogleFirestoreAdminV1ListIndexesResponse.fromJson(core.Map json_)
      : this(
          indexes: json_.containsKey('indexes')
              ? (json_['indexes'] as core.List)
                  .map((value) => GoogleFirestoreAdminV1Index.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexes != null) 'indexes': indexes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The request message for FirestoreAdmin.RestoreDatabase.
class GoogleFirestoreAdminV1RestoreDatabaseRequest {
  /// Backup to restore from.
  ///
  /// Must be from the same project as the parent. Format is:
  /// `projects/{project_id}/locations/{location}/backups/{backup}`
  core.String? backup;

  /// The ID to use for the database, which will become the final component of
  /// the database's resource name.
  ///
  /// This database id must not be associated with an existing database. This
  /// value should be 4-63 characters. Valid characters are /a-z-/ with first
  /// character a letter and the last a letter or a number. Must not be
  /// UUID-like /\[0-9a-f\]{8}(-\[0-9a-f\]{4}){3}-\[0-9a-f\]{12}/. "(default)"
  /// database id is also valid.
  ///
  /// Required.
  core.String? databaseId;

  /// Database snapshot to restore from.
  ///
  /// The source database must exist and have enabled PITR. The restored
  /// database will be created in the same location as the source database.
  GoogleFirestoreAdminV1DatabaseSnapshot? databaseSnapshot;

  GoogleFirestoreAdminV1RestoreDatabaseRequest({
    this.backup,
    this.databaseId,
    this.databaseSnapshot,
  });

  GoogleFirestoreAdminV1RestoreDatabaseRequest.fromJson(core.Map json_)
      : this(
          backup: json_.containsKey('backup')
              ? json_['backup'] as core.String
              : null,
          databaseId: json_.containsKey('databaseId')
              ? json_['databaseId'] as core.String
              : null,
          databaseSnapshot: json_.containsKey('databaseSnapshot')
              ? GoogleFirestoreAdminV1DatabaseSnapshot.fromJson(
                  json_['databaseSnapshot']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (databaseId != null) 'databaseId': databaseId!,
        if (databaseSnapshot != null) 'databaseSnapshot': databaseSnapshot!,
      };
}

/// Backup specific statistics.
class GoogleFirestoreAdminV1Stats {
  /// The total number of documents contained in the backup.
  ///
  /// Output only.
  core.String? documentCount;

  /// The total number of index entries contained in the backup.
  ///
  /// Output only.
  core.String? indexCount;

  /// Summation of the size of all documents and index entries in the backup,
  /// measured in bytes.
  ///
  /// Output only.
  core.String? sizeBytes;

  GoogleFirestoreAdminV1Stats({
    this.documentCount,
    this.indexCount,
    this.sizeBytes,
  });

  GoogleFirestoreAdminV1Stats.fromJson(core.Map json_)
      : this(
          documentCount: json_.containsKey('documentCount')
              ? json_['documentCount'] as core.String
              : null,
          indexCount: json_.containsKey('indexCount')
              ? json_['indexCount'] as core.String
              : null,
          sizeBytes: json_.containsKey('sizeBytes')
              ? json_['sizeBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentCount != null) 'documentCount': documentCount!,
        if (indexCount != null) 'indexCount': indexCount!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
      };
}

/// The TTL (time-to-live) configuration for documents that have this `Field`
/// set.
///
/// Storing a timestamp value into a TTL-enabled field will be treated as the
/// document's absolute expiration time. Timestamp values in the past indicate
/// that the document is eligible for immediate expiration. Using any other data
/// type or leaving the field absent will disable expiration for the individual
/// document.
class GoogleFirestoreAdminV1TtlConfig {
  /// The state of the TTL configuration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified or unknown.
  /// - "CREATING" : The TTL is being applied. There is an active long-running
  /// operation to track the change. Newly written documents will have TTLs
  /// applied as requested. Requested TTLs on existing documents are still being
  /// processed. When TTLs on all existing documents have been processed, the
  /// state will move to 'ACTIVE'.
  /// - "ACTIVE" : The TTL is active for all documents.
  /// - "NEEDS_REPAIR" : The TTL configuration could not be enabled for all
  /// existing documents. Newly written documents will continue to have their
  /// TTL applied. The LRO returned when last attempting to enable TTL for this
  /// `Field` has failed, and may have more details.
  core.String? state;

  GoogleFirestoreAdminV1TtlConfig({
    this.state,
  });

  GoogleFirestoreAdminV1TtlConfig.fromJson(core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
      };
}

/// The index configuration to support vector search operations
class GoogleFirestoreAdminV1VectorConfig {
  /// The vector dimension this configuration applies to.
  ///
  /// The resulting index will only include vectors of this dimension, and can
  /// be used for vector search with the same dimension.
  ///
  /// Required.
  core.int? dimension;

  /// Indicates the vector index is a flat index.
  GoogleFirestoreAdminV1FlatIndex? flat;

  GoogleFirestoreAdminV1VectorConfig({
    this.dimension,
    this.flat,
  });

  GoogleFirestoreAdminV1VectorConfig.fromJson(core.Map json_)
      : this(
          dimension: json_.containsKey('dimension')
              ? json_['dimension'] as core.int
              : null,
          flat: json_.containsKey('flat')
              ? GoogleFirestoreAdminV1FlatIndex.fromJson(
                  json_['flat'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dimension != null) 'dimension': dimension!,
        if (flat != null) 'flat': flat!,
      };
}

/// Represents a recurring schedule that runs on a specified day of the week.
///
/// The time zone is UTC.
class GoogleFirestoreAdminV1WeeklyRecurrence {
  /// The day of week to run.
  ///
  /// DAY_OF_WEEK_UNSPECIFIED is not allowed.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? day;

  GoogleFirestoreAdminV1WeeklyRecurrence({
    this.day,
  });

  GoogleFirestoreAdminV1WeeklyRecurrence.fromJson(core.Map json_)
      : this(
          day: json_.containsKey('day') ? json_['day'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
      };
}

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
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

  /// The normal, successful response of the operation.
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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
              ? json_['response'] as core.Map<core.String, core.dynamic>
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

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// The request for Firestore.ListCollectionIds.
class ListCollectionIdsRequest {
  /// The maximum number of results to return.
  core.int? pageSize;

  /// A page token.
  ///
  /// Must be a value from ListCollectionIdsResponse.
  core.String? pageToken;

  /// Reads documents as they were at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  ListCollectionIdsRequest({
    this.pageSize,
    this.pageToken,
    this.readTime,
  });

  ListCollectionIdsRequest.fromJson(core.Map json_)
      : this(
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (readTime != null) 'readTime': readTime!,
      };
}

/// The response from Firestore.ListCollectionIds.
class ListCollectionIdsResponse {
  /// The collection ids.
  core.List<core.String>? collectionIds;

  /// A page token that may be used to continue the list.
  core.String? nextPageToken;

  ListCollectionIdsResponse({
    this.collectionIds,
    this.nextPageToken,
  });

  ListCollectionIdsResponse.fromJson(core.Map json_)
      : this(
          collectionIds: json_.containsKey('collectionIds')
              ? (json_['collectionIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionIds != null) 'collectionIds': collectionIds!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for Firestore.ListDocuments.
class ListDocumentsResponse {
  /// The Documents found.
  core.List<Document>? documents;

  /// A token to retrieve the next page of documents.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDocumentsResponse({
    this.documents,
    this.nextPageToken,
  });

  ListDocumentsResponse.fromJson(core.Map json_)
      : this(
          documents: json_.containsKey('documents')
              ? (json_['documents'] as core.List)
                  .map((value) => Document.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// A map value.
class MapValue {
  /// The map's fields.
  ///
  /// The map keys represent field names. Field names matching the regular
  /// expression `__.*__` are reserved. Reserved field names are forbidden
  /// except in certain documented contexts. The map keys, represented as UTF-8,
  /// must not exceed 1,500 bytes and cannot be empty.
  core.Map<core.String, Value>? fields;

  MapValue({
    this.fields,
  });

  MapValue.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    Value.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// An order on a field.
class Order {
  /// The direction to order by.
  ///
  /// Defaults to `ASCENDING`.
  /// Possible string values are:
  /// - "DIRECTION_UNSPECIFIED" : Unspecified.
  /// - "ASCENDING" : Ascending.
  /// - "DESCENDING" : Descending.
  core.String? direction;

  /// The field to order by.
  FieldReference? field;

  Order({
    this.direction,
    this.field,
  });

  Order.fromJson(core.Map json_)
      : this(
          direction: json_.containsKey('direction')
              ? json_['direction'] as core.String
              : null,
          field: json_.containsKey('field')
              ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (direction != null) 'direction': direction!,
        if (field != null) 'field': field!,
      };
}

/// The request for Firestore.PartitionQuery.
class PartitionQueryRequest {
  /// The maximum number of partitions to return in this call, subject to
  /// `partition_count`.
  ///
  /// For example, if `partition_count` = 10 and `page_size` = 8, the first call
  /// to PartitionQuery will return up to 8 partitions and a `next_page_token`
  /// if more results exist. A second call to PartitionQuery will return up to 2
  /// partitions, to complete the total of 10 specified in `partition_count`.
  core.int? pageSize;

  /// The `next_page_token` value returned from a previous call to
  /// PartitionQuery that may be used to get an additional set of results.
  ///
  /// There are no ordering guarantees between sets of results. Thus, using
  /// multiple sets of results will require merging the different result sets.
  /// For example, two subsequent calls using a page_token may return: * cursor
  /// B, cursor M, cursor Q * cursor A, cursor U, cursor W To obtain a complete
  /// result set ordered with respect to the results of the query supplied to
  /// PartitionQuery, the results sets should be merged: cursor A, cursor B,
  /// cursor M, cursor Q, cursor U, cursor W
  core.String? pageToken;

  /// The desired maximum number of partition points.
  ///
  /// The partitions may be returned across multiple pages of results. The
  /// number must be positive. The actual number of partitions returned may be
  /// fewer. For example, this may be set to one fewer than the number of
  /// parallel queries to be run, or in running a data pipeline job, one fewer
  /// than the number of workers or compute instances available.
  core.String? partitionCount;

  /// Reads documents as they were at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// A structured query.
  ///
  /// Query must specify collection with all descendants and be ordered by name
  /// ascending. Other filters, order bys, limits, offsets, and start/end
  /// cursors are not supported.
  StructuredQuery? structuredQuery;

  PartitionQueryRequest({
    this.pageSize,
    this.pageToken,
    this.partitionCount,
    this.readTime,
    this.structuredQuery,
  });

  PartitionQueryRequest.fromJson(core.Map json_)
      : this(
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          partitionCount: json_.containsKey('partitionCount')
              ? json_['partitionCount'] as core.String
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          structuredQuery: json_.containsKey('structuredQuery')
              ? StructuredQuery.fromJson(json_['structuredQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (partitionCount != null) 'partitionCount': partitionCount!,
        if (readTime != null) 'readTime': readTime!,
        if (structuredQuery != null) 'structuredQuery': structuredQuery!,
      };
}

/// The response for Firestore.PartitionQuery.
class PartitionQueryResponse {
  /// A page token that may be used to request an additional set of results, up
  /// to the number specified by `partition_count` in the PartitionQuery
  /// request.
  ///
  /// If blank, there are no more results.
  core.String? nextPageToken;

  /// Partition results.
  ///
  /// Each partition is a split point that can be used by RunQuery as a starting
  /// or end point for the query results. The RunQuery requests must be made
  /// with the same query supplied to this PartitionQuery request. The partition
  /// cursors will be ordered according to same ordering as the results of the
  /// query supplied to PartitionQuery. For example, if a PartitionQuery request
  /// returns partition cursors A and B, running the following three queries
  /// will return the entire result set of the original query: * query, end_at A
  /// * query, start_at A, end_at B * query, start_at B An empty result may
  /// indicate that the query has too few results to be partitioned, or that the
  /// query is not yet supported for partitioning.
  core.List<Cursor>? partitions;

  PartitionQueryResponse({
    this.nextPageToken,
    this.partitions,
  });

  PartitionQueryResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          partitions: json_.containsKey('partitions')
              ? (json_['partitions'] as core.List)
                  .map((value) => Cursor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (partitions != null) 'partitions': partitions!,
      };
}

/// Planning phase information for the query.
typedef PlanSummary = $PlanSummary;

/// A precondition on a document, used for conditional operations.
class Precondition {
  /// When set to `true`, the target document must exist.
  ///
  /// When set to `false`, the target document must not exist.
  core.bool? exists;

  /// When set, the target document must exist and have been last updated at
  /// that time.
  ///
  /// Timestamp must be microsecond aligned.
  core.String? updateTime;

  Precondition({
    this.exists,
    this.updateTime,
  });

  Precondition.fromJson(core.Map json_)
      : this(
          exists:
              json_.containsKey('exists') ? json_['exists'] as core.bool : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exists != null) 'exists': exists!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The projection of document's fields to return.
class Projection {
  /// The fields to return.
  ///
  /// If empty, all fields are returned. To only return the name of the
  /// document, use `['__name__']`.
  core.List<FieldReference>? fields;

  Projection({
    this.fields,
  });

  Projection.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => FieldReference.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// Options for a transaction that can only be used to read documents.
class ReadOnly {
  /// Reads documents at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  ReadOnly({
    this.readTime,
  });

  ReadOnly.fromJson(core.Map json_)
      : this(
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readTime != null) 'readTime': readTime!,
      };
}

/// Options for a transaction that can be used to read and write documents.
///
/// Firestore does not allow 3rd party auth requests to create read-write.
/// transactions.
class ReadWrite {
  /// An optional transaction to retry.
  core.String? retryTransaction;
  core.List<core.int> get retryTransactionAsBytes =>
      convert.base64.decode(retryTransaction!);

  set retryTransactionAsBytes(core.List<core.int> bytes_) {
    retryTransaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  ReadWrite({
    this.retryTransaction,
  });

  ReadWrite.fromJson(core.Map json_)
      : this(
          retryTransaction: json_.containsKey('retryTransaction')
              ? json_['retryTransaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (retryTransaction != null) 'retryTransaction': retryTransaction!,
      };
}

/// The request for Firestore.Rollback.
class RollbackRequest {
  /// The transaction to roll back.
  ///
  /// Required.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  RollbackRequest({
    this.transaction,
  });

  RollbackRequest.fromJson(core.Map json_)
      : this(
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The request for Firestore.RunAggregationQuery.
class RunAggregationQueryRequest {
  /// Explain options for the query.
  ///
  /// If set, additional query statistics will be returned. If not, only query
  /// results will be returned.
  ///
  /// Optional.
  ExplainOptions? explainOptions;

  /// Starts a new transaction as part of the query, defaulting to read-only.
  ///
  /// The new transaction ID will be returned as the first response in the
  /// stream.
  TransactionOptions? newTransaction;

  /// Executes the query at the given timestamp.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// An aggregation query.
  StructuredAggregationQuery? structuredAggregationQuery;

  /// Run the aggregation within an already active transaction.
  ///
  /// The value here is the opaque transaction ID to execute the query in.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  RunAggregationQueryRequest({
    this.explainOptions,
    this.newTransaction,
    this.readTime,
    this.structuredAggregationQuery,
    this.transaction,
  });

  RunAggregationQueryRequest.fromJson(core.Map json_)
      : this(
          explainOptions: json_.containsKey('explainOptions')
              ? ExplainOptions.fromJson(json_['explainOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          newTransaction: json_.containsKey('newTransaction')
              ? TransactionOptions.fromJson(json_['newTransaction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          structuredAggregationQuery:
              json_.containsKey('structuredAggregationQuery')
                  ? StructuredAggregationQuery.fromJson(
                      json_['structuredAggregationQuery']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (explainOptions != null) 'explainOptions': explainOptions!,
        if (newTransaction != null) 'newTransaction': newTransaction!,
        if (readTime != null) 'readTime': readTime!,
        if (structuredAggregationQuery != null)
          'structuredAggregationQuery': structuredAggregationQuery!,
        if (transaction != null) 'transaction': transaction!,
      };
}

class RunAggregationQueryResponseElement {
  /// Query explain metrics.
  ///
  /// This is only present when the RunAggregationQueryRequest.explain_options
  /// is provided, and it is sent only once with the last response in the
  /// stream.
  ExplainMetrics? explainMetrics;

  /// The time at which the aggregate result was computed.
  ///
  /// This is always monotonically increasing; in this case, the previous
  /// AggregationResult in the result stream are guaranteed not to have changed
  /// between their `read_time` and this one. If the query returns no results, a
  /// response with `read_time` and no `result` will be sent, and this
  /// represents the time at which the query was run.
  core.String? readTime;

  /// A single aggregation result.
  ///
  /// Not present when reporting partial progress.
  AggregationResult? result;

  /// The transaction that was started as part of this request.
  ///
  /// Only present on the first response when the request requested to start a
  /// new transaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  RunAggregationQueryResponseElement({
    this.explainMetrics,
    this.readTime,
    this.result,
    this.transaction,
  });

  RunAggregationQueryResponseElement.fromJson(core.Map json_)
      : this(
          explainMetrics: json_.containsKey('explainMetrics')
              ? ExplainMetrics.fromJson(json_['explainMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          result: json_.containsKey('result')
              ? AggregationResult.fromJson(
                  json_['result'] as core.Map<core.String, core.dynamic>)
              : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (explainMetrics != null) 'explainMetrics': explainMetrics!,
        if (readTime != null) 'readTime': readTime!,
        if (result != null) 'result': result!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The response for Firestore.RunAggregationQuery.
typedef RunAggregationQueryResponse
    = core.List<RunAggregationQueryResponseElement>;

/// The request for Firestore.RunQuery.
class RunQueryRequest {
  /// Explain options for the query.
  ///
  /// If set, additional query statistics will be returned. If not, only query
  /// results will be returned.
  ///
  /// Optional.
  ExplainOptions? explainOptions;

  /// Starts a new transaction and reads the documents.
  ///
  /// Defaults to a read-only transaction. The new transaction ID will be
  /// returned as the first response in the stream.
  TransactionOptions? newTransaction;

  /// Reads documents as they were at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// A structured query.
  StructuredQuery? structuredQuery;

  /// Run the query within an already active transaction.
  ///
  /// The value here is the opaque transaction ID to execute the query in.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  RunQueryRequest({
    this.explainOptions,
    this.newTransaction,
    this.readTime,
    this.structuredQuery,
    this.transaction,
  });

  RunQueryRequest.fromJson(core.Map json_)
      : this(
          explainOptions: json_.containsKey('explainOptions')
              ? ExplainOptions.fromJson(json_['explainOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          newTransaction: json_.containsKey('newTransaction')
              ? TransactionOptions.fromJson(json_['newTransaction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          structuredQuery: json_.containsKey('structuredQuery')
              ? StructuredQuery.fromJson(json_['structuredQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (explainOptions != null) 'explainOptions': explainOptions!,
        if (newTransaction != null) 'newTransaction': newTransaction!,
        if (readTime != null) 'readTime': readTime!,
        if (structuredQuery != null) 'structuredQuery': structuredQuery!,
        if (transaction != null) 'transaction': transaction!,
      };
}

class RunQueryResponseElement {
  /// A query result, not set when reporting partial progress.
  Document? document;

  /// If present, Firestore has completely finished the request and no more
  /// documents will be returned.
  core.bool? done;

  /// Query explain metrics.
  ///
  /// This is only present when the RunQueryRequest.explain_options is provided,
  /// and it is sent only once with the last response in the stream.
  ExplainMetrics? explainMetrics;

  /// The time at which the document was read.
  ///
  /// This may be monotonically increasing; in this case, the previous documents
  /// in the result stream are guaranteed not to have changed between their
  /// `read_time` and this one. If the query returns no results, a response with
  /// `read_time` and no `document` will be sent, and this represents the time
  /// at which the query was run.
  core.String? readTime;

  /// The number of results that have been skipped due to an offset between the
  /// last response and the current response.
  core.int? skippedResults;

  /// The transaction that was started as part of this request.
  ///
  /// Can only be set in the first response, and only if
  /// RunQueryRequest.new_transaction was set in the request. If set, no other
  /// fields will be set in this response.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  RunQueryResponseElement({
    this.document,
    this.done,
    this.explainMetrics,
    this.readTime,
    this.skippedResults,
    this.transaction,
  });

  RunQueryResponseElement.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          explainMetrics: json_.containsKey('explainMetrics')
              ? ExplainMetrics.fromJson(json_['explainMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          skippedResults: json_.containsKey('skippedResults')
              ? json_['skippedResults'] as core.int
              : null,
          transaction: json_.containsKey('transaction')
              ? json_['transaction'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (done != null) 'done': done!,
        if (explainMetrics != null) 'explainMetrics': explainMetrics!,
        if (readTime != null) 'readTime': readTime!,
        if (skippedResults != null) 'skippedResults': skippedResults!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The response for Firestore.RunQuery.
typedef RunQueryResponse = core.List<RunQueryResponseElement>;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Firestore query for running an aggregation over a StructuredQuery.
class StructuredAggregationQuery {
  /// Series of aggregations to apply over the results of the
  /// `structured_query`.
  ///
  /// Requires: * A minimum of one and maximum of five aggregations per query.
  ///
  /// Optional.
  core.List<Aggregation>? aggregations;

  /// Nested structured query.
  StructuredQuery? structuredQuery;

  StructuredAggregationQuery({
    this.aggregations,
    this.structuredQuery,
  });

  StructuredAggregationQuery.fromJson(core.Map json_)
      : this(
          aggregations: json_.containsKey('aggregations')
              ? (json_['aggregations'] as core.List)
                  .map((value) => Aggregation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          structuredQuery: json_.containsKey('structuredQuery')
              ? StructuredQuery.fromJson(json_['structuredQuery']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregations != null) 'aggregations': aggregations!,
        if (structuredQuery != null) 'structuredQuery': structuredQuery!,
      };
}

/// A Firestore query.
///
/// The query stages are executed in the following order: 1. from 2. where 3.
/// select 4. order_by + start_at + end_at 5. offset 6. limit
class StructuredQuery {
  /// A potential prefix of a position in the result set to end the query at.
  ///
  /// This is similar to `START_AT` but with it controlling the end position
  /// rather than the start position. Requires: * The number of values cannot be
  /// greater than the number of fields specified in the `ORDER BY` clause.
  Cursor? endAt;

  /// A potential Nearest Neighbors Search.
  ///
  /// Applies after all other filters and ordering. Finds the closest vector
  /// embeddings to the given query vector.
  ///
  /// Optional.
  FindNearest? findNearest;

  /// The collections to query.
  core.List<CollectionSelector>? from;

  /// The maximum number of results to return.
  ///
  /// Applies after all other constraints. Requires: * The value must be greater
  /// than or equal to zero if specified.
  core.int? limit;

  /// The number of documents to skip before returning the first result.
  ///
  /// This applies after the constraints specified by the `WHERE`, `START AT`, &
  /// `END AT` but before the `LIMIT` clause. Requires: * The value must be
  /// greater than or equal to zero if specified.
  core.int? offset;

  /// The order to apply to the query results.
  ///
  /// Firestore allows callers to provide a full ordering, a partial ordering,
  /// or no ordering at all. In all cases, Firestore guarantees a stable
  /// ordering through the following rules: * The `order_by` is required to
  /// reference all fields used with an inequality filter. * All fields that are
  /// required to be in the `order_by` but are not already present are appended
  /// in lexicographical ordering of the field name. * If an order on `__name__`
  /// is not specified, it is appended by default. Fields are appended with the
  /// same sort direction as the last order specified, or 'ASCENDING' if no
  /// order was specified. For example: * `ORDER BY a` becomes `ORDER BY a ASC,
  /// __name__ ASC` * `ORDER BY a DESC` becomes `ORDER BY a DESC, __name__ DESC`
  /// * `WHERE a > 1` becomes `WHERE a > 1 ORDER BY a ASC, __name__ ASC` *
  /// `WHERE __name__ > ... AND a > 1` becomes `WHERE __name__ > ... AND a > 1
  /// ORDER BY a ASC, __name__ ASC`
  core.List<Order>? orderBy;

  /// Optional sub-set of the fields to return.
  ///
  /// This acts as a DocumentMask over the documents returned from a query. When
  /// not set, assumes that the caller wants all fields returned.
  Projection? select;

  /// A potential prefix of a position in the result set to start the query at.
  ///
  /// The ordering of the result set is based on the `ORDER BY` clause of the
  /// original query. ``` SELECT * FROM k WHERE a = 1 AND b > 2 ORDER BY b ASC,
  /// __name__ ASC; ``` This query's results are ordered by `(b ASC, __name__
  /// ASC)`. Cursors can reference either the full ordering or a prefix of the
  /// location, though it cannot reference more fields than what are in the
  /// provided `ORDER BY`. Continuing off the example above, attaching the
  /// following start cursors will have varying impact: - `START BEFORE (2,
  /// /k/123)`: start the query right before `a = 1 AND b > 2 AND __name__ >
  /// /k/123`. - `START AFTER (10)`: start the query right after `a = 1 AND b >
  /// 10`. Unlike `OFFSET` which requires scanning over the first N results to
  /// skip, a start cursor allows the query to begin at a logical position. This
  /// position is not required to match an actual result, it will scan forward
  /// from this position to find the next document. Requires: * The number of
  /// values cannot be greater than the number of fields specified in the `ORDER
  /// BY` clause.
  Cursor? startAt;

  /// The filter to apply.
  Filter? where;

  StructuredQuery({
    this.endAt,
    this.findNearest,
    this.from,
    this.limit,
    this.offset,
    this.orderBy,
    this.select,
    this.startAt,
    this.where,
  });

  StructuredQuery.fromJson(core.Map json_)
      : this(
          endAt: json_.containsKey('endAt')
              ? Cursor.fromJson(
                  json_['endAt'] as core.Map<core.String, core.dynamic>)
              : null,
          findNearest: json_.containsKey('findNearest')
              ? FindNearest.fromJson(
                  json_['findNearest'] as core.Map<core.String, core.dynamic>)
              : null,
          from: json_.containsKey('from')
              ? (json_['from'] as core.List)
                  .map((value) => CollectionSelector.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          limit: json_.containsKey('limit') ? json_['limit'] as core.int : null,
          offset:
              json_.containsKey('offset') ? json_['offset'] as core.int : null,
          orderBy: json_.containsKey('orderBy')
              ? (json_['orderBy'] as core.List)
                  .map((value) => Order.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          select: json_.containsKey('select')
              ? Projection.fromJson(
                  json_['select'] as core.Map<core.String, core.dynamic>)
              : null,
          startAt: json_.containsKey('startAt')
              ? Cursor.fromJson(
                  json_['startAt'] as core.Map<core.String, core.dynamic>)
              : null,
          where: json_.containsKey('where')
              ? Filter.fromJson(
                  json_['where'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endAt != null) 'endAt': endAt!,
        if (findNearest != null) 'findNearest': findNearest!,
        if (from != null) 'from': from!,
        if (limit != null) 'limit': limit!,
        if (offset != null) 'offset': offset!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (select != null) 'select': select!,
        if (startAt != null) 'startAt': startAt!,
        if (where != null) 'where': where!,
      };
}

/// Sum of the values of the requested field.
///
/// * Only numeric values will be aggregated. All non-numeric values including
/// `NULL` are skipped. * If the aggregated values contain `NaN`, returns `NaN`.
/// Infinity math follows IEEE-754 standards. * If the aggregated value set is
/// empty, returns 0. * Returns a 64-bit integer if all aggregated numbers are
/// integers and the sum result does not overflow. Otherwise, the result is
/// returned as a double. Note that even if all the aggregated values are
/// integers, the result is returned as a double if it cannot fit within a
/// 64-bit signed integer. When this occurs, the returned value will lose
/// precision. * When underflow occurs, floating-point aggregation is
/// non-deterministic. This means that running the same query repeatedly without
/// any changes to the underlying values could produce slightly different
/// results each time. In those cases, values should be stored as integers over
/// floating-point numbers.
class Sum {
  /// The field to aggregate on.
  FieldReference? field;

  Sum({
    this.field,
  });

  Sum.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
      };
}

/// Options for creating a new transaction.
class TransactionOptions {
  /// The transaction can only be used for read operations.
  ReadOnly? readOnly;

  /// The transaction can be used for both read and write operations.
  ReadWrite? readWrite;

  TransactionOptions({
    this.readOnly,
    this.readWrite,
  });

  TransactionOptions.fromJson(core.Map json_)
      : this(
          readOnly: json_.containsKey('readOnly')
              ? ReadOnly.fromJson(
                  json_['readOnly'] as core.Map<core.String, core.dynamic>)
              : null,
          readWrite: json_.containsKey('readWrite')
              ? ReadWrite.fromJson(
                  json_['readWrite'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (readOnly != null) 'readOnly': readOnly!,
        if (readWrite != null) 'readWrite': readWrite!,
      };
}

/// A filter with a single operand.
class UnaryFilter {
  /// The field to which to apply the operator.
  FieldReference? field;

  /// The unary operator to apply.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Unspecified. This value must not be used.
  /// - "IS_NAN" : The given `field` is equal to `NaN`.
  /// - "IS_NULL" : The given `field` is equal to `NULL`.
  /// - "IS_NOT_NAN" : The given `field` is not equal to `NaN`. Requires: * No
  /// other `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That
  /// `field` comes first in the `order_by`.
  /// - "IS_NOT_NULL" : The given `field` is not equal to `NULL`. Requires: * A
  /// single `NOT_EQUAL`, `NOT_IN`, `IS_NOT_NULL`, or `IS_NOT_NAN`. * That
  /// `field` comes first in the `order_by`.
  core.String? op;

  UnaryFilter({
    this.field,
    this.op,
  });

  UnaryFilter.fromJson(core.Map json_)
      : this(
          field: json_.containsKey('field')
              ? FieldReference.fromJson(
                  json_['field'] as core.Map<core.String, core.dynamic>)
              : null,
          op: json_.containsKey('op') ? json_['op'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (field != null) 'field': field!,
        if (op != null) 'op': op!,
      };
}

/// A message that can hold any of the supported value types.
class Value {
  /// An array value.
  ///
  /// Cannot directly contain another array value, though can contain an map
  /// which contains another array.
  ArrayValue? arrayValue;

  /// A boolean value.
  core.bool? booleanValue;

  /// A bytes value.
  ///
  /// Must not exceed 1 MiB - 89 bytes. Only the first 1,500 bytes are
  /// considered by queries.
  core.String? bytesValue;
  core.List<core.int> get bytesValueAsBytes =>
      convert.base64.decode(bytesValue!);

  set bytesValueAsBytes(core.List<core.int> bytes_) {
    bytesValue =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A double value.
  core.double? doubleValue;

  /// A geo point value representing a point on the surface of Earth.
  LatLng? geoPointValue;

  /// An integer value.
  core.String? integerValue;

  /// A map value.
  MapValue? mapValue;

  /// A null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String? nullValue;

  /// A reference to a document.
  ///
  /// For example:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? referenceValue;

  /// A string value.
  ///
  /// The string, represented as UTF-8, must not exceed 1 MiB - 89 bytes. Only
  /// the first 1,500 bytes of the UTF-8 representation are considered by
  /// queries.
  core.String? stringValue;

  /// A timestamp value.
  ///
  /// Precise only to microseconds. When stored, any additional precision is
  /// rounded down.
  core.String? timestampValue;

  Value({
    this.arrayValue,
    this.booleanValue,
    this.bytesValue,
    this.doubleValue,
    this.geoPointValue,
    this.integerValue,
    this.mapValue,
    this.nullValue,
    this.referenceValue,
    this.stringValue,
    this.timestampValue,
  });

  Value.fromJson(core.Map json_)
      : this(
          arrayValue: json_.containsKey('arrayValue')
              ? ArrayValue.fromJson(
                  json_['arrayValue'] as core.Map<core.String, core.dynamic>)
              : null,
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          bytesValue: json_.containsKey('bytesValue')
              ? json_['bytesValue'] as core.String
              : null,
          doubleValue: json_.containsKey('doubleValue')
              ? (json_['doubleValue'] as core.num).toDouble()
              : null,
          geoPointValue: json_.containsKey('geoPointValue')
              ? LatLng.fromJson(
                  json_['geoPointValue'] as core.Map<core.String, core.dynamic>)
              : null,
          integerValue: json_.containsKey('integerValue')
              ? json_['integerValue'] as core.String
              : null,
          mapValue: json_.containsKey('mapValue')
              ? MapValue.fromJson(
                  json_['mapValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nullValue: json_.containsKey('nullValue') ? 'NULL_VALUE' : null,
          referenceValue: json_.containsKey('referenceValue')
              ? json_['referenceValue'] as core.String
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
          timestampValue: json_.containsKey('timestampValue')
              ? json_['timestampValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayValue != null) 'arrayValue': arrayValue!,
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (bytesValue != null) 'bytesValue': bytesValue!,
        if (doubleValue != null) 'doubleValue': doubleValue!,
        if (geoPointValue != null) 'geoPointValue': geoPointValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (mapValue != null) 'mapValue': mapValue!,
        if (nullValue != null) 'nullValue': nullValue!,
        if (referenceValue != null) 'referenceValue': referenceValue!,
        if (stringValue != null) 'stringValue': stringValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
      };
}

/// A write on a document.
class Write {
  /// An optional precondition on the document.
  ///
  /// The write will fail if this is set and not met by the target document.
  Precondition? currentDocument;

  /// A document name to delete.
  ///
  /// In the format:
  /// `projects/{project_id}/databases/{database_id}/documents/{document_path}`.
  core.String? delete;

  /// Applies a transformation to a document.
  DocumentTransform? transform;

  /// A document to write.
  Document? update;

  /// The fields to update in this write.
  ///
  /// This field can be set only when the operation is `update`. If the mask is
  /// not set for an `update` and the document exists, any existing data will be
  /// overwritten. If the mask is set and the document on the server has fields
  /// not covered by the mask, they are left unchanged. Fields referenced in the
  /// mask, but not present in the input document, are deleted from the document
  /// on the server. The field paths in this mask must not contain a reserved
  /// field name.
  DocumentMask? updateMask;

  /// The transforms to perform after update.
  ///
  /// This field can be set only when the operation is `update`. If present,
  /// this write is equivalent to performing `update` and `transform` to the
  /// same document atomically and in order.
  core.List<FieldTransform>? updateTransforms;

  Write({
    this.currentDocument,
    this.delete,
    this.transform,
    this.update,
    this.updateMask,
    this.updateTransforms,
  });

  Write.fromJson(core.Map json_)
      : this(
          currentDocument: json_.containsKey('currentDocument')
              ? Precondition.fromJson(json_['currentDocument']
                  as core.Map<core.String, core.dynamic>)
              : null,
          delete: json_.containsKey('delete')
              ? json_['delete'] as core.String
              : null,
          transform: json_.containsKey('transform')
              ? DocumentTransform.fromJson(
                  json_['transform'] as core.Map<core.String, core.dynamic>)
              : null,
          update: json_.containsKey('update')
              ? Document.fromJson(
                  json_['update'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? DocumentMask.fromJson(
                  json_['updateMask'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTransforms: json_.containsKey('updateTransforms')
              ? (json_['updateTransforms'] as core.List)
                  .map((value) => FieldTransform.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentDocument != null) 'currentDocument': currentDocument!,
        if (delete != null) 'delete': delete!,
        if (transform != null) 'transform': transform!,
        if (update != null) 'update': update!,
        if (updateMask != null) 'updateMask': updateMask!,
        if (updateTransforms != null) 'updateTransforms': updateTransforms!,
      };
}

/// The request for Firestore.Write.
///
/// The first request creates a stream, or resumes an existing one from a token.
/// When creating a new stream, the server replies with a response containing
/// only an ID and a token, to use in the next request. When resuming a stream,
/// the server first streams any responses later than the given token, then a
/// response containing only an up-to-date token, to use in the next request.
class WriteRequest {
  /// Labels associated with this write request.
  core.Map<core.String, core.String>? labels;

  /// The ID of the write stream to resume.
  ///
  /// This may only be set in the first message. When left empty, a new write
  /// stream will be created.
  core.String? streamId;

  /// A stream token that was previously sent by the server.
  ///
  /// The client should set this field to the token from the most recent
  /// WriteResponse it has received. This acknowledges that the client has
  /// received responses up to this token. After sending this token, earlier
  /// tokens may not be used anymore. The server may close the stream if there
  /// are too many unacknowledged responses. Leave this field unset when
  /// creating a new stream. To resume a stream at a specific point, set this
  /// field and the `stream_id` field. Leave this field unset when creating a
  /// new stream.
  core.String? streamToken;
  core.List<core.int> get streamTokenAsBytes =>
      convert.base64.decode(streamToken!);

  set streamTokenAsBytes(core.List<core.int> bytes_) {
    streamToken =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order. This must be empty on the first
  /// request. This may be empty on the last request. This must not be empty on
  /// all other requests.
  core.List<Write>? writes;

  WriteRequest({
    this.labels,
    this.streamId,
    this.streamToken,
    this.writes,
  });

  WriteRequest.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          streamId: json_.containsKey('streamId')
              ? json_['streamId'] as core.String
              : null,
          streamToken: json_.containsKey('streamToken')
              ? json_['streamToken'] as core.String
              : null,
          writes: json_.containsKey('writes')
              ? (json_['writes'] as core.List)
                  .map((value) => Write.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (streamId != null) 'streamId': streamId!,
        if (streamToken != null) 'streamToken': streamToken!,
        if (writes != null) 'writes': writes!,
      };
}

/// The response for Firestore.Write.
class WriteResponse {
  /// The time at which the commit occurred.
  ///
  /// Any read with an equal or greater `read_time` is guaranteed to see the
  /// effects of the write.
  core.String? commitTime;

  /// The ID of the stream.
  ///
  /// Only set on the first message, when a new stream was created.
  core.String? streamId;

  /// A token that represents the position of this response in the stream.
  ///
  /// This can be used by a client to resume the stream at this point. This
  /// field is always set.
  core.String? streamToken;
  core.List<core.int> get streamTokenAsBytes =>
      convert.base64.decode(streamToken!);

  set streamTokenAsBytes(core.List<core.int> bytes_) {
    streamToken =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The result of applying the writes.
  ///
  /// This i-th write result corresponds to the i-th write in the request.
  core.List<WriteResult>? writeResults;

  WriteResponse({
    this.commitTime,
    this.streamId,
    this.streamToken,
    this.writeResults,
  });

  WriteResponse.fromJson(core.Map json_)
      : this(
          commitTime: json_.containsKey('commitTime')
              ? json_['commitTime'] as core.String
              : null,
          streamId: json_.containsKey('streamId')
              ? json_['streamId'] as core.String
              : null,
          streamToken: json_.containsKey('streamToken')
              ? json_['streamToken'] as core.String
              : null,
          writeResults: json_.containsKey('writeResults')
              ? (json_['writeResults'] as core.List)
                  .map((value) => WriteResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitTime != null) 'commitTime': commitTime!,
        if (streamId != null) 'streamId': streamId!,
        if (streamToken != null) 'streamToken': streamToken!,
        if (writeResults != null) 'writeResults': writeResults!,
      };
}

/// The result of applying a write.
class WriteResult {
  /// The results of applying each DocumentTransform.FieldTransform, in the same
  /// order.
  core.List<Value>? transformResults;

  /// The last update time of the document after applying the write.
  ///
  /// Not set after a `delete`. If the write did not actually change the
  /// document, this will be the previous update_time.
  core.String? updateTime;

  WriteResult({
    this.transformResults,
    this.updateTime,
  });

  WriteResult.fromJson(core.Map json_)
      : this(
          transformResults: json_.containsKey('transformResults')
              ? (json_['transformResults'] as core.List)
                  .map((value) => Value.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transformResults != null) 'transformResults': transformResults!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}
