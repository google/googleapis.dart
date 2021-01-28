// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

/// Apps Script API - v1
///
/// Manages and executes Google Apps Script projects.
///
/// For more information, see <https://developers.google.com/apps-script/api/>
library googleapis.script.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages and executes Google Apps Script projects.
class ScriptApi {
  /// Read, compose, send, and permanently delete all your email from Gmail
  static const mailGoogleComScope = 'https://mail.google.com/';

  /// See, edit, share, and permanently delete all the calendars you can access
  /// using Google Calendar
  static const wwwGoogleComCalendarFeedsScope =
      'https://www.google.com/calendar/feeds';

  /// See, edit, download, and permanently delete your contacts
  static const wwwGoogleComM8FeedsScope = 'https://www.google.com/m8/feeds';

  /// View and manage the provisioning of groups on your domain
  static const adminDirectoryGroupScope =
      'https://www.googleapis.com/auth/admin.directory.group';

  /// View and manage the provisioning of users on your domain
  static const adminDirectoryUserScope =
      'https://www.googleapis.com/auth/admin.directory.user';

  /// View and manage your Google Docs documents
  static const documentsScope = 'https://www.googleapis.com/auth/documents';

  /// See, edit, create, and delete all of your Google Drive files
  static const driveScope = 'https://www.googleapis.com/auth/drive';

  /// View and manage your forms in Google Drive
  static const formsScope = 'https://www.googleapis.com/auth/forms';

  /// View and manage forms that this application has been installed in
  static const formsCurrentonlyScope =
      'https://www.googleapis.com/auth/forms.currentonly';

  /// View and manage your Google Groups
  static const groupsScope = 'https://www.googleapis.com/auth/groups';

  /// Create and update Google Apps Script deployments
  static const scriptDeploymentsScope =
      'https://www.googleapis.com/auth/script.deployments';

  /// View Google Apps Script deployments
  static const scriptDeploymentsReadonlyScope =
      'https://www.googleapis.com/auth/script.deployments.readonly';

  /// View Google Apps Script project's metrics
  static const scriptMetricsScope =
      'https://www.googleapis.com/auth/script.metrics';

  /// View Google Apps Script processes
  static const scriptProcessesScope =
      'https://www.googleapis.com/auth/script.processes';

  /// Create and update Google Apps Script projects
  static const scriptProjectsScope =
      'https://www.googleapis.com/auth/script.projects';

  /// View Google Apps Script projects
  static const scriptProjectsReadonlyScope =
      'https://www.googleapis.com/auth/script.projects.readonly';

  /// See, edit, create, and delete your spreadsheets in Google Drive
  static const spreadsheetsScope =
      'https://www.googleapis.com/auth/spreadsheets';

  /// View your email address
  static const userinfoEmailScope =
      'https://www.googleapis.com/auth/userinfo.email';

  final commons.ApiRequester _requester;

