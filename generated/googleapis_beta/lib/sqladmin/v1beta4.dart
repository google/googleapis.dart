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

/// Cloud SQL Admin API - v1beta4
///
/// API for Cloud SQL database instance management
///
/// For more information, see <https://developers.google.com/cloud-sql/>
///
/// Create an instance of [SQLAdminApi] to access these resources:
///
/// - [BackupRunsResource]
/// - [DatabasesResource]
/// - [FlagsResource]
/// - [InstancesResource]
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsInstancesResource]
/// - [SslCertsResource]
/// - [TiersResource]
/// - [UsersResource]
library sqladmin.v1beta4;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// API for Cloud SQL database instance management
class SQLAdminApi {
  /// See, edit, configure, and delete your Google Cloud Platform data
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google SQL Service instances
  static const sqlserviceAdminScope =
      'https://www.googleapis.com/auth/sqlservice.admin';

  final commons.ApiRequester _requester;

  BackupRunsResource get backupRuns => BackupRunsResource(_requester);
  DatabasesResource get databases => DatabasesResource(_requester);
  FlagsResource get flags => FlagsResource(_requester);
  InstancesResource get instances => InstancesResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  SslCertsResource get sslCerts => SslCertsResource(_requester);
  TiersResource get tiers => TiersResource(_requester);
  UsersResource get users => UsersResource(_requester);

