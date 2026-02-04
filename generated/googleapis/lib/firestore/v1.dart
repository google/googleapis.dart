// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
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
///     - [ProjectsDatabasesUserCredsResource]
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

  FirestoreApi(
    http.Client client, {
    core.String rootUrl = 'https://firestore.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
  ProjectsDatabasesUserCredsResource get userCreds =>
      ProjectsDatabasesUserCredsResource(_requester);

  ProjectsDatabasesResource(commons.ApiRequester client) : _requester = client;

  /// Bulk deletes a subset of documents from Google Cloud Firestore.
  ///
  /// Documents created or updated after the underlying system starts to process
  /// the request will not be deleted. The bulk delete occurs in the background
  /// and its progress can be monitored and managed via the Operation resource
  /// that is created. For more details on bulk delete behavior, refer to:
  /// https://cloud.google.com/firestore/docs/manage-data/bulk-delete
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Database to operate. Should be of the form:
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
  async.Future<GoogleLongrunningOperation> bulkDeleteDocuments(
    GoogleFirestoreAdminV1BulkDeleteDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':bulkDeleteDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a new database by cloning an existing one.
  ///
  /// The new database must be in the same cloud region or multi-region location
  /// as the existing database. This behaves similar to
  /// FirestoreAdmin.CreateDatabase except instead of creating a new empty
  /// database, a new database is created with the database type, index
  /// configuration, and documents from an existing database. The long-running
  /// operation can be used to track the progress of the clone, with the
  /// Operation's metadata field type being the CloneDatabaseMetadata. The
  /// response type is the Database if the clone was successful. The new
  /// database is not readable or writeable until the LRO has completed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project to clone the database in. Format is
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
  async.Future<GoogleLongrunningOperation> clone(
    GoogleFirestoreAdminV1CloneDatabaseRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases:clone';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

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
  /// /\[0-9a-f\]{8}(-\[0-9a-f\]{4}){3}-\[0-9a-f\]{12}/. "(default)" database ID
  /// is also valid if the database is Standard edition.
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
      'databaseId': ?databaseId == null ? null : [databaseId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'etag': ?etag == null ? null : [etag],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':exportDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1Database.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':importDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all the databases in the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form `projects/{project_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [showDeleted] - If true, also returns deleted resources.
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
    core.bool? showDeleted,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'showDeleted': ?showDeleted == null ? null : ['${showDeleted}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListDatabasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases:restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsDatabasesBackupSchedulesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesBackupSchedulesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a backup schedule on a database.
  ///
  /// At most two backup schedules can be configured on a database, one daily
  /// backup schedule and one weekly backup schedule.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupSchedules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1BackupSchedule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1BackupSchedule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupSchedules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListBackupSchedulesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1BackupSchedule.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1Field.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// with a filter that includes `indexConfig.usesAncestorConfig:false` or
  /// `ttlConfig:*`.
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
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/fields';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListFieldsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [name] - Required. A field name of the form:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  /// A field path can be a simple field name, e.g. `address` or a path to
  /// fields within `map_value` , e.g. `address.city`, or a special field path.
  /// The only valid special field is `*`, which represents any field. Field
  /// paths can be quoted using `` ` `` (backtick). The only character that must
  /// be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that must be
  /// quoted include: `*`, `.`, `` ` `` (backtick), `[`, `]`, as well as any
  /// ascii symbolic characters. Examples: `` `address.city` `` represents a
  /// field named `address.city`, not the map key `city` in the field `address`.
  /// `` `*` `` represents a field named `*`, not any field. A special `Field`
  /// contains the default indexing settings for all fields. This field's
  /// resource name is:
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
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1Index.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListIndexesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
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
        .map(
          (value) => BatchGetDocumentsResponseElement.fromJson(
            value as core.Map<core.String, core.dynamic>,
          ),
        )
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
      'fields': ?$fields == null ? null : [$fields],
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
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$database') +
        '/documents:beginTransaction';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BeginTransactionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$database') + '/documents:commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CommitResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'documentId': ?documentId == null ? null : [documentId],
      'mask.fieldPaths': ?mask_fieldPaths,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
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
      'currentDocument.exists': ?currentDocument_exists == null
          ? null
          : ['${currentDocument_exists}'],
      'currentDocument.updateTime': ?currentDocument_updateTime == null
          ? null
          : [currentDocument_updateTime],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Executes a pipeline query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. Database identifier, in the form
  /// `projects/{project}/databases/{database}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecutePipelineResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecutePipelineResponse> executePipeline(
    ExecutePipelineRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$database') + '/documents:executePipeline';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExecutePipelineResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'mask.fieldPaths': ?mask_fieldPaths,
      'readTime': ?readTime == null ? null : [readTime],
      'transaction': ?transaction == null ? null : [transaction],
      'fields': ?$fields == null ? null : [$fields],
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
      'mask.fieldPaths': ?mask_fieldPaths,
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readTime': ?readTime == null ? null : [readTime],
      'showMissing': ?showMissing == null ? null : ['${showMissing}'],
      'transaction': ?transaction == null ? null : [transaction],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':listCollectionIds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListCollectionIdsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'mask.fieldPaths': ?mask_fieldPaths,
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'readTime': ?readTime == null ? null : [readTime],
      'showMissing': ?showMissing == null ? null : ['${showMissing}'],
      'transaction': ?transaction == null ? null : [transaction],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/' +
        commons.escapeVariable('$collectionId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':partitionQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return PartitionQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      'currentDocument.exists': ?currentDocument_exists == null
          ? null
          : ['${currentDocument_exists}'],
      'currentDocument.updateTime': ?currentDocument_updateTime == null
          ? null
          : [currentDocument_updateTime],
      'mask.fieldPaths': ?mask_fieldPaths,
      'updateMask.fieldPaths': ?updateMask_fieldPaths,
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
        .map(
          (value) => RunAggregationQueryResponseElement.fromJson(
            value as core.Map<core.String, core.dynamic>,
          ),
        )
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + ':runQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return (response_ as core.List)
        .map(
          (value) => RunQueryResponseElement.fromJson(
            value as core.Map<core.String, core.dynamic>,
          ),
        )
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$database') + '/documents:write';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return WriteResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
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
      'fields': ?$fields == null ? null : [$fields],
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsDatabasesUserCredsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesUserCredsResource(commons.ApiRequester client)
    : _requester = client;

  /// Create a user creds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent name of the form
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [userCredsId] - Required. The ID to use for the user creds, which will
  /// become the final component of the user creds's resource name. This value
  /// should be 4-63 characters. Valid characters are /a-z-/ with first
  /// character a letter and the last a letter or a number. Must not be
  /// UUID-like /\[0-9a-f\]{8}(-\[0-9a-f\]{4}){3}-\[0-9a-f\]{12}/.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1UserCreds].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1UserCreds> create(
    GoogleFirestoreAdminV1UserCreds request,
    core.String parent, {
    core.String? userCredsId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'userCredsId': ?userCredsId == null ? null : [userCredsId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userCreds';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1UserCreds.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a user creds.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/userCreds/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Disables a user creds.
  ///
  /// No-op if the user creds are already disabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/userCreds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1UserCreds].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1UserCreds> disable(
    GoogleFirestoreAdminV1DisableUserCredsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1UserCreds.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Enables a user creds.
  ///
  /// No-op if the user creds are already enabled.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/userCreds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1UserCreds].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1UserCreds> enable(
    GoogleFirestoreAdminV1EnableUserCredsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1UserCreds.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a user creds resource.
  ///
  /// Note that the returned resource does not contain the secret value itself.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/userCreds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1UserCreds].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1UserCreds> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1UserCreds.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List all user creds in the database.
  ///
  /// Note that the returned resource does not contain the secret value itself.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. A parent database name of the form
  /// `projects/{project_id}/databases/{database_id}`
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1ListUserCredsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1ListUserCredsResponse> list(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/userCreds';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListUserCredsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Resets the password of a user creds.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A name of the form
  /// `projects/{project_id}/databases/{database_id}/userCreds/{user_creds_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/userCreds/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1UserCreds].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1UserCreds> resetPassword(
    GoogleFirestoreAdminV1ResetUserPasswordRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resetPassword';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1UserCreds.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
  /// [extraLocationTypes] - Optional. Do not use this field. It is unsupported
  /// and is ignored unless explicitly documented otherwise. This is primarily
  /// for internal usage.
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
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1Backup.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [filter] - An expression that filters the list of returned backups. A
  /// filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string, a number, or a boolean.
  /// The comparison operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`,
  /// or `:`. Colon `:` is the contains operator. Filter rules are not case
  /// sensitive. The following fields in the Backup are eligible for filtering:
  /// * `database_uid` (supports `=` only)
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
    core.String? filter,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1ListBackupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

  Aggregation({this.alias, this.avg, this.count, this.sum});

  Aggregation.fromJson(core.Map json_)
    : this(
        alias: json_['alias'] as core.String?,
        avg: json_.containsKey('avg')
            ? Avg.fromJson(json_['avg'] as core.Map<core.String, core.dynamic>)
            : null,
        count: json_.containsKey('count')
            ? Count.fromJson(
                json_['count'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sum: json_.containsKey('sum')
            ? Sum.fromJson(json_['sum'] as core.Map<core.String, core.dynamic>)
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alias = this.alias;
    final avg = this.avg;
    final count = this.count;
    final sum = this.sum;
    return {'alias': ?alias, 'avg': ?avg, 'count': ?count, 'sum': ?sum};
  }
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

  AggregationResult({this.aggregateFields});

  AggregationResult.fromJson(core.Map json_)
    : this(
        aggregateFields:
            (json_['aggregateFields'] as core.Map<core.String, core.dynamic>?)
                ?.map(
                  (key, value) => core.MapEntry(
                    key,
                    Value.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  ),
                ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregateFields = this.aggregateFields;
    return {'aggregateFields': ?aggregateFields};
  }
}

/// An array value.
class ArrayValue {
  /// Values in the array.
  core.List<Value>? values;

  ArrayValue({this.values});

  ArrayValue.fromJson(core.Map json_)
    : this(
        values: (json_['values'] as core.List?)
            ?.map(
              (value) =>
                  Value.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final values = this.values;
    return {'values': ?values};
  }
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

  Avg({this.field});

  Avg.fromJson(core.Map json_)
    : this(
        field: json_.containsKey('field')
            ? FieldReference.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final field = this.field;
    return {'field': ?field};
  }
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
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
        documents: (json_['documents'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        mask: json_.containsKey('mask')
            ? DocumentMask.fromJson(
                json_['mask'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newTransaction: json_.containsKey('newTransaction')
            ? TransactionOptions.fromJson(
                json_['newTransaction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        readTime: json_['readTime'] as core.String?,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documents = this.documents;
    final mask = this.mask;
    final newTransaction = this.newTransaction;
    final readTime = this.readTime;
    final transaction = this.transaction;
    return {
      'documents': ?documents,
      'mask': ?mask,
      'newTransaction': ?newTransaction,
      'readTime': ?readTime,
      'transaction': ?transaction,
    };
  }
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
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
                json_['found'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        missing: json_['missing'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final found = this.found;
    final missing = this.missing;
    final readTime = this.readTime;
    final transaction = this.transaction;
    return {
      'found': ?found,
      'missing': ?missing,
      'readTime': ?readTime,
      'transaction': ?transaction,
    };
  }
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

  BatchWriteRequest({this.labels, this.writes});

  BatchWriteRequest.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        writes: (json_['writes'] as core.List?)
            ?.map(
              (value) =>
                  Write.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labels = this.labels;
    final writes = this.writes;
    return {'labels': ?labels, 'writes': ?writes};
  }
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

  BatchWriteResponse({this.status, this.writeResults});

  BatchWriteResponse.fromJson(core.Map json_)
    : this(
        status: (json_['status'] as core.List?)
            ?.map(
              (value) =>
                  Status.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        writeResults: (json_['writeResults'] as core.List?)
            ?.map(
              (value) => WriteResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final status = this.status;
    final writeResults = this.writeResults;
    return {'status': ?status, 'writeResults': ?writeResults};
  }
}

/// The request for Firestore.BeginTransaction.
class BeginTransactionRequest {
  /// The options for the transaction.
  ///
  /// Defaults to a read-write transaction.
  TransactionOptions? options;

  BeginTransactionRequest({this.options});

  BeginTransactionRequest.fromJson(core.Map json_)
    : this(
        options: json_.containsKey('options')
            ? TransactionOptions.fromJson(
                json_['options'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final options = this.options;
    return {'options': ?options};
  }
}

/// The response for Firestore.BeginTransaction.
class BeginTransactionResponse {
  /// The transaction that was started.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  BeginTransactionResponse({this.transaction});

  BeginTransactionResponse.fromJson(core.Map json_)
    : this(transaction: json_['transaction'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final transaction = this.transaction;
    return {'transaction': ?transaction};
  }
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

  CollectionSelector({this.allDescendants, this.collectionId});

  CollectionSelector.fromJson(core.Map json_)
    : this(
        allDescendants: json_['allDescendants'] as core.bool?,
        collectionId: json_['collectionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allDescendants = this.allDescendants;
    final collectionId = this.collectionId;
    return {'allDescendants': ?allDescendants, 'collectionId': ?collectionId};
  }
}

/// The request for Firestore.Commit.
class CommitRequest {
  /// If set, applies all writes in this transaction, and commits it.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order.
  core.List<Write>? writes;

  CommitRequest({this.transaction, this.writes});

  CommitRequest.fromJson(core.Map json_)
    : this(
        transaction: json_['transaction'] as core.String?,
        writes: (json_['writes'] as core.List?)
            ?.map(
              (value) =>
                  Write.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final transaction = this.transaction;
    final writes = this.writes;
    return {'transaction': ?transaction, 'writes': ?writes};
  }
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

  CommitResponse({this.commitTime, this.writeResults});

  CommitResponse.fromJson(core.Map json_)
    : this(
        commitTime: json_['commitTime'] as core.String?,
        writeResults: (json_['writeResults'] as core.List?)
            ?.map(
              (value) => WriteResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commitTime = this.commitTime;
    final writeResults = this.writeResults;
    return {'commitTime': ?commitTime, 'writeResults': ?writeResults};
  }
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

  CompositeFilter({this.filters, this.op});

  CompositeFilter.fromJson(core.Map json_)
    : this(
        filters: (json_['filters'] as core.List?)
            ?.map(
              (value) =>
                  Filter.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        op: json_['op'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final filters = this.filters;
    final op = this.op;
    return {'filters': ?filters, 'op': ?op};
  }
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

  Count({this.upTo});

  Count.fromJson(core.Map json_) : this(upTo: json_['upTo'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final upTo = this.upTo;
    return {'upTo': ?upTo};
  }
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

  Cursor({this.before, this.values});

  Cursor.fromJson(core.Map json_)
    : this(
        before: json_['before'] as core.bool?,
        values: (json_['values'] as core.List?)
            ?.map(
              (value) =>
                  Value.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final before = this.before;
    final values = this.values;
    return {'before': ?before, 'values': ?values};
  }
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

  Document({this.createTime, this.fields, this.name, this.updateTime});

  Document.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        fields: (json_['fields'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            Value.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final fields = this.fields;
    final name = this.name;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'fields': ?fields,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }
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

  DocumentMask({this.fieldPaths});

  DocumentMask.fromJson(core.Map json_)
    : this(
        fieldPaths: (json_['fieldPaths'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fieldPaths = this.fieldPaths;
    return {'fieldPaths': ?fieldPaths};
  }
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

  DocumentTransform({this.document, this.fieldTransforms});

  DocumentTransform.fromJson(core.Map json_)
    : this(
        document: json_['document'] as core.String?,
        fieldTransforms: (json_['fieldTransforms'] as core.List?)
            ?.map(
              (value) => FieldTransform.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final document = this.document;
    final fieldTransforms = this.fieldTransforms;
    return {'document': ?document, 'fieldTransforms': ?fieldTransforms};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The request for Firestore.ExecutePipeline.
class ExecutePipelineRequest {
  /// Execute the pipeline in a new transaction.
  ///
  /// The identifier of the newly created transaction will be returned in the
  /// first response on the stream. This defaults to a read-only transaction.
  TransactionOptions? newTransaction;

  /// Execute the pipeline in a snapshot transaction at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  /// A pipelined operation.
  StructuredPipeline? structuredPipeline;

  /// Run the query within an already active transaction.
  ///
  /// The value here is the opaque transaction ID to execute the query in.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  ExecutePipelineRequest({
    this.newTransaction,
    this.readTime,
    this.structuredPipeline,
    this.transaction,
  });

  ExecutePipelineRequest.fromJson(core.Map json_)
    : this(
        newTransaction: json_.containsKey('newTransaction')
            ? TransactionOptions.fromJson(
                json_['newTransaction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        readTime: json_['readTime'] as core.String?,
        structuredPipeline: json_.containsKey('structuredPipeline')
            ? StructuredPipeline.fromJson(
                json_['structuredPipeline']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final newTransaction = this.newTransaction;
    final readTime = this.readTime;
    final structuredPipeline = this.structuredPipeline;
    final transaction = this.transaction;
    return {
      'newTransaction': ?newTransaction,
      'readTime': ?readTime,
      'structuredPipeline': ?structuredPipeline,
      'transaction': ?transaction,
    };
  }
}

/// The response for Firestore.Execute.
class ExecutePipelineResponse {
  /// The time at which the results are valid.
  ///
  /// This is a (not strictly) monotonically increasing value across multiple
  /// responses in the same stream. The API guarantees that all previously
  /// returned results are still valid at the latest `execution_time`. This
  /// allows the API consumer to treat the query if it ran at the latest
  /// `execution_time` returned. If the query returns no results, a response
  /// with `execution_time` and no `results` will be sent, and this represents
  /// the time at which the operation was run.
  core.String? executionTime;

  /// Query explain stats.
  ///
  /// This is present on the **last** response if the request configured explain
  /// to run in 'analyze' or 'explain' mode in the pipeline options. If the
  /// query does not return any results, a response with `explain_stats` and no
  /// `results` will still be sent.
  ExplainStats? explainStats;

  /// An ordered batch of results returned executing a pipeline.
  ///
  /// The batch size is variable, and can even be zero for when only a partial
  /// progress message is returned. The fields present in the returned documents
  /// are only those that were explicitly requested in the pipeline, this
  /// includes those like `__name__` and `__update_time__`. This is explicitly a
  /// divergence from `Firestore.RunQuery` / `Firestore.GetDocument` RPCs which
  /// always return such fields even when they are not specified in the `mask`.
  core.List<Document>? results;

  /// Newly created transaction identifier.
  ///
  /// This field is only specified as part of the first response from the
  /// server, alongside the `results` field when the original request specified
  /// ExecuteRequest.new_transaction.
  core.String? transaction;
  core.List<core.int> get transactionAsBytes =>
      convert.base64.decode(transaction!);

  set transactionAsBytes(core.List<core.int> bytes_) {
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  ExecutePipelineResponse({
    this.executionTime,
    this.explainStats,
    this.results,
    this.transaction,
  });

  ExecutePipelineResponse.fromJson(core.Map json_)
    : this(
        executionTime: json_['executionTime'] as core.String?,
        explainStats: json_.containsKey('explainStats')
            ? ExplainStats.fromJson(
                json_['explainStats'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        results: (json_['results'] as core.List?)
            ?.map(
              (value) => Document.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionTime = this.executionTime;
    final explainStats = this.explainStats;
    final results = this.results;
    final transaction = this.transaction;
    return {
      'executionTime': ?executionTime,
      'explainStats': ?explainStats,
      'results': ?results,
      'transaction': ?transaction,
    };
  }
}

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

  ExplainMetrics({this.executionStats, this.planSummary});

  ExplainMetrics.fromJson(core.Map json_)
    : this(
        executionStats: json_.containsKey('executionStats')
            ? ExecutionStats.fromJson(
                json_['executionStats'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        planSummary: json_.containsKey('planSummary')
            ? PlanSummary.fromJson(
                json_['planSummary'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionStats = this.executionStats;
    final planSummary = this.planSummary;
    return {'executionStats': ?executionStats, 'planSummary': ?planSummary};
  }
}

/// Explain options for the query.
typedef ExplainOptions = $ExplainOptions;

/// Pipeline explain stats.
///
/// Depending on the explain options in the original request, this can contain
/// the optimized plan and / or execution stats.
class ExplainStats {
  /// The format depends on the `output_format` options in the request.
  ///
  /// Currently there are two supported options: `TEXT` and `JSON`. Both supply
  /// a `google.protobuf.StringValue`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  ExplainStats({this.data});

  ExplainStats.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? json_['data'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    return {'data': ?data};
  }
}

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

  FieldFilter({this.field, this.op, this.value});

  FieldFilter.fromJson(core.Map json_)
    : this(
        field: json_.containsKey('field')
            ? FieldReference.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        op: json_['op'] as core.String?,
        value: json_.containsKey('value')
            ? Value.fromJson(
                json_['value'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final field = this.field;
    final op = this.op;
    final value = this.value;
    return {'field': ?field, 'op': ?op, 'value': ?value};
  }
}

/// A reference to a field in a document, ex: `stats.operations`.
class FieldReference {
  /// A reference to a field in a document.
  ///
  /// Requires: * MUST be a dot-delimited (`.`) string of segments, where each
  /// segment conforms to document field name limitations.
  core.String? fieldPath;

  FieldReference({this.fieldPath});

  FieldReference.fromJson(core.Map json_)
    : this(fieldPath: json_['fieldPath'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final fieldPath = this.fieldPath;
    return {'fieldPath': ?fieldPath};
  }
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
            ? ArrayValue.fromJson(
                json_['appendMissingElements']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        fieldPath: json_['fieldPath'] as core.String?,
        increment: json_.containsKey('increment')
            ? Value.fromJson(
                json_['increment'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        maximum: json_.containsKey('maximum')
            ? Value.fromJson(
                json_['maximum'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        minimum: json_.containsKey('minimum')
            ? Value.fromJson(
                json_['minimum'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        removeAllFromArray: json_.containsKey('removeAllFromArray')
            ? ArrayValue.fromJson(
                json_['removeAllFromArray']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        setToServerValue: json_['setToServerValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appendMissingElements = this.appendMissingElements;
    final fieldPath = this.fieldPath;
    final increment = this.increment;
    final maximum = this.maximum;
    final minimum = this.minimum;
    final removeAllFromArray = this.removeAllFromArray;
    final setToServerValue = this.setToServerValue;
    return {
      'appendMissingElements': ?appendMissingElements,
      'fieldPath': ?fieldPath,
      'increment': ?increment,
      'maximum': ?maximum,
      'minimum': ?minimum,
      'removeAllFromArray': ?removeAllFromArray,
      'setToServerValue': ?setToServerValue,
    };
  }
}

/// A filter.
class Filter {
  /// A composite filter.
  CompositeFilter? compositeFilter;

  /// A filter on a document field.
  FieldFilter? fieldFilter;

  /// A filter that takes exactly one argument.
  UnaryFilter? unaryFilter;

  Filter({this.compositeFilter, this.fieldFilter, this.unaryFilter});

  Filter.fromJson(core.Map json_)
    : this(
        compositeFilter: json_.containsKey('compositeFilter')
            ? CompositeFilter.fromJson(
                json_['compositeFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        fieldFilter: json_.containsKey('fieldFilter')
            ? FieldFilter.fromJson(
                json_['fieldFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        unaryFilter: json_.containsKey('unaryFilter')
            ? UnaryFilter.fromJson(
                json_['unaryFilter'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compositeFilter = this.compositeFilter;
    final fieldFilter = this.fieldFilter;
    final unaryFilter = this.unaryFilter;
    return {
      'compositeFilter': ?compositeFilter,
      'fieldFilter': ?fieldFilter,
      'unaryFilter': ?unaryFilter,
    };
  }
}

/// Nearest Neighbors search config.
///
/// The ordering provided by FindNearest supersedes the order_by stage. If
/// multiple documents have the same vector distance, the returned document
/// order is not guaranteed to be stable between queries.
class FindNearest {
  /// The distance measure to use, required.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DISTANCE_MEASURE_UNSPECIFIED" : Should not be set.
  /// - "EUCLIDEAN" : Measures the EUCLIDEAN distance between the vectors. See
  /// [Euclidean](https://en.wikipedia.org/wiki/Euclidean_distance) to learn
  /// more. The resulting distance decreases the more similar two vectors are.
  /// - "COSINE" : COSINE distance compares vectors based on the angle between
  /// them, which allows you to measure similarity that isn't based on the
  /// vectors magnitude. We recommend using DOT_PRODUCT with unit normalized
  /// vectors instead of COSINE distance, which is mathematically equivalent
  /// with better performance. See
  /// [Cosine Similarity](https://en.wikipedia.org/wiki/Cosine_similarity) to
  /// learn more about COSINE similarity and COSINE distance. The resulting
  /// COSINE distance decreases the more similar two vectors are.
  /// - "DOT_PRODUCT" : Similar to cosine but is affected by the magnitude of
  /// the vectors. See [Dot Product](https://en.wikipedia.org/wiki/Dot_product)
  /// to learn more. The resulting distance increases the more similar two
  /// vectors are.
  core.String? distanceMeasure;

  /// Optional name of the field to output the result of the vector distance
  /// calculation.
  ///
  /// Must conform to document field name limitations.
  ///
  /// Optional.
  core.String? distanceResultField;

  /// Option to specify a threshold for which no less similar documents will be
  /// returned.
  ///
  /// The behavior of the specified `distance_measure` will affect the meaning
  /// of the distance threshold. Since DOT_PRODUCT distances increase when the
  /// vectors are more similar, the comparison is inverted. * For EUCLIDEAN,
  /// COSINE: `WHERE distance <= distance_threshold` * For DOT_PRODUCT: `WHERE
  /// distance >= distance_threshold`
  ///
  /// Optional.
  core.double? distanceThreshold;

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
    this.distanceResultField,
    this.distanceThreshold,
    this.limit,
    this.queryVector,
    this.vectorField,
  });

  FindNearest.fromJson(core.Map json_)
    : this(
        distanceMeasure: json_['distanceMeasure'] as core.String?,
        distanceResultField: json_['distanceResultField'] as core.String?,
        distanceThreshold: (json_['distanceThreshold'] as core.num?)
            ?.toDouble(),
        limit: json_['limit'] as core.int?,
        queryVector: json_.containsKey('queryVector')
            ? Value.fromJson(
                json_['queryVector'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vectorField: json_.containsKey('vectorField')
            ? FieldReference.fromJson(
                json_['vectorField'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final distanceMeasure = this.distanceMeasure;
    final distanceResultField = this.distanceResultField;
    final distanceThreshold = this.distanceThreshold;
    final limit = this.limit;
    final queryVector = this.queryVector;
    final vectorField = this.vectorField;
    return {
      'distanceMeasure': ?distanceMeasure,
      'distanceResultField': ?distanceResultField,
      'distanceThreshold': ?distanceThreshold,
      'limit': ?limit,
      'queryVector': ?queryVector,
      'vectorField': ?vectorField,
    };
  }
}

/// Represents an unevaluated scalar expression.
///
/// For example, the expression `like(user_name, "%alice%")` is represented as:
/// ``` name: "like" args { field_reference: "user_name" } args { string_value:
/// "%alice%" } ```
class Function_ {
  /// Ordered list of arguments the given function expects.
  ///
  /// Optional.
  core.List<Value>? args;

  /// The name of the function to evaluate.
  ///
  /// **Requires:** * must be in snake case (lower case with underscore
  /// separator).
  ///
  /// Required.
  core.String? name;

  /// Optional named arguments that certain functions may support.
  ///
  /// Optional.
  core.Map<core.String, Value>? options;

  Function_({this.args, this.name, this.options});

  Function_.fromJson(core.Map json_)
    : this(
        args: (json_['args'] as core.List?)
            ?.map(
              (value) =>
                  Value.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        name: json_['name'] as core.String?,
        options: (json_['options'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Value.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final args = this.args;
    final name = this.name;
    final options = this.options;
    return {'args': ?args, 'name': ?name, 'options': ?options};
  }
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
        database: json_['database'] as core.String?,
        databaseUid: json_['databaseUid'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        name: json_['name'] as core.String?,
        snapshotTime: json_['snapshotTime'] as core.String?,
        state: json_['state'] as core.String?,
        stats: json_.containsKey('stats')
            ? GoogleFirestoreAdminV1Stats.fromJson(
                json_['stats'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final database = this.database;
    final databaseUid = this.databaseUid;
    final expireTime = this.expireTime;
    final name = this.name;
    final snapshotTime = this.snapshotTime;
    final state = this.state;
    final stats = this.stats;
    return {
      'database': ?database,
      'databaseUid': ?databaseUid,
      'expireTime': ?expireTime,
      'name': ?name,
      'snapshotTime': ?snapshotTime,
      'state': ?state,
      'stats': ?stats,
    };
  }
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

  /// For a schedule that runs daily.
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
  ///
  /// The maximum supported retention period is 14 weeks.
  core.String? retention;

  /// The timestamp at which this backup schedule was most recently updated.
  ///
  /// When a backup schedule is first created, this is the same as create_time.
  ///
  /// Output only.
  core.String? updateTime;

  /// For a schedule that runs weekly on a specific day.
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
        createTime: json_['createTime'] as core.String?,
        dailyRecurrence: json_.containsKey('dailyRecurrence')
            ? GoogleFirestoreAdminV1DailyRecurrence.fromJson(
                json_['dailyRecurrence'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        retention: json_['retention'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        weeklyRecurrence: json_.containsKey('weeklyRecurrence')
            ? GoogleFirestoreAdminV1WeeklyRecurrence.fromJson(
                json_['weeklyRecurrence']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final dailyRecurrence = this.dailyRecurrence;
    final name = this.name;
    final retention = this.retention;
    final updateTime = this.updateTime;
    final weeklyRecurrence = this.weeklyRecurrence;
    return {
      'createTime': ?createTime,
      'dailyRecurrence': ?dailyRecurrence,
      'name': ?name,
      'retention': ?retention,
      'updateTime': ?updateTime,
      'weeklyRecurrence': ?weeklyRecurrence,
    };
  }
}

/// Information about a backup that was used to restore a database.
class GoogleFirestoreAdminV1BackupSource {
  /// The resource name of the backup that was used to restore this database.
  ///
  /// Format: `projects/{project}/locations/{location}/backups/{backup}`.
  core.String? backup;

  GoogleFirestoreAdminV1BackupSource({this.backup});

  GoogleFirestoreAdminV1BackupSource.fromJson(core.Map json_)
    : this(backup: json_['backup'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final backup = this.backup;
    return {'backup': ?backup};
  }
}

/// The request for FirestoreAdmin.BulkDeleteDocuments.
///
/// When both collection_ids and namespace_ids are set, only documents
/// satisfying both conditions will be deleted. Requests with namespace_ids and
/// collection_ids both empty will be rejected. Please use
/// FirestoreAdmin.DeleteDatabase instead.
class GoogleFirestoreAdminV1BulkDeleteDocumentsRequest {
  /// IDs of the collection groups to delete.
  ///
  /// Unspecified means all collection groups. Each collection group in this
  /// list must be unique.
  ///
  /// Optional.
  core.List<core.String>? collectionIds;

  /// Namespaces to delete.
  ///
  /// An empty list means all namespaces. This is the recommended usage for
  /// databases that don't use namespaces. An empty string element represents
  /// the default namespace. This should be used if the database has data in
  /// non-default namespaces, but doesn't want to delete from them. Each
  /// namespace in this list must be unique.
  ///
  /// Optional.
  core.List<core.String>? namespaceIds;

  GoogleFirestoreAdminV1BulkDeleteDocumentsRequest({
    this.collectionIds,
    this.namespaceIds,
  });

  GoogleFirestoreAdminV1BulkDeleteDocumentsRequest.fromJson(core.Map json_)
    : this(
        collectionIds: (json_['collectionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        namespaceIds: (json_['namespaceIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final collectionIds = this.collectionIds;
    final namespaceIds = this.namespaceIds;
    return {'collectionIds': ?collectionIds, 'namespaceIds': ?namespaceIds};
  }
}

/// The request message for FirestoreAdmin.CloneDatabase.
class GoogleFirestoreAdminV1CloneDatabaseRequest {
  /// The ID to use for the database, which will become the final component of
  /// the database's resource name.
  ///
  /// This database ID must not be associated with an existing database. This
  /// value should be 4-63 characters. Valid characters are /a-z-/ with first
  /// character a letter and the last a letter or a number. Must not be
  /// UUID-like /\[0-9a-f\]{8}(-\[0-9a-f\]{4}){3}-\[0-9a-f\]{12}/. "(default)"
  /// database ID is also valid if the database is Standard edition.
  ///
  /// Required.
  core.String? databaseId;

  /// Encryption configuration for the cloned database.
  ///
  /// If this field is not specified, the cloned database will use the same
  /// encryption configuration as the source database, namely
  /// use_source_encryption.
  ///
  /// Optional.
  GoogleFirestoreAdminV1EncryptionConfig? encryptionConfig;

  /// Specification of the PITR data to clone from.
  ///
  /// The source database must exist. The cloned database will be created in the
  /// same location as the source database.
  ///
  /// Required.
  GoogleFirestoreAdminV1PitrSnapshot? pitrSnapshot;

  /// Tags to be bound to the cloned database.
  ///
  /// The tags should be provided in the format of `tagKeys/{tag_key_id} ->
  /// tagValues/{tag_value_id}`.
  ///
  /// Optional. Immutable.
  core.Map<core.String, core.String>? tags;

  GoogleFirestoreAdminV1CloneDatabaseRequest({
    this.databaseId,
    this.encryptionConfig,
    this.pitrSnapshot,
    this.tags,
  });

  GoogleFirestoreAdminV1CloneDatabaseRequest.fromJson(core.Map json_)
    : this(
        databaseId: json_['databaseId'] as core.String?,
        encryptionConfig: json_.containsKey('encryptionConfig')
            ? GoogleFirestoreAdminV1EncryptionConfig.fromJson(
                json_['encryptionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        pitrSnapshot: json_.containsKey('pitrSnapshot')
            ? GoogleFirestoreAdminV1PitrSnapshot.fromJson(
                json_['pitrSnapshot'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databaseId = this.databaseId;
    final encryptionConfig = this.encryptionConfig;
    final pitrSnapshot = this.pitrSnapshot;
    final tags = this.tags;
    return {
      'databaseId': ?databaseId,
      'encryptionConfig': ?encryptionConfig,
      'pitrSnapshot': ?pitrSnapshot,
      'tags': ?tags,
    };
  }
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

  GoogleFirestoreAdminV1CmekConfig({this.activeKeyVersion, this.kmsKeyName});

  GoogleFirestoreAdminV1CmekConfig.fromJson(core.Map json_)
    : this(
        activeKeyVersion: (json_['activeKeyVersion'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        kmsKeyName: json_['kmsKeyName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activeKeyVersion = this.activeKeyVersion;
    final kmsKeyName = this.kmsKeyName;
    return {'activeKeyVersion': ?activeKeyVersion, 'kmsKeyName': ?kmsKeyName};
  }
}

/// The configuration options for using CMEK (Customer Managed Encryption Key)
/// encryption.
class GoogleFirestoreAdminV1CustomerManagedEncryptionOptions {
  /// Only keys in the same location as the database are allowed to be used for
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

  GoogleFirestoreAdminV1CustomerManagedEncryptionOptions({this.kmsKeyName});

  GoogleFirestoreAdminV1CustomerManagedEncryptionOptions.fromJson(
    core.Map json_,
  ) : this(kmsKeyName: json_['kmsKeyName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final kmsKeyName = this.kmsKeyName;
    return {'kmsKeyName': ?kmsKeyName};
  }
}

/// Represents a recurring schedule that runs every day.
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
  ///
  /// If unspecified in a CreateDatabase request, this will default based on the
  /// database edition: Optimistic for Enterprise and Pessimistic for all other
  /// databases.
  /// Possible string values are:
  /// - "CONCURRENCY_MODE_UNSPECIFIED" : Not used.
  /// - "OPTIMISTIC" : Use optimistic concurrency control by default. This mode
  /// is available for Cloud Firestore databases. This is the default setting
  /// for Cloud Firestore Enterprise Edition databases.
  /// - "PESSIMISTIC" : Use pessimistic concurrency control by default. This
  /// mode is available for Cloud Firestore databases. This is the default
  /// setting for Cloud Firestore Standard Edition databases.
  /// - "OPTIMISTIC_WITH_ENTITY_GROUPS" : Use optimistic concurrency control
  /// with entity groups by default. This mode is enabled for some databases
  /// that were automatically upgraded from Cloud Datastore to Cloud Firestore
  /// with Datastore Mode. It is not recommended for any new databases, and not
  /// supported for Firestore Native databases.
  core.String? concurrencyMode;

  /// The timestamp at which this database was created.
  ///
  /// Databases created before 2016 do not populate create_time.
  ///
  /// Output only.
  core.String? createTime;

  /// The edition of the database.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "DATABASE_EDITION_UNSPECIFIED" : Not used.
  /// - "STANDARD" : Standard edition. This is the default setting if not
  /// specified.
  /// - "ENTERPRISE" : Enterprise edition.
  core.String? databaseEdition;

  /// State of delete protection for the database.
  /// Possible string values are:
  /// - "DELETE_PROTECTION_STATE_UNSPECIFIED" : The default value. Delete
  /// protection type is not specified
  /// - "DELETE_PROTECTION_DISABLED" : Delete protection is disabled
  /// - "DELETE_PROTECTION_ENABLED" : Delete protection is enabled
  core.String? deleteProtectionState;

  /// The timestamp at which this database was deleted.
  ///
  /// Only set if the database has been deleted.
  ///
  /// Output only.
  core.String? deleteTime;

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

  /// The Firestore API data access mode to use for this database.
  ///
  /// If not set on write: - the default value is DATA_ACCESS_MODE_DISABLED for
  /// Enterprise Edition. - the default value is DATA_ACCESS_MODE_ENABLED for
  /// Standard Edition.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_ACCESS_MODE_UNSPECIFIED" : Not Used.
  /// - "DATA_ACCESS_MODE_ENABLED" : Accessing the database through the API is
  /// allowed.
  /// - "DATA_ACCESS_MODE_DISABLED" : Accessing the database through the API is
  /// disallowed.
  core.String? firestoreDataAccessMode;

  /// Background: Free tier is the ability of a Firestore database to use a
  /// small amount of resources every day without being charged.
  ///
  /// Once usage exceeds the free tier limit further usage is charged. Whether
  /// this database can make use of the free tier. Only one database per project
  /// can be eligible for the free tier. The first (or next) database that is
  /// created in a project without a free tier database will be marked as
  /// eligible for the free tier. Databases that are created while there is a
  /// free tier database will not be eligible for the free tier.
  ///
  /// Output only.
  core.bool? freeTier;

  /// The key_prefix for this database.
  ///
  /// This key_prefix is used, in combination with the project ID ("~") to
  /// construct the application ID that is returned from the Cloud Datastore
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

  /// The MongoDB compatible API data access mode to use for this database.
  ///
  /// If not set on write, the default value is DATA_ACCESS_MODE_ENABLED for
  /// Enterprise Edition. The value is always DATA_ACCESS_MODE_DISABLED for
  /// Standard Edition.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATA_ACCESS_MODE_UNSPECIFIED" : Not Used.
  /// - "DATA_ACCESS_MODE_ENABLED" : Accessing the database through the API is
  /// allowed.
  /// - "DATA_ACCESS_MODE_DISABLED" : Accessing the database through the API is
  /// disallowed.
  core.String? mongodbCompatibleDataAccessMode;

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

  /// The database resource's prior database ID.
  ///
  /// This field is only populated for deleted databases.
  ///
  /// Output only.
  core.String? previousId;

  /// The default Realtime Updates mode to use for this database.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "REALTIME_UPDATES_MODE_UNSPECIFIED" : The Realtime Updates feature is
  /// not specified.
  /// - "REALTIME_UPDATES_MODE_ENABLED" : The Realtime Updates feature is
  /// enabled by default. This could potentially degrade write performance for
  /// the database.
  /// - "REALTIME_UPDATES_MODE_DISABLED" : The Realtime Updates feature is
  /// disabled by default.
  core.String? realtimeUpdatesMode;

  /// Information about the provenance of this database.
  ///
  /// Output only.
  GoogleFirestoreAdminV1SourceInfo? sourceInfo;

  /// Input only.
  ///
  /// Immutable. Tag keys/values directly bound to this resource. For example:
  /// "123/environment": "production", "123/costCenter": "marketing"
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

  /// The type of the database.
  ///
  /// See https://cloud.google.com/datastore/docs/firestore-or-datastore for
  /// information about how to choose.
  /// Possible string values are:
  /// - "DATABASE_TYPE_UNSPECIFIED" : Not used.
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
    this.databaseEdition,
    this.deleteProtectionState,
    this.deleteTime,
    this.earliestVersionTime,
    this.etag,
    this.firestoreDataAccessMode,
    this.freeTier,
    this.keyPrefix,
    this.locationId,
    this.mongodbCompatibleDataAccessMode,
    this.name,
    this.pointInTimeRecoveryEnablement,
    this.previousId,
    this.realtimeUpdatesMode,
    this.sourceInfo,
    this.tags,
    this.type,
    this.uid,
    this.updateTime,
    this.versionRetentionPeriod,
  });

  GoogleFirestoreAdminV1Database.fromJson(core.Map json_)
    : this(
        appEngineIntegrationMode:
            json_['appEngineIntegrationMode'] as core.String?,
        cmekConfig: json_.containsKey('cmekConfig')
            ? GoogleFirestoreAdminV1CmekConfig.fromJson(
                json_['cmekConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        concurrencyMode: json_['concurrencyMode'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        databaseEdition: json_['databaseEdition'] as core.String?,
        deleteProtectionState: json_['deleteProtectionState'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        earliestVersionTime: json_['earliestVersionTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        firestoreDataAccessMode:
            json_['firestoreDataAccessMode'] as core.String?,
        freeTier: json_['freeTier'] as core.bool?,
        keyPrefix: json_['keyPrefix'] as core.String?,
        locationId: json_['locationId'] as core.String?,
        mongodbCompatibleDataAccessMode:
            json_['mongodbCompatibleDataAccessMode'] as core.String?,
        name: json_['name'] as core.String?,
        pointInTimeRecoveryEnablement:
            json_['pointInTimeRecoveryEnablement'] as core.String?,
        previousId: json_['previousId'] as core.String?,
        realtimeUpdatesMode: json_['realtimeUpdatesMode'] as core.String?,
        sourceInfo: json_.containsKey('sourceInfo')
            ? GoogleFirestoreAdminV1SourceInfo.fromJson(
                json_['sourceInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        type: json_['type'] as core.String?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        versionRetentionPeriod: json_['versionRetentionPeriod'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final appEngineIntegrationMode = this.appEngineIntegrationMode;
    final cmekConfig = this.cmekConfig;
    final concurrencyMode = this.concurrencyMode;
    final createTime = this.createTime;
    final databaseEdition = this.databaseEdition;
    final deleteProtectionState = this.deleteProtectionState;
    final deleteTime = this.deleteTime;
    final earliestVersionTime = this.earliestVersionTime;
    final etag = this.etag;
    final firestoreDataAccessMode = this.firestoreDataAccessMode;
    final freeTier = this.freeTier;
    final keyPrefix = this.keyPrefix;
    final locationId = this.locationId;
    final mongodbCompatibleDataAccessMode =
        this.mongodbCompatibleDataAccessMode;
    final name = this.name;
    final pointInTimeRecoveryEnablement = this.pointInTimeRecoveryEnablement;
    final previousId = this.previousId;
    final realtimeUpdatesMode = this.realtimeUpdatesMode;
    final sourceInfo = this.sourceInfo;
    final tags = this.tags;
    final type = this.type;
    final uid = this.uid;
    final updateTime = this.updateTime;
    final versionRetentionPeriod = this.versionRetentionPeriod;
    return {
      'appEngineIntegrationMode': ?appEngineIntegrationMode,
      'cmekConfig': ?cmekConfig,
      'concurrencyMode': ?concurrencyMode,
      'createTime': ?createTime,
      'databaseEdition': ?databaseEdition,
      'deleteProtectionState': ?deleteProtectionState,
      'deleteTime': ?deleteTime,
      'earliestVersionTime': ?earliestVersionTime,
      'etag': ?etag,
      'firestoreDataAccessMode': ?firestoreDataAccessMode,
      'freeTier': ?freeTier,
      'keyPrefix': ?keyPrefix,
      'locationId': ?locationId,
      'mongodbCompatibleDataAccessMode': ?mongodbCompatibleDataAccessMode,
      'name': ?name,
      'pointInTimeRecoveryEnablement': ?pointInTimeRecoveryEnablement,
      'previousId': ?previousId,
      'realtimeUpdatesMode': ?realtimeUpdatesMode,
      'sourceInfo': ?sourceInfo,
      'tags': ?tags,
      'type': ?type,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'versionRetentionPeriod': ?versionRetentionPeriod,
    };
  }
}

/// The request for FirestoreAdmin.DisableUserCreds.
typedef GoogleFirestoreAdminV1DisableUserCredsRequest = $Empty;

/// The request for FirestoreAdmin.EnableUserCreds.
typedef GoogleFirestoreAdminV1EnableUserCredsRequest = $Empty;

/// Encryption configuration for a new database being created from another
/// source.
///
/// The source could be a Backup or a PitrSnapshot.
class GoogleFirestoreAdminV1EncryptionConfig {
  /// Use Customer Managed Encryption Keys (CMEK) for encryption.
  GoogleFirestoreAdminV1CustomerManagedEncryptionOptions?
  customerManagedEncryption;

  /// Use Google default encryption.
  GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions? googleDefaultEncryption;

  /// The database will use the same encryption configuration as the source.
  GoogleFirestoreAdminV1SourceEncryptionOptions? useSourceEncryption;

  GoogleFirestoreAdminV1EncryptionConfig({
    this.customerManagedEncryption,
    this.googleDefaultEncryption,
    this.useSourceEncryption,
  });

  GoogleFirestoreAdminV1EncryptionConfig.fromJson(core.Map json_)
    : this(
        customerManagedEncryption:
            json_.containsKey('customerManagedEncryption')
            ? GoogleFirestoreAdminV1CustomerManagedEncryptionOptions.fromJson(
                json_['customerManagedEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleDefaultEncryption: json_.containsKey('googleDefaultEncryption')
            ? GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions.fromJson(
                json_['googleDefaultEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        useSourceEncryption: json_.containsKey('useSourceEncryption')
            ? GoogleFirestoreAdminV1SourceEncryptionOptions.fromJson(
                json_['useSourceEncryption']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customerManagedEncryption = this.customerManagedEncryption;
    final googleDefaultEncryption = this.googleDefaultEncryption;
    final useSourceEncryption = this.useSourceEncryption;
    return {
      'customerManagedEncryption': ?customerManagedEncryption,
      'googleDefaultEncryption': ?googleDefaultEncryption,
      'useSourceEncryption': ?useSourceEncryption,
    };
  }
}

/// The request for FirestoreAdmin.ExportDocuments.
class GoogleFirestoreAdminV1ExportDocumentsRequest {
  /// IDs of the collection groups to export.
  ///
  /// Unspecified means all collection groups. Each collection group in this
  /// list must be unique.
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
        collectionIds: (json_['collectionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        namespaceIds: (json_['namespaceIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        outputUriPrefix: json_['outputUriPrefix'] as core.String?,
        snapshotTime: json_['snapshotTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final collectionIds = this.collectionIds;
    final namespaceIds = this.namespaceIds;
    final outputUriPrefix = this.outputUriPrefix;
    final snapshotTime = this.snapshotTime;
    return {
      'collectionIds': ?collectionIds,
      'namespaceIds': ?namespaceIds,
      'outputUriPrefix': ?outputUriPrefix,
      'snapshotTime': ?snapshotTime,
    };
  }
}

/// Represents a single field in the database.
///
/// Fields are grouped by their "Collection Group", which represent all
/// collections in the database with the same ID.
class GoogleFirestoreAdminV1Field {
  /// The index configuration for this field.
  ///
  /// If unset, field indexing will revert to the configuration defined by the
  /// `ancestor_field`. To explicitly remove all indexes for this field, specify
  /// an index config with an empty list of indexes.
  GoogleFirestoreAdminV1IndexConfig? indexConfig;

  /// A field name of the form:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  /// A field path can be a simple field name, e.g. `address` or a path to
  /// fields within `map_value` , e.g. `address.city`, or a special field path.
  ///
  /// The only valid special field is `*`, which represents any field. Field
  /// paths can be quoted using `` ` `` (backtick). The only character that must
  /// be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that must be
  /// quoted include: `*`, `.`, `` ` `` (backtick), `[`, `]`, as well as any
  /// ascii symbolic characters. Examples: `` `address.city` `` represents a
  /// field named `address.city`, not the map key `city` in the field `address`.
  /// `` `*` `` represents a field named `*`, not any field. A special `Field`
  /// contains the default indexing settings for all fields. This field's
  /// resource name is:
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

  GoogleFirestoreAdminV1Field({this.indexConfig, this.name, this.ttlConfig});

  GoogleFirestoreAdminV1Field.fromJson(core.Map json_)
    : this(
        indexConfig: json_.containsKey('indexConfig')
            ? GoogleFirestoreAdminV1IndexConfig.fromJson(
                json_['indexConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        ttlConfig: json_.containsKey('ttlConfig')
            ? GoogleFirestoreAdminV1TtlConfig.fromJson(
                json_['ttlConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final indexConfig = this.indexConfig;
    final name = this.name;
    final ttlConfig = this.ttlConfig;
    return {
      'indexConfig': ?indexConfig,
      'name': ?name,
      'ttlConfig': ?ttlConfig,
    };
  }
}

/// An index that stores vectors in a flat data structure, and supports
/// exhaustive search.
typedef GoogleFirestoreAdminV1FlatIndex = $Empty;

/// The configuration options for using Google default encryption.
typedef GoogleFirestoreAdminV1GoogleDefaultEncryptionOptions = $Empty;

/// The request for FirestoreAdmin.ImportDocuments.
class GoogleFirestoreAdminV1ImportDocumentsRequest {
  /// IDs of the collection groups to import.
  ///
  /// Unspecified means all collection groups that were included in the export.
  /// Each collection group in this list must be unique.
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
        collectionIds: (json_['collectionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        inputUriPrefix: json_['inputUriPrefix'] as core.String?,
        namespaceIds: (json_['namespaceIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final collectionIds = this.collectionIds;
    final inputUriPrefix = this.inputUriPrefix;
    final namespaceIds = this.namespaceIds;
    return {
      'collectionIds': ?collectionIds,
      'inputUriPrefix': ?inputUriPrefix,
      'namespaceIds': ?namespaceIds,
    };
  }
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
  /// - "MONGODB_COMPATIBLE_API" : The index can only be used by the
  /// MONGODB_COMPATIBLE_API.
  core.String? apiScope;

  /// The density configuration of the index.
  ///
  /// Immutable.
  /// Possible string values are:
  /// - "DENSITY_UNSPECIFIED" : Unspecified. It will use database default
  /// setting. This value is input only.
  /// - "SPARSE_ALL" : An index entry will only exist if ALL fields are present
  /// in the document. This is both the default and only allowed value for
  /// Standard Edition databases (for both Cloud Firestore `ANY_API` and Cloud
  /// Datastore `DATASTORE_MODE_API`). Take for example the following document:
  /// ``` { "__name__": "...", "a": 1, "b": 2, "c": 3 } ``` an index on `(a ASC,
  /// b ASC, c ASC, __name__ ASC)` will generate an index entry for this
  /// document since `a`, 'b', `c`, and `__name__` are all present but an index
  /// of `(a ASC, d ASC, __name__ ASC)` will not generate an index entry for
  /// this document since `d` is missing. This means that such indexes can only
  /// be used to serve a query when the query has either implicit or explicit
  /// requirements that all fields from the index are present.
  /// - "SPARSE_ANY" : An index entry will exist if ANY field are present in the
  /// document. This is used as the definition of a sparse index for Enterprise
  /// Edition databases. Take for example the following document: ``` {
  /// "__name__": "...", "a": 1, "b": 2, "c": 3 } ``` an index on `(a ASC, d
  /// ASC)` will generate an index entry for this document since `a` is present,
  /// and will fill in an `unset` value for `d`. An index on `(d ASC, e ASC)`
  /// will not generate any index entry as neither `d` nor `e` are present. An
  /// index that contains `__name__` will generate an index entry for all
  /// documents since Firestore guarantees that all documents have a `__name__`
  /// field.
  /// - "DENSE" : An index entry will exist regardless of if the fields are
  /// present or not. This is the default density for an Enterprise Edition
  /// database. The index will store `unset` values for fields that are not
  /// present in the document.
  core.String? density;

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

  /// Whether the index is multikey.
  ///
  /// By default, the index is not multikey. For non-multikey indexes, none of
  /// the paths in the index definition reach or traverse an array, except via
  /// an explicit array index. For multikey indexes, at most one of the paths in
  /// the index definition reach or traverse an array, except via an explicit
  /// array index. Violations will result in errors. Note this field only
  /// applies to index with MONGODB_COMPATIBLE_API ApiScope.
  ///
  /// Optional.
  core.bool? multikey;

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
  /// time, and that has the same collection ID.
  ///
  /// Indexes with a collection group query scope specified allow queries
  /// against all collections descended from a specific document, specified at
  /// query time, and that have the same collection ID as this index.
  /// Possible string values are:
  /// - "QUERY_SCOPE_UNSPECIFIED" : The query scope is unspecified. Not a valid
  /// option.
  /// - "COLLECTION" : Indexes with a collection query scope specified allow
  /// queries against a collection that is the child of a specific document,
  /// specified at query time, and that has the collection ID specified by the
  /// index.
  /// - "COLLECTION_GROUP" : Indexes with a collection group query scope
  /// specified allow queries against all collections that has the collection ID
  /// specified by the index.
  /// - "COLLECTION_RECURSIVE" : Include all the collections's ancestor in the
  /// index. Only available for Datastore Mode databases.
  core.String? queryScope;

  /// The number of shards for the index.
  ///
  /// Optional.
  core.int? shardCount;

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

  /// Whether it is an unique index.
  ///
  /// Unique index ensures all values for the indexed field(s) are unique across
  /// documents.
  ///
  /// Optional.
  core.bool? unique;

  GoogleFirestoreAdminV1Index({
    this.apiScope,
    this.density,
    this.fields,
    this.multikey,
    this.name,
    this.queryScope,
    this.shardCount,
    this.state,
    this.unique,
  });

  GoogleFirestoreAdminV1Index.fromJson(core.Map json_)
    : this(
        apiScope: json_['apiScope'] as core.String?,
        density: json_['density'] as core.String?,
        fields: (json_['fields'] as core.List?)
            ?.map(
              (value) => GoogleFirestoreAdminV1IndexField.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        multikey: json_['multikey'] as core.bool?,
        name: json_['name'] as core.String?,
        queryScope: json_['queryScope'] as core.String?,
        shardCount: json_['shardCount'] as core.int?,
        state: json_['state'] as core.String?,
        unique: json_['unique'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apiScope = this.apiScope;
    final density = this.density;
    final fields = this.fields;
    final multikey = this.multikey;
    final name = this.name;
    final queryScope = this.queryScope;
    final shardCount = this.shardCount;
    final state = this.state;
    final unique = this.unique;
    return {
      'apiScope': ?apiScope,
      'density': ?density,
      'fields': ?fields,
      'multikey': ?multikey,
      'name': ?name,
      'queryScope': ?queryScope,
      'shardCount': ?shardCount,
      'state': ?state,
      'unique': ?unique,
    };
  }
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
        ancestorField: json_['ancestorField'] as core.String?,
        indexes: (json_['indexes'] as core.List?)
            ?.map(
              (value) => GoogleFirestoreAdminV1Index.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        reverting: json_['reverting'] as core.bool?,
        usesAncestorConfig: json_['usesAncestorConfig'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final ancestorField = this.ancestorField;
    final indexes = this.indexes;
    final reverting = this.reverting;
    final usesAncestorConfig = this.usesAncestorConfig;
    return {
      'ancestorField': ?ancestorField,
      'indexes': ?indexes,
      'reverting': ?reverting,
      'usesAncestorConfig': ?usesAncestorConfig,
    };
  }
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

  /// Indicates that this field supports nearest neighbor and distance
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
        arrayConfig: json_['arrayConfig'] as core.String?,
        fieldPath: json_['fieldPath'] as core.String?,
        order: json_['order'] as core.String?,
        vectorConfig: json_.containsKey('vectorConfig')
            ? GoogleFirestoreAdminV1VectorConfig.fromJson(
                json_['vectorConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final arrayConfig = this.arrayConfig;
    final fieldPath = this.fieldPath;
    final order = this.order;
    final vectorConfig = this.vectorConfig;
    return {
      'arrayConfig': ?arrayConfig,
      'fieldPath': ?fieldPath,
      'order': ?order,
      'vectorConfig': ?vectorConfig,
    };
  }
}

/// The response for FirestoreAdmin.ListBackupSchedules.
class GoogleFirestoreAdminV1ListBackupSchedulesResponse {
  /// List of all backup schedules.
  core.List<GoogleFirestoreAdminV1BackupSchedule>? backupSchedules;

  GoogleFirestoreAdminV1ListBackupSchedulesResponse({this.backupSchedules});

  GoogleFirestoreAdminV1ListBackupSchedulesResponse.fromJson(core.Map json_)
    : this(
        backupSchedules: (json_['backupSchedules'] as core.List?)
            ?.map(
              (value) => GoogleFirestoreAdminV1BackupSchedule.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupSchedules = this.backupSchedules;
    return {'backupSchedules': ?backupSchedules};
  }
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

  GoogleFirestoreAdminV1ListBackupsResponse({this.backups, this.unreachable});

  GoogleFirestoreAdminV1ListBackupsResponse.fromJson(core.Map json_)
    : this(
        backups: (json_['backups'] as core.List?)
            ?.map(
              (value) => GoogleFirestoreAdminV1Backup.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backups = this.backups;
    final unreachable = this.unreachable;
    return {'backups': ?backups, 'unreachable': ?unreachable};
  }
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
        databases: (json_['databases'] as core.List?)
            ?.map(
              (value) => GoogleFirestoreAdminV1Database.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databases = this.databases;
    final unreachable = this.unreachable;
    return {'databases': ?databases, 'unreachable': ?unreachable};
  }
}

/// The response for FirestoreAdmin.ListFields.
class GoogleFirestoreAdminV1ListFieldsResponse {
  /// The requested fields.
  core.List<GoogleFirestoreAdminV1Field>? fields;

  /// A page token that may be used to request another page of results.
  ///
  /// If blank, this is the last page.
  core.String? nextPageToken;

  GoogleFirestoreAdminV1ListFieldsResponse({this.fields, this.nextPageToken});

  GoogleFirestoreAdminV1ListFieldsResponse.fromJson(core.Map json_)
    : this(
        fields: (json_['fields'] as core.List?)
            ?.map(
              (value) => GoogleFirestoreAdminV1Field.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final nextPageToken = this.nextPageToken;
    return {'fields': ?fields, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for FirestoreAdmin.ListIndexes.
class GoogleFirestoreAdminV1ListIndexesResponse {
  /// The requested indexes.
  core.List<GoogleFirestoreAdminV1Index>? indexes;

  /// A page token that may be used to request another page of results.
  ///
  /// If blank, this is the last page.
  core.String? nextPageToken;

  GoogleFirestoreAdminV1ListIndexesResponse({this.indexes, this.nextPageToken});

  GoogleFirestoreAdminV1ListIndexesResponse.fromJson(core.Map json_)
    : this(
        indexes: (json_['indexes'] as core.List?)
            ?.map(
              (value) => GoogleFirestoreAdminV1Index.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final indexes = this.indexes;
    final nextPageToken = this.nextPageToken;
    return {'indexes': ?indexes, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for FirestoreAdmin.ListUserCreds.
class GoogleFirestoreAdminV1ListUserCredsResponse {
  /// The user creds for the database.
  core.List<GoogleFirestoreAdminV1UserCreds>? userCreds;

  GoogleFirestoreAdminV1ListUserCredsResponse({this.userCreds});

  GoogleFirestoreAdminV1ListUserCredsResponse.fromJson(core.Map json_)
    : this(
        userCreds: (json_['userCreds'] as core.List?)
            ?.map(
              (value) => GoogleFirestoreAdminV1UserCreds.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final userCreds = this.userCreds;
    return {'userCreds': ?userCreds};
  }
}

/// A consistent snapshot of a database at a specific point in time.
///
/// A PITR (Point-in-time recovery) snapshot with previous versions of a
/// database's data is available for every minute up to the associated
/// database's data retention period. If the PITR feature is enabled, the
/// retention period is 7 days; otherwise, it is one hour.
class GoogleFirestoreAdminV1PitrSnapshot {
  /// The name of the database that this was a snapshot of.
  ///
  /// Format: `projects/{project}/databases/{database}`.
  ///
  /// Required.
  core.String? database;

  /// Public UUID of the database the snapshot was associated with.
  ///
  /// Output only.
  core.String? databaseUid;
  core.List<core.int> get databaseUidAsBytes =>
      convert.base64.decode(databaseUid!);

  set databaseUidAsBytes(core.List<core.int> bytes_) {
    databaseUid = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Snapshot time of the database.
  ///
  /// Required.
  core.String? snapshotTime;

  GoogleFirestoreAdminV1PitrSnapshot({
    this.database,
    this.databaseUid,
    this.snapshotTime,
  });

  GoogleFirestoreAdminV1PitrSnapshot.fromJson(core.Map json_)
    : this(
        database: json_['database'] as core.String?,
        databaseUid: json_['databaseUid'] as core.String?,
        snapshotTime: json_['snapshotTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final database = this.database;
    final databaseUid = this.databaseUid;
    final snapshotTime = this.snapshotTime;
    return {
      'database': ?database,
      'databaseUid': ?databaseUid,
      'snapshotTime': ?snapshotTime,
    };
  }
}

/// The request for FirestoreAdmin.ResetUserPassword.
typedef GoogleFirestoreAdminV1ResetUserPasswordRequest = $Empty;

/// Describes a Resource Identity principal.
class GoogleFirestoreAdminV1ResourceIdentity {
  /// Principal identifier string.
  ///
  /// See: https://cloud.google.com/iam/docs/principal-identifiers
  ///
  /// Output only.
  core.String? principal;

  GoogleFirestoreAdminV1ResourceIdentity({this.principal});

  GoogleFirestoreAdminV1ResourceIdentity.fromJson(core.Map json_)
    : this(principal: json_['principal'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final principal = this.principal;
    return {'principal': ?principal};
  }
}

/// The request message for FirestoreAdmin.RestoreDatabase.
class GoogleFirestoreAdminV1RestoreDatabaseRequest {
  /// Backup to restore from.
  ///
  /// Must be from the same project as the parent. The restored database will be
  /// created in the same location as the source backup. Format is:
  /// `projects/{project_id}/locations/{location}/backups/{backup}`
  ///
  /// Required.
  core.String? backup;

  /// The ID to use for the database, which will become the final component of
  /// the database's resource name.
  ///
  /// This database ID must not be associated with an existing database. This
  /// value should be 4-63 characters. Valid characters are /a-z-/ with first
  /// character a letter and the last a letter or a number. Must not be
  /// UUID-like /\[0-9a-f\]{8}(-\[0-9a-f\]{4}){3}-\[0-9a-f\]{12}/. "(default)"
  /// database ID is also valid if the database is Standard edition.
  ///
  /// Required.
  core.String? databaseId;

  /// Encryption configuration for the restored database.
  ///
  /// If this field is not specified, the restored database will use the same
  /// encryption configuration as the backup, namely use_source_encryption.
  ///
  /// Optional.
  GoogleFirestoreAdminV1EncryptionConfig? encryptionConfig;

  /// Tags to be bound to the restored database.
  ///
  /// The tags should be provided in the format of `tagKeys/{tag_key_id} ->
  /// tagValues/{tag_value_id}`.
  ///
  /// Optional. Immutable.
  core.Map<core.String, core.String>? tags;

  GoogleFirestoreAdminV1RestoreDatabaseRequest({
    this.backup,
    this.databaseId,
    this.encryptionConfig,
    this.tags,
  });

  GoogleFirestoreAdminV1RestoreDatabaseRequest.fromJson(core.Map json_)
    : this(
        backup: json_['backup'] as core.String?,
        databaseId: json_['databaseId'] as core.String?,
        encryptionConfig: json_.containsKey('encryptionConfig')
            ? GoogleFirestoreAdminV1EncryptionConfig.fromJson(
                json_['encryptionConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backup = this.backup;
    final databaseId = this.databaseId;
    final encryptionConfig = this.encryptionConfig;
    final tags = this.tags;
    return {
      'backup': ?backup,
      'databaseId': ?databaseId,
      'encryptionConfig': ?encryptionConfig,
      'tags': ?tags,
    };
  }
}

/// The configuration options for using the same encryption method as the
/// source.
typedef GoogleFirestoreAdminV1SourceEncryptionOptions = $Empty;

/// Information about the provenance of this database.
class GoogleFirestoreAdminV1SourceInfo {
  /// If set, this database was restored from the specified backup (or a
  /// snapshot thereof).
  GoogleFirestoreAdminV1BackupSource? backup;

  /// The associated long-running operation.
  ///
  /// This field may not be set after the operation has completed. Format:
  /// `projects/{project}/databases/{database}/operations/{operation}`.
  core.String? operation;

  GoogleFirestoreAdminV1SourceInfo({this.backup, this.operation});

  GoogleFirestoreAdminV1SourceInfo.fromJson(core.Map json_)
    : this(
        backup: json_.containsKey('backup')
            ? GoogleFirestoreAdminV1BackupSource.fromJson(
                json_['backup'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operation: json_['operation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backup = this.backup;
    final operation = this.operation;
    return {'backup': ?backup, 'operation': ?operation};
  }
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
        documentCount: json_['documentCount'] as core.String?,
        indexCount: json_['indexCount'] as core.String?,
        sizeBytes: json_['sizeBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documentCount = this.documentCount;
    final indexCount = this.indexCount;
    final sizeBytes = this.sizeBytes;
    return {
      'documentCount': ?documentCount,
      'indexCount': ?indexCount,
      'sizeBytes': ?sizeBytes,
    };
  }
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

  GoogleFirestoreAdminV1TtlConfig({this.state});

  GoogleFirestoreAdminV1TtlConfig.fromJson(core.Map json_)
    : this(state: json_['state'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final state = this.state;
    return {'state': ?state};
  }
}

/// A Cloud Firestore User Creds.
class GoogleFirestoreAdminV1UserCreds {
  /// The time the user creds were created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// The resource name of the UserCreds. Format:
  /// `projects/{project}/databases/{database}/userCreds/{user_creds}`
  core.String? name;

  /// Resource Identity descriptor.
  GoogleFirestoreAdminV1ResourceIdentity? resourceIdentity;

  /// The plaintext server-generated password for the user creds.
  ///
  /// Only populated in responses for CreateUserCreds and ResetUserPassword.
  ///
  /// Output only.
  core.String? securePassword;

  /// Whether the user creds are enabled or disabled.
  ///
  /// Defaults to ENABLED on creation.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. Should not be used.
  /// - "ENABLED" : The user creds are enabled.
  /// - "DISABLED" : The user creds are disabled.
  core.String? state;

  /// The time the user creds were last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleFirestoreAdminV1UserCreds({
    this.createTime,
    this.name,
    this.resourceIdentity,
    this.securePassword,
    this.state,
    this.updateTime,
  });

  GoogleFirestoreAdminV1UserCreds.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        resourceIdentity: json_.containsKey('resourceIdentity')
            ? GoogleFirestoreAdminV1ResourceIdentity.fromJson(
                json_['resourceIdentity']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        securePassword: json_['securePassword'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final name = this.name;
    final resourceIdentity = this.resourceIdentity;
    final securePassword = this.securePassword;
    final state = this.state;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'name': ?name,
      'resourceIdentity': ?resourceIdentity,
      'securePassword': ?securePassword,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }
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

  GoogleFirestoreAdminV1VectorConfig({this.dimension, this.flat});

  GoogleFirestoreAdminV1VectorConfig.fromJson(core.Map json_)
    : this(
        dimension: json_['dimension'] as core.int?,
        flat: json_.containsKey('flat')
            ? GoogleFirestoreAdminV1FlatIndex.fromJson(
                json_['flat'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dimension = this.dimension;
    final flat = this.flat;
    return {'dimension': ?dimension, 'flat': ?flat};
  }
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

  GoogleFirestoreAdminV1WeeklyRecurrence({this.day});

  GoogleFirestoreAdminV1WeeklyRecurrence.fromJson(core.Map json_)
    : this(day: json_['day'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final day = this.day;
    return {'day': ?day};
  }
}

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => GoogleLongrunningOperation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
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
        done: json_['done'] as core.bool?,
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
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

  ListCollectionIdsRequest({this.pageSize, this.pageToken, this.readTime});

  ListCollectionIdsRequest.fromJson(core.Map json_)
    : this(
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        readTime: json_['readTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final readTime = this.readTime;
    return {
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'readTime': ?readTime,
    };
  }
}

/// The response from Firestore.ListCollectionIds.
class ListCollectionIdsResponse {
  /// The collection ids.
  core.List<core.String>? collectionIds;

  /// A page token that may be used to continue the list.
  core.String? nextPageToken;

  ListCollectionIdsResponse({this.collectionIds, this.nextPageToken});

  ListCollectionIdsResponse.fromJson(core.Map json_)
    : this(
        collectionIds: (json_['collectionIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final collectionIds = this.collectionIds;
    final nextPageToken = this.nextPageToken;
    return {'collectionIds': ?collectionIds, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for Firestore.ListDocuments.
class ListDocumentsResponse {
  /// The Documents found.
  core.List<Document>? documents;

  /// A token to retrieve the next page of documents.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDocumentsResponse({this.documents, this.nextPageToken});

  ListDocumentsResponse.fromJson(core.Map json_)
    : this(
        documents: (json_['documents'] as core.List?)
            ?.map(
              (value) => Document.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final documents = this.documents;
    final nextPageToken = this.nextPageToken;
    return {'documents': ?documents, 'nextPageToken': ?nextPageToken};
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => Location.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
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

  MapValue({this.fields});

  MapValue.fromJson(core.Map json_)
    : this(
        fields: (json_['fields'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(
            key,
            Value.fromJson(value as core.Map<core.String, core.dynamic>),
          ),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    return {'fields': ?fields};
  }
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

  Order({this.direction, this.field});

  Order.fromJson(core.Map json_)
    : this(
        direction: json_['direction'] as core.String?,
        field: json_.containsKey('field')
            ? FieldReference.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final direction = this.direction;
    final field = this.field;
    return {'direction': ?direction, 'field': ?field};
  }
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
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        partitionCount: json_['partitionCount'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        structuredQuery: json_.containsKey('structuredQuery')
            ? StructuredQuery.fromJson(
                json_['structuredQuery'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final partitionCount = this.partitionCount;
    final readTime = this.readTime;
    final structuredQuery = this.structuredQuery;
    return {
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'partitionCount': ?partitionCount,
      'readTime': ?readTime,
      'structuredQuery': ?structuredQuery,
    };
  }
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

  PartitionQueryResponse({this.nextPageToken, this.partitions});

  PartitionQueryResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        partitions: (json_['partitions'] as core.List?)
            ?.map(
              (value) =>
                  Cursor.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final partitions = this.partitions;
    return {'nextPageToken': ?nextPageToken, 'partitions': ?partitions};
  }
}

/// A Firestore query represented as an ordered list of operations / stages.
class Pipeline {
  /// Ordered list of stages to evaluate.
  ///
  /// Required.
  core.List<Stage>? stages;

  Pipeline({this.stages});

  Pipeline.fromJson(core.Map json_)
    : this(
        stages: (json_['stages'] as core.List?)
            ?.map(
              (value) =>
                  Stage.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final stages = this.stages;
    return {'stages': ?stages};
  }
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

  Precondition({this.exists, this.updateTime});

  Precondition.fromJson(core.Map json_)
    : this(
        exists: json_['exists'] as core.bool?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exists = this.exists;
    final updateTime = this.updateTime;
    return {'exists': ?exists, 'updateTime': ?updateTime};
  }
}

/// The projection of document's fields to return.
class Projection {
  /// The fields to return.
  ///
  /// If empty, all fields are returned. To only return the name of the
  /// document, use `['__name__']`.
  core.List<FieldReference>? fields;

  Projection({this.fields});

  Projection.fromJson(core.Map json_)
    : this(
        fields: (json_['fields'] as core.List?)
            ?.map(
              (value) => FieldReference.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    return {'fields': ?fields};
  }
}

/// Options for a transaction that can only be used to read documents.
class ReadOnly {
  /// Reads documents at the given time.
  ///
  /// This must be a microsecond precision timestamp within the past one hour,
  /// or if Point-in-Time Recovery is enabled, can additionally be a whole
  /// minute timestamp within the past 7 days.
  core.String? readTime;

  ReadOnly({this.readTime});

  ReadOnly.fromJson(core.Map json_)
    : this(readTime: json_['readTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final readTime = this.readTime;
    return {'readTime': ?readTime};
  }
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
    retryTransaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  ReadWrite({this.retryTransaction});

  ReadWrite.fromJson(core.Map json_)
    : this(retryTransaction: json_['retryTransaction'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final retryTransaction = this.retryTransaction;
    return {'retryTransaction': ?retryTransaction};
  }
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
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  RollbackRequest({this.transaction});

  RollbackRequest.fromJson(core.Map json_)
    : this(transaction: json_['transaction'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final transaction = this.transaction;
    return {'transaction': ?transaction};
  }
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
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
            ? ExplainOptions.fromJson(
                json_['explainOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newTransaction: json_.containsKey('newTransaction')
            ? TransactionOptions.fromJson(
                json_['newTransaction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        readTime: json_['readTime'] as core.String?,
        structuredAggregationQuery:
            json_.containsKey('structuredAggregationQuery')
            ? StructuredAggregationQuery.fromJson(
                json_['structuredAggregationQuery']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final explainOptions = this.explainOptions;
    final newTransaction = this.newTransaction;
    final readTime = this.readTime;
    final structuredAggregationQuery = this.structuredAggregationQuery;
    final transaction = this.transaction;
    return {
      'explainOptions': ?explainOptions,
      'newTransaction': ?newTransaction,
      'readTime': ?readTime,
      'structuredAggregationQuery': ?structuredAggregationQuery,
      'transaction': ?transaction,
    };
  }
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
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
            ? ExplainMetrics.fromJson(
                json_['explainMetrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        readTime: json_['readTime'] as core.String?,
        result: json_.containsKey('result')
            ? AggregationResult.fromJson(
                json_['result'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final explainMetrics = this.explainMetrics;
    final readTime = this.readTime;
    final result = this.result;
    final transaction = this.transaction;
    return {
      'explainMetrics': ?explainMetrics,
      'readTime': ?readTime,
      'result': ?result,
      'transaction': ?transaction,
    };
  }
}

/// The response for Firestore.RunAggregationQuery.
typedef RunAggregationQueryResponse =
    core.List<RunAggregationQueryResponseElement>;

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
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
            ? ExplainOptions.fromJson(
                json_['explainOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        newTransaction: json_.containsKey('newTransaction')
            ? TransactionOptions.fromJson(
                json_['newTransaction'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        readTime: json_['readTime'] as core.String?,
        structuredQuery: json_.containsKey('structuredQuery')
            ? StructuredQuery.fromJson(
                json_['structuredQuery'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final explainOptions = this.explainOptions;
    final newTransaction = this.newTransaction;
    final readTime = this.readTime;
    final structuredQuery = this.structuredQuery;
    final transaction = this.transaction;
    return {
      'explainOptions': ?explainOptions,
      'newTransaction': ?newTransaction,
      'readTime': ?readTime,
      'structuredQuery': ?structuredQuery,
      'transaction': ?transaction,
    };
  }
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
    transaction = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
                json_['document'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        done: json_['done'] as core.bool?,
        explainMetrics: json_.containsKey('explainMetrics')
            ? ExplainMetrics.fromJson(
                json_['explainMetrics'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        readTime: json_['readTime'] as core.String?,
        skippedResults: json_['skippedResults'] as core.int?,
        transaction: json_['transaction'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final document = this.document;
    final done = this.done;
    final explainMetrics = this.explainMetrics;
    final readTime = this.readTime;
    final skippedResults = this.skippedResults;
    final transaction = this.transaction;
    return {
      'document': ?document,
      'done': ?done,
      'explainMetrics': ?explainMetrics,
      'readTime': ?readTime,
      'skippedResults': ?skippedResults,
      'transaction': ?transaction,
    };
  }
}

/// The response for Firestore.RunQuery.
typedef RunQueryResponse = core.List<RunQueryResponseElement>;

/// A single operation within a pipeline.
///
/// A stage is made up of a unique name, and a list of arguments. The exact
/// number of arguments & types is dependent on the stage type. To give an
/// example, the stage `filter(state = "MD")` would be encoded as: ``` name:
/// "filter" args { function_value { name: "eq" args { field_reference_value:
/// "state" } args { string_value: "MD" } } } ``` See public documentation for
/// the full list.
class Stage {
  /// Ordered list of arguments the given stage expects.
  ///
  /// Optional.
  core.List<Value>? args;

  /// The name of the stage to evaluate.
  ///
  /// **Requires:** * must be in snake case (lower case with underscore
  /// separator).
  ///
  /// Required.
  core.String? name;

  /// Optional named arguments that certain functions may support.
  ///
  /// Optional.
  core.Map<core.String, Value>? options;

  Stage({this.args, this.name, this.options});

  Stage.fromJson(core.Map json_)
    : this(
        args: (json_['args'] as core.List?)
            ?.map(
              (value) =>
                  Value.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        name: json_['name'] as core.String?,
        options: (json_['options'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Value.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final args = this.args;
    final name = this.name;
    final options = this.options;
    return {'args': ?args, 'name': ?name, 'options': ?options};
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

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

  StructuredAggregationQuery({this.aggregations, this.structuredQuery});

  StructuredAggregationQuery.fromJson(core.Map json_)
    : this(
        aggregations: (json_['aggregations'] as core.List?)
            ?.map(
              (value) => Aggregation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        structuredQuery: json_.containsKey('structuredQuery')
            ? StructuredQuery.fromJson(
                json_['structuredQuery'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final aggregations = this.aggregations;
    final structuredQuery = this.structuredQuery;
    return {'aggregations': ?aggregations, 'structuredQuery': ?structuredQuery};
  }
}

/// A Firestore query represented as an ordered list of operations / stages.
///
/// This is considered the top-level function which plans and executes a query.
/// It is logically equivalent to `query(stages, options)`, but prevents the
/// client from having to build a function wrapper.
class StructuredPipeline {
  /// Optional query-level arguments.
  ///
  ///
  ///
  /// Optional.
  core.Map<core.String, Value>? options;

  /// The pipeline query to execute.
  ///
  /// Required.
  Pipeline? pipeline;

  StructuredPipeline({this.options, this.pipeline});

  StructuredPipeline.fromJson(core.Map json_)
    : this(
        options: (json_['options'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                Value.fromJson(value as core.Map<core.String, core.dynamic>),
              ),
            ),
        pipeline: json_.containsKey('pipeline')
            ? Pipeline.fromJson(
                json_['pipeline'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final options = this.options;
    final pipeline = this.pipeline;
    return {'options': ?options, 'pipeline': ?pipeline};
  }
}

/// A Firestore query.
///
/// The query stages are executed in the following order: 1. from 2. where 3.
/// select 4. order_by + start_at + end_at 5. offset 6. limit 7. find_nearest
class StructuredQuery {
  /// A potential prefix of a position in the result set to end the query at.
  ///
  /// This is similar to `START_AT` but with it controlling the end position
  /// rather than the start position. Requires: * The number of values cannot be
  /// greater than the number of fields specified in the `ORDER BY` clause.
  Cursor? endAt;

  /// A potential nearest neighbors search.
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
                json_['endAt'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        findNearest: json_.containsKey('findNearest')
            ? FindNearest.fromJson(
                json_['findNearest'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        from: (json_['from'] as core.List?)
            ?.map(
              (value) => CollectionSelector.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        limit: json_['limit'] as core.int?,
        offset: json_['offset'] as core.int?,
        orderBy: (json_['orderBy'] as core.List?)
            ?.map(
              (value) =>
                  Order.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        select: json_.containsKey('select')
            ? Projection.fromJson(
                json_['select'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        startAt: json_.containsKey('startAt')
            ? Cursor.fromJson(
                json_['startAt'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        where: json_.containsKey('where')
            ? Filter.fromJson(
                json_['where'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final endAt = this.endAt;
    final findNearest = this.findNearest;
    final from = this.from;
    final limit = this.limit;
    final offset = this.offset;
    final orderBy = this.orderBy;
    final select = this.select;
    final startAt = this.startAt;
    final where = this.where;
    return {
      'endAt': ?endAt,
      'findNearest': ?findNearest,
      'from': ?from,
      'limit': ?limit,
      'offset': ?offset,
      'orderBy': ?orderBy,
      'select': ?select,
      'startAt': ?startAt,
      'where': ?where,
    };
  }
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

  Sum({this.field});

  Sum.fromJson(core.Map json_)
    : this(
        field: json_.containsKey('field')
            ? FieldReference.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final field = this.field;
    return {'field': ?field};
  }
}

/// Options for creating a new transaction.
class TransactionOptions {
  /// The transaction can only be used for read operations.
  ReadOnly? readOnly;

  /// The transaction can be used for both read and write operations.
  ReadWrite? readWrite;

  TransactionOptions({this.readOnly, this.readWrite});

  TransactionOptions.fromJson(core.Map json_)
    : this(
        readOnly: json_.containsKey('readOnly')
            ? ReadOnly.fromJson(
                json_['readOnly'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        readWrite: json_.containsKey('readWrite')
            ? ReadWrite.fromJson(
                json_['readWrite'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final readOnly = this.readOnly;
    final readWrite = this.readWrite;
    return {'readOnly': ?readOnly, 'readWrite': ?readWrite};
  }
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

  UnaryFilter({this.field, this.op});

  UnaryFilter.fromJson(core.Map json_)
    : this(
        field: json_.containsKey('field')
            ? FieldReference.fromJson(
                json_['field'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        op: json_['op'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final field = this.field;
    final op = this.op;
    return {'field': ?field, 'op': ?op};
  }
}

/// A message that can hold any of the supported value types.
class Value {
  /// An array value.
  ///
  /// Cannot directly contain another array value, though can contain a map
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
    bytesValue = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// A double value.
  core.double? doubleValue;

  /// Value which references a field.
  ///
  /// This is considered relative (vs absolute) since it only refers to a field
  /// and not a field within a particular document. **Requires:** * Must follow
  /// field reference limitations. * Not allowed to be used when writing
  /// documents.
  core.String? fieldReferenceValue;

  /// A value that represents an unevaluated expression.
  ///
  /// **Requires:** * Not allowed to be used when writing documents.
  Function_? functionValue;

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

  /// A value that represents an unevaluated pipeline.
  ///
  /// **Requires:** * Not allowed to be used when writing documents.
  Pipeline? pipelineValue;

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
    this.fieldReferenceValue,
    this.functionValue,
    this.geoPointValue,
    this.integerValue,
    this.mapValue,
    this.nullValue,
    this.pipelineValue,
    this.referenceValue,
    this.stringValue,
    this.timestampValue,
  });

  Value.fromJson(core.Map json_)
    : this(
        arrayValue: json_.containsKey('arrayValue')
            ? ArrayValue.fromJson(
                json_['arrayValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        booleanValue: json_['booleanValue'] as core.bool?,
        bytesValue: json_['bytesValue'] as core.String?,
        doubleValue: (json_['doubleValue'] as core.num?)?.toDouble(),
        fieldReferenceValue: json_['fieldReferenceValue'] as core.String?,
        functionValue: json_.containsKey('functionValue')
            ? Function_.fromJson(
                json_['functionValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        geoPointValue: json_.containsKey('geoPointValue')
            ? LatLng.fromJson(
                json_['geoPointValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        integerValue: json_['integerValue'] as core.String?,
        mapValue: json_.containsKey('mapValue')
            ? MapValue.fromJson(
                json_['mapValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        nullValue: json_.containsKey('nullValue') ? 'NULL_VALUE' : null,
        pipelineValue: json_.containsKey('pipelineValue')
            ? Pipeline.fromJson(
                json_['pipelineValue'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        referenceValue: json_['referenceValue'] as core.String?,
        stringValue: json_['stringValue'] as core.String?,
        timestampValue: json_['timestampValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final arrayValue = this.arrayValue;
    final booleanValue = this.booleanValue;
    final bytesValue = this.bytesValue;
    final doubleValue = this.doubleValue;
    final fieldReferenceValue = this.fieldReferenceValue;
    final functionValue = this.functionValue;
    final geoPointValue = this.geoPointValue;
    final integerValue = this.integerValue;
    final mapValue = this.mapValue;
    final nullValue = this.nullValue;
    final pipelineValue = this.pipelineValue;
    final referenceValue = this.referenceValue;
    final stringValue = this.stringValue;
    final timestampValue = this.timestampValue;
    return {
      'arrayValue': ?arrayValue,
      'booleanValue': ?booleanValue,
      'bytesValue': ?bytesValue,
      'doubleValue': ?doubleValue,
      'fieldReferenceValue': ?fieldReferenceValue,
      'functionValue': ?functionValue,
      'geoPointValue': ?geoPointValue,
      'integerValue': ?integerValue,
      'mapValue': ?mapValue,
      'nullValue': ?nullValue,
      'pipelineValue': ?pipelineValue,
      'referenceValue': ?referenceValue,
      'stringValue': ?stringValue,
      'timestampValue': ?timestampValue,
    };
  }
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
            ? Precondition.fromJson(
                json_['currentDocument'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        delete: json_['delete'] as core.String?,
        transform: json_.containsKey('transform')
            ? DocumentTransform.fromJson(
                json_['transform'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        update: json_.containsKey('update')
            ? Document.fromJson(
                json_['update'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_.containsKey('updateMask')
            ? DocumentMask.fromJson(
                json_['updateMask'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTransforms: (json_['updateTransforms'] as core.List?)
            ?.map(
              (value) => FieldTransform.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final currentDocument = this.currentDocument;
    final delete = this.delete;
    final transform = this.transform;
    final update = this.update;
    final updateMask = this.updateMask;
    final updateTransforms = this.updateTransforms;
    return {
      'currentDocument': ?currentDocument,
      'delete': ?delete,
      'transform': ?transform,
      'update': ?update,
      'updateMask': ?updateMask,
      'updateTransforms': ?updateTransforms,
    };
  }
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
    streamToken = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The writes to apply.
  ///
  /// Always executed atomically and in order. This must be empty on the first
  /// request. This may be empty on the last request. This must not be empty on
  /// all other requests.
  core.List<Write>? writes;

  WriteRequest({this.labels, this.streamId, this.streamToken, this.writes});

  WriteRequest.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        streamId: json_['streamId'] as core.String?,
        streamToken: json_['streamToken'] as core.String?,
        writes: (json_['writes'] as core.List?)
            ?.map(
              (value) =>
                  Write.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final labels = this.labels;
    final streamId = this.streamId;
    final streamToken = this.streamToken;
    final writes = this.writes;
    return {
      'labels': ?labels,
      'streamId': ?streamId,
      'streamToken': ?streamToken,
      'writes': ?writes,
    };
  }
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
    streamToken = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
        commitTime: json_['commitTime'] as core.String?,
        streamId: json_['streamId'] as core.String?,
        streamToken: json_['streamToken'] as core.String?,
        writeResults: (json_['writeResults'] as core.List?)
            ?.map(
              (value) => WriteResult.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final commitTime = this.commitTime;
    final streamId = this.streamId;
    final streamToken = this.streamToken;
    final writeResults = this.writeResults;
    return {
      'commitTime': ?commitTime,
      'streamId': ?streamId,
      'streamToken': ?streamToken,
      'writeResults': ?writeResults,
    };
  }
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

  WriteResult({this.transformResults, this.updateTime});

  WriteResult.fromJson(core.Map json_)
    : this(
        transformResults: (json_['transformResults'] as core.List?)
            ?.map(
              (value) =>
                  Value.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final transformResults = this.transformResults;
    final updateTime = this.updateTime;
    return {'transformResults': ?transformResults, 'updateTime': ?updateTime};
  }
}
