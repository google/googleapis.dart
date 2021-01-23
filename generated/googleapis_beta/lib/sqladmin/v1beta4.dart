// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis_beta.sqladmin.v1beta4;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client sqladmin/v1beta4';

/// API for Cloud SQL database instance management
class SqladminApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Manage your Google SQL Service instances
  static const SqlserviceAdminScope =
      'https://www.googleapis.com/auth/sqlservice.admin';

  final commons.ApiRequester _requester;

  BackupRunsResourceApi get backupRuns => BackupRunsResourceApi(_requester);
  DatabasesResourceApi get databases => DatabasesResourceApi(_requester);
  FlagsResourceApi get flags => FlagsResourceApi(_requester);
  InstancesResourceApi get instances => InstancesResourceApi(_requester);
  OperationsResourceApi get operations => OperationsResourceApi(_requester);
  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);
  SslCertsResourceApi get sslCerts => SslCertsResourceApi(_requester);
  TiersResourceApi get tiers => TiersResourceApi(_requester);
  UsersResourceApi get users => UsersResourceApi(_requester);

  SqladminApi(http.Client client,
      {core.String rootUrl = 'https://sqladmin.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class BackupRunsResourceApi {
  final commons.ApiRequester _requester;

  BackupRunsResourceApi(commons.ApiRequester client) : _requester = client;

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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/backupRuns/' +
        commons.Escaper.ecapeVariable('$id');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (id == null) {
      throw core.ArgumentError('Parameter id is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/backupRuns/' +
        commons.Escaper.ecapeVariable('$id');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => BackupRun.fromJson(data));
  }

  /// Creates a new backup run on demand. This method is applicable only to
  /// Second Generation instances.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/backupRuns';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/backupRuns';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => BackupRunsListResponse.fromJson(data));
  }
}

class DatabasesResourceApi {
  final commons.ApiRequester _requester;

  DatabasesResourceApi(commons.ApiRequester client) : _requester = client;

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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (database == null) {
      throw core.ArgumentError('Parameter database is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases/' +
        commons.Escaper.ecapeVariable('$database');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (database == null) {
      throw core.ArgumentError('Parameter database is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases/' +
        commons.Escaper.ecapeVariable('$database');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Database.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => DatabasesListResponse.fromJson(data));
  }

  /// Partially updates a resource containing information about a database
  /// inside a Cloud SQL instance. This method supports patch semantics.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (database == null) {
      throw core.ArgumentError('Parameter database is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases/' +
        commons.Escaper.ecapeVariable('$database');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (database == null) {
      throw core.ArgumentError('Parameter database is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases/' +
        commons.Escaper.ecapeVariable('$database');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class FlagsResourceApi {
  final commons.ApiRequester _requester;

  FlagsResourceApi(commons.ApiRequester client) : _requester = client;

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
    core.String databaseVersion,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (databaseVersion != null) {
      _queryParams['databaseVersion'] = [databaseVersion];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/flags';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => FlagsListResponse.fromJson(data));
  }
}

class InstancesResourceApi {
  final commons.ApiRequester _requester;

  InstancesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Add a new trusted Certificate Authority (CA) version for the specified
  /// instance. Required to prepare for a certificate rotation. If a CA version
  /// was previously added but never used in a certificate rotation, this
  /// operation replaces that version. There cannot be more than one CA version
  /// waiting to be rotated in.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/addServerCa';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Creates a Cloud SQL instance as a clone of the source instance. Using this
  /// operation might cause your instance to restart.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/clone';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/demoteMaster';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/export';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Failover the instance to its failover replica instance. Using this
  /// operation might cause your instance to restart.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/failover';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => DatabaseInstance.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/import';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String filter,
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => InstancesListResponse.fromJson(data));
  }

  /// Lists all of the trusted Certificate Authorities (CAs) for the specified
  /// instance. There can be up to three CAs listed: the CA that was used to
  /// sign the certificate that is currently in use, a CA that has been added
  /// but not yet used to sign a certificate, and a CA used to sign a
  /// certificate that has previously rotated out.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/listServerCas';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response
        .then((data) => InstancesListServerCasResponse.fromJson(data));
  }

  /// Updates settings of a Cloud SQL instance. This method supports patch
  /// semantics.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance');

    final _response = _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Promotes the read replica instance to be a stand-alone Cloud SQL instance.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/promoteReplica';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/resetSslConfig';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/restart';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Restores a backup of a Cloud SQL instance. Using this operation might
  /// cause your instance to restart.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/restoreBackup';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/rotateServerCa';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/startReplica';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/stopReplica';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/truncateLog';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Updates settings of a Cloud SQL instance. Using this operation might cause
  /// your instance to restart.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (operation == null) {
      throw core.ArgumentError('Parameter operation is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/operations/' +
        commons.Escaper.ecapeVariable('$operation');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String instance,
    core.int maxResults,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance != null) {
      _queryParams['instance'] = [instance];
    }
    if (maxResults != null) {
      _queryParams['maxResults'] = ['${maxResults}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => OperationsListResponse.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesResourceApi get instances =>
      ProjectsInstancesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsInstancesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsInstancesResourceApi(commons.ApiRequester client)
      : _requester = client;

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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/rescheduleMaintenance';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Start External primary instance migration.
  ///
  /// Request parameters:
  ///
  /// [project] - ID of the project that contains the instance.
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
    core.String syncMode,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (syncMode != null) {
      _queryParams['syncMode'] = [syncMode];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/startExternalSync';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String syncMode,
    core.bool verifyConnectionOnly,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (syncMode != null) {
      _queryParams['syncMode'] = [syncMode];
    }
    if (verifyConnectionOnly != null) {
      _queryParams['verifyConnectionOnly'] = ['${verifyConnectionOnly}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/verifyExternalSyncSettings';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) =>
        SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(data));
  }
}

class SslCertsResourceApi {
  final commons.ApiRequester _requester;

  SslCertsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Generates a short-lived X509 certificate containing the provided public
  /// key and signed by a private key specific to the target instance. Users may
  /// use the certificate to authenticate as themselves when connecting to the
  /// database.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/createEphemeral';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SslCert.fromJson(data));
  }

  /// Deletes the SSL certificate. For First Generation instances, the
  /// certificate remains valid until the instance is restarted.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (sha1Fingerprint == null) {
      throw core.ArgumentError('Parameter sha1Fingerprint is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/sslCerts/' +
        commons.Escaper.ecapeVariable('$sha1Fingerprint');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }

  /// Retrieves a particular SSL certificate. Does not include the private key
  /// (required for usage). The private key must be saved from the response to
  /// initial creation.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (sha1Fingerprint == null) {
      throw core.ArgumentError('Parameter sha1Fingerprint is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/sslCerts/' +
        commons.Escaper.ecapeVariable('$sha1Fingerprint');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SslCert.fromJson(data));
  }

  /// Creates an SSL certificate and returns it along with the private key and
  /// server certificate authority. The new certificate will not be usable until
  /// the instance is restarted.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/sslCerts';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SslCertsInsertResponse.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/sslCerts';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => SslCertsListResponse.fromJson(data));
  }
}

class TiersResourceApi {
  final commons.ApiRequester _requester;

  TiersResourceApi(commons.ApiRequester client) : _requester = client;

  /// Lists all available machine types (tiers) for Cloud SQL, for example,
  /// db-n1-standard-1. For related information, see Pricing.
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/tiers';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => TiersListResponse.fromJson(data));
  }
}

class UsersResourceApi {
  final commons.ApiRequester _requester;

  UsersResourceApi(commons.ApiRequester client) : _requester = client;

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
    core.String host,
    core.String name,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (host != null) {
      _queryParams['host'] = [host];
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/users';

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/users';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/users';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => UsersListResponse.fromJson(data));
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
    core.String host,
    core.String name,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (project == null) {
      throw core.ArgumentError('Parameter project is required.');
    }
    if (instance == null) {
      throw core.ArgumentError('Parameter instance is required.');
    }
    if (host != null) {
      _queryParams['host'] = [host];
    }
    if (name != null) {
      _queryParams['name'] = [name];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'sql/v1beta4/projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/users';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then((data) => Operation.fromJson(data));
  }
}

/// An entry for an Access Control list.
class AclEntry {
  /// The time when this access control entry expires in RFC 3339 format, for
  /// example *2012-11-15T16:19:00.094Z*.
  core.String expirationTime;

  /// This is always *sql#aclEntry*.
  core.String kind;

  /// Optional. A label to identify this entry.
  core.String name;

  /// The allowlisted value for the access control list.
  core.String value;

  AclEntry();

