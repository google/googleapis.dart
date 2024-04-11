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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (databaseVersion != null) 'databaseVersion': [databaseVersion],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'sql/v1beta4/flags';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FlagsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class InstancesResource {
  final commons.ApiRequester _requester;

  InstancesResource(commons.ApiRequester client) : _requester = client;

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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
  }

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances/' +
        commons.escapeVariable('$instance');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DatabaseInstance.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/instances';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return InstancesListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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
  /// [failover_1] - Set to true if the promote operation should attempt to
  /// re-add the original primary as a replica when it comes back online.
  /// Otherwise, if this value is false or not set, the original primary will be
  /// a standalone instance.
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

  /// Switches over from the primary instance to a replica instance.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the replica.
  ///
  /// [instance] - Cloud SQL read replica instance name.
  ///
  /// [dbTimeout] - Optional. (MySQL only) Cloud SQL instance operations
  /// timeout, which is a sum of all database operations. Default value is 10
  /// minutes and can be modified to a maximum value of 24 hours.
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
        commons.escapeVariable('$project') +
        '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OperationsListResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get Latest Recovery Time for a given instance.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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

    final url_ = 'sql/v1beta4/projects/' +
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
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'sql/v1beta4/projects/' +
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

  AclEntry({
    this.expirationTime,
    this.kind,
    this.name,
    this.value,
  });

  AclEntry.fromJson(core.Map json_)
      : this(
          expirationTime: json_.containsKey('expirationTime')
              ? json_['expirationTime'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          reportDatabase: json_.containsKey('reportDatabase')
              ? json_['reportDatabase'] as core.String
              : null,
          serviceLogin: json_.containsKey('serviceLogin')
              ? json_['serviceLogin'] as core.String
              : null,
          setupLogin: json_.containsKey('setupLogin')
              ? json_['setupLogin'] as core.String
              : null,
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

  AdvancedMachineFeatures({
    this.threadsPerCore,
  });

  AdvancedMachineFeatures.fromJson(core.Map json_)
      : this(
          threadsPerCore: json_.containsKey('threadsPerCore')
              ? json_['threadsPerCore'] as core.int
              : null,
        );

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

  ApiWarning({
    this.code,
    this.message,
    this.region,
  });

  ApiWarning.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
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
  /// - "DISK" : The transaction logs for the instance are stored on a data
  /// disk.
  /// - "SWITCHING_TO_CLOUD_STORAGE" : The transaction logs for the instance are
  /// switching from being stored on a data disk to being stored in Cloud
  /// Storage.
  /// - "SWITCHED_TO_CLOUD_STORAGE" : The transaction logs for the instance are
  /// now stored in Cloud Storage. Previously, they were stored on a data disk.
  /// - "CLOUD_STORAGE" : The transaction logs for the instance are stored in
  /// Cloud Storage.
  core.String? transactionalLogStorageState;

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
    this.transactionalLogStorageState,
  });

  BackupConfiguration.fromJson(core.Map json_)
      : this(
          backupRetentionSettings: json_.containsKey('backupRetentionSettings')
              ? BackupRetentionSettings.fromJson(
                  json_['backupRetentionSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          binaryLogEnabled: json_.containsKey('binaryLogEnabled')
              ? json_['binaryLogEnabled'] as core.bool
              : null,
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          pointInTimeRecoveryEnabled:
              json_.containsKey('pointInTimeRecoveryEnabled')
                  ? json_['pointInTimeRecoveryEnabled'] as core.bool
                  : null,
          replicationLogArchivingEnabled:
              json_.containsKey('replicationLogArchivingEnabled')
                  ? json_['replicationLogArchivingEnabled'] as core.bool
                  : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          transactionLogRetentionDays:
              json_.containsKey('transactionLogRetentionDays')
                  ? json_['transactionLogRetentionDays'] as core.int
                  : null,
          transactionalLogStorageState:
              json_.containsKey('transactionalLogStorageState')
                  ? json_['transactionalLogStorageState'] as core.String
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

  BackupContext({
    this.backupId,
    this.kind,
  });

  BackupContext.fromJson(core.Map json_)
      : this(
          backupId: json_.containsKey('backupId')
              ? json_['backupId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupId != null) 'backupId': backupId!,
        if (kind != null) 'kind': kind!,
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

  BackupReencryptionConfig({
    this.backupLimit,
    this.backupType,
  });

  BackupReencryptionConfig.fromJson(core.Map json_)
      : this(
          backupLimit: json_.containsKey('backupLimit')
              ? json_['backupLimit'] as core.int
              : null,
          backupType: json_.containsKey('backupType')
              ? json_['backupType'] as core.String
              : null,
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

  BackupRetentionSettings({
    this.retainedBackups,
    this.retentionUnit,
  });

  BackupRetentionSettings.fromJson(core.Map json_)
      : this(
          retainedBackups: json_.containsKey('retainedBackups')
              ? json_['retainedBackups'] as core.int
              : null,
          retentionUnit: json_.containsKey('retentionUnit')
              ? json_['retentionUnit'] as core.String
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
    this.timeZone,
    this.type,
    this.windowStartTime,
  });

  BackupRun.fromJson(core.Map json_)
      : this(
          backupKind: json_.containsKey('backupKind')
              ? json_['backupKind'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          diskEncryptionConfiguration:
              json_.containsKey('diskEncryptionConfiguration')
                  ? DiskEncryptionConfiguration.fromJson(
                      json_['diskEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          diskEncryptionStatus: json_.containsKey('diskEncryptionStatus')
              ? DiskEncryptionStatus.fromJson(json_['diskEncryptionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          enqueuedTime: json_.containsKey('enqueuedTime')
              ? json_['enqueuedTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? OperationError.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          instance: json_.containsKey('instance')
              ? json_['instance'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          windowStartTime: json_.containsKey('windowStartTime')
              ? json_['windowStartTime'] as core.String
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

  BackupRunsListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  BackupRunsListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => BackupRun.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  BinLogCoordinates.fromJson(core.Map json_)
      : this(
          binLogFileName: json_.containsKey('binLogFileName')
              ? json_['binLogFileName'] as core.String
              : null,
          binLogPosition: json_.containsKey('binLogPosition')
              ? json_['binLogPosition'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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

  /// (Point-in-time recovery for PostgreSQL only) Clone to an instance in the
  /// specified zone.
  ///
  /// If no zone is specified, clone to the same zone as the source instance.
  ///
  /// Optional.
  core.String? preferredZone;

  CloneContext({
    this.allocatedIpRange,
    this.binLogCoordinates,
    this.databaseNames,
    this.destinationInstanceName,
    this.kind,
    this.pitrTimestampMs,
    this.pointInTime,
    this.preferredZone,
  });

  CloneContext.fromJson(core.Map json_)
      : this(
          allocatedIpRange: json_.containsKey('allocatedIpRange')
              ? json_['allocatedIpRange'] as core.String
              : null,
          binLogCoordinates: json_.containsKey('binLogCoordinates')
              ? BinLogCoordinates.fromJson(json_['binLogCoordinates']
                  as core.Map<core.String, core.dynamic>)
              : null,
          databaseNames: json_.containsKey('databaseNames')
              ? (json_['databaseNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          destinationInstanceName: json_.containsKey('destinationInstanceName')
              ? json_['destinationInstanceName'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          pitrTimestampMs: json_.containsKey('pitrTimestampMs')
              ? json_['pitrTimestampMs'] as core.String
              : null,
          pointInTime: json_.containsKey('pointInTime')
              ? json_['pointInTime'] as core.String
              : null,
          preferredZone: json_.containsKey('preferredZone')
              ? json_['preferredZone'] as core.String
              : null,
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
        if (preferredZone != null) 'preferredZone': preferredZone!,
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
  /// - "MYSQL_8_0_38" : The database major version is MySQL 8.0 and the minor
  /// version is 38.
  /// - "MYSQL_8_0_39" : The database major version is MySQL 8.0 and the minor
  /// version is 39.
  /// - "MYSQL_8_0_40" : The database major version is MySQL 8.0 and the minor
  /// version is 40.
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

  /// The assigned IP addresses for the instance.
  core.List<IpMapping>? ipAddresses;

  /// This is always `sql#connectSettings`.
  core.String? kind;

  /// Whether PSC connectivity is enabled for this instance.
  core.bool? pscEnabled;

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
    this.dnsName,
    this.ipAddresses,
    this.kind,
    this.pscEnabled,
    this.region,
    this.serverCaCert,
  });

  ConnectSettings.fromJson(core.Map json_)
      : this(
          backendType: json_.containsKey('backendType')
              ? json_['backendType'] as core.String
              : null,
          databaseVersion: json_.containsKey('databaseVersion')
              ? json_['databaseVersion'] as core.String
              : null,
          dnsName: json_.containsKey('dnsName')
              ? json_['dnsName'] as core.String
              : null,
          ipAddresses: json_.containsKey('ipAddresses')
              ? (json_['ipAddresses'] as core.List)
                  .map((value) => IpMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          pscEnabled: json_.containsKey('pscEnabled')
              ? json_['pscEnabled'] as core.bool
              : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
          serverCaCert: json_.containsKey('serverCaCert')
              ? SslCert.fromJson(
                  json_['serverCaCert'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backendType != null) 'backendType': backendType!,
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (dnsName != null) 'dnsName': dnsName!,
        if (ipAddresses != null) 'ipAddresses': ipAddresses!,
        if (kind != null) 'kind': kind!,
        if (pscEnabled != null) 'pscEnabled': pscEnabled!,
        if (region != null) 'region': region!,
        if (serverCaCert != null) 'serverCaCert': serverCaCert!,
      };
}

/// Data cache configurations.
class DataCacheConfig {
  /// Whether data cache is enabled for the instance.
  core.bool? dataCacheEnabled;

  DataCacheConfig({
    this.dataCacheEnabled,
  });

  DataCacheConfig.fromJson(core.Map json_)
      : this(
          dataCacheEnabled: json_.containsKey('dataCacheEnabled')
              ? json_['dataCacheEnabled'] as core.bool
              : null,
        );

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
          charset: json_.containsKey('charset')
              ? json_['charset'] as core.String
              : null,
          collation: json_.containsKey('collation')
              ? json_['collation'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          instance: json_.containsKey('instance')
              ? json_['instance'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          sqlserverDatabaseDetails:
              json_.containsKey('sqlserverDatabaseDetails')
                  ? SqlServerDatabaseDetails.fromJson(
                      json_['sqlserverDatabaseDetails']
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

  DatabaseFlags.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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

  DatabaseInstanceFailoverReplica.fromJson(core.Map json_)
      : this(
          available: json_.containsKey('available')
              ? json_['available'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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
  /// - "MYSQL_8_0_38" : The database major version is MySQL 8.0 and the minor
  /// version is 38.
  /// - "MYSQL_8_0_39" : The database major version is MySQL 8.0 and the minor
  /// version is 39.
  /// - "MYSQL_8_0_40" : The database major version is MySQL 8.0 and the minor
  /// version is 40.
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

  /// The pair of a primary instance and disaster recovery (DR) replica.
  ///
  /// A DR replica is a cross-region replica that you designate for failover in
  /// the event that the primary instance has regional failure.
  ReplicationCluster? replicationCluster;

  /// Initial root password.
  ///
  /// Use only on creation. You must set root passwords before you can connect
  /// to PostgreSQL instances.
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
  core.String? state;

  /// If the instance state is SUSPENDED, the reason for the suspension.
  core.List<core.String>? suspensionReason;

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
    this.etag,
    this.failoverReplica,
    this.gceZone,
    this.geminiConfig,
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
    this.primaryDnsName,
    this.project,
    this.pscServiceAttachmentLink,
    this.region,
    this.replicaConfiguration,
    this.replicaNames,
    this.replicationCluster,
    this.rootPassword,
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
    this.writeEndpoint,
  });

  DatabaseInstance.fromJson(core.Map json_)
      : this(
          availableMaintenanceVersions:
              json_.containsKey('availableMaintenanceVersions')
                  ? (json_['availableMaintenanceVersions'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          backendType: json_.containsKey('backendType')
              ? json_['backendType'] as core.String
              : null,
          connectionName: json_.containsKey('connectionName')
              ? json_['connectionName'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          currentDiskSize: json_.containsKey('currentDiskSize')
              ? json_['currentDiskSize'] as core.String
              : null,
          databaseInstalledVersion:
              json_.containsKey('databaseInstalledVersion')
                  ? json_['databaseInstalledVersion'] as core.String
                  : null,
          databaseVersion: json_.containsKey('databaseVersion')
              ? json_['databaseVersion'] as core.String
              : null,
          diskEncryptionConfiguration:
              json_.containsKey('diskEncryptionConfiguration')
                  ? DiskEncryptionConfiguration.fromJson(
                      json_['diskEncryptionConfiguration']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          diskEncryptionStatus: json_.containsKey('diskEncryptionStatus')
              ? DiskEncryptionStatus.fromJson(json_['diskEncryptionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dnsName: json_.containsKey('dnsName')
              ? json_['dnsName'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          failoverReplica: json_.containsKey('failoverReplica')
              ? DatabaseInstanceFailoverReplica.fromJson(
                  json_['failoverReplica']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gceZone: json_.containsKey('gceZone')
              ? json_['gceZone'] as core.String
              : null,
          geminiConfig: json_.containsKey('geminiConfig')
              ? GeminiInstanceConfig.fromJson(
                  json_['geminiConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          instanceType: json_.containsKey('instanceType')
              ? json_['instanceType'] as core.String
              : null,
          ipAddresses: json_.containsKey('ipAddresses')
              ? (json_['ipAddresses'] as core.List)
                  .map((value) => IpMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          ipv6Address: json_.containsKey('ipv6Address')
              ? json_['ipv6Address'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          maintenanceVersion: json_.containsKey('maintenanceVersion')
              ? json_['maintenanceVersion'] as core.String
              : null,
          masterInstanceName: json_.containsKey('masterInstanceName')
              ? json_['masterInstanceName'] as core.String
              : null,
          maxDiskSize: json_.containsKey('maxDiskSize')
              ? json_['maxDiskSize'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          onPremisesConfiguration: json_.containsKey('onPremisesConfiguration')
              ? OnPremisesConfiguration.fromJson(
                  json_['onPremisesConfiguration']
                      as core.Map<core.String, core.dynamic>)
              : null,
          outOfDiskReport: json_.containsKey('outOfDiskReport')
              ? SqlOutOfDiskReport.fromJson(json_['outOfDiskReport']
                  as core.Map<core.String, core.dynamic>)
              : null,
          primaryDnsName: json_.containsKey('primaryDnsName')
              ? json_['primaryDnsName'] as core.String
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          pscServiceAttachmentLink:
              json_.containsKey('pscServiceAttachmentLink')
                  ? json_['pscServiceAttachmentLink'] as core.String
                  : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
          replicaConfiguration: json_.containsKey('replicaConfiguration')
              ? ReplicaConfiguration.fromJson(json_['replicaConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          replicaNames: json_.containsKey('replicaNames')
              ? (json_['replicaNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          replicationCluster: json_.containsKey('replicationCluster')
              ? ReplicationCluster.fromJson(json_['replicationCluster']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rootPassword: json_.containsKey('rootPassword')
              ? json_['rootPassword'] as core.String
              : null,
          satisfiesPzs: json_.containsKey('satisfiesPzs')
              ? json_['satisfiesPzs'] as core.bool
              : null,
          scheduledMaintenance: json_.containsKey('scheduledMaintenance')
              ? SqlScheduledMaintenance.fromJson(json_['scheduledMaintenance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          secondaryGceZone: json_.containsKey('secondaryGceZone')
              ? json_['secondaryGceZone'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          serverCaCert: json_.containsKey('serverCaCert')
              ? SslCert.fromJson(
                  json_['serverCaCert'] as core.Map<core.String, core.dynamic>)
              : null,
          serviceAccountEmailAddress:
              json_.containsKey('serviceAccountEmailAddress')
                  ? json_['serviceAccountEmailAddress'] as core.String
                  : null,
          settings: json_.containsKey('settings')
              ? Settings.fromJson(
                  json_['settings'] as core.Map<core.String, core.dynamic>)
              : null,
          sqlNetworkArchitecture: json_.containsKey('sqlNetworkArchitecture')
              ? json_['sqlNetworkArchitecture'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          suspensionReason: json_.containsKey('suspensionReason')
              ? (json_['suspensionReason'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          writeEndpoint: json_.containsKey('writeEndpoint')
              ? json_['writeEndpoint'] as core.String
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
        if (dnsName != null) 'dnsName': dnsName!,
        if (etag != null) 'etag': etag!,
        if (failoverReplica != null) 'failoverReplica': failoverReplica!,
        if (gceZone != null) 'gceZone': gceZone!,
        if (geminiConfig != null) 'geminiConfig': geminiConfig!,
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
        if (primaryDnsName != null) 'primaryDnsName': primaryDnsName!,
        if (project != null) 'project': project!,
        if (pscServiceAttachmentLink != null)
          'pscServiceAttachmentLink': pscServiceAttachmentLink!,
        if (region != null) 'region': region!,
        if (replicaConfiguration != null)
          'replicaConfiguration': replicaConfiguration!,
        if (replicaNames != null) 'replicaNames': replicaNames!,
        if (replicationCluster != null)
          'replicationCluster': replicationCluster!,
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
        if (sqlNetworkArchitecture != null)
          'sqlNetworkArchitecture': sqlNetworkArchitecture!,
        if (state != null) 'state': state!,
        if (suspensionReason != null) 'suspensionReason': suspensionReason!,
        if (writeEndpoint != null) 'writeEndpoint': writeEndpoint!,
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

  DatabasesListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Database.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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

  DemoteContext({
    this.kind,
    this.sourceRepresentativeInstanceName,
  });

  DemoteContext.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          sourceRepresentativeInstanceName:
              json_.containsKey('sourceRepresentativeInstanceName')
                  ? json_['sourceRepresentativeInstanceName'] as core.String
                  : null,
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

  DemoteMasterConfiguration({
    this.kind,
    this.mysqlReplicaConfiguration,
  });

  DemoteMasterConfiguration.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mysqlReplicaConfiguration:
              json_.containsKey('mysqlReplicaConfiguration')
                  ? DemoteMasterMySqlReplicaConfiguration.fromJson(
                      json_['mysqlReplicaConfiguration']
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

  DemoteMasterContext.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          masterInstanceName: json_.containsKey('masterInstanceName')
              ? json_['masterInstanceName'] as core.String
              : null,
          replicaConfiguration: json_.containsKey('replicaConfiguration')
              ? DemoteMasterConfiguration.fromJson(json_['replicaConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skipReplicationSetup: json_.containsKey('skipReplicationSetup')
              ? json_['skipReplicationSetup'] as core.bool
              : null,
          verifyGtidConsistency: json_.containsKey('verifyGtidConsistency')
              ? json_['verifyGtidConsistency'] as core.bool
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

  DemoteMasterMySqlReplicaConfiguration.fromJson(core.Map json_)
      : this(
          caCertificate: json_.containsKey('caCertificate')
              ? json_['caCertificate'] as core.String
              : null,
          clientCertificate: json_.containsKey('clientCertificate')
              ? json_['clientCertificate'] as core.String
              : null,
          clientKey: json_.containsKey('clientKey')
              ? json_['clientKey'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
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

  DenyMaintenancePeriod.fromJson(core.Map json_)
      : this(
          endDate: json_.containsKey('endDate')
              ? json_['endDate'] as core.String
              : null,
          startDate: json_.containsKey('startDate')
              ? json_['startDate'] as core.String
              : null,
          time: json_.containsKey('time') ? json_['time'] as core.String : null,
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

  DiskEncryptionConfiguration.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
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

  DiskEncryptionStatus.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          kmsKeyVersionName: json_.containsKey('kmsKeyVersionName')
              ? json_['kmsKeyVersionName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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
    this.stripeCount,
    this.striped,
  });

  ExportContextBakExportOptions.fromJson(core.Map json_)
      : this(
          bakType: json_.containsKey('bakType')
              ? json_['bakType'] as core.String
              : null,
          copyOnly: json_.containsKey('copyOnly')
              ? json_['copyOnly'] as core.bool
              : null,
          differentialBase: json_.containsKey('differentialBase')
              ? json_['differentialBase'] as core.bool
              : null,
          stripeCount: json_.containsKey('stripeCount')
              ? json_['stripeCount'] as core.int
              : null,
          striped: json_.containsKey('striped')
              ? json_['striped'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bakType != null) 'bakType': bakType!,
        if (copyOnly != null) 'copyOnly': copyOnly!,
        if (differentialBase != null) 'differentialBase': differentialBase!,
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
          escapeCharacter: json_.containsKey('escapeCharacter')
              ? json_['escapeCharacter'] as core.String
              : null,
          fieldsTerminatedBy: json_.containsKey('fieldsTerminatedBy')
              ? json_['fieldsTerminatedBy'] as core.String
              : null,
          linesTerminatedBy: json_.containsKey('linesTerminatedBy')
              ? json_['linesTerminatedBy'] as core.String
              : null,
          quoteCharacter: json_.containsKey('quoteCharacter')
              ? json_['quoteCharacter'] as core.String
              : null,
          selectQuery: json_.containsKey('selectQuery')
              ? json_['selectQuery'] as core.String
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

  ExportContextSqlExportOptionsMysqlExportOptions.fromJson(core.Map json_)
      : this(
          masterData: json_.containsKey('masterData')
              ? json_['masterData'] as core.int
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

  /// Whether or not the export should be parallel.
  ///
  /// Optional.
  core.bool? parallel;

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
    this.schemaOnly,
    this.tables,
    this.threads,
  });

  ExportContextSqlExportOptions.fromJson(core.Map json_)
      : this(
          mysqlExportOptions: json_.containsKey('mysqlExportOptions')
              ? ExportContextSqlExportOptionsMysqlExportOptions.fromJson(
                  json_['mysqlExportOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          parallel: json_.containsKey('parallel')
              ? json_['parallel'] as core.bool
              : null,
          schemaOnly: json_.containsKey('schemaOnly')
              ? json_['schemaOnly'] as core.bool
              : null,
          tables: json_.containsKey('tables')
              ? (json_['tables'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          threads: json_.containsKey('threads')
              ? json_['threads'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mysqlExportOptions != null)
          'mysqlExportOptions': mysqlExportOptions!,
        if (parallel != null) 'parallel': parallel!,
        if (schemaOnly != null) 'schemaOnly': schemaOnly!,
        if (tables != null) 'tables': tables!,
        if (threads != null) 'threads': threads!,
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
    this.bakExportOptions,
    this.csvExportOptions,
    this.databases,
    this.fileType,
    this.kind,
    this.offload,
    this.sqlExportOptions,
    this.uri,
  });

  ExportContext.fromJson(core.Map json_)
      : this(
          bakExportOptions: json_.containsKey('bakExportOptions')
              ? ExportContextBakExportOptions.fromJson(json_['bakExportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          csvExportOptions: json_.containsKey('csvExportOptions')
              ? ExportContextCsvExportOptions.fromJson(json_['csvExportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          databases: json_.containsKey('databases')
              ? (json_['databases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileType: json_.containsKey('fileType')
              ? json_['fileType'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          offload: json_.containsKey('offload')
              ? json_['offload'] as core.bool
              : null,
          sqlExportOptions: json_.containsKey('sqlExportOptions')
              ? ExportContextSqlExportOptions.fromJson(json_['sqlExportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bakExportOptions != null) 'bakExportOptions': bakExportOptions!,
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

  FailoverContext.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          settingsVersion: json_.containsKey('settingsVersion')
              ? json_['settingsVersion'] as core.String
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

  Flag.fromJson(core.Map json_)
      : this(
          allowedIntValues: json_.containsKey('allowedIntValues')
              ? (json_['allowedIntValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          allowedStringValues: json_.containsKey('allowedStringValues')
              ? (json_['allowedStringValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          appliesTo: json_.containsKey('appliesTo')
              ? (json_['appliesTo'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inBeta:
              json_.containsKey('inBeta') ? json_['inBeta'] as core.bool : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          maxValue: json_.containsKey('maxValue')
              ? json_['maxValue'] as core.String
              : null,
          minValue: json_.containsKey('minValue')
              ? json_['minValue'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          requiresRestart: json_.containsKey('requiresRestart')
              ? json_['requiresRestart'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  FlagsListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Flag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
      };
}

/// Gemini configuration.
class GeminiInstanceConfig {
  /// Whether active query is enabled.
  ///
  /// Output only.
  core.bool? activeQueryEnabled;

  /// Whether Gemini is enabled.
  ///
  /// Output only.
  core.bool? entitled;

  /// Whether flag recommender is enabled.
  ///
  /// Output only.
  core.bool? flagRecommenderEnabled;

  /// Whether vacuum management is enabled.
  ///
  /// Output only.
  core.bool? googleVacuumMgmtEnabled;

  /// Whether index advisor is enabled.
  ///
  /// Output only.
  core.bool? indexAdvisorEnabled;

  /// Whether oom session cancel is enabled.
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
          activeQueryEnabled: json_.containsKey('activeQueryEnabled')
              ? json_['activeQueryEnabled'] as core.bool
              : null,
          entitled: json_.containsKey('entitled')
              ? json_['entitled'] as core.bool
              : null,
          flagRecommenderEnabled: json_.containsKey('flagRecommenderEnabled')
              ? json_['flagRecommenderEnabled'] as core.bool
              : null,
          googleVacuumMgmtEnabled: json_.containsKey('googleVacuumMgmtEnabled')
              ? json_['googleVacuumMgmtEnabled'] as core.bool
              : null,
          indexAdvisorEnabled: json_.containsKey('indexAdvisorEnabled')
              ? json_['indexAdvisorEnabled'] as core.bool
              : null,
          oomSessionCancelEnabled: json_.containsKey('oomSessionCancelEnabled')
              ? json_['oomSessionCancelEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeQueryEnabled != null)
          'activeQueryEnabled': activeQueryEnabled!,
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
          accessToken: json_.containsKey('access_token')
              ? json_['access_token'] as core.String
              : null,
          publicKey: json_.containsKey('public_key')
              ? json_['public_key'] as core.String
              : null,
          readTime: json_.containsKey('readTime')
              ? json_['readTime'] as core.String
              : null,
          validDuration: json_.containsKey('validDuration')
              ? json_['validDuration'] as core.String
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

  GenerateEphemeralCertResponse.fromJson(core.Map json_)
      : this(
          ephemeralCert: json_.containsKey('ephemeralCert')
              ? SslCert.fromJson(
                  json_['ephemeralCert'] as core.Map<core.String, core.dynamic>)
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

  ImportContextBakImportOptionsEncryptionOptions.fromJson(core.Map json_)
      : this(
          certPath: json_.containsKey('certPath')
              ? json_['certPath'] as core.String
              : null,
          pvkPassword: json_.containsKey('pvkPassword')
              ? json_['pvkPassword'] as core.String
              : null,
          pvkPath: json_.containsKey('pvkPath')
              ? json_['pvkPath'] as core.String
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
          bakType: json_.containsKey('bakType')
              ? json_['bakType'] as core.String
              : null,
          encryptionOptions: json_.containsKey('encryptionOptions')
              ? ImportContextBakImportOptionsEncryptionOptions.fromJson(
                  json_['encryptionOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          noRecovery: json_.containsKey('noRecovery')
              ? json_['noRecovery'] as core.bool
              : null,
          recoveryOnly: json_.containsKey('recoveryOnly')
              ? json_['recoveryOnly'] as core.bool
              : null,
          stopAt: json_.containsKey('stopAt')
              ? json_['stopAt'] as core.String
              : null,
          stopAtMark: json_.containsKey('stopAtMark')
              ? json_['stopAtMark'] as core.String
              : null,
          striped: json_.containsKey('striped')
              ? json_['striped'] as core.bool
              : null,
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
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          escapeCharacter: json_.containsKey('escapeCharacter')
              ? json_['escapeCharacter'] as core.String
              : null,
          fieldsTerminatedBy: json_.containsKey('fieldsTerminatedBy')
              ? json_['fieldsTerminatedBy'] as core.String
              : null,
          linesTerminatedBy: json_.containsKey('linesTerminatedBy')
              ? json_['linesTerminatedBy'] as core.String
              : null,
          quoteCharacter: json_.containsKey('quoteCharacter')
              ? json_['quoteCharacter'] as core.String
              : null,
          table:
              json_.containsKey('table') ? json_['table'] as core.String : null,
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

/// Options for importing data from SQL statements.
///
/// Optional.
class ImportContextSqlImportOptions {
  /// Whether or not the import should be parallel.
  ///
  /// Optional.
  core.bool? parallel;

  /// The number of threads to use for parallel import.
  ///
  /// Optional.
  core.int? threads;

  ImportContextSqlImportOptions({
    this.parallel,
    this.threads,
  });

  ImportContextSqlImportOptions.fromJson(core.Map json_)
      : this(
          parallel: json_.containsKey('parallel')
              ? json_['parallel'] as core.bool
              : null,
          threads: json_.containsKey('threads')
              ? json_['threads'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parallel != null) 'parallel': parallel!,
        if (threads != null) 'threads': threads!,
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

  /// Options for importing data from SQL statements.
  ///
  /// Optional.
  ImportContextSqlImportOptions? sqlImportOptions;

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
    this.uri,
  });

  ImportContext.fromJson(core.Map json_)
      : this(
          bakImportOptions: json_.containsKey('bakImportOptions')
              ? ImportContextBakImportOptions.fromJson(json_['bakImportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          csvImportOptions: json_.containsKey('csvImportOptions')
              ? ImportContextCsvImportOptions.fromJson(json_['csvImportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          database: json_.containsKey('database')
              ? json_['database'] as core.String
              : null,
          fileType: json_.containsKey('fileType')
              ? json_['fileType'] as core.String
              : null,
          importUser: json_.containsKey('importUser')
              ? json_['importUser'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          sqlImportOptions: json_.containsKey('sqlImportOptions')
              ? ImportContextSqlImportOptions.fromJson(json_['sqlImportOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bakImportOptions != null) 'bakImportOptions': bakImportOptions!,
        if (csvImportOptions != null) 'csvImportOptions': csvImportOptions!,
        if (database != null) 'database': database!,
        if (fileType != null) 'fileType': fileType!,
        if (importUser != null) 'importUser': importUser!,
        if (kind != null) 'kind': kind!,
        if (sqlImportOptions != null) 'sqlImportOptions': sqlImportOptions!,
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

  InsightsConfig.fromJson(core.Map json_)
      : this(
          queryInsightsEnabled: json_.containsKey('queryInsightsEnabled')
              ? json_['queryInsightsEnabled'] as core.bool
              : null,
          queryPlansPerMinute: json_.containsKey('queryPlansPerMinute')
              ? json_['queryPlansPerMinute'] as core.int
              : null,
          queryStringLength: json_.containsKey('queryStringLength')
              ? json_['queryStringLength'] as core.int
              : null,
          recordApplicationTags: json_.containsKey('recordApplicationTags')
              ? json_['recordApplicationTags'] as core.bool
              : null,
          recordClientAddress: json_.containsKey('recordClientAddress')
              ? json_['recordClientAddress'] as core.bool
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

  InstanceReference.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          region: json_.containsKey('region')
              ? json_['region'] as core.String
              : null,
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

  InstancesAcquireSsrsLeaseRequest({
    this.acquireSsrsLeaseContext,
  });

  InstancesAcquireSsrsLeaseRequest.fromJson(core.Map json_)
      : this(
          acquireSsrsLeaseContext: json_.containsKey('acquireSsrsLeaseContext')
              ? AcquireSsrsLeaseContext.fromJson(
                  json_['acquireSsrsLeaseContext']
                      as core.Map<core.String, core.dynamic>)
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

  InstancesCloneRequest({
    this.cloneContext,
  });

  InstancesCloneRequest.fromJson(core.Map json_)
      : this(
          cloneContext: json_.containsKey('cloneContext')
              ? CloneContext.fromJson(
                  json_['cloneContext'] as core.Map<core.String, core.dynamic>)
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

  InstancesDemoteMasterRequest.fromJson(core.Map json_)
      : this(
          demoteMasterContext: json_.containsKey('demoteMasterContext')
              ? DemoteMasterContext.fromJson(json_['demoteMasterContext']
                  as core.Map<core.String, core.dynamic>)
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

  InstancesDemoteRequest({
    this.demoteContext,
  });

  InstancesDemoteRequest.fromJson(core.Map json_)
      : this(
          demoteContext: json_.containsKey('demoteContext')
              ? DemoteContext.fromJson(
                  json_['demoteContext'] as core.Map<core.String, core.dynamic>)
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

  InstancesExportRequest({
    this.exportContext,
  });

  InstancesExportRequest.fromJson(core.Map json_)
      : this(
          exportContext: json_.containsKey('exportContext')
              ? ExportContext.fromJson(
                  json_['exportContext'] as core.Map<core.String, core.dynamic>)
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

  InstancesFailoverRequest.fromJson(core.Map json_)
      : this(
          failoverContext: json_.containsKey('failoverContext')
              ? FailoverContext.fromJson(json_['failoverContext']
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

  InstancesImportRequest.fromJson(core.Map json_)
      : this(
          importContext: json_.containsKey('importContext')
              ? ImportContext.fromJson(
                  json_['importContext'] as core.Map<core.String, core.dynamic>)
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
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => DatabaseInstance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
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

  InstancesListServerCasResponse.fromJson(core.Map json_)
      : this(
          activeVersion: json_.containsKey('activeVersion')
              ? json_['activeVersion'] as core.String
              : null,
          certs: json_.containsKey('certs')
              ? (json_['certs'] as core.List)
                  .map((value) => SslCert.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeVersion != null) 'activeVersion': activeVersion!,
        if (certs != null) 'certs': certs!,
        if (kind != null) 'kind': kind!,
      };
}

/// Database Instance reencrypt request.
class InstancesReencryptRequest {
  /// Configuration specific to backup re-encryption
  BackupReencryptionConfig? backupReencryptionConfig;

  InstancesReencryptRequest({
    this.backupReencryptionConfig,
  });

  InstancesReencryptRequest.fromJson(core.Map json_)
      : this(
          backupReencryptionConfig:
              json_.containsKey('backupReencryptionConfig')
                  ? BackupReencryptionConfig.fromJson(
                      json_['backupReencryptionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupReencryptionConfig != null)
          'backupReencryptionConfig': backupReencryptionConfig!,
      };
}

/// Database instance restore backup request.
class InstancesRestoreBackupRequest {
  /// Parameters required to perform the restore backup operation.
  RestoreBackupContext? restoreBackupContext;

  InstancesRestoreBackupRequest({
    this.restoreBackupContext,
  });

  InstancesRestoreBackupRequest.fromJson(core.Map json_)
      : this(
          restoreBackupContext: json_.containsKey('restoreBackupContext')
              ? RestoreBackupContext.fromJson(json_['restoreBackupContext']
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

  InstancesRotateServerCaRequest.fromJson(core.Map json_)
      : this(
          rotateServerCaContext: json_.containsKey('rotateServerCaContext')
              ? RotateServerCaContext.fromJson(json_['rotateServerCaContext']
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

  InstancesTruncateLogRequest.fromJson(core.Map json_)
      : this(
          truncateLogContext: json_.containsKey('truncateLogContext')
              ? TruncateLogContext.fromJson(json_['truncateLogContext']
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

  /// Specify how SSL/TLS is enforced in database connections.
  ///
  /// If you must use the `require_ssl` flag for backward compatibility, then
  /// only the following value pairs are valid: For PostgreSQL and MySQL: *
  /// `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and `require_ssl=false` *
  /// `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false` *
  /// `ssl_mode=TRUSTED_CLIENT_CERTIFICATE_REQUIRED` and `require_ssl=true` For
  /// SQL Server: * `ssl_mode=ALLOW_UNENCRYPTED_AND_ENCRYPTED` and
  /// `require_ssl=false` * `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=true` The
  /// value of `ssl_mode` gets priority over the value of `require_ssl`. For
  /// example, for the pair `ssl_mode=ENCRYPTED_ONLY` and `require_ssl=false`,
  /// the `ssl_mode=ENCRYPTED_ONLY` means only accept SSL connections, while the
  /// `require_ssl=false` means accept both non-SSL and SSL connections. MySQL
  /// and PostgreSQL databases respect `ssl_mode` in this case and accept only
  /// SSL connections.
  /// Possible string values are:
  /// - "SSL_MODE_UNSPECIFIED" : The SSL mode is unknown.
  /// - "ALLOW_UNENCRYPTED_AND_ENCRYPTED" : Allow non-SSL/non-TLS and SSL/TLS
  /// connections. For SSL/TLS connections, the client certificate won't be
  /// verified. When this value is used, the legacy `require_ssl` flag must be
  /// false or cleared to avoid the conflict between values of two flags.
  /// - "ENCRYPTED_ONLY" : Only allow connections encrypted with SSL/TLS. When
  /// this value is used, the legacy `require_ssl` flag must be false or cleared
  /// to avoid the conflict between values of two flags.
  /// - "TRUSTED_CLIENT_CERTIFICATE_REQUIRED" : Only allow connections encrypted
  /// with SSL/TLS and with valid client certificates. When this value is used,
  /// the legacy `require_ssl` flag must be true or cleared to avoid the
  /// conflict between values of two flags. PostgreSQL clients or users that
  /// connect using IAM database authentication must use either the
  /// [Cloud SQL Auth Proxy](https://cloud.google.com/sql/docs/postgres/connect-auth-proxy)
  /// or
  /// [Cloud SQL Connectors](https://cloud.google.com/sql/docs/postgres/connect-connectors)
  /// to enforce client identity verification. This value is not applicable to
  /// SQL Server.
  core.String? sslMode;

  IpConfiguration({
    this.allocatedIpRange,
    this.authorizedNetworks,
    this.enablePrivatePathForGoogleCloudServices,
    this.ipv4Enabled,
    this.privateNetwork,
    this.pscConfig,
    this.requireSsl,
    this.sslMode,
  });

  IpConfiguration.fromJson(core.Map json_)
      : this(
          allocatedIpRange: json_.containsKey('allocatedIpRange')
              ? json_['allocatedIpRange'] as core.String
              : null,
          authorizedNetworks: json_.containsKey('authorizedNetworks')
              ? (json_['authorizedNetworks'] as core.List)
                  .map((value) => AclEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enablePrivatePathForGoogleCloudServices: json_
                  .containsKey('enablePrivatePathForGoogleCloudServices')
              ? json_['enablePrivatePathForGoogleCloudServices'] as core.bool
              : null,
          ipv4Enabled: json_.containsKey('ipv4Enabled')
              ? json_['ipv4Enabled'] as core.bool
              : null,
          privateNetwork: json_.containsKey('privateNetwork')
              ? json_['privateNetwork'] as core.String
              : null,
          pscConfig: json_.containsKey('pscConfig')
              ? PscConfig.fromJson(
                  json_['pscConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          requireSsl: json_.containsKey('requireSsl')
              ? json_['requireSsl'] as core.bool
              : null,
          sslMode: json_.containsKey('sslMode')
              ? json_['sslMode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allocatedIpRange != null) 'allocatedIpRange': allocatedIpRange!,
        if (authorizedNetworks != null)
          'authorizedNetworks': authorizedNetworks!,
        if (enablePrivatePathForGoogleCloudServices != null)
          'enablePrivatePathForGoogleCloudServices':
              enablePrivatePathForGoogleCloudServices!,
        if (ipv4Enabled != null) 'ipv4Enabled': ipv4Enabled!,
        if (privateNetwork != null) 'privateNetwork': privateNetwork!,
        if (pscConfig != null) 'pscConfig': pscConfig!,
        if (requireSsl != null) 'requireSsl': requireSsl!,
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

  IpMapping({
    this.ipAddress,
    this.timeToRetire,
    this.type,
  });

  IpMapping.fromJson(core.Map json_)
      : this(
          ipAddress: json_.containsKey('ipAddress')
              ? json_['ipAddress'] as core.String
              : null,
          timeToRetire: json_.containsKey('timeToRetire')
              ? json_['timeToRetire'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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
          followGaeApplication: json_.containsKey('followGaeApplication')
              ? json_['followGaeApplication'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          secondaryZone: json_.containsKey('secondaryZone')
              ? json_['secondaryZone'] as core.String
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
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
  /// - "week5" : For instance update that requires a restart, this update track
  /// indicates your instance prefer to let Cloud SQL choose the timing of
  /// restart (within its Maintenance window, if applicable) to be at least 5
  /// weeks after the notification.
  core.String? updateTrack;

  MaintenanceWindow({
    this.day,
    this.hour,
    this.kind,
    this.updateTrack,
  });

  MaintenanceWindow.fromJson(core.Map json_)
      : this(
          day: json_.containsKey('day') ? json_['day'] as core.int : null,
          hour: json_.containsKey('hour') ? json_['hour'] as core.int : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          updateTrack: json_.containsKey('updateTrack')
              ? json_['updateTrack'] as core.String
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

  MySqlReplicaConfiguration.fromJson(core.Map json_)
      : this(
          caCertificate: json_.containsKey('caCertificate')
              ? json_['caCertificate'] as core.String
              : null,
          clientCertificate: json_.containsKey('clientCertificate')
              ? json_['clientCertificate'] as core.String
              : null,
          clientKey: json_.containsKey('clientKey')
              ? json_['clientKey'] as core.String
              : null,
          connectRetryInterval: json_.containsKey('connectRetryInterval')
              ? json_['connectRetryInterval'] as core.int
              : null,
          dumpFilePath: json_.containsKey('dumpFilePath')
              ? json_['dumpFilePath'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          masterHeartbeatPeriod: json_.containsKey('masterHeartbeatPeriod')
              ? json_['masterHeartbeatPeriod'] as core.String
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          sslCipher: json_.containsKey('sslCipher')
              ? json_['sslCipher'] as core.String
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
          verifyServerCertificate: json_.containsKey('verifyServerCertificate')
              ? json_['verifyServerCertificate'] as core.bool
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

  MySqlSyncConfig.fromJson(core.Map json_)
      : this(
          initialSyncFlags: json_.containsKey('initialSyncFlags')
              ? (json_['initialSyncFlags'] as core.List)
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

  OnPremisesConfiguration.fromJson(core.Map json_)
      : this(
          caCertificate: json_.containsKey('caCertificate')
              ? json_['caCertificate'] as core.String
              : null,
          clientCertificate: json_.containsKey('clientCertificate')
              ? json_['clientCertificate'] as core.String
              : null,
          clientKey: json_.containsKey('clientKey')
              ? json_['clientKey'] as core.String
              : null,
          dumpFilePath: json_.containsKey('dumpFilePath')
              ? json_['dumpFilePath'] as core.String
              : null,
          hostPort: json_.containsKey('hostPort')
              ? json_['hostPort'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          sourceInstance: json_.containsKey('sourceInstance')
              ? InstanceReference.fromJson(json_['sourceInstance']
                  as core.Map<core.String, core.dynamic>)
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
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
  /// - "SWITCHOVER" : Switches over to replica instance from primary.
  /// - "ACQUIRE_SSRS_LEASE" : Acquire a lease for the setup of SQL Server
  /// Reporting Services (SSRS).
  /// - "RELEASE_SSRS_LEASE" : Release a lease for the setup of SQL Server
  /// Reporting Services (SSRS).
  /// - "RECONFIGURE_OLD_PRIMARY" : Reconfigures old primary after a promote
  /// replica operation. Effect of a promote operation to the old primary is
  /// executed in this operation, asynchronously from the promote replica
  /// operation executed to the replica.
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
    this.targetId,
    this.targetLink,
    this.targetProject,
    this.user,
  });

  Operation.fromJson(core.Map json_)
      : this(
          acquireSsrsLeaseContext: json_.containsKey('acquireSsrsLeaseContext')
              ? AcquireSsrsLeaseContext.fromJson(
                  json_['acquireSsrsLeaseContext']
                      as core.Map<core.String, core.dynamic>)
              : null,
          apiWarning: json_.containsKey('apiWarning')
              ? ApiWarning.fromJson(
                  json_['apiWarning'] as core.Map<core.String, core.dynamic>)
              : null,
          backupContext: json_.containsKey('backupContext')
              ? BackupContext.fromJson(
                  json_['backupContext'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? OperationErrors.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          exportContext: json_.containsKey('exportContext')
              ? ExportContext.fromJson(
                  json_['exportContext'] as core.Map<core.String, core.dynamic>)
              : null,
          importContext: json_.containsKey('importContext')
              ? ImportContext.fromJson(
                  json_['importContext'] as core.Map<core.String, core.dynamic>)
              : null,
          insertTime: json_.containsKey('insertTime')
              ? json_['insertTime'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          operationType: json_.containsKey('operationType')
              ? json_['operationType'] as core.String
              : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          status: json_.containsKey('status')
              ? json_['status'] as core.String
              : null,
          targetId: json_.containsKey('targetId')
              ? json_['targetId'] as core.String
              : null,
          targetLink: json_.containsKey('targetLink')
              ? json_['targetLink'] as core.String
              : null,
          targetProject: json_.containsKey('targetProject')
              ? json_['targetProject'] as core.String
              : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
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

  OperationError.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
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

  OperationErrors.fromJson(core.Map json_)
      : this(
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => OperationError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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

  OperationsListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
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

  PasswordStatus.fromJson(core.Map json_)
      : this(
          locked:
              json_.containsKey('locked') ? json_['locked'] as core.bool : null,
          passwordExpirationTime: json_.containsKey('passwordExpirationTime')
              ? json_['passwordExpirationTime'] as core.String
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
          complexity: json_.containsKey('complexity')
              ? json_['complexity'] as core.String
              : null,
          disallowCompromisedCredentials:
              json_.containsKey('disallowCompromisedCredentials')
                  ? json_['disallowCompromisedCredentials'] as core.bool
                  : null,
          disallowUsernameSubstring:
              json_.containsKey('disallowUsernameSubstring')
                  ? json_['disallowUsernameSubstring'] as core.bool
                  : null,
          enablePasswordPolicy: json_.containsKey('enablePasswordPolicy')
              ? json_['enablePasswordPolicy'] as core.bool
              : null,
          minLength: json_.containsKey('minLength')
              ? json_['minLength'] as core.int
              : null,
          passwordChangeInterval: json_.containsKey('passwordChangeInterval')
              ? json_['passwordChangeInterval'] as core.String
              : null,
          reuseInterval: json_.containsKey('reuseInterval')
              ? json_['reuseInterval'] as core.int
              : null,
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

  PerformDiskShrinkContext({
    this.targetSizeGb,
  });

  PerformDiskShrinkContext.fromJson(core.Map json_)
      : this(
          targetSizeGb: json_.containsKey('targetSizeGb')
              ? json_['targetSizeGb'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (targetSizeGb != null) 'targetSizeGb': targetSizeGb!,
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

  /// Whether PSC connectivity is enabled for this instance.
  core.bool? pscEnabled;

  PscConfig({
    this.allowedConsumerProjects,
    this.pscEnabled,
  });

  PscConfig.fromJson(core.Map json_)
      : this(
          allowedConsumerProjects: json_.containsKey('allowedConsumerProjects')
              ? (json_['allowedConsumerProjects'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pscEnabled: json_.containsKey('pscEnabled')
              ? json_['pscEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowedConsumerProjects != null)
          'allowedConsumerProjects': allowedConsumerProjects!,
        if (pscEnabled != null) 'pscEnabled': pscEnabled!,
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
          cascadableReplica: json_.containsKey('cascadableReplica')
              ? json_['cascadableReplica'] as core.bool
              : null,
          failoverTarget: json_.containsKey('failoverTarget')
              ? json_['failoverTarget'] as core.bool
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          mysqlReplicaConfiguration:
              json_.containsKey('mysqlReplicaConfiguration')
                  ? MySqlReplicaConfiguration.fromJson(
                      json_['mysqlReplicaConfiguration']
                          as core.Map<core.String, core.dynamic>)
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

/// Primary-DR replica pair
class ReplicationCluster {
  /// read-only field that indicates if the replica is a dr_replica; not set for
  /// a primary.
  ///
  /// Output only.
  core.bool? drReplica;

  /// If the instance is a primary instance, then this field identifies the
  /// disaster recovery (DR) replica.
  ///
  /// A DR replica is an optional configuration for Enterprise Plus edition
  /// instances. If the instance is a read replica, then the field is not set.
  /// Users can set this field to set a designated DR replica for a primary.
  /// Removing this field removes the DR replica.
  ///
  /// Optional.
  core.String? failoverDrReplicaName;

  ReplicationCluster({
    this.drReplica,
    this.failoverDrReplicaName,
  });

  ReplicationCluster.fromJson(core.Map json_)
      : this(
          drReplica: json_.containsKey('drReplica')
              ? json_['drReplica'] as core.bool
              : null,
          failoverDrReplicaName: json_.containsKey('failoverDrReplicaName')
              ? json_['failoverDrReplicaName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (drReplica != null) 'drReplica': drReplica!,
        if (failoverDrReplicaName != null)
          'failoverDrReplicaName': failoverDrReplicaName!,
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

  Reschedule.fromJson(core.Map json_)
      : this(
          rescheduleType: json_.containsKey('rescheduleType')
              ? json_['rescheduleType'] as core.String
              : null,
          scheduleTime: json_.containsKey('scheduleTime')
              ? json_['scheduleTime'] as core.String
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

  RestoreBackupContext.fromJson(core.Map json_)
      : this(
          backupRunId: json_.containsKey('backupRunId')
              ? json_['backupRunId'] as core.String
              : null,
          instanceId: json_.containsKey('instanceId')
              ? json_['instanceId'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
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

  RotateServerCaContext.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextVersion: json_.containsKey('nextVersion')
              ? json_['nextVersion'] as core.String
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

  /// Specifies advance machine configuration for the instance relevant only for
  /// SQL Server.
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

  /// When this parameter is set to true, Cloud SQL instances can connect to
  /// Vertex AI to pass requests for real-time predictions and insights to the
  /// AI.
  ///
  /// The default value is false. This applies only to Cloud SQL for PostgreSQL
  /// instances.
  ///
  /// Optional.
  core.bool? enableGoogleMlIntegration;

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
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
    this.connectorEnforcement,
    this.crashSafeReplicationEnabled,
    this.dataCacheConfig,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseReplicationEnabled,
    this.deletionProtectionEnabled,
    this.denyMaintenancePeriods,
    this.edition,
    this.enableGoogleMlIntegration,
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
    this.timeZone,
    this.userLabels,
  });

  Settings.fromJson(core.Map json_)
      : this(
          activationPolicy: json_.containsKey('activationPolicy')
              ? json_['activationPolicy'] as core.String
              : null,
          activeDirectoryConfig: json_.containsKey('activeDirectoryConfig')
              ? SqlActiveDirectoryConfig.fromJson(json_['activeDirectoryConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          advancedMachineFeatures: json_.containsKey('advancedMachineFeatures')
              ? AdvancedMachineFeatures.fromJson(
                  json_['advancedMachineFeatures']
                      as core.Map<core.String, core.dynamic>)
              : null,
          authorizedGaeApplications:
              json_.containsKey('authorizedGaeApplications')
                  ? (json_['authorizedGaeApplications'] as core.List)
                      .map((value) => value as core.String)
                      .toList()
                  : null,
          availabilityType: json_.containsKey('availabilityType')
              ? json_['availabilityType'] as core.String
              : null,
          backupConfiguration: json_.containsKey('backupConfiguration')
              ? BackupConfiguration.fromJson(json_['backupConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          collation: json_.containsKey('collation')
              ? json_['collation'] as core.String
              : null,
          connectorEnforcement: json_.containsKey('connectorEnforcement')
              ? json_['connectorEnforcement'] as core.String
              : null,
          crashSafeReplicationEnabled:
              json_.containsKey('crashSafeReplicationEnabled')
                  ? json_['crashSafeReplicationEnabled'] as core.bool
                  : null,
          dataCacheConfig: json_.containsKey('dataCacheConfig')
              ? DataCacheConfig.fromJson(json_['dataCacheConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataDiskSizeGb: json_.containsKey('dataDiskSizeGb')
              ? json_['dataDiskSizeGb'] as core.String
              : null,
          dataDiskType: json_.containsKey('dataDiskType')
              ? json_['dataDiskType'] as core.String
              : null,
          databaseFlags: json_.containsKey('databaseFlags')
              ? (json_['databaseFlags'] as core.List)
                  .map((value) => DatabaseFlags.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          databaseReplicationEnabled:
              json_.containsKey('databaseReplicationEnabled')
                  ? json_['databaseReplicationEnabled'] as core.bool
                  : null,
          deletionProtectionEnabled:
              json_.containsKey('deletionProtectionEnabled')
                  ? json_['deletionProtectionEnabled'] as core.bool
                  : null,
          denyMaintenancePeriods: json_.containsKey('denyMaintenancePeriods')
              ? (json_['denyMaintenancePeriods'] as core.List)
                  .map((value) => DenyMaintenancePeriod.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          edition: json_.containsKey('edition')
              ? json_['edition'] as core.String
              : null,
          enableGoogleMlIntegration:
              json_.containsKey('enableGoogleMlIntegration')
                  ? json_['enableGoogleMlIntegration'] as core.bool
                  : null,
          insightsConfig: json_.containsKey('insightsConfig')
              ? InsightsConfig.fromJson(json_['insightsConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ipConfiguration: json_.containsKey('ipConfiguration')
              ? IpConfiguration.fromJson(json_['ipConfiguration']
                  as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          locationPreference: json_.containsKey('locationPreference')
              ? LocationPreference.fromJson(json_['locationPreference']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maintenanceWindow: json_.containsKey('maintenanceWindow')
              ? MaintenanceWindow.fromJson(json_['maintenanceWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          passwordValidationPolicy:
              json_.containsKey('passwordValidationPolicy')
                  ? PasswordValidationPolicy.fromJson(
                      json_['passwordValidationPolicy']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          pricingPlan: json_.containsKey('pricingPlan')
              ? json_['pricingPlan'] as core.String
              : null,
          replicationType: json_.containsKey('replicationType')
              ? json_['replicationType'] as core.String
              : null,
          settingsVersion: json_.containsKey('settingsVersion')
              ? json_['settingsVersion'] as core.String
              : null,
          sqlServerAuditConfig: json_.containsKey('sqlServerAuditConfig')
              ? SqlServerAuditConfig.fromJson(json_['sqlServerAuditConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          storageAutoResize: json_.containsKey('storageAutoResize')
              ? json_['storageAutoResize'] as core.bool
              : null,
          storageAutoResizeLimit: json_.containsKey('storageAutoResizeLimit')
              ? json_['storageAutoResizeLimit'] as core.String
              : null,
          tier: json_.containsKey('tier') ? json_['tier'] as core.String : null,
          timeZone: json_.containsKey('timeZone')
              ? json_['timeZone'] as core.String
              : null,
          userLabels: json_.containsKey('userLabels')
              ? (json_['userLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
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
        if (connectorEnforcement != null)
          'connectorEnforcement': connectorEnforcement!,
        if (crashSafeReplicationEnabled != null)
          'crashSafeReplicationEnabled': crashSafeReplicationEnabled!,
        if (dataCacheConfig != null) 'dataCacheConfig': dataCacheConfig!,
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
        if (enableGoogleMlIntegration != null)
          'enableGoogleMlIntegration': enableGoogleMlIntegration!,
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
        if (timeZone != null) 'timeZone': timeZone!,
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

  SqlActiveDirectoryConfig.fromJson(core.Map json_)
      : this(
          domain: json_.containsKey('domain')
              ? json_['domain'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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
  /// to missing primary key or replica identity, applicable for postgres.
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
  core.String? type;

  SqlExternalSyncSettingError({
    this.detail,
    this.kind,
    this.type,
  });

  SqlExternalSyncSettingError.fromJson(core.Map json_)
      : this(
          detail: json_.containsKey('detail')
              ? json_['detail'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
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

  SqlInstancesAcquireSsrsLeaseResponse({
    this.operationId,
  });

  SqlInstancesAcquireSsrsLeaseResponse.fromJson(core.Map json_)
      : this(
          operationId: json_.containsKey('operationId')
              ? json_['operationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationId != null) 'operationId': operationId!,
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
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          minimalTargetSizeGb: json_.containsKey('minimalTargetSizeGb')
              ? json_['minimalTargetSizeGb'] as core.String
              : null,
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
  /// This is always `sql#getLatestRecoveryTime`.
  core.String? kind;

  /// Timestamp, identifies the latest recovery time of the source instance.
  core.String? latestRecoveryTime;

  SqlInstancesGetLatestRecoveryTimeResponse({
    this.kind,
    this.latestRecoveryTime,
  });

  SqlInstancesGetLatestRecoveryTimeResponse.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          latestRecoveryTime: json_.containsKey('latestRecoveryTime')
              ? json_['latestRecoveryTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (latestRecoveryTime != null)
          'latestRecoveryTime': latestRecoveryTime!,
      };
}

/// The response for the release of the SSRS lease.
class SqlInstancesReleaseSsrsLeaseResponse {
  /// The operation ID.
  core.String? operationId;

  SqlInstancesReleaseSsrsLeaseResponse({
    this.operationId,
  });

  SqlInstancesReleaseSsrsLeaseResponse.fromJson(core.Map json_)
      : this(
          operationId: json_.containsKey('operationId')
              ? json_['operationId'] as core.String
              : null,
        );

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

  SqlInstancesRescheduleMaintenanceRequestBody({
    this.reschedule,
  });

  SqlInstancesRescheduleMaintenanceRequestBody.fromJson(core.Map json_)
      : this(
          reschedule: json_.containsKey('reschedule')
              ? Reschedule.fromJson(
                  json_['reschedule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reschedule != null) 'reschedule': reschedule!,
      };
}

/// Instance reset replica size request.
typedef SqlInstancesResetReplicaSizeRequest = $Empty;

class SqlInstancesStartExternalSyncRequest {
  /// MigrationType decides if the migration is a physical file based migration
  /// or logical migration.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MIGRATION_TYPE_UNSPECIFIED" : If no migration type is specified it will
  /// be defaulted to LOGICAL.
  /// - "LOGICAL" : Logical Migrations
  /// - "PHYSICAL" : Physical file based Migrations
  core.String? migrationType;

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
    this.skipVerification,
    this.syncMode,
    this.syncParallelLevel,
  });

  SqlInstancesStartExternalSyncRequest.fromJson(core.Map json_)
      : this(
          migrationType: json_.containsKey('migrationType')
              ? json_['migrationType'] as core.String
              : null,
          mysqlSyncConfig: json_.containsKey('mysqlSyncConfig')
              ? MySqlSyncConfig.fromJson(json_['mysqlSyncConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          skipVerification: json_.containsKey('skipVerification')
              ? json_['skipVerification'] as core.bool
              : null,
          syncMode: json_.containsKey('syncMode')
              ? json_['syncMode'] as core.String
              : null,
          syncParallelLevel: json_.containsKey('syncParallelLevel')
              ? json_['syncParallelLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (migrationType != null) 'migrationType': migrationType!,
        if (mysqlSyncConfig != null) 'mysqlSyncConfig': mysqlSyncConfig!,
        if (skipVerification != null) 'skipVerification': skipVerification!,
        if (syncMode != null) 'syncMode': syncMode!,
        if (syncParallelLevel != null) 'syncParallelLevel': syncParallelLevel!,
      };
}

class SqlInstancesVerifyExternalSyncSettingsRequest {
  /// MigrationType field decides if the migration is a physical file based
  /// migration or logical migration
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MIGRATION_TYPE_UNSPECIFIED" : If no migration type is specified it will
  /// be defaulted to LOGICAL.
  /// - "LOGICAL" : Logical Migrations
  /// - "PHYSICAL" : Physical file based Migrations
  core.String? migrationType;

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

  /// Parallel level for initial data sync.
  ///
  /// Currently only applicable for PostgreSQL.
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
    this.syncMode,
    this.syncParallelLevel,
    this.verifyConnectionOnly,
    this.verifyReplicationOnly,
  });

  SqlInstancesVerifyExternalSyncSettingsRequest.fromJson(core.Map json_)
      : this(
          migrationType: json_.containsKey('migrationType')
              ? json_['migrationType'] as core.String
              : null,
          mysqlSyncConfig: json_.containsKey('mysqlSyncConfig')
              ? MySqlSyncConfig.fromJson(json_['mysqlSyncConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          syncMode: json_.containsKey('syncMode')
              ? json_['syncMode'] as core.String
              : null,
          syncParallelLevel: json_.containsKey('syncParallelLevel')
              ? json_['syncParallelLevel'] as core.String
              : null,
          verifyConnectionOnly: json_.containsKey('verifyConnectionOnly')
              ? json_['verifyConnectionOnly'] as core.bool
              : null,
          verifyReplicationOnly: json_.containsKey('verifyReplicationOnly')
              ? json_['verifyReplicationOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (migrationType != null) 'migrationType': migrationType!,
        if (mysqlSyncConfig != null) 'mysqlSyncConfig': mysqlSyncConfig!,
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
          errors: json_.containsKey('errors')
              ? (json_['errors'] as core.List)
                  .map((value) => SqlExternalSyncSettingError.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          warnings: json_.containsKey('warnings')
              ? (json_['warnings'] as core.List)
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

  SqlOutOfDiskReport.fromJson(core.Map json_)
      : this(
          sqlMinRecommendedIncreaseSizeGb:
              json_.containsKey('sqlMinRecommendedIncreaseSizeGb')
                  ? json_['sqlMinRecommendedIncreaseSizeGb'] as core.int
                  : null,
          sqlOutOfDiskState: json_.containsKey('sqlOutOfDiskState')
              ? json_['sqlOutOfDiskState'] as core.String
              : null,
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
          canDefer: json_.containsKey('canDefer')
              ? json_['canDefer'] as core.bool
              : null,
          canReschedule: json_.containsKey('canReschedule')
              ? json_['canReschedule'] as core.bool
              : null,
          scheduleDeadlineTime: json_.containsKey('scheduleDeadlineTime')
              ? json_['scheduleDeadlineTime'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
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

  SqlServerAuditConfig.fromJson(core.Map json_)
      : this(
          bucket: json_.containsKey('bucket')
              ? json_['bucket'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          retentionInterval: json_.containsKey('retentionInterval')
              ? json_['retentionInterval'] as core.String
              : null,
          uploadInterval: json_.containsKey('uploadInterval')
              ? json_['uploadInterval'] as core.String
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

  SqlServerDatabaseDetails.fromJson(core.Map json_)
      : this(
          compatibilityLevel: json_.containsKey('compatibilityLevel')
              ? json_['compatibilityLevel'] as core.int
              : null,
          recoveryModel: json_.containsKey('recoveryModel')
              ? json_['recoveryModel'] as core.String
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

  SqlServerUserDetails.fromJson(core.Map json_)
      : this(
          disabled: json_.containsKey('disabled')
              ? json_['disabled'] as core.bool
              : null,
          serverRoles: json_.containsKey('serverRoles')
              ? (json_['serverRoles'] as core.List)
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

  SslCert.fromJson(core.Map json_)
      : this(
          cert: json_.containsKey('cert') ? json_['cert'] as core.String : null,
          certSerialNumber: json_.containsKey('certSerialNumber')
              ? json_['certSerialNumber'] as core.String
              : null,
          commonName: json_.containsKey('commonName')
              ? json_['commonName'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          expirationTime: json_.containsKey('expirationTime')
              ? json_['expirationTime'] as core.String
              : null,
          instance: json_.containsKey('instance')
              ? json_['instance'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          selfLink: json_.containsKey('selfLink')
              ? json_['selfLink'] as core.String
              : null,
          sha1Fingerprint: json_.containsKey('sha1Fingerprint')
              ? json_['sha1Fingerprint'] as core.String
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

  SslCertDetail.fromJson(core.Map json_)
      : this(
          certInfo: json_.containsKey('certInfo')
              ? SslCert.fromJson(
                  json_['certInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          certPrivateKey: json_.containsKey('certPrivateKey')
              ? json_['certPrivateKey'] as core.String
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

  SslCertsCreateEphemeralRequest.fromJson(core.Map json_)
      : this(
          accessToken: json_.containsKey('access_token')
              ? json_['access_token'] as core.String
              : null,
          publicKey: json_.containsKey('public_key')
              ? json_['public_key'] as core.String
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

  SslCertsInsertRequest.fromJson(core.Map json_)
      : this(
          commonName: json_.containsKey('commonName')
              ? json_['commonName'] as core.String
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

  SslCertsInsertResponse.fromJson(core.Map json_)
      : this(
          clientCert: json_.containsKey('clientCert')
              ? SslCertDetail.fromJson(
                  json_['clientCert'] as core.Map<core.String, core.dynamic>)
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          operation: json_.containsKey('operation')
              ? Operation.fromJson(
                  json_['operation'] as core.Map<core.String, core.dynamic>)
              : null,
          serverCaCert: json_.containsKey('serverCaCert')
              ? SslCert.fromJson(
                  json_['serverCaCert'] as core.Map<core.String, core.dynamic>)
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

  SslCertsListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => SslCert.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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

  SyncFlags.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
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

  Tier.fromJson(core.Map json_)
      : this(
          DiskQuota: json_.containsKey('DiskQuota')
              ? json_['DiskQuota'] as core.String
              : null,
          RAM: json_.containsKey('RAM') ? json_['RAM'] as core.String : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          region: json_.containsKey('region')
              ? (json_['region'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tier: json_.containsKey('tier') ? json_['tier'] as core.String : null,
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

  TiersListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => Tier.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
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

  TruncateLogContext.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          logType: json_.containsKey('logType')
              ? json_['logType'] as core.String
              : null,
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
  /// - "CLOUD_IAM_GROUP" : Cloud IAM group non-login user.
  /// - "CLOUD_IAM_GROUP_USER" : Cloud IAM group login user.
  /// - "CLOUD_IAM_GROUP_SERVICE_ACCOUNT" : Cloud IAM group service account.
  core.String? type;

  User({
    this.dualPasswordType,
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

  User.fromJson(core.Map json_)
      : this(
          dualPasswordType: json_.containsKey('dualPasswordType')
              ? json_['dualPasswordType'] as core.String
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          instance: json_.containsKey('instance')
              ? json_['instance'] as core.String
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          passwordPolicy: json_.containsKey('passwordPolicy')
              ? UserPasswordValidationPolicy.fromJson(json_['passwordPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          project: json_.containsKey('project')
              ? json_['project'] as core.String
              : null,
          sqlserverUserDetails: json_.containsKey('sqlserverUserDetails')
              ? SqlServerUserDetails.fromJson(json_['sqlserverUserDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dualPasswordType != null) 'dualPasswordType': dualPasswordType!,
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
          allowedFailedAttempts: json_.containsKey('allowedFailedAttempts')
              ? json_['allowedFailedAttempts'] as core.int
              : null,
          enableFailedAttemptsCheck:
              json_.containsKey('enableFailedAttemptsCheck')
                  ? json_['enableFailedAttemptsCheck'] as core.bool
                  : null,
          enablePasswordVerification:
              json_.containsKey('enablePasswordVerification')
                  ? json_['enablePasswordVerification'] as core.bool
                  : null,
          passwordExpirationDuration:
              json_.containsKey('passwordExpirationDuration')
                  ? json_['passwordExpirationDuration'] as core.String
                  : null,
          status: json_.containsKey('status')
              ? PasswordStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
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

  UsersListResponse({
    this.items,
    this.kind,
    this.nextPageToken,
  });

  UsersListResponse.fromJson(core.Map json_)
      : this(
          items: json_.containsKey('items')
              ? (json_['items'] as core.List)
                  .map((value) => User.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          kind: json_.containsKey('kind') ? json_['kind'] as core.String : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
        if (kind != null) 'kind': kind!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}
