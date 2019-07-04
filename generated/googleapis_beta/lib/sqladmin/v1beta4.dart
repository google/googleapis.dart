// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis_beta.sqladmin.v1beta4;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client sqladmin/v1beta4';

/// Creates and manages Cloud SQL instances, which provide fully managed MySQL
/// or PostgreSQL databases.
class SqladminApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// Manage your Google SQL Service instances
  static const SqlserviceAdminScope =
      "https://www.googleapis.com/auth/sqlservice.admin";

  final commons.ApiRequester _requester;

  BackupRunsResourceApi get backupRuns => new BackupRunsResourceApi(_requester);
  DatabasesResourceApi get databases => new DatabasesResourceApi(_requester);
  FlagsResourceApi get flags => new FlagsResourceApi(_requester);
  InstancesResourceApi get instances => new InstancesResourceApi(_requester);
  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  SslCertsResourceApi get sslCerts => new SslCertsResourceApi(_requester);
  TiersResourceApi get tiers => new TiersResourceApi(_requester);
  UsersResourceApi get users => new UsersResourceApi(_requester);

  SqladminApi(http.Client client,
      {core.String rootUrl = "https://www.googleapis.com/",
      core.String servicePath = "sql/v1beta4/"})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
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
      core.String project, core.String instance, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/backupRuns/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance, core.String id,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (id == null) {
      throw new core.ArgumentError("Parameter id is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/backupRuns/' +
        commons.Escaper.ecapeVariable('$id');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BackupRun.fromJson(data));
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
      BackupRun request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/backupRuns';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/backupRuns';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new BackupRunsListResponse.fromJson(data));
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
      core.String project, core.String instance, core.String database,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases/' +
        commons.Escaper.ecapeVariable('$database');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance, core.String database,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases/' +
        commons.Escaper.ecapeVariable('$database');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Database.fromJson(data));
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
      Database request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DatabasesListResponse.fromJson(data));
  }

  /// Updates a resource containing information about a database inside a Cloud
  /// SQL instance. This method supports patch semantics.
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
  async.Future<Operation> patch(Database request, core.String project,
      core.String instance, core.String database,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases/' +
        commons.Escaper.ecapeVariable('$database');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> update(Database request, core.String project,
      core.String instance, core.String database,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (database == null) {
      throw new core.ArgumentError("Parameter database is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/databases/' +
        commons.Escaper.ecapeVariable('$database');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<FlagsListResponse> list(
      {core.String databaseVersion, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (databaseVersion != null) {
      _queryParams["databaseVersion"] = [databaseVersion];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'flags';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new FlagsListResponse.fromJson(data));
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
  async.Future<Operation> addServerCa(core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/addServerCa';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Creates a Cloud SQL instance as a clone of the source instance.
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
      InstancesCloneRequest request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/clone';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> delete(core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> demoteMaster(InstancesDemoteMasterRequest request,
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/demoteMaster';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      InstancesExportRequest request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/export';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Failover the instance to its failover replica instance.
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
  async.Future<Operation> failover(InstancesFailoverRequest request,
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/failover';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<DatabaseInstance> get(core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new DatabaseInstance.fromJson(data));
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
      InstancesImportRequest request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/import';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> insert(DatabaseInstance request, core.String project,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'projects/' + commons.Escaper.ecapeVariable('$project') + '/instances';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Lists instances under a given project in the alphabetical order of the
  /// instance name.
  ///
  /// Request parameters:
  ///
  /// [project] - Project ID of the project for which to list Cloud SQL
  /// instances.
  ///
  /// [filter] - An expression for filtering the results of the request, such as
  /// by name or label.
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
  async.Future<InstancesListResponse> list(core.String project,
      {core.String filter,
      core.int maxResults,
      core.String pageToken,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'projects/' + commons.Escaper.ecapeVariable('$project') + '/instances';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new InstancesListResponse.fromJson(data));
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
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/listServerCas';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new InstancesListServerCasResponse.fromJson(data));
  }

  /// Updates settings of a Cloud SQL instance. Caution: This is not a partial
  /// update, so you must include values for all the settings that you want to
  /// retain. For partial updates, use patch.. This method supports patch
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
      DatabaseInstance request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Promotes the read replica instance to be a stand-alone Cloud SQL instance.
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
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/promoteReplica';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/resetSslConfig';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> restart(core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/restart';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Restores a backup of a Cloud SQL instance.
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
  async.Future<Operation> restoreBackup(InstancesRestoreBackupRequest request,
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/restoreBackup';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> rotateServerCa(InstancesRotateServerCaRequest request,
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/rotateServerCa';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/startReplica';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> stopReplica(core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/stopReplica';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> truncateLog(InstancesTruncateLogRequest request,
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/truncateLog';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }

  /// Updates settings of a Cloud SQL instance. Caution: This is not a partial
  /// update, so you must include values for all the settings that you want to
  /// retain. For partial updates, use patch.
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
      DatabaseInstance request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
  async.Future<Operation> get(core.String project, core.String operation,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (operation == null) {
      throw new core.ArgumentError("Parameter operation is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/operations/' +
        commons.Escaper.ecapeVariable('$operation');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance,
      {core.int maxResults, core.String pageToken, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    _queryParams["instance"] = [instance];
    if (maxResults != null) {
      _queryParams["maxResults"] = ["${maxResults}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'projects/' + commons.Escaper.ecapeVariable('$project') + '/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new OperationsListResponse.fromJson(data));
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
  async.Future<SslCert> createEphemeral(SslCertsCreateEphemeralRequest request,
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/createEphemeral';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SslCert.fromJson(data));
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
      core.String project, core.String instance, core.String sha1Fingerprint,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (sha1Fingerprint == null) {
      throw new core.ArgumentError("Parameter sha1Fingerprint is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/sslCerts/' +
        commons.Escaper.ecapeVariable('$sha1Fingerprint');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance, core.String sha1Fingerprint,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (sha1Fingerprint == null) {
      throw new core.ArgumentError("Parameter sha1Fingerprint is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/sslCerts/' +
        commons.Escaper.ecapeVariable('$sha1Fingerprint');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SslCert.fromJson(data));
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
      SslCertsInsertRequest request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/sslCerts';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SslCertsInsertResponse.fromJson(data));
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
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/sslCerts';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new SslCertsListResponse.fromJson(data));
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
  async.Future<TiersListResponse> list(core.String project,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' + commons.Escaper.ecapeVariable('$project') + '/tiers';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new TiersListResponse.fromJson(data));
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
  async.Future<Operation> delete(core.String project, core.String instance,
      core.String host, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (host == null) {
      throw new core.ArgumentError("Parameter host is required.");
    }
    _queryParams["host"] = [host];
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    _queryParams["name"] = [name];
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/users';

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      User request, core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/users';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
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
      core.String project, core.String instance,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/users';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new UsersListResponse.fromJson(data));
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
  /// [name] - Name of the user in the instance.
  ///
  /// [host] - Host of the user in the instance.
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
      User request, core.String project, core.String instance, core.String name,
      {core.String host, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (project == null) {
      throw new core.ArgumentError("Parameter project is required.");
    }
    if (instance == null) {
      throw new core.ArgumentError("Parameter instance is required.");
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    _queryParams["name"] = [name];
    if (host != null) {
      _queryParams["host"] = [host];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'projects/' +
        commons.Escaper.ecapeVariable('$project') +
        '/instances/' +
        commons.Escaper.ecapeVariable('$instance') +
        '/users';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

/// An entry for an Access Control list.
class AclEntry {
  /// The time when this access control entry expires in RFC 3339 format, for
  /// example 2012-11-15T16:19:00.094Z.
  core.DateTime expirationTime;

  /// This is always sql#aclEntry.
  core.String kind;

  /// An optional label to identify this entry.
  core.String name;

  /// The whitelisted value for the access control list.
  core.String value;

  AclEntry();

  AclEntry.fromJson(core.Map _json) {
    if (_json.containsKey("expirationTime")) {
      expirationTime = core.DateTime.parse(_json["expirationTime"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (expirationTime != null) {
      _json["expirationTime"] = (expirationTime).toIso8601String();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// An Admin API warning message.
class ApiWarning {
  /// Code to uniquely identify the warning type.
  core.String code;

  /// The warning message.
  core.String message;

  ApiWarning();

  ApiWarning.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Database instance backup configuration.
class BackupConfiguration {
  /// Whether binary log is enabled. If backup configuration is disabled, binary
  /// log must be disabled as well.
  core.bool binaryLogEnabled;

  /// Whether this configuration is enabled.
  core.bool enabled;

  /// This is always sql#backupConfiguration.
  core.String kind;

  /// The location of the backup.
  core.String location;

  /// Reserved for future use.
  core.bool replicationLogArchivingEnabled;

  /// Start time for the daily backup configuration in UTC timezone in the 24
  /// hour format - HH:MM.
  core.String startTime;

  BackupConfiguration();

  BackupConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("binaryLogEnabled")) {
      binaryLogEnabled = _json["binaryLogEnabled"];
    }
    if (_json.containsKey("enabled")) {
      enabled = _json["enabled"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("replicationLogArchivingEnabled")) {
      replicationLogArchivingEnabled = _json["replicationLogArchivingEnabled"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (binaryLogEnabled != null) {
      _json["binaryLogEnabled"] = binaryLogEnabled;
    }
    if (enabled != null) {
      _json["enabled"] = enabled;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (replicationLogArchivingEnabled != null) {
      _json["replicationLogArchivingEnabled"] = replicationLogArchivingEnabled;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/// A BackupRun resource.
class BackupRun {
  /// The description of this run, only applicable to on-demand backups.
  core.String description;

  /// The time the backup operation completed in UTC timezone in RFC 3339
  /// format, for example 2012-11-15T16:19:00.094Z.
  core.DateTime endTime;

  /// The time the run was enqueued in UTC timezone in RFC 3339 format, for
  /// example 2012-11-15T16:19:00.094Z.
  core.DateTime enqueuedTime;

  /// Information about why the backup operation failed. This is only present if
  /// the run has the FAILED status.
  OperationError error;

  /// The identifier for this backup run. Unique only for a specific Cloud SQL
  /// instance.
  core.String id;

  /// Name of the database instance.
  core.String instance;

  /// This is always sql#backupRun.
  core.String kind;

  /// The location of the backup.
  core.String location;

  /// The URI of this resource.
  core.String selfLink;

  /// The time the backup operation actually started in UTC timezone in RFC 3339
  /// format, for example 2012-11-15T16:19:00.094Z.
  core.DateTime startTime;

  /// The status of this run.
  core.String status;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND".
  core.String type;

  /// The start time of the backup window during which this the backup was
  /// attempted in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
  core.DateTime windowStartTime;

  BackupRun();

  BackupRun.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("endTime")) {
      endTime = core.DateTime.parse(_json["endTime"]);
    }
    if (_json.containsKey("enqueuedTime")) {
      enqueuedTime = core.DateTime.parse(_json["enqueuedTime"]);
    }
    if (_json.containsKey("error")) {
      error = new OperationError.fromJson(_json["error"]);
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("location")) {
      location = _json["location"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("startTime")) {
      startTime = core.DateTime.parse(_json["startTime"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("windowStartTime")) {
      windowStartTime = core.DateTime.parse(_json["windowStartTime"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (endTime != null) {
      _json["endTime"] = (endTime).toIso8601String();
    }
    if (enqueuedTime != null) {
      _json["enqueuedTime"] = (enqueuedTime).toIso8601String();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (location != null) {
      _json["location"] = location;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (startTime != null) {
      _json["startTime"] = (startTime).toIso8601String();
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (windowStartTime != null) {
      _json["windowStartTime"] = (windowStartTime).toIso8601String();
    }
    return _json;
  }
}

/// Backup run list results.
class BackupRunsListResponse {
  /// A list of backup runs in reverse chronological order of the enqueued time.
  core.List<BackupRun> items;

  /// This is always sql#backupRunsList.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  BackupRunsListResponse();

  BackupRunsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<BackupRun>((value) => new BackupRun.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
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

  /// This is always sql#binLogCoordinates.
  core.String kind;

  BinLogCoordinates();

  BinLogCoordinates.fromJson(core.Map _json) {
    if (_json.containsKey("binLogFileName")) {
      binLogFileName = _json["binLogFileName"];
    }
    if (_json.containsKey("binLogPosition")) {
      binLogPosition = _json["binLogPosition"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (binLogFileName != null) {
      _json["binLogFileName"] = binLogFileName;
    }
    if (binLogPosition != null) {
      _json["binLogPosition"] = binLogPosition;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Database instance clone context.
class CloneContext {
  /// Binary log coordinates, if specified, identify the position up to which
  /// the source instance should be cloned. If not specified, the source
  /// instance is cloned up to the most recent binary log coordinates.
  BinLogCoordinates binLogCoordinates;

  /// Name of the Cloud SQL instance to be created as a clone.
  core.String destinationInstanceName;

  /// This is always sql#cloneContext.
  core.String kind;

  /// Reserved for future use.
  core.String pitrTimestampMs;

  CloneContext();

  CloneContext.fromJson(core.Map _json) {
    if (_json.containsKey("binLogCoordinates")) {
      binLogCoordinates =
          new BinLogCoordinates.fromJson(_json["binLogCoordinates"]);
    }
    if (_json.containsKey("destinationInstanceName")) {
      destinationInstanceName = _json["destinationInstanceName"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("pitrTimestampMs")) {
      pitrTimestampMs = _json["pitrTimestampMs"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (binLogCoordinates != null) {
      _json["binLogCoordinates"] = (binLogCoordinates).toJson();
    }
    if (destinationInstanceName != null) {
      _json["destinationInstanceName"] = destinationInstanceName;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (pitrTimestampMs != null) {
      _json["pitrTimestampMs"] = pitrTimestampMs;
    }
    return _json;
  }
}

/// Represents a SQL database on the Cloud SQL instance.
class Database {
  /// The MySQL charset value.
  core.String charset;

  /// The MySQL collation value.
  core.String collation;

  /// This field is deprecated and will be removed from a future version of the
  /// API.
  core.String etag;

  /// The name of the Cloud SQL instance. This does not include the project ID.
  core.String instance;

  /// This is always sql#database.
  core.String kind;

  /// The name of the database in the Cloud SQL instance. This does not include
  /// the project ID or instance name.
  core.String name;

  /// The project ID of the project containing the Cloud SQL database. The
  /// Google apps domain is prefixed if applicable.
  core.String project;

  /// The URI of this resource.
  core.String selfLink;

  Database();

  Database.fromJson(core.Map _json) {
    if (_json.containsKey("charset")) {
      charset = _json["charset"];
    }
    if (_json.containsKey("collation")) {
      collation = _json["collation"];
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("project")) {
      project = _json["project"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (charset != null) {
      _json["charset"] = charset;
    }
    if (collation != null) {
      _json["collation"] = collation;
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (project != null) {
      _json["project"] = project;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    return _json;
  }
}

/// Database flags for Cloud SQL instances.
class DatabaseFlags {
  /// The name of the flag. These flags are passed at instance startup, so
  /// include both server options and system variables for MySQL. Flags should
  /// be specified with underscores, not hyphens. For more information, see
  /// Configuring Database Flags in the Cloud SQL documentation.
  core.String name;

  /// The value of the flag. Booleans should be set to on for true and off for
  /// false. This field must be omitted if the flag doesn't take a value.
  core.String value;

  DatabaseFlags();

  DatabaseFlags.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// The name and status of the failover replica. This property is applicable
/// only to Second Generation instances.
class DatabaseInstanceFailoverReplica {
  /// The availability status of the failover replica. A false status indicates
  /// that the failover replica is out of sync. The master can only failover to
  /// the falover replica when the status is true.
  core.bool available;

  /// The name of the failover replica. If specified at instance creation, a
  /// failover replica is created for the instance. The name doesn't include the
  /// project ID. This property is applicable only to Second Generation
  /// instances.
  core.String name;

  DatabaseInstanceFailoverReplica();

  DatabaseInstanceFailoverReplica.fromJson(core.Map _json) {
    if (_json.containsKey("available")) {
      available = _json["available"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (available != null) {
      _json["available"] = available;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/// A Cloud SQL instance resource.
class DatabaseInstance {
  /// FIRST_GEN: First Generation instance. MySQL only.
  /// SECOND_GEN: Second Generation instance or PostgreSQL instance.
  /// EXTERNAL: A database server that is not managed by Google.
  /// This property is read-only; use the tier property in the settings object
  /// to determine the database type and Second or First Generation.
  core.String backendType;

  /// Connection name of the Cloud SQL instance used in connection strings.
  core.String connectionName;

  /// The current disk usage of the instance in bytes. This property has been
  /// deprecated. Users should use the
  /// "cloudsql.googleapis.com/database/disk/bytes_used" metric in Cloud
  /// Monitoring API instead. Please see this announcement for details.
  core.String currentDiskSize;

  /// The database engine type and version. The databaseVersion field can not be
  /// changed after instance creation. MySQL Second Generation instances:
  /// MYSQL_5_7 (default) or MYSQL_5_6. PostgreSQL instances: POSTGRES_9_6
  /// (default) or POSTGRES_11 Beta. MySQL First Generation instances: MYSQL_5_6
  /// (default) or MYSQL_5_5
  core.String databaseVersion;

  /// Disk encryption configuration specific to an instance. Applies only to
  /// Second Generation instances.
  DiskEncryptionConfiguration diskEncryptionConfiguration;

  /// Disk encryption status specific to an instance. Applies only to Second
  /// Generation instances.
  DiskEncryptionStatus diskEncryptionStatus;

  /// This field is deprecated and will be removed from a future version of the
  /// API. Use the settings.settingsVersion field instead.
  core.String etag;

  /// The name and status of the failover replica. This property is applicable
  /// only to Second Generation instances.
  DatabaseInstanceFailoverReplica failoverReplica;

  /// The Compute Engine zone that the instance is currently serving from. This
  /// value could be different from the zone that was specified when the
  /// instance was created if the instance has failed over to its secondary
  /// zone.
  core.String gceZone;

  /// The instance type. This can be one of the following.
  /// CLOUD_SQL_INSTANCE: A Cloud SQL instance that is not replicating from a
  /// master.
  /// ON_PREMISES_INSTANCE: An instance running on the customer's premises.
  /// READ_REPLICA_INSTANCE: A Cloud SQL instance configured as a read-replica.
  core.String instanceType;

  /// The assigned IP addresses for the instance.
  core.List<IpMapping> ipAddresses;

  /// The IPv6 address assigned to the instance. This property is applicable
  /// only to First Generation instances.
  core.String ipv6Address;

  /// This is always sql#instance.
  core.String kind;

  /// The name of the instance which will act as master in the replication
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

  /// The geographical region. Can be us-central (FIRST_GEN instances only),
  /// us-central1 (SECOND_GEN instances only), asia-east1 or europe-west1.
  /// Defaults to us-central or us-central1 depending on the instance type
  /// (First Generation or Second Generation). The region can not be changed
  /// after instance creation.
  core.String region;

  /// Configuration specific to failover replicas and read replicas.
  ReplicaConfiguration replicaConfiguration;

  /// The replicas of the instance.
  core.List<core.String> replicaNames;

  /// Initial root password. Use only on creation.
  core.String rootPassword;

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
  /// the following.
  /// RUNNABLE: The instance is running, or is ready to run when accessed.
  /// SUSPENDED: The instance is not available, for example due to problems with
  /// billing.
  /// PENDING_CREATE: The instance is being created.
  /// MAINTENANCE: The instance is down for maintenance.
  /// FAILED: The instance creation failed.
  /// UNKNOWN_STATE: The state of the instance is unknown.
  core.String state;

  /// If the instance state is SUSPENDED, the reason for the suspension.
  core.List<core.String> suspensionReason;

  DatabaseInstance();

  DatabaseInstance.fromJson(core.Map _json) {
    if (_json.containsKey("backendType")) {
      backendType = _json["backendType"];
    }
    if (_json.containsKey("connectionName")) {
      connectionName = _json["connectionName"];
    }
    if (_json.containsKey("currentDiskSize")) {
      currentDiskSize = _json["currentDiskSize"];
    }
    if (_json.containsKey("databaseVersion")) {
      databaseVersion = _json["databaseVersion"];
    }
    if (_json.containsKey("diskEncryptionConfiguration")) {
      diskEncryptionConfiguration = new DiskEncryptionConfiguration.fromJson(
          _json["diskEncryptionConfiguration"]);
    }
    if (_json.containsKey("diskEncryptionStatus")) {
      diskEncryptionStatus =
          new DiskEncryptionStatus.fromJson(_json["diskEncryptionStatus"]);
    }
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("failoverReplica")) {
      failoverReplica = new DatabaseInstanceFailoverReplica.fromJson(
          _json["failoverReplica"]);
    }
    if (_json.containsKey("gceZone")) {
      gceZone = _json["gceZone"];
    }
    if (_json.containsKey("instanceType")) {
      instanceType = _json["instanceType"];
    }
    if (_json.containsKey("ipAddresses")) {
      ipAddresses = (_json["ipAddresses"] as core.List)
          .map<IpMapping>((value) => new IpMapping.fromJson(value))
          .toList();
    }
    if (_json.containsKey("ipv6Address")) {
      ipv6Address = _json["ipv6Address"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("masterInstanceName")) {
      masterInstanceName = _json["masterInstanceName"];
    }
    if (_json.containsKey("maxDiskSize")) {
      maxDiskSize = _json["maxDiskSize"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("onPremisesConfiguration")) {
      onPremisesConfiguration = new OnPremisesConfiguration.fromJson(
          _json["onPremisesConfiguration"]);
    }
    if (_json.containsKey("project")) {
      project = _json["project"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("replicaConfiguration")) {
      replicaConfiguration =
          new ReplicaConfiguration.fromJson(_json["replicaConfiguration"]);
    }
    if (_json.containsKey("replicaNames")) {
      replicaNames = (_json["replicaNames"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("rootPassword")) {
      rootPassword = _json["rootPassword"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("serverCaCert")) {
      serverCaCert = new SslCert.fromJson(_json["serverCaCert"]);
    }
    if (_json.containsKey("serviceAccountEmailAddress")) {
      serviceAccountEmailAddress = _json["serviceAccountEmailAddress"];
    }
    if (_json.containsKey("settings")) {
      settings = new Settings.fromJson(_json["settings"]);
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
    if (_json.containsKey("suspensionReason")) {
      suspensionReason =
          (_json["suspensionReason"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backendType != null) {
      _json["backendType"] = backendType;
    }
    if (connectionName != null) {
      _json["connectionName"] = connectionName;
    }
    if (currentDiskSize != null) {
      _json["currentDiskSize"] = currentDiskSize;
    }
    if (databaseVersion != null) {
      _json["databaseVersion"] = databaseVersion;
    }
    if (diskEncryptionConfiguration != null) {
      _json["diskEncryptionConfiguration"] =
          (diskEncryptionConfiguration).toJson();
    }
    if (diskEncryptionStatus != null) {
      _json["diskEncryptionStatus"] = (diskEncryptionStatus).toJson();
    }
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (failoverReplica != null) {
      _json["failoverReplica"] = (failoverReplica).toJson();
    }
    if (gceZone != null) {
      _json["gceZone"] = gceZone;
    }
    if (instanceType != null) {
      _json["instanceType"] = instanceType;
    }
    if (ipAddresses != null) {
      _json["ipAddresses"] =
          ipAddresses.map((value) => (value).toJson()).toList();
    }
    if (ipv6Address != null) {
      _json["ipv6Address"] = ipv6Address;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (masterInstanceName != null) {
      _json["masterInstanceName"] = masterInstanceName;
    }
    if (maxDiskSize != null) {
      _json["maxDiskSize"] = maxDiskSize;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (onPremisesConfiguration != null) {
      _json["onPremisesConfiguration"] = (onPremisesConfiguration).toJson();
    }
    if (project != null) {
      _json["project"] = project;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (replicaConfiguration != null) {
      _json["replicaConfiguration"] = (replicaConfiguration).toJson();
    }
    if (replicaNames != null) {
      _json["replicaNames"] = replicaNames;
    }
    if (rootPassword != null) {
      _json["rootPassword"] = rootPassword;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (serverCaCert != null) {
      _json["serverCaCert"] = (serverCaCert).toJson();
    }
    if (serviceAccountEmailAddress != null) {
      _json["serviceAccountEmailAddress"] = serviceAccountEmailAddress;
    }
    if (settings != null) {
      _json["settings"] = (settings).toJson();
    }
    if (state != null) {
      _json["state"] = state;
    }
    if (suspensionReason != null) {
      _json["suspensionReason"] = suspensionReason;
    }
    return _json;
  }
}

/// Database list response.
class DatabasesListResponse {
  /// List of database resources in the instance.
  core.List<Database> items;

  /// This is always sql#databasesList.
  core.String kind;

  DatabasesListResponse();

  DatabasesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Database>((value) => new Database.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Read-replica configuration for connecting to the on-premises master.
class DemoteMasterConfiguration {
  /// This is always sql#demoteMasterConfiguration.
  core.String kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises
  /// master. Replication configuration information such as the username,
  /// password, certificates, and keys are not stored in the instance metadata.
  /// The configuration information is used only to set up the replication
  /// connection and is stored by MySQL in a file named master.info in the data
  /// directory.
  DemoteMasterMySqlReplicaConfiguration mysqlReplicaConfiguration;

  DemoteMasterConfiguration();

  DemoteMasterConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("mysqlReplicaConfiguration")) {
      mysqlReplicaConfiguration =
          new DemoteMasterMySqlReplicaConfiguration.fromJson(
              _json["mysqlReplicaConfiguration"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (mysqlReplicaConfiguration != null) {
      _json["mysqlReplicaConfiguration"] = (mysqlReplicaConfiguration).toJson();
    }
    return _json;
  }
}

/// Database instance demote master context.
class DemoteMasterContext {
  /// This is always sql#demoteMasterContext.
  core.String kind;

  /// The name of the instance which will act as on-premises master in the
  /// replication setup.
  core.String masterInstanceName;

  /// Configuration specific to read-replicas replicating from the on-premises
  /// master.
  DemoteMasterConfiguration replicaConfiguration;

  /// Verify GTID consistency for demote operation. Default value: True. Second
  /// Generation instances only. Setting this flag to false enables you to
  /// bypass GTID consistency check between on-premises master and Cloud SQL
  /// instance during the demotion operation but also exposes you to the risk of
  /// future replication failures. Change the value only if you know the reason
  /// for the GTID divergence and are confident that doing so will not cause any
  /// replication issues.
  core.bool verifyGtidConsistency;

  DemoteMasterContext();

  DemoteMasterContext.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("masterInstanceName")) {
      masterInstanceName = _json["masterInstanceName"];
    }
    if (_json.containsKey("replicaConfiguration")) {
      replicaConfiguration =
          new DemoteMasterConfiguration.fromJson(_json["replicaConfiguration"]);
    }
    if (_json.containsKey("verifyGtidConsistency")) {
      verifyGtidConsistency = _json["verifyGtidConsistency"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (masterInstanceName != null) {
      _json["masterInstanceName"] = masterInstanceName;
    }
    if (replicaConfiguration != null) {
      _json["replicaConfiguration"] = (replicaConfiguration).toJson();
    }
    if (verifyGtidConsistency != null) {
      _json["verifyGtidConsistency"] = verifyGtidConsistency;
    }
    return _json;
  }
}

/// Read-replica configuration specific to MySQL databases.
class DemoteMasterMySqlReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String caCertificate;

  /// PEM representation of the slave's x509 certificate.
  core.String clientCertificate;

  /// PEM representation of the slave's private key. The corresponsing public
  /// key is encoded in the client's certificate. The format of the slave's
  /// private key can be either PKCS #1 or PKCS #8.
  core.String clientKey;

  /// This is always sql#demoteMasterMysqlReplicaConfiguration.
  core.String kind;

  /// The password for the replication connection.
  core.String password;

  /// The username for the replication connection.
  core.String username;

  DemoteMasterMySqlReplicaConfiguration();

  DemoteMasterMySqlReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("caCertificate")) {
      caCertificate = _json["caCertificate"];
    }
    if (_json.containsKey("clientCertificate")) {
      clientCertificate = _json["clientCertificate"];
    }
    if (_json.containsKey("clientKey")) {
      clientKey = _json["clientKey"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (caCertificate != null) {
      _json["caCertificate"] = caCertificate;
    }
    if (clientCertificate != null) {
      _json["clientCertificate"] = clientCertificate;
    }
    if (clientKey != null) {
      _json["clientKey"] = clientKey;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (username != null) {
      _json["username"] = username;
    }
    return _json;
  }
}

/// Disk encryption configuration.
class DiskEncryptionConfiguration {
  /// This is always sql#diskEncryptionConfiguration.
  core.String kind;

  /// KMS key resource name
  core.String kmsKeyName;

  DiskEncryptionConfiguration();

  DiskEncryptionConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("kmsKeyName")) {
      kmsKeyName = _json["kmsKeyName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (kmsKeyName != null) {
      _json["kmsKeyName"] = kmsKeyName;
    }
    return _json;
  }
}

/// Disk encryption status.
class DiskEncryptionStatus {
  /// This is always sql#diskEncryptionStatus.
  core.String kind;

  /// KMS key version used to encrypt the Cloud SQL instance disk
  core.String kmsKeyVersionName;

  DiskEncryptionStatus();

  DiskEncryptionStatus.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("kmsKeyVersionName")) {
      kmsKeyVersionName = _json["kmsKeyVersionName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (kmsKeyVersionName != null) {
      _json["kmsKeyVersionName"] = kmsKeyVersionName;
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
    if (_json.containsKey("selectQuery")) {
      selectQuery = _json["selectQuery"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (selectQuery != null) {
      _json["selectQuery"] = selectQuery;
    }
    return _json;
  }
}

/// Options for exporting from MySQL.
class ExportContextSqlExportOptionsMysqlExportOptions {
  /// Option to include SQL statement required to set up replication. If set to
  /// 1, the dump file includes a CHANGE MASTER TO statement with the binary log
  /// coordinates. If set to 2, the CHANGE MASTER TO statement is written as a
  /// SQL comment, and has no effect. All other values are ignored.
  core.int masterData;

  ExportContextSqlExportOptionsMysqlExportOptions();

  ExportContextSqlExportOptionsMysqlExportOptions.fromJson(core.Map _json) {
    if (_json.containsKey("masterData")) {
      masterData = _json["masterData"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (masterData != null) {
      _json["masterData"] = masterData;
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
    if (_json.containsKey("mysqlExportOptions")) {
      mysqlExportOptions =
          new ExportContextSqlExportOptionsMysqlExportOptions.fromJson(
              _json["mysqlExportOptions"]);
    }
    if (_json.containsKey("schemaOnly")) {
      schemaOnly = _json["schemaOnly"];
    }
    if (_json.containsKey("tables")) {
      tables = (_json["tables"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (mysqlExportOptions != null) {
      _json["mysqlExportOptions"] = (mysqlExportOptions).toJson();
    }
    if (schemaOnly != null) {
      _json["schemaOnly"] = schemaOnly;
    }
    if (tables != null) {
      _json["tables"] = tables;
    }
    return _json;
  }
}

/// Database instance export context.
class ExportContext {
  /// Options for exporting data as CSV.
  ExportContextCsvExportOptions csvExportOptions;

  /// Databases to be exported.
  /// MySQL instances: If fileType is SQL and no database is specified, all
  /// databases are exported, except for the mysql system database. If fileType
  /// is CSV, you can specify one database, either by using this property or by
  /// using the csvExportOptions.selectQuery property, which takes precedence
  /// over this property.
  /// PostgreSQL instances: Specify exactly one database to be exported. If
  /// fileType is CSV, this database must match the database used in the
  /// csvExportOptions.selectQuery property.
  core.List<core.String> databases;

  /// The file type for the specified uri.
  /// SQL: The file contains SQL statements.
  /// CSV: The file contains CSV data.
  core.String fileType;

  /// This is always sql#exportContext.
  core.String kind;

  /// Options for exporting data as SQL statements.
  ExportContextSqlExportOptions sqlExportOptions;

  /// The path to the file in Google Cloud Storage where the export will be
  /// stored. The URI is in the form gs://bucketName/fileName. If the file
  /// already exists, the requests succeeds, but the operation fails. If
  /// fileType is SQL and the filename ends with .gz, the contents are
  /// compressed.
  core.String uri;

  ExportContext();

  ExportContext.fromJson(core.Map _json) {
    if (_json.containsKey("csvExportOptions")) {
      csvExportOptions =
          new ExportContextCsvExportOptions.fromJson(_json["csvExportOptions"]);
    }
    if (_json.containsKey("databases")) {
      databases = (_json["databases"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("fileType")) {
      fileType = _json["fileType"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("sqlExportOptions")) {
      sqlExportOptions =
          new ExportContextSqlExportOptions.fromJson(_json["sqlExportOptions"]);
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (csvExportOptions != null) {
      _json["csvExportOptions"] = (csvExportOptions).toJson();
    }
    if (databases != null) {
      _json["databases"] = databases;
    }
    if (fileType != null) {
      _json["fileType"] = fileType;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (sqlExportOptions != null) {
      _json["sqlExportOptions"] = (sqlExportOptions).toJson();
    }
    if (uri != null) {
      _json["uri"] = uri;
    }
    return _json;
  }
}

/// Database instance failover context.
class FailoverContext {
  /// This is always sql#failoverContext.
  core.String kind;

  /// The current settings version of this instance. Request will be rejected if
  /// this version doesn't match the current settings version.
  core.String settingsVersion;

  FailoverContext();

  FailoverContext.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("settingsVersion")) {
      settingsVersion = _json["settingsVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (settingsVersion != null) {
      _json["settingsVersion"] = settingsVersion;
    }
    return _json;
  }
}

/// A flag resource.
class Flag {
  /// For STRING flags, a list of strings that the value can be set to.
  core.List<core.String> allowedStringValues;

  /// The database version this flag applies to. Can be MYSQL_5_5, MYSQL_5_6, or
  /// MYSQL_5_7. MYSQL_5_7 is applicable only to Second Generation instances.
  core.List<core.String> appliesTo;

  /// True if the flag is only released in Beta.
  core.bool inBeta;

  /// This is always sql#flag.
  core.String kind;

  /// For INTEGER flags, the maximum allowed value.
  core.String maxValue;

  /// For INTEGER flags, the minimum allowed value.
  core.String minValue;

  /// This is the name of the flag. Flag names always use underscores, not
  /// hyphens, e.g. max_allowed_packet
  core.String name;

  /// Indicates whether changing this flag will trigger a database restart. Only
  /// applicable to Second Generation instances.
  core.bool requiresRestart;

  /// The type of the flag. Flags are typed to being BOOLEAN, STRING, INTEGER or
  /// NONE. NONE is used for flags which do not take a value, such as
  /// skip_grant_tables.
  core.String type;

  Flag();

  Flag.fromJson(core.Map _json) {
    if (_json.containsKey("allowedStringValues")) {
      allowedStringValues =
          (_json["allowedStringValues"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("appliesTo")) {
      appliesTo = (_json["appliesTo"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("inBeta")) {
      inBeta = _json["inBeta"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("maxValue")) {
      maxValue = _json["maxValue"];
    }
    if (_json.containsKey("minValue")) {
      minValue = _json["minValue"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("requiresRestart")) {
      requiresRestart = _json["requiresRestart"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (allowedStringValues != null) {
      _json["allowedStringValues"] = allowedStringValues;
    }
    if (appliesTo != null) {
      _json["appliesTo"] = appliesTo;
    }
    if (inBeta != null) {
      _json["inBeta"] = inBeta;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (maxValue != null) {
      _json["maxValue"] = maxValue;
    }
    if (minValue != null) {
      _json["minValue"] = minValue;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (requiresRestart != null) {
      _json["requiresRestart"] = requiresRestart;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Flags list response.
class FlagsListResponse {
  /// List of flags.
  core.List<Flag> items;

  /// This is always sql#flagsList.
  core.String kind;

  FlagsListResponse();

  FlagsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Flag>((value) => new Flag.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
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
    if (_json.containsKey("columns")) {
      columns = (_json["columns"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("table")) {
      table = _json["table"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (columns != null) {
      _json["columns"] = columns;
    }
    if (table != null) {
      _json["table"] = table;
    }
    return _json;
  }
}

/// Database instance import context.
class ImportContext {
  /// Options for importing data as CSV.
  ImportContextCsvImportOptions csvImportOptions;

  /// The target database for the import. If fileType is SQL, this field is
  /// required only if the import file does not specify a database, and is
  /// overridden by any database specification in the import file. If fileType
  /// is CSV, one database must be specified.
  core.String database;

  /// The file type for the specified uri.
  /// SQL: The file contains SQL statements.
  /// CSV: The file contains CSV data.
  core.String fileType;

  /// The PostgreSQL user for this import operation. PostgreSQL instances only.
  core.String importUser;

  /// This is always sql#importContext.
  core.String kind;

  /// Path to the import file in Cloud Storage, in the form
  /// gs://bucketName/fileName. Compressed gzip files (.gz) are supported when
  /// fileType is SQL. The instance must have write permissions to the bucket
  /// and read access to the file.
  core.String uri;

  ImportContext();

  ImportContext.fromJson(core.Map _json) {
    if (_json.containsKey("csvImportOptions")) {
      csvImportOptions =
          new ImportContextCsvImportOptions.fromJson(_json["csvImportOptions"]);
    }
    if (_json.containsKey("database")) {
      database = _json["database"];
    }
    if (_json.containsKey("fileType")) {
      fileType = _json["fileType"];
    }
    if (_json.containsKey("importUser")) {
      importUser = _json["importUser"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("uri")) {
      uri = _json["uri"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (csvImportOptions != null) {
      _json["csvImportOptions"] = (csvImportOptions).toJson();
    }
    if (database != null) {
      _json["database"] = database;
    }
    if (fileType != null) {
      _json["fileType"] = fileType;
    }
    if (importUser != null) {
      _json["importUser"] = importUser;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (uri != null) {
      _json["uri"] = uri;
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
    if (_json.containsKey("cloneContext")) {
      cloneContext = new CloneContext.fromJson(_json["cloneContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cloneContext != null) {
      _json["cloneContext"] = (cloneContext).toJson();
    }
    return _json;
  }
}

/// Database demote master request.
class InstancesDemoteMasterRequest {
  /// Contains details about the demoteMaster operation.
  DemoteMasterContext demoteMasterContext;

  InstancesDemoteMasterRequest();

  InstancesDemoteMasterRequest.fromJson(core.Map _json) {
    if (_json.containsKey("demoteMasterContext")) {
      demoteMasterContext =
          new DemoteMasterContext.fromJson(_json["demoteMasterContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (demoteMasterContext != null) {
      _json["demoteMasterContext"] = (demoteMasterContext).toJson();
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
    if (_json.containsKey("exportContext")) {
      exportContext = new ExportContext.fromJson(_json["exportContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (exportContext != null) {
      _json["exportContext"] = (exportContext).toJson();
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
    if (_json.containsKey("failoverContext")) {
      failoverContext = new FailoverContext.fromJson(_json["failoverContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (failoverContext != null) {
      _json["failoverContext"] = (failoverContext).toJson();
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
    if (_json.containsKey("importContext")) {
      importContext = new ImportContext.fromJson(_json["importContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (importContext != null) {
      _json["importContext"] = (importContext).toJson();
    }
    return _json;
  }
}

/// Database instances list response.
class InstancesListResponse {
  /// List of database instance resources.
  core.List<DatabaseInstance> items;

  /// This is always sql#instancesList.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  /// List of warnings that ocurred while handling the request.
  core.List<ApiWarning> warnings;

  InstancesListResponse();

  InstancesListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<DatabaseInstance>(
              (value) => new DatabaseInstance.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("warnings")) {
      warnings = (_json["warnings"] as core.List)
          .map<ApiWarning>((value) => new ApiWarning.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (warnings != null) {
      _json["warnings"] = warnings.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Instances ListServerCas response.
class InstancesListServerCasResponse {
  core.String activeVersion;

  /// List of server CA certificates for the instance.
  core.List<SslCert> certs;

  /// This is always sql#instancesListServerCas.
  core.String kind;

  InstancesListServerCasResponse();

  InstancesListServerCasResponse.fromJson(core.Map _json) {
    if (_json.containsKey("activeVersion")) {
      activeVersion = _json["activeVersion"];
    }
    if (_json.containsKey("certs")) {
      certs = (_json["certs"] as core.List)
          .map<SslCert>((value) => new SslCert.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (activeVersion != null) {
      _json["activeVersion"] = activeVersion;
    }
    if (certs != null) {
      _json["certs"] = certs.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
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
    if (_json.containsKey("restoreBackupContext")) {
      restoreBackupContext =
          new RestoreBackupContext.fromJson(_json["restoreBackupContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (restoreBackupContext != null) {
      _json["restoreBackupContext"] = (restoreBackupContext).toJson();
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
    if (_json.containsKey("rotateServerCaContext")) {
      rotateServerCaContext =
          new RotateServerCaContext.fromJson(_json["rotateServerCaContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rotateServerCaContext != null) {
      _json["rotateServerCaContext"] = (rotateServerCaContext).toJson();
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
    if (_json.containsKey("truncateLogContext")) {
      truncateLogContext =
          new TruncateLogContext.fromJson(_json["truncateLogContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (truncateLogContext != null) {
      _json["truncateLogContext"] = (truncateLogContext).toJson();
    }
    return _json;
  }
}

/// IP Management configuration.
class IpConfiguration {
  /// The list of external networks that are allowed to connect to the instance
  /// using the IP. In CIDR notation, also known as 'slash' notation (e.g.
  /// 192.168.100.0/24).
  core.List<AclEntry> authorizedNetworks;

  /// Whether the instance should be assigned an IP address or not.
  core.bool ipv4Enabled;

  /// The resource link for the VPC network from which the Cloud SQL instance is
  /// accessible for private IP. For example,
  /// /projects/myProject/global/networks/default. This setting can be updated,
  /// but it cannot be removed after it is set.
  core.String privateNetwork;

  /// Whether SSL connections over IP should be enforced or not.
  core.bool requireSsl;

  IpConfiguration();

  IpConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("authorizedNetworks")) {
      authorizedNetworks = (_json["authorizedNetworks"] as core.List)
          .map<AclEntry>((value) => new AclEntry.fromJson(value))
          .toList();
    }
    if (_json.containsKey("ipv4Enabled")) {
      ipv4Enabled = _json["ipv4Enabled"];
    }
    if (_json.containsKey("privateNetwork")) {
      privateNetwork = _json["privateNetwork"];
    }
    if (_json.containsKey("requireSsl")) {
      requireSsl = _json["requireSsl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (authorizedNetworks != null) {
      _json["authorizedNetworks"] =
          authorizedNetworks.map((value) => (value).toJson()).toList();
    }
    if (ipv4Enabled != null) {
      _json["ipv4Enabled"] = ipv4Enabled;
    }
    if (privateNetwork != null) {
      _json["privateNetwork"] = privateNetwork;
    }
    if (requireSsl != null) {
      _json["requireSsl"] = requireSsl;
    }
    return _json;
  }
}

/// Database instance IP Mapping.
class IpMapping {
  /// The IP address assigned.
  core.String ipAddress;

  /// The due time for this IP to be retired in RFC 3339 format, for example
  /// 2012-11-15T16:19:00.094Z. This field is only available when the IP is
  /// scheduled to be retired.
  core.DateTime timeToRetire;

  /// The type of this IP address. A PRIMARY address is a public address that
  /// can accept incoming connections. A PRIVATE address is a private address
  /// that can accept incoming connections. An OUTGOING address is the source
  /// address of connections originating from the instance, if supported.
  core.String type;

  IpMapping();

  IpMapping.fromJson(core.Map _json) {
    if (_json.containsKey("ipAddress")) {
      ipAddress = _json["ipAddress"];
    }
    if (_json.containsKey("timeToRetire")) {
      timeToRetire = core.DateTime.parse(_json["timeToRetire"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ipAddress != null) {
      _json["ipAddress"] = ipAddress;
    }
    if (timeToRetire != null) {
      _json["timeToRetire"] = (timeToRetire).toIso8601String();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/// Preferred location. This specifies where a Cloud SQL instance should
/// preferably be located, either in a specific Compute Engine zone, or
/// co-located with an App Engine application. Note that if the preferred
/// location is not available, the instance will be located as close as possible
/// within the region. Only one location may be specified.
class LocationPreference {
  /// The AppEngine application to follow, it must be in the same region as the
  /// Cloud SQL instance.
  core.String followGaeApplication;

  /// This is always sql#locationPreference.
  core.String kind;

  /// The preferred Compute Engine zone (e.g. us-central1-a, us-central1-b,
  /// etc.).
  core.String zone;

  LocationPreference();

  LocationPreference.fromJson(core.Map _json) {
    if (_json.containsKey("followGaeApplication")) {
      followGaeApplication = _json["followGaeApplication"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (followGaeApplication != null) {
      _json["followGaeApplication"] = followGaeApplication;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/// Maintenance window. This specifies when a v2 Cloud SQL instance should
/// preferably be restarted for system maintenance purposes.
class MaintenanceWindow {
  /// day of week (1-7), starting on Monday.
  core.int day;

  /// hour of day - 0 to 23.
  core.int hour;

  /// This is always sql#maintenanceWindow.
  core.String kind;

  /// Maintenance timing setting: canary (Earlier) or stable (Later).
  ///  Learn more.
  core.String updateTrack;

  MaintenanceWindow();

  MaintenanceWindow.fromJson(core.Map _json) {
    if (_json.containsKey("day")) {
      day = _json["day"];
    }
    if (_json.containsKey("hour")) {
      hour = _json["hour"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("updateTrack")) {
      updateTrack = _json["updateTrack"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (day != null) {
      _json["day"] = day;
    }
    if (hour != null) {
      _json["hour"] = hour;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (updateTrack != null) {
      _json["updateTrack"] = updateTrack;
    }
    return _json;
  }
}

/// Read-replica configuration specific to MySQL databases.
class MySqlReplicaConfiguration {
  /// PEM representation of the trusted CA's x509 certificate.
  core.String caCertificate;

  /// PEM representation of the slave's x509 certificate.
  core.String clientCertificate;

  /// PEM representation of the slave's private key. The corresponsing public
  /// key is encoded in the client's certificate.
  core.String clientKey;

  /// Seconds to wait between connect retries. MySQL's default is 60 seconds.
  core.int connectRetryInterval;

  /// Path to a SQL dump file in Google Cloud Storage from which the slave
  /// instance is to be created. The URI is in the form
  /// gs://bucketName/fileName. Compressed gzip files (.gz) are also supported.
  /// Dumps should have the binlog co-ordinates from which replication should
  /// begin. This can be accomplished by setting --master-data to 1 when using
  /// mysqldump.
  core.String dumpFilePath;

  /// This is always sql#mysqlReplicaConfiguration.
  core.String kind;

  /// Interval in milliseconds between replication heartbeats.
  core.String masterHeartbeatPeriod;

  /// The password for the replication connection.
  core.String password;

  /// A list of permissible ciphers to use for SSL encryption.
  core.String sslCipher;

  /// The username for the replication connection.
  core.String username;

  /// Whether or not to check the master's Common Name value in the certificate
  /// that it sends during the SSL handshake.
  core.bool verifyServerCertificate;

  MySqlReplicaConfiguration();

  MySqlReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("caCertificate")) {
      caCertificate = _json["caCertificate"];
    }
    if (_json.containsKey("clientCertificate")) {
      clientCertificate = _json["clientCertificate"];
    }
    if (_json.containsKey("clientKey")) {
      clientKey = _json["clientKey"];
    }
    if (_json.containsKey("connectRetryInterval")) {
      connectRetryInterval = _json["connectRetryInterval"];
    }
    if (_json.containsKey("dumpFilePath")) {
      dumpFilePath = _json["dumpFilePath"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("masterHeartbeatPeriod")) {
      masterHeartbeatPeriod = _json["masterHeartbeatPeriod"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("sslCipher")) {
      sslCipher = _json["sslCipher"];
    }
    if (_json.containsKey("username")) {
      username = _json["username"];
    }
    if (_json.containsKey("verifyServerCertificate")) {
      verifyServerCertificate = _json["verifyServerCertificate"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (caCertificate != null) {
      _json["caCertificate"] = caCertificate;
    }
    if (clientCertificate != null) {
      _json["clientCertificate"] = clientCertificate;
    }
    if (clientKey != null) {
      _json["clientKey"] = clientKey;
    }
    if (connectRetryInterval != null) {
      _json["connectRetryInterval"] = connectRetryInterval;
    }
    if (dumpFilePath != null) {
      _json["dumpFilePath"] = dumpFilePath;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (masterHeartbeatPeriod != null) {
      _json["masterHeartbeatPeriod"] = masterHeartbeatPeriod;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (sslCipher != null) {
      _json["sslCipher"] = sslCipher;
    }
    if (username != null) {
      _json["username"] = username;
    }
    if (verifyServerCertificate != null) {
      _json["verifyServerCertificate"] = verifyServerCertificate;
    }
    return _json;
  }
}

/// On-premises instance configuration.
class OnPremisesConfiguration {
  /// The host and port of the on-premises instance in host:port format
  core.String hostPort;

  /// This is always sql#onPremisesConfiguration.
  core.String kind;

  OnPremisesConfiguration();

  OnPremisesConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("hostPort")) {
      hostPort = _json["hostPort"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (hostPort != null) {
      _json["hostPort"] = hostPort;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// An Operation resource. For successful operations that return an Operation
/// resource, only the fields relevant to the operation are populated in the
/// resource.
class Operation {
  /// The time this operation finished in UTC timezone in RFC 3339 format, for
  /// example 2012-11-15T16:19:00.094Z.
  core.DateTime endTime;

  /// If errors occurred during processing of this operation, this field will be
  /// populated.
  OperationErrors error;

  /// The context for export operation, if applicable.
  ExportContext exportContext;

  /// The context for import operation, if applicable.
  ImportContext importContext;

  /// The time this operation was enqueued in UTC timezone in RFC 3339 format,
  /// for example 2012-11-15T16:19:00.094Z.
  core.DateTime insertTime;

  /// This is always sql#operation.
  core.String kind;

  /// An identifier that uniquely identifies the operation. You can use this
  /// identifier to retrieve the Operations resource that has information about
  /// the operation.
  core.String name;

  /// The type of the operation. Valid values are CREATE, DELETE, UPDATE,
  /// RESTART, IMPORT, EXPORT, BACKUP_VOLUME, RESTORE_VOLUME, CREATE_USER,
  /// DELETE_USER, CREATE_DATABASE, DELETE_DATABASE .
  core.String operationType;

  /// The URI of this resource.
  core.String selfLink;

  /// The time this operation actually started in UTC timezone in RFC 3339
  /// format, for example 2012-11-15T16:19:00.094Z.
  core.DateTime startTime;

  /// The status of an operation. Valid values are PENDING, RUNNING, DONE,
  /// UNKNOWN.
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
    if (_json.containsKey("endTime")) {
      endTime = core.DateTime.parse(_json["endTime"]);
    }
    if (_json.containsKey("error")) {
      error = new OperationErrors.fromJson(_json["error"]);
    }
    if (_json.containsKey("exportContext")) {
      exportContext = new ExportContext.fromJson(_json["exportContext"]);
    }
    if (_json.containsKey("importContext")) {
      importContext = new ImportContext.fromJson(_json["importContext"]);
    }
    if (_json.containsKey("insertTime")) {
      insertTime = core.DateTime.parse(_json["insertTime"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("operationType")) {
      operationType = _json["operationType"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("startTime")) {
      startTime = core.DateTime.parse(_json["startTime"]);
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("targetId")) {
      targetId = _json["targetId"];
    }
    if (_json.containsKey("targetLink")) {
      targetLink = _json["targetLink"];
    }
    if (_json.containsKey("targetProject")) {
      targetProject = _json["targetProject"];
    }
    if (_json.containsKey("user")) {
      user = _json["user"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = (endTime).toIso8601String();
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (exportContext != null) {
      _json["exportContext"] = (exportContext).toJson();
    }
    if (importContext != null) {
      _json["importContext"] = (importContext).toJson();
    }
    if (insertTime != null) {
      _json["insertTime"] = (insertTime).toIso8601String();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (operationType != null) {
      _json["operationType"] = operationType;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (startTime != null) {
      _json["startTime"] = (startTime).toIso8601String();
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (targetId != null) {
      _json["targetId"] = targetId;
    }
    if (targetLink != null) {
      _json["targetLink"] = targetLink;
    }
    if (targetProject != null) {
      _json["targetProject"] = targetProject;
    }
    if (user != null) {
      _json["user"] = user;
    }
    return _json;
  }
}

/// Database instance operation error.
class OperationError {
  /// Identifies the specific error that occurred.
  core.String code;

  /// This is always sql#operationError.
  core.String kind;

  /// Additional information about the error encountered.
  core.String message;

  OperationError();

  OperationError.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// Database instance operation errors list wrapper.
class OperationErrors {
  /// The list of errors encountered while processing this operation.
  core.List<OperationError> errors;

  /// This is always sql#operationErrors.
  core.String kind;

  OperationErrors();

  OperationErrors.fromJson(core.Map _json) {
    if (_json.containsKey("errors")) {
      errors = (_json["errors"] as core.List)
          .map<OperationError>((value) => new OperationError.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Database instance list operations response.
class OperationsListResponse {
  /// List of operation resources.
  core.List<Operation> items;

  /// This is always sql#operationsList.
  core.String kind;

  /// The continuation token, used to page through large result sets. Provide
  /// this value in a subsequent request to return the next page of results.
  core.String nextPageToken;

  OperationsListResponse();

  OperationsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Operation>((value) => new Operation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Read-replica configuration for connecting to the master.
class ReplicaConfiguration {
  /// Specifies if the replica is the failover target. If the field is set to
  /// true the replica will be designated as a failover replica. In case the
  /// master instance fails, the replica instance will be promoted as the new
  /// master instance.
  /// Only one replica can be specified as failover target, and the replica has
  /// to be in different zone with the master instance.
  core.bool failoverTarget;

  /// This is always sql#replicaConfiguration.
  core.String kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises
  /// master. Replication configuration information such as the username,
  /// password, certificates, and keys are not stored in the instance metadata.
  /// The configuration information is used only to set up the replication
  /// connection and is stored by MySQL in a file named master.info in the data
  /// directory.
  MySqlReplicaConfiguration mysqlReplicaConfiguration;

  ReplicaConfiguration();

  ReplicaConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("failoverTarget")) {
      failoverTarget = _json["failoverTarget"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("mysqlReplicaConfiguration")) {
      mysqlReplicaConfiguration = new MySqlReplicaConfiguration.fromJson(
          _json["mysqlReplicaConfiguration"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (failoverTarget != null) {
      _json["failoverTarget"] = failoverTarget;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (mysqlReplicaConfiguration != null) {
      _json["mysqlReplicaConfiguration"] = (mysqlReplicaConfiguration).toJson();
    }
    return _json;
  }
}

/// Database instance restore from backup context.
class RestoreBackupContext {
  /// The ID of the backup run to restore from.
  core.String backupRunId;

  /// The ID of the instance that the backup was taken from.
  core.String instanceId;

  /// This is always sql#restoreBackupContext.
  core.String kind;

  /// The full project ID of the source instance.
  core.String project;

  RestoreBackupContext();

  RestoreBackupContext.fromJson(core.Map _json) {
    if (_json.containsKey("backupRunId")) {
      backupRunId = _json["backupRunId"];
    }
    if (_json.containsKey("instanceId")) {
      instanceId = _json["instanceId"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("project")) {
      project = _json["project"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (backupRunId != null) {
      _json["backupRunId"] = backupRunId;
    }
    if (instanceId != null) {
      _json["instanceId"] = instanceId;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (project != null) {
      _json["project"] = project;
    }
    return _json;
  }
}

/// Instance rotate server CA context.
class RotateServerCaContext {
  /// This is always sql#rotateServerCaContext.
  core.String kind;

  /// The fingerprint of the next version to be rotated to. If left unspecified,
  /// will be rotated to the most recently added server CA version.
  core.String nextVersion;

  RotateServerCaContext();

  RotateServerCaContext.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextVersion")) {
      nextVersion = _json["nextVersion"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextVersion != null) {
      _json["nextVersion"] = nextVersion;
    }
    return _json;
  }
}

/// Database instance settings.
class Settings {
  /// The activation policy specifies when the instance is activated; it is
  /// applicable only when the instance state is RUNNABLE. Valid values:
  /// ALWAYS: The instance is on, and remains so even in the absence of
  /// connection requests.
  /// NEVER: The instance is off; it is not activated, even if a connection
  /// request arrives.
  /// ON_DEMAND: First Generation instances only. The instance responds to
  /// incoming requests, and turns itself off when not in use. Instances with
  /// PER_USE pricing turn off after 15 minutes of inactivity. Instances with
  /// PER_PACKAGE pricing turn off after 12 hours of inactivity.
  core.String activationPolicy;

  /// The App Engine app IDs that can access this instance. First Generation
  /// instances only.
  core.List<core.String> authorizedGaeApplications;

  /// Availability type (PostgreSQL instances only). Potential values:
  /// ZONAL: The instance serves data from only one zone. Outages in that zone
  /// affect data accessibility.
  /// REGIONAL: The instance can serve data from more than one zone in a region
  /// (it is highly available).
  /// For more information, see Overview of the High Availability Configuration.
  core.String availabilityType;

  /// The daily backup configuration for the instance.
  BackupConfiguration backupConfiguration;

  /// Configuration specific to read replica instances. Indicates whether
  /// database flags for crash-safe replication are enabled. This property is
  /// only applicable to First Generation instances.
  core.bool crashSafeReplicationEnabled;

  /// The size of data disk, in GB. The data disk size minimum is 10GB. Not used
  /// for First Generation instances.
  core.String dataDiskSizeGb;

  /// The type of data disk: PD_SSD (default) or PD_HDD. Not used for First
  /// Generation instances.
  core.String dataDiskType;

  /// The database flags passed to the instance at startup.
  core.List<DatabaseFlags> databaseFlags;

  /// Configuration specific to read replica instances. Indicates whether
  /// replication is enabled or not.
  core.bool databaseReplicationEnabled;

  /// The settings for IP Management. This allows to enable or disable the
  /// instance IP and manage which external networks can connect to the
  /// instance. The IPv4 address cannot be disabled for Second Generation
  /// instances.
  IpConfiguration ipConfiguration;

  /// This is always sql#settings.
  core.String kind;

  /// The location preference settings. This allows the instance to be located
  /// as near as possible to either an App Engine app or Compute Engine zone for
  /// better performance. App Engine co-location is only applicable to First
  /// Generation instances.
  LocationPreference locationPreference;

  /// The maintenance window for this instance. This specifies when the instance
  /// can be restarted for maintenance purposes. Not used for First Generation
  /// instances.
  MaintenanceWindow maintenanceWindow;

  /// The pricing plan for this instance. This can be either PER_USE or PACKAGE.
  /// Only PER_USE is supported for Second Generation instances.
  core.String pricingPlan;

  /// The type of replication this instance uses. This can be either
  /// ASYNCHRONOUS or SYNCHRONOUS. This property is only applicable to First
  /// Generation instances.
  core.String replicationType;

  /// The version of instance settings. This is a required field for update
  /// method to make sure concurrent updates are handled properly. During
  /// update, use the most recent settingsVersion value for this instance and do
  /// not try to update this value.
  core.String settingsVersion;

  /// Configuration to increase storage size automatically. The default value is
  /// true. Not used for First Generation instances.
  core.bool storageAutoResize;

  /// The maximum size to which storage capacity can be automatically increased.
  /// The default value is 0, which specifies that there is no limit. Not used
  /// for First Generation instances.
  core.String storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example db-n1-standard-1
  /// (MySQL instances) or db-custom-1-3840 (PostgreSQL instances). For MySQL
  /// instances, this property determines whether the instance is First or
  /// Second Generation. For more information, see Instance Settings.
  core.String tier;

  /// User-provided labels, represented as a dictionary where each label is a
  /// single key value pair.
  core.Map<core.String, core.String> userLabels;

  Settings();

  Settings.fromJson(core.Map _json) {
    if (_json.containsKey("activationPolicy")) {
      activationPolicy = _json["activationPolicy"];
    }
    if (_json.containsKey("authorizedGaeApplications")) {
      authorizedGaeApplications =
          (_json["authorizedGaeApplications"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("availabilityType")) {
      availabilityType = _json["availabilityType"];
    }
    if (_json.containsKey("backupConfiguration")) {
      backupConfiguration =
          new BackupConfiguration.fromJson(_json["backupConfiguration"]);
    }
    if (_json.containsKey("crashSafeReplicationEnabled")) {
      crashSafeReplicationEnabled = _json["crashSafeReplicationEnabled"];
    }
    if (_json.containsKey("dataDiskSizeGb")) {
      dataDiskSizeGb = _json["dataDiskSizeGb"];
    }
    if (_json.containsKey("dataDiskType")) {
      dataDiskType = _json["dataDiskType"];
    }
    if (_json.containsKey("databaseFlags")) {
      databaseFlags = (_json["databaseFlags"] as core.List)
          .map<DatabaseFlags>((value) => new DatabaseFlags.fromJson(value))
          .toList();
    }
    if (_json.containsKey("databaseReplicationEnabled")) {
      databaseReplicationEnabled = _json["databaseReplicationEnabled"];
    }
    if (_json.containsKey("ipConfiguration")) {
      ipConfiguration = new IpConfiguration.fromJson(_json["ipConfiguration"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("locationPreference")) {
      locationPreference =
          new LocationPreference.fromJson(_json["locationPreference"]);
    }
    if (_json.containsKey("maintenanceWindow")) {
      maintenanceWindow =
          new MaintenanceWindow.fromJson(_json["maintenanceWindow"]);
    }
    if (_json.containsKey("pricingPlan")) {
      pricingPlan = _json["pricingPlan"];
    }
    if (_json.containsKey("replicationType")) {
      replicationType = _json["replicationType"];
    }
    if (_json.containsKey("settingsVersion")) {
      settingsVersion = _json["settingsVersion"];
    }
    if (_json.containsKey("storageAutoResize")) {
      storageAutoResize = _json["storageAutoResize"];
    }
    if (_json.containsKey("storageAutoResizeLimit")) {
      storageAutoResizeLimit = _json["storageAutoResizeLimit"];
    }
    if (_json.containsKey("tier")) {
      tier = _json["tier"];
    }
    if (_json.containsKey("userLabels")) {
      userLabels =
          (_json["userLabels"] as core.Map).cast<core.String, core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (activationPolicy != null) {
      _json["activationPolicy"] = activationPolicy;
    }
    if (authorizedGaeApplications != null) {
      _json["authorizedGaeApplications"] = authorizedGaeApplications;
    }
    if (availabilityType != null) {
      _json["availabilityType"] = availabilityType;
    }
    if (backupConfiguration != null) {
      _json["backupConfiguration"] = (backupConfiguration).toJson();
    }
    if (crashSafeReplicationEnabled != null) {
      _json["crashSafeReplicationEnabled"] = crashSafeReplicationEnabled;
    }
    if (dataDiskSizeGb != null) {
      _json["dataDiskSizeGb"] = dataDiskSizeGb;
    }
    if (dataDiskType != null) {
      _json["dataDiskType"] = dataDiskType;
    }
    if (databaseFlags != null) {
      _json["databaseFlags"] =
          databaseFlags.map((value) => (value).toJson()).toList();
    }
    if (databaseReplicationEnabled != null) {
      _json["databaseReplicationEnabled"] = databaseReplicationEnabled;
    }
    if (ipConfiguration != null) {
      _json["ipConfiguration"] = (ipConfiguration).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (locationPreference != null) {
      _json["locationPreference"] = (locationPreference).toJson();
    }
    if (maintenanceWindow != null) {
      _json["maintenanceWindow"] = (maintenanceWindow).toJson();
    }
    if (pricingPlan != null) {
      _json["pricingPlan"] = pricingPlan;
    }
    if (replicationType != null) {
      _json["replicationType"] = replicationType;
    }
    if (settingsVersion != null) {
      _json["settingsVersion"] = settingsVersion;
    }
    if (storageAutoResize != null) {
      _json["storageAutoResize"] = storageAutoResize;
    }
    if (storageAutoResizeLimit != null) {
      _json["storageAutoResizeLimit"] = storageAutoResizeLimit;
    }
    if (tier != null) {
      _json["tier"] = tier;
    }
    if (userLabels != null) {
      _json["userLabels"] = userLabels;
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
  /// 2012-11-15T16:19:00.094Z
  core.DateTime createTime;

  /// The time when the certificate expires in RFC 3339 format, for example
  /// 2012-11-15T16:19:00.094Z.
  core.DateTime expirationTime;

  /// Name of the database instance.
  core.String instance;

  /// This is always sql#sslCert.
  core.String kind;

  /// The URI of this resource.
  core.String selfLink;

  /// Sha1 Fingerprint.
  core.String sha1Fingerprint;

  SslCert();

  SslCert.fromJson(core.Map _json) {
    if (_json.containsKey("cert")) {
      cert = _json["cert"];
    }
    if (_json.containsKey("certSerialNumber")) {
      certSerialNumber = _json["certSerialNumber"];
    }
    if (_json.containsKey("commonName")) {
      commonName = _json["commonName"];
    }
    if (_json.containsKey("createTime")) {
      createTime = core.DateTime.parse(_json["createTime"]);
    }
    if (_json.containsKey("expirationTime")) {
      expirationTime = core.DateTime.parse(_json["expirationTime"]);
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("selfLink")) {
      selfLink = _json["selfLink"];
    }
    if (_json.containsKey("sha1Fingerprint")) {
      sha1Fingerprint = _json["sha1Fingerprint"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (cert != null) {
      _json["cert"] = cert;
    }
    if (certSerialNumber != null) {
      _json["certSerialNumber"] = certSerialNumber;
    }
    if (commonName != null) {
      _json["commonName"] = commonName;
    }
    if (createTime != null) {
      _json["createTime"] = (createTime).toIso8601String();
    }
    if (expirationTime != null) {
      _json["expirationTime"] = (expirationTime).toIso8601String();
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (selfLink != null) {
      _json["selfLink"] = selfLink;
    }
    if (sha1Fingerprint != null) {
      _json["sha1Fingerprint"] = sha1Fingerprint;
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
    if (_json.containsKey("certInfo")) {
      certInfo = new SslCert.fromJson(_json["certInfo"]);
    }
    if (_json.containsKey("certPrivateKey")) {
      certPrivateKey = _json["certPrivateKey"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (certInfo != null) {
      _json["certInfo"] = (certInfo).toJson();
    }
    if (certPrivateKey != null) {
      _json["certPrivateKey"] = certPrivateKey;
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
    if (_json.containsKey("public_key")) {
      publicKey = _json["public_key"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (publicKey != null) {
      _json["public_key"] = publicKey;
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
    if (_json.containsKey("commonName")) {
      commonName = _json["commonName"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (commonName != null) {
      _json["commonName"] = commonName;
    }
    return _json;
  }
}

/// SslCert insert response.
class SslCertsInsertResponse {
  /// The new client certificate and private key. For First Generation
  /// instances, the new certificate does not take effect until the instance is
  /// restarted.
  SslCertDetail clientCert;

  /// This is always sql#sslCertsInsert.
  core.String kind;

  /// The operation to track the ssl certs insert request.
  Operation operation;

  /// The server Certificate Authority's certificate. If this is missing you can
  /// force a new one to be generated by calling resetSslConfig method on
  /// instances resource.
  SslCert serverCaCert;

  SslCertsInsertResponse();

  SslCertsInsertResponse.fromJson(core.Map _json) {
    if (_json.containsKey("clientCert")) {
      clientCert = new SslCertDetail.fromJson(_json["clientCert"]);
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("operation")) {
      operation = new Operation.fromJson(_json["operation"]);
    }
    if (_json.containsKey("serverCaCert")) {
      serverCaCert = new SslCert.fromJson(_json["serverCaCert"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (clientCert != null) {
      _json["clientCert"] = (clientCert).toJson();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (operation != null) {
      _json["operation"] = (operation).toJson();
    }
    if (serverCaCert != null) {
      _json["serverCaCert"] = (serverCaCert).toJson();
    }
    return _json;
  }
}

/// SslCerts list response.
class SslCertsListResponse {
  /// List of client certificates for the instance.
  core.List<SslCert> items;

  /// This is always sql#sslCertsList.
  core.String kind;

  SslCertsListResponse();

  SslCertsListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<SslCert>((value) => new SslCert.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
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

  /// This is always sql#tier.
  core.String kind;

  /// The applicable regions for this tier.
  core.List<core.String> region;

  /// An identifier for the machine type, for example, db-n1-standard-1. For
  /// related information, see Pricing.
  core.String tier;

  Tier();

  Tier.fromJson(core.Map _json) {
    if (_json.containsKey("DiskQuota")) {
      DiskQuota = _json["DiskQuota"];
    }
    if (_json.containsKey("RAM")) {
      RAM = _json["RAM"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("region")) {
      region = (_json["region"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("tier")) {
      tier = _json["tier"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (DiskQuota != null) {
      _json["DiskQuota"] = DiskQuota;
    }
    if (RAM != null) {
      _json["RAM"] = RAM;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (tier != null) {
      _json["tier"] = tier;
    }
    return _json;
  }
}

/// Tiers list response.
class TiersListResponse {
  /// List of tiers.
  core.List<Tier> items;

  /// This is always sql#tiersList.
  core.String kind;

  TiersListResponse();

  TiersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<Tier>((value) => new Tier.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    return _json;
  }
}

/// Database Instance truncate log context.
class TruncateLogContext {
  /// This is always sql#truncateLogContext.
  core.String kind;

  /// The type of log to truncate. Valid values are MYSQL_GENERAL_TABLE and
  /// MYSQL_SLOW_TABLE.
  core.String logType;

  TruncateLogContext();

  TruncateLogContext.fromJson(core.Map _json) {
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("logType")) {
      logType = _json["logType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (logType != null) {
      _json["logType"] = logType;
    }
    return _json;
  }
}

/// A Cloud SQL user resource.
class User {
  /// This field is deprecated and will be removed from a future version of the
  /// API.
  core.String etag;

  /// The host name from which the user can connect. For insert operations, host
  /// defaults to an empty string. For update operations, host is specified as
  /// part of the request URL. The host name cannot be updated after insertion.
  core.String host;

  /// The name of the Cloud SQL instance. This does not include the project ID.
  /// Can be omitted for update since it is already specified on the URL.
  core.String instance;

  /// This is always sql#user.
  core.String kind;

  /// The name of the user in the Cloud SQL instance. Can be omitted for update
  /// since it is already specified in the URL.
  core.String name;

  /// The password for the user.
  core.String password;

  /// The project ID of the project containing the Cloud SQL database. The
  /// Google apps domain is prefixed if applicable. Can be omitted for update
  /// since it is already specified on the URL.
  core.String project;

  User();

  User.fromJson(core.Map _json) {
    if (_json.containsKey("etag")) {
      etag = _json["etag"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("instance")) {
      instance = _json["instance"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("password")) {
      password = _json["password"];
    }
    if (_json.containsKey("project")) {
      project = _json["project"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (etag != null) {
      _json["etag"] = etag;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (instance != null) {
      _json["instance"] = instance;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (password != null) {
      _json["password"] = password;
    }
    if (project != null) {
      _json["project"] = project;
    }
    return _json;
  }
}

/// User list response.
class UsersListResponse {
  /// List of user resources in the instance.
  core.List<User> items;

  /// This is always sql#usersList.
  core.String kind;

  /// An identifier that uniquely identifies the operation. You can use this
  /// identifier to retrieve the Operations resource that has information about
  /// the operation.
  core.String nextPageToken;

  UsersListResponse();

  UsersListResponse.fromJson(core.Map _json) {
    if (_json.containsKey("items")) {
      items = (_json["items"] as core.List)
          .map<User>((value) => new User.fromJson(value))
          .toList();
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (items != null) {
      _json["items"] = items.map((value) => (value).toJson()).toList();
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}