  AclEntry.fromJson(core.Map _json) {
    if (_json.containsKey('expirationTime')) {
      expirationTime = _json['expirationTime'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('value')) {
      value = _json['value'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (expirationTime != null) {
      _json['expirationTime'] = expirationTime;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// An Admin API warning message.
class ApiWarning {
  /// Code to uniquely identify the warning type.
  /// Possible string values are:
  /// - "SQL_API_WARNING_CODE_UNSPECIFIED" : An unknown or unset warning type
  /// from Cloud SQL API.
  /// - "REGION_UNREACHABLE" : Warning when one or more regions are not
  /// reachable. The returned result set may be incomplete.
  core.String code;

  /// The warning message.
  core.String message;

  ApiWarning();

  ApiWarning.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Database instance backup configuration.
class BackupConfiguration {
  /// Backup retention settings.
  BackupRetentionSettings backupRetentionSettings;

  /// (MySQL only) Whether binary log is enabled. If backup configuration is
  /// disabled, binarylog must be disabled as well.
  core.bool binaryLogEnabled;

  /// Whether this configuration is enabled.
  core.bool enabled;

  /// This is always *sql#backupConfiguration*.
  core.String kind;

  /// Location of the backup
  core.String location;

  /// Reserved for future use.
  core.bool pointInTimeRecoveryEnabled;

  /// Reserved for future use.
  core.bool replicationLogArchivingEnabled;

  /// Start time for the daily backup configuration in UTC timezone in the 24
  /// hour format - *HH:MM*.
  core.String startTime;

  /// The number of days of transaction logs we retain for point in time
  /// restore, from 1-7.
  core.int transactionLogRetentionDays;

  BackupConfiguration();

  BackupConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('backupRetentionSettings')) {
      backupRetentionSettings =
          BackupRetentionSettings.fromJson(_json['backupRetentionSettings']);
    }
    if (_json.containsKey('binaryLogEnabled')) {
      binaryLogEnabled = _json['binaryLogEnabled'];
    }
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('pointInTimeRecoveryEnabled')) {
      pointInTimeRecoveryEnabled = _json['pointInTimeRecoveryEnabled'];
    }
    if (_json.containsKey('replicationLogArchivingEnabled')) {
      replicationLogArchivingEnabled = _json['replicationLogArchivingEnabled'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
    if (_json.containsKey('transactionLogRetentionDays')) {
      transactionLogRetentionDays = _json['transactionLogRetentionDays'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (backupRetentionSettings != null) {
      _json['backupRetentionSettings'] = backupRetentionSettings.toJson();
    }
    if (binaryLogEnabled != null) {
      _json['binaryLogEnabled'] = binaryLogEnabled;
    }
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (pointInTimeRecoveryEnabled != null) {
      _json['pointInTimeRecoveryEnabled'] = pointInTimeRecoveryEnabled;
    }
    if (replicationLogArchivingEnabled != null) {
      _json['replicationLogArchivingEnabled'] = replicationLogArchivingEnabled;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (transactionLogRetentionDays != null) {
      _json['transactionLogRetentionDays'] = transactionLogRetentionDays;
    }
    return _json;
  }
}

/// We currently only support backup retention by specifying the number of
/// backups we will retain.
class BackupRetentionSettings {
  /// Depending on the value of retention_unit, this is used to determine if a
  /// backup needs to be deleted. If retention_unit is 'COUNT', we will retain
  /// this many backups.
  core.int retainedBackups;

  /// The unit that 'retained_backups' represents.
  /// Possible string values are:
  /// - "RETENTION_UNIT_UNSPECIFIED" : Backup retention unit is unspecified,
  /// will be treated as COUNT.
  /// - "COUNT" : Retention will be by count, eg. "retain the most recent 7
  /// backups".
  core.String retentionUnit;

  BackupRetentionSettings();

  BackupRetentionSettings.fromJson(core.Map _json) {
    if (_json.containsKey('retainedBackups')) {
      retainedBackups = _json['retainedBackups'];
    }
    if (_json.containsKey('retentionUnit')) {
      retentionUnit = _json['retentionUnit'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (retainedBackups != null) {
      _json['retainedBackups'] = retainedBackups;
    }
    if (retentionUnit != null) {
      _json['retentionUnit'] = retentionUnit;
    }
    return _json;
  }
}

/// A BackupRun resource.
class BackupRun {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  /// Possible string values are:
  /// - "SQL_BACKUP_KIND_UNSPECIFIED" : This is an unknown BackupKind.
  /// - "SNAPSHOT" : The snapshot based backups
  /// - "PHYSICAL" : Physical backups
  core.String backupKind;

  /// The description of this run, only applicable to on-demand backups.
  core.String description;

  /// Encryption configuration specific to a backup. Applies only to Second
  /// Generation instances.
  DiskEncryptionConfiguration diskEncryptionConfiguration;

  /// Encryption status specific to a backup. Applies only to Second Generation
  /// instances.
  DiskEncryptionStatus diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in RFC 3339
  /// format, for example *2012-11-15T16:19:00.094Z*.
  core.String endTime;

  /// The time the run was enqueued in UTC timezone in RFC 3339 format, for
  /// example *2012-11-15T16:19:00.094Z*.
  core.String enqueuedTime;

  /// Information about why the backup operation failed. This is only present if
  /// the run has the FAILED status.
  OperationError error;

  /// The identifier for this backup run. Unique only for a specific Cloud SQL
  /// instance.
  core.String id;

  /// Name of the database instance.
  core.String instance;

  /// This is always *sql#backupRun*.
  core.String kind;

  /// Location of the backups.
  core.String location;

  /// The URI of this resource.
  core.String selfLink;

  /// The time the backup operation actually started in UTC timezone in RFC 3339
  /// format, for example *2012-11-15T16:19:00.094Z*.
  core.String startTime;

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
  core.String status;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND".
  /// Possible string values are:
  /// - "SQL_BACKUP_RUN_TYPE_UNSPECIFIED" : This is an unknown BackupRun type.
  /// - "AUTOMATED" : The backup schedule automatically triggers a backup.
  /// - "ON_DEMAND" : The user manually triggers a backup.
  core.String type;

  /// The start time of the backup window during which this the backup was
  /// attempted in RFC 3339 format, for example *2012-11-15T16:19:00.094Z*.
  core.String windowStartTime;

  BackupRun();

  BackupRun.fromJson(core.Map _json) {
    if (_json.containsKey('backupKind')) {
      backupKind = _json['backupKind'];
    }
    if (_json.containsKey('description')) {
      description = _json['description'];
    }
    if (_json.containsKey('diskEncryptionConfiguration')) {
      diskEncryptionConfiguration = DiskEncryptionConfiguration.fromJson(
          _json['diskEncryptionConfiguration']);
    }
    if (_json.containsKey('diskEncryptionStatus')) {
      diskEncryptionStatus =
          DiskEncryptionStatus.fromJson(_json['diskEncryptionStatus']);
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('enqueuedTime')) {
      enqueuedTime = _json['enqueuedTime'];
    }
    if (_json.containsKey('error')) {
      error = OperationError.fromJson(_json['error']);
    }
    if (_json.containsKey('id')) {
      id = _json['id'];
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('location')) {
      location = _json['location'];
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
    if (_json.containsKey('windowStartTime')) {
      windowStartTime = _json['windowStartTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (backupKind != null) {
      _json['backupKind'] = backupKind;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (diskEncryptionConfiguration != null) {
      _json['diskEncryptionConfiguration'] =
          diskEncryptionConfiguration.toJson();
    }
    if (diskEncryptionStatus != null) {
      _json['diskEncryptionStatus'] = diskEncryptionStatus.toJson();
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (enqueuedTime != null) {
      _json['enqueuedTime'] = enqueuedTime;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (instance != null) {
      _json['instance'] = instance;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (location != null) {
      _json['location'] = location;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (windowStartTime != null) {
      _json['windowStartTime'] = windowStartTime;
    }
    return _json;
  }
}

/// Backup run list results.
class BackupRunsListResponse {
  /// A list of backup runs in reverse chronological order of the enqueued time.
  core.List<BackupRun> items;

  /// This is always *sql#backupRunsList*.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  BackupRunsListResponse();

  BackupRunsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<BackupRun>((value) => BackupRun.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Binary log coordinates.
class BinLogCoordinates {
  /// Name of the binary log file for a Cloud SQL instance.
  core.String binLogFileName;

  /// Position (offset) within the binary log file.
  core.String binLogPosition;

  /// This is always *sql#binLogCoordinates*.
  core.String kind;

  BinLogCoordinates();

  BinLogCoordinates.fromJson(core.Map _json) {
    if (_json.containsKey('binLogFileName')) {
      binLogFileName = _json['binLogFileName'];
    }
    if (_json.containsKey('binLogPosition')) {
      binLogPosition = _json['binLogPosition'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (binLogFileName != null) {
      _json['binLogFileName'] = binLogFileName;
    }
    if (binLogPosition != null) {
      _json['binLogPosition'] = binLogPosition;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// Database instance clone context.
class CloneContext {
  /// Binary log coordinates, if specified, identify the position up to which
  /// the source instance is cloned. If not specified, the source instance is
  /// cloned up to the most recent binary log coordinates.
  BinLogCoordinates binLogCoordinates;

  /// Name of the Cloud SQL instance to be created as a clone.
  core.String destinationInstanceName;

  /// This is always *sql#cloneContext*.
  core.String kind;

  /// Reserved for future use.
  core.String pitrTimestampMs;

  /// Reserved for future use.
  core.String pointInTime;

  CloneContext();

  CloneContext.fromJson(core.Map _json) {
    if (_json.containsKey('binLogCoordinates')) {
      binLogCoordinates =
          BinLogCoordinates.fromJson(_json['binLogCoordinates']);
    }
    if (_json.containsKey('destinationInstanceName')) {
      destinationInstanceName = _json['destinationInstanceName'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('pitrTimestampMs')) {
      pitrTimestampMs = _json['pitrTimestampMs'];
    }
    if (_json.containsKey('pointInTime')) {
      pointInTime = _json['pointInTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (binLogCoordinates != null) {
      _json['binLogCoordinates'] = binLogCoordinates.toJson();
    }
    if (destinationInstanceName != null) {
      _json['destinationInstanceName'] = destinationInstanceName;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (pitrTimestampMs != null) {
      _json['pitrTimestampMs'] = pitrTimestampMs;
    }
    if (pointInTime != null) {
      _json['pointInTime'] = pointInTime;
    }
    return _json;
  }
}

/// Represents a SQL database on the Cloud SQL instance.
class Database {
  /// The Cloud SQL charset value.
  core.String charset;

  /// The Cloud SQL collation value.
  core.String collation;

  /// This field is deprecated and will be removed from a future version of the
  /// API.
  core.String etag;

  /// The name of the Cloud SQL instance. This does not include the project ID.
  core.String instance;

  /// This is always *sql#database*.
  core.String kind;

  /// The name of the database in the Cloud SQL instance. This does not include
  /// the project ID or instance name.
  core.String name;

  /// The project ID of the project containing the Cloud SQL database. The
  /// Google apps domain is prefixed if applicable.
  core.String project;

  /// The URI of this resource.
  core.String selfLink;
  SqlServerDatabaseDetails sqlserverDatabaseDetails;

  Database();

  Database.fromJson(core.Map _json) {
    if (_json.containsKey('charset')) {
      charset = _json['charset'];
    }
    if (_json.containsKey('collation')) {
      collation = _json['collation'];
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('project')) {
      project = _json['project'];
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('sqlserverDatabaseDetails')) {
      sqlserverDatabaseDetails =
          SqlServerDatabaseDetails.fromJson(_json['sqlserverDatabaseDetails']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (charset != null) {
      _json['charset'] = charset;
    }
    if (collation != null) {
      _json['collation'] = collation;
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (instance != null) {
      _json['instance'] = instance;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (project != null) {
      _json['project'] = project;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (sqlserverDatabaseDetails != null) {
      _json['sqlserverDatabaseDetails'] = sqlserverDatabaseDetails.toJson();
    }
    return _json;
  }
}

/// Database flags for Cloud SQL instances.
class DatabaseFlags {
  /// The name of the flag. These flags are passed at instance startup, so
  /// include both server options and system variables for MySQL. Flags are
  /// specified with underscores, not hyphens. For more information, see
  /// Configuring Database Flags in the Cloud SQL documentation.
  core.String name;

  /// The value of the flag. Booleans are set to *on* for true and *off* for
  /// false. This field must be omitted if the flag doesn't take a value.
  core.String value;

  DatabaseFlags();

  DatabaseFlags.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('value')) {
      value = _json['value'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// The name and status of the failover replica. This property is applicable
/// only to Second Generation instances.
class DatabaseInstanceFailoverReplica {
  /// The availability status of the failover replica. A false status indicates
  /// that the failover replica is out of sync. The primary instance can only
  /// failover to the failover replica when the status is true.
  core.bool available;

  /// The name of the failover replica. If specified at instance creation, a
  /// failover replica is created for the instance. The name doesn't include the
  /// project ID. This property is applicable only to Second Generation
  /// instances.
  core.String name;

  DatabaseInstanceFailoverReplica();

  DatabaseInstanceFailoverReplica.fromJson(core.Map _json) {
    if (_json.containsKey('available')) {
      available = _json['available'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (available != null) {
      _json['available'] = available;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A Cloud SQL instance resource. Next field: 36
class DatabaseInstance {
  /// *SECOND_GEN*: Cloud SQL database instance. *EXTERNAL*: A database server
  /// that is not managed by Google. This property is read-only; use the *tier*
  /// property in the *settings* object to determine the database type.
  /// Possible string values are:
  /// - "SQL_BACKEND_TYPE_UNSPECIFIED" : This is an unknown backend type for
  /// instance.
  /// - "FIRST_GEN" : V1 speckle instance.
  /// - "SECOND_GEN" : V2 speckle instance.
  /// - "EXTERNAL" : On premises instance.
  core.String backendType;

  /// Connection name of the Cloud SQL instance used in connection strings.
  core.String connectionName;

  /// The current disk usage of the instance in bytes. This property has been
  /// deprecated. Use the "cloudsql.googleapis.com/database/disk/bytes_used"
  /// metric in Cloud Monitoring API instead. Please see this announcement for
  /// details.
  core.String currentDiskSize;

  /// The database engine type and version. The *databaseVersion* field cannot
  /// be changed after instance creation. MySQL instances: *MYSQL_8_0*,
  /// *MYSQL_5_7* (default), or *MYSQL_5_6*. PostgreSQL instances:
  /// *POSTGRES_9_6*, *POSTGRES_10*, *POSTGRES_11* or *POSTGRES_12* (default).
  /// SQL Server instances: *SQLSERVER_2017_STANDARD* (default),
  /// *SQLSERVER_2017_ENTERPRISE*, *SQLSERVER_2017_EXPRESS*, or
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
  core.String databaseVersion;

  /// Disk encryption configuration specific to an instance. Applies only to
  /// Second Generation instances.
  DiskEncryptionConfiguration diskEncryptionConfiguration;

  /// Disk encryption status specific to an instance. Applies only to Second
  /// Generation instances.
  DiskEncryptionStatus diskEncryptionStatus;

  /// This field is deprecated and will be removed from a future version of the
  /// API. Use the *settings.settingsVersion* field instead.
  core.String etag;

  /// The name and status of the failover replica. This property is applicable
  /// only to Second Generation instances.
  DatabaseInstanceFailoverReplica failoverReplica;

  /// The Compute Engine zone that the instance is currently serving from. This
  /// value could be different from the zone that was specified when the
  /// instance was created if the instance has failed over to its secondary
  /// zone.
  core.String gceZone;

  /// The instance type. This can be one of the following. *CLOUD_SQL_INSTANCE*:
  /// A Cloud SQL instance that is not replicating from a primary instance.
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
  core.String instanceType;

  /// The assigned IP addresses for the instance.
  core.List<IpMapping> ipAddresses;

  /// The IPv6 address assigned to the instance. (Deprecated) This property was
  /// applicable only to First Generation instances.
  core.String ipv6Address;

  /// This is always *sql#instance*.
  core.String kind;

  /// The name of the instance which will act as primary in the replication
  /// setup.
  core.String masterInstanceName;

  /// The maximum disk size of the instance in bytes.
  core.String maxDiskSize;

  /// Name of the Cloud SQL instance. This does not include the project ID.
  core.String name;

  /// Configuration specific to on-premises instances.
  OnPremisesConfiguration onPremisesConfiguration;

  /// The project ID of the project containing the Cloud SQL instance. The
  /// Google apps domain is prefixed if applicable.
  core.String project;

  /// The geographical region. Can be *us-central* (*FIRST_GEN* instances only)
  /// *us-central1* (*SECOND_GEN* instances only) *asia-east1* or
  /// *europe-west1*. Defaults to *us-central* or *us-central1* depending on the
  /// instance type. The region cannot be changed after instance creation.
  core.String region;

  /// Configuration specific to failover replicas and read replicas.
  ReplicaConfiguration replicaConfiguration;

  /// The replicas of the instance.
  core.List<core.String> replicaNames;

  /// Initial root password. Use only on creation.
  core.String rootPassword;

  /// The start time of any upcoming scheduled maintenance for this instance.
  SqlScheduledMaintenance scheduledMaintenance;

  /// The URI of this resource.
  core.String selfLink;

  /// SSL configuration.
  SslCert serverCaCert;

  /// The service account email address assigned to the instance. This property
  /// is applicable only to Second Generation instances.
  core.String serviceAccountEmailAddress;

  /// The user settings.
  Settings settings;

  /// The current serving state of the Cloud SQL instance. This can be one of
  /// the following. *SQL_INSTANCE_STATE_UNSPECIFIED*: The state of the instance
  /// is unknown. *RUNNABLE*: The instance has been stopped by owner. It is not
  /// currently running, but it's ready to be restarted. *SUSPENDED*: The
  /// instance is not available, for example due to problems with billing. for
  /// example due to problems with billing. *PENDING_DELETE*: The instance is
  /// being deleted. *PENDING_CREATE*: The instance is being created.
  /// *MAINTENANCE*: The instance is down for maintenance. *FAILED*: The
  /// instance creation failed.
  /// Possible string values are:
  /// - "SQL_INSTANCE_STATE_UNSPECIFIED" : The state of the instance is unknown.
  /// - "RUNNABLE" : The instance has been stopped by owner. It is not currently
  /// running, but it's ready to be restarted.
  /// - "SUSPENDED" : The instance is not available, for example due to problems
  /// with billing.
  /// - "PENDING_DELETE" : The instance is being deleted.
  /// - "PENDING_CREATE" : The instance is being created.
  /// - "MAINTENANCE" : The instance is down for maintenance.
  /// - "FAILED" : The creation of the instance failed or a fatal error occurred
  /// during maintenance.
  core.String state;

  /// If the instance state is SUSPENDED, the reason for the suspension.
  core.List<core.String> suspensionReason;

  DatabaseInstance();

  DatabaseInstance.fromJson(core.Map _json) {
    if (_json.containsKey('backendType')) {
      backendType = _json['backendType'];
    }
    if (_json.containsKey('connectionName')) {
      connectionName = _json['connectionName'];
    }
    if (_json.containsKey('currentDiskSize')) {
      currentDiskSize = _json['currentDiskSize'];
    }
    if (_json.containsKey('databaseVersion')) {
      databaseVersion = _json['databaseVersion'];
    }
    if (_json.containsKey('diskEncryptionConfiguration')) {
      diskEncryptionConfiguration = DiskEncryptionConfiguration.fromJson(
          _json['diskEncryptionConfiguration']);
    }
    if (_json.containsKey('diskEncryptionStatus')) {
      diskEncryptionStatus =
          DiskEncryptionStatus.fromJson(_json['diskEncryptionStatus']);
    }
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('failoverReplica')) {
      failoverReplica =
          DatabaseInstanceFailoverReplica.fromJson(_json['failoverReplica']);
    }
    if (_json.containsKey('gceZone')) {
      gceZone = _json['gceZone'];
    }
    if (_json.containsKey('instanceType')) {
      instanceType = _json['instanceType'];
    }
    if (_json.containsKey('ipAddresses')) {
      ipAddresses = (_json['ipAddresses'] as core.List)
          .map<IpMapping>((value) => IpMapping.fromJson(value))
          .toList();
    }
    if (_json.containsKey('ipv6Address')) {
      ipv6Address = _json['ipv6Address'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('masterInstanceName')) {
      masterInstanceName = _json['masterInstanceName'];
    }
    if (_json.containsKey('maxDiskSize')) {
      maxDiskSize = _json['maxDiskSize'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('onPremisesConfiguration')) {
      onPremisesConfiguration =
          OnPremisesConfiguration.fromJson(_json['onPremisesConfiguration']);
    }
    if (_json.containsKey('project')) {
      project = _json['project'];
    }
    if (_json.containsKey('region')) {
      region = _json['region'];
    }
    if (_json.containsKey('replicaConfiguration')) {
      replicaConfiguration =
          ReplicaConfiguration.fromJson(_json['replicaConfiguration']);
    }
    if (_json.containsKey('replicaNames')) {
      replicaNames = (_json['replicaNames'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('rootPassword')) {
      rootPassword = _json['rootPassword'];
    }
    if (_json.containsKey('scheduledMaintenance')) {
      scheduledMaintenance =
          SqlScheduledMaintenance.fromJson(_json['scheduledMaintenance']);
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('serverCaCert')) {
      serverCaCert = SslCert.fromJson(_json['serverCaCert']);
    }
    if (_json.containsKey('serviceAccountEmailAddress')) {
      serviceAccountEmailAddress = _json['serviceAccountEmailAddress'];
    }
    if (_json.containsKey('settings')) {
      settings = Settings.fromJson(_json['settings']);
    }
    if (_json.containsKey('state')) {
      state = _json['state'];
    }
    if (_json.containsKey('suspensionReason')) {
      suspensionReason =
          (_json['suspensionReason'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (backendType != null) {
      _json['backendType'] = backendType;
    }
    if (connectionName != null) {
      _json['connectionName'] = connectionName;
    }
    if (currentDiskSize != null) {
      _json['currentDiskSize'] = currentDiskSize;
    }
    if (databaseVersion != null) {
      _json['databaseVersion'] = databaseVersion;
    }
    if (diskEncryptionConfiguration != null) {
      _json['diskEncryptionConfiguration'] =
          diskEncryptionConfiguration.toJson();
    }
    if (diskEncryptionStatus != null) {
      _json['diskEncryptionStatus'] = diskEncryptionStatus.toJson();
    }
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (failoverReplica != null) {
      _json['failoverReplica'] = failoverReplica.toJson();
    }
    if (gceZone != null) {
      _json['gceZone'] = gceZone;
    }
    if (instanceType != null) {
      _json['instanceType'] = instanceType;
    }
    if (ipAddresses != null) {
      _json['ipAddresses'] =
          ipAddresses.map((value) => value.toJson()).toList();
    }
    if (ipv6Address != null) {
      _json['ipv6Address'] = ipv6Address;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (masterInstanceName != null) {
      _json['masterInstanceName'] = masterInstanceName;
    }
    if (maxDiskSize != null) {
      _json['maxDiskSize'] = maxDiskSize;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (onPremisesConfiguration != null) {
      _json['onPremisesConfiguration'] = onPremisesConfiguration.toJson();
    }
    if (project != null) {
      _json['project'] = project;
    }
    if (region != null) {
      _json['region'] = region;
    }
    if (replicaConfiguration != null) {
      _json['replicaConfiguration'] = replicaConfiguration.toJson();
    }
    if (replicaNames != null) {
      _json['replicaNames'] = replicaNames;
    }
    if (rootPassword != null) {
      _json['rootPassword'] = rootPassword;
    }
    if (scheduledMaintenance != null) {
      _json['scheduledMaintenance'] = scheduledMaintenance.toJson();
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (serverCaCert != null) {
      _json['serverCaCert'] = serverCaCert.toJson();
    }
    if (serviceAccountEmailAddress != null) {
      _json['serviceAccountEmailAddress'] = serviceAccountEmailAddress;
    }
    if (settings != null) {
      _json['settings'] = settings.toJson();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (suspensionReason != null) {
      _json['suspensionReason'] = suspensionReason;
    }
    return _json;
  }
}

/// Database list response.
class DatabasesListResponse {
  /// List of database resources in the instance.
  core.List<Database> items;

  /// This is always *sql#databasesList*.
  core.String kind;

  DatabasesListResponse();

  DatabasesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Database>((value) => Database.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// Read-replica configuration for connecting to the on-premises primary
/// instance.
class DemoteMasterConfiguration {
  /// This is always *sql#demoteMasterConfiguration*.
  core.String kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises
  /// primary instance. Replication configuration information such as the
  /// username, password, certificates, and keys are not stored in the instance
  /// metadata. The configuration information is used only to set up the
  /// replication connection and is stored by MySQL in a file named
  /// *master.info* in the data directory.
  DemoteMasterMySqlReplicaConfiguration mysqlReplicaConfiguration;

  DemoteMasterConfiguration();

  DemoteMasterConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('mysqlReplicaConfiguration')) {
      mysqlReplicaConfiguration =
          DemoteMasterMySqlReplicaConfiguration.fromJson(
              _json['mysqlReplicaConfiguration']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (mysqlReplicaConfiguration != null) {
      _json['mysqlReplicaConfiguration'] = mysqlReplicaConfiguration.toJson();
    }
    return _json;
  }
}

/// Database instance demote primary instance context.
class DemoteMasterContext {
  /// This is always *sql#demoteMasterContext*.
  core.String kind;

  /// The name of the instance which will act as on-premises primary instance in
  /// the replication setup.
  core.String masterInstanceName;

  /// Configuration specific to read-replicas replicating from the on-premises
  /// primary instance.
  DemoteMasterConfiguration replicaConfiguration;

  /// Verify GTID consistency for demote operation. Default value: *True*.
  /// Second Generation instances only. Setting this flag to false enables you
  /// to bypass GTID consistency check between on-premises primary instance and
  /// Cloud SQL instance during the demotion operation but also exposes you to
  /// the risk of future replication failures. Change the value only if you know
  /// the reason for the GTID divergence and are confident that doing so will
  /// not cause any replication issues.
  core.bool verifyGtidConsistency;

  DemoteMasterContext();

  DemoteMasterContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('masterInstanceName')) {
      masterInstanceName = _json['masterInstanceName'];
    }
    if (_json.containsKey('replicaConfiguration')) {
      replicaConfiguration =
          DemoteMasterConfiguration.fromJson(_json['replicaConfiguration']);
    }
    if (_json.containsKey('verifyGtidConsistency')) {
      verifyGtidConsistency = _json['verifyGtidConsistency'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (masterInstanceName != null) {
      _json['masterInstanceName'] = masterInstanceName;
    }
    if (replicaConfiguration != null) {
      _json['replicaConfiguration'] = replicaConfiguration.toJson();
    }
    if (verifyGtidConsistency != null) {
      _json['verifyGtidConsistency'] = verifyGtidConsistency;
    }
    return _json;
  }
}

/// Read-replica configuration specific to MySQL databases.
class DemoteMasterMySqlReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String caCertificate;

  /// PEM representation of the replica's x509 certificate.
  core.String clientCertificate;

  /// PEM representation of the replica's private key. The corresponsing public
  /// key is encoded in the client's certificate. The format of the replica's
  /// private key can be either PKCS #1 or PKCS #8.
  core.String clientKey;

  /// This is always *sql#demoteMasterMysqlReplicaConfiguration*.
  core.String kind;

  /// The password for the replication connection.
  core.String password;

  /// The username for the replication connection.
  core.String username;

  DemoteMasterMySqlReplicaConfiguration();

  DemoteMasterMySqlReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('caCertificate')) {
      caCertificate = _json['caCertificate'];
    }
    if (_json.containsKey('clientCertificate')) {
      clientCertificate = _json['clientCertificate'];
    }
    if (_json.containsKey('clientKey')) {
      clientKey = _json['clientKey'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('password')) {
      password = _json['password'];
    }
    if (_json.containsKey('username')) {
      username = _json['username'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (caCertificate != null) {
      _json['caCertificate'] = caCertificate;
    }
    if (clientCertificate != null) {
      _json['clientCertificate'] = clientCertificate;
    }
    if (clientKey != null) {
      _json['clientKey'] = clientKey;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (password != null) {
      _json['password'] = password;
    }
    if (username != null) {
      _json['username'] = username;
    }
    return _json;
  }
}

/// Deny Maintenance Periods. This specifies a date range during when all CSA
/// rollout will be denied.
class DenyMaintenancePeriod {
  /// "deny maintenance period" end date. If the year of the end date is empty,
  /// the year of the start date also must be empty. In this case, it means the
  /// deny maintenance period recurs every year. The date is in format
  /// yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  core.String endDate;

  /// "deny maintenance period" start date. If the year of the start date is
  /// empty, the year of the end date also must be empty. In this case, it means
  /// the deny maintenance period recurs every year. The date is in format
  /// yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01
  core.String startDate;

  /// Time in UTC when the "deny maintenance period" starts on start_date and
  /// ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00
  core.String time;

  DenyMaintenancePeriod();

  DenyMaintenancePeriod.fromJson(core.Map _json) {
    if (_json.containsKey('endDate')) {
      endDate = _json['endDate'];
    }
    if (_json.containsKey('startDate')) {
      startDate = _json['startDate'];
    }
    if (_json.containsKey('time')) {
      time = _json['time'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (endDate != null) {
      _json['endDate'] = endDate;
    }
    if (startDate != null) {
      _json['startDate'] = startDate;
    }
    if (time != null) {
      _json['time'] = time;
    }
    return _json;
  }
}

/// Disk encryption configuration for an instance.
class DiskEncryptionConfiguration {
  /// This is always *sql#diskEncryptionConfiguration*.
  core.String kind;

  /// Resource name of KMS key for disk encryption
  core.String kmsKeyName;

  DiskEncryptionConfiguration();

  DiskEncryptionConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('kmsKeyName')) {
      kmsKeyName = _json['kmsKeyName'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (kmsKeyName != null) {
      _json['kmsKeyName'] = kmsKeyName;
    }
    return _json;
  }
}

/// Disk encryption status for an instance.
class DiskEncryptionStatus {
  /// This is always *sql#diskEncryptionStatus*.
  core.String kind;

  /// KMS key version used to encrypt the Cloud SQL instance resource
  core.String kmsKeyVersionName;

  DiskEncryptionStatus();

  DiskEncryptionStatus.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('kmsKeyVersionName')) {
      kmsKeyVersionName = _json['kmsKeyVersionName'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (kmsKeyVersionName != null) {
      _json['kmsKeyVersionName'] = kmsKeyVersionName;
    }
    return _json;
  }
}

/// Options for exporting data as CSV.
class ExportContextCsvExportOptions {
  /// The select query used to extract the data.
  core.String selectQuery;

  ExportContextCsvExportOptions();

  ExportContextCsvExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('selectQuery')) {
      selectQuery = _json['selectQuery'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (selectQuery != null) {
      _json['selectQuery'] = selectQuery;
    }
    return _json;
  }
}

/// Options for exporting from MySQL.
class ExportContextSqlExportOptionsMysqlExportOptions {
  /// Option to include SQL statement required to set up replication. If set to
  /// *1*, the dump file includes a CHANGE MASTER TO statement with the binary
  /// log coordinates. If set to *2*, the CHANGE MASTER TO statement is written
  /// as a SQL comment, and has no effect. All other values are ignored.
  core.int masterData;

  ExportContextSqlExportOptionsMysqlExportOptions();

  ExportContextSqlExportOptionsMysqlExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('masterData')) {
      masterData = _json['masterData'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (masterData != null) {
      _json['masterData'] = masterData;
    }
    return _json;
  }
}

/// Options for exporting data as SQL statements.
class ExportContextSqlExportOptions {
  /// Options for exporting from MySQL.
  ExportContextSqlExportOptionsMysqlExportOptions mysqlExportOptions;

  /// Export only schemas.
  core.bool schemaOnly;

  /// Tables to export, or that were exported, from the specified database. If
  /// you specify tables, specify one and only one database. For PostgreSQL
  /// instances, you can specify only one table.
  core.List<core.String> tables;

  ExportContextSqlExportOptions();

  ExportContextSqlExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('mysqlExportOptions')) {
      mysqlExportOptions =
          ExportContextSqlExportOptionsMysqlExportOptions.fromJson(
              _json['mysqlExportOptions']);
    }
    if (_json.containsKey('schemaOnly')) {
      schemaOnly = _json['schemaOnly'];
    }
    if (_json.containsKey('tables')) {
      tables = (_json['tables'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (mysqlExportOptions != null) {
      _json['mysqlExportOptions'] = mysqlExportOptions.toJson();
    }
    if (schemaOnly != null) {
      _json['schemaOnly'] = schemaOnly;
    }
    if (tables != null) {
      _json['tables'] = tables;
    }
    return _json;
  }
}

/// Database instance export context.
class ExportContext {
  /// Options for exporting data as CSV.
  ExportContextCsvExportOptions csvExportOptions;

  /// Databases to be exported. *MySQL instances:* If *fileType* is *SQL* and no
  /// database is specified, all databases are exported, except for the *mysql*
  /// system database. If *fileType* is *CSV*, you can specify one database,
  /// either by using this property or by using the
  /// *csvExportOptions.selectQuery* property, which takes precedence over this
  /// property. *PostgreSQL instances:* You must specify one database to be
  /// exported. If *fileType* is *CSV*, this database must match the one
  /// specified in the *csvExportOptions.selectQuery* property.
  core.List<core.String> databases;

  /// The file type for the specified uri. *SQL*: The file contains SQL
  /// statements. *CSV*: The file contains CSV data.
  /// Possible string values are:
  /// - "SQL_FILE_TYPE_UNSPECIFIED" : Unknown file type.
  /// - "SQL" : File containing SQL statements.
  /// - "CSV" : File in CSV format.
  /// - "BAK"
  core.String fileType;

  /// This is always *sql#exportContext*.
  core.String kind;

  /// Option for export offload.
  core.bool offload;

  /// Options for exporting data as SQL statements.
  ExportContextSqlExportOptions sqlExportOptions;

  /// The path to the file in Google Cloud Storage where the export will be
  /// stored. The URI is in the form *gs: //bucketName/fileName*. If the file
  /// already exists, the requests // succeeds, but the operation fails. If
  /// *fileType* is // *SQL* and the filename ends with .gz, the contents are //
  /// compressed.
  core.String uri;

  ExportContext();

  ExportContext.fromJson(core.Map _json) {
    if (_json.containsKey('csvExportOptions')) {
      csvExportOptions =
          ExportContextCsvExportOptions.fromJson(_json['csvExportOptions']);
    }
    if (_json.containsKey('databases')) {
      databases = (_json['databases'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('fileType')) {
      fileType = _json['fileType'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('offload')) {
      offload = _json['offload'];
    }
    if (_json.containsKey('sqlExportOptions')) {
      sqlExportOptions =
          ExportContextSqlExportOptions.fromJson(_json['sqlExportOptions']);
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (csvExportOptions != null) {
      _json['csvExportOptions'] = csvExportOptions.toJson();
    }
    if (databases != null) {
      _json['databases'] = databases;
    }
    if (fileType != null) {
      _json['fileType'] = fileType;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (offload != null) {
      _json['offload'] = offload;
    }
    if (sqlExportOptions != null) {
      _json['sqlExportOptions'] = sqlExportOptions.toJson();
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// Database instance failover context.
class FailoverContext {
  /// This is always *sql#failoverContext*.
  core.String kind;

  /// The current settings version of this instance. Request will be rejected if
  /// this version doesn't match the current settings version.
  core.String settingsVersion;

  FailoverContext();

  FailoverContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('settingsVersion')) {
      settingsVersion = _json['settingsVersion'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (settingsVersion != null) {
      _json['settingsVersion'] = settingsVersion;
    }
    return _json;
  }
}

/// A flag resource.
class Flag {
  /// Use this field if only certain integers are accepted. Can be combined with
  /// min_value and max_value to add additional values.
  core.List<core.String> allowedIntValues;

  /// For *STRING* flags, a list of strings that the value can be set to.
  core.List<core.String> allowedStringValues;

  /// The database version this flag applies to. Can be *MYSQL_8_0*,
  /// *MYSQL_5_6*, or *MYSQL_5_7*.
  core.List<core.String> appliesTo;

  /// Whether or not the flag is considered in beta.
  core.bool inBeta;

  /// This is always *sql#flag*.
  core.String kind;

  /// For *INTEGER* flags, the maximum allowed value.
  core.String maxValue;

  /// For *INTEGER* flags, the minimum allowed value.
  core.String minValue;

  /// This is the name of the flag. Flag names always use underscores, not
  /// hyphens, for example: *max_allowed_packet*
  core.String name;

  /// Indicates whether changing this flag will trigger a database restart. Only
  /// applicable to Second Generation instances.
  core.bool requiresRestart;

  /// The type of the flag. Flags are typed to being *BOOLEAN*, *STRING*,
  /// *INTEGER* or *NONE*. *NONE* is used for flags which do not take a value,
  /// such as *skip_grant_tables*.
  /// Possible string values are:
  /// - "SQL_FLAG_TYPE_UNSPECIFIED" : This is an unknown flag type.
  /// - "BOOLEAN" : Boolean type flag.
  /// - "STRING" : String type flag.
  /// - "INTEGER" : Integer type flag.
  /// - "NONE" : Flag type used for a server startup option.
  /// - "MYSQL_TIMEZONE_OFFSET" : Type introduced specically for MySQL TimeZone
  /// offset. Accept a string value with the format [-12:59, 13:00].
  /// - "FLOAT" : Float type flag.
  /// - "REPEATED_STRING" : Comma-separated list of the strings in a SqlFlagType
  /// enum.
  core.String type;

  Flag();

  Flag.fromJson(core.Map _json) {
    if (_json.containsKey('allowedIntValues')) {
      allowedIntValues =
          (_json['allowedIntValues'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('allowedStringValues')) {
      allowedStringValues =
          (_json['allowedStringValues'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('appliesTo')) {
      appliesTo = (_json['appliesTo'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('inBeta')) {
      inBeta = _json['inBeta'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('maxValue')) {
      maxValue = _json['maxValue'];
    }
    if (_json.containsKey('minValue')) {
      minValue = _json['minValue'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('requiresRestart')) {
      requiresRestart = _json['requiresRestart'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (allowedIntValues != null) {
      _json['allowedIntValues'] = allowedIntValues;
    }
    if (allowedStringValues != null) {
      _json['allowedStringValues'] = allowedStringValues;
    }
    if (appliesTo != null) {
      _json['appliesTo'] = appliesTo;
    }
    if (inBeta != null) {
      _json['inBeta'] = inBeta;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (maxValue != null) {
      _json['maxValue'] = maxValue;
    }
    if (minValue != null) {
      _json['minValue'] = minValue;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (requiresRestart != null) {
      _json['requiresRestart'] = requiresRestart;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Flags list response.
class FlagsListResponse {
  /// List of flags.
  core.List<Flag> items;

  /// This is always *sql#flagsList*.
  core.String kind;

  FlagsListResponse();

  FlagsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Flag>((value) => Flag.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

class ImportContextBakImportOptionsEncryptionOptions {
  /// Path to the Certificate (.cer) in Cloud Storage, in the form
  /// *gs://bucketName/fileName*. The instance must have write permissions to
  /// the bucket and read access to the file.
  core.String certPath;

  /// Password that encrypts the private key
  core.String pvkPassword;

  /// Path to the Certificate Private Key (.pvk) in Cloud Storage, in the form
  /// *gs://bucketName/fileName*. The instance must have write permissions to
  /// the bucket and read access to the file.
  core.String pvkPath;

  ImportContextBakImportOptionsEncryptionOptions();

  ImportContextBakImportOptionsEncryptionOptions.fromJson(core.Map _json) {
    if (_json.containsKey('certPath')) {
      certPath = _json['certPath'];
    }
    if (_json.containsKey('pvkPassword')) {
      pvkPassword = _json['pvkPassword'];
    }
    if (_json.containsKey('pvkPath')) {
      pvkPath = _json['pvkPath'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (certPath != null) {
      _json['certPath'] = certPath;
    }
    if (pvkPassword != null) {
      _json['pvkPassword'] = pvkPassword;
    }
    if (pvkPath != null) {
      _json['pvkPath'] = pvkPath;
    }
    return _json;
  }
}

/// Import parameters specific to SQL Server .BAK files
class ImportContextBakImportOptions {
  ImportContextBakImportOptionsEncryptionOptions encryptionOptions;

  ImportContextBakImportOptions();

  ImportContextBakImportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('encryptionOptions')) {
      encryptionOptions =
          ImportContextBakImportOptionsEncryptionOptions.fromJson(
              _json['encryptionOptions']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (encryptionOptions != null) {
      _json['encryptionOptions'] = encryptionOptions.toJson();
    }
    return _json;
  }
}

/// Options for importing data as CSV.
class ImportContextCsvImportOptions {
  /// The columns to which CSV data is imported. If not specified, all columns
  /// of the database table are loaded with CSV data.
  core.List<core.String> columns;

  /// The table to which CSV data is imported.
  core.String table;

  ImportContextCsvImportOptions();

  ImportContextCsvImportOptions.fromJson(core.Map _json) {
    if (_json.containsKey('columns')) {
      columns = (_json['columns'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('table')) {
      table = _json['table'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (columns != null) {
      _json['columns'] = columns;
    }
    if (table != null) {
      _json['table'] = table;
    }
    return _json;
  }
}

/// Database instance import context.
class ImportContext {
  /// Import parameters specific to SQL Server .BAK files
  ImportContextBakImportOptions bakImportOptions;

  /// Options for importing data as CSV.
  ImportContextCsvImportOptions csvImportOptions;

  /// The target database for the import. If *fileType* is *SQL*, this field is
  /// required only if the import file does not specify a database, and is
  /// overridden by any database specification in the import file. If *fileType*
  /// is *CSV*, one database must be specified.
  core.String database;

  /// The file type for the specified uri. *SQL*: The file contains SQL
  /// statements. *CSV*: The file contains CSV data.
  /// Possible string values are:
  /// - "SQL_FILE_TYPE_UNSPECIFIED" : Unknown file type.
  /// - "SQL" : File containing SQL statements.
  /// - "CSV" : File in CSV format.
  /// - "BAK"
  core.String fileType;

  /// The PostgreSQL user for this import operation. PostgreSQL instances only.
  core.String importUser;

  /// This is always *sql#importContext*.
  core.String kind;

  /// Path to the import file in Cloud Storage, in the form *gs:
  /// //bucketName/fileName*. Compressed gzip files (.gz) are supported // when
  /// *fileType* is *SQL*. The instance must have // write permissions to the
  /// bucket and read access to the file.
  core.String uri;

  ImportContext();

  ImportContext.fromJson(core.Map _json) {
    if (_json.containsKey('bakImportOptions')) {
      bakImportOptions =
          ImportContextBakImportOptions.fromJson(_json['bakImportOptions']);
    }
    if (_json.containsKey('csvImportOptions')) {
      csvImportOptions =
          ImportContextCsvImportOptions.fromJson(_json['csvImportOptions']);
    }
    if (_json.containsKey('database')) {
      database = _json['database'];
    }
    if (_json.containsKey('fileType')) {
      fileType = _json['fileType'];
    }
    if (_json.containsKey('importUser')) {
      importUser = _json['importUser'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (bakImportOptions != null) {
      _json['bakImportOptions'] = bakImportOptions.toJson();
    }
    if (csvImportOptions != null) {
      _json['csvImportOptions'] = csvImportOptions.toJson();
    }
    if (database != null) {
      _json['database'] = database;
    }
    if (fileType != null) {
      _json['fileType'] = fileType;
    }
    if (importUser != null) {
      _json['importUser'] = importUser;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// Database instance clone request.
class InstancesCloneRequest {
  /// Contains details about the clone operation.
  CloneContext cloneContext;

  InstancesCloneRequest();

  InstancesCloneRequest.fromJson(core.Map _json) {
    if (_json.containsKey('cloneContext')) {
      cloneContext = CloneContext.fromJson(_json['cloneContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cloneContext != null) {
      _json['cloneContext'] = cloneContext.toJson();
    }
    return _json;
  }
}

/// Database demote primary instance request.
class InstancesDemoteMasterRequest {
  /// Contains details about the demoteMaster operation.
  DemoteMasterContext demoteMasterContext;

  InstancesDemoteMasterRequest();

  InstancesDemoteMasterRequest.fromJson(core.Map _json) {
    if (_json.containsKey('demoteMasterContext')) {
      demoteMasterContext =
          DemoteMasterContext.fromJson(_json['demoteMasterContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (demoteMasterContext != null) {
      _json['demoteMasterContext'] = demoteMasterContext.toJson();
    }
    return _json;
  }
}

/// Database instance export request.
class InstancesExportRequest {
  /// Contains details about the export operation.
  ExportContext exportContext;

  InstancesExportRequest();

  InstancesExportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('exportContext')) {
      exportContext = ExportContext.fromJson(_json['exportContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (exportContext != null) {
      _json['exportContext'] = exportContext.toJson();
    }
    return _json;
  }
}

/// Instance failover request.
class InstancesFailoverRequest {
  /// Failover Context.
  FailoverContext failoverContext;

  InstancesFailoverRequest();

  InstancesFailoverRequest.fromJson(core.Map _json) {
    if (_json.containsKey('failoverContext')) {
      failoverContext = FailoverContext.fromJson(_json['failoverContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (failoverContext != null) {
      _json['failoverContext'] = failoverContext.toJson();
    }
    return _json;
  }
}

/// Database instance import request.
class InstancesImportRequest {
  /// Contains details about the import operation.
  ImportContext importContext;

  InstancesImportRequest();

  InstancesImportRequest.fromJson(core.Map _json) {
    if (_json.containsKey('importContext')) {
      importContext = ImportContext.fromJson(_json['importContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (importContext != null) {
      _json['importContext'] = importContext.toJson();
    }
    return _json;
  }
}

/// Database instances list response.
class InstancesListResponse {
  /// List of database instance resources.
  core.List<DatabaseInstance> items;

  /// This is always *sql#instancesList*.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  /// List of warnings that occurred while handling the request.
  core.List<ApiWarning> warnings;

  InstancesListResponse();

  InstancesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<DatabaseInstance>((value) => DatabaseInstance.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
    if (_json.containsKey('warnings')) {
      warnings = (_json['warnings'] as core.List)
          .map<ApiWarning>((value) => ApiWarning.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (warnings != null) {
      _json['warnings'] = warnings.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Instances ListServerCas response.
class InstancesListServerCasResponse {
  core.String activeVersion;

  /// List of server CA certificates for the instance.
  core.List<SslCert> certs;

  /// This is always *sql#instancesListServerCas*.
  core.String kind;

  InstancesListServerCasResponse();

  InstancesListServerCasResponse.fromJson(core.Map _json) {
    if (_json.containsKey('activeVersion')) {
      activeVersion = _json['activeVersion'];
    }
    if (_json.containsKey('certs')) {
      certs = (_json['certs'] as core.List)
          .map<SslCert>((value) => SslCert.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (activeVersion != null) {
      _json['activeVersion'] = activeVersion;
    }
    if (certs != null) {
      _json['certs'] = certs.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// Database instance restore backup request.
class InstancesRestoreBackupRequest {
  /// Parameters required to perform the restore backup operation.
  RestoreBackupContext restoreBackupContext;

  InstancesRestoreBackupRequest();

  InstancesRestoreBackupRequest.fromJson(core.Map _json) {
    if (_json.containsKey('restoreBackupContext')) {
      restoreBackupContext =
          RestoreBackupContext.fromJson(_json['restoreBackupContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (restoreBackupContext != null) {
      _json['restoreBackupContext'] = restoreBackupContext.toJson();
    }
    return _json;
  }
}

/// Rotate Server CA request.
class InstancesRotateServerCaRequest {
  /// Contains details about the rotate server CA operation.
  RotateServerCaContext rotateServerCaContext;

  InstancesRotateServerCaRequest();

  InstancesRotateServerCaRequest.fromJson(core.Map _json) {
    if (_json.containsKey('rotateServerCaContext')) {
      rotateServerCaContext =
          RotateServerCaContext.fromJson(_json['rotateServerCaContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (rotateServerCaContext != null) {
      _json['rotateServerCaContext'] = rotateServerCaContext.toJson();
    }
    return _json;
  }
}

/// Instance truncate log request.
class InstancesTruncateLogRequest {
  /// Contains details about the truncate log operation.
  TruncateLogContext truncateLogContext;

  InstancesTruncateLogRequest();

  InstancesTruncateLogRequest.fromJson(core.Map _json) {
    if (_json.containsKey('truncateLogContext')) {
      truncateLogContext =
          TruncateLogContext.fromJson(_json['truncateLogContext']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (truncateLogContext != null) {
      _json['truncateLogContext'] = truncateLogContext.toJson();
    }
    return _json;
  }
}

/// IP Management configuration.
class IpConfiguration {
  /// The list of external networks that are allowed to connect to the instance
  /// using the IP. In 'CIDR' notation, also known as 'slash' notation (for
  /// example: *192.168.100.0/24*).
  core.List<AclEntry> authorizedNetworks;

  /// Whether the instance is assigned a public IP address or not.
  core.bool ipv4Enabled;

  /// The resource link for the VPC network from which the Cloud SQL instance is
  /// accessible for private IP. For example,  * /
  /// projects/myProject/global/networks/default*. This setting can be updated,
  /// but it cannot be removed after it is set.
  core.String privateNetwork;

  /// Whether SSL connections over IP are enforced or not.
  core.bool requireSsl;

  IpConfiguration();

  IpConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('authorizedNetworks')) {
      authorizedNetworks = (_json['authorizedNetworks'] as core.List)
          .map<AclEntry>((value) => AclEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey('ipv4Enabled')) {
      ipv4Enabled = _json['ipv4Enabled'];
    }
    if (_json.containsKey('privateNetwork')) {
      privateNetwork = _json['privateNetwork'];
    }
    if (_json.containsKey('requireSsl')) {
      requireSsl = _json['requireSsl'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (authorizedNetworks != null) {
      _json['authorizedNetworks'] =
          authorizedNetworks.map((value) => value.toJson()).toList();
    }
    if (ipv4Enabled != null) {
      _json['ipv4Enabled'] = ipv4Enabled;
    }
    if (privateNetwork != null) {
      _json['privateNetwork'] = privateNetwork;
    }
    if (requireSsl != null) {
      _json['requireSsl'] = requireSsl;
    }
    return _json;
  }
}

/// Database instance IP Mapping.
class IpMapping {
  /// The IP address assigned.
  core.String ipAddress;

  /// The due time for this IP to be retired in RFC 3339 format, for example
  /// *2012-11-15T16:19:00.094Z*. This field is only available when the IP is
  /// scheduled to be retired.
  core.String timeToRetire;

  /// The type of this IP address. A *PRIMARY* address is a public address that
  /// can accept incoming connections. A *PRIVATE* address is a private address
  /// that can accept incoming connections. An *OUTGOING* address is the source
  /// address of connections originating from the instance, if supported.
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
  core.String type;

  IpMapping();

  IpMapping.fromJson(core.Map _json) {
    if (_json.containsKey('ipAddress')) {
      ipAddress = _json['ipAddress'];
    }
    if (_json.containsKey('timeToRetire')) {
      timeToRetire = _json['timeToRetire'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (ipAddress != null) {
      _json['ipAddress'] = ipAddress;
    }
    if (timeToRetire != null) {
      _json['timeToRetire'] = timeToRetire;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Preferred location. This specifies where a Cloud SQL instance is located,
/// either in a specific Compute Engine zone, or co-located with an App Engine
/// application. Note that if the preferred location is not available, the
/// instance will be located as close as possible within the region. Only one
/// location may be specified.
class LocationPreference {
  /// The App Engine application to follow, it must be in the same region as the
  /// Cloud SQL instance.
  core.String followGaeApplication;

  /// This is always *sql#locationPreference*.
  core.String kind;

  /// The preferred Compute Engine zone (for example: us-central1-a,
  /// us-central1-b, etc.).
  core.String zone;

  LocationPreference();

  LocationPreference.fromJson(core.Map _json) {
    if (_json.containsKey('followGaeApplication')) {
      followGaeApplication = _json['followGaeApplication'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (followGaeApplication != null) {
      _json['followGaeApplication'] = followGaeApplication;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// Maintenance window. This specifies when a Cloud SQL instance is restarted
/// for system maintenance purposes.
class MaintenanceWindow {
  /// day of week (1-7), starting on Monday.
  core.int day;

  /// hour of day - 0 to 23.
  core.int hour;

  /// This is always *sql#maintenanceWindow*.
  core.String kind;

  /// Maintenance timing setting: *canary* (Earlier) or *stable* (Later). Learn
  /// more.
  /// Possible string values are:
  /// - "SQL_UPDATE_TRACK_UNSPECIFIED" : This is an unknown maintenance timing
  /// preference.
  /// - "canary" : For instance update that requires a restart, this update
  /// track indicates your instance prefer to restart for new version early in
  /// maintenance window.
  /// - "stable" : For instance update that requires a restart, this update
  /// track indicates your instance prefer to let Cloud SQL choose the timing of
  /// restart (within its Maintenance window, if applicable).
  core.String updateTrack;

  MaintenanceWindow();

  MaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey('day')) {
      day = _json['day'];
    }
    if (_json.containsKey('hour')) {
      hour = _json['hour'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('updateTrack')) {
      updateTrack = _json['updateTrack'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (day != null) {
      _json['day'] = day;
    }
    if (hour != null) {
      _json['hour'] = hour;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (updateTrack != null) {
      _json['updateTrack'] = updateTrack;
    }
    return _json;
  }
}

/// Read-replica configuration specific to MySQL databases.
class MySqlReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String caCertificate;

  /// PEM representation of the replica's x509 certificate.
  core.String clientCertificate;

  /// PEM representation of the replica's private key. The corresponsing public
  /// key is encoded in the client's certificate.
  core.String clientKey;

  /// Seconds to wait between connect retries. MySQL's default is 60 seconds.
  core.int connectRetryInterval;

  /// Path to a SQL dump file in Google Cloud Storage from which the replica
  /// instance is to be created. The URI is in the form
  /// gs://bucketName/fileName. Compressed gzip files (.gz) are also supported.
  /// Dumps have the binlog co-ordinates from which replication begins. This can
  /// be accomplished by setting --master-data to 1 when using mysqldump.
  core.String dumpFilePath;

  /// This is always *sql#mysqlReplicaConfiguration*.
  core.String kind;

  /// Interval in milliseconds between replication heartbeats.
  core.String masterHeartbeatPeriod;

  /// The password for the replication connection.
  core.String password;

  /// A list of permissible ciphers to use for SSL encryption.
  core.String sslCipher;

  /// The username for the replication connection.
  core.String username;

  /// Whether or not to check the primary instance's Common Name value in the
  /// certificate that it sends during the SSL handshake.
  core.bool verifyServerCertificate;

  MySqlReplicaConfiguration();

  MySqlReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('caCertificate')) {
      caCertificate = _json['caCertificate'];
    }
    if (_json.containsKey('clientCertificate')) {
      clientCertificate = _json['clientCertificate'];
    }
    if (_json.containsKey('clientKey')) {
      clientKey = _json['clientKey'];
    }
    if (_json.containsKey('connectRetryInterval')) {
      connectRetryInterval = _json['connectRetryInterval'];
    }
    if (_json.containsKey('dumpFilePath')) {
      dumpFilePath = _json['dumpFilePath'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('masterHeartbeatPeriod')) {
      masterHeartbeatPeriod = _json['masterHeartbeatPeriod'];
    }
    if (_json.containsKey('password')) {
      password = _json['password'];
    }
    if (_json.containsKey('sslCipher')) {
      sslCipher = _json['sslCipher'];
    }
    if (_json.containsKey('username')) {
      username = _json['username'];
    }
    if (_json.containsKey('verifyServerCertificate')) {
      verifyServerCertificate = _json['verifyServerCertificate'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (caCertificate != null) {
      _json['caCertificate'] = caCertificate;
    }
    if (clientCertificate != null) {
      _json['clientCertificate'] = clientCertificate;
    }
    if (clientKey != null) {
      _json['clientKey'] = clientKey;
    }
    if (connectRetryInterval != null) {
      _json['connectRetryInterval'] = connectRetryInterval;
    }
    if (dumpFilePath != null) {
      _json['dumpFilePath'] = dumpFilePath;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (masterHeartbeatPeriod != null) {
      _json['masterHeartbeatPeriod'] = masterHeartbeatPeriod;
    }
    if (password != null) {
      _json['password'] = password;
    }
    if (sslCipher != null) {
      _json['sslCipher'] = sslCipher;
    }
    if (username != null) {
      _json['username'] = username;
    }
    if (verifyServerCertificate != null) {
      _json['verifyServerCertificate'] = verifyServerCertificate;
    }
    return _json;
  }
}

/// On-premises instance configuration.
class OnPremisesConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String caCertificate;

  /// PEM representation of the replica's x509 certificate.
  core.String clientCertificate;

  /// PEM representation of the replica's private key. The corresponsing public
  /// key is encoded in the client's certificate.
  core.String clientKey;

  /// The dump file to create the Cloud SQL replica.
  core.String dumpFilePath;

  /// The host and port of the on-premises instance in host:port format
  core.String hostPort;

  /// This is always *sql#onPremisesConfiguration*.
  core.String kind;

  /// The password for connecting to on-premises instance.
  core.String password;

  /// The username for connecting to on-premises instance.
  core.String username;

  OnPremisesConfiguration();

  OnPremisesConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('caCertificate')) {
      caCertificate = _json['caCertificate'];
    }
    if (_json.containsKey('clientCertificate')) {
      clientCertificate = _json['clientCertificate'];
    }
    if (_json.containsKey('clientKey')) {
      clientKey = _json['clientKey'];
    }
    if (_json.containsKey('dumpFilePath')) {
      dumpFilePath = _json['dumpFilePath'];
    }
    if (_json.containsKey('hostPort')) {
      hostPort = _json['hostPort'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('password')) {
      password = _json['password'];
    }
    if (_json.containsKey('username')) {
      username = _json['username'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (caCertificate != null) {
      _json['caCertificate'] = caCertificate;
    }
    if (clientCertificate != null) {
      _json['clientCertificate'] = clientCertificate;
    }
    if (clientKey != null) {
      _json['clientKey'] = clientKey;
    }
    if (dumpFilePath != null) {
      _json['dumpFilePath'] = dumpFilePath;
    }
    if (hostPort != null) {
      _json['hostPort'] = hostPort;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (password != null) {
      _json['password'] = password;
    }
    if (username != null) {
      _json['username'] = username;
    }
    return _json;
  }
}

/// An Operation resource. For successful operations that return an Operation
/// resource, only the fields relevant to the operation are populated in the
/// resource.
class Operation {
  /// The time this operation finished in UTC timezone in RFC 3339 format, for
  /// example *2012-11-15T16:19:00.094Z*.
  core.String endTime;

  /// If errors occurred during processing of this operation, this field will be
  /// populated.
  OperationErrors error;

  /// The context for export operation, if applicable.
  ExportContext exportContext;

  /// The context for import operation, if applicable.
  ImportContext importContext;

  /// The time this operation was enqueued in UTC timezone in RFC 3339 format,
  /// for example *2012-11-15T16:19:00.094Z*.
  core.String insertTime;

  /// This is always *sql#operation*.
  core.String kind;

  /// An identifier that uniquely identifies the operation. You can use this
  /// identifier to retrieve the Operations resource that has information about
  /// the operation.
  core.String name;

  /// The type of the operation. Valid values are: *CREATE* *DELETE* *UPDATE*
  /// *RESTART* *IMPORT* *EXPORT* *BACKUP_VOLUME* *RESTORE_VOLUME* *CREATE_USER*
  /// *DELETE_USER* *CREATE_DATABASE* *DELETE_DATABASE*
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
  core.String operationType;

  /// The URI of this resource.
  core.String selfLink;

  /// The time this operation actually started in UTC timezone in RFC 3339
  /// format, for example *2012-11-15T16:19:00.094Z*.
  core.String startTime;

  /// The status of an operation. Valid values are: *PENDING* *RUNNING* *DONE*
  /// *SQL_OPERATION_STATUS_UNSPECIFIED*
  /// Possible string values are:
  /// - "SQL_OPERATION_STATUS_UNSPECIFIED" : The state of the operation is
  /// unknown.
  /// - "PENDING" : The operation has been queued, but has not started yet.
  /// - "RUNNING" : The operation is running.
  /// - "DONE" : The operation completed.
  core.String status;

  /// Name of the database instance related to this operation.
  core.String targetId;
  core.String targetLink;

  /// The project ID of the target instance related to this operation.
  core.String targetProject;

  /// The email address of the user who initiated this operation.
  core.String user;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'];
    }
    if (_json.containsKey('error')) {
      error = OperationErrors.fromJson(_json['error']);
    }
    if (_json.containsKey('exportContext')) {
      exportContext = ExportContext.fromJson(_json['exportContext']);
    }
    if (_json.containsKey('importContext')) {
      importContext = ImportContext.fromJson(_json['importContext']);
    }
    if (_json.containsKey('insertTime')) {
      insertTime = _json['insertTime'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('operationType')) {
      operationType = _json['operationType'];
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
    if (_json.containsKey('status')) {
      status = _json['status'];
    }
    if (_json.containsKey('targetId')) {
      targetId = _json['targetId'];
    }
    if (_json.containsKey('targetLink')) {
      targetLink = _json['targetLink'];
    }
    if (_json.containsKey('targetProject')) {
      targetProject = _json['targetProject'];
    }
    if (_json.containsKey('user')) {
      user = _json['user'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (exportContext != null) {
      _json['exportContext'] = exportContext.toJson();
    }
    if (importContext != null) {
      _json['importContext'] = importContext.toJson();
    }
    if (insertTime != null) {
      _json['insertTime'] = insertTime;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (operationType != null) {
      _json['operationType'] = operationType;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (status != null) {
      _json['status'] = status;
    }
    if (targetId != null) {
      _json['targetId'] = targetId;
    }
    if (targetLink != null) {
      _json['targetLink'] = targetLink;
    }
    if (targetProject != null) {
      _json['targetProject'] = targetProject;
    }
    if (user != null) {
      _json['user'] = user;
    }
    return _json;
  }
}

/// Database instance operation error.
class OperationError {
  /// Identifies the specific error that occurred.
  core.String code;

  /// This is always *sql#operationError*.
  core.String kind;

  /// Additional information about the error encountered.
  core.String message;

  OperationError();

  OperationError.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('message')) {
      message = _json['message'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Database instance operation errors list wrapper.
class OperationErrors {
  /// The list of errors encountered while processing this operation.
  core.List<OperationError> errors;

  /// This is always *sql#operationErrors*.
  core.String kind;

  OperationErrors();

  OperationErrors.fromJson(core.Map _json) {
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<OperationError>((value) => OperationError.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (errors != null) {
      _json['errors'] = errors.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// Database instance list operations response.
class OperationsListResponse {
  /// List of operation resources.
  core.List<Operation> items;

  /// This is always *sql#operationsList*.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  OperationsListResponse();

  OperationsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Operation>((value) => Operation.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfiguration {
  /// Specifies if the replica is the failover target. If the field is set to
  /// *true* the replica will be designated as a failover replica. In case the
  /// primary instance fails, the replica instance will be promoted as the new
  /// primary instance. Only one replica can be specified as failover target,
  /// and the replica has to be in different zone with the primary instance.
  core.bool failoverTarget;

  /// This is always *sql#replicaConfiguration*.
  core.String kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises
  /// primary instance. Replication configuration information such as the
  /// username, password, certificates, and keys are not stored in the instance
  /// metadata. The configuration information is used only to set up the
  /// replication connection and is stored by MySQL in a file named
  /// *master.info* in the data directory.
  MySqlReplicaConfiguration mysqlReplicaConfiguration;

  ReplicaConfiguration();

  ReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey('failoverTarget')) {
      failoverTarget = _json['failoverTarget'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('mysqlReplicaConfiguration')) {
      mysqlReplicaConfiguration = MySqlReplicaConfiguration.fromJson(
          _json['mysqlReplicaConfiguration']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (failoverTarget != null) {
      _json['failoverTarget'] = failoverTarget;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (mysqlReplicaConfiguration != null) {
      _json['mysqlReplicaConfiguration'] = mysqlReplicaConfiguration.toJson();
    }
    return _json;
  }
}

class Reschedule {
  /// Required. The type of the reschedule.
  /// Possible string values are:
  /// - "RESCHEDULE_TYPE_UNSPECIFIED"
  /// - "IMMEDIATE" : If the user wants to schedule the maintenance to happen
  /// now.
  /// - "NEXT_AVAILABLE_WINDOW" : If the user wants to use the existing
  /// maintenance policy to find the next available window.
  /// - "SPECIFIC_TIME" : If the user wants to reschedule the maintenance to a
  /// specific time.
  core.String rescheduleType;

  /// Optional. Timestamp when the maintenance shall be rescheduled to if
  /// reschedule_type=SPECIFIC_TIME, in RFC 3339 format, for example
  /// *2012-11-15T16:19:00.094Z*.
  core.String scheduleTime;

  Reschedule();

  Reschedule.fromJson(core.Map _json) {
    if (_json.containsKey('rescheduleType')) {
      rescheduleType = _json['rescheduleType'];
    }
    if (_json.containsKey('scheduleTime')) {
      scheduleTime = _json['scheduleTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (rescheduleType != null) {
      _json['rescheduleType'] = rescheduleType;
    }
    if (scheduleTime != null) {
      _json['scheduleTime'] = scheduleTime;
    }
    return _json;
  }
}

/// Database instance restore from backup context. Backup context contains
/// source instance id and project id.
class RestoreBackupContext {
  /// The ID of the backup run to restore from.
  core.String backupRunId;

  /// The ID of the instance that the backup was taken from.
  core.String instanceId;

  /// This is always *sql#restoreBackupContext*.
  core.String kind;

  /// The full project ID of the source instance.
  core.String project;

  RestoreBackupContext();

  RestoreBackupContext.fromJson(core.Map _json) {
    if (_json.containsKey('backupRunId')) {
      backupRunId = _json['backupRunId'];
    }
    if (_json.containsKey('instanceId')) {
      instanceId = _json['instanceId'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('project')) {
      project = _json['project'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (backupRunId != null) {
      _json['backupRunId'] = backupRunId;
    }
    if (instanceId != null) {
      _json['instanceId'] = instanceId;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (project != null) {
      _json['project'] = project;
    }
    return _json;
  }
}

/// Instance rotate server CA context.
class RotateServerCaContext {
  /// This is always *sql#rotateServerCaContext*.
  core.String kind;

  /// The fingerprint of the next version to be rotated to. If left unspecified,
  /// will be rotated to the most recently added server CA version.
  core.String nextVersion;

  RotateServerCaContext();

  RotateServerCaContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextVersion')) {
      nextVersion = _json['nextVersion'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextVersion != null) {
      _json['nextVersion'] = nextVersion;
    }
    return _json;
  }
}

/// Database instance settings.
class Settings {
  /// The activation policy specifies when the instance is activated; it is
  /// applicable only when the instance state is RUNNABLE. Valid values:
  /// *ALWAYS*: The instance is on, and remains so even in the absence of
  /// connection requests. *NEVER*: The instance is off; it is not activated,
  /// even if a connection request arrives.
  /// Possible string values are:
  /// - "SQL_ACTIVATION_POLICY_UNSPECIFIED" : Unknown activation plan.
  /// - "ALWAYS" : The instance is always up and running.
  /// - "NEVER" : The instance never starts.
  /// - "ON_DEMAND" : The instance starts upon receiving requests.
  core.String activationPolicy;

  /// Active Directory configuration, for now relevant only for SQL Server
  SqlActiveDirectoryConfig activeDirectoryConfig;

  /// The App Engine app IDs that can access this instance. (Deprecated) Applied
  /// to First Generation instances only.
  core.List<core.String> authorizedGaeApplications;

  /// Availability type. Potential values: *ZONAL*: The instance serves data
  /// from only one zone. Outages in that zone affect data accessibility.
  /// *REGIONAL*: The instance can serve data from more than one zone in a
  /// region (it is highly available). For more information, see Overview of the
  /// High Availability Configuration.
  /// Possible string values are:
  /// - "SQL_AVAILABILITY_TYPE_UNSPECIFIED" : This is an unknown Availability
  /// type.
  /// - "ZONAL" : Zonal available instance.
  /// - "REGIONAL" : Regional available instance.
  core.String availabilityType;

  /// The daily backup configuration for the instance.
  BackupConfiguration backupConfiguration;

  /// The name of server Instance collation.
  core.String collation;

  /// Configuration specific to read replica instances. Indicates whether
  /// database flags for crash-safe replication are enabled. This property was
  /// only applicable to First Generation instances.
  core.bool crashSafeReplicationEnabled;

  /// The size of data disk, in GB. The data disk size minimum is 10GB.
  core.String dataDiskSizeGb;

  /// The type of data disk: PD_SSD (default) or PD_HDD. Not used for First
  /// Generation instances.
  /// Possible string values are:
  /// - "SQL_DATA_DISK_TYPE_UNSPECIFIED" : This is an unknown data disk type.
  /// - "PD_SSD" : An SSD data disk.
  /// - "PD_HDD" : An HDD data disk.
  /// - "OBSOLETE_LOCAL_SSD" : This field is deprecated and will be removed from
  /// a future version of the API.
  core.String dataDiskType;

  /// The database flags passed to the instance at startup.
  core.List<DatabaseFlags> databaseFlags;

  /// Configuration specific to read replica instances. Indicates whether
  /// replication is enabled or not.
  core.bool databaseReplicationEnabled;

  /// Deny maintenance periods
  core.List<DenyMaintenancePeriod> denyMaintenancePeriods;

  /// The settings for IP Management. This allows to enable or disable the
  /// instance IP and manage which external networks can connect to the
  /// instance. The IPv4 address cannot be disabled for Second Generation
  /// instances.
  IpConfiguration ipConfiguration;

  /// This is always *sql#settings*.
  core.String kind;

  /// The location preference settings. This allows the instance to be located
  /// as near as possible to either an App Engine app or Compute Engine zone for
  /// better performance. App Engine co-location was only applicable to First
  /// Generation instances.
  LocationPreference locationPreference;

  /// The maintenance window for this instance. This specifies when the instance
  /// can be restarted for maintenance purposes.
  MaintenanceWindow maintenanceWindow;

  /// The pricing plan for this instance. This can be either *PER_USE* or
  /// *PACKAGE*. Only *PER_USE* is supported for Second Generation instances.
  /// Possible string values are:
  /// - "SQL_PRICING_PLAN_UNSPECIFIED" : This is an unknown pricing plan for
  /// this instance.
  /// - "PACKAGE" : The instance is billed at a monthly flat rate.
  /// - "PER_USE" : The instance is billed per usage.
  core.String pricingPlan;

  /// The type of replication this instance uses. This can be either
  /// *ASYNCHRONOUS* or *SYNCHRONOUS*. (Deprecated_ This property was only
  /// applicable to First Generation instances.
  /// Possible string values are:
  /// - "SQL_REPLICATION_TYPE_UNSPECIFIED" : This is an unknown replication type
  /// for a Cloud SQL instance.
  /// - "SYNCHRONOUS" : The synchronous replication mode for First Generation
  /// instances. It is the default value.
  /// - "ASYNCHRONOUS" : The asynchronous replication mode for First Generation
  /// instances. It provides a slight performance gain, but if an outage occurs
  /// while this option is set to asynchronous, you can lose up to a few seconds
  /// of updates to your data.
  core.String replicationType;

  /// The version of instance settings. This is a required field for update
  /// method to make sure concurrent updates are handled properly. During
  /// update, use the most recent settingsVersion value for this instance and do
  /// not try to update this value.
  core.String settingsVersion;

  /// Configuration to increase storage size automatically. The default value is
  /// true.
  core.bool storageAutoResize;

  /// The maximum size to which storage capacity can be automatically increased.
  /// The default value is 0, which specifies that there is no limit.
  core.String storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example
  /// *db-n1-standard-1* (MySQL instances) or *db-custom-1-3840* (PostgreSQL
  /// instances).
  core.String tier;

  /// User-provided labels, represented as a dictionary where each label is a
  /// single key value pair.
  core.Map<core.String, core.String> userLabels;

  Settings();

  Settings.fromJson(core.Map _json) {
    if (_json.containsKey('activationPolicy')) {
      activationPolicy = _json['activationPolicy'];
    }
    if (_json.containsKey('activeDirectoryConfig')) {
      activeDirectoryConfig =
          SqlActiveDirectoryConfig.fromJson(_json['activeDirectoryConfig']);
    }
    if (_json.containsKey('authorizedGaeApplications')) {
      authorizedGaeApplications =
          (_json['authorizedGaeApplications'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('availabilityType')) {
      availabilityType = _json['availabilityType'];
    }
    if (_json.containsKey('backupConfiguration')) {
      backupConfiguration =
          BackupConfiguration.fromJson(_json['backupConfiguration']);
    }
    if (_json.containsKey('collation')) {
      collation = _json['collation'];
    }
    if (_json.containsKey('crashSafeReplicationEnabled')) {
      crashSafeReplicationEnabled = _json['crashSafeReplicationEnabled'];
    }
    if (_json.containsKey('dataDiskSizeGb')) {
      dataDiskSizeGb = _json['dataDiskSizeGb'];
    }
    if (_json.containsKey('dataDiskType')) {
      dataDiskType = _json['dataDiskType'];
    }
    if (_json.containsKey('databaseFlags')) {
      databaseFlags = (_json['databaseFlags'] as core.List)
          .map<DatabaseFlags>((value) => DatabaseFlags.fromJson(value))
          .toList();
    }
    if (_json.containsKey('databaseReplicationEnabled')) {
      databaseReplicationEnabled = _json['databaseReplicationEnabled'];
    }
    if (_json.containsKey('denyMaintenancePeriods')) {
      denyMaintenancePeriods = (_json['denyMaintenancePeriods'] as core.List)
          .map<DenyMaintenancePeriod>(
              (value) => DenyMaintenancePeriod.fromJson(value))
          .toList();
    }
    if (_json.containsKey('ipConfiguration')) {
      ipConfiguration = IpConfiguration.fromJson(_json['ipConfiguration']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('locationPreference')) {
      locationPreference =
          LocationPreference.fromJson(_json['locationPreference']);
    }
    if (_json.containsKey('maintenanceWindow')) {
      maintenanceWindow =
          MaintenanceWindow.fromJson(_json['maintenanceWindow']);
    }
    if (_json.containsKey('pricingPlan')) {
      pricingPlan = _json['pricingPlan'];
    }
    if (_json.containsKey('replicationType')) {
      replicationType = _json['replicationType'];
    }
    if (_json.containsKey('settingsVersion')) {
      settingsVersion = _json['settingsVersion'];
    }
    if (_json.containsKey('storageAutoResize')) {
      storageAutoResize = _json['storageAutoResize'];
    }
    if (_json.containsKey('storageAutoResizeLimit')) {
      storageAutoResizeLimit = _json['storageAutoResizeLimit'];
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'];
    }
    if (_json.containsKey('userLabels')) {
      userLabels =
          (_json['userLabels'] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (activationPolicy != null) {
      _json['activationPolicy'] = activationPolicy;
    }
    if (activeDirectoryConfig != null) {
      _json['activeDirectoryConfig'] = activeDirectoryConfig.toJson();
    }
    if (authorizedGaeApplications != null) {
      _json['authorizedGaeApplications'] = authorizedGaeApplications;
    }
    if (availabilityType != null) {
      _json['availabilityType'] = availabilityType;
    }
    if (backupConfiguration != null) {
      _json['backupConfiguration'] = backupConfiguration.toJson();
    }
    if (collation != null) {
      _json['collation'] = collation;
    }
    if (crashSafeReplicationEnabled != null) {
      _json['crashSafeReplicationEnabled'] = crashSafeReplicationEnabled;
    }
    if (dataDiskSizeGb != null) {
      _json['dataDiskSizeGb'] = dataDiskSizeGb;
    }
    if (dataDiskType != null) {
      _json['dataDiskType'] = dataDiskType;
    }
    if (databaseFlags != null) {
      _json['databaseFlags'] =
          databaseFlags.map((value) => value.toJson()).toList();
    }
    if (databaseReplicationEnabled != null) {
      _json['databaseReplicationEnabled'] = databaseReplicationEnabled;
    }
    if (denyMaintenancePeriods != null) {
      _json['denyMaintenancePeriods'] =
          denyMaintenancePeriods.map((value) => value.toJson()).toList();
    }
    if (ipConfiguration != null) {
      _json['ipConfiguration'] = ipConfiguration.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (locationPreference != null) {
      _json['locationPreference'] = locationPreference.toJson();
    }
    if (maintenanceWindow != null) {
      _json['maintenanceWindow'] = maintenanceWindow.toJson();
    }
    if (pricingPlan != null) {
      _json['pricingPlan'] = pricingPlan;
    }
    if (replicationType != null) {
      _json['replicationType'] = replicationType;
    }
    if (settingsVersion != null) {
      _json['settingsVersion'] = settingsVersion;
    }
    if (storageAutoResize != null) {
      _json['storageAutoResize'] = storageAutoResize;
    }
    if (storageAutoResizeLimit != null) {
      _json['storageAutoResizeLimit'] = storageAutoResizeLimit;
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    if (userLabels != null) {
      _json['userLabels'] = userLabels;
    }
    return _json;
  }
}

/// Active Directory configuration, for now relevant only for SQL Server
class SqlActiveDirectoryConfig {
  /// Domain name
  core.String domain;

  /// This will be always sql#activeDirectoryConfig.
  core.String kind;

  SqlActiveDirectoryConfig();

  SqlActiveDirectoryConfig.fromJson(core.Map _json) {
    if (_json.containsKey('domain')) {
      domain = _json['domain'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (domain != null) {
      _json['domain'] = domain;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// External primary instance migration setting error.
class SqlExternalSyncSettingError {
  /// Additional information about the error encountered.
  core.String detail;

  /// This is always *sql#migrationSettingError*.
  core.String kind;

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
  core.String type;

  SqlExternalSyncSettingError();

  SqlExternalSyncSettingError.fromJson(core.Map _json) {
    if (_json.containsKey('detail')) {
      detail = _json['detail'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (detail != null) {
      _json['detail'] = detail;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Reschedule options for maintenance windows.
class SqlInstancesRescheduleMaintenanceRequestBody {
  /// Required. The type of the reschedule the user wants.
  Reschedule reschedule;

  SqlInstancesRescheduleMaintenanceRequestBody();

  SqlInstancesRescheduleMaintenanceRequestBody.fromJson(core.Map _json) {
    if (_json.containsKey('reschedule')) {
      reschedule = Reschedule.fromJson(_json['reschedule']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (reschedule != null) {
      _json['reschedule'] = reschedule.toJson();
    }
    return _json;
  }
}

/// Instance verify external sync settings response.
class SqlInstancesVerifyExternalSyncSettingsResponse {
  /// List of migration violations.
  core.List<SqlExternalSyncSettingError> errors;

  /// This is always *sql#migrationSettingErrorList*.
  core.String kind;

  SqlInstancesVerifyExternalSyncSettingsResponse();

  SqlInstancesVerifyExternalSyncSettingsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('errors')) {
      errors = (_json['errors'] as core.List)
          .map<SqlExternalSyncSettingError>(
              (value) => SqlExternalSyncSettingError.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (errors != null) {
      _json['errors'] = errors.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// Any scheduled maintenancce for this instance.
class SqlScheduledMaintenance {
  core.bool canDefer;

  /// If the scheduled maintenance can be rescheduled.
  core.bool canReschedule;

  /// The start time of any upcoming scheduled maintenance for this instance.
  core.String startTime;

  SqlScheduledMaintenance();

  SqlScheduledMaintenance.fromJson(core.Map _json) {
    if (_json.containsKey('canDefer')) {
      canDefer = _json['canDefer'];
    }
    if (_json.containsKey('canReschedule')) {
      canReschedule = _json['canReschedule'];
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (canDefer != null) {
      _json['canDefer'] = canDefer;
    }
    if (canReschedule != null) {
      _json['canReschedule'] = canReschedule;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Represents a Sql Server database on the Cloud SQL instance.
class SqlServerDatabaseDetails {
  /// The version of SQL Server with which the database is to be made compatible
  core.int compatibilityLevel;

  /// The recovery model of a SQL Server database
  core.String recoveryModel;

  SqlServerDatabaseDetails();

  SqlServerDatabaseDetails.fromJson(core.Map _json) {
    if (_json.containsKey('compatibilityLevel')) {
      compatibilityLevel = _json['compatibilityLevel'];
    }
    if (_json.containsKey('recoveryModel')) {
      recoveryModel = _json['recoveryModel'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (compatibilityLevel != null) {
      _json['compatibilityLevel'] = compatibilityLevel;
    }
    if (recoveryModel != null) {
      _json['recoveryModel'] = recoveryModel;
    }
    return _json;
  }
}

/// Represents a Sql Server user on the Cloud SQL instance.
class SqlServerUserDetails {
  /// If the user has been disabled
  core.bool disabled;

  /// The server roles for this user
  core.List<core.String> serverRoles;

  SqlServerUserDetails();

  SqlServerUserDetails.fromJson(core.Map _json) {
    if (_json.containsKey('disabled')) {
      disabled = _json['disabled'];
    }
    if (_json.containsKey('serverRoles')) {
      serverRoles = (_json['serverRoles'] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (disabled != null) {
      _json['disabled'] = disabled;
    }
    if (serverRoles != null) {
      _json['serverRoles'] = serverRoles;
    }
    return _json;
  }
}

/// SslCerts Resource
class SslCert {
  /// PEM representation.
  core.String cert;

  /// Serial number, as extracted from the certificate.
  core.String certSerialNumber;

  /// User supplied name. Constrained to [a-zA-Z.-_ ]+.
  core.String commonName;

  /// The time when the certificate was created in RFC 3339 format, for example
  /// *2012-11-15T16:19:00.094Z*
  core.String createTime;

  /// The time when the certificate expires in RFC 3339 format, for example
  /// *2012-11-15T16:19:00.094Z*.
  core.String expirationTime;

  /// Name of the database instance.
  core.String instance;

  /// This is always *sql#sslCert*.
  core.String kind;

  /// The URI of this resource.
  core.String selfLink;

  /// Sha1 Fingerprint.
  core.String sha1Fingerprint;

  SslCert();

  SslCert.fromJson(core.Map _json) {
    if (_json.containsKey('cert')) {
      cert = _json['cert'];
    }
    if (_json.containsKey('certSerialNumber')) {
      certSerialNumber = _json['certSerialNumber'];
    }
    if (_json.containsKey('commonName')) {
      commonName = _json['commonName'];
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'];
    }
    if (_json.containsKey('expirationTime')) {
      expirationTime = _json['expirationTime'];
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('selfLink')) {
      selfLink = _json['selfLink'];
    }
    if (_json.containsKey('sha1Fingerprint')) {
      sha1Fingerprint = _json['sha1Fingerprint'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (cert != null) {
      _json['cert'] = cert;
    }
    if (certSerialNumber != null) {
      _json['certSerialNumber'] = certSerialNumber;
    }
    if (commonName != null) {
      _json['commonName'] = commonName;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (expirationTime != null) {
      _json['expirationTime'] = expirationTime;
    }
    if (instance != null) {
      _json['instance'] = instance;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (selfLink != null) {
      _json['selfLink'] = selfLink;
    }
    if (sha1Fingerprint != null) {
      _json['sha1Fingerprint'] = sha1Fingerprint;
    }
    return _json;
  }
}

/// SslCertDetail.
class SslCertDetail {
  /// The public information about the cert.
  SslCert certInfo;

  /// The private key for the client cert, in pem format. Keep private in order
  /// to protect your security.
  core.String certPrivateKey;

  SslCertDetail();

  SslCertDetail.fromJson(core.Map _json) {
    if (_json.containsKey('certInfo')) {
      certInfo = SslCert.fromJson(_json['certInfo']);
    }
    if (_json.containsKey('certPrivateKey')) {
      certPrivateKey = _json['certPrivateKey'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (certInfo != null) {
      _json['certInfo'] = certInfo.toJson();
    }
    if (certPrivateKey != null) {
      _json['certPrivateKey'] = certPrivateKey;
    }
    return _json;
  }
}

/// SslCerts create ephemeral certificate request.
class SslCertsCreateEphemeralRequest {
  /// PEM encoded public key to include in the signed certificate.
  core.String publicKey;

  SslCertsCreateEphemeralRequest();

  SslCertsCreateEphemeralRequest.fromJson(core.Map _json) {
    if (_json.containsKey('public_key')) {
      publicKey = _json['public_key'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (publicKey != null) {
      _json['public_key'] = publicKey;
    }
    return _json;
  }
}

/// SslCerts insert request.
class SslCertsInsertRequest {
  /// User supplied name. Must be a distinct name from the other certificates
  /// for this instance.
  core.String commonName;

  SslCertsInsertRequest();

  SslCertsInsertRequest.fromJson(core.Map _json) {
    if (_json.containsKey('commonName')) {
      commonName = _json['commonName'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (commonName != null) {
      _json['commonName'] = commonName;
    }
    return _json;
  }
}

/// SslCert insert response.
class SslCertsInsertResponse {
  /// The new client certificate and private key.
  SslCertDetail clientCert;

  /// This is always *sql#sslCertsInsert*.
  core.String kind;

  /// The operation to track the ssl certs insert request.
  Operation operation;

  /// The server Certificate Authority's certificate. If this is missing you can
  /// force a new one to be generated by calling resetSslConfig method on
  /// instances resource.
  SslCert serverCaCert;

  SslCertsInsertResponse();

  SslCertsInsertResponse.fromJson(core.Map _json) {
    if (_json.containsKey('clientCert')) {
      clientCert = SslCertDetail.fromJson(_json['clientCert']);
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('operation')) {
      operation = Operation.fromJson(_json['operation']);
    }
    if (_json.containsKey('serverCaCert')) {
      serverCaCert = SslCert.fromJson(_json['serverCaCert']);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (clientCert != null) {
      _json['clientCert'] = clientCert.toJson();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (operation != null) {
      _json['operation'] = operation.toJson();
    }
    if (serverCaCert != null) {
      _json['serverCaCert'] = serverCaCert.toJson();
    }
    return _json;
  }
}

/// SslCerts list response.
class SslCertsListResponse {
  /// List of client certificates for the instance.
  core.List<SslCert> items;

  /// This is always *sql#sslCertsList*.
  core.String kind;

  SslCertsListResponse();

  SslCertsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<SslCert>((value) => SslCert.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// A Google Cloud SQL service tier resource.
class Tier {
  /// The maximum disk size of this tier in bytes.
  core.String DiskQuota;

  /// The maximum RAM usage of this tier in bytes.
  core.String RAM;

  /// This is always *sql#tier*.
  core.String kind;

  /// The applicable regions for this tier.
  core.List<core.String> region;

  /// An identifier for the machine type, for example, db-n1-standard-1. For
  /// related information, see Pricing.
  core.String tier;

  Tier();

  Tier.fromJson(core.Map _json) {
    if (_json.containsKey('DiskQuota')) {
      DiskQuota = _json['DiskQuota'];
    }
    if (_json.containsKey('RAM')) {
      RAM = _json['RAM'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('region')) {
      region = (_json['region'] as core.List).cast<core.String>();
    }
    if (_json.containsKey('tier')) {
      tier = _json['tier'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (DiskQuota != null) {
      _json['DiskQuota'] = DiskQuota;
    }
    if (RAM != null) {
      _json['RAM'] = RAM;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (region != null) {
      _json['region'] = region;
    }
    if (tier != null) {
      _json['tier'] = tier;
    }
    return _json;
  }
}

/// Tiers list response.
class TiersListResponse {
  /// List of tiers.
  core.List<Tier> items;

  /// This is always *sql#tiersList*.
  core.String kind;

  TiersListResponse();

  TiersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<Tier>((value) => Tier.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    return _json;
  }
}

/// Database Instance truncate log context.
class TruncateLogContext {
  /// This is always *sql#truncateLogContext*.
  core.String kind;

  /// The type of log to truncate. Valid values are *MYSQL_GENERAL_TABLE* and
  /// *MYSQL_SLOW_TABLE*.
  core.String logType;

  TruncateLogContext();

  TruncateLogContext.fromJson(core.Map _json) {
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('logType')) {
      logType = _json['logType'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (logType != null) {
      _json['logType'] = logType;
    }
    return _json;
  }
}

/// A Cloud SQL user resource.
class User {
  /// This field is deprecated and will be removed from a future version of the
  /// API.
  core.String etag;

  /// The host name from which the user can connect. For *insert* operations,
  /// host defaults to an empty string. For *update* operations, host is
  /// specified as part of the request URL. The host name cannot be updated
  /// after insertion.
  core.String host;

  /// The name of the Cloud SQL instance. This does not include the project ID.
  /// Can be omitted for *update* since it is already specified on the URL.
  core.String instance;

  /// This is always *sql#user*.
  core.String kind;

  /// The name of the user in the Cloud SQL instance. Can be omitted for
  /// *update* since it is already specified in the URL.
  core.String name;

  /// The password for the user.
  core.String password;

  /// The project ID of the project containing the Cloud SQL database. The
  /// Google apps domain is prefixed if applicable. Can be omitted for *update*
  /// since it is already specified on the URL.
  core.String project;
  SqlServerUserDetails sqlserverUserDetails;

  /// The user type. It determines the method to authenticate the user during
  /// login. The default is the database's built-in user type.
  /// Possible string values are:
  /// - "BUILT_IN" : The database's built-in user type.
  /// - "CLOUD_IAM_USER" : Cloud IAM user.
  /// - "CLOUD_IAM_SERVICE_ACCOUNT" : Cloud IAM service account.
  core.String type;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey('etag')) {
      etag = _json['etag'];
    }
    if (_json.containsKey('host')) {
      host = _json['host'];
    }
    if (_json.containsKey('instance')) {
      instance = _json['instance'];
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('name')) {
      name = _json['name'];
    }
    if (_json.containsKey('password')) {
      password = _json['password'];
    }
    if (_json.containsKey('project')) {
      project = _json['project'];
    }
    if (_json.containsKey('sqlserverUserDetails')) {
      sqlserverUserDetails =
          SqlServerUserDetails.fromJson(_json['sqlserverUserDetails']);
    }
    if (_json.containsKey('type')) {
      type = _json['type'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (etag != null) {
      _json['etag'] = etag;
    }
    if (host != null) {
      _json['host'] = host;
    }
    if (instance != null) {
      _json['instance'] = instance;
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (password != null) {
      _json['password'] = password;
    }
    if (project != null) {
      _json['project'] = project;
    }
    if (sqlserverUserDetails != null) {
      _json['sqlserverUserDetails'] = sqlserverUserDetails.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// User list response.
class UsersListResponse {
  /// List of user resources in the instance.
  core.List<User> items;

  /// This is always *sql#usersList*.
  core.String kind;

  /// An identifier that uniquely identifies the operation. You can use this
  /// identifier to retrieve the Operations resource that has information about
  /// the operation.
  core.String nextPageToken;

  UsersListResponse();

  UsersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey('items')) {
      items = (_json['items'] as core.List)
          .map<User>((value) => User.fromJson(value))
          .toList();
    }
    if (_json.containsKey('kind')) {
      kind = _json['kind'];
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        <core.String, core.Object>{};
    if (items != null) {
      _json['items'] = items.map((value) => value.toJson()).toList();
    }
    if (kind != null) {
      _json['kind'] = kind;
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}