  SQLAdminApi(http.Client client,
      {core.String rootUrl = 'https://sqladmin.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
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
  /// [id] - The ID of the Backup Run to delete. To find a Backup Run ID, use
  /// the list method.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/backupRuns/' +
        commons.escapeVariable('$id');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a resource containing information about a backup run.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [id] - The ID of this Backup Run.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/backupRuns/' +
        commons.escapeVariable('$id');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BackupRun.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new backup run on demand.
  ///
  /// This method is applicable only to Second Generation instances.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/backupRuns';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all backup runs associated with a given instance and configuration
  /// in the reverse chronological order of the backup initiation time.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/backupRuns';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return BackupRunsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases/' +
        commons.escapeVariable('$database');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases/' +
        commons.escapeVariable('$database');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Database.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Inserts a resource containing information about a database inside a Cloud
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DatabasesListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases/' +
        commons.escapeVariable('$database');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/databases/' +
        commons.escapeVariable('$database');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class FlagsResource {
  final commons.ApiRequester _requester;

  FlagsResource(commons.ApiRequester client) : _requester = client;

  /// List all available database flags for Cloud SQL instances.
  ///
  /// Request parameters:
  ///
  /// [databaseVersion] - Database type and version you want to retrieve flags
  /// for. By default, this method returns flags for all database types and
  /// versions.
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (databaseVersion != null) 'databaseVersion': [databaseVersion],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'sql/v1beta4/flags';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return FlagsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class InstancesResource {
  final commons.ApiRequester _requester;

  InstancesResource(commons.ApiRequester client) : _requester = client;

  /// Add a new trusted Certificate Authority (CA) version for the specified
  /// instance.
  ///
  /// Required to prepare for a certificate rotation. If a CA version was
  /// previously added but never used in a certificate rotation, this operation
  /// replaces that version. There cannot be more than one CA version waiting to
  /// be rotated in.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/addServerCa';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/clone';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/demoteMaster';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  async.Future<Operation> export(
    InstancesExportRequest request,
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/export';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Failover the instance to its failover replica instance.
  ///
  /// Using this operation might cause your instance to restart.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/failover';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DatabaseInstance.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/import';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// [maxResults] - The maximum number of results to return per response.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InstancesListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/listServerCas';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return InstancesListServerCasResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates settings of a Cloud SQL instance.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Promotes the read replica instance to be a stand-alone Cloud SQL instance.
  ///
  /// Using this operation might cause your instance to restart.
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
  async.Future<Operation> promoteReplica(
    core.String project,
    core.String instance, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/promoteReplica';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/resetSslConfig';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/restart';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/restoreBackup';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Rotates the server certificate to one signed by the Certificate Authority
  /// (CA) version previously added with the addServerCA method.
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/rotateServerCa';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/startReplica';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/stopReplica';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Truncate MySQL general and slow query log tables
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/truncateLog';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/operations/' +
        commons.escapeVariable('$operation');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (instance != null) 'instance': [instance],
      if (maxResults != null) 'maxResults': ['${maxResults}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return OperationsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/rescheduleMaintenance';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Start External primary instance migration.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [skipVerification] - Whether to skip the verification step (VESS).
  ///
  /// [syncMode] - External sync mode.
  /// Possible string values are:
  /// - "EXTERNAL_SYNC_MODE_UNSPECIFIED" : Unknown external sync mode, will be
  /// defaulted to ONLINE mode
  /// - "ONLINE" : Online external sync will set up replication after initial
  /// data external sync
  /// - "OFFLINE" : Offline external sync only dumps and loads a one-time
  /// snapshot of the primary instance's data
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
    core.String project,
    core.String instance, {
    core.bool? skipVerification,
    core.String? syncMode,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (skipVerification != null) 'skipVerification': ['${skipVerification}'],
      if (syncMode != null) 'syncMode': [syncMode],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/startExternalSync';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Verify External primary instance external sync settings.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project that contains the instance.
  ///
  /// [instance] - Cloud SQL instance ID. This does not include the project ID.
  ///
  /// [syncMode] - External sync mode
  /// Possible string values are:
  /// - "EXTERNAL_SYNC_MODE_UNSPECIFIED" : Unknown external sync mode, will be
  /// defaulted to ONLINE mode
  /// - "ONLINE" : Online external sync will set up replication after initial
  /// data external sync
  /// - "OFFLINE" : Offline external sync only dumps and loads a one-time
  /// snapshot of the primary instance's data
  ///
  /// [verifyConnectionOnly] - Flag to enable verifying connection only
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
    core.String project,
    core.String instance, {
    core.String? syncMode,
    core.bool? verifyConnectionOnly,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (syncMode != null) 'syncMode': [syncMode],
      if (verifyConnectionOnly != null)
        'verifyConnectionOnly': ['${verifyConnectionOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/verifyExternalSyncSettings';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/createEphemeral';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SslCert.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/sslCerts/' +
        commons.escapeVariable('$sha1Fingerprint');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/sslCerts/' +
        commons.escapeVariable('$sha1Fingerprint');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SslCert.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/sslCerts';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SslCertsInsertResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/sslCerts';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return SslCertsListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class TiersResource {
  final commons.ApiRequester _requester;

  TiersResource(commons.ApiRequester client) : _requester = client;

  /// Lists all available machine types (tiers) for Cloud SQL, for example,
  /// db-n1-standard-1.
  ///
  /// For related information, see Pricing.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'sql/v1beta4/projects/' + commons.escapeVariable('$project') + '/tiers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TiersListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (host != null) 'host': [host],
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return UsersListResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (host != null) 'host': [host],
      if (name != null) 'name': [name],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/users';

    final _response = await _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// An entry for an Access Control list.
class AclEntry {
  /// The time when this access control entry expires in RFC 3339 format, for
  /// example *2012-11-15T16:19:00.094Z*.
  core.String? expirationTime;

  /// This is always *sql#aclEntry*.
  core.String? kind;

  /// A label to identify this entry.
  ///
  /// Optional.
  core.String? name;

  /// The allowlisted value for the access control list.
  core.String? value;

  AclEntry();

  AclEntry.fromJson(core.Map _json) {
    if (_json.containsKey('expirationTime')) {
      expirationTime = _json['expirationTime'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (expirationTime != null) 'expirationTime': expirationTime!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
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
  core.String? code;

  /// The warning message.
  core.String? message;

  /// The region name for REGION_UNREACHABLE warning.
  core.String? region;

  ApiWarning();

  ApiWarning.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
    if (_json.containsKey('region')) {
      region = _json['region'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (message != null) 'message': message!,
        if (region != null) 'region': region!,
      };
}

/// Database instance backup configuration.
class BackupConfiguration {
  /// Backup retention settings.
  BackupRetentionSettings? backupRetentionSettings;

  /// (MySQL only) Whether binary log is enabled.
  ///
  /// If backup configuration is disabled, binarylog must be disabled as well.
  core.bool? binaryLogEnabled;

  /// Whether this configuration is enabled.
  core.bool? enabled;

  /// This is always *sql#backupConfiguration*.
  core.String? kind;

  /// Location of the backup
  core.String? location;

  /// Reserved for future use.
  core.bool? pointInTimeRecoveryEnabled;

  /// Reserved for future use.
  core.bool? replicationLogArchivingEnabled;

  /// Start time for the daily backup configuration in UTC timezone in the 24
  /// hour format - *HH:MM*.
  core.String? startTime;

  /// The number of days of transaction logs we retain for point in time
  /// restore, from 1-7.
  core.int? transactionLogRetentionDays;

  BackupConfiguration();

  BackupConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('backupRetentionSettings')) {
      backupRetentionSettings = BackupRetentionSettings.fromJson(
          _json['backupRetentionSettings']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('binaryLogEnabled')) {
      binaryLogEnabled = _json['binaryLogEnabled'] as core.bool;
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('pointInTimeRecoveryEnabled')) {
      pointInTimeRecoveryEnabled =
          _json['pointInTimeRecoveryEnabled'] as core.bool;
    }
    if (_json.containsKey('replicationLogArchivingEnabled')) {
      replicationLogArchivingEnabled =
          _json['replicationLogArchivingEnabled'] as core.bool;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('transactionLogRetentionDays')) {
      transactionLogRetentionDays =
          _json['transactionLogRetentionDays'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupRetentionSettings != null)
          'backupRetentionSettings': backupRetentionSettings!.toJson(),
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
      };
}

/// Backup context.
class BackupContext {
  /// The identifier of the backup.
  core.String? backupId;

  /// This is always *sql#backupContext*.
  core.String? kind;

  BackupContext();

  BackupContext.fromJson(core.Map _json) {
    if (_json.containsKey('backupId')) {
      backupId = _json['backupId'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupId != null) 'backupId': backupId!,
        if (kind != null) 'kind': kind!,
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

  BackupRetentionSettings();

  BackupRetentionSettings.fromJson(core.Map _json) {
    if (_json.containsKey('retainedBackups')) {
      retainedBackups = _json['retainedBackups'] as core.int;
    }
    if (_json.containsKey('retentionUnit')) {
      retentionUnit = _json['retentionUnit'] as core.String;
    }
  }

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
  /// - "SNAPSHOT" : The snapshot based backups
  /// - "PHYSICAL" : Physical backups
  core.String? backupKind;

  /// The description of this run, only applicable to on-demand backups.
  core.String? description;

  /// Encryption configuration specific to a backup.
  ///
  /// Applies only to Second Generation instances.
  DiskEncryptionConfiguration? diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  ///
  /// Applies only to Second Generation instances.
  DiskEncryptionStatus? diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in RFC 3339
  /// format, for example *2012-11-15T16:19:00.094Z*.
  core.String? endTime;

  /// The time the run was enqueued in UTC timezone in RFC 3339 format, for
  /// example *2012-11-15T16:19:00.094Z*.
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

  /// This is always *sql#backupRun*.
  core.String? kind;

  /// Location of the backups.
  core.String? location;

  /// The URI of this resource.
  core.String? selfLink;

  /// The time the backup operation actually started in UTC timezone in RFC 3339
  /// format, for example *2012-11-15T16:19:00.094Z*.
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

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND".
  ///
  /// This field defaults to "ON_DEMAND" and is ignored, when specified for
  /// insert requests.
  /// Possible string values are:
  /// - "SQL_BACKUP_RUN_TYPE_UNSPECIFIED" : This is an unknown BackupRun type.
  /// - "AUTOMATED" : The backup schedule automatically triggers a backup.
  /// - "ON_DEMAND" : The user manually triggers a backup.
  core.String? type;

  /// The start time of the backup window during which this the backup was
  /// attempted in RFC 3339 format, for example *2012-11-15T16:19:00.094Z*.
  core.String? windowStartTime;

  BackupRun();

  BackupRun.fromJson(core.Map _json) {
    if (_json.containsKey('backupKind')) {
      backupKind = _json['backupKind'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('diskEncryptionConfiguration')) {
      diskEncryptionConfiguration = DiskEncryptionConfiguration.fromJson(
          _json['diskEncryptionConfiguration']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('diskEncryptionStatus')) {
      diskEncryptionStatus = DiskEncryptionStatus.fromJson(
          _json['diskEncryptionStatus'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('enqueuedTime')) {
      enqueuedTime = _json['enqueuedTime'] as core.String;
    }
    if (_json.containsKey('error')) {
      error = OperationError.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('location')) {
      location = _json['location'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('windowStartTime')) {
      windowStartTime = _json['windowStartTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupKind != null) 'backupKind': backupKind!,
        if (description != null) 'description': description!,
        if (diskEncryptionConfiguration != null)
          'diskEncryptionConfiguration': diskEncryptionConfiguration!.toJson(),
        if (diskEncryptionStatus != null)
          'diskEncryptionStatus': diskEncryptionStatus!.toJson(),
        if (endTime != null) 'endTime': endTime!,
        if (enqueuedTime != null) 'enqueuedTime': enqueuedTime!,
        if (error != null) 'error': error!.toJson(),
        if (id != null) 'id': id!,
        if (instance != null) 'instance': instance!,
        if (kind != null) 'kind': kind!,
        if (location != null) 'location': location!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
        if (type != null) 'type': type!,
        if (windowStartTime != null) 'windowStartTime': windowStartTime!,
      };
}

/// Backup run list results.
class BackupRunsListResponse {
  /// A list of backup runs in reverse chronological order of the enqueued time.
  core.List<BackupRun>? items;

  /// This is always *sql#backupRunsList*.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  BackupRunsListResponse();

  BackupRunsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<BackupRun>((value) =>
              BackupRun.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
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

  /// This is always *sql#binLogCoordinates*.
  core.String? kind;

  BinLogCoordinates();

  BinLogCoordinates.fromJson(core.Map _json) {
    if (_json.containsKey('binLogFileName')) {
      binLogFileName = _json['binLogFileName'] as core.String;
    }
    if (_json.containsKey('binLogPosition')) {
      binLogPosition = _json['binLogPosition'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (binLogFileName != null) 'binLogFileName': binLogFileName!,
        if (binLogPosition != null) 'binLogPosition': binLogPosition!,
        if (kind != null) 'kind': kind!,
      };
}

/// Database instance clone context.
class CloneContext {
  /// Binary log coordinates, if specified, identify the position up to which
  /// the source instance is cloned.
  ///
  /// If not specified, the source instance is cloned up to the most recent
  /// binary log coordinates.
  BinLogCoordinates? binLogCoordinates;

  /// Name of the Cloud SQL instance to be created as a clone.
  core.String? destinationInstanceName;

  /// This is always *sql#cloneContext*.
  core.String? kind;

  /// Reserved for future use.
  core.String? pitrTimestampMs;

  /// Reserved for future use.
  core.String? pointInTime;

  CloneContext();

  CloneContext.fromJson(core.Map _json) {
    if (_json.containsKey('binLogCoordinates')) {
      binLogCoordinates = BinLogCoordinates.fromJson(
          _json['binLogCoordinates'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('destinationInstanceName')) {
      destinationInstanceName = _json['destinationInstanceName'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('pitrTimestampMs')) {
      pitrTimestampMs = _json['pitrTimestampMs'] as core.String;
    }
    if (_json.containsKey('pointInTime')) {
      pointInTime = _json['pointInTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (binLogCoordinates != null)
          'binLogCoordinates': binLogCoordinates!.toJson(),
        if (destinationInstanceName != null)
          'destinationInstanceName': destinationInstanceName!,
        if (kind != null) 'kind': kind!,
        if (pitrTimestampMs != null) 'pitrTimestampMs': pitrTimestampMs!,
        if (pointInTime != null) 'pointInTime': pointInTime!,
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

  /// This is always *sql#database*.
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

  Database();

  Database.fromJson(core.Map _json) {
    if (_json.containsKey('charset')) {
      charset = _json['charset'] as core.String;
    }
    if (_json.containsKey('collation')) {
      collation = _json['collation'] as core.String;
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('project')) {
      project = _json['project'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('sqlserverDatabaseDetails')) {
      sqlserverDatabaseDetails = SqlServerDatabaseDetails.fromJson(
          _json['sqlserverDatabaseDetails']
              as core.Map<core.String, core.dynamic>);
    }
  }

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
          'sqlserverDatabaseDetails': sqlserverDatabaseDetails!.toJson(),
      };
}

/// Database flags for Cloud SQL instances.
class DatabaseFlags {
  /// The name of the flag.
  ///
  /// These flags are passed at instance startup, so include both server options
  /// and system variables for MySQL. Flags are specified with underscores, not
  /// hyphens. For more information, see Configuring Database Flags in the Cloud
  /// SQL documentation.
  core.String? name;

  /// The value of the flag.
  ///
  /// Booleans are set to *on* for true and *off* for false. This field must be
  /// omitted if the flag doesn't take a value.
  core.String? value;

  DatabaseFlags();

  DatabaseFlags.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// The name and status of the failover replica.
///
/// This property is applicable only to Second Generation instances.
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
  /// instance. The name doesn't include the project ID. This property is
  /// applicable only to Second Generation instances.
  core.String? name;

  DatabaseInstanceFailoverReplica();

  DatabaseInstanceFailoverReplica.fromJson(core.Map _json) {
    if (_json.containsKey('available')) {
      available = _json['available'] as core.bool;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (available != null) 'available': available!,
        if (name != null) 'name': name!,
      };
}

/// A Cloud SQL instance resource.
///
/// Next field: 36
class DatabaseInstance {
  ///  *SECOND_GEN*: Cloud SQL database instance.
  ///
  /// *EXTERNAL*: A database server that is not managed by Google. This property
  /// is read-only; use the *tier* property in the *settings* object to
  /// determine the database type.
  /// Possible string values are:
  /// - "SQL_BACKEND_TYPE_UNSPECIFIED" : This is an unknown backend type for
  /// instance.
  /// - "FIRST_GEN" : V1 speckle instance.
  /// - "SECOND_GEN" : V2 speckle instance.
  /// - "EXTERNAL" : On premises instance.
  core.String? backendType;

  /// Connection name of the Cloud SQL instance used in connection strings.
  core.String? connectionName;

  /// The current disk usage of the instance in bytes.
  ///
  /// This property has been deprecated. Use the
  /// "cloudsql.googleapis.com/database/disk/bytes_used" metric in Cloud
  /// Monitoring API instead. Please see this announcement for details.
  core.String? currentDiskSize;

  /// The database engine type and version.
  ///
  /// The *databaseVersion* field cannot be changed after instance creation.
  /// MySQL instances: *MYSQL_8_0*, *MYSQL_5_7* (default), or *MYSQL_5_6*.
  /// PostgreSQL instances: *POSTGRES_9_6*, *POSTGRES_10*, *POSTGRES_11* or
  /// *POSTGRES_12* (default). SQL Server instances: *SQLSERVER_2017_STANDARD*
  /// (default), *SQLSERVER_2017_ENTERPRISE*, *SQLSERVER_2017_EXPRESS*, or
  /// *SQLSERVER_2017_WEB*.
  /// Possible string values are:
  /// - "SQL_DATABASE_VERSION_UNSPECIFIED" : This is an unknown database
  /// version.
  /// - "MYSQL_5_1" : The database version is MySQL 5.1.
  /// - "MYSQL_5_5" : The database version is MySQL 5.5.
  /// - "MYSQL_5_6" : The database version is MySQL 5.6.
  /// - "MYSQL_5_7" : The database version is MySQL 5.7.
  /// - "POSTGRES_9_6" : The database version is PostgreSQL 9.6.
  /// - "POSTGRES_11" : The database version is PostgreSQL 11.
  /// - "SQLSERVER_2017_STANDARD" : The database version is SQL Server 2017
  /// Standard.
  /// - "SQLSERVER_2017_ENTERPRISE" : The database version is SQL Server 2017
  /// Enterprise.
  /// - "SQLSERVER_2017_EXPRESS" : The database version is SQL Server 2017
  /// Express.
  /// - "SQLSERVER_2017_WEB" : The database version is SQL Server 2017 Web.
  /// - "POSTGRES_10" : The database version is PostgreSQL 10.
  /// - "POSTGRES_12" : The database version is PostgreSQL 12.
  /// - "MYSQL_8_0" : The database version is MySQL 8.
  /// - "POSTGRES_13" : The database version is PostgreSQL 13.
  core.String? databaseVersion;

  /// Disk encryption configuration specific to an instance.
  ///
  /// Applies only to Second Generation instances.
  DiskEncryptionConfiguration? diskEncryptionConfiguration;

  /// Disk encryption status specific to an instance.
  ///
  /// Applies only to Second Generation instances.
  DiskEncryptionStatus? diskEncryptionStatus;

  /// This field is deprecated and will be removed from a future version of the
  /// API.
  ///
  /// Use the *settings.settingsVersion* field instead.
  core.String? etag;

  /// The name and status of the failover replica.
  ///
  /// This property is applicable only to Second Generation instances.
  DatabaseInstanceFailoverReplica? failoverReplica;

  /// The Compute Engine zone that the instance is currently serving from.
  ///
  /// This value could be different from the zone that was specified when the
  /// instance was created if the instance has failed over to its secondary
  /// zone.
  core.String? gceZone;

  /// The instance type.
  ///
  /// This can be one of the following. *CLOUD_SQL_INSTANCE*: A Cloud SQL
  /// instance that is not replicating from a primary instance.
  /// *ON_PREMISES_INSTANCE*: An instance running on the customer's premises.
  /// *READ_REPLICA_INSTANCE*: A Cloud SQL instance configured as a
  /// read-replica.
  /// Possible string values are:
  /// - "SQL_INSTANCE_TYPE_UNSPECIFIED" : This is an unknown Cloud SQL instance
  /// type.
  /// - "CLOUD_SQL_INSTANCE" : A regular Cloud SQL instance.
  /// - "ON_PREMISES_INSTANCE" : An instance running on the customer's premises
  /// that is not managed by Cloud SQL.
  /// - "READ_REPLICA_INSTANCE" : A Cloud SQL instance acting as a read-replica.
  core.String? instanceType;

  /// The assigned IP addresses for the instance.
  core.List<IpMapping>? ipAddresses;

  /// The IPv6 address assigned to the instance.
  ///
  /// (Deprecated) This property was applicable only to First Generation
  /// instances.
  core.String? ipv6Address;

  /// This is always *sql#instance*.
  core.String? kind;

  /// The name of the instance which will act as primary in the replication
  /// setup.
  core.String? masterInstanceName;

  /// The maximum disk size of the instance in bytes.
  core.String? maxDiskSize;

  /// Name of the Cloud SQL instance.
  ///
  /// This does not include the project ID.
  core.String? name;

  /// Configuration specific to on-premises instances.
  OnPremisesConfiguration? onPremisesConfiguration;

  /// The project ID of the project containing the Cloud SQL instance.
  ///
  /// The Google apps domain is prefixed if applicable.
  core.String? project;

  /// The geographical region.
  ///
  /// Can be *us-central* (*FIRST_GEN* instances only) *us-central1*
  /// (*SECOND_GEN* instances only) *asia-east1* or *europe-west1*. Defaults to
  /// *us-central* or *us-central1* depending on the instance type. The region
  /// cannot be changed after instance creation.
  core.String? region;

  /// Configuration specific to failover replicas and read replicas.
  ReplicaConfiguration? replicaConfiguration;

  /// The replicas of the instance.
  core.List<core.String>? replicaNames;

  /// Initial root password.
  ///
  /// Use only on creation.
  core.String? rootPassword;

  /// The status indicating if instance satisfies physical zone separation.
  ///
  /// Reserved for future use.
  core.bool? satisfiesPzs;

  /// The start time of any upcoming scheduled maintenance for this instance.
  SqlScheduledMaintenance? scheduledMaintenance;

  /// The Compute Engine zone that the failover instance is currently serving
  /// from for a regional instance.
  ///
  /// This value could be different from the zone that was specified when the
  /// instance was created if the instance has failed over to its
  /// secondary/failover zone. Reserved for future use.
  core.String? secondaryGceZone;

  /// The URI of this resource.
  core.String? selfLink;

  /// SSL configuration.
  SslCert? serverCaCert;

  /// The service account email address assigned to the instance.
  ///
  /// This property is applicable only to Second Generation instances.
  core.String? serviceAccountEmailAddress;

  /// The user settings.
  Settings? settings;

  /// The current serving state of the Cloud SQL instance.
  ///
  /// This can be one of the following. *SQL_INSTANCE_STATE_UNSPECIFIED*: The
  /// state of the instance is unknown. *RUNNABLE*: The instance is running, or
  /// has been stopped by owner. *SUSPENDED*: The instance is not available, for
  /// example due to problems with billing. for example due to problems with
  /// billing. *PENDING_DELETE*: The instance is being deleted.
  /// *PENDING_CREATE*: The instance is being created. *MAINTENANCE*: The
  /// instance is down for maintenance. *FAILED*: The instance creation failed.
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
  core.String? state;

  /// If the instance state is SUSPENDED, the reason for the suspension.
  core.List<core.String>? suspensionReason;

  DatabaseInstance();

  DatabaseInstance.fromJson(core.Map _json) {
    if (_json.containsKey('backendType')) {
      backendType = _json['backendType'] as core.String;
    }
    if (_json.containsKey('connectionName')) {
      connectionName = _json['connectionName'] as core.String;
    }
    if (_json.containsKey('currentDiskSize')) {
      currentDiskSize = _json['currentDiskSize'] as core.String;
    }
    if (_json.containsKey('databaseVersion')) {
      databaseVersion = _json['databaseVersion'] as core.String;
    }
    if (_json.containsKey('diskEncryptionConfiguration')) {
      diskEncryptionConfiguration = DiskEncryptionConfiguration.fromJson(
          _json['diskEncryptionConfiguration']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('diskEncryptionStatus')) {
      diskEncryptionStatus = DiskEncryptionStatus.fromJson(
          _json['diskEncryptionStatus'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('failoverReplica')) {
      failoverReplica = DatabaseInstanceFailoverReplica.fromJson(
          _json['failoverReplica'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('gceZone')) {
      gceZone = _json['gceZone'] as core.String;
    }
    if (_json.containsKey('instanceType')) {
      instanceType = _json['instanceType'] as core.String;
    }
    if (_json.containsKey('ipAddresses')) {
      ipAddresses = (_json['ipAddresses'] as core.List)
          .map<IpMapping>((value) =>
              IpMapping.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('ipv6Address')) {
      ipv6Address = _json['ipv6Address'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('masterInstanceName')) {
      masterInstanceName = _json['masterInstanceName'] as core.String;
    }
    if (_json.containsKey('maxDiskSize')) {
      maxDiskSize = _json['maxDiskSize'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('onPremisesConfiguration')) {
      onPremisesConfiguration = OnPremisesConfiguration.fromJson(
          _json['onPremisesConfiguration']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('project')) {
      project = _json['project'] as core.String;
    }
    if (_json.containsKey('region')) {
      region = _json['region'] as core.String;
    }
    if (_json.containsKey('replicaConfiguration')) {
      replicaConfiguration = ReplicaConfiguration.fromJson(
          _json['replicaConfiguration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('replicaNames')) {
      replicaNames = (_json['replicaNames'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('rootPassword')) {
      rootPassword = _json['rootPassword'] as core.String;
    }
    if (_json.containsKey('satisfiesPzs')) {
      satisfiesPzs = _json['satisfiesPzs'] as core.bool;
    }
    if (_json.containsKey('scheduledMaintenance')) {
      scheduledMaintenance = SqlScheduledMaintenance.fromJson(
          _json['scheduledMaintenance'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('secondaryGceZone')) {
      secondaryGceZone = _json['secondaryGceZone'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('serverCaCert')) {
      serverCaCert = SslCert.fromJson(
          _json['serverCaCert'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('serviceAccountEmailAddress')) {
      serviceAccountEmailAddress =
          _json['serviceAccountEmailAddress'] as core.String;
    }
    if (_json.containsKey('settings')) {
      settings = Settings.fromJson(
          _json['settings'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('suspensionReason')) {
      suspensionReason = (_json['suspensionReason'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (backendType != null) 'backendType': backendType!,
        if (connectionName != null) 'connectionName': connectionName!,
        if (currentDiskSize != null) 'currentDiskSize': currentDiskSize!,
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (diskEncryptionConfiguration != null)
          'diskEncryptionConfiguration': diskEncryptionConfiguration!.toJson(),
        if (diskEncryptionStatus != null)
          'diskEncryptionStatus': diskEncryptionStatus!.toJson(),
        if (etag != null) 'etag': etag!,
        if (failoverReplica != null)
          'failoverReplica': failoverReplica!.toJson(),
        if (gceZone != null) 'gceZone': gceZone!,
        if (instanceType != null) 'instanceType': instanceType!,
        if (ipAddresses != null)
          'ipAddresses': ipAddresses!.map((value) => value.toJson()).toList(),
        if (ipv6Address != null) 'ipv6Address': ipv6Address!,
        if (kind != null) 'kind': kind!,
        if (masterInstanceName != null)
          'masterInstanceName': masterInstanceName!,
        if (maxDiskSize != null) 'maxDiskSize': maxDiskSize!,
        if (name != null) 'name': name!,
        if (onPremisesConfiguration != null)
          'onPremisesConfiguration': onPremisesConfiguration!.toJson(),
        if (project != null) 'project': project!,
        if (region != null) 'region': region!,
        if (replicaConfiguration != null)
          'replicaConfiguration': replicaConfiguration!.toJson(),
        if (replicaNames != null) 'replicaNames': replicaNames!,
        if (rootPassword != null) 'rootPassword': rootPassword!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (scheduledMaintenance != null)
          'scheduledMaintenance': scheduledMaintenance!.toJson(),
        if (secondaryGceZone != null) 'secondaryGceZone': secondaryGceZone!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (serverCaCert != null) 'serverCaCert': serverCaCert!.toJson(),
        if (serviceAccountEmailAddress != null)
          'serviceAccountEmailAddress': serviceAccountEmailAddress!,
        if (settings != null) 'settings': settings!.toJson(),
        if (state != null) 'state': state!,
        if (suspensionReason != null) 'suspensionReason': suspensionReason!,
      };
}

/// Database list response.
class DatabasesListResponse {
  /// List of database resources in the instance.
  core.List<Database>? items;

  /// This is always *sql#databasesList*.
  core.String? kind;

  DatabasesListResponse();

  DatabasesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Database>((value) =>
              Database.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
      };
}

/// Read-replica configuration for connecting to the on-premises primary
/// instance.
class DemoteMasterConfiguration {
  /// This is always *sql#demoteMasterConfiguration*.
  core.String? kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises
  /// primary instance.
  ///
  /// Replication configuration information such as the username, password,
  /// certificates, and keys are not stored in the instance metadata. The
  /// configuration information is used only to set up the replication
  /// connection and is stored by MySQL in a file named *master.info* in the
  /// data directory.
  DemoteMasterMySqlReplicaConfiguration? mysqlReplicaConfiguration;

  DemoteMasterConfiguration();

  DemoteMasterConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('mysqlReplicaConfiguration')) {
      mysqlReplicaConfiguration =
          DemoteMasterMySqlReplicaConfiguration.fromJson(
              _json['mysqlReplicaConfiguration']
                  as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (mysqlReplicaConfiguration != null)
          'mysqlReplicaConfiguration': mysqlReplicaConfiguration!.toJson(),
      };
}

/// Database instance demote primary instance context.
class DemoteMasterContext {
  /// This is always *sql#demoteMasterContext*.
  core.String? kind;

  /// The name of the instance which will act as on-premises primary instance in
  /// the replication setup.
  core.String? masterInstanceName;

  /// Configuration specific to read-replicas replicating from the on-premises
  /// primary instance.
  DemoteMasterConfiguration? replicaConfiguration;

  /// Verify GTID consistency for demote operation.
  ///
  /// Default value: *True*. Second Generation instances only. Setting this flag
  /// to false enables you to bypass GTID consistency check between on-premises
  /// primary instance and Cloud SQL instance during the demotion operation but
  /// also exposes you to the risk of future replication failures. Change the
  /// value only if you know the reason for the GTID divergence and are
  /// confident that doing so will not cause any replication issues.
  core.bool? verifyGtidConsistency;

  DemoteMasterContext();

  DemoteMasterContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('masterInstanceName')) {
      masterInstanceName = _json['masterInstanceName'] as core.String;
    }
    if (_json.containsKey('replicaConfiguration')) {
      replicaConfiguration = DemoteMasterConfiguration.fromJson(
          _json['replicaConfiguration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('verifyGtidConsistency')) {
      verifyGtidConsistency = _json['verifyGtidConsistency'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (masterInstanceName != null)
          'masterInstanceName': masterInstanceName!,
        if (replicaConfiguration != null)
          'replicaConfiguration': replicaConfiguration!.toJson(),
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
  /// The corresponsing public key is encoded in the client's certificate. The
  /// format of the replica's private key can be either PKCS #1 or PKCS #8.
  core.String? clientKey;

  /// This is always *sql#demoteMasterMysqlReplicaConfiguration*.
  core.String? kind;

  /// The password for the replication connection.
  core.String? password;

  /// The username for the replication connection.
  core.String? username;

  DemoteMasterMySqlReplicaConfiguration();

  DemoteMasterMySqlReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('caCertificate')) {
      caCertificate = _json['caCertificate'] as core.String;
    }
    if (_json.containsKey('clientCertificate')) {
      clientCertificate = _json['clientCertificate'] as core.String;
    }
    if (_json.containsKey('clientKey')) {
      clientKey = _json['clientKey'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('password')) {
      password = _json['password'] as core.String;
    }
    if (_json.containsKey('username')) {
      username = _json['username'] as core.String;
    }
  }

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

  DenyMaintenancePeriod();

  DenyMaintenancePeriod.fromJson(core.Map _json) {
    if (_json.containsKey('endDate')) {
      endDate = _json['endDate'] as core.String;
    }
    if (_json.containsKey('startDate')) {
      startDate = _json['startDate'] as core.String;
    }
    if (_json.containsKey('time')) {
      time = _json['time'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (endDate != null) 'endDate': endDate!,
        if (startDate != null) 'startDate': startDate!,
        if (time != null) 'time': time!,
      };
}

/// Disk encryption configuration for an instance.
class DiskEncryptionConfiguration {
  /// This is always *sql#diskEncryptionConfiguration*.
  core.String? kind;

  /// Resource name of KMS key for disk encryption
  core.String? kmsKeyName;

  DiskEncryptionConfiguration();

  DiskEncryptionConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('kmsKeyName')) {
      kmsKeyName = _json['kmsKeyName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// Disk encryption status for an instance.
class DiskEncryptionStatus {
  /// This is always *sql#diskEncryptionStatus*.
  core.String? kind;

  /// KMS key version used to encrypt the Cloud SQL instance resource
  core.String? kmsKeyVersionName;

  DiskEncryptionStatus();

  DiskEncryptionStatus.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('kmsKeyVersionName')) {
      kmsKeyVersionName = _json['kmsKeyVersionName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
      };
}

/// Options for exporting data as CSV.
///
/// *MySQL* and *PostgreSQL* instances only.
class ExportContextCsvExportOptions {
  /// The select query used to extract the data.
  core.String? selectQuery;

  ExportContextCsvExportOptions();

  ExportContextCsvExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('selectQuery')) {
      selectQuery = _json['selectQuery'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (selectQuery != null) 'selectQuery': selectQuery!,
      };
}

/// Options for exporting from MySQL.
class ExportContextSqlExportOptionsMysqlExportOptions {
  /// Option to include SQL statement required to set up replication.
  ///
  /// If set to *1*, the dump file includes a CHANGE MASTER TO statement with
  /// the binary log coordinates, and --set-gtid-purged is set to ON. If set to
  /// *2*, the CHANGE MASTER TO statement is written as a SQL comment and has no
  /// effect. If set to any value other than *1*, --set-gtid-purged is set to
  /// OFF.
  core.int? masterData;

  ExportContextSqlExportOptionsMysqlExportOptions();

  ExportContextSqlExportOptionsMysqlExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('masterData')) {
      masterData = _json['masterData'] as core.int;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (masterData != null) 'masterData': masterData!,
      };
}

/// Options for exporting data as SQL statements.
class ExportContextSqlExportOptions {
  /// Options for exporting from MySQL.
  ExportContextSqlExportOptionsMysqlExportOptions? mysqlExportOptions;

  /// Export only schemas.
  core.bool? schemaOnly;

  /// Tables to export, or that were exported, from the specified database.
  ///
  /// If you specify tables, specify one and only one database. For PostgreSQL
  /// instances, you can specify only one table.
  core.List<core.String>? tables;

  ExportContextSqlExportOptions();

  ExportContextSqlExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('mysqlExportOptions')) {
      mysqlExportOptions =
          ExportContextSqlExportOptionsMysqlExportOptions.fromJson(
              _json['mysqlExportOptions']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('schemaOnly')) {
      schemaOnly = _json['schemaOnly'] as core.bool;
    }
    if (_json.containsKey('tables')) {
      tables = (_json['tables'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlExportOptions != null)
          'mysqlExportOptions': mysqlExportOptions!.toJson(),
        if (schemaOnly != null) 'schemaOnly': schemaOnly!,
        if (tables != null) 'tables': tables!,
      };
}

/// Database instance export context.
class ExportContext {
  /// Options for exporting data as CSV.
  ///
  /// *MySQL* and *PostgreSQL* instances only.
  ExportContextCsvExportOptions? csvExportOptions;

  /// Databases to be exported.
  ///
  /// *MySQL instances:* If *fileType* is *SQL* and no database is specified,
  /// all databases are exported, except for the *mysql* system database. If
  /// *fileType* is *CSV*, you can specify one database, either by using this
  /// property or by using the *csvExportOptions.selectQuery* property, which
  /// takes precedence over this property. *PostgreSQL instances:* You must
  /// specify one database to be exported. If *fileType* is *CSV*, this database
  /// must match the one specified in the *csvExportOptions.selectQuery*
  /// property.
  core.List<core.String>? databases;

  /// The file type for the specified uri.
  ///
  /// *SQL*: The file contains SQL statements. *CSV*: The file contains CSV
  /// data. *BAK*: The file contains backup data for a SQL Server instance.
  /// Possible string values are:
  /// - "SQL_FILE_TYPE_UNSPECIFIED" : Unknown file type.
  /// - "SQL" : File containing SQL statements.
  /// - "CSV" : File in CSV format.
  /// - "BAK"
  core.String? fileType;

  /// This is always *sql#exportContext*.
  core.String? kind;

  /// Option for export offload.
  core.bool? offload;

  /// Options for exporting data as SQL statements.
  ExportContextSqlExportOptions? sqlExportOptions;

  /// The path to the file in Google Cloud Storage where the export will be
  /// stored.
  ///
  /// The URI is in the form *gs://bucketName/fileName*. If the file already
  /// exists, the request succeeds, but the operation fails. If *fileType* is
  /// *SQL* and the filename ends with .gz, the contents are compressed.
  core.String? uri;

  ExportContext();

  ExportContext.fromJson(core.Map _json) {
    if (_json.containsKey('csvExportOptions')) {
      csvExportOptions = ExportContextCsvExportOptions.fromJson(
          _json['csvExportOptions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('databases')) {
      databases = (_json['databases'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('fileType')) {
      fileType = _json['fileType'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('offload')) {
      offload = _json['offload'] as core.bool;
    }
    if (_json.containsKey('sqlExportOptions')) {
      sqlExportOptions = ExportContextSqlExportOptions.fromJson(
          _json['sqlExportOptions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (csvExportOptions != null)
          'csvExportOptions': csvExportOptions!.toJson(),
        if (databases != null) 'databases': databases!,
        if (fileType != null) 'fileType': fileType!,
        if (kind != null) 'kind': kind!,
        if (offload != null) 'offload': offload!,
        if (sqlExportOptions != null)
          'sqlExportOptions': sqlExportOptions!.toJson(),
        if (uri != null) 'uri': uri!,
      };
}

/// Database instance failover context.
class FailoverContext {
  /// This is always *sql#failoverContext*.
  core.String? kind;

  /// The current settings version of this instance.
  ///
  /// Request will be rejected if this version doesn't match the current
  /// settings version.
  core.String? settingsVersion;

  FailoverContext();

  FailoverContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('settingsVersion')) {
      settingsVersion = _json['settingsVersion'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (settingsVersion != null) 'settingsVersion': settingsVersion!,
      };
}

/// A flag resource.
class Flag {
  /// Use this field if only certain integers are accepted.
  ///
  /// Can be combined with min_value and max_value to add additional values.
  core.List<core.String>? allowedIntValues;

  /// For *STRING* flags, a list of strings that the value can be set to.
  core.List<core.String>? allowedStringValues;

  /// The database version this flag applies to.
  ///
  /// Can be *MYSQL_8_0*, *MYSQL_5_6*, or *MYSQL_5_7*.
  core.List<core.String>? appliesTo;

  /// Whether or not the flag is considered in beta.
  core.bool? inBeta;

  /// This is always *sql#flag*.
  core.String? kind;

  /// For *INTEGER* flags, the maximum allowed value.
  core.String? maxValue;

  /// For *INTEGER* flags, the minimum allowed value.
  core.String? minValue;

  /// This is the name of the flag.
  ///
  /// Flag names always use underscores, not hyphens, for example:
  /// *max_allowed_packet*
  core.String? name;

  /// Indicates whether changing this flag will trigger a database restart.
  ///
  /// Only applicable to Second Generation instances.
  core.bool? requiresRestart;

  /// The type of the flag.
  ///
  /// Flags are typed to being *BOOLEAN*, *STRING*, *INTEGER* or *NONE*. *NONE*
  /// is used for flags which do not take a value, such as *skip_grant_tables*.
  /// Possible string values are:
  /// - "SQL_FLAG_TYPE_UNSPECIFIED" : This is an unknown flag type.
  /// - "BOOLEAN" : Boolean type flag.
  /// - "STRING" : String type flag.
  /// - "INTEGER" : Integer type flag.
  /// - "NONE" : Flag type used for a server startup option.
  /// - "MYSQL_TIMEZONE_OFFSET" : Type introduced specically for MySQL TimeZone
  /// offset. Accept a string value with the format \[-12:59, 13:00\].
  /// - "FLOAT" : Float type flag.
  /// - "REPEATED_STRING" : Comma-separated list of the strings in a SqlFlagType
  /// enum.
  core.String? type;

  Flag();

  Flag.fromJson(core.Map _json) {
    if (_json.containsKey('allowedIntValues')) {
      allowedIntValues = (_json['allowedIntValues'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('allowedStringValues')) {
      allowedStringValues = (_json['allowedStringValues'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('appliesTo')) {
      appliesTo = (_json['appliesTo'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('inBeta')) {
      inBeta = _json['inBeta'] as core.bool;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('maxValue')) {
      maxValue = _json['maxValue'] as core.String;
    }
    if (_json.containsKey('minValue')) {
      minValue = _json['minValue'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('requiresRestart')) {
      requiresRestart = _json['requiresRestart'] as core.bool;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedIntValues != null) 'allowedIntValues': allowedIntValues!,
        if (allowedStringValues != null)
          'allowedStringValues': allowedStringValues!,
        if (appliesTo != null) 'appliesTo': appliesTo!,
        if (inBeta != null) 'inBeta': inBeta!,
        if (kind != null) 'kind': kind!,
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
        if (name != null) 'name': name!,
        if (requiresRestart != null) 'requiresRestart': requiresRestart!,
        if (type != null) 'type': type!,
      };
}

/// Flags list response.
class FlagsListResponse {
  /// List of flags.
  core.List<Flag>? items;

  /// This is always *sql#flagsList*.
  core.String? kind;

  FlagsListResponse();

  FlagsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Flag>((value) =>
              Flag.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
      };
}

class ImportContextBakImportOptionsEncryptionOptions {
  /// Path to the Certificate (.cer) in Cloud Storage, in the form
  /// *gs://bucketName/fileName*.
  ///
  /// The instance must have write permissions to the bucket and read access to
  /// the file.
  core.String? certPath;

  /// Password that encrypts the private key
  core.String? pvkPassword;

  /// Path to the Certificate Private Key (.pvk) in Cloud Storage, in the form
  /// *gs://bucketName/fileName*.
  ///
  /// The instance must have write permissions to the bucket and read access to
  /// the file.
  core.String? pvkPath;

  ImportContextBakImportOptionsEncryptionOptions();

  ImportContextBakImportOptionsEncryptionOptions.fromJson(core.Map _json) {
    if (_json.containsKey('certPath')) {
      certPath = _json['certPath'] as core.String;
    }
    if (_json.containsKey('pvkPassword')) {
      pvkPassword = _json['pvkPassword'] as core.String;
    }
    if (_json.containsKey('pvkPath')) {
      pvkPath = _json['pvkPath'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (certPath != null) 'certPath': certPath!,
        if (pvkPassword != null) 'pvkPassword': pvkPassword!,
        if (pvkPath != null) 'pvkPath': pvkPath!,
      };
}

/// Import parameters specific to SQL Server .BAK files
class ImportContextBakImportOptions {
  ImportContextBakImportOptionsEncryptionOptions? encryptionOptions;

  ImportContextBakImportOptions();

  ImportContextBakImportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('encryptionOptions')) {
      encryptionOptions =
          ImportContextBakImportOptionsEncryptionOptions.fromJson(
              _json['encryptionOptions']
                  as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionOptions != null)
          'encryptionOptions': encryptionOptions!.toJson(),
      };
}

/// Options for importing data as CSV.
class ImportContextCsvImportOptions {
  /// The columns to which CSV data is imported.
  ///
  /// If not specified, all columns of the database table are loaded with CSV
  /// data.
  core.List<core.String>? columns;

  /// The table to which CSV data is imported.
  core.String? table;

  ImportContextCsvImportOptions();

  ImportContextCsvImportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('columns')) {
      columns = (_json['columns'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('table')) {
      table = _json['table'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (table != null) 'table': table!,
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
  /// If *fileType* is *SQL*, this field is required only if the import file
  /// does not specify a database, and is overridden by any database
  /// specification in the import file. If *fileType* is *CSV*, one database
  /// must be specified.
  core.String? database;

  /// The file type for the specified uri.
  ///
  /// *SQL*: The file contains SQL statements. *CSV*: The file contains CSV
  /// data.
  /// Possible string values are:
  /// - "SQL_FILE_TYPE_UNSPECIFIED" : Unknown file type.
  /// - "SQL" : File containing SQL statements.
  /// - "CSV" : File in CSV format.
  /// - "BAK"
  core.String? fileType;

  /// The PostgreSQL user for this import operation.
  ///
  /// PostgreSQL instances only.
  core.String? importUser;

  /// This is always *sql#importContext*.
  core.String? kind;

  /// Path to the import file in Cloud Storage, in the form
  /// *gs://bucketName/fileName*.
  ///
  /// Compressed gzip files (.gz) are supported when *fileType* is *SQL*. The
  /// instance must have write permissions to the bucket and read access to the
  /// file.
  core.String? uri;

  ImportContext();

  ImportContext.fromJson(core.Map _json) {
    if (_json.containsKey('bakImportOptions')) {
      bakImportOptions = ImportContextBakImportOptions.fromJson(
          _json['bakImportOptions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('csvImportOptions')) {
      csvImportOptions = ImportContextCsvImportOptions.fromJson(
          _json['csvImportOptions'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('database')) {
      database = _json['database'] as core.String;
    }
    if (_json.containsKey('fileType')) {
      fileType = _json['fileType'] as core.String;
    }
    if (_json.containsKey('importUser')) {
      importUser = _json['importUser'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (bakImportOptions != null)
          'bakImportOptions': bakImportOptions!.toJson(),
        if (csvImportOptions != null)
          'csvImportOptions': csvImportOptions!.toJson(),
        if (database != null) 'database': database!,
        if (fileType != null) 'fileType': fileType!,
        if (importUser != null) 'importUser': importUser!,
        if (kind != null) 'kind': kind!,
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

  /// Maximum query length stored in bytes.
  ///
  /// Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than
  /// this field value will be truncated to this value. When unset, query length
  /// will be the default value.
  core.int? queryStringLength;

  /// Whether Query Insights will record application tags from query when
  /// enabled.
  core.bool? recordApplicationTags;

  /// Whether Query Insights will record client address when enabled.
  core.bool? recordClientAddress;

  InsightsConfig();

  InsightsConfig.fromJson(core.Map _json) {
    if (_json.containsKey('queryInsightsEnabled')) {
      queryInsightsEnabled = _json['queryInsightsEnabled'] as core.bool;
    }
    if (_json.containsKey('queryStringLength')) {
      queryStringLength = _json['queryStringLength'] as core.int;
    }
    if (_json.containsKey('recordApplicationTags')) {
      recordApplicationTags = _json['recordApplicationTags'] as core.bool;
    }
    if (_json.containsKey('recordClientAddress')) {
      recordClientAddress = _json['recordClientAddress'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryInsightsEnabled != null)
          'queryInsightsEnabled': queryInsightsEnabled!,
        if (queryStringLength != null) 'queryStringLength': queryStringLength!,
        if (recordApplicationTags != null)
          'recordApplicationTags': recordApplicationTags!,
        if (recordClientAddress != null)
          'recordClientAddress': recordClientAddress!,
      };
}

/// Database instance clone request.
class InstancesCloneRequest {
  /// Contains details about the clone operation.
  CloneContext? cloneContext;

  InstancesCloneRequest();

  InstancesCloneRequest.fromJson(core.Map _json) {
    if (_json.containsKey('cloneContext')) {
      cloneContext = CloneContext.fromJson(
          _json['cloneContext'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloneContext != null) 'cloneContext': cloneContext!.toJson(),
      };
}

/// Database demote primary instance request.
class InstancesDemoteMasterRequest {
  /// Contains details about the demoteMaster operation.
  DemoteMasterContext? demoteMasterContext;

  InstancesDemoteMasterRequest();

  InstancesDemoteMasterRequest.fromJson(core.Map _json) {
    if (_json.containsKey('demoteMasterContext')) {
      demoteMasterContext = DemoteMasterContext.fromJson(
          _json['demoteMasterContext'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (demoteMasterContext != null)
          'demoteMasterContext': demoteMasterContext!.toJson(),
      };
}

/// Database instance export request.
class InstancesExportRequest {
  /// Contains details about the export operation.
  ExportContext? exportContext;

  InstancesExportRequest();

  InstancesExportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('exportContext')) {
      exportContext = ExportContext.fromJson(
          _json['exportContext'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportContext != null) 'exportContext': exportContext!.toJson(),
      };
}

/// Instance failover request.
class InstancesFailoverRequest {
  /// Failover Context.
  FailoverContext? failoverContext;

  InstancesFailoverRequest();

  InstancesFailoverRequest.fromJson(core.Map _json) {
    if (_json.containsKey('failoverContext')) {
      failoverContext = FailoverContext.fromJson(
          _json['failoverContext'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (failoverContext != null)
          'failoverContext': failoverContext!.toJson(),
      };
}

/// Database instance import request.
class InstancesImportRequest {
  /// Contains details about the import operation.
  ImportContext? importContext;

  InstancesImportRequest();

  InstancesImportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('importContext')) {
      importContext = ImportContext.fromJson(
          _json['importContext'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (importContext != null) 'importContext': importContext!.toJson(),
      };
}

/// Database instances list response.
class InstancesListResponse {
  /// List of database instance resources.
  core.List<DatabaseInstance>? items;

  /// This is always *sql#instancesList*.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  /// List of warnings that occurred while handling the request.
  core.List<ApiWarning>? warnings;

  InstancesListResponse();

  InstancesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<DatabaseInstance>((value) => DatabaseInstance.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('warnings')) {
      warnings = (_json['warnings'] as core.List)
          .map<ApiWarning>((value) =>
              ApiWarning.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (warnings != null)
          'warnings': warnings!.map((value) => value.toJson()).toList(),
      };
}

/// Instances ListServerCas response.
class InstancesListServerCasResponse {
  core.String? activeVersion;

  /// List of server CA certificates for the instance.
  core.List<SslCert>? certs;

  /// This is always *sql#instancesListServerCas*.
  core.String? kind;

  InstancesListServerCasResponse();

  InstancesListServerCasResponse.fromJson(core.Map _json) {
    if (_json.containsKey('activeVersion')) {
      activeVersion = _json['activeVersion'] as core.String;
    }
    if (_json.containsKey('certs')) {
      certs = (_json['certs'] as core.List)
          .map<SslCert>((value) =>
              SslCert.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeVersion != null) 'activeVersion': activeVersion!,
        if (certs != null)
          'certs': certs!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
      };
}

/// Database instance restore backup request.
class InstancesRestoreBackupRequest {
  /// Parameters required to perform the restore backup operation.
  RestoreBackupContext? restoreBackupContext;

  InstancesRestoreBackupRequest();

  InstancesRestoreBackupRequest.fromJson(core.Map _json) {
    if (_json.containsKey('restoreBackupContext')) {
      restoreBackupContext = RestoreBackupContext.fromJson(
          _json['restoreBackupContext'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (restoreBackupContext != null)
          'restoreBackupContext': restoreBackupContext!.toJson(),
      };
}

/// Rotate Server CA request.
class InstancesRotateServerCaRequest {
  /// Contains details about the rotate server CA operation.
  RotateServerCaContext? rotateServerCaContext;

  InstancesRotateServerCaRequest();

  InstancesRotateServerCaRequest.fromJson(core.Map _json) {
    if (_json.containsKey('rotateServerCaContext')) {
      rotateServerCaContext = RotateServerCaContext.fromJson(
          _json['rotateServerCaContext']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (rotateServerCaContext != null)
          'rotateServerCaContext': rotateServerCaContext!.toJson(),
      };
}

/// Instance truncate log request.
class InstancesTruncateLogRequest {
  /// Contains details about the truncate log operation.
  TruncateLogContext? truncateLogContext;

  InstancesTruncateLogRequest();

  InstancesTruncateLogRequest.fromJson(core.Map _json) {
    if (_json.containsKey('truncateLogContext')) {
      truncateLogContext = TruncateLogContext.fromJson(
          _json['truncateLogContext'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (truncateLogContext != null)
          'truncateLogContext': truncateLogContext!.toJson(),
      };
}

/// IP Management configuration.
class IpConfiguration {
  /// The list of external networks that are allowed to connect to the instance
  /// using the IP.
  ///
  /// In 'CIDR' notation, also known as 'slash' notation (for example:
  /// *192.168.100.0/24*).
  core.List<AclEntry>? authorizedNetworks;

  /// Whether the instance is assigned a public IP address or not.
  core.bool? ipv4Enabled;

  /// The resource link for the VPC network from which the Cloud SQL instance is
  /// accessible for private IP.
  ///
  /// For example, * / projects/myProject/global/networks/default*. This setting
  /// can be updated, but it cannot be removed after it is set.
  core.String? privateNetwork;

  /// Whether SSL connections over IP are enforced or not.
  core.bool? requireSsl;

  IpConfiguration();

  IpConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('authorizedNetworks')) {
      authorizedNetworks = (_json['authorizedNetworks'] as core.List)
          .map<AclEntry>((value) =>
              AclEntry.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('ipv4Enabled')) {
      ipv4Enabled = _json['ipv4Enabled'] as core.bool;
    }
    if (_json.containsKey('privateNetwork')) {
      privateNetwork = _json['privateNetwork'] as core.String;
    }
    if (_json.containsKey('requireSsl')) {
      requireSsl = _json['requireSsl'] as core.bool;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedNetworks != null)
          'authorizedNetworks':
              authorizedNetworks!.map((value) => value.toJson()).toList(),
        if (ipv4Enabled != null) 'ipv4Enabled': ipv4Enabled!,
        if (privateNetwork != null) 'privateNetwork': privateNetwork!,
        if (requireSsl != null) 'requireSsl': requireSsl!,
      };
}

/// Database instance IP Mapping.
class IpMapping {
  /// The IP address assigned.
  core.String? ipAddress;

  /// The due time for this IP to be retired in RFC 3339 format, for example
  /// *2012-11-15T16:19:00.094Z*.
  ///
  /// This field is only available when the IP is scheduled to be retired.
  core.String? timeToRetire;

  /// The type of this IP address.
  ///
  /// A *PRIMARY* address is a public address that can accept incoming
  /// connections. A *PRIVATE* address is a private address that can accept
  /// incoming connections. An *OUTGOING* address is the source address of
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

  IpMapping();

  IpMapping.fromJson(core.Map _json) {
    if (_json.containsKey('ipAddress')) {
      ipAddress = _json['ipAddress'] as core.String;
    }
    if (_json.containsKey('timeToRetire')) {
      timeToRetire = _json['timeToRetire'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (timeToRetire != null) 'timeToRetire': timeToRetire!,
        if (type != null) 'type': type!,
      };
}

/// Preferred location.
///
/// This specifies where a Cloud SQL instance is located, either in a specific
/// Compute Engine zone, or co-located with an App Engine application. Note that
/// if the preferred location is not available, the instance will be located as
/// close as possible within the region. Only one location may be specified.
class LocationPreference {
  /// The App Engine application to follow, it must be in the same region as the
  /// Cloud SQL instance.
  core.String? followGaeApplication;

  /// This is always *sql#locationPreference*.
  core.String? kind;

  /// The preferred Compute Engine zone for the secondary/failover (for example:
  /// us-central1-a, us-central1-b, etc.).
  ///
  /// Reserved for future use.
  core.String? secondaryZone;

  /// The preferred Compute Engine zone (for example: us-central1-a,
  /// us-central1-b, etc.).
  core.String? zone;

  LocationPreference();

  LocationPreference.fromJson(core.Map _json) {
    if (_json.containsKey('followGaeApplication')) {
      followGaeApplication = _json['followGaeApplication'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('secondaryZone')) {
      secondaryZone = _json['secondaryZone'] as core.String;
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'] as core.String;
    }
  }

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
  /// day of week (1-7), starting on Monday.
  core.int? day;

  /// hour of day - 0 to 23.
  core.int? hour;

  /// This is always *sql#maintenanceWindow*.
  core.String? kind;

  /// Maintenance timing setting: *canary* (Earlier) or *stable* (Later).
  ///
  /// Learn more.
  /// Possible string values are:
  /// - "SQL_UPDATE_TRACK_UNSPECIFIED" : This is an unknown maintenance timing
  /// preference.
  /// - "canary" : For instance update that requires a restart, this update
  /// track indicates your instance prefer to restart for new version early in
  /// maintenance window.
  /// - "stable" : For instance update that requires a restart, this update
  /// track indicates your instance prefer to let Cloud SQL choose the timing of
  /// restart (within its Maintenance window, if applicable).
  core.String? updateTrack;

  MaintenanceWindow();

  MaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey('day')) {
      day = _json['day'] as core.int;
    }
    if (_json.containsKey('hour')) {
      hour = _json['hour'] as core.int;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('updateTrack')) {
      updateTrack = _json['updateTrack'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (hour != null) 'hour': hour!,
        if (kind != null) 'kind': kind!,
        if (updateTrack != null) 'updateTrack': updateTrack!,
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
  /// The corresponsing public key is encoded in the client's certificate.
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

  /// This is always *sql#mysqlReplicaConfiguration*.
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

  MySqlReplicaConfiguration();

  MySqlReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('caCertificate')) {
      caCertificate = _json['caCertificate'] as core.String;
    }
    if (_json.containsKey('clientCertificate')) {
      clientCertificate = _json['clientCertificate'] as core.String;
    }
    if (_json.containsKey('clientKey')) {
      clientKey = _json['clientKey'] as core.String;
    }
    if (_json.containsKey('connectRetryInterval')) {
      connectRetryInterval = _json['connectRetryInterval'] as core.int;
    }
    if (_json.containsKey('dumpFilePath')) {
      dumpFilePath = _json['dumpFilePath'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('masterHeartbeatPeriod')) {
      masterHeartbeatPeriod = _json['masterHeartbeatPeriod'] as core.String;
    }
    if (_json.containsKey('password')) {
      password = _json['password'] as core.String;
    }
    if (_json.containsKey('sslCipher')) {
      sslCipher = _json['sslCipher'] as core.String;
    }
    if (_json.containsKey('username')) {
      username = _json['username'] as core.String;
    }
    if (_json.containsKey('verifyServerCertificate')) {
      verifyServerCertificate = _json['verifyServerCertificate'] as core.bool;
    }
  }

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

/// On-premises instance configuration.
class OnPremisesConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String? caCertificate;

  /// PEM representation of the replica's x509 certificate.
  core.String? clientCertificate;

  /// PEM representation of the replica's private key.
  ///
  /// The corresponsing public key is encoded in the client's certificate.
  core.String? clientKey;

  /// The dump file to create the Cloud SQL replica.
  core.String? dumpFilePath;

  /// The host and port of the on-premises instance in host:port format
  core.String? hostPort;

  /// This is always *sql#onPremisesConfiguration*.
  core.String? kind;

  /// The password for connecting to on-premises instance.
  core.String? password;

  /// The username for connecting to on-premises instance.
  core.String? username;

  OnPremisesConfiguration();

  OnPremisesConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('caCertificate')) {
      caCertificate = _json['caCertificate'] as core.String;
    }
    if (_json.containsKey('clientCertificate')) {
      clientCertificate = _json['clientCertificate'] as core.String;
    }
    if (_json.containsKey('clientKey')) {
      clientKey = _json['clientKey'] as core.String;
    }
    if (_json.containsKey('dumpFilePath')) {
      dumpFilePath = _json['dumpFilePath'] as core.String;
    }
    if (_json.containsKey('hostPort')) {
      hostPort = _json['hostPort'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('password')) {
      password = _json['password'] as core.String;
    }
    if (_json.containsKey('username')) {
      username = _json['username'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (caCertificate != null) 'caCertificate': caCertificate!,
        if (clientCertificate != null) 'clientCertificate': clientCertificate!,
        if (clientKey != null) 'clientKey': clientKey!,
        if (dumpFilePath != null) 'dumpFilePath': dumpFilePath!,
        if (hostPort != null) 'hostPort': hostPort!,
        if (kind != null) 'kind': kind!,
        if (password != null) 'password': password!,
        if (username != null) 'username': username!,
      };
}

/// An Operation resource.
///
/// For successful operations that return an Operation resource, only the fields
/// relevant to the operation are populated in the resource. Next field: 18
class Operation {
  /// The context for backup operation, if applicable.
  BackupContext? backupContext;

  /// The time this operation finished in UTC timezone in RFC 3339 format, for
  /// example *2012-11-15T16:19:00.094Z*.
  core.String? endTime;

  /// If errors occurred during processing of this operation, this field will be
  /// populated.
  OperationErrors? error;

  /// The context for export operation, if applicable.
  ExportContext? exportContext;

  /// The context for import operation, if applicable.
  ImportContext? importContext;

  /// The time this operation was enqueued in UTC timezone in RFC 3339 format,
  /// for example *2012-11-15T16:19:00.094Z*.
  core.String? insertTime;

  /// This is always *sql#operation*.
  core.String? kind;

  /// An identifier that uniquely identifies the operation.
  ///
  /// You can use this identifier to retrieve the Operations resource that has
  /// information about the operation.
  core.String? name;

  /// The type of the operation.
  ///
  /// Valid values are: *CREATE* *DELETE* *UPDATE* *RESTART* *IMPORT* *EXPORT*
  /// *BACKUP_VOLUME* *RESTORE_VOLUME* *CREATE_USER* *DELETE_USER*
  /// *CREATE_DATABASE* *DELETE_DATABASE*
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
  core.String? operationType;

  /// The URI of this resource.
  core.String? selfLink;

  /// The time this operation actually started in UTC timezone in RFC 3339
  /// format, for example *2012-11-15T16:19:00.094Z*.
  core.String? startTime;

  /// The status of an operation.
  ///
  /// Valid values are: *PENDING* *RUNNING* *DONE*
  /// *SQL_OPERATION_STATUS_UNSPECIFIED*
  /// Possible string values are:
  /// - "SQL_OPERATION_STATUS_UNSPECIFIED" : The state of the operation is
  /// unknown.
  /// - "PENDING" : The operation has been queued, but has not started yet.
  /// - "RUNNING" : The operation is running.
  /// - "DONE" : The operation completed.
  core.String? status;

  /// Name of the database instance related to this operation.
  core.String? targetId;
  core.String? targetLink;

  /// The project ID of the target instance related to this operation.
  core.String? targetProject;

  /// The email address of the user who initiated this operation.
  core.String? user;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('backupContext')) {
      backupContext = BackupContext.fromJson(
          _json['backupContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('error')) {
      error = OperationErrors.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('exportContext')) {
      exportContext = ExportContext.fromJson(
          _json['exportContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('importContext')) {
      importContext = ImportContext.fromJson(
          _json['importContext'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('insertTime')) {
      insertTime = _json['insertTime'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('operationType')) {
      operationType = _json['operationType'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = _json['status'] as core.String;
    }
    if (_json.containsKey('targetId')) {
      targetId = _json['targetId'] as core.String;
    }
    if (_json.containsKey('targetLink')) {
      targetLink = _json['targetLink'] as core.String;
    }
    if (_json.containsKey('targetProject')) {
      targetProject = _json['targetProject'] as core.String;
    }
    if (_json.containsKey('user')) {
      user = _json['user'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupContext != null) 'backupContext': backupContext!.toJson(),
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!.toJson(),
        if (exportContext != null) 'exportContext': exportContext!.toJson(),
        if (importContext != null) 'importContext': importContext!.toJson(),
        if (insertTime != null) 'insertTime': insertTime!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (operationType != null) 'operationType': operationType!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (startTime != null) 'startTime': startTime!,
        if (status != null) 'status': status!,
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

  /// This is always *sql#operationError*.
  core.String? kind;

  /// Additional information about the error encountered.
  core.String? message;

  OperationError();

  OperationError.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

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

  /// This is always *sql#operationErrors*.
  core.String? kind;

  OperationErrors();

  OperationErrors.fromJson(core.Map _json) {
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<OperationError>((value) => OperationError.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null)
          'errors': errors!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
      };
}

/// Database instance list operations response.
class OperationsListResponse {
  /// List of operation resources.
  core.List<Operation>? items;

  /// This is always *sql#operationsList*.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  OperationsListResponse();

  OperationsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfiguration {
  /// Specifies if the replica is the failover target.
  ///
  /// If the field is set to *true* the replica will be designated as a failover
  /// replica. In case the primary instance fails, the replica instance will be
  /// promoted as the new primary instance. Only one replica can be specified as
  /// failover target, and the replica has to be in different zone with the
  /// primary instance.
  core.bool? failoverTarget;

  /// This is always *sql#replicaConfiguration*.
  core.String? kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises
  /// primary instance.
  ///
  /// Replication configuration information such as the username, password,
  /// certificates, and keys are not stored in the instance metadata. The
  /// configuration information is used only to set up the replication
  /// connection and is stored by MySQL in a file named *master.info* in the
  /// data directory.
  MySqlReplicaConfiguration? mysqlReplicaConfiguration;

  ReplicaConfiguration();

  ReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('failoverTarget')) {
      failoverTarget = _json['failoverTarget'] as core.bool;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('mysqlReplicaConfiguration')) {
      mysqlReplicaConfiguration = MySqlReplicaConfiguration.fromJson(
          _json['mysqlReplicaConfiguration']
              as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (failoverTarget != null) 'failoverTarget': failoverTarget!,
        if (kind != null) 'kind': kind!,
        if (mysqlReplicaConfiguration != null)
          'mysqlReplicaConfiguration': mysqlReplicaConfiguration!.toJson(),
      };
}

class Reschedule {
  /// The type of the reschedule.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RESCHEDULE_TYPE_UNSPECIFIED"
  /// - "IMMEDIATE" : If the user wants to schedule the maintenance to happen
  /// now.
  /// - "NEXT_AVAILABLE_WINDOW" : If the user wants to use the existing
  /// maintenance policy to find the next available window.
  /// - "SPECIFIC_TIME" : If the user wants to reschedule the maintenance to a
  /// specific time.
  core.String? rescheduleType;

  /// Timestamp when the maintenance shall be rescheduled to if
  /// reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example
  /// *2012-11-15T16:19:00.094Z*.
  ///
  /// Optional.
  core.String? scheduleTime;

  Reschedule();

  Reschedule.fromJson(core.Map _json) {
    if (_json.containsKey('rescheduleType')) {
      rescheduleType = _json['rescheduleType'] as core.String;
    }
    if (_json.containsKey('scheduleTime')) {
      scheduleTime = _json['scheduleTime'] as core.String;
    }
  }

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

  /// This is always *sql#restoreBackupContext*.
  core.String? kind;

  /// The full project ID of the source instance.
  core.String? project;

  RestoreBackupContext();

  RestoreBackupContext.fromJson(core.Map _json) {
    if (_json.containsKey('backupRunId')) {
      backupRunId = _json['backupRunId'] as core.String;
    }
    if (_json.containsKey('instanceId')) {
      instanceId = _json['instanceId'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('project')) {
      project = _json['project'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupRunId != null) 'backupRunId': backupRunId!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (kind != null) 'kind': kind!,
        if (project != null) 'project': project!,
      };
}

/// Instance rotate server CA context.
class RotateServerCaContext {
  /// This is always *sql#rotateServerCaContext*.
  core.String? kind;

  /// The fingerprint of the next version to be rotated to.
  ///
  /// If left unspecified, will be rotated to the most recently added server CA
  /// version.
  core.String? nextVersion;

  RotateServerCaContext();

  RotateServerCaContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextVersion')) {
      nextVersion = _json['nextVersion'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (nextVersion != null) 'nextVersion': nextVersion!,
      };
}

/// Database instance settings.
class Settings {
  /// The activation policy specifies when the instance is activated; it is
  /// applicable only when the instance state is RUNNABLE.
  ///
  /// Valid values: *ALWAYS*: The instance is on, and remains so even in the
  /// absence of connection requests. *NEVER*: The instance is off; it is not
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

  /// The App Engine app IDs that can access this instance.
  ///
  /// (Deprecated) Applied to First Generation instances only.
  core.List<core.String>? authorizedGaeApplications;

  /// Availability type.
  ///
  /// Potential values: *ZONAL*: The instance serves data from only one zone.
  /// Outages in that zone affect data accessibility. *REGIONAL*: The instance
  /// can serve data from more than one zone in a region (it is highly
  /// available). For more information, see Overview of the High Availability
  /// Configuration.
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

  /// Configuration specific to read replica instances.
  ///
  /// Indicates whether database flags for crash-safe replication are enabled.
  /// This property was only applicable to First Generation instances.
  core.bool? crashSafeReplicationEnabled;

  /// The size of data disk, in GB.
  ///
  /// The data disk size minimum is 10GB.
  core.String? dataDiskSizeGb;

  /// The type of data disk: PD_SSD (default) or PD_HDD.
  ///
  /// Not used for First Generation instances.
  /// Possible string values are:
  /// - "SQL_DATA_DISK_TYPE_UNSPECIFIED" : This is an unknown data disk type.
  /// - "PD_SSD" : An SSD data disk.
  /// - "PD_HDD" : An HDD data disk.
  /// - "OBSOLETE_LOCAL_SSD" : This field is deprecated and will be removed from
  /// a future version of the API.
  core.String? dataDiskType;

  /// The database flags passed to the instance at startup.
  core.List<DatabaseFlags>? databaseFlags;

  /// Configuration specific to read replica instances.
  ///
  /// Indicates whether replication is enabled or not.
  core.bool? databaseReplicationEnabled;

  /// Deny maintenance periods
  core.List<DenyMaintenancePeriod>? denyMaintenancePeriods;

  /// Insights configuration, for now relevant only for Postgres.
  InsightsConfig? insightsConfig;

  /// The settings for IP Management.
  ///
  /// This allows to enable or disable the instance IP and manage which external
  /// networks can connect to the instance. The IPv4 address cannot be disabled
  /// for Second Generation instances.
  IpConfiguration? ipConfiguration;

  /// This is always *sql#settings*.
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

  /// The pricing plan for this instance.
  ///
  /// This can be either *PER_USE* or *PACKAGE*. Only *PER_USE* is supported for
  /// Second Generation instances.
  /// Possible string values are:
  /// - "SQL_PRICING_PLAN_UNSPECIFIED" : This is an unknown pricing plan for
  /// this instance.
  /// - "PACKAGE" : The instance is billed at a monthly flat rate.
  /// - "PER_USE" : The instance is billed per usage.
  core.String? pricingPlan;

  /// The type of replication this instance uses.
  ///
  /// This can be either *ASYNCHRONOUS* or *SYNCHRONOUS*. (Deprecated_ This
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
  core.String? replicationType;

  /// The version of instance settings.
  ///
  /// This is a required field for update method to make sure concurrent updates
  /// are handled properly. During update, use the most recent settingsVersion
  /// value for this instance and do not try to update this value.
  core.String? settingsVersion;

  /// Configuration to increase storage size automatically.
  ///
  /// The default value is true.
  core.bool? storageAutoResize;

  /// The maximum size to which storage capacity can be automatically increased.
  ///
  /// The default value is 0, which specifies that there is no limit.
  core.String? storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example
  /// *db-n1-standard-1* (MySQL instances) or *db-custom-1-3840* (PostgreSQL
  /// instances).
  core.String? tier;

  /// User-provided labels, represented as a dictionary where each label is a
  /// single key value pair.
  core.Map<core.String, core.String>? userLabels;

  Settings();

  Settings.fromJson(core.Map _json) {
    if (_json.containsKey('activationPolicy')) {
      activationPolicy = _json['activationPolicy'] as core.String;
    }
    if (_json.containsKey('activeDirectoryConfig')) {
      activeDirectoryConfig = SqlActiveDirectoryConfig.fromJson(
          _json['activeDirectoryConfig']
              as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('authorizedGaeApplications')) {
      authorizedGaeApplications =
          (_json['authorizedGaeApplications'] as core.List)
              .map<core.String>((value) => value as core.String)
              .toList();
    }
    if (_json.containsKey('availabilityType')) {
      availabilityType = _json['availabilityType'] as core.String;
    }
    if (_json.containsKey('backupConfiguration')) {
      backupConfiguration = BackupConfiguration.fromJson(
          _json['backupConfiguration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('collation')) {
      collation = _json['collation'] as core.String;
    }
    if (_json.containsKey('crashSafeReplicationEnabled')) {
      crashSafeReplicationEnabled =
          _json['crashSafeReplicationEnabled'] as core.bool;
    }
    if (_json.containsKey('dataDiskSizeGb')) {
      dataDiskSizeGb = _json['dataDiskSizeGb'] as core.String;
    }
    if (_json.containsKey('dataDiskType')) {
      dataDiskType = _json['dataDiskType'] as core.String;
    }
    if (_json.containsKey('databaseFlags')) {
      databaseFlags = (_json['databaseFlags'] as core.List)
          .map<DatabaseFlags>((value) => DatabaseFlags.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('databaseReplicationEnabled')) {
      databaseReplicationEnabled =
          _json['databaseReplicationEnabled'] as core.bool;
    }
    if (_json.containsKey('denyMaintenancePeriods')) {
      denyMaintenancePeriods = (_json['denyMaintenancePeriods'] as core.List)
          .map<DenyMaintenancePeriod>((value) => DenyMaintenancePeriod.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('insightsConfig')) {
      insightsConfig = InsightsConfig.fromJson(
          _json['insightsConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('ipConfiguration')) {
      ipConfiguration = IpConfiguration.fromJson(
          _json['ipConfiguration'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('locationPreference')) {
      locationPreference = LocationPreference.fromJson(
          _json['locationPreference'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('maintenanceWindow')) {
      maintenanceWindow = MaintenanceWindow.fromJson(
          _json['maintenanceWindow'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pricingPlan')) {
      pricingPlan = _json['pricingPlan'] as core.String;
    }
    if (_json.containsKey('replicationType')) {
      replicationType = _json['replicationType'] as core.String;
    }
    if (_json.containsKey('settingsVersion')) {
      settingsVersion = _json['settingsVersion'] as core.String;
    }
    if (_json.containsKey('storageAutoResize')) {
      storageAutoResize = _json['storageAutoResize'] as core.bool;
    }
    if (_json.containsKey('storageAutoResizeLimit')) {
      storageAutoResizeLimit = _json['storageAutoResizeLimit'] as core.String;
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'] as core.String;
    }
    if (_json.containsKey('userLabels')) {
      userLabels =
          (_json['userLabels'] as core.Map<core.String, core.dynamic>).map(
        (key, item) => core.MapEntry(
          key,
          item as core.String,
        ),
      );
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationPolicy != null) 'activationPolicy': activationPolicy!,
        if (activeDirectoryConfig != null)
          'activeDirectoryConfig': activeDirectoryConfig!.toJson(),
        if (authorizedGaeApplications != null)
          'authorizedGaeApplications': authorizedGaeApplications!,
        if (availabilityType != null) 'availabilityType': availabilityType!,
        if (backupConfiguration != null)
          'backupConfiguration': backupConfiguration!.toJson(),
        if (collation != null) 'collation': collation!,
        if (crashSafeReplicationEnabled != null)
          'crashSafeReplicationEnabled': crashSafeReplicationEnabled!,
        if (dataDiskSizeGb != null) 'dataDiskSizeGb': dataDiskSizeGb!,
        if (dataDiskType != null) 'dataDiskType': dataDiskType!,
        if (databaseFlags != null)
          'databaseFlags':
              databaseFlags!.map((value) => value.toJson()).toList(),
        if (databaseReplicationEnabled != null)
          'databaseReplicationEnabled': databaseReplicationEnabled!,
        if (denyMaintenancePeriods != null)
          'denyMaintenancePeriods':
              denyMaintenancePeriods!.map((value) => value.toJson()).toList(),
        if (insightsConfig != null) 'insightsConfig': insightsConfig!.toJson(),
        if (ipConfiguration != null)
          'ipConfiguration': ipConfiguration!.toJson(),
        if (kind != null) 'kind': kind!,
        if (locationPreference != null)
          'locationPreference': locationPreference!.toJson(),
        if (maintenanceWindow != null)
          'maintenanceWindow': maintenanceWindow!.toJson(),
        if (pricingPlan != null) 'pricingPlan': pricingPlan!,
        if (replicationType != null) 'replicationType': replicationType!,
        if (settingsVersion != null) 'settingsVersion': settingsVersion!,
        if (storageAutoResize != null) 'storageAutoResize': storageAutoResize!,
        if (storageAutoResizeLimit != null)
          'storageAutoResizeLimit': storageAutoResizeLimit!,
        if (tier != null) 'tier': tier!,
        if (userLabels != null) 'userLabels': userLabels!,
      };
}

/// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
class SqlActiveDirectoryConfig {
  /// The name of the domain (e.g., mydomain.com).
  core.String? domain;

  /// This is always sql#activeDirectoryConfig.
  core.String? kind;

  SqlActiveDirectoryConfig();

  SqlActiveDirectoryConfig.fromJson(core.Map _json) {
    if (_json.containsKey('domain')) {
      domain = _json['domain'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (kind != null) 'kind': kind!,
      };
}

/// External primary instance migration setting error.
class SqlExternalSyncSettingError {
  /// Additional information about the error encountered.
  core.String? detail;

  /// This is always *sql#migrationSettingError*.
  core.String? kind;

  /// Identifies the specific error that occurred.
  /// Possible string values are:
  /// - "SQL_EXTERNAL_SYNC_SETTING_ERROR_TYPE_UNSPECIFIED"
  /// - "CONNECTION_FAILURE"
  /// - "BINLOG_NOT_ENABLED"
  /// - "INCOMPATIBLE_DATABASE_VERSION"
  /// - "REPLICA_ALREADY_SETUP"
  /// - "INSUFFICIENT_PRIVILEGE"
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
  /// to missing primary key or replica identity, applicable for postgres.
  /// - "UNSUPPORTED_DEFINER" : The customer has a definer that will break EM
  /// setup.
  core.String? type;

  SqlExternalSyncSettingError();

  SqlExternalSyncSettingError.fromJson(core.Map _json) {
    if (_json.containsKey('detail')) {
      detail = _json['detail'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (detail != null) 'detail': detail!,
        if (kind != null) 'kind': kind!,
        if (type != null) 'type': type!,
      };
}

/// Reschedule options for maintenance windows.
class SqlInstancesRescheduleMaintenanceRequestBody {
  /// The type of the reschedule the user wants.
  ///
  /// Required.
  Reschedule? reschedule;

  SqlInstancesRescheduleMaintenanceRequestBody();

  SqlInstancesRescheduleMaintenanceRequestBody.fromJson(core.Map _json) {
    if (_json.containsKey('reschedule')) {
      reschedule = Reschedule.fromJson(
          _json['reschedule'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (reschedule != null) 'reschedule': reschedule!.toJson(),
      };
}

/// Instance verify external sync settings response.
class SqlInstancesVerifyExternalSyncSettingsResponse {
  /// List of migration violations.
  core.List<SqlExternalSyncSettingError>? errors;

  /// This is always *sql#migrationSettingErrorList*.
  core.String? kind;

  SqlInstancesVerifyExternalSyncSettingsResponse();

  SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<SqlExternalSyncSettingError>((value) =>
              SqlExternalSyncSettingError.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (errors != null)
          'errors': errors!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
      };
}

/// Any scheduled maintenancce for this instance.
class SqlScheduledMaintenance {
  core.bool? canDefer;

  /// If the scheduled maintenance can be rescheduled.
  core.bool? canReschedule;

  /// The start time of any upcoming scheduled maintenance for this instance.
  core.String? startTime;

  SqlScheduledMaintenance();

  SqlScheduledMaintenance.fromJson(core.Map _json) {
    if (_json.containsKey('canDefer')) {
      canDefer = _json['canDefer'] as core.bool;
    }
    if (_json.containsKey('canReschedule')) {
      canReschedule = _json['canReschedule'] as core.bool;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (canDefer != null) 'canDefer': canDefer!,
        if (canReschedule != null) 'canReschedule': canReschedule!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetails {
  /// The version of SQL Server with which the database is to be made compatible
  core.int? compatibilityLevel;

  /// The recovery model of a SQL Server database
  core.String? recoveryModel;

  SqlServerDatabaseDetails();

  SqlServerDatabaseDetails.fromJson(core.Map _json) {
    if (_json.containsKey('compatibilityLevel')) {
      compatibilityLevel = _json['compatibilityLevel'] as core.int;
    }
    if (_json.containsKey('recoveryModel')) {
      recoveryModel = _json['recoveryModel'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (compatibilityLevel != null)
          'compatibilityLevel': compatibilityLevel!,
        if (recoveryModel != null) 'recoveryModel': recoveryModel!,
      };
}

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetails {
  /// If the user has been disabled
  core.bool? disabled;

  /// The server roles for this user
  core.List<core.String>? serverRoles;

  SqlServerUserDetails();

  SqlServerUserDetails.fromJson(core.Map _json) {
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'] as core.bool;
    }
    if (_json.containsKey('serverRoles')) {
      serverRoles = (_json['serverRoles'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (disabled != null) 'disabled': disabled!,
        if (serverRoles != null) 'serverRoles': serverRoles!,
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

  /// The time when the certificate was created in RFC 3339 format, for example
  /// *2012-11-15T16:19:00.094Z*
  core.String? createTime;

  /// The time when the certificate expires in RFC 3339 format, for example
  /// *2012-11-15T16:19:00.094Z*.
  core.String? expirationTime;

  /// Name of the database instance.
  core.String? instance;

  /// This is always *sql#sslCert*.
  core.String? kind;

  /// The URI of this resource.
  core.String? selfLink;

  /// Sha1 Fingerprint.
  core.String? sha1Fingerprint;

  SslCert();

  SslCert.fromJson(core.Map _json) {
    if (_json.containsKey('cert')) {
      cert = _json['cert'] as core.String;
    }
    if (_json.containsKey('certSerialNumber')) {
      certSerialNumber = _json['certSerialNumber'] as core.String;
    }
    if (_json.containsKey('commonName')) {
      commonName = _json['commonName'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('expirationTime')) {
      expirationTime = _json['expirationTime'] as core.String;
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'] as core.String;
    }
    if (_json.containsKey('sha1Fingerprint')) {
      sha1Fingerprint = _json['sha1Fingerprint'] as core.String;
    }
  }

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

  SslCertDetail();

  SslCertDetail.fromJson(core.Map _json) {
    if (_json.containsKey('certInfo')) {
      certInfo = SslCert.fromJson(
          _json['certInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('certPrivateKey')) {
      certPrivateKey = _json['certPrivateKey'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (certInfo != null) 'certInfo': certInfo!.toJson(),
        if (certPrivateKey != null) 'certPrivateKey': certPrivateKey!,
      };
}

/// SslCerts create ephemeral certificate request.
class SslCertsCreateEphemeralRequest {
  /// Access token to include in the signed certificate.
  core.String? accessToken;

  /// PEM encoded public key to include in the signed certificate.
  core.String? publicKey;

  SslCertsCreateEphemeralRequest();

  SslCertsCreateEphemeralRequest.fromJson(core.Map _json) {
    if (_json.containsKey('access_token')) {
      accessToken = _json['access_token'] as core.String;
    }
    if (_json.containsKey('public_key')) {
      publicKey = _json['public_key'] as core.String;
    }
  }

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

  SslCertsInsertRequest();

  SslCertsInsertRequest.fromJson(core.Map _json) {
    if (_json.containsKey('commonName')) {
      commonName = _json['commonName'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonName != null) 'commonName': commonName!,
      };
}

/// SslCert insert response.
class SslCertsInsertResponse {
  /// The new client certificate and private key.
  SslCertDetail? clientCert;

  /// This is always *sql#sslCertsInsert*.
  core.String? kind;

  /// The operation to track the ssl certs insert request.
  Operation? operation;

  /// The server Certificate Authority's certificate.
  ///
  /// If this is missing you can force a new one to be generated by calling
  /// resetSslConfig method on instances resource.
  SslCert? serverCaCert;

  SslCertsInsertResponse();

  SslCertsInsertResponse.fromJson(core.Map _json) {
    if (_json.containsKey('clientCert')) {
      clientCert = SslCertDetail.fromJson(
          _json['clientCert'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('operation')) {
      operation = Operation.fromJson(
          _json['operation'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('serverCaCert')) {
      serverCaCert = SslCert.fromJson(
          _json['serverCaCert'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientCert != null) 'clientCert': clientCert!.toJson(),
        if (kind != null) 'kind': kind!,
        if (operation != null) 'operation': operation!.toJson(),
        if (serverCaCert != null) 'serverCaCert': serverCaCert!.toJson(),
      };
}

/// SslCerts list response.
class SslCertsListResponse {
  /// List of client certificates for the instance.
  core.List<SslCert>? items;

  /// This is always *sql#sslCertsList*.
  core.String? kind;

  SslCertsListResponse();

  SslCertsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<SslCert>((value) =>
              SslCert.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
      };
}

/// A Google Cloud SQL service tier resource.
class Tier {
  /// The maximum disk size of this tier in bytes.
  core.String? DiskQuota;

  /// The maximum RAM usage of this tier in bytes.
  core.String? RAM;

  /// This is always *sql#tier*.
  core.String? kind;

  /// The applicable regions for this tier.
  core.List<core.String>? region;

  /// An identifier for the machine type, for example, db-n1-standard-1.
  ///
  /// For related information, see Pricing.
  core.String? tier;

  Tier();

  Tier.fromJson(core.Map _json) {
    if (_json.containsKey('DiskQuota')) {
      DiskQuota = _json['DiskQuota'] as core.String;
    }
    if (_json.containsKey('RAM')) {
      RAM = _json['RAM'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('region')) {
      region = (_json['region'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'] as core.String;
    }
  }

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

  /// This is always *sql#tiersList*.
  core.String? kind;

  TiersListResponse();

  TiersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Tier>((value) =>
              Tier.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
      };
}

/// Database Instance truncate log context.
class TruncateLogContext {
  /// This is always *sql#truncateLogContext*.
  core.String? kind;

  /// The type of log to truncate.
  ///
  /// Valid values are *MYSQL_GENERAL_TABLE* and *MYSQL_SLOW_TABLE*.
  core.String? logType;

  TruncateLogContext();

  TruncateLogContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (logType != null) 'logType': logType!,
      };
}

/// A Cloud SQL user resource.
class User {
  /// This field is deprecated and will be removed from a future version of the
  /// API.
  core.String? etag;

  /// The host name from which the user can connect.
  ///
  /// For *insert* operations, host defaults to an empty string. For *update*
  /// operations, host is specified as part of the request URL. The host name
  /// cannot be updated after insertion.
  core.String? host;

  /// The name of the Cloud SQL instance.
  ///
  /// This does not include the project ID. Can be omitted for *update* since it
  /// is already specified on the URL.
  core.String? instance;

  /// This is always *sql#user*.
  core.String? kind;

  /// The name of the user in the Cloud SQL instance.
  ///
  /// Can be omitted for *update* since it is already specified in the URL.
  core.String? name;

  /// The password for the user.
  core.String? password;

  /// The project ID of the project containing the Cloud SQL database.
  ///
  /// The Google apps domain is prefixed if applicable. Can be omitted for
  /// *update* since it is already specified on the URL.
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
  core.String? type;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'] as core.String;
    }
    if (_json.containsKey('host')) {
      host = _json['host'] as core.String;
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'] as core.String;
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('password')) {
      password = _json['password'] as core.String;
    }
    if (_json.containsKey('project')) {
      project = _json['project'] as core.String;
    }
    if (_json.containsKey('sqlserverUserDetails')) {
      sqlserverUserDetails = SqlServerUserDetails.fromJson(
          _json['sqlserverUserDetails'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (host != null) 'host': host!,
        if (instance != null) 'instance': instance!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (password != null) 'password': password!,
        if (project != null) 'project': project!,
        if (sqlserverUserDetails != null)
          'sqlserverUserDetails': sqlserverUserDetails!.toJson(),
        if (type != null) 'type': type!,
      };
}

/// User list response.
class UsersListResponse {
  /// List of user resources in the instance.
  core.List<User>? items;

  /// This is always *sql#usersList*.
  core.String? kind;

  /// An identifier that uniquely identifies the operation.
  ///
  /// You can use this identifier to retrieve the Operations resource that has
  /// information about the operation.
  core.String? nextPageToken;

  UsersListResponse();

  UsersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<User>((value) =>
              User.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'] as core.String;
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null)
          'items': items!.map((value) => value.toJson()).toList(),
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