  ProcessesResourceApi get processes => ProcessesResourceApi(_requester);
  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);
  ScriptsResourceApi get scripts => ScriptsResourceApi(_requester);

  ScriptApi(http.Client client,
      {core.String rootUrl = 'https://script.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProcessesResourceApi {
  final commons.ApiRequester _requester;

  ProcessesResourceApi(commons.ApiRequester client) : _requester = client;

  /// List information about processes made by or on behalf of a user, such as
  /// process type and current status.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of returned processes per page of results.
  /// Defaults to 50.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of `nextPageToken` from a previous
  /// response.
  ///
  /// [userProcessFilter_deploymentId] - Optional field used to limit returned
  /// processes to those originating from projects with a specific deployment
  /// ID.
  ///
  /// [userProcessFilter_endTime] - Optional field used to limit returned
  /// processes to those that completed on or before the given timestamp.
  ///
  /// [userProcessFilter_functionName] - Optional field used to limit returned
  /// processes to those originating from a script function with the given
  /// function name.
  ///
  /// [userProcessFilter_projectName] - Optional field used to limit returned
  /// processes to those originating from projects with project names containing
  /// a specific string.
  ///
  /// [userProcessFilter_scriptId] - Optional field used to limit returned
  /// processes to those originating from projects with a specific script ID.
  ///
  /// [userProcessFilter_startTime] - Optional field used to limit returned
  /// processes to those that were started on or after the given timestamp.
  ///
  /// [userProcessFilter_statuses] - Optional field used to limit returned
  /// processes to those having one of the specified process statuses.
  ///
  /// [userProcessFilter_types] - Optional field used to limit returned
  /// processes to those having one of the specified process types.
  ///
  /// [userProcessFilter_userAccessLevels] - Optional field used to limit
  /// returned processes to those having one of the specified user access
  /// levels.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListUserProcessesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListUserProcessesResponse> list({
    core.int pageSize,
    core.String pageToken,
    core.String userProcessFilter_deploymentId,
    core.String userProcessFilter_endTime,
    core.String userProcessFilter_functionName,
    core.String userProcessFilter_projectName,
    core.String userProcessFilter_scriptId,
    core.String userProcessFilter_startTime,
    core.List<core.String> userProcessFilter_statuses,
    core.List<core.String> userProcessFilter_types,
    core.List<core.String> userProcessFilter_userAccessLevels,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (userProcessFilter_deploymentId != null) {
      _queryParams['userProcessFilter.deploymentId'] = [
        userProcessFilter_deploymentId
      ];
    }
    if (userProcessFilter_endTime != null) {
      _queryParams['userProcessFilter.endTime'] = [userProcessFilter_endTime];
    }
    if (userProcessFilter_functionName != null) {
      _queryParams['userProcessFilter.functionName'] = [
        userProcessFilter_functionName
      ];
    }
    if (userProcessFilter_projectName != null) {
      _queryParams['userProcessFilter.projectName'] = [
        userProcessFilter_projectName
      ];
    }
    if (userProcessFilter_scriptId != null) {
      _queryParams['userProcessFilter.scriptId'] = [userProcessFilter_scriptId];
    }
    if (userProcessFilter_startTime != null) {
      _queryParams['userProcessFilter.startTime'] = [
        userProcessFilter_startTime
      ];
    }
    if (userProcessFilter_statuses != null) {
      _queryParams['userProcessFilter.statuses'] = userProcessFilter_statuses;
    }
    if (userProcessFilter_types != null) {
      _queryParams['userProcessFilter.types'] = userProcessFilter_types;
    }
    if (userProcessFilter_userAccessLevels != null) {
      _queryParams['userProcessFilter.userAccessLevels'] =
          userProcessFilter_userAccessLevels;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/processes';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListUserProcessesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// List information about a script's executed processes, such as process type
  /// and current status.
  ///
  /// Request parameters:
  ///
  /// [pageSize] - The maximum number of returned processes per page of results.
  /// Defaults to 50.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of `nextPageToken` from a previous
  /// response.
  ///
  /// [scriptId] - The script ID of the project whose processes are listed.
  ///
  /// [scriptProcessFilter_deploymentId] - Optional field used to limit returned
  /// processes to those originating from projects with a specific deployment
  /// ID.
  ///
  /// [scriptProcessFilter_endTime] - Optional field used to limit returned
  /// processes to those that completed on or before the given timestamp.
  ///
  /// [scriptProcessFilter_functionName] - Optional field used to limit returned
  /// processes to those originating from a script function with the given
  /// function name.
  ///
  /// [scriptProcessFilter_startTime] - Optional field used to limit returned
  /// processes to those that were started on or after the given timestamp.
  ///
  /// [scriptProcessFilter_statuses] - Optional field used to limit returned
  /// processes to those having one of the specified process statuses.
  ///
  /// [scriptProcessFilter_types] - Optional field used to limit returned
  /// processes to those having one of the specified process types.
  ///
  /// [scriptProcessFilter_userAccessLevels] - Optional field used to limit
  /// returned processes to those having one of the specified user access
  /// levels.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScriptProcessesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScriptProcessesResponse> listScriptProcesses({
    core.int pageSize,
    core.String pageToken,
    core.String scriptId,
    core.String scriptProcessFilter_deploymentId,
    core.String scriptProcessFilter_endTime,
    core.String scriptProcessFilter_functionName,
    core.String scriptProcessFilter_startTime,
    core.List<core.String> scriptProcessFilter_statuses,
    core.List<core.String> scriptProcessFilter_types,
    core.List<core.String> scriptProcessFilter_userAccessLevels,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if (scriptId != null) {
      _queryParams['scriptId'] = [scriptId];
    }
    if (scriptProcessFilter_deploymentId != null) {
      _queryParams['scriptProcessFilter.deploymentId'] = [
        scriptProcessFilter_deploymentId
      ];
    }
    if (scriptProcessFilter_endTime != null) {
      _queryParams['scriptProcessFilter.endTime'] = [
        scriptProcessFilter_endTime
      ];
    }
    if (scriptProcessFilter_functionName != null) {
      _queryParams['scriptProcessFilter.functionName'] = [
        scriptProcessFilter_functionName
      ];
    }
    if (scriptProcessFilter_startTime != null) {
      _queryParams['scriptProcessFilter.startTime'] = [
        scriptProcessFilter_startTime
      ];
    }
    if (scriptProcessFilter_statuses != null) {
      _queryParams['scriptProcessFilter.statuses'] =
          scriptProcessFilter_statuses;
    }
    if (scriptProcessFilter_types != null) {
      _queryParams['scriptProcessFilter.types'] = scriptProcessFilter_types;
    }
    if (scriptProcessFilter_userAccessLevels != null) {
      _queryParams['scriptProcessFilter.userAccessLevels'] =
          scriptProcessFilter_userAccessLevels;
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/processes:listScriptProcesses';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListScriptProcessesResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDeploymentsResourceApi get deployments =>
      ProjectsDeploymentsResourceApi(_requester);
  ProjectsVersionsResourceApi get versions =>
      ProjectsVersionsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Creates a new, empty script project with no script files and a base
  /// manifest file.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> create(
    CreateProjectRequest request, {
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
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Project.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a script project's metadata.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Project].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Project> get(
    core.String scriptId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$scriptId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Project.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the content of the script project, including the code source and
  /// metadata for each script file.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [versionNumber] - The version number of the project to retrieve. If not
  /// provided, the project's HEAD version is returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Content].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Content> getContent(
    core.String scriptId, {
    core.int versionNumber,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if (versionNumber != null) {
      _queryParams['versionNumber'] = ['${versionNumber}'];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/content';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Content.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Get metrics data for scripts, such as number of executions and active
  /// users.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - Required field indicating the script to get metrics for.
  ///
  /// [metricsFilter_deploymentId] - Optional field indicating a specific
  /// deployment to retrieve metrics from.
  ///
  /// [metricsGranularity] - Required field indicating what granularity of
  /// metrics are returned.
  /// Possible string values are:
  /// - "UNSPECIFIED_GRANULARITY" : Default metric granularity used to query no
  /// metrics.
  /// - "WEEKLY" : Represents weekly metrics.
  /// - "DAILY" : Represents daily metrics over a period of 7 days.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Metrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Metrics> getMetrics(
    core.String scriptId, {
    core.String metricsFilter_deploymentId,
    core.String metricsGranularity,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if (metricsFilter_deploymentId != null) {
      _queryParams['metricsFilter.deploymentId'] = [metricsFilter_deploymentId];
    }
    if (metricsGranularity != null) {
      _queryParams['metricsGranularity'] = [metricsGranularity];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/metrics';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Metrics.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates the content of the specified script project. This content is
  /// stored as the HEAD version, and is used when the script is executed as a
  /// trigger, in the script editor, in add-on preview mode, or as a web app or
  /// Apps Script API in development mode. This clears all the existing files in
  /// the project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Content].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Content> updateContent(
    Content request,
    core.String scriptId, {
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
    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/content';

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Content.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsDeploymentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDeploymentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a deployment of an Apps Script project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> create(
    DeploymentConfig request,
    core.String scriptId, {
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
    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          Deployment.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Deletes a deployment of an Apps Script project.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [deploymentId] - The deployment ID to be undeployed.
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
    core.String scriptId,
    core.String deploymentId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if (deploymentId == null) {
      throw core.ArgumentError('Parameter deploymentId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments/' +
        commons.Escaper.ecapeVariable('$deploymentId');

    final _response = _requester.request(
      _url,
      'DELETE',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a deployment of an Apps Script project.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [deploymentId] - The deployment ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> get(
    core.String scriptId,
    core.String deploymentId, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if (deploymentId == null) {
      throw core.ArgumentError('Parameter deploymentId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments/' +
        commons.Escaper.ecapeVariable('$deploymentId');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          Deployment.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists the deployments of an Apps Script project.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [pageSize] - The maximum number of deployments on each returned page.
  /// Defaults to 50.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of `nextPageToken` from a previous
  /// response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDeploymentsResponse> list(
    core.String scriptId, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListDeploymentsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Updates a deployment of an Apps Script project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [deploymentId] - The deployment ID for this deployment.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Deployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Deployment> update(
    UpdateDeploymentRequest request,
    core.String scriptId,
    core.String deploymentId, {
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
    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if (deploymentId == null) {
      throw core.ArgumentError('Parameter deploymentId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments/' +
        commons.Escaper.ecapeVariable('$deploymentId');

    final _response = _requester.request(
      _url,
      'PUT',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) =>
          Deployment.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsVersionsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsVersionsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new immutable version using the current code, with a unique
  /// version number.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> create(
    Version request,
    core.String scriptId, {
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
    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/versions';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Version.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets a version of a script project.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [versionNumber] - The version number.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Version].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Version> get(
    core.String scriptId,
    core.int versionNumber, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if (versionNumber == null) {
      throw core.ArgumentError('Parameter versionNumber is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionNumber');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Version.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// List the versions of a script project.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [pageSize] - The maximum number of versions on each returned page.
  /// Defaults to 50.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This should be set to the value of `nextPageToken` from a previous
  /// response.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVersionsResponse> list(
    core.String scriptId, {
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/versions';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListVersionsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ScriptsResourceApi {
  final commons.ApiRequester _requester;

  ScriptsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Runs a function in an Apps Script project. The script project must be
  /// deployed for use with the Apps Script API and the calling application must
  /// share the same Cloud Platform project. This method requires authorization
  /// with an OAuth 2.0 token that includes at least one of the scopes listed in
  /// the [Authorization](#authorization-scopes) section; script projects that
  /// do not require authorization cannot be executed through this API. To find
  /// the correct scopes to include in the authentication token, open the
  /// project in the script editor, then select **File > Project properties**
  /// and click the **Scopes** tab. The error `403, PERMISSION_DENIED: The
  /// caller does not have permission` indicates that the Cloud Platform project
  /// used to authorize the request is not the same as the one used by the
  /// script.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script ID of the script to be executed. To find the
  /// script ID, open the project in the script editor and select **File >
  /// Project properties**.
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
  async.Future<Operation> run(
    ExecutionRequest request,
    core.String scriptId, {
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
    if (scriptId == null) {
      throw core.ArgumentError('Parameter scriptId is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1/scripts/' + commons.Escaper.ecapeVariable('$scriptId') + ':run';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// The Content resource.
class Content {
  /// The list of script project files. One of the files is a script manifest;
  /// it must be named "appsscript", must have type of JSON, and include the
  /// manifest configurations for the project.
  core.List<File> files;

  /// The script project's Drive ID.
  core.String scriptId;

  Content();

  Content.fromJson(core.Map _json) {
    if (_json.containsKey('files')) {
      files = (_json['files'] as core.List)
          .map<File>((value) =>
              File.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('scriptId')) {
      scriptId = _json['scriptId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (files != null) {
      _json['files'] = files.map((value) => value.toJson()).toList();
    }
    if (scriptId != null) {
      _json['scriptId'] = scriptId;
    }
    return _json;
  }
}

/// Request to create a script project.
class CreateProjectRequest {
  /// The Drive ID of a parent file that the created script project is bound to.
  /// This is usually the ID of a Google Doc, Google Sheet, Google Form, or
  /// Google Slides file. If not set, a standalone script project is created.
  core.String parentId;

  /// The title for the project.
  core.String title;

  CreateProjectRequest();

  CreateProjectRequest.fromJson(core.Map _json) {
    if (_json.containsKey('parentId')) {
      parentId = _json['parentId'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (parentId != null) {
      _json['parentId'] = parentId;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// Representation of a single script deployment.
class Deployment {
  /// The deployment configuration.
  DeploymentConfig deploymentConfig;

  /// The deployment ID for this deployment.
  core.String deploymentId;

  /// The deployment's entry points.
  core.List<EntryPoint> entryPoints;

  /// Last modified date time stamp.
  core.String updateTime;

  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey('deploymentConfig')) {
      deploymentConfig = DeploymentConfig.fromJson(
          _json['deploymentConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('deploymentId')) {
      deploymentId = _json['deploymentId'] as core.String;
    }
    if (_json.containsKey('entryPoints')) {
      entryPoints = (_json['entryPoints'] as core.List)
          .map<EntryPoint>((value) =>
              EntryPoint.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deploymentConfig != null) {
      _json['deploymentConfig'] = deploymentConfig.toJson();
    }
    if (deploymentId != null) {
      _json['deploymentId'] = deploymentId;
    }
    if (entryPoints != null) {
      _json['entryPoints'] =
          entryPoints.map((value) => value.toJson()).toList();
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Metadata the defines how a deployment is configured.
class DeploymentConfig {
  /// The description for this deployment.
  core.String description;

  /// The manifest file name for this deployment.
  core.String manifestFileName;

  /// The script project's Drive ID.
  core.String scriptId;

  /// The version number on which this deployment is based.
  core.int versionNumber;

  DeploymentConfig();

  DeploymentConfig.fromJson(core.Map _json) {
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('manifestFileName')) {
      manifestFileName = _json['manifestFileName'] as core.String;
    }
    if (_json.containsKey('scriptId')) {
      scriptId = _json['scriptId'] as core.String;
    }
    if (_json.containsKey('versionNumber')) {
      versionNumber = _json['versionNumber'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (description != null) {
      _json['description'] = description;
    }
    if (manifestFileName != null) {
      _json['manifestFileName'] = manifestFileName;
    }
    if (scriptId != null) {
      _json['scriptId'] = scriptId;
    }
    if (versionNumber != null) {
      _json['versionNumber'] = versionNumber;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// A configuration that defines how a deployment is accessed externally.
class EntryPoint {
  /// Add-on properties.
  GoogleAppsScriptTypeAddOnEntryPoint addOn;

  /// The type of the entry point.
  /// Possible string values are:
  /// - "ENTRY_POINT_TYPE_UNSPECIFIED" : An unspecified entry point.
  /// - "WEB_APP" : A web application entry point.
  /// - "EXECUTION_API" : An API executable entry point.
  /// - "ADD_ON" : An Add-On entry point.
  core.String entryPointType;

  /// An entry point specification for Apps Script API execution calls.
  GoogleAppsScriptTypeExecutionApiEntryPoint executionApi;

  /// An entry point specification for web apps.
  GoogleAppsScriptTypeWebAppEntryPoint webApp;

  EntryPoint();

  EntryPoint.fromJson(core.Map _json) {
    if (_json.containsKey('addOn')) {
      addOn = GoogleAppsScriptTypeAddOnEntryPoint.fromJson(
          _json['addOn'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('entryPointType')) {
      entryPointType = _json['entryPointType'] as core.String;
    }
    if (_json.containsKey('executionApi')) {
      executionApi = GoogleAppsScriptTypeExecutionApiEntryPoint.fromJson(
          _json['executionApi'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('webApp')) {
      webApp = GoogleAppsScriptTypeWebAppEntryPoint.fromJson(
          _json['webApp'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addOn != null) {
      _json['addOn'] = addOn.toJson();
    }
    if (entryPointType != null) {
      _json['entryPointType'] = entryPointType;
    }
    if (executionApi != null) {
      _json['executionApi'] = executionApi.toJson();
    }
    if (webApp != null) {
      _json['webApp'] = webApp.toJson();
    }
    return _json;
  }
}

/// The response for executing or debugging a function in an Apps Script
/// project.
class ExecuteStreamResponse {
  /// The result of the execution.
  ScriptExecutionResult result;

  ExecuteStreamResponse();

  ExecuteStreamResponse.fromJson(core.Map _json) {
    if (_json.containsKey('result')) {
      result = ScriptExecutionResult.fromJson(
          _json['result'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (result != null) {
      _json['result'] = result.toJson();
    }
    return _json;
  }
}

/// An object that provides information about the nature of an error resulting
/// from an attempted execution of a script function using the Apps Script API.
/// If a run call succeeds but the script function (or Apps Script itself)
/// throws an exception, the response body's error field contains a Status
/// object. The `Status` object's `details` field contains an array with a
/// single one of these `ExecutionError` objects.
class ExecutionError {
  /// The error message thrown by Apps Script, usually localized into the user's
  /// language.
  core.String errorMessage;

  /// The error type, for example `TypeError` or `ReferenceError`. If the error
  /// type is unavailable, this field is not included.
  core.String errorType;

  /// An array of objects that provide a stack trace through the script to show
  /// where the execution failed, with the deepest call first.
  core.List<ScriptStackTraceElement> scriptStackTraceElements;

  ExecutionError();

  ExecutionError.fromJson(core.Map _json) {
    if (_json.containsKey('errorMessage')) {
      errorMessage = _json['errorMessage'] as core.String;
    }
    if (_json.containsKey('errorType')) {
      errorType = _json['errorType'] as core.String;
    }
    if (_json.containsKey('scriptStackTraceElements')) {
      scriptStackTraceElements =
          (_json['scriptStackTraceElements'] as core.List)
              .map<ScriptStackTraceElement>((value) =>
                  ScriptStackTraceElement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (errorMessage != null) {
      _json['errorMessage'] = errorMessage;
    }
    if (errorType != null) {
      _json['errorType'] = errorType;
    }
    if (scriptStackTraceElements != null) {
      _json['scriptStackTraceElements'] =
          scriptStackTraceElements.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A request to run the function in a script. The script is identified by the
/// specified `script_id`. Executing a function on a script returns results
/// based on the implementation of the script.
class ExecutionRequest {
  /// If `true` and the user is an owner of the script, the script runs at the
  /// most recently saved version rather than the version deployed for use with
  /// the Apps Script API. Optional; default is `false`.
  core.bool devMode;

  /// The name of the function to execute in the given script. The name does not
  /// include parentheses or parameters. It can reference a function in an
  /// included library such as `Library.libFunction1`.
  core.String function;

  /// The parameters to be passed to the function being executed. The object
  /// type for each parameter should match the expected type in Apps Script.
  /// Parameters cannot be Apps Script-specific object types (such as a
  /// `Document` or a `Calendar`); they can only be primitive types such as
  /// `string`, `number`, `array`, `object`, or `boolean`. Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> parameters;

  /// *Deprecated*. For use with Android add-ons only. An ID that represents the
  /// user's current session in the Android app for Google Docs or Sheets,
  /// included as extra data in the
  /// [Intent](https://developer.android.com/guide/components/intents-filters.html)
  /// that launches the add-on. When an Android add-on is run with a session
  /// state, it gains the privileges of a
  /// [bound](https://developers.google.com/apps-script/guides/bound)
  /// script—that is, it can access information like the user's current cursor
  /// position (in Docs) or selected cell (in Sheets). To retrieve the state,
  /// call
  /// `Intent.getStringExtra("com.google.android.apps.docs.addons.SessionState")`.
  /// Optional.
  core.String sessionState;

  ExecutionRequest();

  ExecutionRequest.fromJson(core.Map _json) {
    if (_json.containsKey('devMode')) {
      devMode = _json['devMode'] as core.bool;
    }
    if (_json.containsKey('function')) {
      function = _json['function'] as core.String;
    }
    if (_json.containsKey('parameters')) {
      parameters = (_json['parameters'] as core.List)
          .map<core.Object>((value) => value as core.Object)
          .toList();
    }
    if (_json.containsKey('sessionState')) {
      sessionState = _json['sessionState'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (devMode != null) {
      _json['devMode'] = devMode;
    }
    if (function != null) {
      _json['function'] = function;
    }
    if (parameters != null) {
      _json['parameters'] = parameters;
    }
    if (sessionState != null) {
      _json['sessionState'] = sessionState;
    }
    return _json;
  }
}

/// An object that provides the return value of a function executed using the
/// Apps Script API. If the script function returns successfully, the response
/// body's response field contains this `ExecutionResponse` object.
class ExecutionResponse {
  /// The return value of the script function. The type matches the object type
  /// returned in Apps Script. Functions called using the Apps Script API cannot
  /// return Apps Script-specific objects (such as a `Document` or a
  /// `Calendar`); they can only return primitive types such as a `string`,
  /// `number`, `array`, `object`, or `boolean`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object result;

  ExecutionResponse();

  ExecutionResponse.fromJson(core.Map _json) {
    if (_json.containsKey('result')) {
      result = _json['result'] as core.Object;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (result != null) {
      _json['result'] = result;
    }
    return _json;
  }
}

/// An individual file within a script project. A file is a third-party source
/// code created by one or more developers. It can be a server-side JS code,
/// HTML, or a configuration file. Each script project can contain multiple
/// files.
class File {
  /// Creation date timestamp. This read-only field is only visible to users who
  /// have WRITER permission for the script project.
  core.String createTime;

  /// The defined set of functions in the script file, if any.
  GoogleAppsScriptTypeFunctionSet functionSet;

  /// The user who modified the file most recently. This read-only field is only
  /// visible to users who have WRITER permission for the script project.
  GoogleAppsScriptTypeUser lastModifyUser;

  /// The name of the file. The file extension is not part of the file name,
  /// which can be identified from the type field.
  core.String name;

  /// The file content.
  core.String source;

  /// The type of the file.
  /// Possible string values are:
  /// - "ENUM_TYPE_UNSPECIFIED" : Undetermined file type; never actually used.
  /// - "SERVER_JS" : An Apps Script server-side code file.
  /// - "HTML" : A file containing client-side HTML.
  /// - "JSON" : A file in JSON format. This type is only used for the script
  /// project's manifest. The manifest file content must match the structure of
  /// a valid [ScriptManifest](/apps-script/concepts/manifests)
  core.String type;

  /// Last modified date timestamp. This read-only field is only visible to
  /// users who have WRITER permission for the script project.
  core.String updateTime;

  File();

  File.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('functionSet')) {
      functionSet = GoogleAppsScriptTypeFunctionSet.fromJson(
          _json['functionSet'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('lastModifyUser')) {
      lastModifyUser = GoogleAppsScriptTypeUser.fromJson(
          _json['lastModifyUser'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('source')) {
      source = _json['source'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (functionSet != null) {
      _json['functionSet'] = functionSet.toJson();
    }
    if (lastModifyUser != null) {
      _json['lastModifyUser'] = lastModifyUser.toJson();
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (source != null) {
      _json['source'] = source;
    }
    if (type != null) {
      _json['type'] = type;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// An add-on entry point.
class GoogleAppsScriptTypeAddOnEntryPoint {
  /// The add-on's required list of supported container types.
  /// Possible string values are:
  /// - "UNKNOWN_ADDON_TYPE" : Default value, unknown add-on type.
  /// - "GMAIL" : Add-on type for Gmail.
  /// - "DATA_STUDIO" : Add-on type for Data Studio.
  core.String addOnType;

  /// The add-on's optional description.
  core.String description;

  /// The add-on's optional help URL.
  core.String helpUrl;

  /// The add-on's required post install tip URL.
  core.String postInstallTipUrl;

  /// The add-on's optional report issue URL.
  core.String reportIssueUrl;

  /// The add-on's required title.
  core.String title;

  GoogleAppsScriptTypeAddOnEntryPoint();

  GoogleAppsScriptTypeAddOnEntryPoint.fromJson(core.Map _json) {
    if (_json.containsKey('addOnType')) {
      addOnType = _json['addOnType'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('helpUrl')) {
      helpUrl = _json['helpUrl'] as core.String;
    }
    if (_json.containsKey('postInstallTipUrl')) {
      postInstallTipUrl = _json['postInstallTipUrl'] as core.String;
    }
    if (_json.containsKey('reportIssueUrl')) {
      reportIssueUrl = _json['reportIssueUrl'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addOnType != null) {
      _json['addOnType'] = addOnType;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (helpUrl != null) {
      _json['helpUrl'] = helpUrl;
    }
    if (postInstallTipUrl != null) {
      _json['postInstallTipUrl'] = postInstallTipUrl;
    }
    if (reportIssueUrl != null) {
      _json['reportIssueUrl'] = reportIssueUrl;
    }
    if (title != null) {
      _json['title'] = title;
    }
    return _json;
  }
}

/// API executable entry point configuration.
class GoogleAppsScriptTypeExecutionApiConfig {
  /// Who has permission to run the API executable.
  /// Possible string values are:
  /// - "UNKNOWN_ACCESS" : Default value, should not be used.
  /// - "MYSELF" : Only the user who deployed the web app or executable can
  /// access it. Note that this is not necessarily the owner of the script
  /// project.
  /// - "DOMAIN" : Only users in the same domain as the user who deployed the
  /// web app or executable can access it.
  /// - "ANYONE" : Any logged in user can access the web app or executable.
  /// - "ANYONE_ANONYMOUS" : Any user, logged in or not, can access the web app
  /// or executable.
  core.String access;

  GoogleAppsScriptTypeExecutionApiConfig();

  GoogleAppsScriptTypeExecutionApiConfig.fromJson(core.Map _json) {
    if (_json.containsKey('access')) {
      access = _json['access'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (access != null) {
      _json['access'] = access;
    }
    return _json;
  }
}

/// An API executable entry point.
class GoogleAppsScriptTypeExecutionApiEntryPoint {
  /// The entry point's configuration.
  GoogleAppsScriptTypeExecutionApiConfig entryPointConfig;

  GoogleAppsScriptTypeExecutionApiEntryPoint();

  GoogleAppsScriptTypeExecutionApiEntryPoint.fromJson(core.Map _json) {
    if (_json.containsKey('entryPointConfig')) {
      entryPointConfig = GoogleAppsScriptTypeExecutionApiConfig.fromJson(
          _json['entryPointConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (entryPointConfig != null) {
      _json['entryPointConfig'] = entryPointConfig.toJson();
    }
    return _json;
  }
}

/// Represents a function in a script project.
class GoogleAppsScriptTypeFunction {
  /// The function name in the script project.
  core.String name;

  GoogleAppsScriptTypeFunction();

  GoogleAppsScriptTypeFunction.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A set of functions. No duplicates are permitted.
class GoogleAppsScriptTypeFunctionSet {
  /// A list of functions composing the set.
  core.List<GoogleAppsScriptTypeFunction> values;

  GoogleAppsScriptTypeFunctionSet();

  GoogleAppsScriptTypeFunctionSet.fromJson(core.Map _json) {
    if (_json.containsKey('values')) {
      values = (_json['values'] as core.List)
          .map<GoogleAppsScriptTypeFunction>((value) =>
              GoogleAppsScriptTypeFunction.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (values != null) {
      _json['values'] = values.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Representation of a single script process execution that was started from
/// the script editor, a trigger, an application, or using the Apps Script API.
/// This is distinct from the `Operation` resource, which only represents
/// executions started via the Apps Script API.
class GoogleAppsScriptTypeProcess {
  /// Duration the execution spent executing.
  core.String duration;

  /// Name of the function the started the execution.
  core.String functionName;

  /// The executions status.
  /// Possible string values are:
  /// - "PROCESS_STATUS_UNSPECIFIED" : Unspecified status.
  /// - "RUNNING" : The process is currently running.
  /// - "PAUSED" : The process has paused.
  /// - "COMPLETED" : The process has completed.
  /// - "CANCELED" : The process was cancelled.
  /// - "FAILED" : The process failed.
  /// - "TIMED_OUT" : The process timed out.
  /// - "UNKNOWN" : Process status unknown.
  /// - "DELAYED" : The process is delayed, waiting for quota.
  core.String processStatus;

  /// The executions type.
  /// Possible string values are:
  /// - "PROCESS_TYPE_UNSPECIFIED" : Unspecified type.
  /// - "ADD_ON" : The process was started from an add-on entry point.
  /// - "EXECUTION_API" : The process was started using the Apps Script API.
  /// - "TIME_DRIVEN" : The process was started from a time-based trigger.
  /// - "TRIGGER" : The process was started from an event-based trigger.
  /// - "WEBAPP" : The process was started from a web app entry point.
  /// - "EDITOR" : The process was started using the Apps Script IDE.
  /// - "SIMPLE_TRIGGER" : The process was started from a G Suite simple
  /// trigger.
  /// - "MENU" : The process was started from a G Suite menu item.
  /// - "BATCH_TASK" : The process was started as a task in a batch job.
  core.String processType;

  /// Name of the script being executed.
  core.String projectName;

  /// Time the execution started.
  core.String startTime;

  /// The executing users access level to the script.
  /// Possible string values are:
  /// - "USER_ACCESS_LEVEL_UNSPECIFIED" : User access level unspecified
  /// - "NONE" : The user has no access.
  /// - "READ" : The user has read-only access.
  /// - "WRITE" : The user has write access.
  /// - "OWNER" : The user is an owner.
  core.String userAccessLevel;

  GoogleAppsScriptTypeProcess();

  GoogleAppsScriptTypeProcess.fromJson(core.Map _json) {
    if (_json.containsKey('duration')) {
      duration = _json['duration'] as core.String;
    }
    if (_json.containsKey('functionName')) {
      functionName = _json['functionName'] as core.String;
    }
    if (_json.containsKey('processStatus')) {
      processStatus = _json['processStatus'] as core.String;
    }
    if (_json.containsKey('processType')) {
      processType = _json['processType'] as core.String;
    }
    if (_json.containsKey('projectName')) {
      projectName = _json['projectName'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('userAccessLevel')) {
      userAccessLevel = _json['userAccessLevel'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (duration != null) {
      _json['duration'] = duration;
    }
    if (functionName != null) {
      _json['functionName'] = functionName;
    }
    if (processStatus != null) {
      _json['processStatus'] = processStatus;
    }
    if (processType != null) {
      _json['processType'] = processType;
    }
    if (projectName != null) {
      _json['projectName'] = projectName;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (userAccessLevel != null) {
      _json['userAccessLevel'] = userAccessLevel;
    }
    return _json;
  }
}

/// A simple user profile resource.
class GoogleAppsScriptTypeUser {
  /// The user's domain.
  core.String domain;

  /// The user's identifying email address.
  core.String email;

  /// The user's display name.
  core.String name;

  /// The user's photo.
  core.String photoUrl;

  GoogleAppsScriptTypeUser();

  GoogleAppsScriptTypeUser.fromJson(core.Map _json) {
    if (_json.containsKey('domain')) {
      domain = _json['domain'] as core.String;
    }
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('photoUrl')) {
      photoUrl = _json['photoUrl'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (domain != null) {
      _json['domain'] = domain;
    }
    if (email != null) {
      _json['email'] = email;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (photoUrl != null) {
      _json['photoUrl'] = photoUrl;
    }
    return _json;
  }
}

/// Web app entry point configuration.
class GoogleAppsScriptTypeWebAppConfig {
  /// Who has permission to run the web app.
  /// Possible string values are:
  /// - "UNKNOWN_ACCESS" : Default value, should not be used.
  /// - "MYSELF" : Only the user who deployed the web app or executable can
  /// access it. Note that this is not necessarily the owner of the script
  /// project.
  /// - "DOMAIN" : Only users in the same domain as the user who deployed the
  /// web app or executable can access it.
  /// - "ANYONE" : Any logged in user can access the web app or executable.
  /// - "ANYONE_ANONYMOUS" : Any user, logged in or not, can access the web app
  /// or executable.
  core.String access;

  /// Who to execute the web app as.
  /// Possible string values are:
  /// - "UNKNOWN_EXECUTE_AS" : Default value, should not be used.
  /// - "USER_ACCESSING" : The script runs as the user accessing the web app.
  /// - "USER_DEPLOYING" : The script runs as the user who deployed the web app.
  /// Note that this is not necessarily the owner of the script project.
  core.String executeAs;

  GoogleAppsScriptTypeWebAppConfig();

  GoogleAppsScriptTypeWebAppConfig.fromJson(core.Map _json) {
    if (_json.containsKey('access')) {
      access = _json['access'] as core.String;
    }
    if (_json.containsKey('executeAs')) {
      executeAs = _json['executeAs'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (access != null) {
      _json['access'] = access;
    }
    if (executeAs != null) {
      _json['executeAs'] = executeAs;
    }
    return _json;
  }
}

/// A web application entry point.
class GoogleAppsScriptTypeWebAppEntryPoint {
  /// The entry point's configuration.
  GoogleAppsScriptTypeWebAppConfig entryPointConfig;

  /// The URL for the web application.
  core.String url;

  GoogleAppsScriptTypeWebAppEntryPoint();

  GoogleAppsScriptTypeWebAppEntryPoint.fromJson(core.Map _json) {
    if (_json.containsKey('entryPointConfig')) {
      entryPointConfig = GoogleAppsScriptTypeWebAppConfig.fromJson(
          _json['entryPointConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('url')) {
      url = _json['url'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (entryPointConfig != null) {
      _json['entryPointConfig'] = entryPointConfig.toJson();
    }
    if (url != null) {
      _json['url'] = url;
    }
    return _json;
  }
}

/// Response with the list of deployments for the specified Apps Script project.
class ListDeploymentsResponse {
  /// The list of deployments.
  core.List<Deployment> deployments;

  /// The token that can be used in the next call to get the next page of
  /// results.
  core.String nextPageToken;

  ListDeploymentsResponse();

  ListDeploymentsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('deployments')) {
      deployments = (_json['deployments'] as core.List)
          .map<Deployment>((value) =>
              Deployment.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deployments != null) {
      _json['deployments'] =
          deployments.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// Response with the list of Process resources.
class ListScriptProcessesResponse {
  /// Token for the next page of results. If empty, there are no more pages
  /// remaining.
  core.String nextPageToken;

  /// List of processes matching request parameters.
  core.List<GoogleAppsScriptTypeProcess> processes;

  ListScriptProcessesResponse();

  ListScriptProcessesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('processes')) {
      processes = (_json['processes'] as core.List)
          .map<GoogleAppsScriptTypeProcess>((value) =>
              GoogleAppsScriptTypeProcess.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (processes != null) {
      _json['processes'] = processes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response with the list of Process resources.
class ListUserProcessesResponse {
  /// Token for the next page of results. If empty, there are no more pages
  /// remaining.
  core.String nextPageToken;

  /// List of processes matching request parameters.
  core.List<GoogleAppsScriptTypeProcess> processes;

  ListUserProcessesResponse();

  ListUserProcessesResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('processes')) {
      processes = (_json['processes'] as core.List)
          .map<GoogleAppsScriptTypeProcess>((value) =>
              GoogleAppsScriptTypeProcess.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (processes != null) {
      _json['processes'] = processes.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// `ListValue` is a wrapper around a repeated field of values.
class ListValue {
  /// Repeated field of dynamically typed values.
  core.List<Value> values;

  ListValue();

  ListValue.fromJson(core.Map _json) {
    if (_json.containsKey('values')) {
      values = (_json['values'] as core.List)
          .map<Value>((value) =>
              Value.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (values != null) {
      _json['values'] = values.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response with the list of the versions for the specified script project.
class ListVersionsResponse {
  /// The token use to fetch the next page of records. if not exist in the
  /// response, that means no more versions to list.
  core.String nextPageToken;

  /// The list of versions.
  core.List<Version> versions;

  ListVersionsResponse();

  ListVersionsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('versions')) {
      versions = (_json['versions'] as core.List)
          .map<Version>((value) =>
              Version.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (versions != null) {
      _json['versions'] = versions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Resource containing usage stats for a given script, based on the supplied
/// filter and mask present in the request.
class Metrics {
  /// Number of active users.
  core.List<MetricsValue> activeUsers;

  /// Number of failed executions.
  core.List<MetricsValue> failedExecutions;

  /// Number of total executions.
  core.List<MetricsValue> totalExecutions;

  Metrics();

  Metrics.fromJson(core.Map _json) {
    if (_json.containsKey('activeUsers')) {
      activeUsers = (_json['activeUsers'] as core.List)
          .map<MetricsValue>((value) => MetricsValue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('failedExecutions')) {
      failedExecutions = (_json['failedExecutions'] as core.List)
          .map<MetricsValue>((value) => MetricsValue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('totalExecutions')) {
      totalExecutions = (_json['totalExecutions'] as core.List)
          .map<MetricsValue>((value) => MetricsValue.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (activeUsers != null) {
      _json['activeUsers'] =
          activeUsers.map((value) => value.toJson()).toList();
    }
    if (failedExecutions != null) {
      _json['failedExecutions'] =
          failedExecutions.map((value) => value.toJson()).toList();
    }
    if (totalExecutions != null) {
      _json['totalExecutions'] =
          totalExecutions.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Metrics value that holds number of executions counted.
class MetricsValue {
  /// Required field indicating the end time of the interval.
  core.String endTime;

  /// Required field indicating the start time of the interval.
  core.String startTime;

  /// Indicates the number of executions counted.
  core.String value;

  MetricsValue();

  MetricsValue.fromJson(core.Map _json) {
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
    if (_json.containsKey('value')) {
      value = _json['value'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    if (value != null) {
      _json['value'] = value;
    }
    return _json;
  }
}

/// A representation of an execution of an Apps Script function started with
/// run. The execution response does not arrive until the function finishes
/// executing. The maximum execution runtime is listed in the [Apps Script
/// quotas guide](/apps-script/guides/services/quotas#current_limitations).
/// After execution has started, it can have one of four outcomes: - If the
/// script function returns successfully, the response field contains an
/// ExecutionResponse object with the function's return value in the object's
/// `result` field. - If the script function (or Apps Script itself) throws an
/// exception, the error field contains a Status object. The `Status` object's
/// `details` field contains an array with a single ExecutionError object that
/// provides information about the nature of the error. - If the execution has
/// not yet completed, the done field is `false` and the neither the `response`
/// nor `error` fields are present. - If the `run` call itself fails (for
/// example, because of a malformed request or an authorization error), the
/// method returns an HTTP response code in the 4XX range with a different
/// format for the response body. Client libraries automatically convert a 4XX
/// response into an exception class.
class Operation {
  /// This field indicates whether the script execution has completed. A
  /// completed execution has a populated `response` field containing the
  /// ExecutionResponse from function that was executed.
  core.bool done;

  /// If a `run` call succeeds but the script function (or Apps Script itself)
  /// throws an exception, this field contains a Status object. The `Status`
  /// object's `details` field contains an array with a single ExecutionError
  /// object that provides information about the nature of the error.
  Status error;

  /// If the script function returns successfully, this field contains an
  /// ExecutionResponse object with the function's return value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// The script project resource.
class Project {
  /// When the script was created.
  core.String createTime;

  /// User who originally created the script.
  GoogleAppsScriptTypeUser creator;

  /// User who last modified the script.
  GoogleAppsScriptTypeUser lastModifyUser;

  /// The parent's Drive ID that the script will be attached to. This is usually
  /// the ID of a Google Document or Google Sheet. This filed is optional, and
  /// if not set, a stand-alone script will be created.
  core.String parentId;

  /// The script project's Drive ID.
  core.String scriptId;

  /// The title for the project.
  core.String title;

  /// When the script was last updated.
  core.String updateTime;

  Project();

  Project.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('creator')) {
      creator = GoogleAppsScriptTypeUser.fromJson(
          _json['creator'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('lastModifyUser')) {
      lastModifyUser = GoogleAppsScriptTypeUser.fromJson(
          _json['lastModifyUser'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('parentId')) {
      parentId = _json['parentId'] as core.String;
    }
    if (_json.containsKey('scriptId')) {
      scriptId = _json['scriptId'] as core.String;
    }
    if (_json.containsKey('title')) {
      title = _json['title'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (creator != null) {
      _json['creator'] = creator.toJson();
    }
    if (lastModifyUser != null) {
      _json['lastModifyUser'] = lastModifyUser.toJson();
    }
    if (parentId != null) {
      _json['parentId'] = parentId;
    }
    if (scriptId != null) {
      _json['scriptId'] = scriptId;
    }
    if (title != null) {
      _json['title'] = title;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The result of an execution.
class ScriptExecutionResult {
  /// The returned value of the execution.
  Value returnValue;

  ScriptExecutionResult();

  ScriptExecutionResult.fromJson(core.Map _json) {
    if (_json.containsKey('returnValue')) {
      returnValue = Value.fromJson(
          _json['returnValue'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (returnValue != null) {
      _json['returnValue'] = returnValue.toJson();
    }
    return _json;
  }
}

/// A stack trace through the script that shows where the execution failed.
class ScriptStackTraceElement {
  /// The name of the function that failed.
  core.String function;

  /// The line number where the script failed.
  core.int lineNumber;

  ScriptStackTraceElement();

  ScriptStackTraceElement.fromJson(core.Map _json) {
    if (_json.containsKey('function')) {
      function = _json['function'] as core.String;
    }
    if (_json.containsKey('lineNumber')) {
      lineNumber = _json['lineNumber'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (function != null) {
      _json['function'] = function;
    }
    if (lineNumber != null) {
      _json['lineNumber'] = lineNumber;
    }
    return _json;
  }
}

/// If a `run` call succeeds but the script function (or Apps Script itself)
/// throws an exception, the response body's error field contains this `Status`
/// object.
class Status {
  /// The status code. For this API, this value either: - 10, indicating a
  /// `SCRIPT_TIMEOUT` error, - 3, indicating an `INVALID_ARGUMENT` error, or -
  /// 1, indicating a `CANCELLED` execution.
  core.int code;

  /// An array that contains a single ExecutionError object that provides
  /// information about the nature of the error.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which is in English. Any user-facing
  /// error message is localized and sent in the details field, or localized by
  /// the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// `Struct` represents a structured data value, consisting of fields which map
/// to dynamically typed values.
class Struct {
  /// Unordered map of dynamically typed values.
  core.Map<core.String, Value> fields;

  Struct();

  Struct.fromJson(core.Map _json) {
    if (_json.containsKey('fields')) {
      fields = (_json['fields'] as core.Map).cast<core.String, core.Map>().map(
            (key, item) => core.MapEntry(
              key,
              Value.fromJson(item as core.Map<core.String, core.dynamic>),
            ),
          );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fields != null) {
      _json['fields'] =
          fields.map((key, item) => core.MapEntry(key, item.toJson()));
    }
    return _json;
  }
}

/// Request with deployment information to update an existing deployment.
class UpdateDeploymentRequest {
  /// The deployment configuration.
  DeploymentConfig deploymentConfig;

  UpdateDeploymentRequest();

  UpdateDeploymentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('deploymentConfig')) {
      deploymentConfig = DeploymentConfig.fromJson(
          _json['deploymentConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (deploymentConfig != null) {
      _json['deploymentConfig'] = deploymentConfig.toJson();
    }
    return _json;
  }
}

/// `Value` represents a dynamically typed value which is the outcome of an
/// executed script.
class Value {
  /// Represents a boolean value.
  core.bool boolValue;

  /// Represents raw byte values.
  core.String bytesValue;
  core.List<core.int> get bytesValueAsBytes =>
      convert.base64.decode(bytesValue);

  set bytesValueAsBytes(core.List<core.int> _bytes) {
    bytesValue =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Represents a date in ms since the epoch.
  core.String dateValue;

  /// Represents a repeated `Value`.
  ListValue listValue;

  /// Represents a null value.
  /// Possible string values are:
  /// - "NULL_VALUE" : Null value.
  core.String nullValue;

  /// Represents a double value.
  core.double numberValue;

  /// Represents a structured proto value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> protoValue;

  /// Represents a string value.
  core.String stringValue;

  /// Represents a structured value.
  Struct structValue;

  Value();

  Value.fromJson(core.Map _json) {
    if (_json.containsKey('boolValue')) {
      boolValue = _json['boolValue'] as core.bool;
    }
    if (_json.containsKey('bytesValue')) {
      bytesValue = _json['bytesValue'] as core.String;
    }
    if (_json.containsKey('dateValue')) {
      dateValue = _json['dateValue'] as core.String;
    }
    if (_json.containsKey('listValue')) {
      listValue = ListValue.fromJson(
          _json['listValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('nullValue')) {
      nullValue = _json['nullValue'] as core.String;
    }
    if (_json.containsKey('numberValue')) {
      numberValue = (_json['numberValue'] as core.num).toDouble();
    }
    if (_json.containsKey('protoValue')) {
      protoValue = (_json['protoValue'] as core.Map)
          .cast<core.String, core.Object>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.Object,
            ),
          );
    }
    if (_json.containsKey('stringValue')) {
      stringValue = _json['stringValue'] as core.String;
    }
    if (_json.containsKey('structValue')) {
      structValue = Struct.fromJson(
          _json['structValue'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (boolValue != null) {
      _json['boolValue'] = boolValue;
    }
    if (bytesValue != null) {
      _json['bytesValue'] = bytesValue;
    }
    if (dateValue != null) {
      _json['dateValue'] = dateValue;
    }
    if (listValue != null) {
      _json['listValue'] = listValue.toJson();
    }
    if (nullValue != null) {
      _json['nullValue'] = nullValue;
    }
    if (numberValue != null) {
      _json['numberValue'] = numberValue;
    }
    if (protoValue != null) {
      _json['protoValue'] = protoValue;
    }
    if (stringValue != null) {
      _json['stringValue'] = stringValue;
    }
    if (structValue != null) {
      _json['structValue'] = structValue.toJson();
    }
    return _json;
  }
}

/// A resource representing a script project version. A version is a "snapshot"
/// of a script project and is similar to a read-only branched release. When
/// creating deployments, the version to use must be specified.
class Version {
  /// When the version was created.
  core.String createTime;

  /// The description for this version.
  core.String description;

  /// The script project's Drive ID.
  core.String scriptId;

  /// The incremental ID that is created by Apps Script when a version is
  /// created. This is system assigned number and is immutable once created.
  core.int versionNumber;

  Version();

  Version.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('scriptId')) {
      scriptId = _json['scriptId'] as core.String;
    }
    if (_json.containsKey('versionNumber')) {
      versionNumber = _json['versionNumber'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (scriptId != null) {
      _json['scriptId'] = scriptId;
    }
    if (versionNumber != null) {
      _json['versionNumber'] = versionNumber;
    }
    return _json;
  }
}
