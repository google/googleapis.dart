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
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google SQL Service instances
  static const sqlserviceAdminScope =
      'https://www.googleapis.com/auth/sqlservice.admin';

  final commons.ApiRequester _requester;

  BackupRunsResource get backupRuns => BackupRunsResource(_requester);
  ConnectResource get connect => ConnectResource(_requester);
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
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        ':generateEphemeralCert';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GenerateEphemeralCertResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (readTime != null) 'readTime': [readTime],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance') +
        '/connectSettings';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ConnectSettings.fromJson(
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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

  /// Lists all available database flags for Cloud SQL instances.
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
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
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
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
      body: _body,
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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
    final _body = convert.json.encode(request);
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

  AclEntry({
    this.expirationTime,
    this.kind,
    this.name,
    this.value,
  });

  AclEntry.fromJson(core.Map _json)
      : this(
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

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

  ApiWarning({
    this.code,
    this.message,
    this.region,
  });

  ApiWarning.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
        );

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

  /// This is always `sql#backupConfiguration`.
  core.String? kind;

  /// Location of the backup
  core.String? location;

  /// (Postgres only) Whether point in time recovery is enabled.
  core.bool? pointInTimeRecoveryEnabled;

  /// Reserved for future use.
  core.bool? replicationLogArchivingEnabled;

  /// Start time for the daily backup configuration in UTC timezone in the 24
  /// hour format - `HH:MM`.
  core.String? startTime;

  /// The number of days of transaction logs we retain for point in time
  /// restore, from 1-7.
  core.int? transactionLogRetentionDays;

  BackupConfiguration({
    this.backupRetentionSettings,
    this.binaryLogEnabled,
    this.enabled,
    this.kind,
    this.location,
    this.pointInTimeRecoveryEnabled,
    this.replicationLogArchivingEnabled,
    this.startTime,
    this.transactionLogRetentionDays,
  });

  BackupConfiguration.fromJson(core.Map _json)
      : this(
          backupRetentionSettings: _json.containsKey('backupRetentionSettings')
              ? BackupRetentionSettings.fromJson(
                  _json['backupRetentionSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          binaryLogEnabled: _json.containsKey('binaryLogEnabled')
              ? _json['binaryLogEnabled'] as core.bool
              : null,
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          pointInTimeRecoveryEnabled:
              _json.containsKey('pointInTimeRecoveryEnabled')
                  ? _json['pointInTimeRecoveryEnabled'] as core.bool
                  : null,
          replicationLogArchivingEnabled:
              _json.containsKey('replicationLogArchivingEnabled')
                  ? _json['replicationLogArchivingEnabled'] as core.bool
                  : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          transactionLogRetentionDays:
              _json.containsKey('transactionLogRetentionDays')
                  ? _json['transactionLogRetentionDays'] as core.int
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupRetentionSettings != null)
          'backupRetentionSettings': backupRetentionSettings!,
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

  /// This is always `sql#backupContext`.
  core.String? kind;

  BackupContext({
    this.backupId,
    this.kind,
  });

  BackupContext.fromJson(core.Map _json)
      : this(
          backupId: _json.containsKey('backupId')
              ? _json['backupId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

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

  BackupRetentionSettings({
    this.retainedBackups,
    this.retentionUnit,
  });

  BackupRetentionSettings.fromJson(core.Map _json)
      : this(
          retainedBackups: _json.containsKey('retainedBackups')
              ? _json['retainedBackups'] as core.int
              : null,
          retentionUnit: _json.containsKey('retentionUnit')
              ? _json['retentionUnit'] as core.String
              : null,
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
  /// - "SNAPSHOT" : The snapshot based backups
  /// - "PHYSICAL" : Physical backups
  core.String? backupKind;

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
  /// attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for
  /// example `2012-11-15T16:19:00.094Z`.
  core.String? windowStartTime;

  BackupRun({
    this.backupKind,
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
    this.selfLink,
    this.startTime,
    this.status,
    this.type,
    this.windowStartTime,
  });

  BackupRun.fromJson(core.Map _json)
      : this(
          backupKind: _json.containsKey('backupKind')
              ? _json['backupKind'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          diskEncryptionConfiguration:
              _json.containsKey('diskEncryptionConfiguration')
                  ? DiskEncryptionConfiguration.fromJson(
                      _json['diskEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          diskEncryptionStatus: _json.containsKey('diskEncryptionStatus')
              ? DiskEncryptionStatus.fromJson(_json['diskEncryptionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          enqueuedTime: _json.containsKey('enqueuedTime')
              ? _json['enqueuedTime'] as core.String
              : null,
          error: _json.containsKey('error')
              ? OperationError.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          instance: _json.containsKey('instance')
              ? _json['instance'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          windowStartTime: _json.containsKey('windowStartTime')
              ? _json['windowStartTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupKind != null) 'backupKind': backupKind!,
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

  /// This is always `sql#backupRunsList`.
  core.String? kind;

  /// The continuation token, used to page through large result sets.
  ///
  /// Provide this value in a subsequent request to return the next page of
  /// results.
  core.String? nextPageToken;

  BackupRunsListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  BackupRunsListResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => BackupRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
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

  BinLogCoordinates({
    this.binLogFileName,
    this.binLogPosition,
    this.kind,
  });

  BinLogCoordinates.fromJson(core.Map _json)
      : this(
          binLogFileName: _json.containsKey('binLogFileName')
              ? _json['binLogFileName'] as core.String
              : null,
          binLogPosition: _json.containsKey('binLogPosition')
              ? _json['binLogPosition'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (binLogFileName != null) 'binLogFileName': binLogFileName!,
        if (binLogPosition != null) 'binLogPosition': binLogPosition!,
        if (kind != null) 'kind': kind!,
      };
}

/// Database instance clone context.
class CloneContext {
  /// The name of the allocated ip range for the private ip CloudSQL instance.
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

  /// Name of the Cloud SQL instance to be created as a clone.
  core.String? destinationInstanceName;

  /// This is always `sql#cloneContext`.
  core.String? kind;

  /// Reserved for future use.
  core.String? pitrTimestampMs;

  /// Timestamp, if specified, identifies the time to which the source instance
  /// is cloned.
  core.String? pointInTime;

  CloneContext({
    this.allocatedIpRange,
    this.binLogCoordinates,
    this.destinationInstanceName,
    this.kind,
    this.pitrTimestampMs,
    this.pointInTime,
  });

  CloneContext.fromJson(core.Map _json)
      : this(
          allocatedIpRange: _json.containsKey('allocatedIpRange')
              ? _json['allocatedIpRange'] as core.String
              : null,
          binLogCoordinates: _json.containsKey('binLogCoordinates')
              ? BinLogCoordinates.fromJson(_json['binLogCoordinates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          destinationInstanceName: _json.containsKey('destinationInstanceName')
              ? _json['destinationInstanceName'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          pitrTimestampMs: _json.containsKey('pitrTimestampMs')
              ? _json['pitrTimestampMs'] as core.String
              : null,
          pointInTime: _json.containsKey('pointInTime')
              ? _json['pointInTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocatedIpRange != null) 'allocatedIpRange': allocatedIpRange!,
        if (binLogCoordinates != null) 'binLogCoordinates': binLogCoordinates!,
        if (destinationInstanceName != null)
          'destinationInstanceName': destinationInstanceName!,
        if (kind != null) 'kind': kind!,
        if (pitrTimestampMs != null) 'pitrTimestampMs': pitrTimestampMs!,
        if (pointInTime != null) 'pointInTime': pointInTime!,
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
  /// - "MYSQL_8_0_18" : The database major version is MySQL 8.0 and the minor
  /// version is 18.
  /// - "MYSQL_8_0_26" : The database major version is MySQL 8.0 and the minor
  /// version is 26.
  /// - "MYSQL_8_0_27" : The database major version is MySQL 8.0 and the minor
  /// version is 27.
  /// - "MYSQL_8_0_28" : The database major version is MySQL 8.0 and the minor
  /// version is 28.
  /// - "POSTGRES_13" : The database version is PostgreSQL 13.
  /// - "POSTGRES_14" : The database version is PostgreSQL 14.
  /// - "SQLSERVER_2019_STANDARD" : The database version is SQL Server 2019
  /// Standard.
  /// - "SQLSERVER_2019_ENTERPRISE" : The database version is SQL Server 2019
  /// Enterprise.
  /// - "SQLSERVER_2019_EXPRESS" : The database version is SQL Server 2019
  /// Express.
  /// - "SQLSERVER_2019_WEB" : The database version is SQL Server 2019 Web.
  core.String? databaseVersion;

  /// The assigned IP addresses for the instance.
  core.List<IpMapping>? ipAddresses;

  /// This is always `sql#connectSettings`.
  core.String? kind;

  /// The cloud region for the instance.
  ///
  /// e.g. `us-central1`, `europe-west1`. The region cannot be changed after
  /// instance creation.
  core.String? region;

  /// SSL configuration.
  SslCert? serverCaCert;

  ConnectSettings({
    this.backendType,
    this.databaseVersion,
    this.ipAddresses,
    this.kind,
    this.region,
    this.serverCaCert,
  });

  ConnectSettings.fromJson(core.Map _json)
      : this(
          backendType: _json.containsKey('backendType')
              ? _json['backendType'] as core.String
              : null,
          databaseVersion: _json.containsKey('databaseVersion')
              ? _json['databaseVersion'] as core.String
              : null,
          ipAddresses: _json.containsKey('ipAddresses')
              ? (_json['ipAddresses'] as core.List)
                  .map((value) => IpMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          serverCaCert: _json.containsKey('serverCaCert')
              ? SslCert.fromJson(
                  _json['serverCaCert'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backendType != null) 'backendType': backendType!,
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (ipAddresses != null) 'ipAddresses': ipAddresses!,
        if (kind != null) 'kind': kind!,
        if (region != null) 'region': region!,
        if (serverCaCert != null) 'serverCaCert': serverCaCert!,
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

  Database.fromJson(core.Map _json)
      : this(
          charset: _json.containsKey('charset')
              ? _json['charset'] as core.String
              : null,
          collation: _json.containsKey('collation')
              ? _json['collation'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          instance: _json.containsKey('instance')
              ? _json['instance'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          sqlserverDatabaseDetails:
              _json.containsKey('sqlserverDatabaseDetails')
                  ? SqlServerDatabaseDetails.fromJson(
                      _json['sqlserverDatabaseDetails']
                          as core.Map<core.String, core.dynamic>)
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

  DatabaseFlags({
    this.name,
    this.value,
  });

  DatabaseFlags.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
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

  DatabaseInstanceFailoverReplica({
    this.available,
    this.name,
  });

  DatabaseInstanceFailoverReplica.fromJson(core.Map _json)
      : this(
          available: _json.containsKey('available')
              ? _json['available'] as core.bool
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (available != null) 'available': available!,
        if (name != null) 'name': name!,
      };
}

/// A Cloud SQL instance resource.
class DatabaseInstance {
  /// List all maintenance versions applicable on the instance
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
  /// - "MYSQL_8_0_18" : The database major version is MySQL 8.0 and the minor
  /// version is 18.
  /// - "MYSQL_8_0_26" : The database major version is MySQL 8.0 and the minor
  /// version is 26.
  /// - "MYSQL_8_0_27" : The database major version is MySQL 8.0 and the minor
  /// version is 27.
  /// - "MYSQL_8_0_28" : The database major version is MySQL 8.0 and the minor
  /// version is 28.
  /// - "POSTGRES_13" : The database version is PostgreSQL 13.
  /// - "POSTGRES_14" : The database version is PostgreSQL 14.
  /// - "SQLSERVER_2019_STANDARD" : The database version is SQL Server 2019
  /// Standard.
  /// - "SQLSERVER_2019_ENTERPRISE" : The database version is SQL Server 2019
  /// Enterprise.
  /// - "SQLSERVER_2019_EXPRESS" : The database version is SQL Server 2019
  /// Express.
  /// - "SQLSERVER_2019_WEB" : The database version is SQL Server 2019 Web.
  core.String? databaseVersion;

  /// Disk encryption configuration specific to an instance.
  DiskEncryptionConfiguration? diskEncryptionConfiguration;

  /// Disk encryption status specific to an instance.
  DiskEncryptionStatus? diskEncryptionStatus;

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

  /// The instance type.
  /// Possible string values are:
  /// - "SQL_INSTANCE_TYPE_UNSPECIFIED" : This is an unknown Cloud SQL instance
  /// type.
  /// - "CLOUD_SQL_INSTANCE" : A regular Cloud SQL instance that is not
  /// replicating from a primary instance.
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

  /// This is always `sql#instance`.
  core.String? kind;

  /// The current software version on the instance.
  core.String? maintenanceVersion;

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

  /// This field represents the report generated by the proactive database
  /// wellness job for OutOfDisk issues.
  ///
  /// * Writers: * the proactive database wellness job for OOD. * Readers: * the
  /// proactive database wellness job
  SqlOutOfDiskReport? outOfDiskReport;

  /// The project ID of the project containing the Cloud SQL instance.
  ///
  /// The Google apps domain is prefixed if applicable.
  core.String? project;

  /// The geographical region.
  ///
  /// Can be: * `us-central` (`FIRST_GEN` instances only) * `us-central1`
  /// (`SECOND_GEN` instances only) * `asia-east1` or `europe-west1`. Defaults
  /// to `us-central` or `us-central1` depending on the instance type. The
  /// region cannot be changed after instance creation.
  core.String? region;

  /// Configuration specific to failover replicas and read replicas.
  ReplicaConfiguration? replicaConfiguration;

  /// The replicas of the instance.
  core.List<core.String>? replicaNames;

  /// Initial root password.
  ///
  /// Use only on creation.
  core.String? rootPassword;

  /// The status indicating if instance satisfiesPzs.
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
  core.String? state;

  /// If the instance state is SUSPENDED, the reason for the suspension.
  core.List<core.String>? suspensionReason;

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
    this.etag,
    this.failoverReplica,
    this.gceZone,
    this.instanceType,
    this.ipAddresses,
    this.ipv6Address,
    this.kind,
    this.maintenanceVersion,
    this.masterInstanceName,
    this.maxDiskSize,
    this.name,
    this.onPremisesConfiguration,
    this.outOfDiskReport,
    this.project,
    this.region,
    this.replicaConfiguration,
    this.replicaNames,
    this.rootPassword,
    this.satisfiesPzs,
    this.scheduledMaintenance,
    this.secondaryGceZone,
    this.selfLink,
    this.serverCaCert,
    this.serviceAccountEmailAddress,
    this.settings,
    this.state,
    this.suspensionReason,
  });

  DatabaseInstance.fromJson(core.Map _json)
      : this(
          availableMaintenanceVersions:
              _json.containsKey('availableMaintenanceVersions')
                  ? (_json['availableMaintenanceVersions'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          backendType: _json.containsKey('backendType')
              ? _json['backendType'] as core.String
              : null,
          connectionName: _json.containsKey('connectionName')
              ? _json['connectionName'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          currentDiskSize: _json.containsKey('currentDiskSize')
              ? _json['currentDiskSize'] as core.String
              : null,
          databaseInstalledVersion:
              _json.containsKey('databaseInstalledVersion')
                  ? _json['databaseInstalledVersion'] as core.String
                  : null,
          databaseVersion: _json.containsKey('databaseVersion')
              ? _json['databaseVersion'] as core.String
              : null,
          diskEncryptionConfiguration:
              _json.containsKey('diskEncryptionConfiguration')
                  ? DiskEncryptionConfiguration.fromJson(
                      _json['diskEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          diskEncryptionStatus: _json.containsKey('diskEncryptionStatus')
              ? DiskEncryptionStatus.fromJson(_json['diskEncryptionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          failoverReplica: _json.containsKey('failoverReplica')
              ? DatabaseInstanceFailoverReplica.fromJson(
                  _json['failoverReplica']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gceZone: _json.containsKey('gceZone')
              ? _json['gceZone'] as core.String
              : null,
          instanceType: _json.containsKey('instanceType')
              ? _json['instanceType'] as core.String
              : null,
          ipAddresses: _json.containsKey('ipAddresses')
              ? (_json['ipAddresses'] as core.List)
                  .map((value) => IpMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ipv6Address: _json.containsKey('ipv6Address')
              ? _json['ipv6Address'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          maintenanceVersion: _json.containsKey('maintenanceVersion')
              ? _json['maintenanceVersion'] as core.String
              : null,
          masterInstanceName: _json.containsKey('masterInstanceName')
              ? _json['masterInstanceName'] as core.String
              : null,
          maxDiskSize: _json.containsKey('maxDiskSize')
              ? _json['maxDiskSize'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          onPremisesConfiguration: _json.containsKey('onPremisesConfiguration')
              ? OnPremisesConfiguration.fromJson(
                  _json['onPremisesConfiguration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          outOfDiskReport: _json.containsKey('outOfDiskReport')
              ? SqlOutOfDiskReport.fromJson(_json['outOfDiskReport']
                  as core.Map<core.String, core.dynamic>)
              : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
          replicaConfiguration: _json.containsKey('replicaConfiguration')
              ? ReplicaConfiguration.fromJson(_json['replicaConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          replicaNames: _json.containsKey('replicaNames')
              ? (_json['replicaNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          rootPassword: _json.containsKey('rootPassword')
              ? _json['rootPassword'] as core.String
              : null,
          satisfiesPzs: _json.containsKey('satisfiesPzs')
              ? _json['satisfiesPzs'] as core.bool
              : null,
          scheduledMaintenance: _json.containsKey('scheduledMaintenance')
              ? SqlScheduledMaintenance.fromJson(_json['scheduledMaintenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondaryGceZone: _json.containsKey('secondaryGceZone')
              ? _json['secondaryGceZone'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          serverCaCert: _json.containsKey('serverCaCert')
              ? SslCert.fromJson(
                  _json['serverCaCert'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccountEmailAddress:
              _json.containsKey('serviceAccountEmailAddress')
                  ? _json['serviceAccountEmailAddress'] as core.String
                  : null,
          settings: _json.containsKey('settings')
              ? Settings.fromJson(
                  _json['settings'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          suspensionReason: _json.containsKey('suspensionReason')
              ? (_json['suspensionReason'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
        if (etag != null) 'etag': etag!,
        if (failoverReplica != null) 'failoverReplica': failoverReplica!,
        if (gceZone != null) 'gceZone': gceZone!,
        if (instanceType != null) 'instanceType': instanceType!,
        if (ipAddresses != null) 'ipAddresses': ipAddresses!,
        if (ipv6Address != null) 'ipv6Address': ipv6Address!,
        if (kind != null) 'kind': kind!,
        if (maintenanceVersion != null)
          'maintenanceVersion': maintenanceVersion!,
        if (masterInstanceName != null)
          'masterInstanceName': masterInstanceName!,
        if (maxDiskSize != null) 'maxDiskSize': maxDiskSize!,
        if (name != null) 'name': name!,
        if (onPremisesConfiguration != null)
          'onPremisesConfiguration': onPremisesConfiguration!,
        if (outOfDiskReport != null) 'outOfDiskReport': outOfDiskReport!,
        if (project != null) 'project': project!,
        if (region != null) 'region': region!,
        if (replicaConfiguration != null)
          'replicaConfiguration': replicaConfiguration!,
        if (replicaNames != null) 'replicaNames': replicaNames!,
        if (rootPassword != null) 'rootPassword': rootPassword!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (scheduledMaintenance != null)
          'scheduledMaintenance': scheduledMaintenance!,
        if (secondaryGceZone != null) 'secondaryGceZone': secondaryGceZone!,
        if (selfLink != null) 'selfLink': selfLink!,
        if (serverCaCert != null) 'serverCaCert': serverCaCert!,
        if (serviceAccountEmailAddress != null)
          'serviceAccountEmailAddress': serviceAccountEmailAddress!,
        if (settings != null) 'settings': settings!,
        if (state != null) 'state': state!,
        if (suspensionReason != null) 'suspensionReason': suspensionReason!,
      };
}

/// Database list response.
class DatabasesListResponse {
  /// List of database resources in the instance.
  core.List<Database>? items;

  /// This is always `sql#databasesList`.
  core.String? kind;

  DatabasesListResponse({
    this.items,
    this.kind,
  });

  DatabasesListResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Database.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
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

  DemoteMasterConfiguration({
    this.kind,
    this.mysqlReplicaConfiguration,
  });

  DemoteMasterConfiguration.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          mysqlReplicaConfiguration:
              _json.containsKey('mysqlReplicaConfiguration')
                  ? DemoteMasterMySqlReplicaConfiguration.fromJson(
                      _json['mysqlReplicaConfiguration']
                          as core.Map<core.String, core.dynamic>)
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

  DemoteMasterContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          masterInstanceName: _json.containsKey('masterInstanceName')
              ? _json['masterInstanceName'] as core.String
              : null,
          replicaConfiguration: _json.containsKey('replicaConfiguration')
              ? DemoteMasterConfiguration.fromJson(_json['replicaConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skipReplicationSetup: _json.containsKey('skipReplicationSetup')
              ? _json['skipReplicationSetup'] as core.bool
              : null,
          verifyGtidConsistency: _json.containsKey('verifyGtidConsistency')
              ? _json['verifyGtidConsistency'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (masterInstanceName != null)
          'masterInstanceName': masterInstanceName!,
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
  /// The corresponsing public key is encoded in the client's certificate. The
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

  DemoteMasterMySqlReplicaConfiguration.fromJson(core.Map _json)
      : this(
          caCertificate: _json.containsKey('caCertificate')
              ? _json['caCertificate'] as core.String
              : null,
          clientCertificate: _json.containsKey('clientCertificate')
              ? _json['clientCertificate'] as core.String
              : null,
          clientKey: _json.containsKey('clientKey')
              ? _json['clientKey'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
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

  DenyMaintenancePeriod({
    this.endDate,
    this.startDate,
    this.time,
  });

  DenyMaintenancePeriod.fromJson(core.Map _json)
      : this(
          endDate: _json.containsKey('endDate')
              ? _json['endDate'] as core.String
              : null,
          startDate: _json.containsKey('startDate')
              ? _json['startDate'] as core.String
              : null,
          time: _json.containsKey('time') ? _json['time'] as core.String : null,
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

  DiskEncryptionConfiguration({
    this.kind,
    this.kmsKeyName,
  });

  DiskEncryptionConfiguration.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
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

  DiskEncryptionStatus({
    this.kind,
    this.kmsKeyVersionName,
  });

  DiskEncryptionStatus.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          kmsKeyVersionName: _json.containsKey('kmsKeyVersionName')
              ? _json['kmsKeyVersionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
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

  ExportContextCsvExportOptions.fromJson(core.Map _json)
      : this(
          escapeCharacter: _json.containsKey('escapeCharacter')
              ? _json['escapeCharacter'] as core.String
              : null,
          fieldsTerminatedBy: _json.containsKey('fieldsTerminatedBy')
              ? _json['fieldsTerminatedBy'] as core.String
              : null,
          linesTerminatedBy: _json.containsKey('linesTerminatedBy')
              ? _json['linesTerminatedBy'] as core.String
              : null,
          quoteCharacter: _json.containsKey('quoteCharacter')
              ? _json['quoteCharacter'] as core.String
              : null,
          selectQuery: _json.containsKey('selectQuery')
              ? _json['selectQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (escapeCharacter != null) 'escapeCharacter': escapeCharacter!,
        if (fieldsTerminatedBy != null)
          'fieldsTerminatedBy': fieldsTerminatedBy!,
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

  ExportContextSqlExportOptionsMysqlExportOptions({
    this.masterData,
  });

  ExportContextSqlExportOptionsMysqlExportOptions.fromJson(core.Map _json)
      : this(
          masterData: _json.containsKey('masterData')
              ? _json['masterData'] as core.int
              : null,
        );

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

  ExportContextSqlExportOptions({
    this.mysqlExportOptions,
    this.schemaOnly,
    this.tables,
  });

  ExportContextSqlExportOptions.fromJson(core.Map _json)
      : this(
          mysqlExportOptions: _json.containsKey('mysqlExportOptions')
              ? ExportContextSqlExportOptionsMysqlExportOptions.fromJson(
                  _json['mysqlExportOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          schemaOnly: _json.containsKey('schemaOnly')
              ? _json['schemaOnly'] as core.bool
              : null,
          tables: _json.containsKey('tables')
              ? (_json['tables'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlExportOptions != null)
          'mysqlExportOptions': mysqlExportOptions!,
        if (schemaOnly != null) 'schemaOnly': schemaOnly!,
        if (tables != null) 'tables': tables!,
      };
}

/// Database instance export context.
class ExportContext {
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
  /// takes precedence over this property. `PostgreSQL instances:` You must
  /// specify one database to be exported. If `fileType` is `CSV`, this database
  /// must match the one specified in the `csvExportOptions.selectQuery`
  /// property. `SQL Server instances:` You must specify one database to be
  /// exported, and the `fileType` must be `BAK`.
  core.List<core.String>? databases;

  /// The file type for the specified uri.
  /// Possible string values are:
  /// - "SQL_FILE_TYPE_UNSPECIFIED" : Unknown file type.
  /// - "SQL" : File containing SQL statements.
  /// - "CSV" : File in CSV format.
  /// - "BAK"
  core.String? fileType;

  /// This is always `sql#exportContext`.
  core.String? kind;

  /// Option for export offload.
  core.bool? offload;

  /// Options for exporting data as SQL statements.
  ExportContextSqlExportOptions? sqlExportOptions;

  /// The path to the file in Google Cloud Storage where the export will be
  /// stored.
  ///
  /// The URI is in the form `gs://bucketName/fileName`. If the file already
  /// exists, the request succeeds, but the operation fails. If `fileType` is
  /// `SQL` and the filename ends with .gz, the contents are compressed.
  core.String? uri;

  ExportContext({
    this.csvExportOptions,
    this.databases,
    this.fileType,
    this.kind,
    this.offload,
    this.sqlExportOptions,
    this.uri,
  });

  ExportContext.fromJson(core.Map _json)
      : this(
          csvExportOptions: _json.containsKey('csvExportOptions')
              ? ExportContextCsvExportOptions.fromJson(_json['csvExportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          databases: _json.containsKey('databases')
              ? (_json['databases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileType: _json.containsKey('fileType')
              ? _json['fileType'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          offload: _json.containsKey('offload')
              ? _json['offload'] as core.bool
              : null,
          sqlExportOptions: _json.containsKey('sqlExportOptions')
              ? ExportContextSqlExportOptions.fromJson(_json['sqlExportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (csvExportOptions != null) 'csvExportOptions': csvExportOptions!,
        if (databases != null) 'databases': databases!,
        if (fileType != null) 'fileType': fileType!,
        if (kind != null) 'kind': kind!,
        if (offload != null) 'offload': offload!,
        if (sqlExportOptions != null) 'sqlExportOptions': sqlExportOptions!,
        if (uri != null) 'uri': uri!,
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

  FailoverContext({
    this.kind,
    this.settingsVersion,
  });

  FailoverContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          settingsVersion: _json.containsKey('settingsVersion')
              ? _json['settingsVersion'] as core.String
              : null,
        );

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
    this.inBeta,
    this.kind,
    this.maxValue,
    this.minValue,
    this.name,
    this.requiresRestart,
    this.type,
  });

  Flag.fromJson(core.Map _json)
      : this(
          allowedIntValues: _json.containsKey('allowedIntValues')
              ? (_json['allowedIntValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowedStringValues: _json.containsKey('allowedStringValues')
              ? (_json['allowedStringValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          appliesTo: _json.containsKey('appliesTo')
              ? (_json['appliesTo'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inBeta:
              _json.containsKey('inBeta') ? _json['inBeta'] as core.bool : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          maxValue: _json.containsKey('maxValue')
              ? _json['maxValue'] as core.String
              : null,
          minValue: _json.containsKey('minValue')
              ? _json['minValue'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          requiresRestart: _json.containsKey('requiresRestart')
              ? _json['requiresRestart'] as core.bool
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

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

  /// This is always `sql#flagsList`.
  core.String? kind;

  FlagsListResponse({
    this.items,
    this.kind,
  });

  FlagsListResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Flag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
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

  GenerateEphemeralCertRequest.fromJson(core.Map _json)
      : this(
          accessToken: _json.containsKey('access_token')
              ? _json['access_token'] as core.String
              : null,
          publicKey: _json.containsKey('public_key')
              ? _json['public_key'] as core.String
              : null,
          readTime: _json.containsKey('readTime')
              ? _json['readTime'] as core.String
              : null,
          validDuration: _json.containsKey('validDuration')
              ? _json['validDuration'] as core.String
              : null,
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

  GenerateEphemeralCertResponse({
    this.ephemeralCert,
  });

  GenerateEphemeralCertResponse.fromJson(core.Map _json)
      : this(
          ephemeralCert: _json.containsKey('ephemeralCert')
              ? SslCert.fromJson(
                  _json['ephemeralCert'] as core.Map<core.String, core.dynamic>)
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
    this.pvkPassword,
    this.pvkPath,
  });

  ImportContextBakImportOptionsEncryptionOptions.fromJson(core.Map _json)
      : this(
          certPath: _json.containsKey('certPath')
              ? _json['certPath'] as core.String
              : null,
          pvkPassword: _json.containsKey('pvkPassword')
              ? _json['pvkPassword'] as core.String
              : null,
          pvkPath: _json.containsKey('pvkPath')
              ? _json['pvkPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certPath != null) 'certPath': certPath!,
        if (pvkPassword != null) 'pvkPassword': pvkPassword!,
        if (pvkPath != null) 'pvkPath': pvkPath!,
      };
}

/// Import parameters specific to SQL Server .BAK files
class ImportContextBakImportOptions {
  ImportContextBakImportOptionsEncryptionOptions? encryptionOptions;

  ImportContextBakImportOptions({
    this.encryptionOptions,
  });

  ImportContextBakImportOptions.fromJson(core.Map _json)
      : this(
          encryptionOptions: _json.containsKey('encryptionOptions')
              ? ImportContextBakImportOptionsEncryptionOptions.fromJson(
                  _json['encryptionOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionOptions != null) 'encryptionOptions': encryptionOptions!,
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

  ImportContextCsvImportOptions.fromJson(core.Map _json)
      : this(
          columns: _json.containsKey('columns')
              ? (_json['columns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          escapeCharacter: _json.containsKey('escapeCharacter')
              ? _json['escapeCharacter'] as core.String
              : null,
          fieldsTerminatedBy: _json.containsKey('fieldsTerminatedBy')
              ? _json['fieldsTerminatedBy'] as core.String
              : null,
          linesTerminatedBy: _json.containsKey('linesTerminatedBy')
              ? _json['linesTerminatedBy'] as core.String
              : null,
          quoteCharacter: _json.containsKey('quoteCharacter')
              ? _json['quoteCharacter'] as core.String
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (escapeCharacter != null) 'escapeCharacter': escapeCharacter!,
        if (fieldsTerminatedBy != null)
          'fieldsTerminatedBy': fieldsTerminatedBy!,
        if (linesTerminatedBy != null) 'linesTerminatedBy': linesTerminatedBy!,
        if (quoteCharacter != null) 'quoteCharacter': quoteCharacter!,
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
  /// If `fileType` is `SQL`, this field is required only if the import file
  /// does not specify a database, and is overridden by any database
  /// specification in the import file. If `fileType` is `CSV`, one database
  /// must be specified.
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
  core.String? fileType;

  /// The PostgreSQL user for this import operation.
  ///
  /// PostgreSQL instances only.
  core.String? importUser;

  /// This is always `sql#importContext`.
  core.String? kind;

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
    this.uri,
  });

  ImportContext.fromJson(core.Map _json)
      : this(
          bakImportOptions: _json.containsKey('bakImportOptions')
              ? ImportContextBakImportOptions.fromJson(_json['bakImportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          csvImportOptions: _json.containsKey('csvImportOptions')
              ? ImportContextCsvImportOptions.fromJson(_json['csvImportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          database: _json.containsKey('database')
              ? _json['database'] as core.String
              : null,
          fileType: _json.containsKey('fileType')
              ? _json['fileType'] as core.String
              : null,
          importUser: _json.containsKey('importUser')
              ? _json['importUser'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bakImportOptions != null) 'bakImportOptions': bakImportOptions!,
        if (csvImportOptions != null) 'csvImportOptions': csvImportOptions!,
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

  /// Number of query execution plans captured by Insights per minute for all
  /// queries combined.
  ///
  /// Default is 5.
  core.int? queryPlansPerMinute;

  /// Maximum query length stored in bytes.
  ///
  /// Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than
  /// this field value will be truncated to this value. When unset, query length
  /// will be the default value. Changing query length will restart the
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

  InsightsConfig.fromJson(core.Map _json)
      : this(
          queryInsightsEnabled: _json.containsKey('queryInsightsEnabled')
              ? _json['queryInsightsEnabled'] as core.bool
              : null,
          queryPlansPerMinute: _json.containsKey('queryPlansPerMinute')
              ? _json['queryPlansPerMinute'] as core.int
              : null,
          queryStringLength: _json.containsKey('queryStringLength')
              ? _json['queryStringLength'] as core.int
              : null,
          recordApplicationTags: _json.containsKey('recordApplicationTags')
              ? _json['recordApplicationTags'] as core.bool
              : null,
          recordClientAddress: _json.containsKey('recordClientAddress')
              ? _json['recordClientAddress'] as core.bool
              : null,
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

  InstanceReference({
    this.name,
    this.project,
    this.region,
  });

  InstanceReference.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
          region: _json.containsKey('region')
              ? _json['region'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (project != null) 'project': project!,
        if (region != null) 'region': region!,
      };
}

/// Database instance clone request.
class InstancesCloneRequest {
  /// Contains details about the clone operation.
  CloneContext? cloneContext;

  InstancesCloneRequest({
    this.cloneContext,
  });

  InstancesCloneRequest.fromJson(core.Map _json)
      : this(
          cloneContext: _json.containsKey('cloneContext')
              ? CloneContext.fromJson(
                  _json['cloneContext'] as core.Map<core.String, core.dynamic>)
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

  InstancesDemoteMasterRequest({
    this.demoteMasterContext,
  });

  InstancesDemoteMasterRequest.fromJson(core.Map _json)
      : this(
          demoteMasterContext: _json.containsKey('demoteMasterContext')
              ? DemoteMasterContext.fromJson(_json['demoteMasterContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (demoteMasterContext != null)
          'demoteMasterContext': demoteMasterContext!,
      };
}

/// Database instance export request.
class InstancesExportRequest {
  /// Contains details about the export operation.
  ExportContext? exportContext;

  InstancesExportRequest({
    this.exportContext,
  });

  InstancesExportRequest.fromJson(core.Map _json)
      : this(
          exportContext: _json.containsKey('exportContext')
              ? ExportContext.fromJson(
                  _json['exportContext'] as core.Map<core.String, core.dynamic>)
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

  InstancesFailoverRequest({
    this.failoverContext,
  });

  InstancesFailoverRequest.fromJson(core.Map _json)
      : this(
          failoverContext: _json.containsKey('failoverContext')
              ? FailoverContext.fromJson(_json['failoverContext']
                  as core.Map<core.String, core.dynamic>)
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

  InstancesImportRequest({
    this.importContext,
  });

  InstancesImportRequest.fromJson(core.Map _json)
      : this(
          importContext: _json.containsKey('importContext')
              ? ImportContext.fromJson(
                  _json['importContext'] as core.Map<core.String, core.dynamic>)
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

  InstancesListResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => DatabaseInstance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          warnings: _json.containsKey('warnings')
              ? (_json['warnings'] as core.List)
                  .map((value) => ApiWarning.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  InstancesListServerCasResponse({
    this.activeVersion,
    this.certs,
    this.kind,
  });

  InstancesListServerCasResponse.fromJson(core.Map _json)
      : this(
          activeVersion: _json.containsKey('activeVersion')
              ? _json['activeVersion'] as core.String
              : null,
          certs: _json.containsKey('certs')
              ? (_json['certs'] as core.List)
                  .map((value) => SslCert.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeVersion != null) 'activeVersion': activeVersion!,
        if (certs != null) 'certs': certs!,
        if (kind != null) 'kind': kind!,
      };
}

/// Database instance restore backup request.
class InstancesRestoreBackupRequest {
  /// Parameters required to perform the restore backup operation.
  RestoreBackupContext? restoreBackupContext;

  InstancesRestoreBackupRequest({
    this.restoreBackupContext,
  });

  InstancesRestoreBackupRequest.fromJson(core.Map _json)
      : this(
          restoreBackupContext: _json.containsKey('restoreBackupContext')
              ? RestoreBackupContext.fromJson(_json['restoreBackupContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (restoreBackupContext != null)
          'restoreBackupContext': restoreBackupContext!,
      };
}

/// Rotate Server CA request.
class InstancesRotateServerCaRequest {
  /// Contains details about the rotate server CA operation.
  RotateServerCaContext? rotateServerCaContext;

  InstancesRotateServerCaRequest({
    this.rotateServerCaContext,
  });

  InstancesRotateServerCaRequest.fromJson(core.Map _json)
      : this(
          rotateServerCaContext: _json.containsKey('rotateServerCaContext')
              ? RotateServerCaContext.fromJson(_json['rotateServerCaContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rotateServerCaContext != null)
          'rotateServerCaContext': rotateServerCaContext!,
      };
}

/// Instance truncate log request.
class InstancesTruncateLogRequest {
  /// Contains details about the truncate log operation.
  TruncateLogContext? truncateLogContext;

  InstancesTruncateLogRequest({
    this.truncateLogContext,
  });

  InstancesTruncateLogRequest.fromJson(core.Map _json)
      : this(
          truncateLogContext: _json.containsKey('truncateLogContext')
              ? TruncateLogContext.fromJson(_json['truncateLogContext']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (truncateLogContext != null)
          'truncateLogContext': truncateLogContext!,
      };
}

/// IP Management configuration.
class IpConfiguration {
  /// The name of the allocated ip range for the private ip CloudSQL instance.
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

  /// Whether the instance is assigned a public IP address or not.
  core.bool? ipv4Enabled;

  /// The resource link for the VPC network from which the Cloud SQL instance is
  /// accessible for private IP.
  ///
  /// For example, `/projects/myProject/global/networks/default`. This setting
  /// can be updated, but it cannot be removed after it is set.
  core.String? privateNetwork;

  /// Whether SSL connections over IP are enforced or not.
  core.bool? requireSsl;

  IpConfiguration({
    this.allocatedIpRange,
    this.authorizedNetworks,
    this.ipv4Enabled,
    this.privateNetwork,
    this.requireSsl,
  });

  IpConfiguration.fromJson(core.Map _json)
      : this(
          allocatedIpRange: _json.containsKey('allocatedIpRange')
              ? _json['allocatedIpRange'] as core.String
              : null,
          authorizedNetworks: _json.containsKey('authorizedNetworks')
              ? (_json['authorizedNetworks'] as core.List)
                  .map((value) => AclEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ipv4Enabled: _json.containsKey('ipv4Enabled')
              ? _json['ipv4Enabled'] as core.bool
              : null,
          privateNetwork: _json.containsKey('privateNetwork')
              ? _json['privateNetwork'] as core.String
              : null,
          requireSsl: _json.containsKey('requireSsl')
              ? _json['requireSsl'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocatedIpRange != null) 'allocatedIpRange': allocatedIpRange!,
        if (authorizedNetworks != null)
          'authorizedNetworks': authorizedNetworks!,
        if (ipv4Enabled != null) 'ipv4Enabled': ipv4Enabled!,
        if (privateNetwork != null) 'privateNetwork': privateNetwork!,
        if (requireSsl != null) 'requireSsl': requireSsl!,
      };
}

/// Database instance IP Mapping.
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

  IpMapping({
    this.ipAddress,
    this.timeToRetire,
    this.type,
  });

  IpMapping.fromJson(core.Map _json)
      : this(
          ipAddress: _json.containsKey('ipAddress')
              ? _json['ipAddress'] as core.String
              : null,
          timeToRetire: _json.containsKey('timeToRetire')
              ? _json['timeToRetire'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipAddress != null) 'ipAddress': ipAddress!,
        if (timeToRetire != null) 'timeToRetire': timeToRetire!,
        if (type != null) 'type': type!,
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
  core.String? followGaeApplication;

  /// This is always `sql#locationPreference`.
  core.String? kind;

  /// The preferred Compute Engine zone for the secondary/failover (for example:
  /// us-central1-a, us-central1-b, etc.).
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

  LocationPreference.fromJson(core.Map _json)
      : this(
          followGaeApplication: _json.containsKey('followGaeApplication')
              ? _json['followGaeApplication'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          secondaryZone: _json.containsKey('secondaryZone')
              ? _json['secondaryZone'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
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
  /// day of week (1-7), starting on Monday.
  core.int? day;

  /// hour of day - 0 to 23.
  core.int? hour;

  /// This is always `sql#maintenanceWindow`.
  core.String? kind;

  /// Maintenance timing setting: `canary` (Earlier) or `stable` (Later).
  ///
  /// [Learn more](https://cloud.google.com/sql/docs/mysql/instance-settings#maintenance-timing-2ndgen).
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

  MaintenanceWindow({
    this.day,
    this.hour,
    this.kind,
    this.updateTrack,
  });

  MaintenanceWindow.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          hour: _json.containsKey('hour') ? _json['hour'] as core.int : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          updateTrack: _json.containsKey('updateTrack')
              ? _json['updateTrack'] as core.String
              : null,
        );

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

  MySqlReplicaConfiguration.fromJson(core.Map _json)
      : this(
          caCertificate: _json.containsKey('caCertificate')
              ? _json['caCertificate'] as core.String
              : null,
          clientCertificate: _json.containsKey('clientCertificate')
              ? _json['clientCertificate'] as core.String
              : null,
          clientKey: _json.containsKey('clientKey')
              ? _json['clientKey'] as core.String
              : null,
          connectRetryInterval: _json.containsKey('connectRetryInterval')
              ? _json['connectRetryInterval'] as core.int
              : null,
          dumpFilePath: _json.containsKey('dumpFilePath')
              ? _json['dumpFilePath'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          masterHeartbeatPeriod: _json.containsKey('masterHeartbeatPeriod')
              ? _json['masterHeartbeatPeriod'] as core.String
              : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          sslCipher: _json.containsKey('sslCipher')
              ? _json['sslCipher'] as core.String
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
          verifyServerCertificate: _json.containsKey('verifyServerCertificate')
              ? _json['verifyServerCertificate'] as core.bool
              : null,
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

  MySqlSyncConfig({
    this.initialSyncFlags,
  });

  MySqlSyncConfig.fromJson(core.Map _json)
      : this(
          initialSyncFlags: _json.containsKey('initialSyncFlags')
              ? (_json['initialSyncFlags'] as core.List)
                  .map((value) => SyncFlags.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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
  /// The corresponsing public key is encoded in the client's certificate.
  core.String? clientKey;

  /// The dump file to create the Cloud SQL replica.
  core.String? dumpFilePath;

  /// The host and port of the on-premises instance in host:port format
  core.String? hostPort;

  /// This is always `sql#onPremisesConfiguration`.
  core.String? kind;

  /// The password for connecting to on-premises instance.
  core.String? password;

  /// The reference to Cloud SQL instance if the source is Cloud SQL.
  InstanceReference? sourceInstance;

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
    this.sourceInstance,
    this.username,
  });

  OnPremisesConfiguration.fromJson(core.Map _json)
      : this(
          caCertificate: _json.containsKey('caCertificate')
              ? _json['caCertificate'] as core.String
              : null,
          clientCertificate: _json.containsKey('clientCertificate')
              ? _json['clientCertificate'] as core.String
              : null,
          clientKey: _json.containsKey('clientKey')
              ? _json['clientKey'] as core.String
              : null,
          dumpFilePath: _json.containsKey('dumpFilePath')
              ? _json['dumpFilePath'] as core.String
              : null,
          hostPort: _json.containsKey('hostPort')
              ? _json['hostPort'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          sourceInstance: _json.containsKey('sourceInstance')
              ? InstanceReference.fromJson(_json['sourceInstance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caCertificate != null) 'caCertificate': caCertificate!,
        if (clientCertificate != null) 'clientCertificate': clientCertificate!,
        if (clientKey != null) 'clientKey': clientKey!,
        if (dumpFilePath != null) 'dumpFilePath': dumpFilePath!,
        if (hostPort != null) 'hostPort': hostPort!,
        if (kind != null) 'kind': kind!,
        if (password != null) 'password': password!,
        if (sourceInstance != null) 'sourceInstance': sourceInstance!,
        if (username != null) 'username': username!,
      };
}

/// An Operation resource.
///
/// For successful operations that return an Operation resource, only the fields
/// relevant to the operation are populated in the resource.
class Operation {
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

  /// Name of the database instance related to this operation.
  core.String? targetId;
  core.String? targetLink;

  /// The project ID of the target instance related to this operation.
  core.String? targetProject;

  /// The email address of the user who initiated this operation.
  core.String? user;

  Operation({
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
    this.targetId,
    this.targetLink,
    this.targetProject,
    this.user,
  });

  Operation.fromJson(core.Map _json)
      : this(
          backupContext: _json.containsKey('backupContext')
              ? BackupContext.fromJson(
                  _json['backupContext'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          error: _json.containsKey('error')
              ? OperationErrors.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          exportContext: _json.containsKey('exportContext')
              ? ExportContext.fromJson(
                  _json['exportContext'] as core.Map<core.String, core.dynamic>)
              : null,
          importContext: _json.containsKey('importContext')
              ? ImportContext.fromJson(
                  _json['importContext'] as core.Map<core.String, core.dynamic>)
              : null,
          insertTime: _json.containsKey('insertTime')
              ? _json['insertTime'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          operationType: _json.containsKey('operationType')
              ? _json['operationType'] as core.String
              : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          targetId: _json.containsKey('targetId')
              ? _json['targetId'] as core.String
              : null,
          targetLink: _json.containsKey('targetLink')
              ? _json['targetLink'] as core.String
              : null,
          targetProject: _json.containsKey('targetProject')
              ? _json['targetProject'] as core.String
              : null,
          user: _json.containsKey('user') ? _json['user'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
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

  OperationError({
    this.code,
    this.kind,
    this.message,
  });

  OperationError.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
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

  OperationErrors({
    this.errors,
    this.kind,
  });

  OperationErrors.fromJson(core.Map _json)
      : this(
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => OperationError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
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

  OperationsListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  OperationsListResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
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

  PasswordStatus({
    this.locked,
    this.passwordExpirationTime,
  });

  PasswordStatus.fromJson(core.Map _json)
      : this(
          locked:
              _json.containsKey('locked') ? _json['locked'] as core.bool : null,
          passwordExpirationTime: _json.containsKey('passwordExpirationTime')
              ? _json['passwordExpirationTime'] as core.String
              : null,
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

  /// Disallow username as a part of the password.
  core.bool? disallowUsernameSubstring;

  /// Whether the password policy is enabled or not.
  core.bool? enablePasswordPolicy;

  /// Minimum number of characters allowed.
  core.int? minLength;

  /// Minimum interval after which the password can be changed.
  ///
  /// This flag is only supported for PostgresSQL.
  core.String? passwordChangeInterval;

  /// Number of previous passwords that cannot be reused.
  core.int? reuseInterval;

  PasswordValidationPolicy({
    this.complexity,
    this.disallowUsernameSubstring,
    this.enablePasswordPolicy,
    this.minLength,
    this.passwordChangeInterval,
    this.reuseInterval,
  });

  PasswordValidationPolicy.fromJson(core.Map _json)
      : this(
          complexity: _json.containsKey('complexity')
              ? _json['complexity'] as core.String
              : null,
          disallowUsernameSubstring:
              _json.containsKey('disallowUsernameSubstring')
                  ? _json['disallowUsernameSubstring'] as core.bool
                  : null,
          enablePasswordPolicy: _json.containsKey('enablePasswordPolicy')
              ? _json['enablePasswordPolicy'] as core.bool
              : null,
          minLength: _json.containsKey('minLength')
              ? _json['minLength'] as core.int
              : null,
          passwordChangeInterval: _json.containsKey('passwordChangeInterval')
              ? _json['passwordChangeInterval'] as core.String
              : null,
          reuseInterval: _json.containsKey('reuseInterval')
              ? _json['reuseInterval'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (complexity != null) 'complexity': complexity!,
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

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfiguration {
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
    this.failoverTarget,
    this.kind,
    this.mysqlReplicaConfiguration,
  });

  ReplicaConfiguration.fromJson(core.Map _json)
      : this(
          failoverTarget: _json.containsKey('failoverTarget')
              ? _json['failoverTarget'] as core.bool
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          mysqlReplicaConfiguration:
              _json.containsKey('mysqlReplicaConfiguration')
                  ? MySqlReplicaConfiguration.fromJson(
                      _json['mysqlReplicaConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failoverTarget != null) 'failoverTarget': failoverTarget!,
        if (kind != null) 'kind': kind!,
        if (mysqlReplicaConfiguration != null)
          'mysqlReplicaConfiguration': mysqlReplicaConfiguration!,
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

  Reschedule({
    this.rescheduleType,
    this.scheduleTime,
  });

  Reschedule.fromJson(core.Map _json)
      : this(
          rescheduleType: _json.containsKey('rescheduleType')
              ? _json['rescheduleType'] as core.String
              : null,
          scheduleTime: _json.containsKey('scheduleTime')
              ? _json['scheduleTime'] as core.String
              : null,
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

  RestoreBackupContext.fromJson(core.Map _json)
      : this(
          backupRunId: _json.containsKey('backupRunId')
              ? _json['backupRunId'] as core.String
              : null,
          instanceId: _json.containsKey('instanceId')
              ? _json['instanceId'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
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

  RotateServerCaContext({
    this.kind,
    this.nextVersion,
  });

  RotateServerCaContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextVersion: _json.containsKey('nextVersion')
              ? _json['nextVersion'] as core.String
              : null,
        );

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

  /// The App Engine app IDs that can access this instance.
  ///
  /// (Deprecated) Applied to First Generation instances only.
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

  /// Configuration specific to read replica instances.
  ///
  /// Indicates whether database flags for crash-safe replication are enabled.
  /// This property was only applicable to First Generation instances.
  core.bool? crashSafeReplicationEnabled;

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
  core.String? dataDiskType;

  /// The database flags passed to the instance at startup.
  core.List<DatabaseFlags>? databaseFlags;

  /// Configuration specific to read replica instances.
  ///
  /// Indicates whether replication is enabled or not. WARNING: Changing this
  /// restarts the instance.
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
  core.String? replicationType;

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

  /// User-provided labels, represented as a dictionary where each label is a
  /// single key value pair.
  core.Map<core.String, core.String>? userLabels;

  Settings({
    this.activationPolicy,
    this.activeDirectoryConfig,
    this.authorizedGaeApplications,
    this.availabilityType,
    this.backupConfiguration,
    this.collation,
    this.crashSafeReplicationEnabled,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseReplicationEnabled,
    this.denyMaintenancePeriods,
    this.insightsConfig,
    this.ipConfiguration,
    this.kind,
    this.locationPreference,
    this.maintenanceWindow,
    this.passwordValidationPolicy,
    this.pricingPlan,
    this.replicationType,
    this.settingsVersion,
    this.sqlServerAuditConfig,
    this.storageAutoResize,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
  });

  Settings.fromJson(core.Map _json)
      : this(
          activationPolicy: _json.containsKey('activationPolicy')
              ? _json['activationPolicy'] as core.String
              : null,
          activeDirectoryConfig: _json.containsKey('activeDirectoryConfig')
              ? SqlActiveDirectoryConfig.fromJson(_json['activeDirectoryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          authorizedGaeApplications:
              _json.containsKey('authorizedGaeApplications')
                  ? (_json['authorizedGaeApplications'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          availabilityType: _json.containsKey('availabilityType')
              ? _json['availabilityType'] as core.String
              : null,
          backupConfiguration: _json.containsKey('backupConfiguration')
              ? BackupConfiguration.fromJson(_json['backupConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          collation: _json.containsKey('collation')
              ? _json['collation'] as core.String
              : null,
          crashSafeReplicationEnabled:
              _json.containsKey('crashSafeReplicationEnabled')
                  ? _json['crashSafeReplicationEnabled'] as core.bool
                  : null,
          dataDiskSizeGb: _json.containsKey('dataDiskSizeGb')
              ? _json['dataDiskSizeGb'] as core.String
              : null,
          dataDiskType: _json.containsKey('dataDiskType')
              ? _json['dataDiskType'] as core.String
              : null,
          databaseFlags: _json.containsKey('databaseFlags')
              ? (_json['databaseFlags'] as core.List)
                  .map((value) => DatabaseFlags.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          databaseReplicationEnabled:
              _json.containsKey('databaseReplicationEnabled')
                  ? _json['databaseReplicationEnabled'] as core.bool
                  : null,
          denyMaintenancePeriods: _json.containsKey('denyMaintenancePeriods')
              ? (_json['denyMaintenancePeriods'] as core.List)
                  .map((value) => DenyMaintenancePeriod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          insightsConfig: _json.containsKey('insightsConfig')
              ? InsightsConfig.fromJson(_json['insightsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ipConfiguration: _json.containsKey('ipConfiguration')
              ? IpConfiguration.fromJson(_json['ipConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          locationPreference: _json.containsKey('locationPreference')
              ? LocationPreference.fromJson(_json['locationPreference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maintenanceWindow: _json.containsKey('maintenanceWindow')
              ? MaintenanceWindow.fromJson(_json['maintenanceWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          passwordValidationPolicy:
              _json.containsKey('passwordValidationPolicy')
                  ? PasswordValidationPolicy.fromJson(
                      _json['passwordValidationPolicy']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          pricingPlan: _json.containsKey('pricingPlan')
              ? _json['pricingPlan'] as core.String
              : null,
          replicationType: _json.containsKey('replicationType')
              ? _json['replicationType'] as core.String
              : null,
          settingsVersion: _json.containsKey('settingsVersion')
              ? _json['settingsVersion'] as core.String
              : null,
          sqlServerAuditConfig: _json.containsKey('sqlServerAuditConfig')
              ? SqlServerAuditConfig.fromJson(_json['sqlServerAuditConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          storageAutoResize: _json.containsKey('storageAutoResize')
              ? _json['storageAutoResize'] as core.bool
              : null,
          storageAutoResizeLimit: _json.containsKey('storageAutoResizeLimit')
              ? _json['storageAutoResizeLimit'] as core.String
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.String : null,
          userLabels: _json.containsKey('userLabels')
              ? (_json['userLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationPolicy != null) 'activationPolicy': activationPolicy!,
        if (activeDirectoryConfig != null)
          'activeDirectoryConfig': activeDirectoryConfig!,
        if (authorizedGaeApplications != null)
          'authorizedGaeApplications': authorizedGaeApplications!,
        if (availabilityType != null) 'availabilityType': availabilityType!,
        if (backupConfiguration != null)
          'backupConfiguration': backupConfiguration!,
        if (collation != null) 'collation': collation!,
        if (crashSafeReplicationEnabled != null)
          'crashSafeReplicationEnabled': crashSafeReplicationEnabled!,
        if (dataDiskSizeGb != null) 'dataDiskSizeGb': dataDiskSizeGb!,
        if (dataDiskType != null) 'dataDiskType': dataDiskType!,
        if (databaseFlags != null) 'databaseFlags': databaseFlags!,
        if (databaseReplicationEnabled != null)
          'databaseReplicationEnabled': databaseReplicationEnabled!,
        if (denyMaintenancePeriods != null)
          'denyMaintenancePeriods': denyMaintenancePeriods!,
        if (insightsConfig != null) 'insightsConfig': insightsConfig!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kind != null) 'kind': kind!,
        if (locationPreference != null)
          'locationPreference': locationPreference!,
        if (maintenanceWindow != null) 'maintenanceWindow': maintenanceWindow!,
        if (passwordValidationPolicy != null)
          'passwordValidationPolicy': passwordValidationPolicy!,
        if (pricingPlan != null) 'pricingPlan': pricingPlan!,
        if (replicationType != null) 'replicationType': replicationType!,
        if (settingsVersion != null) 'settingsVersion': settingsVersion!,
        if (sqlServerAuditConfig != null)
          'sqlServerAuditConfig': sqlServerAuditConfig!,
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

  SqlActiveDirectoryConfig({
    this.domain,
    this.kind,
  });

  SqlActiveDirectoryConfig.fromJson(core.Map _json)
      : this(
          domain: _json.containsKey('domain')
              ? _json['domain'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (domain != null) 'domain': domain!,
        if (kind != null) 'kind': kind!,
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
  /// - "SQLSERVER_SERVERNAME_MISMATCH" : SQL Server @@SERVERNAME does not match
  /// actual host name
  /// - "PRIMARY_ALREADY_SETUP" : The primary instance has been setup and will
  /// fail the setup.
  /// - "UNSUPPORTED_BINLOG_FORMAT" : The primary instance has unsupported
  /// binary log format.
  /// - "BINLOG_RETENTION_SETTING" : The primary instance's binary log retention
  /// setting.
  /// - "UNSUPPORTED_STORAGE_ENGINE" : The primary instance has tables with
  /// unsupported storage engine.
  core.String? type;

  SqlExternalSyncSettingError({
    this.detail,
    this.kind,
    this.type,
  });

  SqlExternalSyncSettingError.fromJson(core.Map _json)
      : this(
          detail: _json.containsKey('detail')
              ? _json['detail'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

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

  SqlInstancesRescheduleMaintenanceRequestBody({
    this.reschedule,
  });

  SqlInstancesRescheduleMaintenanceRequestBody.fromJson(core.Map _json)
      : this(
          reschedule: _json.containsKey('reschedule')
              ? Reschedule.fromJson(
                  _json['reschedule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reschedule != null) 'reschedule': reschedule!,
      };
}

class SqlInstancesStartExternalSyncRequest {
  /// MySQL-specific settings for start external sync.
  MySqlSyncConfig? mysqlSyncConfig;

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

  SqlInstancesStartExternalSyncRequest({
    this.mysqlSyncConfig,
    this.skipVerification,
    this.syncMode,
  });

  SqlInstancesStartExternalSyncRequest.fromJson(core.Map _json)
      : this(
          mysqlSyncConfig: _json.containsKey('mysqlSyncConfig')
              ? MySqlSyncConfig.fromJson(_json['mysqlSyncConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skipVerification: _json.containsKey('skipVerification')
              ? _json['skipVerification'] as core.bool
              : null,
          syncMode: _json.containsKey('syncMode')
              ? _json['syncMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlSyncConfig != null) 'mysqlSyncConfig': mysqlSyncConfig!,
        if (skipVerification != null) 'skipVerification': skipVerification!,
        if (syncMode != null) 'syncMode': syncMode!,
      };
}

class SqlInstancesVerifyExternalSyncSettingsRequest {
  /// MySQL-specific settings for start external sync.
  ///
  /// Optional.
  MySqlSyncConfig? mysqlSyncConfig;

  /// External sync mode
  /// Possible string values are:
  /// - "EXTERNAL_SYNC_MODE_UNSPECIFIED" : Unknown external sync mode, will be
  /// defaulted to ONLINE mode
  /// - "ONLINE" : Online external sync will set up replication after initial
  /// data external sync
  /// - "OFFLINE" : Offline external sync only dumps and loads a one-time
  /// snapshot of the primary instance's data
  core.String? syncMode;

  /// Flag to enable verifying connection only
  core.bool? verifyConnectionOnly;

  /// Flag to verify settings required by replication setup only
  ///
  /// Optional.
  core.bool? verifyReplicationOnly;

  SqlInstancesVerifyExternalSyncSettingsRequest({
    this.mysqlSyncConfig,
    this.syncMode,
    this.verifyConnectionOnly,
    this.verifyReplicationOnly,
  });

  SqlInstancesVerifyExternalSyncSettingsRequest.fromJson(core.Map _json)
      : this(
          mysqlSyncConfig: _json.containsKey('mysqlSyncConfig')
              ? MySqlSyncConfig.fromJson(_json['mysqlSyncConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          syncMode: _json.containsKey('syncMode')
              ? _json['syncMode'] as core.String
              : null,
          verifyConnectionOnly: _json.containsKey('verifyConnectionOnly')
              ? _json['verifyConnectionOnly'] as core.bool
              : null,
          verifyReplicationOnly: _json.containsKey('verifyReplicationOnly')
              ? _json['verifyReplicationOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlSyncConfig != null) 'mysqlSyncConfig': mysqlSyncConfig!,
        if (syncMode != null) 'syncMode': syncMode!,
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

  SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(core.Map _json)
      : this(
          errors: _json.containsKey('errors')
              ? (_json['errors'] as core.List)
                  .map((value) => SqlExternalSyncSettingError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          warnings: _json.containsKey('warnings')
              ? (_json['warnings'] as core.List)
                  .map((value) => SqlExternalSyncSettingError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
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

  SqlOutOfDiskReport.fromJson(core.Map _json)
      : this(
          sqlMinRecommendedIncreaseSizeGb:
              _json.containsKey('sqlMinRecommendedIncreaseSizeGb')
                  ? _json['sqlMinRecommendedIncreaseSizeGb'] as core.int
                  : null,
          sqlOutOfDiskState: _json.containsKey('sqlOutOfDiskState')
              ? _json['sqlOutOfDiskState'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sqlMinRecommendedIncreaseSizeGb != null)
          'sqlMinRecommendedIncreaseSizeGb': sqlMinRecommendedIncreaseSizeGb!,
        if (sqlOutOfDiskState != null) 'sqlOutOfDiskState': sqlOutOfDiskState!,
      };
}

/// Any scheduled maintenancce for this instance.
class SqlScheduledMaintenance {
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

  SqlScheduledMaintenance.fromJson(core.Map _json)
      : this(
          canDefer: _json.containsKey('canDefer')
              ? _json['canDefer'] as core.bool
              : null,
          canReschedule: _json.containsKey('canReschedule')
              ? _json['canReschedule'] as core.bool
              : null,
          scheduleDeadlineTime: _json.containsKey('scheduleDeadlineTime')
              ? _json['scheduleDeadlineTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
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

  SqlServerAuditConfig.fromJson(core.Map _json)
      : this(
          bucket: _json.containsKey('bucket')
              ? _json['bucket'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          retentionInterval: _json.containsKey('retentionInterval')
              ? _json['retentionInterval'] as core.String
              : null,
          uploadInterval: _json.containsKey('uploadInterval')
              ? _json['uploadInterval'] as core.String
              : null,
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

  SqlServerDatabaseDetails({
    this.compatibilityLevel,
    this.recoveryModel,
  });

  SqlServerDatabaseDetails.fromJson(core.Map _json)
      : this(
          compatibilityLevel: _json.containsKey('compatibilityLevel')
              ? _json['compatibilityLevel'] as core.int
              : null,
          recoveryModel: _json.containsKey('recoveryModel')
              ? _json['recoveryModel'] as core.String
              : null,
        );

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

  SqlServerUserDetails({
    this.disabled,
    this.serverRoles,
  });

  SqlServerUserDetails.fromJson(core.Map _json)
      : this(
          disabled: _json.containsKey('disabled')
              ? _json['disabled'] as core.bool
              : null,
          serverRoles: _json.containsKey('serverRoles')
              ? (_json['serverRoles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

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

  SslCert.fromJson(core.Map _json)
      : this(
          cert: _json.containsKey('cert') ? _json['cert'] as core.String : null,
          certSerialNumber: _json.containsKey('certSerialNumber')
              ? _json['certSerialNumber'] as core.String
              : null,
          commonName: _json.containsKey('commonName')
              ? _json['commonName'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          expirationTime: _json.containsKey('expirationTime')
              ? _json['expirationTime'] as core.String
              : null,
          instance: _json.containsKey('instance')
              ? _json['instance'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          selfLink: _json.containsKey('selfLink')
              ? _json['selfLink'] as core.String
              : null,
          sha1Fingerprint: _json.containsKey('sha1Fingerprint')
              ? _json['sha1Fingerprint'] as core.String
              : null,
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

  SslCertDetail({
    this.certInfo,
    this.certPrivateKey,
  });

  SslCertDetail.fromJson(core.Map _json)
      : this(
          certInfo: _json.containsKey('certInfo')
              ? SslCert.fromJson(
                  _json['certInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          certPrivateKey: _json.containsKey('certPrivateKey')
              ? _json['certPrivateKey'] as core.String
              : null,
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

  SslCertsCreateEphemeralRequest({
    this.accessToken,
    this.publicKey,
  });

  SslCertsCreateEphemeralRequest.fromJson(core.Map _json)
      : this(
          accessToken: _json.containsKey('access_token')
              ? _json['access_token'] as core.String
              : null,
          publicKey: _json.containsKey('public_key')
              ? _json['public_key'] as core.String
              : null,
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

  SslCertsInsertRequest({
    this.commonName,
  });

  SslCertsInsertRequest.fromJson(core.Map _json)
      : this(
          commonName: _json.containsKey('commonName')
              ? _json['commonName'] as core.String
              : null,
        );

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

  SslCertsInsertResponse.fromJson(core.Map _json)
      : this(
          clientCert: _json.containsKey('clientCert')
              ? SslCertDetail.fromJson(
                  _json['clientCert'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          operation: _json.containsKey('operation')
              ? Operation.fromJson(
                  _json['operation'] as core.Map<core.String, core.dynamic>)
              : null,
          serverCaCert: _json.containsKey('serverCaCert')
              ? SslCert.fromJson(
                  _json['serverCaCert'] as core.Map<core.String, core.dynamic>)
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

  SslCertsListResponse({
    this.items,
    this.kind,
  });

  SslCertsListResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => SslCert.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
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

  SyncFlags({
    this.name,
    this.value,
  });

  SyncFlags.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          value:
              _json.containsKey('value') ? _json['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
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

  Tier({
    this.DiskQuota,
    this.RAM,
    this.kind,
    this.region,
    this.tier,
  });

  Tier.fromJson(core.Map _json)
      : this(
          DiskQuota: _json.containsKey('DiskQuota')
              ? _json['DiskQuota'] as core.String
              : null,
          RAM: _json.containsKey('RAM') ? _json['RAM'] as core.String : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          region: _json.containsKey('region')
              ? (_json['region'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tier: _json.containsKey('tier') ? _json['tier'] as core.String : null,
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

  TiersListResponse({
    this.items,
    this.kind,
  });

  TiersListResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => Tier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
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

  TruncateLogContext({
    this.kind,
    this.logType,
  });

  TruncateLogContext.fromJson(core.Map _json)
      : this(
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          logType: _json.containsKey('logType')
              ? _json['logType'] as core.String
              : null,
        );

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

  /// The host from which the user can connect.
  ///
  /// For `insert` operations, host defaults to an empty string. For `update`
  /// operations, host is specified as part of the request URL. The host name
  /// cannot be updated after insertion. For a MySQL instance, it's required;
  /// for a PostgreSQL or SQL Server instance, it's optional.
  ///
  /// Optional.
  core.String? host;

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
  core.String? type;

  User({
    this.etag,
    this.host,
    this.instance,
    this.kind,
    this.name,
    this.password,
    this.passwordPolicy,
    this.project,
    this.sqlserverUserDetails,
    this.type,
  });

  User.fromJson(core.Map _json)
      : this(
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          host: _json.containsKey('host') ? _json['host'] as core.String : null,
          instance: _json.containsKey('instance')
              ? _json['instance'] as core.String
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          password: _json.containsKey('password')
              ? _json['password'] as core.String
              : null,
          passwordPolicy: _json.containsKey('passwordPolicy')
              ? UserPasswordValidationPolicy.fromJson(_json['passwordPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
          sqlserverUserDetails: _json.containsKey('sqlserverUserDetails')
              ? SqlServerUserDetails.fromJson(_json['sqlserverUserDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (etag != null) 'etag': etag!,
        if (host != null) 'host': host!,
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

  /// Expiration duration after password is updated.
  core.String? passwordExpirationDuration;

  /// Read-only password status.
  ///
  /// Output only.
  PasswordStatus? status;

  UserPasswordValidationPolicy({
    this.allowedFailedAttempts,
    this.enableFailedAttemptsCheck,
    this.passwordExpirationDuration,
    this.status,
  });

  UserPasswordValidationPolicy.fromJson(core.Map _json)
      : this(
          allowedFailedAttempts: _json.containsKey('allowedFailedAttempts')
              ? _json['allowedFailedAttempts'] as core.int
              : null,
          enableFailedAttemptsCheck:
              _json.containsKey('enableFailedAttemptsCheck')
                  ? _json['enableFailedAttemptsCheck'] as core.bool
                  : null,
          passwordExpirationDuration:
              _json.containsKey('passwordExpirationDuration')
                  ? _json['passwordExpirationDuration'] as core.String
                  : null,
          status: _json.containsKey('status')
              ? PasswordStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedFailedAttempts != null)
          'allowedFailedAttempts': allowedFailedAttempts!,
        if (enableFailedAttemptsCheck != null)
          'enableFailedAttemptsCheck': enableFailedAttemptsCheck!,
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

  /// An identifier that uniquely identifies the operation.
  ///
  /// You can use this identifier to retrieve the Operations resource that has
  /// information about the operation.
  core.String? nextPageToken;

  UsersListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  UsersListResponse.fromJson(core.Map _json)
      : this(
          items: _json.containsKey('items')
              ? (_json['items'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
