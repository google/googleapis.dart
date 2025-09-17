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

/// Cloud SQL Admin API - v1beta4
///
/// API for Cloud SQL database instance management
///
/// For more information, see <https://developers.google.com/cloud-sql/>
///
/// Create an instance of [SQLAdminApi] to access these resources:
///
/// - [BackupRunsResource]
/// - [BackupsResource]
/// - [ConnectResource]
/// - [DatabasesResource]
/// - [FlagsResource]
/// - [InstancesResource]
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsInstancesResource]
/// - [SslCertsResource]
/// - [TiersResource]
/// - [UsersResource]
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

/// API for Cloud SQL database instance management
class SQLAdminApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google SQL Service instances
  static const sqlserviceAdminScope =
      'https://www.googleapis.com/auth/sqlservice.admin';

  final commons.ApiRequester _requester;

  BackupRunsResource get backupRuns => BackupRunsResource(_requester);
  BackupsResource get backups => BackupsResource(_requester);
  ConnectResource get connect => ConnectResource(_requester);
  DatabasesResource get databases => DatabasesResource(_requester);
  FlagsResource get flags => FlagsResource(_requester);
  InstancesResource get instances => InstancesResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  SslCertsResource get sslCerts => SslCertsResource(_requester);
  TiersResource get tiers => TiersResource(_requester);
  UsersResource get users => UsersResource(_requester);

  SQLAdminApi(
    http.Client client, {
    core.String rootUrl = 'https://sqladmin.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class BackupRunsResource {
  final commons.ApiRequester _requester;

  BackupRunsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes the backup taken by a backup run.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [id] - The ID of the backup run to delete. To find a backup run ID, use
  /// the
  /// [list](https://cloud.google.com/sql/docs/mysql/admin-api/rest/v1beta4/backupRuns/list)
  /// method.
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
    core.String project,
    core.String instance,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/backupRuns/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a resource containing information about a backup run.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [id] - The ID of this backup run.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BackupRun].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BackupRun> get(
    core.String project,
    core.String instance,
    core.String id, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/backupRuns/' +
        commons.escapeVariable('$id');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BackupRun.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new backup run on demand.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> insert(
    BackupRun request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/backupRuns';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all backup runs associated with the project or a given instance and
  /// configuration in the reverse chronological order of the backup initiation
  /// time.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID, or "-" for all instances. This does
  /// not include the project ID.
  ///
  /// [maxResults] - Maximum number of backup runs per response.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BackupRunsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BackupRunsListResponse> list(
    core.String project,
    core.String instance, {
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/backupRuns';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BackupRunsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class BackupsResource {
  final commons.ApiRequester _requester;

  BackupsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a backup for a Cloud SQL instance.
  ///
  /// This API can be used only to create on-demand backups.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this backup is created.
  /// Format: projects/{project}
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Operation> createBackup(
    Backup request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the backup to delete. Format:
  /// projects/{project}/backups/{backup}
  /// Value must have pattern `^projects/\[^/\]+/backups/\[^/\]+$`.
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
  async.Future<Operation> deleteBackup(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a resource containing information about a backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the backup to retrieve. Format:
  /// projects/{project}/backups/{backup}
  /// Value must have pattern `^projects/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> getBackup(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all backups associated with the project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns this collection of backups.
  /// Format: projects/{project}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - Multiple filter queries are separated by spaces. For example,
  /// 'instance:abc AND type:FINAL, 'location:us',
  /// 'backupInterval.startTime\>=1950-01-01T01:01:25.771Z'. You can filter by
  /// type, instance, backupInterval.startTime (creation time), or location.
  ///
  /// [pageSize] - The maximum number of backups to return per response. The
  /// service might return fewer backups than this value. If a value for this
  /// parameter isn't specified, then, at most, 500 backups are returned. The
  /// maximum value is 2,000. Any values that you set, which are greater than
  /// 2,000, are changed to 2,000.
  ///
  /// [pageToken] - A page token, received from a previous `ListBackups` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListBackups` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupsResponse> listBackups(
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

    final url_ = 'sql/v1beta4/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the retention period and the description of the backup.
  ///
  /// You can use this API to update final backups only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name of the backup. Format:
  /// projects/{project}/backups/{backup}.
  /// Value must have pattern `^projects/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields that you can update. You can update only
  /// the description and retention period of the final backup.
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
  async.Future<Operation> updateBackup(
    Backup request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ConnectResource {
  final commons.ApiRequester _requester;

  ConnectResource(commons.ApiRequester client) : _requester = client;

  /// Generates a short-lived X509 certificate containing the provided public
  /// key and signed by a private key specific to the target instance.
  ///
  /// Users may use the certificate to authenticate as themselves when
  /// connecting to the database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateEphemeralCertResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateEphemeralCertResponse> generateEphemeralCert(
    GenerateEphemeralCertRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        ':generateEphemeralCert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateEphemeralCertResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Retrieves connect settings about a Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [readTime] - Optional. Optional snapshot read timestamp to trade freshness
  /// for performance.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectSettings> get(
    core.String project,
    core.String instance, {
    core.String? readTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/connectSettings';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ConnectSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class DatabasesResource {
  final commons.ApiRequester _requester;

  DatabasesResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a database from a Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [database] - Name of the database to be deleted in the instance.
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
    core.String project,
    core.String instance,
    core.String database, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases/' +
        commons.escapeVariable('$database');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a resource containing information about a database inside a
  /// Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [database] - Name of the database in the instance.
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
    core.String project,
    core.String instance,
    core.String database, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases/' +
        commons.escapeVariable('$database');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a resource containing information about a database inside a Cloud
  /// SQL instance.
  ///
  /// **Note:** You can't modify the default character set and collation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
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
  async.Future<Operation> insert(
    Database request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists databases in the specified Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatabasesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatabasesListResponse> list(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DatabasesListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Partially updates a resource containing information about a database
  /// inside a Cloud SQL instance.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [database] - Name of the database to be updated in the instance.
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
  async.Future<Operation> patch(
    Database request,
    core.String project,
    core.String instance,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases/' +
        commons.escapeVariable('$database');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a resource containing information about a database inside a Cloud
  /// SQL instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [database] - Name of the database to be updated in the instance.
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
    Database request,
    core.String project,
    core.String instance,
    core.String database, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases/' +
        commons.escapeVariable('$database');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class FlagsResource {
  final commons.ApiRequester _requester;

  FlagsResource(commons.ApiRequester client) : _requester = client;

  /// Lists all available database flags for Cloud SQL instances.
  ///
  /// Request parameters:
  ///
  /// [databaseVersion] - Database type and version you want to retrieve flags
  /// for. By default, this method returns flags for all database types and
  /// versions.
  ///
  /// [flagScope] - Optional. Specify the scope of flags to be returned by
  /// SqlFlagsListService. Return list of database flags if unspecified.
  /// Possible string values are:
  /// - "SQL_FLAG_SCOPE_UNSPECIFIED" : Assume database flags if unspecified
  /// - "SQL_FLAG_SCOPE_DATABASE" : database flags
  /// - "SQL_FLAG_SCOPE_CONNECTION_POOL" : connection pool configuration flags
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FlagsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FlagsListResponse> list({
    core.String? databaseVersion,
    core.String? flagScope,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (databaseVersion != null) 'databaseVersion': [databaseVersion],
      if (flagScope != null) 'flagScope': [flagScope],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'sql/v1beta4/flags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FlagsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class InstancesResource {
  final commons.ApiRequester _requester;

  InstancesResource(commons.ApiRequester client) : _requester = client;

  /// Lists all versions of server certificates and certificate authorities
  /// (CAs) for the specified instance.
  ///
  /// There can be up to three sets of certs listed: the certificate that is
  /// currently in use, a future that has been added but not yet used to sign a
  /// certificate, and a certificate that has been rotated out. For instances
  /// not using Certificate Authority Service (CAS) server CA, use ListServerCas
  /// instead.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. Project ID of the project that contains the
  /// instance.
  ///
  /// [instance] - Required. Cloud SQL instance ID. This does not include the
  /// project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstancesListServerCertificatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstancesListServerCertificatesResponse> ListServerCertificates(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/listServerCertificates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InstancesListServerCertificatesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Rotates the server certificate version to one previously added with the
  /// addServerCertificate method.
  ///
  /// For instances not using Certificate Authority Service (CAS) server CA, use
  /// RotateServerCa instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. Project ID of the project that contains the
  /// instance.
  ///
  /// [instance] - Required. Cloud SQL instance ID. This does not include the
  /// project ID.
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
  async.Future<Operation> RotateServerCertificate(
    InstancesRotateServerCertificateRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/rotateServerCertificate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Acquire a lease for the setup of SQL Server Reporting Services (SSRS).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. ID of the project that contains the instance
  /// (Example: project-id).
  ///
  /// [instance] - Required. Cloud SQL instance ID. This doesn't include the
  /// project ID. It's composed of lowercase letters, numbers, and hyphens, and
  /// it must start with a letter. The total length must be 98 characters or
  /// less (Example: instance-id).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SqlInstancesAcquireSsrsLeaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SqlInstancesAcquireSsrsLeaseResponse> acquireSsrsLease(
    InstancesAcquireSsrsLeaseRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/acquireSsrsLease';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SqlInstancesAcquireSsrsLeaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Add a new trusted Certificate Authority (CA) version for the specified
  /// instance.
  ///
  /// Required to prepare for a certificate rotation. If a CA version was
  /// previously added but never used in a certificate rotation, this operation
  /// replaces that version. There cannot be more than one CA version waiting to
  /// be rotated in. For instances that have enabled Certificate Authority
  /// Service (CAS) based server CA, use AddServerCertificate to add a new
  /// server certificate.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> addServerCa(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/addServerCa';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Add a new trusted server certificate version for the specified instance
  /// using Certificate Authority Service (CAS) server CA.
  ///
  /// Required to prepare for a certificate rotation. If a server certificate
  /// version was previously added but never used in a certificate rotation,
  /// this operation replaces that version. There cannot be more than one
  /// certificate version waiting to be rotated in. For instances not using CAS
  /// server CA, use AddServerCa instead.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. Project ID of the project that contains the
  /// instance.
  ///
  /// [instance] - Required. Cloud SQL instance ID. This does not include the
  /// project ID.
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
  async.Future<Operation> addServerCertificate(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/addServerCertificate';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Cloud SQL instance as a clone of the source instance.
  ///
  /// Using this operation might cause your instance to restart.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the source as well as the clone Cloud SQL
  /// instance.
  ///
  /// [instance] - The ID of the Cloud SQL instance to be cloned (source). This
  /// does not include the project ID.
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
  async.Future<Operation> clone(
    InstancesCloneRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/clone';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance to be
  /// deleted.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [enableFinalBackup] - Flag to opt-in for final backup. By default, it is
  /// turned off.
  ///
  /// [finalBackupDescription] - Optional. The description of the final backup.
  ///
  /// [finalBackupExpiryTime] - Optional. Final Backup expiration time.
  /// Timestamp in UTC of when this resource is considered expired.
  ///
  /// [finalBackupTtlDays] - Optional. Retention period of the final backup.
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
    core.String project,
    core.String instance, {
    core.bool? enableFinalBackup,
    core.String? finalBackupDescription,
    core.String? finalBackupExpiryTime,
    core.String? finalBackupTtlDays,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (enableFinalBackup != null)
        'enableFinalBackup': ['${enableFinalBackup}'],
      if (finalBackupDescription != null)
        'finalBackupDescription': [finalBackupDescription],
      if (finalBackupExpiryTime != null)
        'finalBackupExpiryTime': [finalBackupExpiryTime],
      if (finalBackupTtlDays != null)
        'finalBackupTtlDays': [finalBackupTtlDays],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Demotes an existing standalone instance to be a Cloud SQL read replica for
  /// an external database server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The project ID of the project that contains the
  /// instance.
  ///
  /// [instance] - Required. The name of the Cloud SQL instance.
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
  async.Future<Operation> demote(
    InstancesDemoteRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/demote';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Demotes the stand-alone instance to be a Cloud SQL read replica for an
  /// external database server.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance name.
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
  async.Future<Operation> demoteMaster(
    InstancesDemoteMasterRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/demoteMaster';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Execute SQL statements.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Required. Project ID of the project that contains the
  /// instance.
  ///
  /// [instance] - Required. Database instance ID. This does not include the
  /// project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SqlInstancesExecuteSqlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SqlInstancesExecuteSqlResponse> executeSql(
    ExecuteSqlPayload request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/executeSql';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SqlInstancesExecuteSqlResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Exports data from a Cloud SQL instance to a Cloud Storage bucket as a SQL
  /// dump or CSV file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance to be
  /// exported.
  ///
  /// [instance] - The Cloud SQL instance ID. This doesn't include the project
  /// ID.
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
  async.Future<Operation> export(
    InstancesExportRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/export';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Initiates a manual failover of a high availability (HA) primary instance
  /// to a standby instance, which becomes the primary instance.
  ///
  /// Users are then rerouted to the new primary. For more information, see the
  /// [Overview of high availability](https://cloud.google.com/sql/docs/mysql/high-availability)
  /// page in the Cloud SQL documentation. If using Legacy HA (MySQL only), this
  /// causes the instance to failover to its failover replica instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the read replica.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> failover(
    InstancesFailoverRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/failover';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a resource containing information about a Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatabaseInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatabaseInstance> get(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DatabaseInstance.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Imports data into a Cloud SQL instance from a SQL dump or CSV file in
  /// Cloud Storage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> import(
    InstancesImportRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Cloud SQL instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project to which the newly created Cloud SQL
  /// instances should belong.
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
  async.Future<Operation> insert(
    DatabaseInstance request,
    core.String project, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists instances under a given project.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project for which to list Cloud SQL
  /// instances.
  ///
  /// [filter] - A filter expression that filters resources listed in the
  /// response. The expression is in the form of field:value. For example,
  /// 'instanceType:CLOUD_SQL_INSTANCE'. Fields can be nested as needed as per
  /// their JSON representation, such as 'settings.userLabels.auto_start:true'.
  /// Multiple filter queries are space-separated. For example. 'state:RUNNABLE
  /// instanceType:CLOUD_SQL_INSTANCE'. By default, each expression is an AND
  /// expression. However, you can include AND and OR expressions explicitly.
  ///
  /// [maxResults] - The maximum number of instances to return. The service may
  /// return fewer than this value. If unspecified, at most 500 instances are
  /// returned. The maximum value is 1000; values above 1000 are coerced to
  /// 1000.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstancesListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstancesListResponse> list(
    core.String project, {
    core.String? filter,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InstancesListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all of the trusted Certificate Authorities (CAs) for the specified
  /// instance.
  ///
  /// There can be up to three CAs listed: the CA that was used to sign the
  /// certificate that is currently in use, a CA that has been added but not yet
  /// used to sign a certificate, and a CA used to sign a certificate that has
  /// previously rotated out.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstancesListServerCasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstancesListServerCasResponse> listServerCas(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/listServerCas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InstancesListServerCasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Partially updates settings of a Cloud SQL instance by merging the request
  /// with the current configuration.
  ///
  /// This method supports patch semantics.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> patch(
    DatabaseInstance request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Point in time restore for an instance managed by Google Cloud Backup and
  /// Disaster Recovery.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where you created this instance.
  /// Format: projects/{project}
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Operation> pointInTimeRestore(
    PointInTimeRestoreContext request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/' + core.Uri.encodeFull('$parent') + ':pointInTimeRestore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Promotes the read replica instance to be an independent Cloud SQL primary
  /// instance.
  ///
  /// Using this operation might cause your instance to restart.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the read replica.
  ///
  /// [instance] - Cloud SQL read replica instance name.
  ///
  /// [failover_1] - Set to true to invoke a replica failover to the DR replica.
  /// As part of replica failover, the promote operation attempts to add the
  /// original primary instance as a replica of the promoted DR replica when the
  /// original primary instance comes back online. If set to false or not
  /// specified, then the original primary instance becomes an independent Cloud
  /// SQL primary instance.
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
  async.Future<Operation> promoteReplica(
    core.String project,
    core.String instance, {
    core.bool? failover_1,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (failover_1 != null) 'failover': ['${failover_1}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/promoteReplica';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reencrypt CMEK instance with latest key version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> reencrypt(
    InstancesReencryptRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/reencrypt';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Release a lease for the setup of SQL Server Reporting Services (SSRS).
  ///
  /// Request parameters:
  ///
  /// [project] - Required. The ID of the project that contains the instance
  /// (Example: project-id).
  ///
  /// [instance] - Required. The Cloud SQL instance ID. This doesn't include the
  /// project ID. It's composed of lowercase letters, numbers, and hyphens, and
  /// it must start with a letter. The total length must be 98 characters or
  /// less (Example: instance-id).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SqlInstancesReleaseSsrsLeaseResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SqlInstancesReleaseSsrsLeaseResponse> releaseSsrsLease(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/releaseSsrsLease';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return SqlInstancesReleaseSsrsLeaseResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes all client certificates and generates a new server SSL certificate
  /// for the instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [mode] - Optional. Reset SSL mode to use.
  /// Possible string values are:
  /// - "RESET_SSL_MODE_UNSPECIFIED" : Reset SSL mode is not specified.
  /// - "ALL" : Refresh all TLS configs. This is the default behaviour.
  /// - "SYNC_FROM_PRIMARY" : Refreshes the replication-related TLS
  /// configuration settings provided by the primary instance. Not applicable to
  /// on-premises replication instances.
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
  async.Future<Operation> resetSslConfig(
    core.String project,
    core.String instance, {
    core.String? mode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mode != null) 'mode': [mode],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/resetSslConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restarts a Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance to be
  /// restarted.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> restart(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/restart';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a backup of a Cloud SQL instance.
  ///
  /// Using this operation might cause your instance to restart.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> restoreBackup(
    InstancesRestoreBackupRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/restoreBackup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Rotates the server certificate to one signed by the Certificate Authority
  /// (CA) version previously added with the addServerCA method.
  ///
  /// For instances that have enabled Certificate Authority Service (CAS) based
  /// server CA, use RotateServerCertificate to rotate the server certificate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> rotateServerCa(
    InstancesRotateServerCaRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/rotateServerCa';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Starts the replication in the read replica instance.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the read replica.
  ///
  /// [instance] - Cloud SQL read replica instance name.
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
  async.Future<Operation> startReplica(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/startReplica';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops the replication in the read replica instance.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the read replica.
  ///
  /// [instance] - Cloud SQL read replica instance name.
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
  async.Future<Operation> stopReplica(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/stopReplica';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Switches over from the primary instance to the DR replica instance.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the replica.
  ///
  /// [instance] - Cloud SQL read replica instance name.
  ///
  /// [dbTimeout] - Optional. (MySQL and PostgreSQL only) Cloud SQL instance
  /// operations timeout, which is a sum of all database operations. Default
  /// value is 10 minutes and can be modified to a maximum value of 24 hours.
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
  async.Future<Operation> switchover(
    core.String project,
    core.String instance, {
    core.String? dbTimeout,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dbTimeout != null) 'dbTimeout': [dbTimeout],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/switchover';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Truncate MySQL general and slow query log tables MySQL only.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the Cloud SQL project.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> truncateLog(
    InstancesTruncateLogRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/truncateLog';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates settings of a Cloud SQL instance.
  ///
  /// Using this operation might cause your instance to restart.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
    DatabaseInstance request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Cancels an instance operation that has been performed on an instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [operation] - Instance operation ID.
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
    core.String project,
    core.String operation, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/operations/' +
        commons.escapeVariable('$operation') +
        '/cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves an instance operation that has been performed on an instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [operation] - Instance operation ID.
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
    core.String project,
    core.String operation, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/operations/' +
        commons.escapeVariable('$operation');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all instance operations that have been performed on the given Cloud
  /// SQL instance in the reverse chronological order of the start time.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [maxResults] - Maximum number of operations per response.
  ///
  /// [pageToken] - A previously-returned page token representing part of the
  /// larger set of results to view.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OperationsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OperationsListResponse> list(
    core.String project, {
    core.String? instance,
    core.int? maxResults,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (instance != null) 'instance': [instance],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OperationsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesResource get instances =>
      ProjectsInstancesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesResource(commons.ApiRequester client) : _requester = client;

  /// Get Disk Shrink Config for a given instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SqlInstancesGetDiskShrinkConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SqlInstancesGetDiskShrinkConfigResponse> getDiskShrinkConfig(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/getDiskShrinkConfig';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SqlInstancesGetDiskShrinkConfigResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Get Latest Recovery Time for a given instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [sourceInstanceDeletionTime] - The timestamp used to identify the time
  /// when the source instance is deleted. If this instance is deleted, then you
  /// must set the timestamp.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SqlInstancesGetLatestRecoveryTimeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SqlInstancesGetLatestRecoveryTimeResponse> getLatestRecoveryTime(
    core.String project,
    core.String instance, {
    core.String? sourceInstanceDeletionTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (sourceInstanceDeletionTime != null)
        'sourceInstanceDeletionTime': [sourceInstanceDeletionTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/getLatestRecoveryTime';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SqlInstancesGetLatestRecoveryTimeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Perform Disk Shrink on primary instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> performDiskShrink(
    PerformDiskShrinkContext request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/performDiskShrink';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reschedules the maintenance on the given instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> rescheduleMaintenance(
    SqlInstancesRescheduleMaintenanceRequestBody request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/rescheduleMaintenance';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reset Replica Size to primary instance disk size.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the read replica.
  ///
  /// [instance] - Cloud SQL read replica instance name.
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
  async.Future<Operation> resetReplicaSize(
    SqlInstancesResetReplicaSizeRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/resetReplicaSize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Start External primary instance migration.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
  async.Future<Operation> startExternalSync(
    SqlInstancesStartExternalSyncRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/startExternalSync';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verify External primary instance external sync settings.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SqlInstancesVerifyExternalSyncSettingsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SqlInstancesVerifyExternalSyncSettingsResponse>
  verifyExternalSyncSettings(
    SqlInstancesVerifyExternalSyncSettingsRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/verifyExternalSyncSettings';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class SslCertsResource {
  final commons.ApiRequester _requester;

  SslCertsResource(commons.ApiRequester client) : _requester = client;

  /// Generates a short-lived X509 certificate containing the provided public
  /// key and signed by a private key specific to the target instance.
  ///
  /// Users may use the certificate to authenticate as themselves when
  /// connecting to the database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the Cloud SQL project.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SslCert].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SslCert> createEphemeral(
    SslCertsCreateEphemeralRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/createEphemeral';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SslCert.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the SSL certificate.
  ///
  /// For First Generation instances, the certificate remains valid until the
  /// instance is restarted.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [sha1Fingerprint] - Sha1 FingerPrint.
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
    core.String project,
    core.String instance,
    core.String sha1Fingerprint, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/sslCerts/' +
        commons.escapeVariable('$sha1Fingerprint');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a particular SSL certificate.
  ///
  /// Does not include the private key (required for usage). The private key
  /// must be saved from the response to initial creation.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [sha1Fingerprint] - Sha1 FingerPrint.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SslCert].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SslCert> get(
    core.String project,
    core.String instance,
    core.String sha1Fingerprint, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/sslCerts/' +
        commons.escapeVariable('$sha1Fingerprint');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SslCert.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates an SSL certificate and returns it along with the private key and
  /// server certificate authority.
  ///
  /// The new certificate will not be usable until the instance is restarted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SslCertsInsertResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SslCertsInsertResponse> insert(
    SslCertsInsertRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/sslCerts';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SslCertsInsertResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all of the current SSL certificates for the instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SslCertsListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SslCertsListResponse> list(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/sslCerts';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SslCertsListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class TiersResource {
  final commons.ApiRequester _requester;

  TiersResource(commons.ApiRequester client) : _requester = client;

  /// Lists all available machine types (tiers) for Cloud SQL, for example,
  /// `db-custom-1-3840`.
  ///
  /// For related information, see \[Pricing\](/sql/pricing).
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project for which to list tiers.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TiersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TiersListResponse> list(
    core.String project, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' + commons.escapeVariable('$project') + '/tiers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TiersListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class UsersResource {
  final commons.ApiRequester _requester;

  UsersResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a user from a Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [host] - Host of the user in the instance.
  ///
  /// [name] - Name of the user in the instance.
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
    core.String project,
    core.String instance, {
    core.String? host,
    core.String? name,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (host != null) 'host': [host],
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a resource containing information about a user.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [name] - User of the instance.
  ///
  /// [host] - Host of a user of the instance.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [User].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<User> get(
    core.String project,
    core.String instance,
    core.String name, {
    core.String? host,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (host != null) 'host': [host],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users/' +
        commons.escapeVariable('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return User.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new user in a Cloud SQL instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
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
  async.Future<Operation> insert(
    User request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists users in the specified Cloud SQL instance.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UsersListResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UsersListResponse> list(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return UsersListResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing user in a Cloud SQL instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Database instance ID. This does not include the project ID.
  ///
  /// [host] - Optional. Host of the user in the instance.
  ///
  /// [name] - Name of the user in the instance.
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
    User request,
    core.String project,
    core.String instance, {
    core.String? host,
    core.String? name,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (host != null) 'host': [host],
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users';

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// An entry for an Access Control list.
class AclEntry {
  /// The time when this access control entry expires in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? expirationTime;

  /// This is always `sql#aclEntry`.
  core.String? kind;

  /// A label to identify this entry.
  ///
  /// Optional.
  core.String? name;

  /// The allowlisted value for the access control list.
  core.String? value;

  AclEntry({this.expirationTime, this.kind, this.name, this.value});

  AclEntry.fromJson(core.Map json_)
    : this(
        expirationTime: json_['expirationTime'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (expirationTime != null) 'expirationTime': expirationTime!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
  };
}

/// Acquire SSRS lease context.
class AcquireSsrsLeaseContext {
  /// Lease duration needed for the SSRS setup.
  core.String? duration;

  /// The report database to be used for the SSRS setup.
  core.String? reportDatabase;

  /// The username to be used as the service login to connect to the report
  /// database for SSRS setup.
  core.String? serviceLogin;

  /// The username to be used as the setup login to connect to the database
  /// server for SSRS setup.
  core.String? setupLogin;

  AcquireSsrsLeaseContext({
    this.duration,
    this.reportDatabase,
    this.serviceLogin,
    this.setupLogin,
  });

  AcquireSsrsLeaseContext.fromJson(core.Map json_)
    : this(
        duration: json_['duration'] as core.String?,
        reportDatabase: json_['reportDatabase'] as core.String?,
        serviceLogin: json_['serviceLogin'] as core.String?,
        setupLogin: json_['setupLogin'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (duration != null) 'duration': duration!,
    if (reportDatabase != null) 'reportDatabase': reportDatabase!,
    if (serviceLogin != null) 'serviceLogin': serviceLogin!,
    if (setupLogin != null) 'setupLogin': setupLogin!,
  };
}

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeatures {
  /// The number of threads per physical core.
  core.int? threadsPerCore;

  AdvancedMachineFeatures({this.threadsPerCore});

  AdvancedMachineFeatures.fromJson(core.Map json_)
    : this(threadsPerCore: json_['threadsPerCore'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (threadsPerCore != null) 'threadsPerCore': threadsPerCore!,
  };
}

/// An Admin API warning message.
class ApiWarning {
  /// Code to uniquely identify the warning type.
  /// Possible string values are:
  /// - "SQL_API_WARNING_CODE_UNSPECIFIED" : An unknown or unset warning type
  /// from Cloud SQL API.
  /// - "REGION_UNREACHABLE" : Warning when one or more regions are not
  /// reachable. The returned result set may be incomplete.
  /// - "MAX_RESULTS_EXCEEDS_LIMIT" : Warning when user provided maxResults
  /// parameter exceeds the limit. The returned result set may be incomplete.
  /// - "COMPROMISED_CREDENTIALS" : Warning when user tries to create/update a
  /// user with credentials that have previously been compromised by a public
  /// data breach.
  /// - "INTERNAL_STATE_FAILURE" : Warning when the operation succeeds but some
  /// non-critical workflow state failed.
  core.String? code;

  /// The warning message.
  core.String? message;

  /// The region name for REGION_UNREACHABLE warning.
  core.String? region;

  ApiWarning({this.code, this.message, this.region});

  ApiWarning.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        message: json_['message'] as core.String?,
        region: json_['region'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (message != null) 'message': message!,
    if (region != null) 'region': region!,
  };
}

/// An available database version.
///
/// It can be a major or a minor version.
class AvailableDatabaseVersion {
  /// The database version's display name.
  core.String? displayName;

  /// The version's major version name.
  core.String? majorVersion;

  /// The database version name.
  ///
  /// For MySQL 8.0, this string provides the database major and minor version.
  core.String? name;

  AvailableDatabaseVersion({this.displayName, this.majorVersion, this.name});

  AvailableDatabaseVersion.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        majorVersion: json_['majorVersion'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (majorVersion != null) 'majorVersion': majorVersion!,
    if (name != null) 'name': name!,
  };
}

/// A backup resource.
class Backup {
  /// This output contains the following values: start_time: All database writes
  /// up to this time are available.
  ///
  /// end_time: Any database writes after this time aren't available.
  ///
  /// Output only.
  Interval? backupInterval;

  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SQL_BACKUP_KIND_UNSPECIFIED" : This is an unknown BackupKind.
  /// - "SNAPSHOT" : Snapshot-based backups.
  /// - "PHYSICAL" : Physical backups.
  core.String? backupKind;

  /// The mapping to backup run resource used for IAM validations.
  ///
  /// Output only.
  core.String? backupRun;

  /// The database version of the instance of at the time this backup was made.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SQL_DATABASE_VERSION_UNSPECIFIED" : This is an unknown database
  /// version.
  /// - "MYSQL_5_1" : The database version is MySQL 5.1.
  /// - "MYSQL_5_5" : The database version is MySQL 5.5.
  /// - "MYSQL_5_6" : The database version is MySQL 5.6.
  /// - "MYSQL_5_7" : The database version is MySQL 5.7.
  /// - "MYSQL_8_0" : The database version is MySQL 8.
  /// - "MYSQL_8_0_18" : The database major version is MySQL 8.0 and the minor
  /// version is 18.
  /// - "MYSQL_8_0_26" : The database major version is MySQL 8.0 and the minor
  /// version is 26.
  /// - "MYSQL_8_0_27" : The database major version is MySQL 8.0 and the minor
  /// version is 27.
  /// - "MYSQL_8_0_28" : The database major version is MySQL 8.0 and the minor
  /// version is 28.
  /// - "MYSQL_8_0_29" : The database major version is MySQL 8.0 and the minor
  /// version is 29.
  /// - "MYSQL_8_0_30" : The database major version is MySQL 8.0 and the minor
  /// version is 30.
  /// - "MYSQL_8_0_31" : The database major version is MySQL 8.0 and the minor
  /// version is 31.
  /// - "MYSQL_8_0_32" : The database major version is MySQL 8.0 and the minor
  /// version is 32.
  /// - "MYSQL_8_0_33" : The database major version is MySQL 8.0 and the minor
  /// version is 33.
  /// - "MYSQL_8_0_34" : The database major version is MySQL 8.0 and the minor
  /// version is 34.
  /// - "MYSQL_8_0_35" : The database major version is MySQL 8.0 and the minor
  /// version is 35.
  /// - "MYSQL_8_0_36" : The database major version is MySQL 8.0 and the minor
  /// version is 36.
  /// - "MYSQL_8_0_37" : The database major version is MySQL 8.0 and the minor
  /// version is 37.
  /// - "MYSQL_8_0_39" : The database major version is MySQL 8.0 and the minor
  /// version is 39.
  /// - "MYSQL_8_0_40" : The database major version is MySQL 8.0 and the minor
  /// version is 40.
  /// - "MYSQL_8_0_41" : The database major version is MySQL 8.0 and the minor
  /// version is 41.
  /// - "MYSQL_8_0_42" : The database major version is MySQL 8.0 and the minor
  /// version is 42.
  /// - "MYSQL_8_0_43" : The database major version is MySQL 8.0 and the minor
  /// version is 43.
  /// - "MYSQL_8_0_44" : The database major version is MySQL 8.0 and the minor
  /// version is 44.
  /// - "MYSQL_8_0_45" : The database major version is MySQL 8.0 and the minor
  /// version is 45.
  /// - "MYSQL_8_0_46" : The database major version is MySQL 8.0 and the minor
  /// version is 46.
  /// - "MYSQL_8_4" : The database version is MySQL 8.4.
  /// - "SQLSERVER_2017_STANDARD" : The database version is SQL Server 2017
  /// Standard.
  /// - "SQLSERVER_2017_ENTERPRISE" : The database version is SQL Server 2017
  /// Enterprise.
  /// - "SQLSERVER_2017_EXPRESS" : The database version is SQL Server 2017
  /// Express.
  /// - "SQLSERVER_2017_WEB" : The database version is SQL Server 2017 Web.
  /// - "POSTGRES_9_6" : The database version is PostgreSQL 9.6.
  /// - "POSTGRES_10" : The database version is PostgreSQL 10.
  /// - "POSTGRES_11" : The database version is PostgreSQL 11.
  /// - "POSTGRES_12" : The database version is PostgreSQL 12.
  /// - "POSTGRES_13" : The database version is PostgreSQL 13.
  /// - "POSTGRES_14" : The database version is PostgreSQL 14.
  /// - "POSTGRES_15" : The database version is PostgreSQL 15.
  /// - "POSTGRES_16" : The database version is PostgreSQL 16.
  /// - "POSTGRES_17" : The database version is PostgreSQL 17.
  /// - "SQLSERVER_2019_STANDARD" : The database version is SQL Server 2019
  /// Standard.
  /// - "SQLSERVER_2019_ENTERPRISE" : The database version is SQL Server 2019
  /// Enterprise.
  /// - "SQLSERVER_2019_EXPRESS" : The database version is SQL Server 2019
  /// Express.
  /// - "SQLSERVER_2019_WEB" : The database version is SQL Server 2019 Web.
  /// - "SQLSERVER_2022_STANDARD" : The database version is SQL Server 2022
  /// Standard.
  /// - "SQLSERVER_2022_ENTERPRISE" : The database version is SQL Server 2022
  /// Enterprise.
  /// - "SQLSERVER_2022_EXPRESS" : The database version is SQL Server 2022
  /// Express.
  /// - "SQLSERVER_2022_WEB" : The database version is SQL Server 2022 Web.
  core.String? databaseVersion;

  /// The description of this backup.
  core.String? description;

  /// Information about why the backup operation fails (for example, when the
  /// backup state fails).
  ///
  /// Output only.
  OperationError? error;

  /// Backup expiration time.
  ///
  /// A UTC timestamp of when this resource expired.
  core.String? expiryTime;

  /// The name of the database instance.
  core.String? instance;

  /// Timestamp in UTC of when the instance associated with this backup is
  /// deleted.
  ///
  /// Optional. Output only.
  core.String? instanceDeletionTime;

  /// Instance setting of the source instance that's associated with this
  /// backup.
  ///
  /// Optional. Output only.
  DatabaseInstance? instanceSettings;

  /// This is always `sql#backup`.
  ///
  /// Output only.
  core.String? kind;

  /// This output contains the encryption configuration for a backup and the
  /// resource name of the KMS key for disk encryption.
  ///
  /// Output only.
  core.String? kmsKey;

  /// This output contains the encryption status for a backup and the version of
  /// the KMS key that's used to encrypt the Cloud SQL instance.
  ///
  /// Output only.
  core.String? kmsKeyVersion;

  /// The storage location of the backups.
  ///
  /// The location can be multi-regional.
  core.String? location;

  /// The maximum chargeable bytes for the backup.
  ///
  /// Output only.
  core.String? maxChargeableBytes;

  /// The resource name of the backup.
  ///
  /// Format: projects/{project}/backups/{backup}.
  ///
  /// Output only.
  core.String? name;

  /// This status indicates whether the backup satisfies PZI.
  ///
  /// The status is reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// This status indicates whether the backup satisfies PZS.
  ///
  /// The status is reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The URI of this resource.
  ///
  /// Output only.
  core.String? selfLink;

  /// The state of this backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SQL_BACKUP_STATE_UNSPECIFIED" : The state of the backup is unknown.
  /// - "ENQUEUED" : The backup that's added to a queue.
  /// - "RUNNING" : The backup is in progress.
  /// - "FAILED" : The backup failed.
  /// - "SUCCESSFUL" : The backup is successful.
  /// - "DELETING" : The backup is being deleted.
  /// - "DELETION_FAILED" : Deletion of the backup failed.
  core.String? state;

  /// This output contains a backup time zone.
  ///
  /// If a Cloud SQL for SQL Server instance has a different time zone from the
  /// backup's time zone, then the restore to the instance doesn't happen.
  ///
  /// Output only.
  core.String? timeZone;

  /// Input only.
  ///
  /// The time-to-live (TTL) interval for this resource (in days). For example:
  /// ttlDays:7, means 7 days from the current time. The expiration time can't
  /// exceed 365 days from the time that the backup is created.
  core.String? ttlDays;

  /// The type of this backup.
  ///
  /// The type can be "AUTOMATED", "ON_DEMAND", or “FINAL”.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SQL_BACKUP_TYPE_UNSPECIFIED" : This is an unknown backup type.
  /// - "AUTOMATED" : The backup schedule triggers a backup automatically.
  /// - "ON_DEMAND" : The user triggers a backup manually.
  /// - "FINAL" : The backup that's created when the instance is deleted.
  core.String? type;

  Backup({
    this.backupInterval,
    this.backupKind,
    this.backupRun,
    this.databaseVersion,
    this.description,
    this.error,
    this.expiryTime,
    this.instance,
    this.instanceDeletionTime,
    this.instanceSettings,
    this.kind,
    this.kmsKey,
    this.kmsKeyVersion,
    this.location,
    this.maxChargeableBytes,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.selfLink,
    this.state,
    this.timeZone,
    this.ttlDays,
    this.type,
  });

  Backup.fromJson(core.Map json_)
    : this(
        backupInterval:
            json_.containsKey('backupInterval')
                ? Interval.fromJson(
                  json_['backupInterval']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        backupKind: json_['backupKind'] as core.String?,
        backupRun: json_['backupRun'] as core.String?,
        databaseVersion: json_['databaseVersion'] as core.String?,
        description: json_['description'] as core.String?,
        error:
            json_.containsKey('error')
                ? OperationError.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        expiryTime: json_['expiryTime'] as core.String?,
        instance: json_['instance'] as core.String?,
        instanceDeletionTime: json_['instanceDeletionTime'] as core.String?,
        instanceSettings:
            json_.containsKey('instanceSettings')
                ? DatabaseInstance.fromJson(
                  json_['instanceSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        kmsKey: json_['kmsKey'] as core.String?,
        kmsKeyVersion: json_['kmsKeyVersion'] as core.String?,
        location: json_['location'] as core.String?,
        maxChargeableBytes: json_['maxChargeableBytes'] as core.String?,
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        selfLink: json_['selfLink'] as core.String?,
        state: json_['state'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        ttlDays: json_['ttlDays'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupInterval != null) 'backupInterval': backupInterval!,
    if (backupKind != null) 'backupKind': backupKind!,
    if (backupRun != null) 'backupRun': backupRun!,
    if (databaseVersion != null) 'databaseVersion': databaseVersion!,
    if (description != null) 'description': description!,
    if (error != null) 'error': error!,
    if (expiryTime != null) 'expiryTime': expiryTime!,
    if (instance != null) 'instance': instance!,
    if (instanceDeletionTime != null)
      'instanceDeletionTime': instanceDeletionTime!,
    if (instanceSettings != null) 'instanceSettings': instanceSettings!,
    if (kind != null) 'kind': kind!,
    if (kmsKey != null) 'kmsKey': kmsKey!,
    if (kmsKeyVersion != null) 'kmsKeyVersion': kmsKeyVersion!,
    if (location != null) 'location': location!,
    if (maxChargeableBytes != null) 'maxChargeableBytes': maxChargeableBytes!,
    if (name != null) 'name': name!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (state != null) 'state': state!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (ttlDays != null) 'ttlDays': ttlDays!,
    if (type != null) 'type': type!,
  };
}

/// Database instance backup configuration.
class BackupConfiguration {
  /// Backup retention settings.
  BackupRetentionSettings? backupRetentionSettings;

  /// Backup tier that manages the backups for the instance.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BACKUP_TIER_UNSPECIFIED" : Unspecified.
  /// - "STANDARD" : Instance is managed by Cloud SQL.
  /// - "ADVANCED" : Deprecated: ADVANCED is deprecated. Please use ENHANCED
  /// instead.
  /// - "ENHANCED" : Instance is managed by Google Cloud Backup and DR Service.
  core.String? backupTier;

  /// (MySQL only) Whether binary log is enabled.
  ///
  /// If backup configuration is disabled, binarylog must be disabled as well.
  core.bool? binaryLogEnabled;

  /// Whether this configuration is enabled.
  core.bool? enabled;

  /// This is always `sql#backupConfiguration`.
  core.String? kind;

  /// Location of the backup
  core.String? location;

  /// Whether point in time recovery is enabled.
  core.bool? pointInTimeRecoveryEnabled;

  /// Reserved for future use.
  core.bool? replicationLogArchivingEnabled;

  /// Start time for the daily backup configuration in UTC timezone in the 24
  /// hour format - `HH:MM`.
  core.String? startTime;

  /// The number of days of transaction logs we retain for point in time
  /// restore, from 1-7.
  core.int? transactionLogRetentionDays;

  /// This value contains the storage location of transactional logs for the
  /// database for point-in-time recovery.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TRANSACTIONAL_LOG_STORAGE_STATE_UNSPECIFIED" : Unspecified.
  /// - "DISK" : The transaction logs used for PITR for the instance are stored
  /// on a data disk.
  /// - "SWITCHING_TO_CLOUD_STORAGE" : The transaction logs used for PITR for
  /// the instance are switching from being stored on a data disk to being
  /// stored in Cloud Storage. Only applicable to MySQL.
  /// - "SWITCHED_TO_CLOUD_STORAGE" : The transaction logs used for PITR for the
  /// instance are now stored in Cloud Storage. Previously, they were stored on
  /// a data disk. Only applicable to MySQL.
  /// - "CLOUD_STORAGE" : The transaction logs used for PITR for the instance
  /// are stored in Cloud Storage. Only applicable to MySQL and PostgreSQL.
  core.String? transactionalLogStorageState;

  BackupConfiguration({
    this.backupRetentionSettings,
    this.backupTier,
    this.binaryLogEnabled,
    this.enabled,
    this.kind,
    this.location,
    this.pointInTimeRecoveryEnabled,
    this.replicationLogArchivingEnabled,
    this.startTime,
    this.transactionLogRetentionDays,
    this.transactionalLogStorageState,
  });

  BackupConfiguration.fromJson(core.Map json_)
    : this(
        backupRetentionSettings:
            json_.containsKey('backupRetentionSettings')
                ? BackupRetentionSettings.fromJson(
                  json_['backupRetentionSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        backupTier: json_['backupTier'] as core.String?,
        binaryLogEnabled: json_['binaryLogEnabled'] as core.bool?,
        enabled: json_['enabled'] as core.bool?,
        kind: json_['kind'] as core.String?,
        location: json_['location'] as core.String?,
        pointInTimeRecoveryEnabled:
            json_['pointInTimeRecoveryEnabled'] as core.bool?,
        replicationLogArchivingEnabled:
            json_['replicationLogArchivingEnabled'] as core.bool?,
        startTime: json_['startTime'] as core.String?,
        transactionLogRetentionDays:
            json_['transactionLogRetentionDays'] as core.int?,
        transactionalLogStorageState:
            json_['transactionalLogStorageState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupRetentionSettings != null)
      'backupRetentionSettings': backupRetentionSettings!,
    if (backupTier != null) 'backupTier': backupTier!,
    if (binaryLogEnabled != null) 'binaryLogEnabled': binaryLogEnabled!,
    if (enabled != null) 'enabled': enabled!,
    if (kind != null) 'kind': kind!,
    if (location != null) 'location': location!,
    if (pointInTimeRecoveryEnabled != null)
      'pointInTimeRecoveryEnabled': pointInTimeRecoveryEnabled!,
    if (replicationLogArchivingEnabled != null)
      'replicationLogArchivingEnabled': replicationLogArchivingEnabled!,
    if (startTime != null) 'startTime': startTime!,
    if (transactionLogRetentionDays != null)
      'transactionLogRetentionDays': transactionLogRetentionDays!,
    if (transactionalLogStorageState != null)
      'transactionalLogStorageState': transactionalLogStorageState!,
  };
}

/// Backup context.
class BackupContext {
  /// The identifier of the backup.
  core.String? backupId;

  /// This is always `sql#backupContext`.
  core.String? kind;

  /// The name of the backup.
  ///
  /// Format: projects/{project}/backups/{backup}
  core.String? name;

  BackupContext({this.backupId, this.kind, this.name});

  BackupContext.fromJson(core.Map json_)
    : this(
        backupId: json_['backupId'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupId != null) 'backupId': backupId!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
  };
}

/// Backup Reencryption Config
class BackupReencryptionConfig {
  /// Backup re-encryption limit
  core.int? backupLimit;

  /// Type of backups users want to re-encrypt.
  /// Possible string values are:
  /// - "BACKUP_TYPE_UNSPECIFIED" : Unknown backup type, will be defaulted to
  /// AUTOMATIC backup type
  /// - "AUTOMATED" : Reencrypt automatic backups
  /// - "ON_DEMAND" : Reencrypt on-demand backups
  core.String? backupType;

  BackupReencryptionConfig({this.backupLimit, this.backupType});

  BackupReencryptionConfig.fromJson(core.Map json_)
    : this(
        backupLimit: json_['backupLimit'] as core.int?,
        backupType: json_['backupType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupLimit != null) 'backupLimit': backupLimit!,
    if (backupType != null) 'backupType': backupType!,
  };
}

/// We currently only support backup retention by specifying the number of
/// backups we will retain.
class BackupRetentionSettings {
  /// Depending on the value of retention_unit, this is used to determine if a
  /// backup needs to be deleted.
  ///
  /// If retention_unit is 'COUNT', we will retain this many backups.
  core.int? retainedBackups;

  /// The unit that 'retained_backups' represents.
  /// Possible string values are:
  /// - "RETENTION_UNIT_UNSPECIFIED" : Backup retention unit is unspecified,
  /// will be treated as COUNT.
  /// - "COUNT" : Retention will be by count, eg. "retain the most recent 7
  /// backups".
  core.String? retentionUnit;

  BackupRetentionSettings({this.retainedBackups, this.retentionUnit});

  BackupRetentionSettings.fromJson(core.Map json_)
    : this(
        retainedBackups: json_['retainedBackups'] as core.int?,
        retentionUnit: json_['retentionUnit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (retainedBackups != null) 'retainedBackups': retainedBackups!,
    if (retentionUnit != null) 'retentionUnit': retentionUnit!,
  };
}

/// A BackupRun resource.
class BackupRun {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  /// Possible string values are:
  /// - "SQL_BACKUP_KIND_UNSPECIFIED" : This is an unknown BackupKind.
  /// - "SNAPSHOT" : Snapshot-based backups.
  /// - "PHYSICAL" : Physical backups.
  core.String? backupKind;

  /// The instance database version at the time this backup was made.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SQL_DATABASE_VERSION_UNSPECIFIED" : This is an unknown database
  /// version.
  /// - "MYSQL_5_1" : The database version is MySQL 5.1.
  /// - "MYSQL_5_5" : The database version is MySQL 5.5.
  /// - "MYSQL_5_6" : The database version is MySQL 5.6.
  /// - "MYSQL_5_7" : The database version is MySQL 5.7.
  /// - "MYSQL_8_0" : The database version is MySQL 8.
  /// - "MYSQL_8_0_18" : The database major version is MySQL 8.0 and the minor
  /// version is 18.
  /// - "MYSQL_8_0_26" : The database major version is MySQL 8.0 and the minor
  /// version is 26.
  /// - "MYSQL_8_0_27" : The database major version is MySQL 8.0 and the minor
  /// version is 27.
  /// - "MYSQL_8_0_28" : The database major version is MySQL 8.0 and the minor
  /// version is 28.
  /// - "MYSQL_8_0_29" : The database major version is MySQL 8.0 and the minor
  /// version is 29.
  /// - "MYSQL_8_0_30" : The database major version is MySQL 8.0 and the minor
  /// version is 30.
  /// - "MYSQL_8_0_31" : The database major version is MySQL 8.0 and the minor
  /// version is 31.
  /// - "MYSQL_8_0_32" : The database major version is MySQL 8.0 and the minor
  /// version is 32.
  /// - "MYSQL_8_0_33" : The database major version is MySQL 8.0 and the minor
  /// version is 33.
  /// - "MYSQL_8_0_34" : The database major version is MySQL 8.0 and the minor
  /// version is 34.
  /// - "MYSQL_8_0_35" : The database major version is MySQL 8.0 and the minor
  /// version is 35.
  /// - "MYSQL_8_0_36" : The database major version is MySQL 8.0 and the minor
  /// version is 36.
  /// - "MYSQL_8_0_37" : The database major version is MySQL 8.0 and the minor
  /// version is 37.
  /// - "MYSQL_8_0_39" : The database major version is MySQL 8.0 and the minor
  /// version is 39.
  /// - "MYSQL_8_0_40" : The database major version is MySQL 8.0 and the minor
  /// version is 40.
  /// - "MYSQL_8_0_41" : The database major version is MySQL 8.0 and the minor
  /// version is 41.
  /// - "MYSQL_8_0_42" : The database major version is MySQL 8.0 and the minor
  /// version is 42.
  /// - "MYSQL_8_0_43" : The database major version is MySQL 8.0 and the minor
  /// version is 43.
  /// - "MYSQL_8_0_44" : The database major version is MySQL 8.0 and the minor
  /// version is 44.
  /// - "MYSQL_8_0_45" : The database major version is MySQL 8.0 and the minor
  /// version is 45.
  /// - "MYSQL_8_0_46" : The database major version is MySQL 8.0 and the minor
  /// version is 46.
  /// - "MYSQL_8_4" : The database version is MySQL 8.4.
  /// - "SQLSERVER_2017_STANDARD" : The database version is SQL Server 2017
  /// Standard.
  /// - "SQLSERVER_2017_ENTERPRISE" : The database version is SQL Server 2017
  /// Enterprise.
  /// - "SQLSERVER_2017_EXPRESS" : The database version is SQL Server 2017
  /// Express.
  /// - "SQLSERVER_2017_WEB" : The database version is SQL Server 2017 Web.
  /// - "POSTGRES_9_6" : The database version is PostgreSQL 9.6.
  /// - "POSTGRES_10" : The database version is PostgreSQL 10.
  /// - "POSTGRES_11" : The database version is PostgreSQL 11.
  /// - "POSTGRES_12" : The database version is PostgreSQL 12.
  /// - "POSTGRES_13" : The database version is PostgreSQL 13.
  /// - "POSTGRES_14" : The database version is PostgreSQL 14.
  /// - "POSTGRES_15" : The database version is PostgreSQL 15.
  /// - "POSTGRES_16" : The database version is PostgreSQL 16.
  /// - "POSTGRES_17" : The database version is PostgreSQL 17.
  /// - "SQLSERVER_2019_STANDARD" : The database version is SQL Server 2019
  /// Standard.
  /// - "SQLSERVER_2019_ENTERPRISE" : The database version is SQL Server 2019
  /// Enterprise.
  /// - "SQLSERVER_2019_EXPRESS" : The database version is SQL Server 2019
  /// Express.
  /// - "SQLSERVER_2019_WEB" : The database version is SQL Server 2019 Web.
  /// - "SQLSERVER_2022_STANDARD" : The database version is SQL Server 2022
  /// Standard.
  /// - "SQLSERVER_2022_ENTERPRISE" : The database version is SQL Server 2022
  /// Enterprise.
  /// - "SQLSERVER_2022_EXPRESS" : The database version is SQL Server 2022
  /// Express.
  /// - "SQLSERVER_2022_WEB" : The database version is SQL Server 2022 Web.
  core.String? databaseVersion;

  /// The description of this run, only applicable to on-demand backups.
  core.String? description;

  /// Encryption configuration specific to a backup.
  DiskEncryptionConfiguration? diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  DiskEncryptionStatus? diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? endTime;

  /// The time the run was enqueued in UTC timezone in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? enqueuedTime;

  /// Information about why the backup operation failed.
  ///
  /// This is only present if the run has the FAILED status.
  OperationError? error;

  /// The identifier for this backup run.
  ///
  /// Unique only for a specific Cloud SQL instance.
  core.String? id;

  /// Name of the database instance.
  core.String? instance;

  /// This is always `sql#backupRun`.
  core.String? kind;

  /// Location of the backups.
  core.String? location;

  /// The maximum chargeable bytes for the backup.
  ///
  /// Output only.
  core.String? maxChargeableBytes;

  /// The URI of this resource.
  core.String? selfLink;

  /// The time the backup operation actually started in UTC timezone in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? startTime;

  /// The status of this run.
  /// Possible string values are:
  /// - "SQL_BACKUP_RUN_STATUS_UNSPECIFIED" : The status of the run is unknown.
  /// - "ENQUEUED" : The backup operation was enqueued.
  /// - "OVERDUE" : The backup is overdue across a given backup window.
  /// Indicates a problem. Example: Long-running operation in progress during
  /// the whole window.
  /// - "RUNNING" : The backup is in progress.
  /// - "FAILED" : The backup failed.
  /// - "SUCCESSFUL" : The backup was successful.
  /// - "SKIPPED" : The backup was skipped (without problems) for a given backup
  /// window. Example: Instance was idle.
  /// - "DELETION_PENDING" : The backup is about to be deleted.
  /// - "DELETION_FAILED" : The backup deletion failed.
  /// - "DELETED" : The backup has been deleted.
  core.String? status;

  /// Backup time zone to prevent restores to an instance with a different time
  /// zone.
  ///
  /// Now relevant only for SQL Server.
  core.String? timeZone;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL".
  ///
  /// This field defaults to "ON_DEMAND" and is ignored, when specified for
  /// insert requests.
  /// Possible string values are:
  /// - "SQL_BACKUP_RUN_TYPE_UNSPECIFIED" : This is an unknown BackupRun type.
  /// - "AUTOMATED" : The backup schedule automatically triggers a backup.
  /// - "ON_DEMAND" : The user manually triggers a backup.
  core.String? type;

  /// The start time of the backup window during which this the backup was
  /// attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for
  /// example `2012-11-15T16:19:00.094Z`.
  core.String? windowStartTime;

  BackupRun({
    this.backupKind,
    this.databaseVersion,
    this.description,
    this.diskEncryptionConfiguration,
    this.diskEncryptionStatus,
    this.endTime,
    this.enqueuedTime,
    this.error,
    this.id,
    this.instance,
    this.kind,
    this.location,
    this.maxChargeableBytes,
    this.selfLink,
    this.startTime,
    this.status,
    this.timeZone,
    this.type,
    this.windowStartTime,
  });

  BackupRun.fromJson(core.Map json_)
    : this(
        backupKind: json_['backupKind'] as core.String?,
        databaseVersion: json_['databaseVersion'] as core.String?,
        description: json_['description'] as core.String?,
        diskEncryptionConfiguration:
            json_.containsKey('diskEncryptionConfiguration')
                ? DiskEncryptionConfiguration.fromJson(
                  json_['diskEncryptionConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        diskEncryptionStatus:
            json_.containsKey('diskEncryptionStatus')
                ? DiskEncryptionStatus.fromJson(
                  json_['diskEncryptionStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        endTime: json_['endTime'] as core.String?,
        enqueuedTime: json_['enqueuedTime'] as core.String?,
        error:
            json_.containsKey('error')
                ? OperationError.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        instance: json_['instance'] as core.String?,
        kind: json_['kind'] as core.String?,
        location: json_['location'] as core.String?,
        maxChargeableBytes: json_['maxChargeableBytes'] as core.String?,
        selfLink: json_['selfLink'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        status: json_['status'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        type: json_['type'] as core.String?,
        windowStartTime: json_['windowStartTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupKind != null) 'backupKind': backupKind!,
    if (databaseVersion != null) 'databaseVersion': databaseVersion!,
    if (description != null) 'description': description!,
    if (diskEncryptionConfiguration != null)
      'diskEncryptionConfiguration': diskEncryptionConfiguration!,
    if (diskEncryptionStatus != null)
      'diskEncryptionStatus': diskEncryptionStatus!,
    if (endTime != null) 'endTime': endTime!,
    if (enqueuedTime != null) 'enqueuedTime': enqueuedTime!,
    if (error != null) 'error': error!,
    if (id != null) 'id': id!,
    if (instance != null) 'instance': instance!,
    if (kind != null) 'kind': kind!,
    if (location != null) 'location': location!,
    if (maxChargeableBytes != null) 'maxChargeableBytes': maxChargeableBytes!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (startTime != null) 'startTime': startTime!,
    if (status != null) 'status': status!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (type != null) 'type': type!,
    if (windowStartTime != null) 'windowStartTime': windowStartTime!,
  };
}

/// Backup run list results.
class BackupRunsListResponse {
  /// A list of backup runs in reverse chronological order of the enqueued time.
  core.List<BackupRun>? items;

  /// This is always `sql#backupRunsList`.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  BackupRunsListResponse({this.items, this.kind, this.nextPageToken});

  BackupRunsListResponse.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => BackupRun.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Binary log coordinates.
class BinLogCoordinates {
  /// Name of the binary log file for a Cloud SQL instance.
  core.String? binLogFileName;

  /// Position (offset) within the binary log file.
  core.String? binLogPosition;

  /// This is always `sql#binLogCoordinates`.
  core.String? kind;

  BinLogCoordinates({this.binLogFileName, this.binLogPosition, this.kind});

  BinLogCoordinates.fromJson(core.Map json_)
    : this(
        binLogFileName: json_['binLogFileName'] as core.String?,
        binLogPosition: json_['binLogPosition'] as core.String?,
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (binLogFileName != null) 'binLogFileName': binLogFileName!,
    if (binLogPosition != null) 'binLogPosition': binLogPosition!,
    if (kind != null) 'kind': kind!,
  };
}

/// Database instance clone context.
class CloneContext {
  /// The name of the allocated ip range for the private ip Cloud SQL instance.
  ///
  /// For example: "google-managed-services-default". If set, the cloned
  /// instance ip will be created in the allocated range. The range name must
  /// comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically,
  /// the name must be 1-63 characters long and match the regular expression
  /// \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?. Reserved for future use.
  core.String? allocatedIpRange;

  /// Binary log coordinates, if specified, identify the position up to which
  /// the source instance is cloned.
  ///
  /// If not specified, the source instance is cloned up to the most recent
  /// binary log coordinates.
  BinLogCoordinates? binLogCoordinates;

  /// (SQL Server only) Clone only the specified databases from the source
  /// instance.
  ///
  /// Clone all databases if empty.
  core.List<core.String>? databaseNames;

  /// Name of the Cloud SQL instance to be created as a clone.
  core.String? destinationInstanceName;

  /// This is always `sql#cloneContext`.
  core.String? kind;

  /// Reserved for future use.
  core.String? pitrTimestampMs;

  /// Timestamp, if specified, identifies the time to which the source instance
  /// is cloned.
  core.String? pointInTime;

  /// Copy clone and point-in-time recovery clone of a regional instance in the
  /// specified zones.
  ///
  /// If not specified, clone to the same secondary zone as the source instance.
  /// This value cannot be the same as the preferred_zone field.
  ///
  /// Optional.
  core.String? preferredSecondaryZone;

  /// Copy clone and point-in-time recovery clone of an instance to the
  /// specified zone.
  ///
  /// If no zone is specified, clone to the same primary zone as the source
  /// instance.
  ///
  /// Optional.
  core.String? preferredZone;

  /// The timestamp used to identify the time when the source instance is
  /// deleted.
  ///
  /// If this instance is deleted, then you must set the timestamp.
  core.String? sourceInstanceDeletionTime;

  CloneContext({
    this.allocatedIpRange,
    this.binLogCoordinates,
    this.databaseNames,
    this.destinationInstanceName,
    this.kind,
    this.pitrTimestampMs,
    this.pointInTime,
    this.preferredSecondaryZone,
    this.preferredZone,
    this.sourceInstanceDeletionTime,
  });

  CloneContext.fromJson(core.Map json_)
    : this(
        allocatedIpRange: json_['allocatedIpRange'] as core.String?,
        binLogCoordinates:
            json_.containsKey('binLogCoordinates')
                ? BinLogCoordinates.fromJson(
                  json_['binLogCoordinates']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        databaseNames:
            (json_['databaseNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        destinationInstanceName:
            json_['destinationInstanceName'] as core.String?,
        kind: json_['kind'] as core.String?,
        pitrTimestampMs: json_['pitrTimestampMs'] as core.String?,
        pointInTime: json_['pointInTime'] as core.String?,
        preferredSecondaryZone: json_['preferredSecondaryZone'] as core.String?,
        preferredZone: json_['preferredZone'] as core.String?,
        sourceInstanceDeletionTime:
            json_['sourceInstanceDeletionTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedIpRange != null) 'allocatedIpRange': allocatedIpRange!,
    if (binLogCoordinates != null) 'binLogCoordinates': binLogCoordinates!,
    if (databaseNames != null) 'databaseNames': databaseNames!,
    if (destinationInstanceName != null)
      'destinationInstanceName': destinationInstanceName!,
    if (kind != null) 'kind': kind!,
    if (pitrTimestampMs != null) 'pitrTimestampMs': pitrTimestampMs!,
    if (pointInTime != null) 'pointInTime': pointInTime!,
    if (preferredSecondaryZone != null)
      'preferredSecondaryZone': preferredSecondaryZone!,
    if (preferredZone != null) 'preferredZone': preferredZone!,
    if (sourceInstanceDeletionTime != null)
      'sourceInstanceDeletionTime': sourceInstanceDeletionTime!,
  };
}

/// Contains the name and datatype of a column.
class Column {
  /// Name of the column.
  core.String? name;

  /// Datatype of the column.
  core.String? type;

  Column({this.name, this.type});

  Column.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (type != null) 'type': type!,
  };
}

/// Details of a single read pool node of a read pool.
class ConnectPoolNodeConfig {
  /// The DNS name of the read pool node.
  ///
  /// Output only.
  core.String? dnsName;

  /// The list of DNS names used by this read pool node.
  ///
  /// Output only.
  core.List<DnsNameMapping>? dnsNames;

  /// Mappings containing IP addresses that can be used to connect to the read
  /// pool node.
  ///
  /// Output only.
  core.List<IpMapping>? ipAddresses;

  /// The name of the read pool node.
  ///
  /// Doesn't include the project ID.
  ///
  /// Output only.
  core.String? name;

  ConnectPoolNodeConfig({
    this.dnsName,
    this.dnsNames,
    this.ipAddresses,
    this.name,
  });

  ConnectPoolNodeConfig.fromJson(core.Map json_)
    : this(
        dnsName: json_['dnsName'] as core.String?,
        dnsNames:
            (json_['dnsNames'] as core.List?)
                ?.map(
                  (value) => DnsNameMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        ipAddresses:
            (json_['ipAddresses'] as core.List?)
                ?.map(
                  (value) => IpMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dnsName != null) 'dnsName': dnsName!,
    if (dnsNames != null) 'dnsNames': dnsNames!,
    if (ipAddresses != null) 'ipAddresses': ipAddresses!,
    if (name != null) 'name': name!,
  };
}

/// Connect settings retrieval response.
class ConnectSettings {
  /// `SECOND_GEN`: Cloud SQL database instance.
  ///
  /// `EXTERNAL`: A database server that is not managed by Google. This property
  /// is read-only; use the `tier` property in the `settings` object to
  /// determine the database type.
  /// Possible string values are:
  /// - "SQL_BACKEND_TYPE_UNSPECIFIED" : This is an unknown backend type for
  /// instance.
  /// - "FIRST_GEN" : V1 speckle instance.
  /// - "SECOND_GEN" : V2 speckle instance.
  /// - "EXTERNAL" : On premises instance.
  core.String? backendType;

  /// Custom subject alternative names for the server certificate.
  core.List<core.String>? customSubjectAlternativeNames;

  /// The database engine type and version.
  ///
  /// The `databaseVersion` field cannot be changed after instance creation.
  /// MySQL instances: `MYSQL_8_0`, `MYSQL_5_7` (default), or `MYSQL_5_6`.
  /// PostgreSQL instances: `POSTGRES_9_6`, `POSTGRES_10`, `POSTGRES_11` or
  /// `POSTGRES_12` (default), `POSTGRES_13`, or `POSTGRES_14`. SQL Server
  /// instances: `SQLSERVER_2017_STANDARD` (default),
  /// `SQLSERVER_2017_ENTERPRISE`, `SQLSERVER_2017_EXPRESS`,
  /// `SQLSERVER_2017_WEB`, `SQLSERVER_2019_STANDARD`,
  /// `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`, or
  /// `SQLSERVER_2019_WEB`.
  /// Possible string values are:
  /// - "SQL_DATABASE_VERSION_UNSPECIFIED" : This is an unknown database
  /// version.
  /// - "MYSQL_5_1" : The database version is MySQL 5.1.
  /// - "MYSQL_5_5" : The database version is MySQL 5.5.
  /// - "MYSQL_5_6" : The database version is MySQL 5.6.
  /// - "MYSQL_5_7" : The database version is MySQL 5.7.
  /// - "MYSQL_8_0" : The database version is MySQL 8.
  /// - "MYSQL_8_0_18" : The database major version is MySQL 8.0 and the minor
  /// version is 18.
  /// - "MYSQL_8_0_26" : The database major version is MySQL 8.0 and the minor
  /// version is 26.
  /// - "MYSQL_8_0_27" : The database major version is MySQL 8.0 and the minor
  /// version is 27.
  /// - "MYSQL_8_0_28" : The database major version is MySQL 8.0 and the minor
  /// version is 28.
  /// - "MYSQL_8_0_29" : The database major version is MySQL 8.0 and the minor
  /// version is 29.
  /// - "MYSQL_8_0_30" : The database major version is MySQL 8.0 and the minor
  /// version is 30.
  /// - "MYSQL_8_0_31" : The database major version is MySQL 8.0 and the minor
  /// version is 31.
  /// - "MYSQL_8_0_32" : The database major version is MySQL 8.0 and the minor
  /// version is 32.
  /// - "MYSQL_8_0_33" : The database major version is MySQL 8.0 and the minor
  /// version is 33.
  /// - "MYSQL_8_0_34" : The database major version is MySQL 8.0 and the minor
  /// version is 34.
  /// - "MYSQL_8_0_35" : The database major version is MySQL 8.0 and the minor
  /// version is 35.
  /// - "MYSQL_8_0_36" : The database major version is MySQL 8.0 and the minor
  /// version is 36.
  /// - "MYSQL_8_0_37" : The database major version is MySQL 8.0 and the minor
  /// version is 37.
  /// - "MYSQL_8_0_39" : The database major version is MySQL 8.0 and the minor
  /// version is 39.
  /// - "MYSQL_8_0_40" : The database major version is MySQL 8.0 and the minor
  /// version is 40.
  /// - "MYSQL_8_0_41" : The database major version is MySQL 8.0 and the minor
  /// version is 41.
  /// - "MYSQL_8_0_42" : The database major version is MySQL 8.0 and the minor
  /// version is 42.
  /// - "MYSQL_8_0_43" : The database major version is MySQL 8.0 and the minor
  /// version is 43.
  /// - "MYSQL_8_0_44" : The database major version is MySQL 8.0 and the minor
  /// version is 44.
  /// - "MYSQL_8_0_45" : The database major version is MySQL 8.0 and the minor
  /// version is 45.
  /// - "MYSQL_8_0_46" : The database major version is MySQL 8.0 and the minor
  /// version is 46.
  /// - "MYSQL_8_4" : The database version is MySQL 8.4.
  /// - "SQLSERVER_2017_STANDARD" : The database version is SQL Server 2017
  /// Standard.
  /// - "SQLSERVER_2017_ENTERPRISE" : The database version is SQL Server 2017
  /// Enterprise.
  /// - "SQLSERVER_2017_EXPRESS" : The database version is SQL Server 2017
  /// Express.
  /// - "SQLSERVER_2017_WEB" : The database version is SQL Server 2017 Web.
  /// - "POSTGRES_9_6" : The database version is PostgreSQL 9.6.
  /// - "POSTGRES_10" : The database version is PostgreSQL 10.
  /// - "POSTGRES_11" : The database version is PostgreSQL 11.
  /// - "POSTGRES_12" : The database version is PostgreSQL 12.
  /// - "POSTGRES_13" : The database version is PostgreSQL 13.
  /// - "POSTGRES_14" : The database version is PostgreSQL 14.
  /// - "POSTGRES_15" : The database version is PostgreSQL 15.
  /// - "POSTGRES_16" : The database version is PostgreSQL 16.
  /// - "POSTGRES_17" : The database version is PostgreSQL 17.
  /// - "SQLSERVER_2019_STANDARD" : The database version is SQL Server 2019
  /// Standard.
  /// - "SQLSERVER_2019_ENTERPRISE" : The database version is SQL Server 2019
  /// Enterprise.
  /// - "SQLSERVER_2019_EXPRESS" : The database version is SQL Server 2019
  /// Express.
  /// - "SQLSERVER_2019_WEB" : The database version is SQL Server 2019 Web.
  /// - "SQLSERVER_2022_STANDARD" : The database version is SQL Server 2022
  /// Standard.
  /// - "SQLSERVER_2022_ENTERPRISE" : The database version is SQL Server 2022
  /// Enterprise.
  /// - "SQLSERVER_2022_EXPRESS" : The database version is SQL Server 2022
  /// Express.
  /// - "SQLSERVER_2022_WEB" : The database version is SQL Server 2022 Web.
  core.String? databaseVersion;

  /// The dns name of the instance.
  core.String? dnsName;

  /// The list of DNS names used by this instance.
  ///
  /// Output only.
  core.List<DnsNameMapping>? dnsNames;

  /// The assigned IP addresses for the instance.
  core.List<IpMapping>? ipAddresses;

  /// This is always `sql#connectSettings`.
  core.String? kind;

  /// mdx_protocol_support controls how the client uses metadata exchange when
  /// connecting to the instance.
  ///
  /// The values in the list representing parts of the MDX protocol that are
  /// supported by this instance. When the list is empty, the instance does not
  /// support MDX, so the client must not send an MDX request. The default is
  /// empty.
  ///
  /// Optional. Output only.
  core.List<core.String>? mdxProtocolSupport;

  /// The number of read pool nodes in a read pool.
  core.int? nodeCount;

  /// Entries containing information about each read pool node of the read pool.
  ///
  /// Output only.
  core.List<ConnectPoolNodeConfig>? nodes;

  /// Whether PSC connectivity is enabled for this instance.
  core.bool? pscEnabled;

  /// The cloud region for the instance.
  ///
  /// e.g. `us-central1`, `europe-west1`. The region cannot be changed after
  /// instance creation.
  core.String? region;

  /// SSL configuration.
  SslCert? serverCaCert;

  /// Specify what type of CA is used for the server certificate.
  /// Possible string values are:
  /// - "CA_MODE_UNSPECIFIED" : CA mode is unspecified. It is effectively the
  /// same as `GOOGLE_MANAGED_INTERNAL_CA`.
  /// - "GOOGLE_MANAGED_INTERNAL_CA" : Google-managed self-signed internal CA.
  /// - "GOOGLE_MANAGED_CAS_CA" : Google-managed regional CA part of root CA
  /// hierarchy hosted on Google Cloud's Certificate Authority Service (CAS).
  /// - "CUSTOMER_MANAGED_CAS_CA" : Customer-managed CA hosted on Google Cloud's
  /// Certificate Authority Service (CAS).
  core.String? serverCaMode;

  ConnectSettings({
    this.backendType,
    this.customSubjectAlternativeNames,
    this.databaseVersion,
    this.dnsName,
    this.dnsNames,
    this.ipAddresses,
    this.kind,
    this.mdxProtocolSupport,
    this.nodeCount,
    this.nodes,
    this.pscEnabled,
    this.region,
    this.serverCaCert,
    this.serverCaMode,
  });

  ConnectSettings.fromJson(core.Map json_)
    : this(
        backendType: json_['backendType'] as core.String?,
        customSubjectAlternativeNames:
            (json_['customSubjectAlternativeNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        databaseVersion: json_['databaseVersion'] as core.String?,
        dnsName: json_['dnsName'] as core.String?,
        dnsNames:
            (json_['dnsNames'] as core.List?)
                ?.map(
                  (value) => DnsNameMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        ipAddresses:
            (json_['ipAddresses'] as core.List?)
                ?.map(
                  (value) => IpMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        mdxProtocolSupport:
            (json_['mdxProtocolSupport'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        nodeCount: json_['nodeCount'] as core.int?,
        nodes:
            (json_['nodes'] as core.List?)
                ?.map(
                  (value) => ConnectPoolNodeConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pscEnabled: json_['pscEnabled'] as core.bool?,
        region: json_['region'] as core.String?,
        serverCaCert:
            json_.containsKey('serverCaCert')
                ? SslCert.fromJson(
                  json_['serverCaCert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serverCaMode: json_['serverCaMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backendType != null) 'backendType': backendType!,
    if (customSubjectAlternativeNames != null)
      'customSubjectAlternativeNames': customSubjectAlternativeNames!,
    if (databaseVersion != null) 'databaseVersion': databaseVersion!,
    if (dnsName != null) 'dnsName': dnsName!,
    if (dnsNames != null) 'dnsNames': dnsNames!,
    if (ipAddresses != null) 'ipAddresses': ipAddresses!,
    if (kind != null) 'kind': kind!,
    if (mdxProtocolSupport != null) 'mdxProtocolSupport': mdxProtocolSupport!,
    if (nodeCount != null) 'nodeCount': nodeCount!,
    if (nodes != null) 'nodes': nodes!,
    if (pscEnabled != null) 'pscEnabled': pscEnabled!,
    if (region != null) 'region': region!,
    if (serverCaCert != null) 'serverCaCert': serverCaCert!,
    if (serverCaMode != null) 'serverCaMode': serverCaMode!,
  };
}

/// The managed connection pooling configuration.
class ConnectionPoolConfig {
  /// Whether managed connection pooling is enabled.
  core.bool? connectionPoolingEnabled;

  /// List of connection pool configuration flags.
  ///
  /// Optional.
  core.List<ConnectionPoolFlags>? flags;

  /// Number of connection poolers.
  ///
  /// Output only.
  core.int? poolerCount;

  ConnectionPoolConfig({
    this.connectionPoolingEnabled,
    this.flags,
    this.poolerCount,
  });

  ConnectionPoolConfig.fromJson(core.Map json_)
    : this(
        connectionPoolingEnabled:
            json_['connectionPoolingEnabled'] as core.bool?,
        flags:
            (json_['flags'] as core.List?)
                ?.map(
                  (value) => ConnectionPoolFlags.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        poolerCount: json_['poolerCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionPoolingEnabled != null)
      'connectionPoolingEnabled': connectionPoolingEnabled!,
    if (flags != null) 'flags': flags!,
    if (poolerCount != null) 'poolerCount': poolerCount!,
  };
}

/// Connection pool flags for Cloud SQL instances managed connection pool
/// configuration.
class ConnectionPoolFlags {
  /// The name of the flag.
  ///
  /// Required.
  core.String? name;

  /// The value of the flag.
  ///
  /// Boolean flags are set to `on` for true and `off` for false. This field
  /// must be omitted if the flag doesn't take a value.
  ///
  /// Required.
  core.String? value;

  ConnectionPoolFlags({this.name, this.value});

  ConnectionPoolFlags.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
  };
}

/// Data cache configurations.
class DataCacheConfig {
  /// Whether data cache is enabled for the instance.
  core.bool? dataCacheEnabled;

  DataCacheConfig({this.dataCacheEnabled});

  DataCacheConfig.fromJson(core.Map json_)
    : this(dataCacheEnabled: json_['dataCacheEnabled'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataCacheEnabled != null) 'dataCacheEnabled': dataCacheEnabled!,
  };
}

/// Represents a SQL database on the Cloud SQL instance.
class Database {
  /// The Cloud SQL charset value.
  core.String? charset;

  /// The Cloud SQL collation value.
  core.String? collation;

  /// This field is deprecated and will be removed from a future version of the
  /// API.
  core.String? etag;

  /// The name of the Cloud SQL instance.
  ///
  /// This does not include the project ID.
  core.String? instance;

  /// This is always `sql#database`.
  core.String? kind;

  /// The name of the database in the Cloud SQL instance.
  ///
  /// This does not include the project ID or instance name.
  core.String? name;

  /// The project ID of the project containing the Cloud SQL database.
  ///
  /// The Google apps domain is prefixed if applicable.
  core.String? project;

  /// The URI of this resource.
  core.String? selfLink;
  SqlServerDatabaseDetails? sqlserverDatabaseDetails;

  Database({
    this.charset,
    this.collation,
    this.etag,
    this.instance,
    this.kind,
    this.name,
    this.project,
    this.selfLink,
    this.sqlserverDatabaseDetails,
  });

  Database.fromJson(core.Map json_)
    : this(
        charset: json_['charset'] as core.String?,
        collation: json_['collation'] as core.String?,
        etag: json_['etag'] as core.String?,
        instance: json_['instance'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        project: json_['project'] as core.String?,
        selfLink: json_['selfLink'] as core.String?,
        sqlserverDatabaseDetails:
            json_.containsKey('sqlserverDatabaseDetails')
                ? SqlServerDatabaseDetails.fromJson(
                  json_['sqlserverDatabaseDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (charset != null) 'charset': charset!,
    if (collation != null) 'collation': collation!,
    if (etag != null) 'etag': etag!,
    if (instance != null) 'instance': instance!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
    if (project != null) 'project': project!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (sqlserverDatabaseDetails != null)
      'sqlserverDatabaseDetails': sqlserverDatabaseDetails!,
  };
}

/// Database flags for Cloud SQL instances.
class DatabaseFlags {
  /// The name of the flag.
  ///
  /// These flags are passed at instance startup, so include both server options
  /// and system variables. Flags are specified with underscores, not hyphens.
  /// For more information, see
  /// [Configuring Database Flags](https://cloud.google.com/sql/docs/mysql/flags)
  /// in the Cloud SQL documentation.
  core.String? name;

  /// The value of the flag.
  ///
  /// Boolean flags are set to `on` for true and `off` for false. This field
  /// must be omitted if the flag doesn't take a value.
  core.String? value;

  DatabaseFlags({this.name, this.value});

  DatabaseFlags.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
  };
}

/// The name and status of the failover replica.
class DatabaseInstanceFailoverReplica {
  /// The availability status of the failover replica.
  ///
  /// A false status indicates that the failover replica is out of sync. The
  /// primary instance can only failover to the failover replica when the status
  /// is true.
  core.bool? available;

  /// The name of the failover replica.
  ///
  /// If specified at instance creation, a failover replica is created for the
  /// instance. The name doesn't include the project ID.
  core.String? name;

  DatabaseInstanceFailoverReplica({this.available, this.name});

  DatabaseInstanceFailoverReplica.fromJson(core.Map json_)
    : this(
        available: json_['available'] as core.bool?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (available != null) 'available': available!,
    if (name != null) 'name': name!,
  };
}

/// A Cloud SQL instance resource.
class DatabaseInstance {
  /// List all maintenance versions applicable on the instance
  ///
  /// Output only.
  core.List<core.String>? availableMaintenanceVersions;

  /// The backend type.
  ///
  /// `SECOND_GEN`: Cloud SQL database instance. `EXTERNAL`: A database server
  /// that is not managed by Google. This property is read-only; use the `tier`
  /// property in the `settings` object to determine the database type.
  /// Possible string values are:
  /// - "SQL_BACKEND_TYPE_UNSPECIFIED" : This is an unknown backend type for
  /// instance.
  /// - "FIRST_GEN" : V1 speckle instance.
  /// - "SECOND_GEN" : V2 speckle instance.
  /// - "EXTERNAL" : On premises instance.
  core.String? backendType;

  /// Connection name of the Cloud SQL instance used in connection strings.
  core.String? connectionName;

  /// The time when the instance was created in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  ///
  /// Output only.
  core.String? createTime;

  /// The current disk usage of the instance in bytes.
  ///
  /// This property has been deprecated. Use the
  /// "cloudsql.googleapis.com/database/disk/bytes_used" metric in Cloud
  /// Monitoring API instead. Please see
  /// [this announcement](https://groups.google.com/d/msg/google-cloud-sql-announce/I_7-F9EBhT0/BtvFtdFeAgAJ)
  /// for details.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? currentDiskSize;

  /// Stores the current database version running on the instance including
  /// minor version such as `MYSQL_8_0_18`.
  ///
  /// Output only.
  core.String? databaseInstalledVersion;

  /// The database engine type and version.
  ///
  /// The `databaseVersion` field cannot be changed after instance creation.
  /// Possible string values are:
  /// - "SQL_DATABASE_VERSION_UNSPECIFIED" : This is an unknown database
  /// version.
  /// - "MYSQL_5_1" : The database version is MySQL 5.1.
  /// - "MYSQL_5_5" : The database version is MySQL 5.5.
  /// - "MYSQL_5_6" : The database version is MySQL 5.6.
  /// - "MYSQL_5_7" : The database version is MySQL 5.7.
  /// - "MYSQL_8_0" : The database version is MySQL 8.
  /// - "MYSQL_8_0_18" : The database major version is MySQL 8.0 and the minor
  /// version is 18.
  /// - "MYSQL_8_0_26" : The database major version is MySQL 8.0 and the minor
  /// version is 26.
  /// - "MYSQL_8_0_27" : The database major version is MySQL 8.0 and the minor
  /// version is 27.
  /// - "MYSQL_8_0_28" : The database major version is MySQL 8.0 and the minor
  /// version is 28.
  /// - "MYSQL_8_0_29" : The database major version is MySQL 8.0 and the minor
  /// version is 29.
  /// - "MYSQL_8_0_30" : The database major version is MySQL 8.0 and the minor
  /// version is 30.
  /// - "MYSQL_8_0_31" : The database major version is MySQL 8.0 and the minor
  /// version is 31.
  /// - "MYSQL_8_0_32" : The database major version is MySQL 8.0 and the minor
  /// version is 32.
  /// - "MYSQL_8_0_33" : The database major version is MySQL 8.0 and the minor
  /// version is 33.
  /// - "MYSQL_8_0_34" : The database major version is MySQL 8.0 and the minor
  /// version is 34.
  /// - "MYSQL_8_0_35" : The database major version is MySQL 8.0 and the minor
  /// version is 35.
  /// - "MYSQL_8_0_36" : The database major version is MySQL 8.0 and the minor
  /// version is 36.
  /// - "MYSQL_8_0_37" : The database major version is MySQL 8.0 and the minor
  /// version is 37.
  /// - "MYSQL_8_0_39" : The database major version is MySQL 8.0 and the minor
  /// version is 39.
  /// - "MYSQL_8_0_40" : The database major version is MySQL 8.0 and the minor
  /// version is 40.
  /// - "MYSQL_8_0_41" : The database major version is MySQL 8.0 and the minor
  /// version is 41.
  /// - "MYSQL_8_0_42" : The database major version is MySQL 8.0 and the minor
  /// version is 42.
  /// - "MYSQL_8_0_43" : The database major version is MySQL 8.0 and the minor
  /// version is 43.
  /// - "MYSQL_8_0_44" : The database major version is MySQL 8.0 and the minor
  /// version is 44.
  /// - "MYSQL_8_0_45" : The database major version is MySQL 8.0 and the minor
  /// version is 45.
  /// - "MYSQL_8_0_46" : The database major version is MySQL 8.0 and the minor
  /// version is 46.
  /// - "MYSQL_8_4" : The database version is MySQL 8.4.
  /// - "SQLSERVER_2017_STANDARD" : The database version is SQL Server 2017
  /// Standard.
  /// - "SQLSERVER_2017_ENTERPRISE" : The database version is SQL Server 2017
  /// Enterprise.
  /// - "SQLSERVER_2017_EXPRESS" : The database version is SQL Server 2017
  /// Express.
  /// - "SQLSERVER_2017_WEB" : The database version is SQL Server 2017 Web.
  /// - "POSTGRES_9_6" : The database version is PostgreSQL 9.6.
  /// - "POSTGRES_10" : The database version is PostgreSQL 10.
  /// - "POSTGRES_11" : The database version is PostgreSQL 11.
  /// - "POSTGRES_12" : The database version is PostgreSQL 12.
  /// - "POSTGRES_13" : The database version is PostgreSQL 13.
  /// - "POSTGRES_14" : The database version is PostgreSQL 14.
  /// - "POSTGRES_15" : The database version is PostgreSQL 15.
  /// - "POSTGRES_16" : The database version is PostgreSQL 16.
  /// - "POSTGRES_17" : The database version is PostgreSQL 17.
  /// - "SQLSERVER_2019_STANDARD" : The database version is SQL Server 2019
  /// Standard.
  /// - "SQLSERVER_2019_ENTERPRISE" : The database version is SQL Server 2019
  /// Enterprise.
  /// - "SQLSERVER_2019_EXPRESS" : The database version is SQL Server 2019
  /// Express.
  /// - "SQLSERVER_2019_WEB" : The database version is SQL Server 2019 Web.
  /// - "SQLSERVER_2022_STANDARD" : The database version is SQL Server 2022
  /// Standard.
  /// - "SQLSERVER_2022_ENTERPRISE" : The database version is SQL Server 2022
  /// Enterprise.
  /// - "SQLSERVER_2022_EXPRESS" : The database version is SQL Server 2022
  /// Express.
  /// - "SQLSERVER_2022_WEB" : The database version is SQL Server 2022 Web.
  core.String? databaseVersion;

  /// Disk encryption configuration specific to an instance.
  DiskEncryptionConfiguration? diskEncryptionConfiguration;

  /// Disk encryption status specific to an instance.
  DiskEncryptionStatus? diskEncryptionStatus;

  /// The dns name of the instance.
  ///
  /// Output only.
  core.String? dnsName;

  /// The list of DNS names used by this instance.
  ///
  /// Output only.
  core.List<DnsNameMapping>? dnsNames;

  /// This field is deprecated and will be removed from a future version of the
  /// API.
  ///
  /// Use the `settings.settingsVersion` field instead.
  core.String? etag;

  /// The name and status of the failover replica.
  DatabaseInstanceFailoverReplica? failoverReplica;

  /// The Compute Engine zone that the instance is currently serving from.
  ///
  /// This value could be different from the zone that was specified when the
  /// instance was created if the instance has failed over to its secondary
  /// zone. WARNING: Changing this might restart the instance.
  core.String? gceZone;

  /// Gemini instance configuration.
  GeminiInstanceConfig? geminiConfig;

  /// Input only.
  ///
  /// Determines whether an in-place major version upgrade of replicas happens
  /// when an in-place major version upgrade of a primary instance is initiated.
  core.bool? includeReplicasForMajorVersionUpgrade;

  /// The instance type.
  /// Possible string values are:
  /// - "SQL_INSTANCE_TYPE_UNSPECIFIED" : This is an unknown Cloud SQL instance
  /// type.
  /// - "CLOUD_SQL_INSTANCE" : A regular Cloud SQL instance that is not
  /// replicating from a primary instance.
  /// - "ON_PREMISES_INSTANCE" : An instance running on the customer's premises
  /// that is not managed by Cloud SQL.
  /// - "READ_REPLICA_INSTANCE" : A Cloud SQL instance acting as a read-replica.
  /// - "READ_POOL_INSTANCE" : A Cloud SQL read pool.
  core.String? instanceType;

  /// The assigned IP addresses for the instance.
  core.List<IpMapping>? ipAddresses;

  /// The IPv6 address assigned to the instance.
  ///
  /// (Deprecated) This property was applicable only to First Generation
  /// instances.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? ipv6Address;

  /// This is always `sql#instance`.
  core.String? kind;

  /// The current software version on the instance.
  core.String? maintenanceVersion;

  /// The name of the instance which will act as primary in the replication
  /// setup.
  core.String? masterInstanceName;

  /// The maximum disk size of the instance in bytes.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? maxDiskSize;

  /// Name of the Cloud SQL instance.
  ///
  /// This does not include the project ID.
  core.String? name;

  /// The number of read pool nodes in a read pool.
  core.int? nodeCount;

  /// Entries containing information about each read pool node of the read pool.
  ///
  /// Output only.
  core.List<PoolNodeConfig>? nodes;

  /// Configuration specific to on-premises instances.
  OnPremisesConfiguration? onPremisesConfiguration;

  /// This field represents the report generated by the proactive database
  /// wellness job for OutOfDisk issues.
  ///
  /// * Writers: * the proactive database wellness job for OOD. * Readers: * the
  /// proactive database wellness job
  SqlOutOfDiskReport? outOfDiskReport;

  /// DEPRECATED: please use write_endpoint instead.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? primaryDnsName;

  /// The project ID of the project containing the Cloud SQL instance.
  ///
  /// The Google apps domain is prefixed if applicable.
  core.String? project;

  /// The link to service attachment of PSC instance.
  ///
  /// Output only.
  core.String? pscServiceAttachmentLink;

  /// The geographical region of the Cloud SQL instance.
  ///
  /// It can be one of the
  /// [regions](https://cloud.google.com/sql/docs/mysql/locations#location-r)
  /// where Cloud SQL operates: For example, `asia-east1`, `europe-west1`, and
  /// `us-central1`. The default value is `us-central1`.
  core.String? region;

  /// Configuration specific to failover replicas and read replicas.
  ReplicaConfiguration? replicaConfiguration;

  /// The replicas of the instance.
  core.List<core.String>? replicaNames;

  /// A primary instance and disaster recovery (DR) replica pair.
  ///
  /// A DR replica is a cross-region replica that you designate for failover in
  /// the event that the primary instance experiences regional failure.
  /// Applicable to MySQL and PostgreSQL.
  ReplicationCluster? replicationCluster;

  /// Initial root password.
  ///
  /// Use only on creation. You must set root passwords before you can connect
  /// to PostgreSQL instances.
  core.String? rootPassword;

  /// This status indicates whether the instance satisfies PZI.
  ///
  /// The status is reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// This status indicates whether the instance satisfies PZS.
  ///
  /// The status is reserved for future use.
  core.bool? satisfiesPzs;

  /// The start time of any upcoming scheduled maintenance for this instance.
  SqlScheduledMaintenance? scheduledMaintenance;

  /// The Compute Engine zone that the failover instance is currently serving
  /// from for a regional instance.
  ///
  /// This value could be different from the zone that was specified when the
  /// instance was created if the instance has failed over to its
  /// secondary/failover zone.
  core.String? secondaryGceZone;

  /// The URI of this resource.
  core.String? selfLink;

  /// SSL configuration.
  SslCert? serverCaCert;

  /// The service account email address assigned to the instance.
  ///
  /// \This property is read-only.
  core.String? serviceAccountEmailAddress;

  /// The user settings.
  Settings? settings;

  /// The SQL network architecture for the instance.
  /// Possible string values are:
  /// - "SQL_NETWORK_ARCHITECTURE_UNSPECIFIED"
  /// - "NEW_NETWORK_ARCHITECTURE" : The instance uses the new network
  /// architecture.
  /// - "OLD_NETWORK_ARCHITECTURE" : The instance uses the old network
  /// architecture.
  core.String? sqlNetworkArchitecture;

  /// The current serving state of the Cloud SQL instance.
  /// Possible string values are:
  /// - "SQL_INSTANCE_STATE_UNSPECIFIED" : The state of the instance is unknown.
  /// - "RUNNABLE" : The instance is running, or has been stopped by owner.
  /// - "SUSPENDED" : The instance is not available, for example due to problems
  /// with billing.
  /// - "PENDING_DELETE" : The instance is being deleted.
  /// - "PENDING_CREATE" : The instance is being created.
  /// - "MAINTENANCE" : The instance is down for maintenance.
  /// - "FAILED" : The creation of the instance failed or a fatal error occurred
  /// during maintenance.
  /// - "ONLINE_MAINTENANCE" : Deprecated
  /// - "REPAIRING" : (Applicable to read pool nodes only.) The read pool node
  /// needs to be repaired. The database might be unavailable.
  core.String? state;

  /// If the instance state is SUSPENDED, the reason for the suspension.
  core.List<core.String>? suspensionReason;

  /// Input only.
  ///
  /// Whether Cloud SQL is enabled to switch storing point-in-time recovery log
  /// files from a data disk to Cloud Storage.
  core.bool? switchTransactionLogsToCloudStorageEnabled;

  /// Input only.
  ///
  /// Immutable. Tag keys and tag values that are bound to this instance. You
  /// must represent each item in the map as: `"" : ""`. For example, a single
  /// resource can have the following tags: ``` "123/environment": "production",
  /// "123/costCenter": "marketing", ``` For more information on tag creation
  /// and management, see
  /// https://cloud.google.com/resource-manager/docs/tags/tags-overview.
  ///
  /// Optional.
  core.Map<core.String, core.String>? tags;

  /// All database versions that are available for upgrade.
  ///
  /// Output only.
  core.List<AvailableDatabaseVersion>? upgradableDatabaseVersions;

  /// The dns name of the primary instance in a replication group.
  ///
  /// Output only.
  core.String? writeEndpoint;

  DatabaseInstance({
    this.availableMaintenanceVersions,
    this.backendType,
    this.connectionName,
    this.createTime,
    this.currentDiskSize,
    this.databaseInstalledVersion,
    this.databaseVersion,
    this.diskEncryptionConfiguration,
    this.diskEncryptionStatus,
    this.dnsName,
    this.dnsNames,
    this.etag,
    this.failoverReplica,
    this.gceZone,
    this.geminiConfig,
    this.includeReplicasForMajorVersionUpgrade,
    this.instanceType,
    this.ipAddresses,
    this.ipv6Address,
    this.kind,
    this.maintenanceVersion,
    this.masterInstanceName,
    this.maxDiskSize,
    this.name,
    this.nodeCount,
    this.nodes,
    this.onPremisesConfiguration,
    this.outOfDiskReport,
    this.primaryDnsName,
    this.project,
    this.pscServiceAttachmentLink,
    this.region,
    this.replicaConfiguration,
    this.replicaNames,
    this.replicationCluster,
    this.rootPassword,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.scheduledMaintenance,
    this.secondaryGceZone,
    this.selfLink,
    this.serverCaCert,
    this.serviceAccountEmailAddress,
    this.settings,
    this.sqlNetworkArchitecture,
    this.state,
    this.suspensionReason,
    this.switchTransactionLogsToCloudStorageEnabled,
    this.tags,
    this.upgradableDatabaseVersions,
    this.writeEndpoint,
  });

  DatabaseInstance.fromJson(core.Map json_)
    : this(
        availableMaintenanceVersions:
            (json_['availableMaintenanceVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        backendType: json_['backendType'] as core.String?,
        connectionName: json_['connectionName'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        currentDiskSize: json_['currentDiskSize'] as core.String?,
        databaseInstalledVersion:
            json_['databaseInstalledVersion'] as core.String?,
        databaseVersion: json_['databaseVersion'] as core.String?,
        diskEncryptionConfiguration:
            json_.containsKey('diskEncryptionConfiguration')
                ? DiskEncryptionConfiguration.fromJson(
                  json_['diskEncryptionConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        diskEncryptionStatus:
            json_.containsKey('diskEncryptionStatus')
                ? DiskEncryptionStatus.fromJson(
                  json_['diskEncryptionStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dnsName: json_['dnsName'] as core.String?,
        dnsNames:
            (json_['dnsNames'] as core.List?)
                ?.map(
                  (value) => DnsNameMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        etag: json_['etag'] as core.String?,
        failoverReplica:
            json_.containsKey('failoverReplica')
                ? DatabaseInstanceFailoverReplica.fromJson(
                  json_['failoverReplica']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gceZone: json_['gceZone'] as core.String?,
        geminiConfig:
            json_.containsKey('geminiConfig')
                ? GeminiInstanceConfig.fromJson(
                  json_['geminiConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        includeReplicasForMajorVersionUpgrade:
            json_['includeReplicasForMajorVersionUpgrade'] as core.bool?,
        instanceType: json_['instanceType'] as core.String?,
        ipAddresses:
            (json_['ipAddresses'] as core.List?)
                ?.map(
                  (value) => IpMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        ipv6Address: json_['ipv6Address'] as core.String?,
        kind: json_['kind'] as core.String?,
        maintenanceVersion: json_['maintenanceVersion'] as core.String?,
        masterInstanceName: json_['masterInstanceName'] as core.String?,
        maxDiskSize: json_['maxDiskSize'] as core.String?,
        name: json_['name'] as core.String?,
        nodeCount: json_['nodeCount'] as core.int?,
        nodes:
            (json_['nodes'] as core.List?)
                ?.map(
                  (value) => PoolNodeConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        onPremisesConfiguration:
            json_.containsKey('onPremisesConfiguration')
                ? OnPremisesConfiguration.fromJson(
                  json_['onPremisesConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        outOfDiskReport:
            json_.containsKey('outOfDiskReport')
                ? SqlOutOfDiskReport.fromJson(
                  json_['outOfDiskReport']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        primaryDnsName: json_['primaryDnsName'] as core.String?,
        project: json_['project'] as core.String?,
        pscServiceAttachmentLink:
            json_['pscServiceAttachmentLink'] as core.String?,
        region: json_['region'] as core.String?,
        replicaConfiguration:
            json_.containsKey('replicaConfiguration')
                ? ReplicaConfiguration.fromJson(
                  json_['replicaConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        replicaNames:
            (json_['replicaNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        replicationCluster:
            json_.containsKey('replicationCluster')
                ? ReplicationCluster.fromJson(
                  json_['replicationCluster']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rootPassword: json_['rootPassword'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        scheduledMaintenance:
            json_.containsKey('scheduledMaintenance')
                ? SqlScheduledMaintenance.fromJson(
                  json_['scheduledMaintenance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        secondaryGceZone: json_['secondaryGceZone'] as core.String?,
        selfLink: json_['selfLink'] as core.String?,
        serverCaCert:
            json_.containsKey('serverCaCert')
                ? SslCert.fromJson(
                  json_['serverCaCert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccountEmailAddress:
            json_['serviceAccountEmailAddress'] as core.String?,
        settings:
            json_.containsKey('settings')
                ? Settings.fromJson(
                  json_['settings'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sqlNetworkArchitecture: json_['sqlNetworkArchitecture'] as core.String?,
        state: json_['state'] as core.String?,
        suspensionReason:
            (json_['suspensionReason'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        switchTransactionLogsToCloudStorageEnabled:
            json_['switchTransactionLogsToCloudStorageEnabled'] as core.bool?,
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        upgradableDatabaseVersions:
            (json_['upgradableDatabaseVersions'] as core.List?)
                ?.map(
                  (value) => AvailableDatabaseVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        writeEndpoint: json_['writeEndpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (availableMaintenanceVersions != null)
      'availableMaintenanceVersions': availableMaintenanceVersions!,
    if (backendType != null) 'backendType': backendType!,
    if (connectionName != null) 'connectionName': connectionName!,
    if (createTime != null) 'createTime': createTime!,
    if (currentDiskSize != null) 'currentDiskSize': currentDiskSize!,
    if (databaseInstalledVersion != null)
      'databaseInstalledVersion': databaseInstalledVersion!,
    if (databaseVersion != null) 'databaseVersion': databaseVersion!,
    if (diskEncryptionConfiguration != null)
      'diskEncryptionConfiguration': diskEncryptionConfiguration!,
    if (diskEncryptionStatus != null)
      'diskEncryptionStatus': diskEncryptionStatus!,
    if (dnsName != null) 'dnsName': dnsName!,
    if (dnsNames != null) 'dnsNames': dnsNames!,
    if (etag != null) 'etag': etag!,
    if (failoverReplica != null) 'failoverReplica': failoverReplica!,
    if (gceZone != null) 'gceZone': gceZone!,
    if (geminiConfig != null) 'geminiConfig': geminiConfig!,
    if (includeReplicasForMajorVersionUpgrade != null)
      'includeReplicasForMajorVersionUpgrade':
          includeReplicasForMajorVersionUpgrade!,
    if (instanceType != null) 'instanceType': instanceType!,
    if (ipAddresses != null) 'ipAddresses': ipAddresses!,
    if (ipv6Address != null) 'ipv6Address': ipv6Address!,
    if (kind != null) 'kind': kind!,
    if (maintenanceVersion != null) 'maintenanceVersion': maintenanceVersion!,
    if (masterInstanceName != null) 'masterInstanceName': masterInstanceName!,
    if (maxDiskSize != null) 'maxDiskSize': maxDiskSize!,
    if (name != null) 'name': name!,
    if (nodeCount != null) 'nodeCount': nodeCount!,
    if (nodes != null) 'nodes': nodes!,
    if (onPremisesConfiguration != null)
      'onPremisesConfiguration': onPremisesConfiguration!,
    if (outOfDiskReport != null) 'outOfDiskReport': outOfDiskReport!,
    if (primaryDnsName != null) 'primaryDnsName': primaryDnsName!,
    if (project != null) 'project': project!,
    if (pscServiceAttachmentLink != null)
      'pscServiceAttachmentLink': pscServiceAttachmentLink!,
    if (region != null) 'region': region!,
    if (replicaConfiguration != null)
      'replicaConfiguration': replicaConfiguration!,
    if (replicaNames != null) 'replicaNames': replicaNames!,
    if (replicationCluster != null) 'replicationCluster': replicationCluster!,
    if (rootPassword != null) 'rootPassword': rootPassword!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (scheduledMaintenance != null)
      'scheduledMaintenance': scheduledMaintenance!,
    if (secondaryGceZone != null) 'secondaryGceZone': secondaryGceZone!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (serverCaCert != null) 'serverCaCert': serverCaCert!,
    if (serviceAccountEmailAddress != null)
      'serviceAccountEmailAddress': serviceAccountEmailAddress!,
    if (settings != null) 'settings': settings!,
    if (sqlNetworkArchitecture != null)
      'sqlNetworkArchitecture': sqlNetworkArchitecture!,
    if (state != null) 'state': state!,
    if (suspensionReason != null) 'suspensionReason': suspensionReason!,
    if (switchTransactionLogsToCloudStorageEnabled != null)
      'switchTransactionLogsToCloudStorageEnabled':
          switchTransactionLogsToCloudStorageEnabled!,
    if (tags != null) 'tags': tags!,
    if (upgradableDatabaseVersions != null)
      'upgradableDatabaseVersions': upgradableDatabaseVersions!,
    if (writeEndpoint != null) 'writeEndpoint': writeEndpoint!,
  };
}

/// Database list response.
class DatabasesListResponse {
  /// List of database resources in the instance.
  core.List<Database>? items;

  /// This is always `sql#databasesList`.
  core.String? kind;

  DatabasesListResponse({this.items, this.kind});

  DatabasesListResponse.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Database.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
  };
}

/// This context is used to demote an existing standalone instance to be a Cloud
/// SQL read replica for an external database server.
class DemoteContext {
  /// This is always `sql#demoteContext`.
  core.String? kind;

  /// The name of the instance which acts as an on-premises primary instance in
  /// the replication setup.
  ///
  /// Required.
  core.String? sourceRepresentativeInstanceName;

  DemoteContext({this.kind, this.sourceRepresentativeInstanceName});

  DemoteContext.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        sourceRepresentativeInstanceName:
            json_['sourceRepresentativeInstanceName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (sourceRepresentativeInstanceName != null)
      'sourceRepresentativeInstanceName': sourceRepresentativeInstanceName!,
  };
}

/// Read-replica configuration for connecting to the on-premises primary
/// instance.
class DemoteMasterConfiguration {
  /// This is always `sql#demoteMasterConfiguration`.
  core.String? kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises
  /// primary instance.
  ///
  /// Replication configuration information such as the username, password,
  /// certificates, and keys are not stored in the instance metadata. The
  /// configuration information is used only to set up the replication
  /// connection and is stored by MySQL in a file named `master.info` in the
  /// data directory.
  DemoteMasterMySqlReplicaConfiguration? mysqlReplicaConfiguration;

  DemoteMasterConfiguration({this.kind, this.mysqlReplicaConfiguration});

  DemoteMasterConfiguration.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        mysqlReplicaConfiguration:
            json_.containsKey('mysqlReplicaConfiguration')
                ? DemoteMasterMySqlReplicaConfiguration.fromJson(
                  json_['mysqlReplicaConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (mysqlReplicaConfiguration != null)
      'mysqlReplicaConfiguration': mysqlReplicaConfiguration!,
  };
}

/// Database instance demote primary instance context.
class DemoteMasterContext {
  /// This is always `sql#demoteMasterContext`.
  core.String? kind;

  /// The name of the instance which will act as on-premises primary instance in
  /// the replication setup.
  core.String? masterInstanceName;

  /// Configuration specific to read-replicas replicating from the on-premises
  /// primary instance.
  DemoteMasterConfiguration? replicaConfiguration;

  /// Flag to skip replication setup on the instance.
  core.bool? skipReplicationSetup;

  /// Verify the GTID consistency for demote operation.
  ///
  /// Default value: `True`. Setting this flag to `false` enables you to bypass
  /// the GTID consistency check between on-premises primary instance and Cloud
  /// SQL instance during the demotion operation but also exposes you to the
  /// risk of future replication failures. Change the value only if you know the
  /// reason for the GTID divergence and are confident that doing so will not
  /// cause any replication issues.
  core.bool? verifyGtidConsistency;

  DemoteMasterContext({
    this.kind,
    this.masterInstanceName,
    this.replicaConfiguration,
    this.skipReplicationSetup,
    this.verifyGtidConsistency,
  });

  DemoteMasterContext.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        masterInstanceName: json_['masterInstanceName'] as core.String?,
        replicaConfiguration:
            json_.containsKey('replicaConfiguration')
                ? DemoteMasterConfiguration.fromJson(
                  json_['replicaConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        skipReplicationSetup: json_['skipReplicationSetup'] as core.bool?,
        verifyGtidConsistency: json_['verifyGtidConsistency'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (masterInstanceName != null) 'masterInstanceName': masterInstanceName!,
    if (replicaConfiguration != null)
      'replicaConfiguration': replicaConfiguration!,
    if (skipReplicationSetup != null)
      'skipReplicationSetup': skipReplicationSetup!,
    if (verifyGtidConsistency != null)
      'verifyGtidConsistency': verifyGtidConsistency!,
  };
}

/// Read-replica configuration specific to MySQL databases.
class DemoteMasterMySqlReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String? caCertificate;

  /// PEM representation of the replica's x509 certificate.
  core.String? clientCertificate;

  /// PEM representation of the replica's private key.
  ///
  /// The corresponding public key is encoded in the client's certificate. The
  /// format of the replica's private key can be either PKCS #1 or PKCS #8.
  core.String? clientKey;

  /// This is always `sql#demoteMasterMysqlReplicaConfiguration`.
  core.String? kind;

  /// The password for the replication connection.
  core.String? password;

  /// The username for the replication connection.
  core.String? username;

  DemoteMasterMySqlReplicaConfiguration({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.kind,
    this.password,
    this.username,
  });

  DemoteMasterMySqlReplicaConfiguration.fromJson(core.Map json_)
    : this(
        caCertificate: json_['caCertificate'] as core.String?,
        clientCertificate: json_['clientCertificate'] as core.String?,
        clientKey: json_['clientKey'] as core.String?,
        kind: json_['kind'] as core.String?,
        password: json_['password'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caCertificate != null) 'caCertificate': caCertificate!,
    if (clientCertificate != null) 'clientCertificate': clientCertificate!,
    if (clientKey != null) 'clientKey': clientKey!,
    if (kind != null) 'kind': kind!,
    if (password != null) 'password': password!,
    if (username != null) 'username': username!,
  };
}

/// Deny Maintenance Periods.
///
/// This specifies a date range during when all CSA rollout will be denied.
class DenyMaintenancePeriod {
  /// "deny maintenance period" end date.
  ///
  /// If the year of the end date is empty, the year of the start date also must
  /// be empty. In this case, it means the deny maintenance period recurs every
  /// year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e.,
  /// 11-01
  core.String? endDate;

  /// "deny maintenance period" start date.
  ///
  /// If the year of the start date is empty, the year of the end date also must
  /// be empty. In this case, it means the deny maintenance period recurs every
  /// year. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e.,
  /// 11-01
  core.String? startDate;

  /// Time in UTC when the "deny maintenance period" starts on start_date and
  /// ends on end_date.
  ///
  /// The time is in format: HH:mm:SS, i.e., 00:00:00
  core.String? time;

  DenyMaintenancePeriod({this.endDate, this.startDate, this.time});

  DenyMaintenancePeriod.fromJson(core.Map json_)
    : this(
        endDate: json_['endDate'] as core.String?,
        startDate: json_['startDate'] as core.String?,
        time: json_['time'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endDate != null) 'endDate': endDate!,
    if (startDate != null) 'startDate': startDate!,
    if (time != null) 'time': time!,
  };
}

/// Disk encryption configuration for an instance.
class DiskEncryptionConfiguration {
  /// This is always `sql#diskEncryptionConfiguration`.
  core.String? kind;

  /// Resource name of KMS key for disk encryption
  core.String? kmsKeyName;

  DiskEncryptionConfiguration({this.kind, this.kmsKeyName});

  DiskEncryptionConfiguration.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        kmsKeyName: json_['kmsKeyName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
  };
}

/// Disk encryption status for an instance.
class DiskEncryptionStatus {
  /// This is always `sql#diskEncryptionStatus`.
  core.String? kind;

  /// KMS key version used to encrypt the Cloud SQL instance resource
  core.String? kmsKeyVersionName;

  DiskEncryptionStatus({this.kind, this.kmsKeyVersionName});

  DiskEncryptionStatus.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        kmsKeyVersionName: json_['kmsKeyVersionName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
  };
}

/// DNS metadata.
class DnsNameMapping {
  /// The connection type of the DNS name.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONNECTION_TYPE_UNSPECIFIED" : Unknown connection type.
  /// - "PUBLIC" : Public IP.
  /// - "PRIVATE_SERVICES_ACCESS" : Private services access (private IP).
  /// - "PRIVATE_SERVICE_CONNECT" : Private Service Connect.
  core.String? connectionType;

  /// The scope that the DNS name applies to.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DNS_SCOPE_UNSPECIFIED" : Unknown DNS scope.
  /// - "INSTANCE" : Indicates a instance-level DNS name.
  core.String? dnsScope;

  /// The DNS name.
  core.String? name;

  DnsNameMapping({this.connectionType, this.dnsScope, this.name});

  DnsNameMapping.fromJson(core.Map json_)
    : this(
        connectionType: json_['connectionType'] as core.String?,
        dnsScope: json_['dnsScope'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionType != null) 'connectionType': connectionType!,
    if (dnsScope != null) 'dnsScope': dnsScope!,
    if (name != null) 'name': name!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The request payload used to execute SQL statements.
class ExecuteSqlPayload {
  /// When set to true, the API caller identity associated with the request is
  /// used for database authentication.
  ///
  /// The API caller must be an IAM user in the database.
  ///
  /// Optional.
  core.bool? autoIamAuthn;

  /// Name of the database on which the statement will be executed.
  ///
  /// Optional.
  core.String? database;

  /// Controls how the API should respond when the SQL execution result exceeds
  /// 10 MB.
  ///
  /// The default mode is to throw an error.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PARTIAL_RESULT_MODE_UNSPECIFIED" : Unspecified mode, effectively the
  /// same as `FAIL_PARTIAL_RESULT`.
  /// - "FAIL_PARTIAL_RESULT" : Throw an error if the result exceeds 10 MB.
  /// Don't return the result.
  /// - "ALLOW_PARTIAL_RESULT" : Return a truncated result and set
  /// `partial_result` to true if the result exceeds 10 MB. Don't throw an
  /// error.
  core.String? partialResultMode;

  /// The maximum number of rows returned per SQL statement.
  ///
  /// Optional.
  core.String? rowLimit;

  /// SQL statements to run on the database.
  ///
  /// It can be a single statement or a sequence of statements separated by
  /// semicolons.
  ///
  /// Required.
  core.String? sqlStatement;

  /// The name of an existing database user to connect to the database.
  ///
  /// When `auto_iam_authn` is set to true, this field is ignored and the API
  /// caller's IAM user is used.
  ///
  /// Optional.
  core.String? user;

  ExecuteSqlPayload({
    this.autoIamAuthn,
    this.database,
    this.partialResultMode,
    this.rowLimit,
    this.sqlStatement,
    this.user,
  });

  ExecuteSqlPayload.fromJson(core.Map json_)
    : this(
        autoIamAuthn: json_['autoIamAuthn'] as core.bool?,
        database: json_['database'] as core.String?,
        partialResultMode: json_['partialResultMode'] as core.String?,
        rowLimit: json_['rowLimit'] as core.String?,
        sqlStatement: json_['sqlStatement'] as core.String?,
        user: json_['user'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoIamAuthn != null) 'autoIamAuthn': autoIamAuthn!,
    if (database != null) 'database': database!,
    if (partialResultMode != null) 'partialResultMode': partialResultMode!,
    if (rowLimit != null) 'rowLimit': rowLimit!,
    if (sqlStatement != null) 'sqlStatement': sqlStatement!,
    if (user != null) 'user': user!,
  };
}

/// Options for exporting BAK files (SQL Server-only)
class ExportContextBakExportOptions {
  /// Type of this bak file will be export, FULL or DIFF, SQL Server only
  /// Possible string values are:
  /// - "BAK_TYPE_UNSPECIFIED" : Default type.
  /// - "FULL" : Full backup.
  /// - "DIFF" : Differential backup.
  /// - "TLOG" : SQL Server Transaction Log
  core.String? bakType;

  /// Deprecated: copy_only is deprecated.
  ///
  /// Use differential_base instead
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? copyOnly;

  /// Whether or not the backup can be used as a differential base copy_only
  /// backup can not be served as differential base
  core.bool? differentialBase;

  /// The end timestamp when transaction log will be included in the export
  /// operation.
  ///
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format (for example,
  /// `2023-10-01T16:19:00.094`) in UTC. When omitted, all available logs until
  /// current time will be included. Only applied to Cloud SQL for SQL Server.
  ///
  /// Optional.
  core.String? exportLogEndTime;

  /// The begin timestamp when transaction log will be included in the export
  /// operation.
  ///
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format (for example,
  /// `2023-10-01T16:19:00.094`) in UTC. When omitted, all available logs from
  /// the beginning of retention period will be included. Only applied to Cloud
  /// SQL for SQL Server.
  ///
  /// Optional.
  core.String? exportLogStartTime;

  /// Option for specifying how many stripes to use for the export.
  ///
  /// If blank, and the value of the striped field is true, the number of
  /// stripes is automatically chosen.
  core.int? stripeCount;

  /// Whether or not the export should be striped.
  core.bool? striped;

  ExportContextBakExportOptions({
    this.bakType,
    this.copyOnly,
    this.differentialBase,
    this.exportLogEndTime,
    this.exportLogStartTime,
    this.stripeCount,
    this.striped,
  });

  ExportContextBakExportOptions.fromJson(core.Map json_)
    : this(
        bakType: json_['bakType'] as core.String?,
        copyOnly: json_['copyOnly'] as core.bool?,
        differentialBase: json_['differentialBase'] as core.bool?,
        exportLogEndTime: json_['exportLogEndTime'] as core.String?,
        exportLogStartTime: json_['exportLogStartTime'] as core.String?,
        stripeCount: json_['stripeCount'] as core.int?,
        striped: json_['striped'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bakType != null) 'bakType': bakType!,
    if (copyOnly != null) 'copyOnly': copyOnly!,
    if (differentialBase != null) 'differentialBase': differentialBase!,
    if (exportLogEndTime != null) 'exportLogEndTime': exportLogEndTime!,
    if (exportLogStartTime != null) 'exportLogStartTime': exportLogStartTime!,
    if (stripeCount != null) 'stripeCount': stripeCount!,
    if (striped != null) 'striped': striped!,
  };
}

/// Options for exporting data as CSV.
///
/// `MySQL` and `PostgreSQL` instances only.
class ExportContextCsvExportOptions {
  /// Specifies the character that should appear before a data character that
  /// needs to be escaped.
  core.String? escapeCharacter;

  /// Specifies the character that separates columns within each row (line) of
  /// the file.
  core.String? fieldsTerminatedBy;

  /// This is used to separate lines.
  ///
  /// If a line does not contain all fields, the rest of the columns are set to
  /// their default values.
  core.String? linesTerminatedBy;

  /// Specifies the quoting character to be used when a data value is quoted.
  core.String? quoteCharacter;

  /// The select query used to extract the data.
  core.String? selectQuery;

  ExportContextCsvExportOptions({
    this.escapeCharacter,
    this.fieldsTerminatedBy,
    this.linesTerminatedBy,
    this.quoteCharacter,
    this.selectQuery,
  });

  ExportContextCsvExportOptions.fromJson(core.Map json_)
    : this(
        escapeCharacter: json_['escapeCharacter'] as core.String?,
        fieldsTerminatedBy: json_['fieldsTerminatedBy'] as core.String?,
        linesTerminatedBy: json_['linesTerminatedBy'] as core.String?,
        quoteCharacter: json_['quoteCharacter'] as core.String?,
        selectQuery: json_['selectQuery'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (escapeCharacter != null) 'escapeCharacter': escapeCharacter!,
    if (fieldsTerminatedBy != null) 'fieldsTerminatedBy': fieldsTerminatedBy!,
    if (linesTerminatedBy != null) 'linesTerminatedBy': linesTerminatedBy!,
    if (quoteCharacter != null) 'quoteCharacter': quoteCharacter!,
    if (selectQuery != null) 'selectQuery': selectQuery!,
  };
}

/// Options for exporting from MySQL.
class ExportContextSqlExportOptionsMysqlExportOptions {
  /// Option to include SQL statement required to set up replication.
  ///
  /// If set to `1`, the dump file includes a CHANGE MASTER TO statement with
  /// the binary log coordinates, and --set-gtid-purged is set to ON. If set to
  /// `2`, the CHANGE MASTER TO statement is written as a SQL comment and has no
  /// effect. If set to any value other than `1`, --set-gtid-purged is set to
  /// OFF.
  core.int? masterData;

  ExportContextSqlExportOptionsMysqlExportOptions({this.masterData});

  ExportContextSqlExportOptionsMysqlExportOptions.fromJson(core.Map json_)
    : this(masterData: json_['masterData'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (masterData != null) 'masterData': masterData!,
  };
}

/// Options for exporting from a Cloud SQL for PostgreSQL instance.
class ExportContextSqlExportOptionsPostgresExportOptions {
  /// Use this option to include DROP \<object\> SQL statements.
  ///
  /// Use these statements to delete database objects before running the import
  /// operation.
  ///
  /// Optional.
  core.bool? clean;

  /// Option to include an IF EXISTS SQL statement with each DROP statement
  /// produced by clean.
  ///
  /// Optional.
  core.bool? ifExists;

  ExportContextSqlExportOptionsPostgresExportOptions({
    this.clean,
    this.ifExists,
  });

  ExportContextSqlExportOptionsPostgresExportOptions.fromJson(core.Map json_)
    : this(
        clean: json_['clean'] as core.bool?,
        ifExists: json_['ifExists'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clean != null) 'clean': clean!,
    if (ifExists != null) 'ifExists': ifExists!,
  };
}

/// Options for exporting data as SQL statements.
class ExportContextSqlExportOptions {
  /// Options for exporting from MySQL.
  ExportContextSqlExportOptionsMysqlExportOptions? mysqlExportOptions;

  /// Whether or not the export should be parallel.
  ///
  /// Optional.
  core.bool? parallel;

  /// Options for exporting from a Cloud SQL for PostgreSQL instance.
  ExportContextSqlExportOptionsPostgresExportOptions? postgresExportOptions;

  /// Export only schemas.
  core.bool? schemaOnly;

  /// Tables to export, or that were exported, from the specified database.
  ///
  /// If you specify tables, specify one and only one database. For PostgreSQL
  /// instances, you can specify only one table.
  core.List<core.String>? tables;

  /// The number of threads to use for parallel export.
  ///
  /// Optional.
  core.int? threads;

  ExportContextSqlExportOptions({
    this.mysqlExportOptions,
    this.parallel,
    this.postgresExportOptions,
    this.schemaOnly,
    this.tables,
    this.threads,
  });

  ExportContextSqlExportOptions.fromJson(core.Map json_)
    : this(
        mysqlExportOptions:
            json_.containsKey('mysqlExportOptions')
                ? ExportContextSqlExportOptionsMysqlExportOptions.fromJson(
                  json_['mysqlExportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        parallel: json_['parallel'] as core.bool?,
        postgresExportOptions:
            json_.containsKey('postgresExportOptions')
                ? ExportContextSqlExportOptionsPostgresExportOptions.fromJson(
                  json_['postgresExportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        schemaOnly: json_['schemaOnly'] as core.bool?,
        tables:
            (json_['tables'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        threads: json_['threads'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (mysqlExportOptions != null) 'mysqlExportOptions': mysqlExportOptions!,
    if (parallel != null) 'parallel': parallel!,
    if (postgresExportOptions != null)
      'postgresExportOptions': postgresExportOptions!,
    if (schemaOnly != null) 'schemaOnly': schemaOnly!,
    if (tables != null) 'tables': tables!,
    if (threads != null) 'threads': threads!,
  };
}

/// Export parameters specific to SQL Server TDE certificates
///
/// Optional.
class ExportContextTdeExportOptions {
  /// Path to the TDE certificate public key in the form
  /// gs://bucketName/fileName.
  ///
  /// The instance must have write access to the location. Applicable only for
  /// SQL Server instances.
  ///
  /// Required.
  core.String? certificatePath;

  /// Certificate name.
  ///
  /// Applicable only for SQL Server instances.
  ///
  /// Required.
  core.String? name;

  /// Password that encrypts the private key.
  ///
  /// Required.
  core.String? privateKeyPassword;

  /// Path to the TDE certificate private key in the form
  /// gs://bucketName/fileName.
  ///
  /// The instance must have write access to the location. Applicable only for
  /// SQL Server instances.
  ///
  /// Required.
  core.String? privateKeyPath;

  ExportContextTdeExportOptions({
    this.certificatePath,
    this.name,
    this.privateKeyPassword,
    this.privateKeyPath,
  });

  ExportContextTdeExportOptions.fromJson(core.Map json_)
    : this(
        certificatePath: json_['certificatePath'] as core.String?,
        name: json_['name'] as core.String?,
        privateKeyPassword: json_['privateKeyPassword'] as core.String?,
        privateKeyPath: json_['privateKeyPath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificatePath != null) 'certificatePath': certificatePath!,
    if (name != null) 'name': name!,
    if (privateKeyPassword != null) 'privateKeyPassword': privateKeyPassword!,
    if (privateKeyPath != null) 'privateKeyPath': privateKeyPath!,
  };
}

/// Database instance export context.
class ExportContext {
  /// Options for exporting BAK files (SQL Server-only)
  ExportContextBakExportOptions? bakExportOptions;

  /// Options for exporting data as CSV.
  ///
  /// `MySQL` and `PostgreSQL` instances only.
  ExportContextCsvExportOptions? csvExportOptions;

  /// Databases to be exported.
  ///
  /// `MySQL instances:` If `fileType` is `SQL` and no database is specified,
  /// all databases are exported, except for the `mysql` system database. If
  /// `fileType` is `CSV`, you can specify one database, either by using this
  /// property or by using the `csvExportOptions.selectQuery` property, which
  /// takes precedence over this property. `PostgreSQL instances:` If you don't
  /// specify a database by name, all user databases in the instance are
  /// exported. This excludes system databases and Cloud SQL databases used to
  /// manage internal operations. Exporting all user databases is only available
  /// for directory-formatted parallel export. If `fileType` is `CSV`, this
  /// database must match the one specified in the
  /// `csvExportOptions.selectQuery` property. `SQL Server instances:` You must
  /// specify one database to be exported, and the `fileType` must be `BAK`.
  core.List<core.String>? databases;

  /// The file type for the specified uri.
  /// Possible string values are:
  /// - "SQL_FILE_TYPE_UNSPECIFIED" : Unknown file type.
  /// - "SQL" : File containing SQL statements.
  /// - "CSV" : File in CSV format.
  /// - "BAK"
  /// - "TDE" : TDE certificate.
  core.String? fileType;

  /// This is always `sql#exportContext`.
  core.String? kind;

  /// Whether to perform a serverless export.
  core.bool? offload;

  /// Options for exporting data as SQL statements.
  ExportContextSqlExportOptions? sqlExportOptions;

  /// Export parameters specific to SQL Server TDE certificates
  ///
  /// Optional.
  ExportContextTdeExportOptions? tdeExportOptions;

  /// The path to the file in Google Cloud Storage where the export will be
  /// stored.
  ///
  /// The URI is in the form `gs://bucketName/fileName`. If the file already
  /// exists, the request succeeds, but the operation fails. If `fileType` is
  /// `SQL` and the filename ends with .gz, the contents are compressed.
  core.String? uri;

  ExportContext({
    this.bakExportOptions,
    this.csvExportOptions,
    this.databases,
    this.fileType,
    this.kind,
    this.offload,
    this.sqlExportOptions,
    this.tdeExportOptions,
    this.uri,
  });

  ExportContext.fromJson(core.Map json_)
    : this(
        bakExportOptions:
            json_.containsKey('bakExportOptions')
                ? ExportContextBakExportOptions.fromJson(
                  json_['bakExportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        csvExportOptions:
            json_.containsKey('csvExportOptions')
                ? ExportContextCsvExportOptions.fromJson(
                  json_['csvExportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        databases:
            (json_['databases'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        fileType: json_['fileType'] as core.String?,
        kind: json_['kind'] as core.String?,
        offload: json_['offload'] as core.bool?,
        sqlExportOptions:
            json_.containsKey('sqlExportOptions')
                ? ExportContextSqlExportOptions.fromJson(
                  json_['sqlExportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tdeExportOptions:
            json_.containsKey('tdeExportOptions')
                ? ExportContextTdeExportOptions.fromJson(
                  json_['tdeExportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bakExportOptions != null) 'bakExportOptions': bakExportOptions!,
    if (csvExportOptions != null) 'csvExportOptions': csvExportOptions!,
    if (databases != null) 'databases': databases!,
    if (fileType != null) 'fileType': fileType!,
    if (kind != null) 'kind': kind!,
    if (offload != null) 'offload': offload!,
    if (sqlExportOptions != null) 'sqlExportOptions': sqlExportOptions!,
    if (tdeExportOptions != null) 'tdeExportOptions': tdeExportOptions!,
    if (uri != null) 'uri': uri!,
  };
}

/// The selected object that Cloud SQL migrates.
class ExternalSyncSelectedObject {
  /// The name of the database that Cloud SQL migrates.
  core.String? database;

  ExternalSyncSelectedObject({this.database});

  ExternalSyncSelectedObject.fromJson(core.Map json_)
    : this(database: json_['database'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (database != null) 'database': database!,
  };
}

/// Database instance failover context.
class FailoverContext {
  /// This is always `sql#failoverContext`.
  core.String? kind;

  /// The current settings version of this instance.
  ///
  /// Request will be rejected if this version doesn't match the current
  /// settings version.
  core.String? settingsVersion;

  FailoverContext({this.kind, this.settingsVersion});

  FailoverContext.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        settingsVersion: json_['settingsVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (settingsVersion != null) 'settingsVersion': settingsVersion!,
  };
}

/// Config used to determine the final backup settings for the instance.
class FinalBackupConfig {
  /// Whether the final backup is enabled for the instance.
  core.bool? enabled;

  /// The number of days to retain the final backup after the instance deletion.
  ///
  /// The final backup will be purged at (time_of_instance_deletion +
  /// retention_days).
  core.int? retentionDays;

  FinalBackupConfig({this.enabled, this.retentionDays});

  FinalBackupConfig.fromJson(core.Map json_)
    : this(
        enabled: json_['enabled'] as core.bool?,
        retentionDays: json_['retentionDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (enabled != null) 'enabled': enabled!,
    if (retentionDays != null) 'retentionDays': retentionDays!,
  };
}

/// A flag resource.
class Flag {
  /// Use this field if only certain integers are accepted.
  ///
  /// Can be combined with min_value and max_value to add additional values.
  core.List<core.String>? allowedIntValues;

  /// For `STRING` flags, a list of strings that the value can be set to.
  core.List<core.String>? allowedStringValues;

  /// The database version this flag applies to.
  ///
  /// Can be MySQL instances: `MYSQL_8_0`, `MYSQL_8_0_18`, `MYSQL_8_0_26`,
  /// `MYSQL_5_7`, or `MYSQL_5_6`. PostgreSQL instances: `POSTGRES_9_6`,
  /// `POSTGRES_10`, `POSTGRES_11` or `POSTGRES_12`. SQL Server instances:
  /// `SQLSERVER_2017_STANDARD`, `SQLSERVER_2017_ENTERPRISE`,
  /// `SQLSERVER_2017_EXPRESS`, `SQLSERVER_2017_WEB`, `SQLSERVER_2019_STANDARD`,
  /// `SQLSERVER_2019_ENTERPRISE`, `SQLSERVER_2019_EXPRESS`, or
  /// `SQLSERVER_2019_WEB`. See \[the complete
  /// list\](/sql/docs/mysql/admin-api/rest/v1/SqlDatabaseVersion).
  core.List<core.String>? appliesTo;

  /// Scope of flag.
  /// Possible string values are:
  /// - "SQL_FLAG_SCOPE_UNSPECIFIED" : Assume database flags if unspecified
  /// - "SQL_FLAG_SCOPE_DATABASE" : database flags
  /// - "SQL_FLAG_SCOPE_CONNECTION_POOL" : connection pool configuration flags
  core.String? flagScope;

  /// Whether or not the flag is considered in beta.
  core.bool? inBeta;

  /// This is always `sql#flag`.
  core.String? kind;

  /// For `INTEGER` flags, the maximum allowed value.
  core.String? maxValue;

  /// For `INTEGER` flags, the minimum allowed value.
  core.String? minValue;

  /// This is the name of the flag.
  ///
  /// Flag names always use underscores, not hyphens, for example:
  /// `max_allowed_packet`
  core.String? name;

  /// Recommended flag value in integer format for UI display.
  core.String? recommendedIntValue;

  /// Recommended flag value in string format for UI display.
  core.String? recommendedStringValue;

  /// Indicates whether changing this flag will trigger a database restart.
  ///
  /// Only applicable to Second Generation instances.
  core.bool? requiresRestart;

  /// The type of the flag.
  ///
  /// Flags are typed to being `BOOLEAN`, `STRING`, `INTEGER` or `NONE`. `NONE`
  /// is used for flags which do not take a value, such as `skip_grant_tables`.
  /// Possible string values are:
  /// - "SQL_FLAG_TYPE_UNSPECIFIED" : This is an unknown flag type.
  /// - "BOOLEAN" : Boolean type flag.
  /// - "STRING" : String type flag.
  /// - "INTEGER" : Integer type flag.
  /// - "NONE" : Flag type used for a server startup option.
  /// - "MYSQL_TIMEZONE_OFFSET" : Type introduced specially for MySQL TimeZone
  /// offset. Accept a string value with the format \[-12:59, 13:00\].
  /// - "FLOAT" : Float type flag.
  /// - "REPEATED_STRING" : Comma-separated list of the strings in a SqlFlagType
  /// enum.
  core.String? type;

  Flag({
    this.allowedIntValues,
    this.allowedStringValues,
    this.appliesTo,
    this.flagScope,
    this.inBeta,
    this.kind,
    this.maxValue,
    this.minValue,
    this.name,
    this.recommendedIntValue,
    this.recommendedStringValue,
    this.requiresRestart,
    this.type,
  });

  Flag.fromJson(core.Map json_)
    : this(
        allowedIntValues:
            (json_['allowedIntValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        allowedStringValues:
            (json_['allowedStringValues'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        appliesTo:
            (json_['appliesTo'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        flagScope: json_['flagScope'] as core.String?,
        inBeta: json_['inBeta'] as core.bool?,
        kind: json_['kind'] as core.String?,
        maxValue: json_['maxValue'] as core.String?,
        minValue: json_['minValue'] as core.String?,
        name: json_['name'] as core.String?,
        recommendedIntValue: json_['recommendedIntValue'] as core.String?,
        recommendedStringValue: json_['recommendedStringValue'] as core.String?,
        requiresRestart: json_['requiresRestart'] as core.bool?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedIntValues != null) 'allowedIntValues': allowedIntValues!,
    if (allowedStringValues != null)
      'allowedStringValues': allowedStringValues!,
    if (appliesTo != null) 'appliesTo': appliesTo!,
    if (flagScope != null) 'flagScope': flagScope!,
    if (inBeta != null) 'inBeta': inBeta!,
    if (kind != null) 'kind': kind!,
    if (maxValue != null) 'maxValue': maxValue!,
    if (minValue != null) 'minValue': minValue!,
    if (name != null) 'name': name!,
    if (recommendedIntValue != null)
      'recommendedIntValue': recommendedIntValue!,
    if (recommendedStringValue != null)
      'recommendedStringValue': recommendedStringValue!,
    if (requiresRestart != null) 'requiresRestart': requiresRestart!,
    if (type != null) 'type': type!,
  };
}

/// Flags list response.
class FlagsListResponse {
  /// List of flags.
  core.List<Flag>? items;

  /// This is always `sql#flagsList`.
  core.String? kind;

  FlagsListResponse({this.items, this.kind});

  FlagsListResponse.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Flag.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
  };
}

/// Gemini instance configuration.
class GeminiInstanceConfig {
  /// Whether the active query is enabled.
  ///
  /// Output only.
  core.bool? activeQueryEnabled;

  /// Whether Gemini is enabled.
  ///
  /// Output only.
  core.bool? entitled;

  /// Whether the flag recommender is enabled.
  ///
  /// Output only.
  core.bool? flagRecommenderEnabled;

  /// Whether the vacuum management is enabled.
  ///
  /// Output only.
  core.bool? googleVacuumMgmtEnabled;

  /// Whether the index advisor is enabled.
  ///
  /// Output only.
  core.bool? indexAdvisorEnabled;

  /// Whether canceling the out-of-memory (OOM) session is enabled.
  ///
  /// Output only.
  core.bool? oomSessionCancelEnabled;

  GeminiInstanceConfig({
    this.activeQueryEnabled,
    this.entitled,
    this.flagRecommenderEnabled,
    this.googleVacuumMgmtEnabled,
    this.indexAdvisorEnabled,
    this.oomSessionCancelEnabled,
  });

  GeminiInstanceConfig.fromJson(core.Map json_)
    : this(
        activeQueryEnabled: json_['activeQueryEnabled'] as core.bool?,
        entitled: json_['entitled'] as core.bool?,
        flagRecommenderEnabled: json_['flagRecommenderEnabled'] as core.bool?,
        googleVacuumMgmtEnabled: json_['googleVacuumMgmtEnabled'] as core.bool?,
        indexAdvisorEnabled: json_['indexAdvisorEnabled'] as core.bool?,
        oomSessionCancelEnabled: json_['oomSessionCancelEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeQueryEnabled != null) 'activeQueryEnabled': activeQueryEnabled!,
    if (entitled != null) 'entitled': entitled!,
    if (flagRecommenderEnabled != null)
      'flagRecommenderEnabled': flagRecommenderEnabled!,
    if (googleVacuumMgmtEnabled != null)
      'googleVacuumMgmtEnabled': googleVacuumMgmtEnabled!,
    if (indexAdvisorEnabled != null)
      'indexAdvisorEnabled': indexAdvisorEnabled!,
    if (oomSessionCancelEnabled != null)
      'oomSessionCancelEnabled': oomSessionCancelEnabled!,
  };
}

/// Ephemeral certificate creation request.
class GenerateEphemeralCertRequest {
  /// Access token to include in the signed certificate.
  ///
  /// Optional.
  core.String? accessToken;

  /// PEM encoded public key to include in the signed certificate.
  core.String? publicKey;

  /// Optional snapshot read timestamp to trade freshness for performance.
  ///
  /// Optional.
  core.String? readTime;

  /// If set, it will contain the cert valid duration.
  ///
  /// Optional.
  core.String? validDuration;

  GenerateEphemeralCertRequest({
    this.accessToken,
    this.publicKey,
    this.readTime,
    this.validDuration,
  });

  GenerateEphemeralCertRequest.fromJson(core.Map json_)
    : this(
        accessToken: json_['access_token'] as core.String?,
        publicKey: json_['public_key'] as core.String?,
        readTime: json_['readTime'] as core.String?,
        validDuration: json_['validDuration'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessToken != null) 'access_token': accessToken!,
    if (publicKey != null) 'public_key': publicKey!,
    if (readTime != null) 'readTime': readTime!,
    if (validDuration != null) 'validDuration': validDuration!,
  };
}

/// Ephemeral certificate creation request.
class GenerateEphemeralCertResponse {
  /// Generated cert
  SslCert? ephemeralCert;

  GenerateEphemeralCertResponse({this.ephemeralCert});

  GenerateEphemeralCertResponse.fromJson(core.Map json_)
    : this(
        ephemeralCert:
            json_.containsKey('ephemeralCert')
                ? SslCert.fromJson(
                  json_['ephemeralCert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ephemeralCert != null) 'ephemeralCert': ephemeralCert!,
  };
}

class ImportContextBakImportOptionsEncryptionOptions {
  /// Path to the Certificate (.cer) in Cloud Storage, in the form
  /// `gs://bucketName/fileName`.
  ///
  /// The instance must have write permissions to the bucket and read access to
  /// the file.
  core.String? certPath;

  /// Whether the imported file remains encrypted.
  ///
  /// Optional.
  core.bool? keepEncrypted;

  /// Password that encrypts the private key
  core.String? pvkPassword;

  /// Path to the Certificate Private Key (.pvk) in Cloud Storage, in the form
  /// `gs://bucketName/fileName`.
  ///
  /// The instance must have write permissions to the bucket and read access to
  /// the file.
  core.String? pvkPath;

  ImportContextBakImportOptionsEncryptionOptions({
    this.certPath,
    this.keepEncrypted,
    this.pvkPassword,
    this.pvkPath,
  });

  ImportContextBakImportOptionsEncryptionOptions.fromJson(core.Map json_)
    : this(
        certPath: json_['certPath'] as core.String?,
        keepEncrypted: json_['keepEncrypted'] as core.bool?,
        pvkPassword: json_['pvkPassword'] as core.String?,
        pvkPath: json_['pvkPath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certPath != null) 'certPath': certPath!,
    if (keepEncrypted != null) 'keepEncrypted': keepEncrypted!,
    if (pvkPassword != null) 'pvkPassword': pvkPassword!,
    if (pvkPath != null) 'pvkPath': pvkPath!,
  };
}

/// Import parameters specific to SQL Server .BAK files
class ImportContextBakImportOptions {
  /// Type of the bak content, FULL or DIFF.
  /// Possible string values are:
  /// - "BAK_TYPE_UNSPECIFIED" : Default type.
  /// - "FULL" : Full backup.
  /// - "DIFF" : Differential backup.
  /// - "TLOG" : SQL Server Transaction Log
  core.String? bakType;
  ImportContextBakImportOptionsEncryptionOptions? encryptionOptions;

  /// Whether or not the backup importing will restore database with NORECOVERY
  /// option Applies only to Cloud SQL for SQL Server.
  core.bool? noRecovery;

  /// Whether or not the backup importing request will just bring database
  /// online without downloading Bak content only one of "no_recovery" and
  /// "recovery_only" can be true otherwise error will return.
  ///
  /// Applies only to Cloud SQL for SQL Server.
  core.bool? recoveryOnly;

  /// The timestamp when the import should stop.
  ///
  /// This timestamp is in the [RFC 3339](https://tools.ietf.org/html/rfc3339)
  /// format (for example, `2023-10-01T16:19:00.094`). This field is equivalent
  /// to the STOPAT keyword and applies to Cloud SQL for SQL Server only.
  ///
  /// Optional.
  core.String? stopAt;

  /// The marked transaction where the import should stop.
  ///
  /// This field is equivalent to the STOPATMARK keyword and applies to Cloud
  /// SQL for SQL Server only.
  ///
  /// Optional.
  core.String? stopAtMark;

  /// Whether or not the backup set being restored is striped.
  ///
  /// Applies only to Cloud SQL for SQL Server.
  core.bool? striped;

  ImportContextBakImportOptions({
    this.bakType,
    this.encryptionOptions,
    this.noRecovery,
    this.recoveryOnly,
    this.stopAt,
    this.stopAtMark,
    this.striped,
  });

  ImportContextBakImportOptions.fromJson(core.Map json_)
    : this(
        bakType: json_['bakType'] as core.String?,
        encryptionOptions:
            json_.containsKey('encryptionOptions')
                ? ImportContextBakImportOptionsEncryptionOptions.fromJson(
                  json_['encryptionOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        noRecovery: json_['noRecovery'] as core.bool?,
        recoveryOnly: json_['recoveryOnly'] as core.bool?,
        stopAt: json_['stopAt'] as core.String?,
        stopAtMark: json_['stopAtMark'] as core.String?,
        striped: json_['striped'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bakType != null) 'bakType': bakType!,
    if (encryptionOptions != null) 'encryptionOptions': encryptionOptions!,
    if (noRecovery != null) 'noRecovery': noRecovery!,
    if (recoveryOnly != null) 'recoveryOnly': recoveryOnly!,
    if (stopAt != null) 'stopAt': stopAt!,
    if (stopAtMark != null) 'stopAtMark': stopAtMark!,
    if (striped != null) 'striped': striped!,
  };
}

/// Options for importing data as CSV.
class ImportContextCsvImportOptions {
  /// The columns to which CSV data is imported.
  ///
  /// If not specified, all columns of the database table are loaded with CSV
  /// data.
  core.List<core.String>? columns;

  /// Specifies the character that should appear before a data character that
  /// needs to be escaped.
  core.String? escapeCharacter;

  /// Specifies the character that separates columns within each row (line) of
  /// the file.
  core.String? fieldsTerminatedBy;

  /// This is used to separate lines.
  ///
  /// If a line does not contain all fields, the rest of the columns are set to
  /// their default values.
  core.String? linesTerminatedBy;

  /// Specifies the quoting character to be used when a data value is quoted.
  core.String? quoteCharacter;

  /// The table to which CSV data is imported.
  core.String? table;

  ImportContextCsvImportOptions({
    this.columns,
    this.escapeCharacter,
    this.fieldsTerminatedBy,
    this.linesTerminatedBy,
    this.quoteCharacter,
    this.table,
  });

  ImportContextCsvImportOptions.fromJson(core.Map json_)
    : this(
        columns:
            (json_['columns'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        escapeCharacter: json_['escapeCharacter'] as core.String?,
        fieldsTerminatedBy: json_['fieldsTerminatedBy'] as core.String?,
        linesTerminatedBy: json_['linesTerminatedBy'] as core.String?,
        quoteCharacter: json_['quoteCharacter'] as core.String?,
        table: json_['table'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columns != null) 'columns': columns!,
    if (escapeCharacter != null) 'escapeCharacter': escapeCharacter!,
    if (fieldsTerminatedBy != null) 'fieldsTerminatedBy': fieldsTerminatedBy!,
    if (linesTerminatedBy != null) 'linesTerminatedBy': linesTerminatedBy!,
    if (quoteCharacter != null) 'quoteCharacter': quoteCharacter!,
    if (table != null) 'table': table!,
  };
}

/// Options for importing from a Cloud SQL for PostgreSQL instance.
///
/// Optional.
class ImportContextSqlImportOptionsPostgresImportOptions {
  /// The --clean flag for the pg_restore utility.
  ///
  /// This flag applies only if you enabled Cloud SQL to import files in
  /// parallel.
  ///
  /// Optional.
  core.bool? clean;

  /// The --if-exists flag for the pg_restore utility.
  ///
  /// This flag applies only if you enabled Cloud SQL to import files in
  /// parallel.
  ///
  /// Optional.
  core.bool? ifExists;

  ImportContextSqlImportOptionsPostgresImportOptions({
    this.clean,
    this.ifExists,
  });

  ImportContextSqlImportOptionsPostgresImportOptions.fromJson(core.Map json_)
    : this(
        clean: json_['clean'] as core.bool?,
        ifExists: json_['ifExists'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clean != null) 'clean': clean!,
    if (ifExists != null) 'ifExists': ifExists!,
  };
}

/// Options for importing data from SQL statements.
///
/// Optional.
class ImportContextSqlImportOptions {
  /// Whether or not the import should be parallel.
  ///
  /// Optional.
  core.bool? parallel;

  /// Options for importing from a Cloud SQL for PostgreSQL instance.
  ///
  /// Optional.
  ImportContextSqlImportOptionsPostgresImportOptions? postgresImportOptions;

  /// The number of threads to use for parallel import.
  ///
  /// Optional.
  core.int? threads;

  ImportContextSqlImportOptions({
    this.parallel,
    this.postgresImportOptions,
    this.threads,
  });

  ImportContextSqlImportOptions.fromJson(core.Map json_)
    : this(
        parallel: json_['parallel'] as core.bool?,
        postgresImportOptions:
            json_.containsKey('postgresImportOptions')
                ? ImportContextSqlImportOptionsPostgresImportOptions.fromJson(
                  json_['postgresImportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        threads: json_['threads'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (parallel != null) 'parallel': parallel!,
    if (postgresImportOptions != null)
      'postgresImportOptions': postgresImportOptions!,
    if (threads != null) 'threads': threads!,
  };
}

/// Import parameters specific to SQL Server .TDE files Import parameters
/// specific to SQL Server TDE certificates
///
/// Optional.
class ImportContextTdeImportOptions {
  /// Path to the TDE certificate public key in the form
  /// gs://bucketName/fileName.
  ///
  /// The instance must have read access to the file. Applicable only for SQL
  /// Server instances.
  ///
  /// Required.
  core.String? certificatePath;

  /// Certificate name.
  ///
  /// Applicable only for SQL Server instances.
  ///
  /// Required.
  core.String? name;

  /// Password that encrypts the private key.
  ///
  /// Required.
  core.String? privateKeyPassword;

  /// Path to the TDE certificate private key in the form
  /// gs://bucketName/fileName.
  ///
  /// The instance must have read access to the file. Applicable only for SQL
  /// Server instances.
  ///
  /// Required.
  core.String? privateKeyPath;

  ImportContextTdeImportOptions({
    this.certificatePath,
    this.name,
    this.privateKeyPassword,
    this.privateKeyPath,
  });

  ImportContextTdeImportOptions.fromJson(core.Map json_)
    : this(
        certificatePath: json_['certificatePath'] as core.String?,
        name: json_['name'] as core.String?,
        privateKeyPassword: json_['privateKeyPassword'] as core.String?,
        privateKeyPath: json_['privateKeyPath'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certificatePath != null) 'certificatePath': certificatePath!,
    if (name != null) 'name': name!,
    if (privateKeyPassword != null) 'privateKeyPassword': privateKeyPassword!,
    if (privateKeyPath != null) 'privateKeyPath': privateKeyPath!,
  };
}

/// Database instance import context.
class ImportContext {
  /// Import parameters specific to SQL Server .BAK files
  ImportContextBakImportOptions? bakImportOptions;

  /// Options for importing data as CSV.
  ImportContextCsvImportOptions? csvImportOptions;

  /// The target database for the import.
  ///
  /// If `fileType` is `SQL`, this field is required only if the import file
  /// does not specify a database, and is overridden by any database
  /// specification in the import file. For entire instance parallel import
  /// operations, the database is overridden by the database name stored in
  /// subdirectory name. If `fileType` is `CSV`, one database must be specified.
  core.String? database;

  /// The file type for the specified uri.
  ///
  /// * `SQL`: The file contains SQL statements. * `CSV`: The file contains CSV
  /// data. * `BAK`: The file contains backup data for a SQL Server instance.
  /// Possible string values are:
  /// - "SQL_FILE_TYPE_UNSPECIFIED" : Unknown file type.
  /// - "SQL" : File containing SQL statements.
  /// - "CSV" : File in CSV format.
  /// - "BAK"
  /// - "TDE" : TDE certificate.
  core.String? fileType;

  /// The PostgreSQL user for this import operation.
  ///
  /// PostgreSQL instances only.
  core.String? importUser;

  /// This is always `sql#importContext`.
  core.String? kind;

  /// Options for importing data from SQL statements.
  ///
  /// Optional.
  ImportContextSqlImportOptions? sqlImportOptions;

  /// Import parameters specific to SQL Server .TDE files Import parameters
  /// specific to SQL Server TDE certificates
  ///
  /// Optional.
  ImportContextTdeImportOptions? tdeImportOptions;

  /// Path to the import file in Cloud Storage, in the form
  /// `gs://bucketName/fileName`.
  ///
  /// Compressed gzip files (.gz) are supported when `fileType` is `SQL`. The
  /// instance must have write permissions to the bucket and read access to the
  /// file.
  core.String? uri;

  ImportContext({
    this.bakImportOptions,
    this.csvImportOptions,
    this.database,
    this.fileType,
    this.importUser,
    this.kind,
    this.sqlImportOptions,
    this.tdeImportOptions,
    this.uri,
  });

  ImportContext.fromJson(core.Map json_)
    : this(
        bakImportOptions:
            json_.containsKey('bakImportOptions')
                ? ImportContextBakImportOptions.fromJson(
                  json_['bakImportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        csvImportOptions:
            json_.containsKey('csvImportOptions')
                ? ImportContextCsvImportOptions.fromJson(
                  json_['csvImportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        database: json_['database'] as core.String?,
        fileType: json_['fileType'] as core.String?,
        importUser: json_['importUser'] as core.String?,
        kind: json_['kind'] as core.String?,
        sqlImportOptions:
            json_.containsKey('sqlImportOptions')
                ? ImportContextSqlImportOptions.fromJson(
                  json_['sqlImportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tdeImportOptions:
            json_.containsKey('tdeImportOptions')
                ? ImportContextTdeImportOptions.fromJson(
                  json_['tdeImportOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bakImportOptions != null) 'bakImportOptions': bakImportOptions!,
    if (csvImportOptions != null) 'csvImportOptions': csvImportOptions!,
    if (database != null) 'database': database!,
    if (fileType != null) 'fileType': fileType!,
    if (importUser != null) 'importUser': importUser!,
    if (kind != null) 'kind': kind!,
    if (sqlImportOptions != null) 'sqlImportOptions': sqlImportOptions!,
    if (tdeImportOptions != null) 'tdeImportOptions': tdeImportOptions!,
    if (uri != null) 'uri': uri!,
  };
}

/// Insights configuration.
///
/// This specifies when Cloud SQL Insights feature is enabled and optional
/// configuration.
class InsightsConfig {
  /// Whether Query Insights feature is enabled.
  core.bool? queryInsightsEnabled;

  /// Number of query execution plans captured by Insights per minute for all
  /// queries combined.
  ///
  /// Default is 5.
  core.int? queryPlansPerMinute;

  /// Maximum query length stored in bytes.
  ///
  /// Default value: 1024 bytes. Range: 256-4500 bytes. Query lengths greater
  /// than this field value will be truncated to this value. When unset, query
  /// length will be the default value. Changing query length will restart the
  /// database.
  core.int? queryStringLength;

  /// Whether Query Insights will record application tags from query when
  /// enabled.
  core.bool? recordApplicationTags;

  /// Whether Query Insights will record client address when enabled.
  core.bool? recordClientAddress;

  InsightsConfig({
    this.queryInsightsEnabled,
    this.queryPlansPerMinute,
    this.queryStringLength,
    this.recordApplicationTags,
    this.recordClientAddress,
  });

  InsightsConfig.fromJson(core.Map json_)
    : this(
        queryInsightsEnabled: json_['queryInsightsEnabled'] as core.bool?,
        queryPlansPerMinute: json_['queryPlansPerMinute'] as core.int?,
        queryStringLength: json_['queryStringLength'] as core.int?,
        recordApplicationTags: json_['recordApplicationTags'] as core.bool?,
        recordClientAddress: json_['recordClientAddress'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (queryInsightsEnabled != null)
      'queryInsightsEnabled': queryInsightsEnabled!,
    if (queryPlansPerMinute != null)
      'queryPlansPerMinute': queryPlansPerMinute!,
    if (queryStringLength != null) 'queryStringLength': queryStringLength!,
    if (recordApplicationTags != null)
      'recordApplicationTags': recordApplicationTags!,
    if (recordClientAddress != null)
      'recordClientAddress': recordClientAddress!,
  };
}

/// Reference to another Cloud SQL instance.
class InstanceReference {
  /// The name of the Cloud SQL instance being referenced.
  ///
  /// This does not include the project ID.
  core.String? name;

  /// The project ID of the Cloud SQL instance being referenced.
  ///
  /// The default is the same project ID as the instance references it.
  core.String? project;

  /// The region of the Cloud SQL instance being referenced.
  core.String? region;

  InstanceReference({this.name, this.project, this.region});

  InstanceReference.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        project: json_['project'] as core.String?,
        region: json_['region'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (project != null) 'project': project!,
    if (region != null) 'region': region!,
  };
}

/// Request to acquire an SSRS lease for an instance.
class InstancesAcquireSsrsLeaseRequest {
  /// Contains details about the acquire SSRS lease operation.
  AcquireSsrsLeaseContext? acquireSsrsLeaseContext;

  InstancesAcquireSsrsLeaseRequest({this.acquireSsrsLeaseContext});

  InstancesAcquireSsrsLeaseRequest.fromJson(core.Map json_)
    : this(
        acquireSsrsLeaseContext:
            json_.containsKey('acquireSsrsLeaseContext')
                ? AcquireSsrsLeaseContext.fromJson(
                  json_['acquireSsrsLeaseContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acquireSsrsLeaseContext != null)
      'acquireSsrsLeaseContext': acquireSsrsLeaseContext!,
  };
}

/// Database instance clone request.
class InstancesCloneRequest {
  /// Contains details about the clone operation.
  CloneContext? cloneContext;

  InstancesCloneRequest({this.cloneContext});

  InstancesCloneRequest.fromJson(core.Map json_)
    : this(
        cloneContext:
            json_.containsKey('cloneContext')
                ? CloneContext.fromJson(
                  json_['cloneContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cloneContext != null) 'cloneContext': cloneContext!,
  };
}

/// Database demote primary instance request.
class InstancesDemoteMasterRequest {
  /// Contains details about the demoteMaster operation.
  DemoteMasterContext? demoteMasterContext;

  InstancesDemoteMasterRequest({this.demoteMasterContext});

  InstancesDemoteMasterRequest.fromJson(core.Map json_)
    : this(
        demoteMasterContext:
            json_.containsKey('demoteMasterContext')
                ? DemoteMasterContext.fromJson(
                  json_['demoteMasterContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (demoteMasterContext != null)
      'demoteMasterContext': demoteMasterContext!,
  };
}

/// This request is used to demote an existing standalone instance to be a Cloud
/// SQL read replica for an external database server.
class InstancesDemoteRequest {
  /// This context is used to demote an existing standalone instance to be a
  /// Cloud SQL read replica for an external database server.
  ///
  /// Required.
  DemoteContext? demoteContext;

  InstancesDemoteRequest({this.demoteContext});

  InstancesDemoteRequest.fromJson(core.Map json_)
    : this(
        demoteContext:
            json_.containsKey('demoteContext')
                ? DemoteContext.fromJson(
                  json_['demoteContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (demoteContext != null) 'demoteContext': demoteContext!,
  };
}

/// Database instance export request.
class InstancesExportRequest {
  /// Contains details about the export operation.
  ExportContext? exportContext;

  InstancesExportRequest({this.exportContext});

  InstancesExportRequest.fromJson(core.Map json_)
    : this(
        exportContext:
            json_.containsKey('exportContext')
                ? ExportContext.fromJson(
                  json_['exportContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (exportContext != null) 'exportContext': exportContext!,
  };
}

/// Instance failover request.
class InstancesFailoverRequest {
  /// Failover Context.
  FailoverContext? failoverContext;

  InstancesFailoverRequest({this.failoverContext});

  InstancesFailoverRequest.fromJson(core.Map json_)
    : this(
        failoverContext:
            json_.containsKey('failoverContext')
                ? FailoverContext.fromJson(
                  json_['failoverContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (failoverContext != null) 'failoverContext': failoverContext!,
  };
}

/// Database instance import request.
class InstancesImportRequest {
  /// Contains details about the import operation.
  ImportContext? importContext;

  InstancesImportRequest({this.importContext});

  InstancesImportRequest.fromJson(core.Map json_)
    : this(
        importContext:
            json_.containsKey('importContext')
                ? ImportContext.fromJson(
                  json_['importContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (importContext != null) 'importContext': importContext!,
  };
}

/// Database instances list response.
class InstancesListResponse {
  /// List of database instance resources.
  core.List<DatabaseInstance>? items;

  /// This is always `sql#instancesList`.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  /// List of warnings that occurred while handling the request.
  core.List<ApiWarning>? warnings;

  InstancesListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
    this.warnings,
  });

  InstancesListResponse.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => DatabaseInstance.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
        warnings:
            (json_['warnings'] as core.List?)
                ?.map(
                  (value) => ApiWarning.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (warnings != null) 'warnings': warnings!,
  };
}

/// Instances ListServerCas response.
class InstancesListServerCasResponse {
  core.String? activeVersion;

  /// List of server CA certificates for the instance.
  core.List<SslCert>? certs;

  /// This is always `sql#instancesListServerCas`.
  core.String? kind;

  InstancesListServerCasResponse({this.activeVersion, this.certs, this.kind});

  InstancesListServerCasResponse.fromJson(core.Map json_)
    : this(
        activeVersion: json_['activeVersion'] as core.String?,
        certs:
            (json_['certs'] as core.List?)
                ?.map(
                  (value) => SslCert.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeVersion != null) 'activeVersion': activeVersion!,
    if (certs != null) 'certs': certs!,
    if (kind != null) 'kind': kind!,
  };
}

/// Instances ListServerCertificatess response.
class InstancesListServerCertificatesResponse {
  /// The `sha1_fingerprint` of the active certificate from `server_certs`.
  core.String? activeVersion;

  /// List of server CA certificates for the instance.
  core.List<SslCert>? caCerts;

  /// This is always `sql#instancesListServerCertificates`.
  core.String? kind;

  /// List of server certificates for the instance, signed by the corresponding
  /// CA from the `ca_certs` list.
  core.List<SslCert>? serverCerts;

  InstancesListServerCertificatesResponse({
    this.activeVersion,
    this.caCerts,
    this.kind,
    this.serverCerts,
  });

  InstancesListServerCertificatesResponse.fromJson(core.Map json_)
    : this(
        activeVersion: json_['activeVersion'] as core.String?,
        caCerts:
            (json_['caCerts'] as core.List?)
                ?.map(
                  (value) => SslCert.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        serverCerts:
            (json_['serverCerts'] as core.List?)
                ?.map(
                  (value) => SslCert.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeVersion != null) 'activeVersion': activeVersion!,
    if (caCerts != null) 'caCerts': caCerts!,
    if (kind != null) 'kind': kind!,
    if (serverCerts != null) 'serverCerts': serverCerts!,
  };
}

/// Database Instance reencrypt request.
class InstancesReencryptRequest {
  /// Configuration specific to backup re-encryption
  BackupReencryptionConfig? backupReencryptionConfig;

  InstancesReencryptRequest({this.backupReencryptionConfig});

  InstancesReencryptRequest.fromJson(core.Map json_)
    : this(
        backupReencryptionConfig:
            json_.containsKey('backupReencryptionConfig')
                ? BackupReencryptionConfig.fromJson(
                  json_['backupReencryptionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupReencryptionConfig != null)
      'backupReencryptionConfig': backupReencryptionConfig!,
  };
}

/// Database instance restore backup request.
class InstancesRestoreBackupRequest {
  /// The name of the backup that's used to restore a Cloud SQL instance:
  /// Format: projects/{project-id}/backups/{backup-uid}.
  ///
  /// Only one of restore_backup_context, backup, backupdr_backup can be passed
  /// to the input.
  core.String? backup;

  /// The name of the backup that's used to restore a Cloud SQL instance:
  /// Format:
  /// "projects/{project-id}/locations/{location}/backupVaults/{backupvault}/dataSources/{datasource}/backups/{backup-uid}".
  ///
  /// Only one of restore_backup_context, backup, backupdr_backup can be passed
  /// to the input.
  core.String? backupdrBackup;

  /// Parameters required to perform the restore backup operation.
  RestoreBackupContext? restoreBackupContext;

  /// This field has the same purpose as restore_instance_settings, changes any
  /// instance settings stored in the backup you are restoring from.
  ///
  /// With the difference that these fields are cleared in the settings.
  ///
  /// Optional.
  core.List<core.String>? restoreInstanceClearOverridesFieldNames;

  /// By using this parameter, Cloud SQL overrides any instance settings stored
  /// in the backup you are restoring from.
  ///
  /// You can't change the instance's major database version and you can only
  /// increase the disk size. You can use this field to restore new instances
  /// only. This field is not applicable for restore to existing instances.
  ///
  /// Optional.
  DatabaseInstance? restoreInstanceSettings;

  InstancesRestoreBackupRequest({
    this.backup,
    this.backupdrBackup,
    this.restoreBackupContext,
    this.restoreInstanceClearOverridesFieldNames,
    this.restoreInstanceSettings,
  });

  InstancesRestoreBackupRequest.fromJson(core.Map json_)
    : this(
        backup: json_['backup'] as core.String?,
        backupdrBackup: json_['backupdrBackup'] as core.String?,
        restoreBackupContext:
            json_.containsKey('restoreBackupContext')
                ? RestoreBackupContext.fromJson(
                  json_['restoreBackupContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        restoreInstanceClearOverridesFieldNames:
            (json_['restoreInstanceClearOverridesFieldNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        restoreInstanceSettings:
            json_.containsKey('restoreInstanceSettings')
                ? DatabaseInstance.fromJson(
                  json_['restoreInstanceSettings']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backup != null) 'backup': backup!,
    if (backupdrBackup != null) 'backupdrBackup': backupdrBackup!,
    if (restoreBackupContext != null)
      'restoreBackupContext': restoreBackupContext!,
    if (restoreInstanceClearOverridesFieldNames != null)
      'restoreInstanceClearOverridesFieldNames':
          restoreInstanceClearOverridesFieldNames!,
    if (restoreInstanceSettings != null)
      'restoreInstanceSettings': restoreInstanceSettings!,
  };
}

/// Rotate Server CA request.
class InstancesRotateServerCaRequest {
  /// Contains details about the rotate server CA operation.
  RotateServerCaContext? rotateServerCaContext;

  InstancesRotateServerCaRequest({this.rotateServerCaContext});

  InstancesRotateServerCaRequest.fromJson(core.Map json_)
    : this(
        rotateServerCaContext:
            json_.containsKey('rotateServerCaContext')
                ? RotateServerCaContext.fromJson(
                  json_['rotateServerCaContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rotateServerCaContext != null)
      'rotateServerCaContext': rotateServerCaContext!,
  };
}

/// Rotate Server Certificate request.
class InstancesRotateServerCertificateRequest {
  /// Contains details about the rotate server CA operation.
  ///
  /// Optional.
  RotateServerCertificateContext? rotateServerCertificateContext;

  InstancesRotateServerCertificateRequest({
    this.rotateServerCertificateContext,
  });

  InstancesRotateServerCertificateRequest.fromJson(core.Map json_)
    : this(
        rotateServerCertificateContext:
            json_.containsKey('rotateServerCertificateContext')
                ? RotateServerCertificateContext.fromJson(
                  json_['rotateServerCertificateContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rotateServerCertificateContext != null)
      'rotateServerCertificateContext': rotateServerCertificateContext!,
  };
}

/// Instance truncate log request.
class InstancesTruncateLogRequest {
  /// Contains details about the truncate log operation.
  TruncateLogContext? truncateLogContext;

  InstancesTruncateLogRequest({this.truncateLogContext});

  InstancesTruncateLogRequest.fromJson(core.Map json_)
    : this(
        truncateLogContext:
            json_.containsKey('truncateLogContext')
                ? TruncateLogContext.fromJson(
                  json_['truncateLogContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (truncateLogContext != null) 'truncateLogContext': truncateLogContext!,
  };
}

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
class Interval {
  /// Exclusive end of the interval.
  ///
  /// If specified, a Timestamp matching this interval will have to be before
  /// the end.
  ///
  /// Optional.
  core.String? endTime;

  /// Inclusive start of the interval.
  ///
  /// If specified, a Timestamp matching this interval will have to be the same
  /// or after the start.
  ///
  /// Optional.
  core.String? startTime;

  Interval({this.endTime, this.startTime});

  Interval.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// IP Management configuration.
class IpConfiguration {
  /// The name of the allocated ip range for the private ip Cloud SQL instance.
  ///
  /// For example: "google-managed-services-default". If set, the instance ip
  /// will be created in the allocated range. The range name must comply with
  /// [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name
  /// must be 1-63 characters long and match the regular expression
  /// `[a-z]([-a-z0-9]*[a-z0-9])?.`
  core.String? allocatedIpRange;

  /// The list of external networks that are allowed to connect to the instance
  /// using the IP.
  ///
  /// In 'CIDR' notation, also known as 'slash' notation (for example:
  /// `157.197.200.0/24`).
  core.List<AclEntry>? authorizedNetworks;

  /// Custom Subject Alternative Name(SAN)s for a Cloud SQL instance.
  ///
  /// Optional.
  core.List<core.String>? customSubjectAlternativeNames;

  /// Controls connectivity to private IP instances from Google services, such
  /// as BigQuery.
  core.bool? enablePrivatePathForGoogleCloudServices;

  /// Whether the instance is assigned a public IP address or not.
  core.bool? ipv4Enabled;

  /// The resource link for the VPC network from which the Cloud SQL instance is
  /// accessible for private IP.
  ///
  /// For example, `/projects/myProject/global/networks/default`. This setting
  /// can be updated, but it cannot be removed after it is set.
  core.String? privateNetwork;

  /// PSC settings for this instance.
  PscConfig? pscConfig;

  /// Use `ssl_mode` instead.
  ///
  /// Whether SSL/TLS connections over IP are enforced. If set to false, then
  /// allow both non-SSL/non-TLS and SSL/TLS connections. For SSL/TLS
  /// connections, the client certificate won't be verified. If set to true,
  /// then only allow connections encrypted with SSL/TLS and with valid client
  /// certificates. If you want to enforce SSL/TLS without enforcing the
  /// requirement for valid client certificates, then use the `ssl_mode` flag
  /// instead of the legacy `require_ssl` flag.
  core.bool? requireSsl;

  /// Specify what type of CA is used for the server certificate.
  /// Possible string values are:
  /// - "CA_MODE_UNSPECIFIED" : CA mode is unspecified. It is effectively the
  /// same as `GOOGLE_MANAGED_INTERNAL_CA`.
  /// - "GOOGLE_MANAGED_INTERNAL_CA" : Google-managed self-signed internal CA.
  /// - "GOOGLE_MANAGED_CAS_CA" : Google-managed regional CA part of root CA
  /// hierarchy hosted on Google Cloud's Certificate Authority Service (CAS).
  /// - "CUSTOMER_MANAGED_CAS_CA" : Customer-managed CA hosted on Google Cloud's
  /// Certificate Authority Service (CAS).
  core.String? serverCaMode;

  /// The resource name of the server CA pool for an instance with
  /// `CUSTOMER_MANAGED_CAS_CA` as the `server_ca_mode`.
  ///
  /// Format: projects/{PROJECT}/locations/{REGION}/caPools/{CA_POOL_ID}
  ///
  /// Optional.
  core.String? serverCaPool;

  /// Specify how SSL/TLS is enforced in database connections.
  ///
  /// If you must use the `require_ssl` flag for backward compatibility, then
  /// only the following value pairs are valid: For PostgreSQL and MySQL: *
  /// `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` *
  /// `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false` *
  /// `ssl_mode=TRUSTED_CLIENT_CERTIFICATE_REQUIRED` and `require_ssl=true` For
  /// SQL Server: * `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and
  /// `require_ssl=false` * `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=true` The
  /// value of `ssl_mode` has priority over the value of `require_ssl`. For
  /// example, for the pair `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false`,
  /// `ssl_mode=ENCRYPTED_ONLY` means accept only SSL connections, while
  /// `require_ssl=false` means accept both non-SSL and SSL connections. In this
  /// case, MySQL and PostgreSQL databases respect `ssl_mode` and accepts only
  /// SSL connections.
  /// Possible string values are:
  /// - "SSL_MODE_UNSPECIFIED" : The SSL mode is unknown.
  /// - "ALLOW_UNENCRYPTED_AND_ENCRYPTED" : Allow non-SSL/non-TLS and SSL/TLS
  /// connections. For SSL connections to MySQL and PostgreSQL, the client
  /// certificate isn't verified. When this value is used, the legacy
  /// `require_ssl` flag must be false or cleared to avoid a conflict between
  /// the values of the two flags.
  /// - "ENCRYPTED_ONLY" : Only allow connections encrypted with SSL/TLS. For
  /// SSL connections to MySQL and PostgreSQL, the client certificate isn't
  /// verified. When this value is used, the legacy `require_ssl` flag must be
  /// false or cleared to avoid a conflict between the values of the two flags.
  /// - "TRUSTED_CLIENT_CERTIFICATE_REQUIRED" : Only allow connections encrypted
  /// with SSL/TLS and with valid client certificates. When this value is used,
  /// the legacy `require_ssl` flag must be true or cleared to avoid the
  /// conflict between values of two flags. PostgreSQL clients or users that
  /// connect using IAM database authentication must use either the
  /// [Cloud SQL Auth Proxy](https://cloud.google.com/sql/docs/postgres/connect-auth-proxy)
  /// or
  /// [Cloud SQL Connectors](https://cloud.google.com/sql/docs/postgres/connect-connectors)
  /// to enforce client identity verification. Only applicable to MySQL and
  /// PostgreSQL. Not applicable to SQL Server.
  core.String? sslMode;

  IpConfiguration({
    this.allocatedIpRange,
    this.authorizedNetworks,
    this.customSubjectAlternativeNames,
    this.enablePrivatePathForGoogleCloudServices,
    this.ipv4Enabled,
    this.privateNetwork,
    this.pscConfig,
    this.requireSsl,
    this.serverCaMode,
    this.serverCaPool,
    this.sslMode,
  });

  IpConfiguration.fromJson(core.Map json_)
    : this(
        allocatedIpRange: json_['allocatedIpRange'] as core.String?,
        authorizedNetworks:
            (json_['authorizedNetworks'] as core.List?)
                ?.map(
                  (value) => AclEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        customSubjectAlternativeNames:
            (json_['customSubjectAlternativeNames'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        enablePrivatePathForGoogleCloudServices:
            json_['enablePrivatePathForGoogleCloudServices'] as core.bool?,
        ipv4Enabled: json_['ipv4Enabled'] as core.bool?,
        privateNetwork: json_['privateNetwork'] as core.String?,
        pscConfig:
            json_.containsKey('pscConfig')
                ? PscConfig.fromJson(
                  json_['pscConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        requireSsl: json_['requireSsl'] as core.bool?,
        serverCaMode: json_['serverCaMode'] as core.String?,
        serverCaPool: json_['serverCaPool'] as core.String?,
        sslMode: json_['sslMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedIpRange != null) 'allocatedIpRange': allocatedIpRange!,
    if (authorizedNetworks != null) 'authorizedNetworks': authorizedNetworks!,
    if (customSubjectAlternativeNames != null)
      'customSubjectAlternativeNames': customSubjectAlternativeNames!,
    if (enablePrivatePathForGoogleCloudServices != null)
      'enablePrivatePathForGoogleCloudServices':
          enablePrivatePathForGoogleCloudServices!,
    if (ipv4Enabled != null) 'ipv4Enabled': ipv4Enabled!,
    if (privateNetwork != null) 'privateNetwork': privateNetwork!,
    if (pscConfig != null) 'pscConfig': pscConfig!,
    if (requireSsl != null) 'requireSsl': requireSsl!,
    if (serverCaMode != null) 'serverCaMode': serverCaMode!,
    if (serverCaPool != null) 'serverCaPool': serverCaPool!,
    if (sslMode != null) 'sslMode': sslMode!,
  };
}

/// Database instance IP mapping
class IpMapping {
  /// The IP address assigned.
  core.String? ipAddress;

  /// The due time for this IP to be retired in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  ///
  /// This field is only available when the IP is scheduled to be retired.
  core.String? timeToRetire;

  /// The type of this IP address.
  ///
  /// A `PRIMARY` address is a public address that can accept incoming
  /// connections. A `PRIVATE` address is a private address that can accept
  /// incoming connections. An `OUTGOING` address is the source address of
  /// connections originating from the instance, if supported.
  /// Possible string values are:
  /// - "SQL_IP_ADDRESS_TYPE_UNSPECIFIED" : This is an unknown IP address type.
  /// - "PRIMARY" : IP address the customer is supposed to connect to. Usually
  /// this is the load balancer's IP address
  /// - "OUTGOING" : Source IP address of the connection a read replica
  /// establishes to its external primary instance. This IP address can be
  /// allowlisted by the customer in case it has a firewall that filters
  /// incoming connection to its on premises primary instance.
  /// - "PRIVATE" : Private IP used when using private IPs and network peering.
  /// - "MIGRATED_1ST_GEN" : V1 IP of a migrated instance. We want the user to
  /// decommission this IP as soon as the migration is complete. Note: V1
  /// instances with V1 ip addresses will be counted as PRIMARY.
  core.String? type;

  IpMapping({this.ipAddress, this.timeToRetire, this.type});

  IpMapping.fromJson(core.Map json_)
    : this(
        ipAddress: json_['ipAddress'] as core.String?,
        timeToRetire: json_['timeToRetire'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ipAddress != null) 'ipAddress': ipAddress!,
    if (timeToRetire != null) 'timeToRetire': timeToRetire!,
    if (type != null) 'type': type!,
  };
}

/// The response payload containing a list of the backups.
class ListBackupsResponse {
  /// A list of backups.
  core.List<Backup>? backups;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, then there aren't subsequent pages.
  core.String? nextPageToken;

  /// If a region isn't unavailable or if an unknown error occurs, then a
  /// warning message is returned.
  core.List<ApiWarning>? warnings;

  ListBackupsResponse({this.backups, this.nextPageToken, this.warnings});

  ListBackupsResponse.fromJson(core.Map json_)
    : this(
        backups:
            (json_['backups'] as core.List?)
                ?.map(
                  (value) => Backup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        warnings:
            (json_['warnings'] as core.List?)
                ?.map(
                  (value) => ApiWarning.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backups != null) 'backups': backups!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (warnings != null) 'warnings': warnings!,
  };
}

/// Preferred location.
///
/// This specifies where a Cloud SQL instance is located. Note that if the
/// preferred location is not available, the instance will be located as close
/// as possible within the region. Only one location may be specified.
class LocationPreference {
  /// The App Engine application to follow, it must be in the same region as the
  /// Cloud SQL instance.
  ///
  /// WARNING: Changing this might restart the instance.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? followGaeApplication;

  /// This is always `sql#locationPreference`.
  core.String? kind;

  /// The preferred Compute Engine zone for the secondary/failover (for example:
  /// us-central1-a, us-central1-b, etc.).
  ///
  /// To disable this field, set it to 'no_secondary_zone'.
  core.String? secondaryZone;

  /// The preferred Compute Engine zone (for example: us-central1-a,
  /// us-central1-b, etc.).
  ///
  /// WARNING: Changing this might restart the instance.
  core.String? zone;

  LocationPreference({
    this.followGaeApplication,
    this.kind,
    this.secondaryZone,
    this.zone,
  });

  LocationPreference.fromJson(core.Map json_)
    : this(
        followGaeApplication: json_['followGaeApplication'] as core.String?,
        kind: json_['kind'] as core.String?,
        secondaryZone: json_['secondaryZone'] as core.String?,
        zone: json_['zone'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (followGaeApplication != null)
      'followGaeApplication': followGaeApplication!,
    if (kind != null) 'kind': kind!,
    if (secondaryZone != null) 'secondaryZone': secondaryZone!,
    if (zone != null) 'zone': zone!,
  };
}

/// Maintenance window.
///
/// This specifies when a Cloud SQL instance is restarted for system maintenance
/// purposes.
class MaintenanceWindow {
  /// Day of week - `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`,
  /// `SATURDAY`, or `SUNDAY`.
  ///
  /// Specify in the UTC time zone. Returned in output as an integer, 1 to 7,
  /// where `1` equals Monday.
  core.int? day;

  /// Hour of day - 0 to 23.
  ///
  /// Specify in the UTC time zone.
  core.int? hour;

  /// This is always `sql#maintenanceWindow`.
  core.String? kind;

  /// Maintenance timing settings: `canary`, `stable`, or `week5`.
  ///
  /// For more information, see
  /// [About maintenance on Cloud SQL instances](https://cloud.google.com/sql/docs/mysql/maintenance).
  /// Possible string values are:
  /// - "SQL_UPDATE_TRACK_UNSPECIFIED" : This is an unknown maintenance timing
  /// preference.
  /// - "canary" : For an instance with a scheduled maintenance window, this
  /// maintenance timing indicates that the maintenance update is scheduled 7 to
  /// 14 days after the notification is sent out. Also referred to as `Week 1`
  /// (Console) and `preview` (gcloud CLI).
  /// - "stable" : For an instance with a scheduled maintenance window, this
  /// maintenance timing indicates that the maintenance update is scheduled 15
  /// to 21 days after the notification is sent out. Also referred to as `Week
  /// 2` (Console) and `production` (gcloud CLI).
  /// - "week5" : For instance with a scheduled maintenance window, this
  /// maintenance timing indicates that the maintenance update is scheduled 35
  /// to 42 days after the notification is sent out.
  core.String? updateTrack;

  MaintenanceWindow({this.day, this.hour, this.kind, this.updateTrack});

  MaintenanceWindow.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.int?,
        hour: json_['hour'] as core.int?,
        kind: json_['kind'] as core.String?,
        updateTrack: json_['updateTrack'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (day != null) 'day': day!,
    if (hour != null) 'hour': hour!,
    if (kind != null) 'kind': kind!,
    if (updateTrack != null) 'updateTrack': updateTrack!,
  };
}

/// Represents a notice or warning message from the database.
class Message {
  /// The full message string.
  ///
  /// For PostgreSQL, this is a formatted string that may include severity,
  /// code, and the notice/warning message. For MySQL, this contains the warning
  /// message.
  core.String? message;

  /// The severity of the message (e.g., "NOTICE" for PostgreSQL, "WARNING" for
  /// MySQL).
  core.String? severity;

  Message({this.message, this.severity});

  Message.fromJson(core.Map json_)
    : this(
        message: json_['message'] as core.String?,
        severity: json_['severity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (message != null) 'message': message!,
    if (severity != null) 'severity': severity!,
  };
}

/// The additional metadata information regarding the execution of the SQL
/// statements.
class Metadata {
  /// The time taken to execute the SQL statements.
  core.String? sqlStatementExecutionTime;

  Metadata({this.sqlStatementExecutionTime});

  Metadata.fromJson(core.Map json_)
    : this(
        sqlStatementExecutionTime:
            json_['sqlStatementExecutionTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sqlStatementExecutionTime != null)
      'sqlStatementExecutionTime': sqlStatementExecutionTime!,
  };
}

/// Read-replica configuration specific to MySQL databases.
class MySqlReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String? caCertificate;

  /// PEM representation of the replica's x509 certificate.
  core.String? clientCertificate;

  /// PEM representation of the replica's private key.
  ///
  /// The corresponding public key is encoded in the client's certificate.
  core.String? clientKey;

  /// Seconds to wait between connect retries.
  ///
  /// MySQL's default is 60 seconds.
  core.int? connectRetryInterval;

  /// Path to a SQL dump file in Google Cloud Storage from which the replica
  /// instance is to be created.
  ///
  /// The URI is in the form gs://bucketName/fileName. Compressed gzip files
  /// (.gz) are also supported. Dumps have the binlog co-ordinates from which
  /// replication begins. This can be accomplished by setting --master-data to 1
  /// when using mysqldump.
  core.String? dumpFilePath;

  /// This is always `sql#mysqlReplicaConfiguration`.
  core.String? kind;

  /// Interval in milliseconds between replication heartbeats.
  core.String? masterHeartbeatPeriod;

  /// The password for the replication connection.
  core.String? password;

  /// A list of permissible ciphers to use for SSL encryption.
  core.String? sslCipher;

  /// The username for the replication connection.
  core.String? username;

  /// Whether or not to check the primary instance's Common Name value in the
  /// certificate that it sends during the SSL handshake.
  core.bool? verifyServerCertificate;

  MySqlReplicaConfiguration({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.connectRetryInterval,
    this.dumpFilePath,
    this.kind,
    this.masterHeartbeatPeriod,
    this.password,
    this.sslCipher,
    this.username,
    this.verifyServerCertificate,
  });

  MySqlReplicaConfiguration.fromJson(core.Map json_)
    : this(
        caCertificate: json_['caCertificate'] as core.String?,
        clientCertificate: json_['clientCertificate'] as core.String?,
        clientKey: json_['clientKey'] as core.String?,
        connectRetryInterval: json_['connectRetryInterval'] as core.int?,
        dumpFilePath: json_['dumpFilePath'] as core.String?,
        kind: json_['kind'] as core.String?,
        masterHeartbeatPeriod: json_['masterHeartbeatPeriod'] as core.String?,
        password: json_['password'] as core.String?,
        sslCipher: json_['sslCipher'] as core.String?,
        username: json_['username'] as core.String?,
        verifyServerCertificate: json_['verifyServerCertificate'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caCertificate != null) 'caCertificate': caCertificate!,
    if (clientCertificate != null) 'clientCertificate': clientCertificate!,
    if (clientKey != null) 'clientKey': clientKey!,
    if (connectRetryInterval != null)
      'connectRetryInterval': connectRetryInterval!,
    if (dumpFilePath != null) 'dumpFilePath': dumpFilePath!,
    if (kind != null) 'kind': kind!,
    if (masterHeartbeatPeriod != null)
      'masterHeartbeatPeriod': masterHeartbeatPeriod!,
    if (password != null) 'password': password!,
    if (sslCipher != null) 'sslCipher': sslCipher!,
    if (username != null) 'username': username!,
    if (verifyServerCertificate != null)
      'verifyServerCertificate': verifyServerCertificate!,
  };
}

/// MySQL-specific external server sync settings.
class MySqlSyncConfig {
  /// Flags to use for the initial dump.
  core.List<SyncFlags>? initialSyncFlags;

  MySqlSyncConfig({this.initialSyncFlags});

  MySqlSyncConfig.fromJson(core.Map json_)
    : this(
        initialSyncFlags:
            (json_['initialSyncFlags'] as core.List?)
                ?.map(
                  (value) => SyncFlags.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (initialSyncFlags != null) 'initialSyncFlags': initialSyncFlags!,
  };
}

/// On-premises instance configuration.
class OnPremisesConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String? caCertificate;

  /// PEM representation of the replica's x509 certificate.
  core.String? clientCertificate;

  /// PEM representation of the replica's private key.
  ///
  /// The corresponding public key is encoded in the client's certificate.
  core.String? clientKey;

  /// The dump file to create the Cloud SQL replica.
  core.String? dumpFilePath;

  /// The host and port of the on-premises instance in host:port format
  core.String? hostPort;

  /// This is always `sql#onPremisesConfiguration`.
  core.String? kind;

  /// The password for connecting to on-premises instance.
  core.String? password;

  /// A list of objects that the user selects for replication from an external
  /// source instance.
  ///
  /// Optional.
  core.List<SelectedObjects>? selectedObjects;

  /// The reference to Cloud SQL instance if the source is Cloud SQL.
  InstanceReference? sourceInstance;

  /// SslOption for replica connection to the on-premises source.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SSL_OPTION_UNSPECIFIED" : Unknown SSL option i.e. SSL option not
  /// specified by user.
  /// - "DISABLE" : SSL is disabled for replica connection to the on-premises
  /// source.
  /// - "REQUIRE" : SSL is required for replica connection to the on-premises
  /// source.
  /// - "VERIFY_CA" : Verify CA is required for replica connection to the
  /// on-premises source.
  core.String? sslOption;

  /// The username for connecting to on-premises instance.
  core.String? username;

  OnPremisesConfiguration({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.dumpFilePath,
    this.hostPort,
    this.kind,
    this.password,
    this.selectedObjects,
    this.sourceInstance,
    this.sslOption,
    this.username,
  });

  OnPremisesConfiguration.fromJson(core.Map json_)
    : this(
        caCertificate: json_['caCertificate'] as core.String?,
        clientCertificate: json_['clientCertificate'] as core.String?,
        clientKey: json_['clientKey'] as core.String?,
        dumpFilePath: json_['dumpFilePath'] as core.String?,
        hostPort: json_['hostPort'] as core.String?,
        kind: json_['kind'] as core.String?,
        password: json_['password'] as core.String?,
        selectedObjects:
            (json_['selectedObjects'] as core.List?)
                ?.map(
                  (value) => SelectedObjects.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        sourceInstance:
            json_.containsKey('sourceInstance')
                ? InstanceReference.fromJson(
                  json_['sourceInstance']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sslOption: json_['sslOption'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (caCertificate != null) 'caCertificate': caCertificate!,
    if (clientCertificate != null) 'clientCertificate': clientCertificate!,
    if (clientKey != null) 'clientKey': clientKey!,
    if (dumpFilePath != null) 'dumpFilePath': dumpFilePath!,
    if (hostPort != null) 'hostPort': hostPort!,
    if (kind != null) 'kind': kind!,
    if (password != null) 'password': password!,
    if (selectedObjects != null) 'selectedObjects': selectedObjects!,
    if (sourceInstance != null) 'sourceInstance': sourceInstance!,
    if (sslOption != null) 'sslOption': sslOption!,
    if (username != null) 'username': username!,
  };
}

/// An Operation resource.
///
/// For successful operations that return an Operation resource, only the fields
/// relevant to the operation are populated in the resource.
class Operation {
  /// The context for acquire SSRS lease operation, if applicable.
  AcquireSsrsLeaseContext? acquireSsrsLeaseContext;

  /// An Admin API warning message.
  ApiWarning? apiWarning;

  /// The context for backup operation, if applicable.
  BackupContext? backupContext;

  /// The time this operation finished in UTC timezone in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? endTime;

  /// If errors occurred during processing of this operation, this field will be
  /// populated.
  OperationErrors? error;

  /// The context for export operation, if applicable.
  ExportContext? exportContext;

  /// The context for import operation, if applicable.
  ImportContext? importContext;

  /// The time this operation was enqueued in UTC timezone in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? insertTime;

  /// This is always `sql#operation`.
  core.String? kind;

  /// An identifier that uniquely identifies the operation.
  ///
  /// You can use this identifier to retrieve the Operations resource that has
  /// information about the operation.
  core.String? name;

  /// The type of the operation.
  ///
  /// Valid values are: * `CREATE` * `DELETE` * `UPDATE` * `RESTART` * `IMPORT`
  /// * `EXPORT` * `BACKUP_VOLUME` * `RESTORE_VOLUME` * `CREATE_USER` *
  /// `DELETE_USER` * `CREATE_DATABASE` * `DELETE_DATABASE`
  /// Possible string values are:
  /// - "SQL_OPERATION_TYPE_UNSPECIFIED" : Unknown operation type.
  /// - "IMPORT" : Imports data into a Cloud SQL instance.
  /// - "EXPORT" : Exports data from a Cloud SQL instance to a Cloud Storage
  /// bucket.
  /// - "CREATE" : Creates a new Cloud SQL instance.
  /// - "UPDATE" : Updates the settings of a Cloud SQL instance.
  /// - "DELETE" : Deletes a Cloud SQL instance.
  /// - "RESTART" : Restarts the Cloud SQL instance.
  /// - "BACKUP"
  /// - "SNAPSHOT"
  /// - "BACKUP_VOLUME" : Performs instance backup.
  /// - "DELETE_VOLUME" : Deletes an instance backup.
  /// - "RESTORE_VOLUME" : Restores an instance backup.
  /// - "INJECT_USER" : Injects a privileged user in mysql for MOB instances.
  /// - "CLONE" : Clones a Cloud SQL instance.
  /// - "STOP_REPLICA" : Stops replication on a Cloud SQL read replica instance.
  /// - "START_REPLICA" : Starts replication on a Cloud SQL read replica
  /// instance.
  /// - "PROMOTE_REPLICA" : Promotes a Cloud SQL replica instance.
  /// - "CREATE_REPLICA" : Creates a Cloud SQL replica instance.
  /// - "CREATE_USER" : Creates a new user in a Cloud SQL instance.
  /// - "DELETE_USER" : Deletes a user from a Cloud SQL instance.
  /// - "UPDATE_USER" : Updates an existing user in a Cloud SQL instance.
  /// - "CREATE_DATABASE" : Creates a database in the Cloud SQL instance.
  /// - "DELETE_DATABASE" : Deletes a database in the Cloud SQL instance.
  /// - "UPDATE_DATABASE" : Updates a database in the Cloud SQL instance.
  /// - "FAILOVER" : Performs failover of an HA-enabled Cloud SQL failover
  /// replica.
  /// - "DELETE_BACKUP" : Deletes the backup taken by a backup run.
  /// - "RECREATE_REPLICA"
  /// - "TRUNCATE_LOG" : Truncates a general or slow log table in MySQL.
  /// - "DEMOTE_MASTER" : Demotes the stand-alone instance to be a Cloud SQL
  /// read replica for an external database server.
  /// - "MAINTENANCE" : Indicates that the instance is currently in maintenance.
  /// Maintenance typically causes the instance to be unavailable for 1-3
  /// minutes.
  /// - "ENABLE_PRIVATE_IP" : This field is deprecated, and will be removed in
  /// future version of API.
  /// - "DEFER_MAINTENANCE"
  /// - "CREATE_CLONE" : Creates clone instance.
  /// - "RESCHEDULE_MAINTENANCE" : Reschedule maintenance to another time.
  /// - "START_EXTERNAL_SYNC" : Starts external sync of a Cloud SQL EM replica
  /// to an external primary instance.
  /// - "LOG_CLEANUP" : Recovers logs from an instance's old data disk.
  /// - "AUTO_RESTART" : Performs auto-restart of an HA-enabled Cloud SQL
  /// database for auto recovery.
  /// - "REENCRYPT" : Re-encrypts CMEK instances with latest key version.
  /// - "SWITCHOVER" : Switches the roles of the primary and replica pair. The
  /// target instance should be the replica.
  /// - "UPDATE_BACKUP" : Update a backup.
  /// - "ACQUIRE_SSRS_LEASE" : Acquire a lease for the setup of SQL Server
  /// Reporting Services (SSRS).
  /// - "RELEASE_SSRS_LEASE" : Release a lease for the setup of SQL Server
  /// Reporting Services (SSRS).
  /// - "RECONFIGURE_OLD_PRIMARY" : Reconfigures old primary after a promote
  /// replica operation. Effect of a promote operation to the old primary is
  /// executed in this operation, asynchronously from the promote replica
  /// operation executed to the replica.
  /// - "CLUSTER_MAINTENANCE" : Indicates that the instance, its read replicas,
  /// and its cascading replicas are in maintenance. Maintenance typically gets
  /// initiated on groups of replicas first, followed by the primary instance.
  /// For each instance, maintenance typically causes the instance to be
  /// unavailable for 1-3 minutes.
  /// - "SELF_SERVICE_MAINTENANCE" : Indicates that the instance (and any of its
  /// replicas) are currently in maintenance. This is initiated as a
  /// self-service request by using SSM. Maintenance typically causes the
  /// instance to be unavailable for 1-3 minutes.
  /// - "SWITCHOVER_TO_REPLICA" : Switches a primary instance to a replica. This
  /// operation runs as part of a switchover operation to the original primary
  /// instance.
  /// - "MAJOR_VERSION_UPGRADE" : Updates the major version of a Cloud SQL
  /// instance.
  /// - "ADVANCED_BACKUP" : Deprecated: ADVANCED_BACKUP is deprecated. Use
  /// ENHANCED_BACKUP instead.
  /// - "MANAGE_BACKUP" : Changes the BackupTier of a Cloud SQL instance.
  /// - "ENHANCED_BACKUP" : Creates a backup for an Enhanced BackupTier Cloud
  /// SQL instance.
  /// - "REPAIR_READ_POOL" : Repairs entire read pool or specified read pool
  /// nodes in the read pool.
  /// - "CREATE_READ_POOL" : Creates a Cloud SQL read pool instance.
  core.String? operationType;

  /// The URI of this resource.
  core.String? selfLink;

  /// The time this operation actually started in UTC timezone in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? startTime;

  /// The status of an operation.
  /// Possible string values are:
  /// - "SQL_OPERATION_STATUS_UNSPECIFIED" : The state of the operation is
  /// unknown.
  /// - "PENDING" : The operation has been queued, but has not started yet.
  /// - "RUNNING" : The operation is running.
  /// - "DONE" : The operation completed.
  core.String? status;

  /// The sub operation based on the operation type.
  ///
  /// Optional.
  SqlSubOperationType? subOperationType;

  /// Name of the resource on which this operation runs.
  core.String? targetId;
  core.String? targetLink;

  /// The project ID of the target instance related to this operation.
  core.String? targetProject;

  /// The email address of the user who initiated this operation.
  core.String? user;

  Operation({
    this.acquireSsrsLeaseContext,
    this.apiWarning,
    this.backupContext,
    this.endTime,
    this.error,
    this.exportContext,
    this.importContext,
    this.insertTime,
    this.kind,
    this.name,
    this.operationType,
    this.selfLink,
    this.startTime,
    this.status,
    this.subOperationType,
    this.targetId,
    this.targetLink,
    this.targetProject,
    this.user,
  });

  Operation.fromJson(core.Map json_)
    : this(
        acquireSsrsLeaseContext:
            json_.containsKey('acquireSsrsLeaseContext')
                ? AcquireSsrsLeaseContext.fromJson(
                  json_['acquireSsrsLeaseContext']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        apiWarning:
            json_.containsKey('apiWarning')
                ? ApiWarning.fromJson(
                  json_['apiWarning'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        backupContext:
            json_.containsKey('backupContext')
                ? BackupContext.fromJson(
                  json_['backupContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        endTime: json_['endTime'] as core.String?,
        error:
            json_.containsKey('error')
                ? OperationErrors.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        exportContext:
            json_.containsKey('exportContext')
                ? ExportContext.fromJson(
                  json_['exportContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        importContext:
            json_.containsKey('importContext')
                ? ImportContext.fromJson(
                  json_['importContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        insertTime: json_['insertTime'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        operationType: json_['operationType'] as core.String?,
        selfLink: json_['selfLink'] as core.String?,
        startTime: json_['startTime'] as core.String?,
        status: json_['status'] as core.String?,
        subOperationType:
            json_.containsKey('subOperationType')
                ? SqlSubOperationType.fromJson(
                  json_['subOperationType']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        targetId: json_['targetId'] as core.String?,
        targetLink: json_['targetLink'] as core.String?,
        targetProject: json_['targetProject'] as core.String?,
        user: json_['user'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acquireSsrsLeaseContext != null)
      'acquireSsrsLeaseContext': acquireSsrsLeaseContext!,
    if (apiWarning != null) 'apiWarning': apiWarning!,
    if (backupContext != null) 'backupContext': backupContext!,
    if (endTime != null) 'endTime': endTime!,
    if (error != null) 'error': error!,
    if (exportContext != null) 'exportContext': exportContext!,
    if (importContext != null) 'importContext': importContext!,
    if (insertTime != null) 'insertTime': insertTime!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
    if (operationType != null) 'operationType': operationType!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (startTime != null) 'startTime': startTime!,
    if (status != null) 'status': status!,
    if (subOperationType != null) 'subOperationType': subOperationType!,
    if (targetId != null) 'targetId': targetId!,
    if (targetLink != null) 'targetLink': targetLink!,
    if (targetProject != null) 'targetProject': targetProject!,
    if (user != null) 'user': user!,
  };
}

/// Database instance operation error.
class OperationError {
  /// Identifies the specific error that occurred.
  core.String? code;

  /// This is always `sql#operationError`.
  core.String? kind;

  /// Additional information about the error encountered.
  core.String? message;

  OperationError({this.code, this.kind, this.message});

  OperationError.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        kind: json_['kind'] as core.String?,
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (code != null) 'code': code!,
    if (kind != null) 'kind': kind!,
    if (message != null) 'message': message!,
  };
}

/// Database instance operation errors list wrapper.
class OperationErrors {
  /// The list of errors encountered while processing this operation.
  core.List<OperationError>? errors;

  /// This is always `sql#operationErrors`.
  core.String? kind;

  OperationErrors({this.errors, this.kind});

  OperationErrors.fromJson(core.Map json_)
    : this(
        errors:
            (json_['errors'] as core.List?)
                ?.map(
                  (value) => OperationError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errors != null) 'errors': errors!,
    if (kind != null) 'kind': kind!,
  };
}

/// Operations list response.
class OperationsListResponse {
  /// List of operation resources.
  core.List<Operation>? items;

  /// This is always `sql#operationsList`.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  OperationsListResponse({this.items, this.kind, this.nextPageToken});

  OperationsListResponse.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Read-only password status.
class PasswordStatus {
  /// If true, user does not have login privileges.
  core.bool? locked;

  /// The expiration time of the current password.
  core.String? passwordExpirationTime;

  PasswordStatus({this.locked, this.passwordExpirationTime});

  PasswordStatus.fromJson(core.Map json_)
    : this(
        locked: json_['locked'] as core.bool?,
        passwordExpirationTime: json_['passwordExpirationTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locked != null) 'locked': locked!,
    if (passwordExpirationTime != null)
      'passwordExpirationTime': passwordExpirationTime!,
  };
}

/// Database instance local user password validation policy
class PasswordValidationPolicy {
  /// The complexity of the password.
  /// Possible string values are:
  /// - "COMPLEXITY_UNSPECIFIED" : Complexity check is not specified.
  /// - "COMPLEXITY_DEFAULT" : A combination of lowercase, uppercase, numeric,
  /// and non-alphanumeric characters.
  core.String? complexity;

  /// This field is deprecated and will be removed in a future version of the
  /// API.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? disallowCompromisedCredentials;

  /// Disallow username as a part of the password.
  core.bool? disallowUsernameSubstring;

  /// Whether the password policy is enabled or not.
  core.bool? enablePasswordPolicy;

  /// Minimum number of characters allowed.
  core.int? minLength;

  /// Minimum interval after which the password can be changed.
  ///
  /// This flag is only supported for PostgreSQL.
  core.String? passwordChangeInterval;

  /// Number of previous passwords that cannot be reused.
  core.int? reuseInterval;

  PasswordValidationPolicy({
    this.complexity,
    this.disallowCompromisedCredentials,
    this.disallowUsernameSubstring,
    this.enablePasswordPolicy,
    this.minLength,
    this.passwordChangeInterval,
    this.reuseInterval,
  });

  PasswordValidationPolicy.fromJson(core.Map json_)
    : this(
        complexity: json_['complexity'] as core.String?,
        disallowCompromisedCredentials:
            json_['disallowCompromisedCredentials'] as core.bool?,
        disallowUsernameSubstring:
            json_['disallowUsernameSubstring'] as core.bool?,
        enablePasswordPolicy: json_['enablePasswordPolicy'] as core.bool?,
        minLength: json_['minLength'] as core.int?,
        passwordChangeInterval: json_['passwordChangeInterval'] as core.String?,
        reuseInterval: json_['reuseInterval'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (complexity != null) 'complexity': complexity!,
    if (disallowCompromisedCredentials != null)
      'disallowCompromisedCredentials': disallowCompromisedCredentials!,
    if (disallowUsernameSubstring != null)
      'disallowUsernameSubstring': disallowUsernameSubstring!,
    if (enablePasswordPolicy != null)
      'enablePasswordPolicy': enablePasswordPolicy!,
    if (minLength != null) 'minLength': minLength!,
    if (passwordChangeInterval != null)
      'passwordChangeInterval': passwordChangeInterval!,
    if (reuseInterval != null) 'reuseInterval': reuseInterval!,
  };
}

/// Perform disk shrink context.
class PerformDiskShrinkContext {
  /// The target disk shrink size in GigaBytes.
  core.String? targetSizeGb;

  PerformDiskShrinkContext({this.targetSizeGb});

  PerformDiskShrinkContext.fromJson(core.Map json_)
    : this(targetSizeGb: json_['targetSizeGb'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (targetSizeGb != null) 'targetSizeGb': targetSizeGb!,
  };
}

/// Context to perform a point-in-time restore of an instance managed by Google
/// Cloud Backup and Disaster Recovery.
class PointInTimeRestoreContext {
  /// The name of the allocated IP range for the internal IP Cloud SQL instance.
  ///
  /// For example: "google-managed-services-default". If you set this, then
  /// Cloud SQL creates the IP address for the cloned instance in the allocated
  /// range. This range must comply with
  /// [RFC 1035](https://tools.ietf.org/html/rfc1035) standards. Specifically,
  /// the name must be 1-63 characters long and match the regular expression
  /// \[a-z\](\[-a-z0-9\]*\[a-z0-9\])?. Reserved for future use.
  ///
  /// Optional.
  core.String? allocatedIpRange;

  /// The Google Cloud Backup and Disaster Recovery Datasource URI.
  ///
  /// Format:
  /// projects/{project}/locations/{region}/backupVaults/{backupvault}/dataSources/{datasource}.
  core.String? datasource;

  /// The date and time to which you want to restore the instance.
  ///
  /// Required.
  core.String? pointInTime;

  /// Point-in-time recovery of a regional instance in the specified zones.
  ///
  /// If not specified, clone to the same secondary zone as the source instance.
  /// This value cannot be the same as the preferred_zone field.
  ///
  /// Optional.
  core.String? preferredSecondaryZone;

  /// Point-in-time recovery of an instance to the specified zone.
  ///
  /// If no zone is specified, then clone to the same primary zone as the source
  /// instance.
  ///
  /// Optional.
  core.String? preferredZone;

  /// The resource link for the VPC network from which the Cloud SQL instance is
  /// accessible for private IP.
  ///
  /// For example, `/projects/myProject/global/networks/default`.
  ///
  /// Optional.
  core.String? privateNetwork;

  /// Target instance name.
  core.String? targetInstance;

  PointInTimeRestoreContext({
    this.allocatedIpRange,
    this.datasource,
    this.pointInTime,
    this.preferredSecondaryZone,
    this.preferredZone,
    this.privateNetwork,
    this.targetInstance,
  });

  PointInTimeRestoreContext.fromJson(core.Map json_)
    : this(
        allocatedIpRange: json_['allocatedIpRange'] as core.String?,
        datasource: json_['datasource'] as core.String?,
        pointInTime: json_['pointInTime'] as core.String?,
        preferredSecondaryZone: json_['preferredSecondaryZone'] as core.String?,
        preferredZone: json_['preferredZone'] as core.String?,
        privateNetwork: json_['privateNetwork'] as core.String?,
        targetInstance: json_['targetInstance'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allocatedIpRange != null) 'allocatedIpRange': allocatedIpRange!,
    if (datasource != null) 'datasource': datasource!,
    if (pointInTime != null) 'pointInTime': pointInTime!,
    if (preferredSecondaryZone != null)
      'preferredSecondaryZone': preferredSecondaryZone!,
    if (preferredZone != null) 'preferredZone': preferredZone!,
    if (privateNetwork != null) 'privateNetwork': privateNetwork!,
    if (targetInstance != null) 'targetInstance': targetInstance!,
  };
}

/// Details of a single read pool node of a read pool.
class PoolNodeConfig {
  /// The DNS name of the read pool node.
  ///
  /// Output only.
  core.String? dnsName;

  /// The list of DNS names used by this read pool node.
  ///
  /// Output only.
  core.List<DnsNameMapping>? dnsNames;

  /// The zone of the read pool node.
  ///
  /// Output only.
  core.String? gceZone;

  /// Mappings containing IP addresses that can be used to connect to the read
  /// pool node.
  ///
  /// Output only.
  core.List<IpMapping>? ipAddresses;

  /// The name of the read pool node, to be used for retrieving metrics and
  /// logs.
  ///
  /// Output only.
  core.String? name;

  /// The current state of the read pool node.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SQL_INSTANCE_STATE_UNSPECIFIED" : The state of the instance is unknown.
  /// - "RUNNABLE" : The instance is running, or has been stopped by owner.
  /// - "SUSPENDED" : The instance is not available, for example due to problems
  /// with billing.
  /// - "PENDING_DELETE" : The instance is being deleted.
  /// - "PENDING_CREATE" : The instance is being created.
  /// - "MAINTENANCE" : The instance is down for maintenance.
  /// - "FAILED" : The creation of the instance failed or a fatal error occurred
  /// during maintenance.
  /// - "ONLINE_MAINTENANCE" : Deprecated
  /// - "REPAIRING" : (Applicable to read pool nodes only.) The read pool node
  /// needs to be repaired. The database might be unavailable.
  core.String? state;

  PoolNodeConfig({
    this.dnsName,
    this.dnsNames,
    this.gceZone,
    this.ipAddresses,
    this.name,
    this.state,
  });

  PoolNodeConfig.fromJson(core.Map json_)
    : this(
        dnsName: json_['dnsName'] as core.String?,
        dnsNames:
            (json_['dnsNames'] as core.List?)
                ?.map(
                  (value) => DnsNameMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        gceZone: json_['gceZone'] as core.String?,
        ipAddresses:
            (json_['ipAddresses'] as core.List?)
                ?.map(
                  (value) => IpMapping.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dnsName != null) 'dnsName': dnsName!,
    if (dnsNames != null) 'dnsNames': dnsNames!,
    if (gceZone != null) 'gceZone': gceZone!,
    if (ipAddresses != null) 'ipAddresses': ipAddresses!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
  };
}

/// Settings for an automatically-setup Private Service Connect consumer
/// endpoint that is used to connect to a Cloud SQL instance.
class PscAutoConnectionConfig {
  /// The consumer network of this consumer endpoint.
  ///
  /// This must be a resource path that includes both the host project and the
  /// network name. For example, `projects/project1/global/networks/network1`.
  /// The consumer host project of this network might be different from the
  /// consumer service project.
  ///
  /// Optional.
  core.String? consumerNetwork;

  /// The connection policy status of the consumer network.
  core.String? consumerNetworkStatus;

  /// This is the project ID of consumer service project of this consumer
  /// endpoint.
  ///
  /// Optional. This is only applicable if consumer_network is a shared vpc
  /// network.
  ///
  /// Optional.
  core.String? consumerProject;

  /// The IP address of the consumer endpoint.
  core.String? ipAddress;

  /// The connection status of the consumer endpoint.
  core.String? status;

  PscAutoConnectionConfig({
    this.consumerNetwork,
    this.consumerNetworkStatus,
    this.consumerProject,
    this.ipAddress,
    this.status,
  });

  PscAutoConnectionConfig.fromJson(core.Map json_)
    : this(
        consumerNetwork: json_['consumerNetwork'] as core.String?,
        consumerNetworkStatus: json_['consumerNetworkStatus'] as core.String?,
        consumerProject: json_['consumerProject'] as core.String?,
        ipAddress: json_['ipAddress'] as core.String?,
        status: json_['status'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (consumerNetwork != null) 'consumerNetwork': consumerNetwork!,
    if (consumerNetworkStatus != null)
      'consumerNetworkStatus': consumerNetworkStatus!,
    if (consumerProject != null) 'consumerProject': consumerProject!,
    if (ipAddress != null) 'ipAddress': ipAddress!,
    if (status != null) 'status': status!,
  };
}

/// PSC settings for a Cloud SQL instance.
class PscConfig {
  /// The list of consumer projects that are allow-listed for PSC connections to
  /// this instance.
  ///
  /// This instance can be connected to with PSC from any network in these
  /// projects. Each consumer project in this list may be represented by a
  /// project number (numeric) or by a project id (alphanumeric).
  ///
  /// Optional.
  core.List<core.String>? allowedConsumerProjects;

  /// The network attachment of the consumer network that the Private Service
  /// Connect enabled Cloud SQL instance is authorized to connect via PSC
  /// interface.
  ///
  /// format: projects/PROJECT/regions/REGION/networkAttachments/ID
  ///
  /// Optional.
  core.String? networkAttachmentUri;

  /// The list of settings for requested Private Service Connect consumer
  /// endpoints that can be used to connect to this Cloud SQL instance.
  ///
  /// Optional.
  core.List<PscAutoConnectionConfig>? pscAutoConnections;

  /// Whether PSC connectivity is enabled for this instance.
  core.bool? pscEnabled;

  PscConfig({
    this.allowedConsumerProjects,
    this.networkAttachmentUri,
    this.pscAutoConnections,
    this.pscEnabled,
  });

  PscConfig.fromJson(core.Map json_)
    : this(
        allowedConsumerProjects:
            (json_['allowedConsumerProjects'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        networkAttachmentUri: json_['networkAttachmentUri'] as core.String?,
        pscAutoConnections:
            (json_['pscAutoConnections'] as core.List?)
                ?.map(
                  (value) => PscAutoConnectionConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        pscEnabled: json_['pscEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedConsumerProjects != null)
      'allowedConsumerProjects': allowedConsumerProjects!,
    if (networkAttachmentUri != null)
      'networkAttachmentUri': networkAttachmentUri!,
    if (pscAutoConnections != null) 'pscAutoConnections': pscAutoConnections!,
    if (pscEnabled != null) 'pscEnabled': pscEnabled!,
  };
}

/// QueryResult contains the result of executing a single SQL statement.
class QueryResult {
  /// List of columns included in the result.
  ///
  /// This also includes the data type of the column.
  core.List<Column>? columns;

  /// Message related to the SQL execution result.
  core.String? message;

  /// Set to true if the SQL execution's result is truncated due to size limits.
  core.bool? partialResult;

  /// Rows returned by the SQL statement.
  core.List<Row>? rows;

  QueryResult({this.columns, this.message, this.partialResult, this.rows});

  QueryResult.fromJson(core.Map json_)
    : this(
        columns:
            (json_['columns'] as core.List?)
                ?.map(
                  (value) => Column.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        message: json_['message'] as core.String?,
        partialResult: json_['partialResult'] as core.bool?,
        rows:
            (json_['rows'] as core.List?)
                ?.map(
                  (value) => Row.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (columns != null) 'columns': columns!,
    if (message != null) 'message': message!,
    if (partialResult != null) 'partialResult': partialResult!,
    if (rows != null) 'rows': rows!,
  };
}

/// The read pool auto-scale configuration.
class ReadPoolAutoScaleConfig {
  /// Indicates whether read pool auto scaling supports scale in operations
  /// (removing nodes).
  core.bool? disableScaleIn;

  /// Indicates whether read pool auto scaling is enabled.
  core.bool? enabled;

  /// Maximum number of read pool nodes to be maintained.
  core.int? maxNodeCount;

  /// Minimum number of read pool nodes to be maintained.
  core.int? minNodeCount;

  /// Target metrics for read pool auto scaling.
  ///
  /// Optional.
  core.List<TargetMetric>? targetMetrics;

  ReadPoolAutoScaleConfig({
    this.disableScaleIn,
    this.enabled,
    this.maxNodeCount,
    this.minNodeCount,
    this.targetMetrics,
  });

  ReadPoolAutoScaleConfig.fromJson(core.Map json_)
    : this(
        disableScaleIn: json_['disableScaleIn'] as core.bool?,
        enabled: json_['enabled'] as core.bool?,
        maxNodeCount: json_['maxNodeCount'] as core.int?,
        minNodeCount: json_['minNodeCount'] as core.int?,
        targetMetrics:
            (json_['targetMetrics'] as core.List?)
                ?.map(
                  (value) => TargetMetric.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disableScaleIn != null) 'disableScaleIn': disableScaleIn!,
    if (enabled != null) 'enabled': enabled!,
    if (maxNodeCount != null) 'maxNodeCount': maxNodeCount!,
    if (minNodeCount != null) 'minNodeCount': minNodeCount!,
    if (targetMetrics != null) 'targetMetrics': targetMetrics!,
  };
}

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfiguration {
  /// Specifies if a SQL Server replica is a cascadable replica.
  ///
  /// A cascadable replica is a SQL Server cross region replica that supports
  /// replica(s) under it.
  ///
  /// Optional.
  core.bool? cascadableReplica;

  /// Specifies if the replica is the failover target.
  ///
  /// If the field is set to `true` the replica will be designated as a failover
  /// replica. In case the primary instance fails, the replica instance will be
  /// promoted as the new primary instance. Only one replica can be specified as
  /// failover target, and the replica has to be in different zone with the
  /// primary instance.
  core.bool? failoverTarget;

  /// This is always `sql#replicaConfiguration`.
  core.String? kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises
  /// primary instance.
  ///
  /// Replication configuration information such as the username, password,
  /// certificates, and keys are not stored in the instance metadata. The
  /// configuration information is used only to set up the replication
  /// connection and is stored by MySQL in a file named `master.info` in the
  /// data directory.
  MySqlReplicaConfiguration? mysqlReplicaConfiguration;

  ReplicaConfiguration({
    this.cascadableReplica,
    this.failoverTarget,
    this.kind,
    this.mysqlReplicaConfiguration,
  });

  ReplicaConfiguration.fromJson(core.Map json_)
    : this(
        cascadableReplica: json_['cascadableReplica'] as core.bool?,
        failoverTarget: json_['failoverTarget'] as core.bool?,
        kind: json_['kind'] as core.String?,
        mysqlReplicaConfiguration:
            json_.containsKey('mysqlReplicaConfiguration')
                ? MySqlReplicaConfiguration.fromJson(
                  json_['mysqlReplicaConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cascadableReplica != null) 'cascadableReplica': cascadableReplica!,
    if (failoverTarget != null) 'failoverTarget': failoverTarget!,
    if (kind != null) 'kind': kind!,
    if (mysqlReplicaConfiguration != null)
      'mysqlReplicaConfiguration': mysqlReplicaConfiguration!,
  };
}

/// A primary instance and disaster recovery (DR) replica pair.
///
/// A DR replica is a cross-region replica that you designate for failover in
/// the event that the primary instance has regional failure. Applicable to
/// MySQL and PostgreSQL.
class ReplicationCluster {
  /// Read-only field that indicates whether the replica is a DR replica.
  ///
  /// This field is not set if the instance is a primary instance.
  ///
  /// Output only.
  core.bool? drReplica;

  /// If the instance is a primary instance, then this field identifies the
  /// disaster recovery (DR) replica.
  ///
  /// A DR replica is an optional configuration for Enterprise Plus edition
  /// instances. If the instance is a read replica, then the field is not set.
  /// Set this field to a replica name to designate a DR replica for a primary
  /// instance. Remove the replica name to remove the DR replica designation.
  ///
  /// Optional.
  core.String? failoverDrReplicaName;

  /// If set, this field indicates this instance has a private service access
  /// (PSA) DNS endpoint that is pointing to the primary instance of the
  /// cluster.
  ///
  /// If this instance is the primary, then the DNS endpoint points to this
  /// instance. After a switchover or replica failover operation, this DNS
  /// endpoint points to the promoted instance. This is a read-only field,
  /// returned to the user as information. This field can exist even if a
  /// standalone instance doesn't have a DR replica yet or the DR replica is
  /// deleted.
  ///
  /// Output only.
  core.String? psaWriteEndpoint;

  ReplicationCluster({
    this.drReplica,
    this.failoverDrReplicaName,
    this.psaWriteEndpoint,
  });

  ReplicationCluster.fromJson(core.Map json_)
    : this(
        drReplica: json_['drReplica'] as core.bool?,
        failoverDrReplicaName: json_['failoverDrReplicaName'] as core.String?,
        psaWriteEndpoint: json_['psaWriteEndpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (drReplica != null) 'drReplica': drReplica!,
    if (failoverDrReplicaName != null)
      'failoverDrReplicaName': failoverDrReplicaName!,
    if (psaWriteEndpoint != null) 'psaWriteEndpoint': psaWriteEndpoint!,
  };
}

class Reschedule {
  /// The type of the reschedule.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESCHEDULE_TYPE_UNSPECIFIED"
  /// - "IMMEDIATE" : Reschedules maintenance to happen now (within 5 minutes).
  /// - "NEXT_AVAILABLE_WINDOW" : Reschedules maintenance to occur within one
  /// week from the originally scheduled day and time.
  /// - "SPECIFIC_TIME" : Reschedules maintenance to a specific time and day.
  core.String? rescheduleType;

  /// Timestamp when the maintenance shall be rescheduled to if
  /// reschedule_type=SPECIFIC_TIME, in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  ///
  /// Optional.
  core.String? scheduleTime;

  Reschedule({this.rescheduleType, this.scheduleTime});

  Reschedule.fromJson(core.Map json_)
    : this(
        rescheduleType: json_['rescheduleType'] as core.String?,
        scheduleTime: json_['scheduleTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (rescheduleType != null) 'rescheduleType': rescheduleType!,
    if (scheduleTime != null) 'scheduleTime': scheduleTime!,
  };
}

/// Database instance restore from backup context.
///
/// Backup context contains source instance id and project id.
class RestoreBackupContext {
  /// The ID of the backup run to restore from.
  core.String? backupRunId;

  /// The ID of the instance that the backup was taken from.
  core.String? instanceId;

  /// This is always `sql#restoreBackupContext`.
  core.String? kind;

  /// The full project ID of the source instance.
  core.String? project;

  RestoreBackupContext({
    this.backupRunId,
    this.instanceId,
    this.kind,
    this.project,
  });

  RestoreBackupContext.fromJson(core.Map json_)
    : this(
        backupRunId: json_['backupRunId'] as core.String?,
        instanceId: json_['instanceId'] as core.String?,
        kind: json_['kind'] as core.String?,
        project: json_['project'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (backupRunId != null) 'backupRunId': backupRunId!,
    if (instanceId != null) 'instanceId': instanceId!,
    if (kind != null) 'kind': kind!,
    if (project != null) 'project': project!,
  };
}

/// Instance rotate server CA context.
class RotateServerCaContext {
  /// This is always `sql#rotateServerCaContext`.
  core.String? kind;

  /// The fingerprint of the next version to be rotated to.
  ///
  /// If left unspecified, will be rotated to the most recently added server CA
  /// version.
  core.String? nextVersion;

  RotateServerCaContext({this.kind, this.nextVersion});

  RotateServerCaContext.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextVersion: json_['nextVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (nextVersion != null) 'nextVersion': nextVersion!,
  };
}

/// Instance rotate server certificate context.
class RotateServerCertificateContext {
  /// This is always `sql#rotateServerCertificateContext`.
  ///
  /// Optional.
  core.String? kind;

  /// The fingerprint of the next version to be rotated to.
  ///
  /// If left unspecified, will be rotated to the most recently added server
  /// certificate version.
  ///
  /// Optional.
  core.String? nextVersion;

  RotateServerCertificateContext({this.kind, this.nextVersion});

  RotateServerCertificateContext.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        nextVersion: json_['nextVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (nextVersion != null) 'nextVersion': nextVersion!,
  };
}

/// Contains the values for a row.
class Row {
  /// The values for the row.
  core.List<Value>? values;

  Row({this.values});

  Row.fromJson(core.Map json_)
    : this(
        values:
            (json_['values'] as core.List?)
                ?.map(
                  (value) => Value.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (values != null) 'values': values!,
  };
}

/// A list of objects that the user selects for replication from an external
/// source instance.
class SelectedObjects {
  /// The name of the database to migrate.
  ///
  /// Required.
  core.String? database;

  SelectedObjects({this.database});

  SelectedObjects.fromJson(core.Map json_)
    : this(database: json_['database'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (database != null) 'database': database!,
  };
}

/// Database instance settings.
class Settings {
  /// The activation policy specifies when the instance is activated; it is
  /// applicable only when the instance state is RUNNABLE.
  ///
  /// Valid values: * `ALWAYS`: The instance is on, and remains so even in the
  /// absence of connection requests. * `NEVER`: The instance is off; it is not
  /// activated, even if a connection request arrives.
  /// Possible string values are:
  /// - "SQL_ACTIVATION_POLICY_UNSPECIFIED" : Unknown activation plan.
  /// - "ALWAYS" : The instance is always up and running.
  /// - "NEVER" : The instance never starts.
  /// - "ON_DEMAND" : The instance starts upon receiving requests.
  core.String? activationPolicy;

  /// Active Directory configuration, relevant only for Cloud SQL for SQL
  /// Server.
  SqlActiveDirectoryConfig? activeDirectoryConfig;

  /// Specifies advanced machine configuration for the instances relevant only
  /// for SQL Server.
  AdvancedMachineFeatures? advancedMachineFeatures;

  /// The App Engine app IDs that can access this instance.
  ///
  /// (Deprecated) Applied to First Generation instances only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.String>? authorizedGaeApplications;

  /// Availability type.
  ///
  /// Potential values: * `ZONAL`: The instance serves data from only one zone.
  /// Outages in that zone affect data accessibility. * `REGIONAL`: The instance
  /// can serve data from more than one zone in a region (it is highly
  /// available)./ For more information, see
  /// [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  /// Possible string values are:
  /// - "SQL_AVAILABILITY_TYPE_UNSPECIFIED" : This is an unknown Availability
  /// type.
  /// - "ZONAL" : Zonal available instance.
  /// - "REGIONAL" : Regional available instance.
  core.String? availabilityType;

  /// The daily backup configuration for the instance.
  BackupConfiguration? backupConfiguration;

  /// The name of server Instance collation.
  core.String? collation;

  /// The managed connection pooling configuration for the instance.
  ///
  /// Optional.
  ConnectionPoolConfig? connectionPoolConfig;

  /// Specifies if connections must use Cloud SQL connectors.
  ///
  /// Option values include the following: `NOT_REQUIRED` (Cloud SQL instances
  /// can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow
  /// connections that use Cloud SQL Connectors) Note that using REQUIRED
  /// disables all existing authorized networks. If this field is not specified
  /// when creating a new instance, NOT_REQUIRED is used. If this field is not
  /// specified when patching or updating an existing instance, it is left
  /// unchanged in the instance.
  /// Possible string values are:
  /// - "CONNECTOR_ENFORCEMENT_UNSPECIFIED" : The requirement for Cloud SQL
  /// connectors is unknown.
  /// - "NOT_REQUIRED" : Do not require Cloud SQL connectors.
  /// - "REQUIRED" : Require all connections to use Cloud SQL connectors,
  /// including the Cloud SQL Auth Proxy and Cloud SQL Java, Python, and Go
  /// connectors. Note: This disables all existing authorized networks.
  core.String? connectorEnforcement;

  /// Configuration specific to read replica instances.
  ///
  /// Indicates whether database flags for crash-safe replication are enabled.
  /// This property was only applicable to First Generation instances.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? crashSafeReplicationEnabled;

  /// Configuration for data cache.
  DataCacheConfig? dataCacheConfig;

  /// Provisioned number of I/O operations per second for the data disk.
  ///
  /// This field is only used for hyperdisk-balanced disk types.
  ///
  /// Optional.
  core.String? dataDiskProvisionedIops;

  /// Provisioned throughput measured in MiB per second for the data disk.
  ///
  /// This field is only used for hyperdisk-balanced disk types.
  ///
  /// Optional.
  core.String? dataDiskProvisionedThroughput;

  /// The size of data disk, in GB.
  ///
  /// The data disk size minimum is 10GB.
  core.String? dataDiskSizeGb;

  /// The type of data disk: `PD_SSD` (default) or `PD_HDD`.
  ///
  /// Not used for First Generation instances.
  /// Possible string values are:
  /// - "SQL_DATA_DISK_TYPE_UNSPECIFIED" : This is an unknown data disk type.
  /// - "PD_SSD" : An SSD data disk.
  /// - "PD_HDD" : An HDD data disk.
  /// - "OBSOLETE_LOCAL_SSD" : This field is deprecated and will be removed from
  /// a future version of the API.
  /// - "HYPERDISK_BALANCED" : A Hyperdisk Balanced data disk.
  core.String? dataDiskType;

  /// The database flags passed to the instance at startup.
  core.List<DatabaseFlags>? databaseFlags;

  /// Configuration specific to read replica instances.
  ///
  /// Indicates whether replication is enabled or not. WARNING: Changing this
  /// restarts the instance.
  core.bool? databaseReplicationEnabled;

  /// Configuration to protect against accidental instance deletion.
  core.bool? deletionProtectionEnabled;

  /// Deny maintenance periods
  core.List<DenyMaintenancePeriod>? denyMaintenancePeriods;

  /// The edition of the instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EDITION_UNSPECIFIED" : The instance did not specify the edition.
  /// - "ENTERPRISE" : The instance is an enterprise edition.
  /// - "ENTERPRISE_PLUS" : The instance is an Enterprise Plus edition.
  core.String? edition;

  /// By default, Cloud SQL instances have schema extraction disabled for
  /// Dataplex.
  ///
  /// When this parameter is set to true, schema extraction for Dataplex on
  /// Cloud SQL instances is activated.
  ///
  /// Optional.
  core.bool? enableDataplexIntegration;

  /// When this parameter is set to true, Cloud SQL instances can connect to
  /// Vertex AI to pass requests for real-time predictions and insights to the
  /// AI.
  ///
  /// The default value is false. This applies only to Cloud SQL for MySQL and
  /// Cloud SQL for PostgreSQL instances.
  ///
  /// Optional.
  core.bool? enableGoogleMlIntegration;

  /// The final backup configuration for the instance.
  ///
  /// Optional.
  FinalBackupConfig? finalBackupConfig;

  /// Insights configuration, for now relevant only for Postgres.
  InsightsConfig? insightsConfig;

  /// The settings for IP Management.
  ///
  /// This allows to enable or disable the instance IP and manage which external
  /// networks can connect to the instance. The IPv4 address cannot be disabled
  /// for Second Generation instances.
  IpConfiguration? ipConfiguration;

  /// This is always `sql#settings`.
  core.String? kind;

  /// The location preference settings.
  ///
  /// This allows the instance to be located as near as possible to either an
  /// App Engine app or Compute Engine zone for better performance. App Engine
  /// co-location was only applicable to First Generation instances.
  LocationPreference? locationPreference;

  /// The maintenance window for this instance.
  ///
  /// This specifies when the instance can be restarted for maintenance
  /// purposes.
  MaintenanceWindow? maintenanceWindow;

  /// The local user password validation policy of the instance.
  PasswordValidationPolicy? passwordValidationPolicy;

  /// The pricing plan for this instance.
  ///
  /// This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for
  /// Second Generation instances.
  /// Possible string values are:
  /// - "SQL_PRICING_PLAN_UNSPECIFIED" : This is an unknown pricing plan for
  /// this instance.
  /// - "PACKAGE" : The instance is billed at a monthly flat rate.
  /// - "PER_USE" : The instance is billed per usage.
  core.String? pricingPlan;

  /// The read pool auto-scale configuration for the instance.
  ///
  /// Optional.
  ReadPoolAutoScaleConfig? readPoolAutoScaleConfig;

  /// Configuration value for recreation of replica after certain replication
  /// lag.
  ///
  /// Optional.
  core.int? replicationLagMaxSeconds;

  /// The type of replication this instance uses.
  ///
  /// This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This
  /// property was only applicable to First Generation instances.
  /// Possible string values are:
  /// - "SQL_REPLICATION_TYPE_UNSPECIFIED" : This is an unknown replication type
  /// for a Cloud SQL instance.
  /// - "SYNCHRONOUS" : The synchronous replication mode for First Generation
  /// instances. It is the default value.
  /// - "ASYNCHRONOUS" : The asynchronous replication mode for First Generation
  /// instances. It provides a slight performance gain, but if an outage occurs
  /// while this option is set to asynchronous, you can lose up to a few seconds
  /// of updates to your data.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? replicationType;

  /// When this parameter is set to true, Cloud SQL retains backups of the
  /// instance even after the instance is deleted.
  ///
  /// The ON_DEMAND backup will be retained until customer deletes the backup or
  /// the project. The AUTOMATED backup will be retained based on the backups
  /// retention setting.
  ///
  /// Optional.
  core.bool? retainBackupsOnDelete;

  /// The version of instance settings.
  ///
  /// This is a required field for update method to make sure concurrent updates
  /// are handled properly. During update, use the most recent settingsVersion
  /// value for this instance and do not try to update this value.
  core.String? settingsVersion;

  /// SQL Server specific audit configuration.
  SqlServerAuditConfig? sqlServerAuditConfig;

  /// Configuration to increase storage size automatically.
  ///
  /// The default value is true.
  core.bool? storageAutoResize;

  /// The maximum size to which storage capacity can be automatically increased.
  ///
  /// The default value is 0, which specifies that there is no limit.
  core.String? storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example
  /// `db-custom-1-3840`.
  ///
  /// WARNING: Changing this restarts the instance.
  core.String? tier;

  /// Server timezone, relevant only for Cloud SQL for SQL Server.
  core.String? timeZone;

  /// User-provided labels, represented as a dictionary where each label is a
  /// single key value pair.
  core.Map<core.String, core.String>? userLabels;

  Settings({
    this.activationPolicy,
    this.activeDirectoryConfig,
    this.advancedMachineFeatures,
    this.authorizedGaeApplications,
    this.availabilityType,
    this.backupConfiguration,
    this.collation,
    this.connectionPoolConfig,
    this.connectorEnforcement,
    this.crashSafeReplicationEnabled,
    this.dataCacheConfig,
    this.dataDiskProvisionedIops,
    this.dataDiskProvisionedThroughput,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseReplicationEnabled,
    this.deletionProtectionEnabled,
    this.denyMaintenancePeriods,
    this.edition,
    this.enableDataplexIntegration,
    this.enableGoogleMlIntegration,
    this.finalBackupConfig,
    this.insightsConfig,
    this.ipConfiguration,
    this.kind,
    this.locationPreference,
    this.maintenanceWindow,
    this.passwordValidationPolicy,
    this.pricingPlan,
    this.readPoolAutoScaleConfig,
    this.replicationLagMaxSeconds,
    this.replicationType,
    this.retainBackupsOnDelete,
    this.settingsVersion,
    this.sqlServerAuditConfig,
    this.storageAutoResize,
    this.storageAutoResizeLimit,
    this.tier,
    this.timeZone,
    this.userLabels,
  });

  Settings.fromJson(core.Map json_)
    : this(
        activationPolicy: json_['activationPolicy'] as core.String?,
        activeDirectoryConfig:
            json_.containsKey('activeDirectoryConfig')
                ? SqlActiveDirectoryConfig.fromJson(
                  json_['activeDirectoryConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        advancedMachineFeatures:
            json_.containsKey('advancedMachineFeatures')
                ? AdvancedMachineFeatures.fromJson(
                  json_['advancedMachineFeatures']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        authorizedGaeApplications:
            (json_['authorizedGaeApplications'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        availabilityType: json_['availabilityType'] as core.String?,
        backupConfiguration:
            json_.containsKey('backupConfiguration')
                ? BackupConfiguration.fromJson(
                  json_['backupConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        collation: json_['collation'] as core.String?,
        connectionPoolConfig:
            json_.containsKey('connectionPoolConfig')
                ? ConnectionPoolConfig.fromJson(
                  json_['connectionPoolConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        connectorEnforcement: json_['connectorEnforcement'] as core.String?,
        crashSafeReplicationEnabled:
            json_['crashSafeReplicationEnabled'] as core.bool?,
        dataCacheConfig:
            json_.containsKey('dataCacheConfig')
                ? DataCacheConfig.fromJson(
                  json_['dataCacheConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        dataDiskProvisionedIops:
            json_['dataDiskProvisionedIops'] as core.String?,
        dataDiskProvisionedThroughput:
            json_['dataDiskProvisionedThroughput'] as core.String?,
        dataDiskSizeGb: json_['dataDiskSizeGb'] as core.String?,
        dataDiskType: json_['dataDiskType'] as core.String?,
        databaseFlags:
            (json_['databaseFlags'] as core.List?)
                ?.map(
                  (value) => DatabaseFlags.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        databaseReplicationEnabled:
            json_['databaseReplicationEnabled'] as core.bool?,
        deletionProtectionEnabled:
            json_['deletionProtectionEnabled'] as core.bool?,
        denyMaintenancePeriods:
            (json_['denyMaintenancePeriods'] as core.List?)
                ?.map(
                  (value) => DenyMaintenancePeriod.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        edition: json_['edition'] as core.String?,
        enableDataplexIntegration:
            json_['enableDataplexIntegration'] as core.bool?,
        enableGoogleMlIntegration:
            json_['enableGoogleMlIntegration'] as core.bool?,
        finalBackupConfig:
            json_.containsKey('finalBackupConfig')
                ? FinalBackupConfig.fromJson(
                  json_['finalBackupConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        insightsConfig:
            json_.containsKey('insightsConfig')
                ? InsightsConfig.fromJson(
                  json_['insightsConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        ipConfiguration:
            json_.containsKey('ipConfiguration')
                ? IpConfiguration.fromJson(
                  json_['ipConfiguration']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        locationPreference:
            json_.containsKey('locationPreference')
                ? LocationPreference.fromJson(
                  json_['locationPreference']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        maintenanceWindow:
            json_.containsKey('maintenanceWindow')
                ? MaintenanceWindow.fromJson(
                  json_['maintenanceWindow']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        passwordValidationPolicy:
            json_.containsKey('passwordValidationPolicy')
                ? PasswordValidationPolicy.fromJson(
                  json_['passwordValidationPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pricingPlan: json_['pricingPlan'] as core.String?,
        readPoolAutoScaleConfig:
            json_.containsKey('readPoolAutoScaleConfig')
                ? ReadPoolAutoScaleConfig.fromJson(
                  json_['readPoolAutoScaleConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        replicationLagMaxSeconds:
            json_['replicationLagMaxSeconds'] as core.int?,
        replicationType: json_['replicationType'] as core.String?,
        retainBackupsOnDelete: json_['retainBackupsOnDelete'] as core.bool?,
        settingsVersion: json_['settingsVersion'] as core.String?,
        sqlServerAuditConfig:
            json_.containsKey('sqlServerAuditConfig')
                ? SqlServerAuditConfig.fromJson(
                  json_['sqlServerAuditConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        storageAutoResize: json_['storageAutoResize'] as core.bool?,
        storageAutoResizeLimit: json_['storageAutoResizeLimit'] as core.String?,
        tier: json_['tier'] as core.String?,
        timeZone: json_['timeZone'] as core.String?,
        userLabels: (json_['userLabels']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activationPolicy != null) 'activationPolicy': activationPolicy!,
    if (activeDirectoryConfig != null)
      'activeDirectoryConfig': activeDirectoryConfig!,
    if (advancedMachineFeatures != null)
      'advancedMachineFeatures': advancedMachineFeatures!,
    if (authorizedGaeApplications != null)
      'authorizedGaeApplications': authorizedGaeApplications!,
    if (availabilityType != null) 'availabilityType': availabilityType!,
    if (backupConfiguration != null)
      'backupConfiguration': backupConfiguration!,
    if (collation != null) 'collation': collation!,
    if (connectionPoolConfig != null)
      'connectionPoolConfig': connectionPoolConfig!,
    if (connectorEnforcement != null)
      'connectorEnforcement': connectorEnforcement!,
    if (crashSafeReplicationEnabled != null)
      'crashSafeReplicationEnabled': crashSafeReplicationEnabled!,
    if (dataCacheConfig != null) 'dataCacheConfig': dataCacheConfig!,
    if (dataDiskProvisionedIops != null)
      'dataDiskProvisionedIops': dataDiskProvisionedIops!,
    if (dataDiskProvisionedThroughput != null)
      'dataDiskProvisionedThroughput': dataDiskProvisionedThroughput!,
    if (dataDiskSizeGb != null) 'dataDiskSizeGb': dataDiskSizeGb!,
    if (dataDiskType != null) 'dataDiskType': dataDiskType!,
    if (databaseFlags != null) 'databaseFlags': databaseFlags!,
    if (databaseReplicationEnabled != null)
      'databaseReplicationEnabled': databaseReplicationEnabled!,
    if (deletionProtectionEnabled != null)
      'deletionProtectionEnabled': deletionProtectionEnabled!,
    if (denyMaintenancePeriods != null)
      'denyMaintenancePeriods': denyMaintenancePeriods!,
    if (edition != null) 'edition': edition!,
    if (enableDataplexIntegration != null)
      'enableDataplexIntegration': enableDataplexIntegration!,
    if (enableGoogleMlIntegration != null)
      'enableGoogleMlIntegration': enableGoogleMlIntegration!,
    if (finalBackupConfig != null) 'finalBackupConfig': finalBackupConfig!,
    if (insightsConfig != null) 'insightsConfig': insightsConfig!,
    if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
    if (kind != null) 'kind': kind!,
    if (locationPreference != null) 'locationPreference': locationPreference!,
    if (maintenanceWindow != null) 'maintenanceWindow': maintenanceWindow!,
    if (passwordValidationPolicy != null)
      'passwordValidationPolicy': passwordValidationPolicy!,
    if (pricingPlan != null) 'pricingPlan': pricingPlan!,
    if (readPoolAutoScaleConfig != null)
      'readPoolAutoScaleConfig': readPoolAutoScaleConfig!,
    if (replicationLagMaxSeconds != null)
      'replicationLagMaxSeconds': replicationLagMaxSeconds!,
    if (replicationType != null) 'replicationType': replicationType!,
    if (retainBackupsOnDelete != null)
      'retainBackupsOnDelete': retainBackupsOnDelete!,
    if (settingsVersion != null) 'settingsVersion': settingsVersion!,
    if (sqlServerAuditConfig != null)
      'sqlServerAuditConfig': sqlServerAuditConfig!,
    if (storageAutoResize != null) 'storageAutoResize': storageAutoResize!,
    if (storageAutoResizeLimit != null)
      'storageAutoResizeLimit': storageAutoResizeLimit!,
    if (tier != null) 'tier': tier!,
    if (timeZone != null) 'timeZone': timeZone!,
    if (userLabels != null) 'userLabels': userLabels!,
  };
}

/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfig {
  /// The secret manager key storing the administrator credential.
  ///
  /// (e.g., projects/{project}/secrets/{secret}).
  ///
  /// Optional.
  core.String? adminCredentialSecretName;

  /// Domain controller IPv4 addresses used to bootstrap Active Directory.
  ///
  /// Optional.
  core.List<core.String>? dnsServers;

  /// The name of the domain (e.g., mydomain.com).
  core.String? domain;

  /// This is always sql#activeDirectoryConfig.
  core.String? kind;

  /// The mode of the Active Directory configuration.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACTIVE_DIRECTORY_MODE_UNSPECIFIED" : Unspecified mode.
  /// - "MANAGED_ACTIVE_DIRECTORY" : Managed Active Directory mode. This is the
  /// fallback option to maintain backward compatibility.
  /// - "SELF_MANAGED_ACTIVE_DIRECTORY" : Self-managed Active Directory mode.
  core.String? mode;

  /// The organizational unit distinguished name.
  ///
  /// This is the full hierarchical path to the organizational unit.
  ///
  /// Optional.
  core.String? organizationalUnit;

  SqlActiveDirectoryConfig({
    this.adminCredentialSecretName,
    this.dnsServers,
    this.domain,
    this.kind,
    this.mode,
    this.organizationalUnit,
  });

  SqlActiveDirectoryConfig.fromJson(core.Map json_)
    : this(
        adminCredentialSecretName:
            json_['adminCredentialSecretName'] as core.String?,
        dnsServers:
            (json_['dnsServers'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        domain: json_['domain'] as core.String?,
        kind: json_['kind'] as core.String?,
        mode: json_['mode'] as core.String?,
        organizationalUnit: json_['organizationalUnit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (adminCredentialSecretName != null)
      'adminCredentialSecretName': adminCredentialSecretName!,
    if (dnsServers != null) 'dnsServers': dnsServers!,
    if (domain != null) 'domain': domain!,
    if (kind != null) 'kind': kind!,
    if (mode != null) 'mode': mode!,
    if (organizationalUnit != null) 'organizationalUnit': organizationalUnit!,
  };
}

/// External primary instance migration setting error/warning.
class SqlExternalSyncSettingError {
  /// Additional information about the error encountered.
  core.String? detail;

  /// Can be `sql#externalSyncSettingError` or `sql#externalSyncSettingWarning`.
  core.String? kind;

  /// Identifies the specific error that occurred.
  /// Possible string values are:
  /// - "SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED"
  /// - "CONNECTION_FAILURE"
  /// - "BINLOG_NOT_ENABLED"
  /// - "INCOMPATIBLE_DATABASE_VERSION"
  /// - "REPLICA_ALREADY_SETUP"
  /// - "INSUFFICIENT_PRIVILEGE" : The replication user is missing privileges
  /// that are required.
  /// - "UNSUPPORTED_MIGRATION_TYPE" : Unsupported migration type.
  /// - "NO_PGLOGICAL_INSTALLED" : No pglogical extension installed on
  /// databases, applicable for postgres.
  /// - "PGLOGICAL_NODE_ALREADY_EXISTS" : pglogical node already exists on
  /// databases, applicable for postgres.
  /// - "INVALID_WAL_LEVEL" : The value of parameter wal_level is not set to
  /// logical.
  /// - "INVALID_SHARED_PRELOAD_LIBRARY" : The value of parameter
  /// shared_preload_libraries does not include pglogical.
  /// - "INSUFFICIENT_MAX_REPLICATION_SLOTS" : The value of parameter
  /// max_replication_slots is not sufficient.
  /// - "INSUFFICIENT_MAX_WAL_SENDERS" : The value of parameter max_wal_senders
  /// is not sufficient.
  /// - "INSUFFICIENT_MAX_WORKER_PROCESSES" : The value of parameter
  /// max_worker_processes is not sufficient.
  /// - "UNSUPPORTED_EXTENSIONS" : Extensions installed are either not supported
  /// or having unsupported versions
  /// - "INVALID_RDS_LOGICAL_REPLICATION" : The value of parameter
  /// rds.logical_replication is not set to 1.
  /// - "INVALID_LOGGING_SETUP" : The primary instance logging setup doesn't
  /// allow EM sync.
  /// - "INVALID_DB_PARAM" : The primary instance database parameter setup
  /// doesn't allow EM sync.
  /// - "UNSUPPORTED_GTID_MODE" : The gtid_mode is not supported, applicable for
  /// MySQL.
  /// - "SQLSERVER_AGENT_NOT_RUNNING" : SQL Server Agent is not running.
  /// - "UNSUPPORTED_TABLE_DEFINITION" : The table definition is not support due
  /// to missing primary key or replica identity, applicable for postgres. Note
  /// that this is a warning and won't block the migration.
  /// - "UNSUPPORTED_DEFINER" : The customer has a definer that will break EM
  /// setup.
  /// - "SQLSERVER_SERVERNAME_MISMATCH" : SQL Server @@SERVERNAME does not match
  /// actual host name.
  /// - "PRIMARY_ALREADY_SETUP" : The primary instance has been setup and will
  /// fail the setup.
  /// - "UNSUPPORTED_BINLOG_FORMAT" : The primary instance has unsupported
  /// binary log format.
  /// - "BINLOG_RETENTION_SETTING" : The primary instance's binary log retention
  /// setting.
  /// - "UNSUPPORTED_STORAGE_ENGINE" : The primary instance has tables with
  /// unsupported storage engine.
  /// - "LIMITED_SUPPORT_TABLES" : Source has tables with limited support eg:
  /// PostgreSQL tables without primary keys.
  /// - "EXISTING_DATA_IN_REPLICA" : The replica instance contains existing
  /// data.
  /// - "MISSING_OPTIONAL_PRIVILEGES" : The replication user is missing
  /// privileges that are optional.
  /// - "RISKY_BACKUP_ADMIN_PRIVILEGE" : Additional BACKUP_ADMIN privilege is
  /// granted to the replication user which may lock source MySQL 8 instance for
  /// DDLs during initial sync.
  /// - "INSUFFICIENT_GCS_PERMISSIONS" : The Cloud Storage bucket is missing
  /// necessary permissions.
  /// - "INVALID_FILE_INFO" : The Cloud Storage bucket has an error in the file
  /// or contains invalid file information.
  /// - "UNSUPPORTED_DATABASE_SETTINGS" : The source instance has unsupported
  /// database settings for migration.
  /// - "MYSQL_PARALLEL_IMPORT_INSUFFICIENT_PRIVILEGE" : The replication user is
  /// missing parallel import specific privileges. (e.g. LOCK TABLES) for MySQL.
  /// - "LOCAL_INFILE_OFF" : The global variable local_infile is off on external
  /// server replica.
  /// - "TURN_ON_PITR_AFTER_PROMOTE" : This code instructs customers to turn on
  /// point-in-time recovery manually for the instance after promoting the Cloud
  /// SQL for PostgreSQL instance.
  /// - "INCOMPATIBLE_DATABASE_MINOR_VERSION" : The minor version of replica
  /// database is incompatible with the source.
  /// - "SOURCE_MAX_SUBSCRIPTIONS" : This warning message indicates that Cloud
  /// SQL uses the maximum number of subscriptions to migrate data from the
  /// source to the destination.
  /// - "UNABLE_TO_VERIFY_DEFINERS" : Unable to verify definers on the source
  /// for MySQL.
  /// - "SUBSCRIPTION_CALCULATION_STATUS" : If a time out occurs while the
  /// subscription counts are calculated, then this value is set to 1.
  /// Otherwise, this value is set to 2.
  /// - "PG_SUBSCRIPTION_COUNT" : Count of subscriptions needed to sync source
  /// data for PostgreSQL database.
  /// - "PG_SYNC_PARALLEL_LEVEL" : Final parallel level that is used to do
  /// migration.
  /// - "INSUFFICIENT_DISK_SIZE" : The disk size of the replica instance is
  /// smaller than the data size of the source instance.
  /// - "INSUFFICIENT_MACHINE_TIER" : The data size of the source instance is
  /// greater than 1 TB, the number of cores of the replica instance is less
  /// than 8, and the memory of the replica is less than 32 GB.
  /// - "UNSUPPORTED_EXTENSIONS_NOT_MIGRATED" : The warning message indicates
  /// the unsupported extensions will not be migrated to the destination.
  /// - "EXTENSIONS_NOT_MIGRATED" : The warning message indicates the pg_cron
  /// extension and settings will not be migrated to the destination.
  /// - "PG_CRON_FLAG_ENABLED_IN_REPLICA" : The error message indicates that
  /// pg_cron flags are enabled on the destination which is not supported during
  /// the migration.
  /// - "EXTENSIONS_NOT_ENABLED_IN_REPLICA" : This error message indicates that
  /// the specified extensions are not enabled on destination instance. For
  /// example, before you can migrate data to the destination instance, you must
  /// enable the PGAudit extension on the instance.
  /// - "UNSUPPORTED_COLUMNS" : The source database has generated columns that
  /// can't be migrated. Please change them to regular columns before migration.
  /// - "USERS_NOT_CREATED_IN_REPLICA" : The source database has users that
  /// aren't created in the replica. First, create all users, which are in the
  /// pg_user_mappings table of the source database, in the destination
  /// instance. Then, perform the migration.
  /// - "UNSUPPORTED_SYSTEM_OBJECTS" : The selected objects include system
  /// objects that aren't supported for migration.
  /// - "UNSUPPORTED_TABLES_WITH_REPLICA_IDENTITY" : The source database has
  /// tables with the FULL or NOTHING replica identity. Before starting your
  /// migration, either remove the identity or change it to DEFAULT. Note that
  /// this is an error and will block the migration.
  /// - "SELECTED_OBJECTS_NOT_EXIST_ON_SOURCE" : The selected objects don't
  /// exist on the source instance.
  /// - "PSC_ONLY_INSTANCE_WITH_NO_NETWORK_ATTACHMENT_URI" : PSC only
  /// destination instance does not have a network attachment URI.
  /// - "SELECTED_OBJECTS_REFERENCE_UNSELECTED_OBJECTS" : Selected objects
  /// reference unselected objects. Based on their object type (foreign key
  /// constraint or view), selected objects will fail during migration.
  /// - "PROMPT_DELETE_EXISTING" : The migration will delete existing data in
  /// the replica; set replica_overwrite_enabled in the request to acknowledge
  /// this. This is an error. MySQL only.
  /// - "WILL_DELETE_EXISTING" : The migration will delete existing data in the
  /// replica; replica_overwrite_enabled was set in the request acknowledging
  /// this. This is a warning rather than an error. MySQL only.
  /// - "PG_DDL_REPLICATION_INSUFFICIENT_PRIVILEGE" : The replication user is
  /// missing specific privileges to setup DDL replication. (e.g. CREATE EVENT
  /// TRIGGER, CREATE SCHEMA) for PostgreSQL.
  core.String? type;

  SqlExternalSyncSettingError({this.detail, this.kind, this.type});

  SqlExternalSyncSettingError.fromJson(core.Map json_)
    : this(
        detail: json_['detail'] as core.String?,
        kind: json_['kind'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detail != null) 'detail': detail!,
    if (kind != null) 'kind': kind!,
    if (type != null) 'type': type!,
  };
}

/// Acquire SSRS lease response.
class SqlInstancesAcquireSsrsLeaseResponse {
  /// The unique identifier for this operation.
  core.String? operationId;

  SqlInstancesAcquireSsrsLeaseResponse({this.operationId});

  SqlInstancesAcquireSsrsLeaseResponse.fromJson(core.Map json_)
    : this(operationId: json_['operationId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (operationId != null) 'operationId': operationId!,
  };
}

/// Execute SQL statements response.
class SqlInstancesExecuteSqlResponse {
  /// A list of notices and warnings generated during query execution.
  ///
  /// For PostgreSQL, this includes all notices and warnings. For MySQL, this
  /// includes warnings generated by the last executed statement. To retrieve
  /// all warnings for a multi-statement query, `SHOW WARNINGS` must be executed
  /// after each statement.
  core.List<Message>? messages;

  /// The additional metadata information regarding the execution of the SQL
  /// statements.
  Metadata? metadata;

  /// The list of results after executing all the SQL statements.
  core.List<QueryResult>? results;

  SqlInstancesExecuteSqlResponse({this.messages, this.metadata, this.results});

  SqlInstancesExecuteSqlResponse.fromJson(core.Map json_)
    : this(
        messages:
            (json_['messages'] as core.List?)
                ?.map(
                  (value) => Message.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        metadata:
            json_.containsKey('metadata')
                ? Metadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) => QueryResult.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (messages != null) 'messages': messages!,
    if (metadata != null) 'metadata': metadata!,
    if (results != null) 'results': results!,
  };
}

/// Instance get disk shrink config response.
class SqlInstancesGetDiskShrinkConfigResponse {
  /// This is always `sql#getDiskShrinkConfig`.
  core.String? kind;

  /// Additional message to customers.
  core.String? message;

  /// The minimum size to which a disk can be shrunk in GigaBytes.
  core.String? minimalTargetSizeGb;

  SqlInstancesGetDiskShrinkConfigResponse({
    this.kind,
    this.message,
    this.minimalTargetSizeGb,
  });

  SqlInstancesGetDiskShrinkConfigResponse.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        message: json_['message'] as core.String?,
        minimalTargetSizeGb: json_['minimalTargetSizeGb'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (message != null) 'message': message!,
    if (minimalTargetSizeGb != null)
      'minimalTargetSizeGb': minimalTargetSizeGb!,
  };
}

/// Instance get latest recovery time response.
class SqlInstancesGetLatestRecoveryTimeResponse {
  /// Timestamp, identifies the earliest recovery time of the source instance.
  core.String? earliestRecoveryTime;

  /// This is always `sql#getLatestRecoveryTime`.
  core.String? kind;

  /// Timestamp, identifies the latest recovery time of the source instance.
  core.String? latestRecoveryTime;

  SqlInstancesGetLatestRecoveryTimeResponse({
    this.earliestRecoveryTime,
    this.kind,
    this.latestRecoveryTime,
  });

  SqlInstancesGetLatestRecoveryTimeResponse.fromJson(core.Map json_)
    : this(
        earliestRecoveryTime: json_['earliestRecoveryTime'] as core.String?,
        kind: json_['kind'] as core.String?,
        latestRecoveryTime: json_['latestRecoveryTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (earliestRecoveryTime != null)
      'earliestRecoveryTime': earliestRecoveryTime!,
    if (kind != null) 'kind': kind!,
    if (latestRecoveryTime != null) 'latestRecoveryTime': latestRecoveryTime!,
  };
}

/// The response for the release of the SSRS lease.
class SqlInstancesReleaseSsrsLeaseResponse {
  /// The operation ID.
  core.String? operationId;

  SqlInstancesReleaseSsrsLeaseResponse({this.operationId});

  SqlInstancesReleaseSsrsLeaseResponse.fromJson(core.Map json_)
    : this(operationId: json_['operationId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (operationId != null) 'operationId': operationId!,
  };
}

/// Reschedule options for maintenance windows.
class SqlInstancesRescheduleMaintenanceRequestBody {
  /// The type of the reschedule the user wants.
  ///
  /// Required.
  Reschedule? reschedule;

  SqlInstancesRescheduleMaintenanceRequestBody({this.reschedule});

  SqlInstancesRescheduleMaintenanceRequestBody.fromJson(core.Map json_)
    : this(
        reschedule:
            json_.containsKey('reschedule')
                ? Reschedule.fromJson(
                  json_['reschedule'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (reschedule != null) 'reschedule': reschedule!,
  };
}

/// Instance reset replica size request.
typedef SqlInstancesResetReplicaSizeRequest = $Empty;

class SqlInstancesStartExternalSyncRequest {
  /// MigrationType configures the migration to use physical files or logical
  /// dump files.
  ///
  /// If not set, then the logical dump file configuration is used. Valid values
  /// are `LOGICAL` or `PHYSICAL`. Only applicable to MySQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MIGRATION_TYPE_UNSPECIFIED" : Default value is a logical dump
  /// file-based migration
  /// - "LOGICAL" : Logical dump file-based migration
  /// - "PHYSICAL" : Physical file-based migration
  core.String? migrationType;

  /// MySQL-specific settings for start external sync.
  MySqlSyncConfig? mysqlSyncConfig;

  /// MySQL only.
  ///
  /// True if end-user has confirmed that this SES call will wipe replica
  /// databases overlapping with the proposed selected_objects. If this field is
  /// not set and there are both overlapping and additional databases proposed,
  /// an error will be returned.
  ///
  /// Optional.
  core.bool? replicaOverwriteEnabled;

  /// Whether to skip the verification step (VESS).
  core.bool? skipVerification;

  /// External sync mode.
  /// Possible string values are:
  /// - "EXTERNAL_SYNC_MODE_UNSPECIFIED" : Unknown external sync mode, will be
  /// defaulted to ONLINE mode
  /// - "ONLINE" : Online external sync will set up replication after initial
  /// data external sync
  /// - "OFFLINE" : Offline external sync only dumps and loads a one-time
  /// snapshot of the primary instance's data
  core.String? syncMode;

  /// Parallel level for initial data sync.
  ///
  /// Currently only applicable for MySQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXTERNAL_SYNC_PARALLEL_LEVEL_UNSPECIFIED" : Unknown sync parallel
  /// level. Will be defaulted to OPTIMAL.
  /// - "MIN" : Minimal parallel level.
  /// - "OPTIMAL" : Optimal parallel level.
  /// - "MAX" : Maximum parallel level.
  core.String? syncParallelLevel;

  SqlInstancesStartExternalSyncRequest({
    this.migrationType,
    this.mysqlSyncConfig,
    this.replicaOverwriteEnabled,
    this.skipVerification,
    this.syncMode,
    this.syncParallelLevel,
  });

  SqlInstancesStartExternalSyncRequest.fromJson(core.Map json_)
    : this(
        migrationType: json_['migrationType'] as core.String?,
        mysqlSyncConfig:
            json_.containsKey('mysqlSyncConfig')
                ? MySqlSyncConfig.fromJson(
                  json_['mysqlSyncConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        replicaOverwriteEnabled: json_['replicaOverwriteEnabled'] as core.bool?,
        skipVerification: json_['skipVerification'] as core.bool?,
        syncMode: json_['syncMode'] as core.String?,
        syncParallelLevel: json_['syncParallelLevel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (migrationType != null) 'migrationType': migrationType!,
    if (mysqlSyncConfig != null) 'mysqlSyncConfig': mysqlSyncConfig!,
    if (replicaOverwriteEnabled != null)
      'replicaOverwriteEnabled': replicaOverwriteEnabled!,
    if (skipVerification != null) 'skipVerification': skipVerification!,
    if (syncMode != null) 'syncMode': syncMode!,
    if (syncParallelLevel != null) 'syncParallelLevel': syncParallelLevel!,
  };
}

class SqlInstancesVerifyExternalSyncSettingsRequest {
  /// MigrationType configures the migration to use physical files or logical
  /// dump files.
  ///
  /// If not set, then the logical dump file configuration is used. Valid values
  /// are `LOGICAL` or `PHYSICAL`. Only applicable to MySQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MIGRATION_TYPE_UNSPECIFIED" : Default value is a logical dump
  /// file-based migration
  /// - "LOGICAL" : Logical dump file-based migration
  /// - "PHYSICAL" : Physical file-based migration
  core.String? migrationType;

  /// MySQL-specific settings for start external sync.
  ///
  /// Optional.
  MySqlSyncConfig? mysqlSyncConfig;

  /// Migrate only the specified objects from the source instance.
  ///
  /// If this field is empty, then migrate all objects.
  ///
  /// Optional.
  core.List<ExternalSyncSelectedObject>? selectedObjects;

  /// External sync mode
  /// Possible string values are:
  /// - "EXTERNAL_SYNC_MODE_UNSPECIFIED" : Unknown external sync mode, will be
  /// defaulted to ONLINE mode
  /// - "ONLINE" : Online external sync will set up replication after initial
  /// data external sync
  /// - "OFFLINE" : Offline external sync only dumps and loads a one-time
  /// snapshot of the primary instance's data
  core.String? syncMode;

  /// Parallel level for initial data sync.
  ///
  /// Only applicable for PostgreSQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EXTERNAL_SYNC_PARALLEL_LEVEL_UNSPECIFIED" : Unknown sync parallel
  /// level. Will be defaulted to OPTIMAL.
  /// - "MIN" : Minimal parallel level.
  /// - "OPTIMAL" : Optimal parallel level.
  /// - "MAX" : Maximum parallel level.
  core.String? syncParallelLevel;

  /// Flag to enable verifying connection only
  core.bool? verifyConnectionOnly;

  /// Flag to verify settings required by replication setup only
  ///
  /// Optional.
  core.bool? verifyReplicationOnly;

  SqlInstancesVerifyExternalSyncSettingsRequest({
    this.migrationType,
    this.mysqlSyncConfig,
    this.selectedObjects,
    this.syncMode,
    this.syncParallelLevel,
    this.verifyConnectionOnly,
    this.verifyReplicationOnly,
  });

  SqlInstancesVerifyExternalSyncSettingsRequest.fromJson(core.Map json_)
    : this(
        migrationType: json_['migrationType'] as core.String?,
        mysqlSyncConfig:
            json_.containsKey('mysqlSyncConfig')
                ? MySqlSyncConfig.fromJson(
                  json_['mysqlSyncConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        selectedObjects:
            (json_['selectedObjects'] as core.List?)
                ?.map(
                  (value) => ExternalSyncSelectedObject.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        syncMode: json_['syncMode'] as core.String?,
        syncParallelLevel: json_['syncParallelLevel'] as core.String?,
        verifyConnectionOnly: json_['verifyConnectionOnly'] as core.bool?,
        verifyReplicationOnly: json_['verifyReplicationOnly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (migrationType != null) 'migrationType': migrationType!,
    if (mysqlSyncConfig != null) 'mysqlSyncConfig': mysqlSyncConfig!,
    if (selectedObjects != null) 'selectedObjects': selectedObjects!,
    if (syncMode != null) 'syncMode': syncMode!,
    if (syncParallelLevel != null) 'syncParallelLevel': syncParallelLevel!,
    if (verifyConnectionOnly != null)
      'verifyConnectionOnly': verifyConnectionOnly!,
    if (verifyReplicationOnly != null)
      'verifyReplicationOnly': verifyReplicationOnly!,
  };
}

/// Instance verify external sync settings response.
class SqlInstancesVerifyExternalSyncSettingsResponse {
  /// List of migration violations.
  core.List<SqlExternalSyncSettingError>? errors;

  /// This is always `sql#migrationSettingErrorList`.
  core.String? kind;

  /// List of migration warnings.
  core.List<SqlExternalSyncSettingError>? warnings;

  SqlInstancesVerifyExternalSyncSettingsResponse({
    this.errors,
    this.kind,
    this.warnings,
  });

  SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(core.Map json_)
    : this(
        errors:
            (json_['errors'] as core.List?)
                ?.map(
                  (value) => SqlExternalSyncSettingError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        warnings:
            (json_['warnings'] as core.List?)
                ?.map(
                  (value) => SqlExternalSyncSettingError.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errors != null) 'errors': errors!,
    if (kind != null) 'kind': kind!,
    if (warnings != null) 'warnings': warnings!,
  };
}

/// This message wraps up the information written by out-of-disk detection job.
class SqlOutOfDiskReport {
  /// The minimum recommended increase size in GigaBytes This field is consumed
  /// by the frontend * Writers: * the proactive database wellness job for OOD.
  ///
  /// * Readers:
  core.int? sqlMinRecommendedIncreaseSizeGb;

  /// This field represents the state generated by the proactive database
  /// wellness job for OutOfDisk issues.
  ///
  /// * Writers: * the proactive database wellness job for OOD. * Readers: * the
  /// proactive database wellness job
  /// Possible string values are:
  /// - "SQL_OUT_OF_DISK_STATE_UNSPECIFIED" : Unspecified state
  /// - "NORMAL" : The instance has plenty space on data disk
  /// - "SOFT_SHUTDOWN" : Data disk is almost used up. It is shutdown to prevent
  /// data corruption.
  core.String? sqlOutOfDiskState;

  SqlOutOfDiskReport({
    this.sqlMinRecommendedIncreaseSizeGb,
    this.sqlOutOfDiskState,
  });

  SqlOutOfDiskReport.fromJson(core.Map json_)
    : this(
        sqlMinRecommendedIncreaseSizeGb:
            json_['sqlMinRecommendedIncreaseSizeGb'] as core.int?,
        sqlOutOfDiskState: json_['sqlOutOfDiskState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (sqlMinRecommendedIncreaseSizeGb != null)
      'sqlMinRecommendedIncreaseSizeGb': sqlMinRecommendedIncreaseSizeGb!,
    if (sqlOutOfDiskState != null) 'sqlOutOfDiskState': sqlOutOfDiskState!,
  };
}

/// Any scheduled maintenance for this instance.
class SqlScheduledMaintenance {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? canDefer;

  /// If the scheduled maintenance can be rescheduled.
  core.bool? canReschedule;

  /// Maintenance cannot be rescheduled to start beyond this deadline.
  core.String? scheduleDeadlineTime;

  /// The start time of any upcoming scheduled maintenance for this instance.
  core.String? startTime;

  SqlScheduledMaintenance({
    this.canDefer,
    this.canReschedule,
    this.scheduleDeadlineTime,
    this.startTime,
  });

  SqlScheduledMaintenance.fromJson(core.Map json_)
    : this(
        canDefer: json_['canDefer'] as core.bool?,
        canReschedule: json_['canReschedule'] as core.bool?,
        scheduleDeadlineTime: json_['scheduleDeadlineTime'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (canDefer != null) 'canDefer': canDefer!,
    if (canReschedule != null) 'canReschedule': canReschedule!,
    if (scheduleDeadlineTime != null)
      'scheduleDeadlineTime': scheduleDeadlineTime!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// SQL Server specific audit configuration.
class SqlServerAuditConfig {
  /// The name of the destination bucket (e.g., gs://mybucket).
  core.String? bucket;

  /// This is always sql#sqlServerAuditConfig
  core.String? kind;

  /// How long to keep generated audit files.
  core.String? retentionInterval;

  /// How often to upload generated audit files.
  core.String? uploadInterval;

  SqlServerAuditConfig({
    this.bucket,
    this.kind,
    this.retentionInterval,
    this.uploadInterval,
  });

  SqlServerAuditConfig.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        kind: json_['kind'] as core.String?,
        retentionInterval: json_['retentionInterval'] as core.String?,
        uploadInterval: json_['uploadInterval'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (kind != null) 'kind': kind!,
    if (retentionInterval != null) 'retentionInterval': retentionInterval!,
    if (uploadInterval != null) 'uploadInterval': uploadInterval!,
  };
}

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetails {
  /// The version of SQL Server with which the database is to be made compatible
  core.int? compatibilityLevel;

  /// The recovery model of a SQL Server database
  core.String? recoveryModel;

  SqlServerDatabaseDetails({this.compatibilityLevel, this.recoveryModel});

  SqlServerDatabaseDetails.fromJson(core.Map json_)
    : this(
        compatibilityLevel: json_['compatibilityLevel'] as core.int?,
        recoveryModel: json_['recoveryModel'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (compatibilityLevel != null) 'compatibilityLevel': compatibilityLevel!,
    if (recoveryModel != null) 'recoveryModel': recoveryModel!,
  };
}

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetails {
  /// If the user has been disabled
  core.bool? disabled;

  /// The server roles for this user
  core.List<core.String>? serverRoles;

  SqlServerUserDetails({this.disabled, this.serverRoles});

  SqlServerUserDetails.fromJson(core.Map json_)
    : this(
        disabled: json_['disabled'] as core.bool?,
        serverRoles:
            (json_['serverRoles'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (disabled != null) 'disabled': disabled!,
    if (serverRoles != null) 'serverRoles': serverRoles!,
  };
}

/// The sub operation type based on the operation type.
class SqlSubOperationType {
  /// The type of maintenance to be performed on the instance.
  /// Possible string values are:
  /// - "SQL_MAINTENANCE_TYPE_UNSPECIFIED" : Maintenance type is unspecified.
  /// - "INSTANCE_MAINTENANCE" : Indicates that a standalone instance is
  /// undergoing maintenance. The instance can be either a primary instance or a
  /// replica.
  /// - "REPLICA_INCLUDED_MAINTENANCE" : Indicates that the primary instance and
  /// all of its replicas, including cascading replicas, are undergoing
  /// maintenance. Maintenance is performed on groups of replicas first,
  /// followed by the primary instance.
  /// - "INSTANCE_SELF_SERVICE_MAINTENANCE" : Indicates that the standalone
  /// instance is undergoing maintenance, initiated by self-service. The
  /// instance can be either a primary instance or a replica.
  /// - "REPLICA_INCLUDED_SELF_SERVICE_MAINTENANCE" : Indicates that the primary
  /// instance and all of its replicas are undergoing maintenance, initiated by
  /// self-service. Maintenance is performed on groups of replicas first,
  /// followed by the primary instance.
  core.String? maintenanceType;

  SqlSubOperationType({this.maintenanceType});

  SqlSubOperationType.fromJson(core.Map json_)
    : this(maintenanceType: json_['maintenanceType'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (maintenanceType != null) 'maintenanceType': maintenanceType!,
  };
}

/// SslCerts Resource
class SslCert {
  /// PEM representation.
  core.String? cert;

  /// Serial number, as extracted from the certificate.
  core.String? certSerialNumber;

  /// User supplied name.
  ///
  /// Constrained to \[a-zA-Z.-_ \]+.
  core.String? commonName;

  /// The time when the certificate was created in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? createTime;

  /// The time when the certificate expires in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example
  /// `2012-11-15T16:19:00.094Z`.
  core.String? expirationTime;

  /// Name of the database instance.
  core.String? instance;

  /// This is always `sql#sslCert`.
  core.String? kind;

  /// The URI of this resource.
  core.String? selfLink;

  /// Sha1 Fingerprint.
  core.String? sha1Fingerprint;

  SslCert({
    this.cert,
    this.certSerialNumber,
    this.commonName,
    this.createTime,
    this.expirationTime,
    this.instance,
    this.kind,
    this.selfLink,
    this.sha1Fingerprint,
  });

  SslCert.fromJson(core.Map json_)
    : this(
        cert: json_['cert'] as core.String?,
        certSerialNumber: json_['certSerialNumber'] as core.String?,
        commonName: json_['commonName'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        expirationTime: json_['expirationTime'] as core.String?,
        instance: json_['instance'] as core.String?,
        kind: json_['kind'] as core.String?,
        selfLink: json_['selfLink'] as core.String?,
        sha1Fingerprint: json_['sha1Fingerprint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cert != null) 'cert': cert!,
    if (certSerialNumber != null) 'certSerialNumber': certSerialNumber!,
    if (commonName != null) 'commonName': commonName!,
    if (createTime != null) 'createTime': createTime!,
    if (expirationTime != null) 'expirationTime': expirationTime!,
    if (instance != null) 'instance': instance!,
    if (kind != null) 'kind': kind!,
    if (selfLink != null) 'selfLink': selfLink!,
    if (sha1Fingerprint != null) 'sha1Fingerprint': sha1Fingerprint!,
  };
}

/// SslCertDetail.
class SslCertDetail {
  /// The public information about the cert.
  SslCert? certInfo;

  /// The private key for the client cert, in pem format.
  ///
  /// Keep private in order to protect your security.
  core.String? certPrivateKey;

  SslCertDetail({this.certInfo, this.certPrivateKey});

  SslCertDetail.fromJson(core.Map json_)
    : this(
        certInfo:
            json_.containsKey('certInfo')
                ? SslCert.fromJson(
                  json_['certInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        certPrivateKey: json_['certPrivateKey'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certInfo != null) 'certInfo': certInfo!,
    if (certPrivateKey != null) 'certPrivateKey': certPrivateKey!,
  };
}

/// SslCerts create ephemeral certificate request.
class SslCertsCreateEphemeralRequest {
  /// Access token to include in the signed certificate.
  core.String? accessToken;

  /// PEM encoded public key to include in the signed certificate.
  core.String? publicKey;

  SslCertsCreateEphemeralRequest({this.accessToken, this.publicKey});

  SslCertsCreateEphemeralRequest.fromJson(core.Map json_)
    : this(
        accessToken: json_['access_token'] as core.String?,
        publicKey: json_['public_key'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessToken != null) 'access_token': accessToken!,
    if (publicKey != null) 'public_key': publicKey!,
  };
}

/// SslCerts insert request.
class SslCertsInsertRequest {
  /// User supplied name.
  ///
  /// Must be a distinct name from the other certificates for this instance.
  core.String? commonName;

  SslCertsInsertRequest({this.commonName});

  SslCertsInsertRequest.fromJson(core.Map json_)
    : this(commonName: json_['commonName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (commonName != null) 'commonName': commonName!,
  };
}

/// SslCert insert response.
class SslCertsInsertResponse {
  /// The new client certificate and private key.
  SslCertDetail? clientCert;

  /// This is always `sql#sslCertsInsert`.
  core.String? kind;

  /// The operation to track the ssl certs insert request.
  Operation? operation;

  /// The server Certificate Authority's certificate.
  ///
  /// If this is missing you can force a new one to be generated by calling
  /// resetSslConfig method on instances resource.
  SslCert? serverCaCert;

  SslCertsInsertResponse({
    this.clientCert,
    this.kind,
    this.operation,
    this.serverCaCert,
  });

  SslCertsInsertResponse.fromJson(core.Map json_)
    : this(
        clientCert:
            json_.containsKey('clientCert')
                ? SslCertDetail.fromJson(
                  json_['clientCert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        kind: json_['kind'] as core.String?,
        operation:
            json_.containsKey('operation')
                ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serverCaCert:
            json_.containsKey('serverCaCert')
                ? SslCert.fromJson(
                  json_['serverCaCert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientCert != null) 'clientCert': clientCert!,
    if (kind != null) 'kind': kind!,
    if (operation != null) 'operation': operation!,
    if (serverCaCert != null) 'serverCaCert': serverCaCert!,
  };
}

/// SslCerts list response.
class SslCertsListResponse {
  /// List of client certificates for the instance.
  core.List<SslCert>? items;

  /// This is always `sql#sslCertsList`.
  core.String? kind;

  SslCertsListResponse({this.items, this.kind});

  SslCertsListResponse.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => SslCert.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
  };
}

/// Initial sync flags for certain Cloud SQL APIs.
///
/// Currently used for the MySQL external server initial dump.
class SyncFlags {
  /// The name of the flag.
  core.String? name;

  /// The value of the flag.
  ///
  /// This field must be omitted if the flag doesn't take a value.
  core.String? value;

  SyncFlags({this.name, this.value});

  SyncFlags.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (value != null) 'value': value!,
  };
}

/// Target metric for read pool auto scaling.
class TargetMetric {
  /// The metric name to be used for auto scaling.
  core.String? metric;

  /// The target value for the metric.
  core.double? targetValue;

  TargetMetric({this.metric, this.targetValue});

  TargetMetric.fromJson(core.Map json_)
    : this(
        metric: json_['metric'] as core.String?,
        targetValue: (json_['targetValue'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (metric != null) 'metric': metric!,
    if (targetValue != null) 'targetValue': targetValue!,
  };
}

/// A Google Cloud SQL service tier resource.
class Tier {
  /// The maximum disk size of this tier in bytes.
  core.String? DiskQuota;

  /// The maximum RAM usage of this tier in bytes.
  core.String? RAM;

  /// This is always `sql#tier`.
  core.String? kind;

  /// The applicable regions for this tier.
  core.List<core.String>? region;

  /// An identifier for the machine type, for example, `db-custom-1-3840`.
  ///
  /// For related information, see \[Pricing\](/sql/pricing).
  core.String? tier;

  Tier({this.DiskQuota, this.RAM, this.kind, this.region, this.tier});

  Tier.fromJson(core.Map json_)
    : this(
        DiskQuota: json_['DiskQuota'] as core.String?,
        RAM: json_['RAM'] as core.String?,
        kind: json_['kind'] as core.String?,
        region:
            (json_['region'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        tier: json_['tier'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (DiskQuota != null) 'DiskQuota': DiskQuota!,
    if (RAM != null) 'RAM': RAM!,
    if (kind != null) 'kind': kind!,
    if (region != null) 'region': region!,
    if (tier != null) 'tier': tier!,
  };
}

/// Tiers list response.
class TiersListResponse {
  /// List of tiers.
  core.List<Tier>? items;

  /// This is always `sql#tiersList`.
  core.String? kind;

  TiersListResponse({this.items, this.kind});

  TiersListResponse.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => Tier.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
  };
}

/// Database Instance truncate log context.
class TruncateLogContext {
  /// This is always `sql#truncateLogContext`.
  core.String? kind;

  /// The type of log to truncate.
  ///
  /// Valid values are `MYSQL_GENERAL_TABLE` and `MYSQL_SLOW_TABLE`.
  core.String? logType;

  TruncateLogContext({this.kind, this.logType});

  TruncateLogContext.fromJson(core.Map json_)
    : this(
        kind: json_['kind'] as core.String?,
        logType: json_['logType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (kind != null) 'kind': kind!,
    if (logType != null) 'logType': logType!,
  };
}

/// A Cloud SQL user resource.
class User {
  /// Dual password status for the user.
  /// Possible string values are:
  /// - "DUAL_PASSWORD_TYPE_UNSPECIFIED" : The default value.
  /// - "NO_MODIFY_DUAL_PASSWORD" : Do not update the user's dual password
  /// status.
  /// - "NO_DUAL_PASSWORD" : No dual password usable for connecting using this
  /// user.
  /// - "DUAL_PASSWORD" : Dual password usable for connecting using this user.
  core.String? dualPasswordType;

  /// This field is deprecated and will be removed from a future version of the
  /// API.
  core.String? etag;

  /// The host from which the user can connect.
  ///
  /// For `insert` operations, host defaults to an empty string. For `update`
  /// operations, host is specified as part of the request URL. The host name
  /// cannot be updated after insertion. For a MySQL instance, it's required;
  /// for a PostgreSQL or SQL Server instance, it's optional.
  ///
  /// Optional.
  core.String? host;

  /// Indicates if a group is active or inactive for IAM database
  /// authentication.
  /// Possible string values are:
  /// - "IAM_STATUS_UNSPECIFIED" : The default value for users that are not of
  /// type CLOUD_IAM_GROUP. Only CLOUD_IAM_GROUP users will be inactive or
  /// active. Users with an IamStatus of IAM_STATUS_UNSPECIFIED will not display
  /// whether they are active or inactive as that is not applicable to them.
  /// - "INACTIVE" : INACTIVE indicates a group is not available for IAM
  /// database authentication.
  /// - "ACTIVE" : ACTIVE indicates a group is available for IAM database
  /// authentication.
  core.String? iamStatus;

  /// The name of the Cloud SQL instance.
  ///
  /// This does not include the project ID. Can be omitted for *update* because
  /// it is already specified on the URL.
  core.String? instance;

  /// This is always `sql#user`.
  core.String? kind;

  /// The name of the user in the Cloud SQL instance.
  ///
  /// Can be omitted for `update` because it is already specified in the URL.
  core.String? name;

  /// The password for the user.
  core.String? password;

  /// User level password validation policy.
  UserPasswordValidationPolicy? passwordPolicy;

  /// The project ID of the project containing the Cloud SQL database.
  ///
  /// The Google apps domain is prefixed if applicable. Can be omitted for
  /// *update* because it is already specified on the URL.
  core.String? project;
  SqlServerUserDetails? sqlserverUserDetails;

  /// The user type.
  ///
  /// It determines the method to authenticate the user during login. The
  /// default is the database's built-in user type.
  /// Possible string values are:
  /// - "BUILT_IN" : The database's built-in user type.
  /// - "CLOUD_IAM_USER" : Cloud IAM user.
  /// - "CLOUD_IAM_SERVICE_ACCOUNT" : Cloud IAM service account.
  /// - "CLOUD_IAM_GROUP" : Cloud IAM group. Not used for login.
  /// - "CLOUD_IAM_GROUP_USER" : Read-only. Login for a user that belongs to the
  /// Cloud IAM group.
  /// - "CLOUD_IAM_GROUP_SERVICE_ACCOUNT" : Read-only. Login for a service
  /// account that belongs to the Cloud IAM group.
  core.String? type;

  User({
    this.dualPasswordType,
    this.etag,
    this.host,
    this.iamStatus,
    this.instance,
    this.kind,
    this.name,
    this.password,
    this.passwordPolicy,
    this.project,
    this.sqlserverUserDetails,
    this.type,
  });

  User.fromJson(core.Map json_)
    : this(
        dualPasswordType: json_['dualPasswordType'] as core.String?,
        etag: json_['etag'] as core.String?,
        host: json_['host'] as core.String?,
        iamStatus: json_['iamStatus'] as core.String?,
        instance: json_['instance'] as core.String?,
        kind: json_['kind'] as core.String?,
        name: json_['name'] as core.String?,
        password: json_['password'] as core.String?,
        passwordPolicy:
            json_.containsKey('passwordPolicy')
                ? UserPasswordValidationPolicy.fromJson(
                  json_['passwordPolicy']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        project: json_['project'] as core.String?,
        sqlserverUserDetails:
            json_.containsKey('sqlserverUserDetails')
                ? SqlServerUserDetails.fromJson(
                  json_['sqlserverUserDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dualPasswordType != null) 'dualPasswordType': dualPasswordType!,
    if (etag != null) 'etag': etag!,
    if (host != null) 'host': host!,
    if (iamStatus != null) 'iamStatus': iamStatus!,
    if (instance != null) 'instance': instance!,
    if (kind != null) 'kind': kind!,
    if (name != null) 'name': name!,
    if (password != null) 'password': password!,
    if (passwordPolicy != null) 'passwordPolicy': passwordPolicy!,
    if (project != null) 'project': project!,
    if (sqlserverUserDetails != null)
      'sqlserverUserDetails': sqlserverUserDetails!,
    if (type != null) 'type': type!,
  };
}

/// User level password validation policy.
class UserPasswordValidationPolicy {
  /// Number of failed login attempts allowed before user get locked.
  core.int? allowedFailedAttempts;

  /// If true, failed login attempts check will be enabled.
  core.bool? enableFailedAttemptsCheck;

  /// If true, the user must specify the current password before changing the
  /// password.
  ///
  /// This flag is supported only for MySQL.
  core.bool? enablePasswordVerification;

  /// Expiration duration after password is updated.
  core.String? passwordExpirationDuration;

  /// Read-only password status.
  ///
  /// Output only.
  PasswordStatus? status;

  UserPasswordValidationPolicy({
    this.allowedFailedAttempts,
    this.enableFailedAttemptsCheck,
    this.enablePasswordVerification,
    this.passwordExpirationDuration,
    this.status,
  });

  UserPasswordValidationPolicy.fromJson(core.Map json_)
    : this(
        allowedFailedAttempts: json_['allowedFailedAttempts'] as core.int?,
        enableFailedAttemptsCheck:
            json_['enableFailedAttemptsCheck'] as core.bool?,
        enablePasswordVerification:
            json_['enablePasswordVerification'] as core.bool?,
        passwordExpirationDuration:
            json_['passwordExpirationDuration'] as core.String?,
        status:
            json_.containsKey('status')
                ? PasswordStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowedFailedAttempts != null)
      'allowedFailedAttempts': allowedFailedAttempts!,
    if (enableFailedAttemptsCheck != null)
      'enableFailedAttemptsCheck': enableFailedAttemptsCheck!,
    if (enablePasswordVerification != null)
      'enablePasswordVerification': enablePasswordVerification!,
    if (passwordExpirationDuration != null)
      'passwordExpirationDuration': passwordExpirationDuration!,
    if (status != null) 'status': status!,
  };
}

/// User list response.
class UsersListResponse {
  /// List of user resources in the instance.
  core.List<User>? items;

  /// This is always *sql#usersList*.
  core.String? kind;

  /// Unused.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? nextPageToken;

  UsersListResponse({this.items, this.kind, this.nextPageToken});

  UsersListResponse.fromJson(core.Map json_)
    : this(
        items:
            (json_['items'] as core.List?)
                ?.map(
                  (value) => User.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        kind: json_['kind'] as core.String?,
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (items != null) 'items': items!,
    if (kind != null) 'kind': kind!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The cell value of the table.
class Value {
  /// If cell value is null, then this flag will be set to true.
  core.bool? nullValue;

  /// The cell value represented in string format.
  core.String? value;

  Value({this.nullValue, this.value});

  Value.fromJson(core.Map json_)
    : this(
        nullValue: json_['nullValue'] as core.bool?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nullValue != null) 'nullValue': nullValue!,
    if (value != null) 'value': value!,
  };
}
