// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.script.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client script/v1';

/// Manages and executes Google Apps Script projects.
class ScriptApi {
  /// Read, compose, send, and permanently delete all your email from Gmail
  static const MailGoogleComScope = "https://mail.google.com/";

  /// See, edit, share, and permanently delete all the calendars you can access
  /// using Google Calendar
  static const WwwGoogleComCalendarFeedsScope =
      "https://www.google.com/calendar/feeds";

  /// See, edit, download, and permanently delete your contacts
  static const WwwGoogleComM8FeedsScope = "https://www.google.com/m8/feeds";

  /// View and manage the provisioning of groups on your domain
  static const AdminDirectoryGroupScope =
      "https://www.googleapis.com/auth/admin.directory.group";

  /// View and manage the provisioning of users on your domain
  static const AdminDirectoryUserScope =
      "https://www.googleapis.com/auth/admin.directory.user";

  /// View and manage your Google Docs documents
  static const DocumentsScope = "https://www.googleapis.com/auth/documents";

  /// See, edit, create, and delete all of your Google Drive files
  static const DriveScope = "https://www.googleapis.com/auth/drive";

  /// View and manage your forms in Google Drive
  static const FormsScope = "https://www.googleapis.com/auth/forms";

  /// View and manage forms that this application has been installed in
  static const FormsCurrentonlyScope =
      "https://www.googleapis.com/auth/forms.currentonly";

  /// View and manage your Google Groups
  static const GroupsScope = "https://www.googleapis.com/auth/groups";

  /// Create and update Google Apps Script deployments
  static const ScriptDeploymentsScope =
      "https://www.googleapis.com/auth/script.deployments";

  /// View Google Apps Script deployments
  static const ScriptDeploymentsReadonlyScope =
      "https://www.googleapis.com/auth/script.deployments.readonly";

  /// View Google Apps Script project's metrics
  static const ScriptMetricsScope =
      "https://www.googleapis.com/auth/script.metrics";

  /// View Google Apps Script processes
  static const ScriptProcessesScope =
      "https://www.googleapis.com/auth/script.processes";

  /// Create and update Google Apps Script projects
  static const ScriptProjectsScope =
      "https://www.googleapis.com/auth/script.projects";

  /// View Google Apps Script projects
  static const ScriptProjectsReadonlyScope =
      "https://www.googleapis.com/auth/script.projects.readonly";

  /// See, edit, create, and delete your spreadsheets in Google Drive
  static const SpreadsheetsScope =
      "https://www.googleapis.com/auth/spreadsheets";

  /// View your email address
  static const UserinfoEmailScope =
      "https://www.googleapis.com/auth/userinfo.email";

  final commons.ApiRequester _requester;

  ProcessesResourceApi get processes => new ProcessesResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  ScriptsResourceApi get scripts => new ScriptsResourceApi(_requester);

  ScriptApi(http.Client client,
      {core.String rootUrl = "https://script.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProcessesResourceApi {
  final commons.ApiRequester _requester;

  ProcessesResourceApi(commons.ApiRequester client) : _requester = client;

  /// List information about processes made by or on behalf of a user,
  /// such as process type and current status.
  ///
  /// Request parameters:
  ///
  /// [userProcessFilter_scriptId] - Optional field used to limit returned
  /// processes to those originating from
  /// projects with a specific script ID.
  ///
  /// [userProcessFilter_types] - Optional field used to limit returned
  /// processes to those having one of
  /// the specified process types.
  ///
  /// [userProcessFilter_statuses] - Optional field used to limit returned
  /// processes to those having one of
  /// the specified process statuses.
  ///
  /// [userProcessFilter_deploymentId] - Optional field used to limit returned
  /// processes to those originating from
  /// projects with a specific deployment ID.
  ///
  /// [userProcessFilter_endTime] - Optional field used to limit returned
  /// processes to those that completed
  /// on or before the given timestamp.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This
  /// should be set to the value of `nextPageToken` from a previous response.
  ///
  /// [pageSize] - The maximum number of returned processes per page of results.
  /// Defaults to
  /// 50.
  ///
  /// [userProcessFilter_startTime] - Optional field used to limit returned
  /// processes to those that were
  /// started on or after the given timestamp.
  ///
  /// [userProcessFilter_userAccessLevels] - Optional field used to limit
  /// returned processes to those having one of
  /// the specified user access levels.
  ///
  /// [userProcessFilter_projectName] - Optional field used to limit returned
  /// processes to those originating from
  /// projects with project names containing a specific string.
  ///
  /// [userProcessFilter_functionName] - Optional field used to limit returned
  /// processes to those originating from
  /// a script function with the given function name.
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
  async.Future<ListUserProcessesResponse> list(
      {core.String userProcessFilter_scriptId,
      core.List<core.String> userProcessFilter_types,
      core.List<core.String> userProcessFilter_statuses,
      core.String userProcessFilter_deploymentId,
      core.String userProcessFilter_endTime,
      core.String pageToken,
      core.int pageSize,
      core.String userProcessFilter_startTime,
      core.List<core.String> userProcessFilter_userAccessLevels,
      core.String userProcessFilter_projectName,
      core.String userProcessFilter_functionName,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (userProcessFilter_scriptId != null) {
      _queryParams["userProcessFilter.scriptId"] = [userProcessFilter_scriptId];
    }
    if (userProcessFilter_types != null) {
      _queryParams["userProcessFilter.types"] = userProcessFilter_types;
    }
    if (userProcessFilter_statuses != null) {
      _queryParams["userProcessFilter.statuses"] = userProcessFilter_statuses;
    }
    if (userProcessFilter_deploymentId != null) {
      _queryParams["userProcessFilter.deploymentId"] = [
        userProcessFilter_deploymentId
      ];
    }
    if (userProcessFilter_endTime != null) {
      _queryParams["userProcessFilter.endTime"] = [userProcessFilter_endTime];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (userProcessFilter_startTime != null) {
      _queryParams["userProcessFilter.startTime"] = [
        userProcessFilter_startTime
      ];
    }
    if (userProcessFilter_userAccessLevels != null) {
      _queryParams["userProcessFilter.userAccessLevels"] =
          userProcessFilter_userAccessLevels;
    }
    if (userProcessFilter_projectName != null) {
      _queryParams["userProcessFilter.projectName"] = [
        userProcessFilter_projectName
      ];
    }
    if (userProcessFilter_functionName != null) {
      _queryParams["userProcessFilter.functionName"] = [
        userProcessFilter_functionName
      ];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/processes';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListUserProcessesResponse.fromJson(data));
  }

  /// List information about a script's executed processes, such as process type
  /// and current status.
  ///
  /// Request parameters:
  ///
  /// [scriptProcessFilter_endTime] - Optional field used to limit returned
  /// processes to those that completed
  /// on or before the given timestamp.
  ///
  /// [scriptProcessFilter_userAccessLevels] - Optional field used to limit
  /// returned processes to those having one of
  /// the specified user access levels.
  ///
  /// [scriptProcessFilter_statuses] - Optional field used to limit returned
  /// processes to those having one of
  /// the specified process statuses.
  ///
  /// [scriptProcessFilter_functionName] - Optional field used to limit returned
  /// processes to those originating from
  /// a script function with the given function name.
  ///
  /// [scriptProcessFilter_startTime] - Optional field used to limit returned
  /// processes to those that were
  /// started on or after the given timestamp.
  ///
  /// [scriptProcessFilter_deploymentId] - Optional field used to limit returned
  /// processes to those originating from
  /// projects with a specific deployment ID.
  ///
  /// [scriptId] - The script ID of the project whose processes are listed.
  ///
  /// [scriptProcessFilter_types] - Optional field used to limit returned
  /// processes to those having one of
  /// the specified process types.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This
  /// should be set to the value of `nextPageToken` from a previous response.
  ///
  /// [pageSize] - The maximum number of returned processes per page of results.
  /// Defaults to
  /// 50.
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
  async.Future<ListScriptProcessesResponse> listScriptProcesses(
      {core.String scriptProcessFilter_endTime,
      core.List<core.String> scriptProcessFilter_userAccessLevels,
      core.List<core.String> scriptProcessFilter_statuses,
      core.String scriptProcessFilter_functionName,
      core.String scriptProcessFilter_startTime,
      core.String scriptProcessFilter_deploymentId,
      core.String scriptId,
      core.List<core.String> scriptProcessFilter_types,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptProcessFilter_endTime != null) {
      _queryParams["scriptProcessFilter.endTime"] = [
        scriptProcessFilter_endTime
      ];
    }
    if (scriptProcessFilter_userAccessLevels != null) {
      _queryParams["scriptProcessFilter.userAccessLevels"] =
          scriptProcessFilter_userAccessLevels;
    }
    if (scriptProcessFilter_statuses != null) {
      _queryParams["scriptProcessFilter.statuses"] =
          scriptProcessFilter_statuses;
    }
    if (scriptProcessFilter_functionName != null) {
      _queryParams["scriptProcessFilter.functionName"] = [
        scriptProcessFilter_functionName
      ];
    }
    if (scriptProcessFilter_startTime != null) {
      _queryParams["scriptProcessFilter.startTime"] = [
        scriptProcessFilter_startTime
      ];
    }
    if (scriptProcessFilter_deploymentId != null) {
      _queryParams["scriptProcessFilter.deploymentId"] = [
        scriptProcessFilter_deploymentId
      ];
    }
    if (scriptId != null) {
      _queryParams["scriptId"] = [scriptId];
    }
    if (scriptProcessFilter_types != null) {
      _queryParams["scriptProcessFilter.types"] = scriptProcessFilter_types;
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/processes:listScriptProcesses';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new ListScriptProcessesResponse.fromJson(data));
  }
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDeploymentsResourceApi get deployments =>
      new ProjectsDeploymentsResourceApi(_requester);
  ProjectsVersionsResourceApi get versions =>
      new ProjectsVersionsResourceApi(_requester);

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
  async.Future<Project> create(CreateProjectRequest request,
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
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Project.fromJson(data));
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
  async.Future<Project> get(core.String scriptId, {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$scriptId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Project.fromJson(data));
  }

  /// Gets the content of the script project, including the code source and
  /// metadata for each script file.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [versionNumber] - The version number of the project to retrieve. If not
  /// provided, the
  /// project's HEAD version is returned.
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
  async.Future<Content> getContent(core.String scriptId,
      {core.int versionNumber, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if (versionNumber != null) {
      _queryParams["versionNumber"] = ["${versionNumber}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/content';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Content.fromJson(data));
  }

  /// Get metrics data for scripts, such as number of executions and
  /// active users.
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
  /// - "UNSPECIFIED_GRANULARITY" : A UNSPECIFIED_GRANULARITY.
  /// - "WEEKLY" : A WEEKLY.
  /// - "DAILY" : A DAILY.
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
  async.Future<Metrics> getMetrics(core.String scriptId,
      {core.String metricsFilter_deploymentId,
      core.String metricsGranularity,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if (metricsFilter_deploymentId != null) {
      _queryParams["metricsFilter.deploymentId"] = [metricsFilter_deploymentId];
    }
    if (metricsGranularity != null) {
      _queryParams["metricsGranularity"] = [metricsGranularity];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/metrics';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Metrics.fromJson(data));
  }

  /// Updates the content of the specified script project.
  /// This content is stored as the HEAD version, and is used when the script is
  /// executed as a trigger, in the script editor, in add-on preview mode, or as
  /// a web app or Apps Script API in development mode. This clears all the
  /// existing files in the project.
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
  async.Future<Content> updateContent(Content request, core.String scriptId,
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
    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/content';

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Content.fromJson(data));
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
      DeploymentConfig request, core.String scriptId,
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
    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Deployment.fromJson(data));
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
  async.Future<Empty> delete(core.String scriptId, core.String deploymentId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if (deploymentId == null) {
      throw new core.ArgumentError("Parameter deploymentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments/' +
        commons.Escaper.ecapeVariable('$deploymentId');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
  async.Future<Deployment> get(core.String scriptId, core.String deploymentId,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if (deploymentId == null) {
      throw new core.ArgumentError("Parameter deploymentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments/' +
        commons.Escaper.ecapeVariable('$deploymentId');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Deployment.fromJson(data));
  }

  /// Lists the deployments of an Apps Script project.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This
  /// should be set to the value of `nextPageToken` from a previous response.
  ///
  /// [pageSize] - The maximum number of deployments on each returned page.
  /// Defaults to 50.
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
  async.Future<ListDeploymentsResponse> list(core.String scriptId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListDeploymentsResponse.fromJson(data));
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
  async.Future<Deployment> update(UpdateDeploymentRequest request,
      core.String scriptId, core.String deploymentId,
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
    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if (deploymentId == null) {
      throw new core.ArgumentError("Parameter deploymentId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/deployments/' +
        commons.Escaper.ecapeVariable('$deploymentId');

    var _response = _requester.request(_url, "PUT",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Deployment.fromJson(data));
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
  async.Future<Version> create(Version request, core.String scriptId,
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
    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/versions';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Version.fromJson(data));
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
  async.Future<Version> get(core.String scriptId, core.int versionNumber,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if (versionNumber == null) {
      throw new core.ArgumentError("Parameter versionNumber is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/versions/' +
        commons.Escaper.ecapeVariable('$versionNumber');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Version.fromJson(data));
  }

  /// List the versions of a script project.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script project's Drive ID.
  ///
  /// [pageToken] - The token for continuing a previous list request on the next
  /// page. This
  /// should be set to the value of `nextPageToken` from a previous response.
  ///
  /// [pageSize] - The maximum number of versions on each returned page.
  /// Defaults to 50.
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
  async.Future<ListVersionsResponse> list(core.String scriptId,
      {core.String pageToken, core.int pageSize, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/projects/' +
        commons.Escaper.ecapeVariable('$scriptId') +
        '/versions';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListVersionsResponse.fromJson(data));
  }
}

class ScriptsResourceApi {
  final commons.ApiRequester _requester;

  ScriptsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Runs a function in an Apps Script project. The script project must be
  /// deployed for use with the Apps Script API and the calling application must
  /// share the same Cloud Platform project.
  ///
  /// This method requires authorization with an OAuth 2.0 token that includes
  /// at
  /// least one of the scopes listed in the [Authorization](#authorization)
  /// section; script projects that do not require authorization cannot be
  /// executed through this API. To find the correct scopes to include in the
  /// authentication token, open the project in the script editor, then select
  /// **File > Project properties** and click the **Scopes** tab.
  ///
  /// The error `403, PERMISSION_DENIED: The caller does not have permission`
  /// indicates that the Cloud Platform project used to authorize the request is
  /// not the same as the one used by the script.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [scriptId] - The script ID of the script to be executed. To find the
  /// script ID, open
  /// the project in the script editor and select **File > Project properties**.
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
  async.Future<Operation> run(ExecutionRequest request, core.String scriptId,
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
    if (scriptId == null) {
      throw new core.ArgumentError("Parameter scriptId is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/scripts/' + commons.Escaper.ecapeVariable('$scriptId') + ':run';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Operation.fromJson(data));
  }
}

/// The Content resource.
class Content {
  /// The list of script project files.
  /// One of the files is a script manifest; it must be named "appsscript",
  /// must have type of JSON, and include the manifest configurations for the
  /// project.
  core.List<File> files;

  /// The script project's Drive ID.
  core.String scriptId;

  Content();

  Content.fromJson(core.Map _json) {
    if (_json.containsKey("files")) {
      files = (_json["files"] as core.List)
          .map<File>((value) => new File.fromJson(value))
          .toList();
    }
    if (_json.containsKey("scriptId")) {
      scriptId = _json["scriptId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (files != null) {
      _json["files"] = files.map((value) => (value).toJson()).toList();
    }
    if (scriptId != null) {
      _json["scriptId"] = scriptId;
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
    if (_json.containsKey("parentId")) {
      parentId = _json["parentId"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (parentId != null) {
      _json["parentId"] = parentId;
    }
    if (title != null) {
      _json["title"] = title;
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
    if (_json.containsKey("deploymentConfig")) {
      deploymentConfig =
          new DeploymentConfig.fromJson(_json["deploymentConfig"]);
    }
    if (_json.containsKey("deploymentId")) {
      deploymentId = _json["deploymentId"];
    }
    if (_json.containsKey("entryPoints")) {
      entryPoints = (_json["entryPoints"] as core.List)
          .map<EntryPoint>((value) => new EntryPoint.fromJson(value))
          .toList();
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deploymentConfig != null) {
      _json["deploymentConfig"] = (deploymentConfig).toJson();
    }
    if (deploymentId != null) {
      _json["deploymentId"] = deploymentId;
    }
    if (entryPoints != null) {
      _json["entryPoints"] =
          entryPoints.map((value) => (value).toJson()).toList();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
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
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("manifestFileName")) {
      manifestFileName = _json["manifestFileName"];
    }
    if (_json.containsKey("scriptId")) {
      scriptId = _json["scriptId"];
    }
    if (_json.containsKey("versionNumber")) {
      versionNumber = _json["versionNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (manifestFileName != null) {
      _json["manifestFileName"] = manifestFileName;
    }
    if (scriptId != null) {
      _json["scriptId"] = scriptId;
    }
    if (versionNumber != null) {
      _json["versionNumber"] = versionNumber;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
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
    if (_json.containsKey("addOn")) {
      addOn = new GoogleAppsScriptTypeAddOnEntryPoint.fromJson(_json["addOn"]);
    }
    if (_json.containsKey("entryPointType")) {
      entryPointType = _json["entryPointType"];
    }
    if (_json.containsKey("executionApi")) {
      executionApi = new GoogleAppsScriptTypeExecutionApiEntryPoint.fromJson(
          _json["executionApi"]);
    }
    if (_json.containsKey("webApp")) {
      webApp =
          new GoogleAppsScriptTypeWebAppEntryPoint.fromJson(_json["webApp"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addOn != null) {
      _json["addOn"] = (addOn).toJson();
    }
    if (entryPointType != null) {
      _json["entryPointType"] = entryPointType;
    }
    if (executionApi != null) {
      _json["executionApi"] = (executionApi).toJson();
    }
    if (webApp != null) {
      _json["webApp"] = (webApp).toJson();
    }
    return _json;
  }
}

/// The response for executing or debugging a function in an Apps Script
/// project.
class ExecuteStreamResponse {
  /// The result of the execution.
  /// TODO (johnlattin): Add debugging and logging.
  ScriptExecutionResult result;

  ExecuteStreamResponse();

  ExecuteStreamResponse.fromJson(core.Map _json) {
    if (_json.containsKey("result")) {
      result = new ScriptExecutionResult.fromJson(_json["result"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (result != null) {
      _json["result"] = (result).toJson();
    }
    return _json;
  }
}

/// An object that provides information about the nature of an error resulting
/// from an attempted execution of a script function using the Apps Script API.
/// If a run call
/// succeeds but the script function (or Apps Script itself) throws an
/// exception,
/// the response body's error field
/// contains a
/// Status object. The `Status` object's `details` field
/// contains an array with a single one of these `ExecutionError` objects.
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
    if (_json.containsKey("errorMessage")) {
      errorMessage = _json["errorMessage"];
    }
    if (_json.containsKey("errorType")) {
      errorType = _json["errorType"];
    }
    if (_json.containsKey("scriptStackTraceElements")) {
      scriptStackTraceElements =
          (_json["scriptStackTraceElements"] as core.List)
              .map<ScriptStackTraceElement>(
                  (value) => new ScriptStackTraceElement.fromJson(value))
              .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (errorMessage != null) {
      _json["errorMessage"] = errorMessage;
    }
    if (errorType != null) {
      _json["errorType"] = errorType;
    }
    if (scriptStackTraceElements != null) {
      _json["scriptStackTraceElements"] =
          scriptStackTraceElements.map((value) => (value).toJson()).toList();
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
  /// type
  /// for each parameter should match the expected type in Apps Script.
  /// Parameters cannot be Apps Script-specific object types (such as a
  /// `Document` or a `Calendar`); they can only be primitive types such as
  /// `string`, `number`, `array`, `object`, or `boolean`. Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object> parameters;

  /// <b>Deprecated</b>. For use with Android add-ons only. An ID that
  /// represents
  /// the user's current session in the Android app for Google Docs or Sheets,
  /// included as extra data in the
  /// [Intent](https://developer.android.com/guide/components/intents-filters.html)
  /// that launches the add-on. When an Android add-on is run with a session
  /// state, it gains the privileges of a
  /// [bound](https://developers.google.com/apps-script/guides/bound)
  /// script&mdash;that is, it can access information like the user's current
  /// cursor position (in Docs) or selected cell (in Sheets). To retrieve the
  /// state, call
  /// `Intent.getStringExtra("com.google.android.apps.docs.addons.SessionState")`.
  /// Optional.
  core.String sessionState;

  ExecutionRequest();

  ExecutionRequest.fromJson(core.Map _json) {
    if (_json.containsKey("devMode")) {
      devMode = _json["devMode"];
    }
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
    if (_json.containsKey("parameters")) {
      parameters = (_json["parameters"] as core.List).cast<core.Object>();
    }
    if (_json.containsKey("sessionState")) {
      sessionState = _json["sessionState"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (devMode != null) {
      _json["devMode"] = devMode;
    }
    if (function != null) {
      _json["function"] = function;
    }
    if (parameters != null) {
      _json["parameters"] = parameters;
    }
    if (sessionState != null) {
      _json["sessionState"] = sessionState;
    }
    return _json;
  }
}

/// An object that provides the return value of a function executed using the
/// Apps Script API. If the script function returns successfully, the response
/// body's response field contains this
/// `ExecutionResponse` object.
class ExecutionResponse {
  /// The return value of the script function. The type matches the object type
  /// returned in Apps Script. Functions called using the Apps Script API cannot
  /// return Apps Script-specific objects (such as a `Document` or a
  /// `Calendar`);
  /// they can only return primitive types such as a `string`, `number`,
  /// `array`,
  /// `object`, or `boolean`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object result;

  ExecutionResponse();

  ExecutionResponse.fromJson(core.Map _json) {
    if (_json.containsKey("result")) {
      result = _json["result"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (result != null) {
      _json["result"] = result;
    }
    return _json;
  }
}

/// An individual file within a script project.
/// A file is a third-party source code created by one or more
/// developers. It can be a server-side JS code, HTML, or a
/// configuration file. Each script project can contain multiple files.
class File {
  /// Creation date timestamp.
  /// This read-only field is only visible to users who have WRITER
  /// permission for the script project.
  core.String createTime;

  /// The defined set of functions in the script file, if any.
  GoogleAppsScriptTypeFunctionSet functionSet;

  /// The user who modified the file most recently.
  /// This read-only field is only visible to users who have WRITER
  /// permission for the script project.
  GoogleAppsScriptTypeUser lastModifyUser;

  /// The name of the file. The file extension is not part of the file
  /// name, which can be identified from the type field.
  core.String name;

  /// The file content.
  core.String source;

  /// The type of the file.
  /// Possible string values are:
  /// - "ENUM_TYPE_UNSPECIFIED" : Undetermined file type; never actually used.
  /// - "SERVER_JS" : An Apps Script server-side code file.
  /// - "HTML" : A file containing client-side HTML.
  /// - "JSON" : A file in JSON format. This type is only used for the script
  /// project's manifest. The manifest file content must match the
  /// structure of a valid
  /// [ScriptManifest](/apps-script/concepts/manifests)
  core.String type;

  /// Last modified date timestamp.
  /// This read-only field is only visible to users who have WRITER
  /// permission for the script project.
  core.String updateTime;

  File();

  File.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("functionSet")) {
      functionSet =
          new GoogleAppsScriptTypeFunctionSet.fromJson(_json["functionSet"]);
    }
    if (_json.containsKey("lastModifyUser")) {
      lastModifyUser =
          new GoogleAppsScriptTypeUser.fromJson(_json["lastModifyUser"]);
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("source")) {
      source = _json["source"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (functionSet != null) {
      _json["functionSet"] = (functionSet).toJson();
    }
    if (lastModifyUser != null) {
      _json["lastModifyUser"] = (lastModifyUser).toJson();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (source != null) {
      _json["source"] = source;
    }
    if (type != null) {
      _json["type"] = type;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
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
    if (_json.containsKey("addOnType")) {
      addOnType = _json["addOnType"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("helpUrl")) {
      helpUrl = _json["helpUrl"];
    }
    if (_json.containsKey("postInstallTipUrl")) {
      postInstallTipUrl = _json["postInstallTipUrl"];
    }
    if (_json.containsKey("reportIssueUrl")) {
      reportIssueUrl = _json["reportIssueUrl"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (addOnType != null) {
      _json["addOnType"] = addOnType;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (helpUrl != null) {
      _json["helpUrl"] = helpUrl;
    }
    if (postInstallTipUrl != null) {
      _json["postInstallTipUrl"] = postInstallTipUrl;
    }
    if (reportIssueUrl != null) {
      _json["reportIssueUrl"] = reportIssueUrl;
    }
    if (title != null) {
      _json["title"] = title;
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
  /// access it.
  /// Note that this is not necessarily the owner of the script project.
  /// - "DOMAIN" : Only users in the same domain as the user who deployed the
  /// web app or
  /// executable can access it.
  /// - "ANYONE" : Any logged in user can access the web app or executable.
  /// - "ANYONE_ANONYMOUS" : Any user, logged in or not, can access the web app
  /// or executable.
  core.String access;

  GoogleAppsScriptTypeExecutionApiConfig();

  GoogleAppsScriptTypeExecutionApiConfig.fromJson(core.Map _json) {
    if (_json.containsKey("access")) {
      access = _json["access"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (access != null) {
      _json["access"] = access;
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
    if (_json.containsKey("entryPointConfig")) {
      entryPointConfig = new GoogleAppsScriptTypeExecutionApiConfig.fromJson(
          _json["entryPointConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entryPointConfig != null) {
      _json["entryPointConfig"] = (entryPointConfig).toJson();
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
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (name != null) {
      _json["name"] = name;
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
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<GoogleAppsScriptTypeFunction>(
              (value) => new GoogleAppsScriptTypeFunction.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Representation of a single script process execution that was started from
/// the script editor, a trigger, an application, or using the Apps Script API.
/// This is distinct from the `Operation`
/// resource, which only represents executions started via the Apps Script API.
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
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("functionName")) {
      functionName = _json["functionName"];
    }
    if (_json.containsKey("processStatus")) {
      processStatus = _json["processStatus"];
    }
    if (_json.containsKey("processType")) {
      processType = _json["processType"];
    }
    if (_json.containsKey("projectName")) {
      projectName = _json["projectName"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("userAccessLevel")) {
      userAccessLevel = _json["userAccessLevel"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (functionName != null) {
      _json["functionName"] = functionName;
    }
    if (processStatus != null) {
      _json["processStatus"] = processStatus;
    }
    if (processType != null) {
      _json["processType"] = processType;
    }
    if (projectName != null) {
      _json["projectName"] = projectName;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (userAccessLevel != null) {
      _json["userAccessLevel"] = userAccessLevel;
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
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("email")) {
      email = _json["email"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("photoUrl")) {
      photoUrl = _json["photoUrl"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (email != null) {
      _json["email"] = email;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (photoUrl != null) {
      _json["photoUrl"] = photoUrl;
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
  /// access it.
  /// Note that this is not necessarily the owner of the script project.
  /// - "DOMAIN" : Only users in the same domain as the user who deployed the
  /// web app or
  /// executable can access it.
  /// - "ANYONE" : Any logged in user can access the web app or executable.
  /// - "ANYONE_ANONYMOUS" : Any user, logged in or not, can access the web app
  /// or executable.
  core.String access;

  /// Who to execute the web app as.
  /// Possible string values are:
  /// - "UNKNOWN_EXECUTE_AS" : Default value, should not be used.
  /// - "USER_ACCESSING" : The script runs as the user accessing the web app.
  /// - "USER_DEPLOYING" : The script runs as the user who deployed the web app.
  /// Note that this is
  /// not necessarily the owner of the script project.
  core.String executeAs;

  GoogleAppsScriptTypeWebAppConfig();

  GoogleAppsScriptTypeWebAppConfig.fromJson(core.Map _json) {
    if (_json.containsKey("access")) {
      access = _json["access"];
    }
    if (_json.containsKey("executeAs")) {
      executeAs = _json["executeAs"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (access != null) {
      _json["access"] = access;
    }
    if (executeAs != null) {
      _json["executeAs"] = executeAs;
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
    if (_json.containsKey("entryPointConfig")) {
      entryPointConfig = new GoogleAppsScriptTypeWebAppConfig.fromJson(
          _json["entryPointConfig"]);
    }
    if (_json.containsKey("url")) {
      url = _json["url"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (entryPointConfig != null) {
      _json["entryPointConfig"] = (entryPointConfig).toJson();
    }
    if (url != null) {
      _json["url"] = url;
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
    if (_json.containsKey("deployments")) {
      deployments = (_json["deployments"] as core.List)
          .map<Deployment>((value) => new Deployment.fromJson(value))
          .toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deployments != null) {
      _json["deployments"] =
          deployments.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/// Response with the list of
/// Process resources.
class ListScriptProcessesResponse {
  /// Token for the next page of results. If empty, there are no more pages
  /// remaining.
  core.String nextPageToken;

  /// List of processes matching request parameters.
  core.List<GoogleAppsScriptTypeProcess> processes;

  ListScriptProcessesResponse();

  ListScriptProcessesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("processes")) {
      processes = (_json["processes"] as core.List)
          .map<GoogleAppsScriptTypeProcess>(
              (value) => new GoogleAppsScriptTypeProcess.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (processes != null) {
      _json["processes"] = processes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Response with the list of
/// Process resources.
class ListUserProcessesResponse {
  /// Token for the next page of results. If empty, there are no more pages
  /// remaining.
  core.String nextPageToken;

  /// List of processes matching request parameters.
  core.List<GoogleAppsScriptTypeProcess> processes;

  ListUserProcessesResponse();

  ListUserProcessesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("processes")) {
      processes = (_json["processes"] as core.List)
          .map<GoogleAppsScriptTypeProcess>(
              (value) => new GoogleAppsScriptTypeProcess.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (processes != null) {
      _json["processes"] = processes.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// `ListValue` is a wrapper around a repeated field of values.
/// Based on LustValue at:
/// google3/apps/maestro/api/struct.proto?q=message%5c%20ListValue
class ListValue {
  /// Repeated field of dynamically typed values.
  core.List<Value> values;

  ListValue();

  ListValue.fromJson(core.Map _json) {
    if (_json.containsKey("values")) {
      values = (_json["values"] as core.List)
          .map<Value>((value) => new Value.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (values != null) {
      _json["values"] = values.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("versions")) {
      versions = (_json["versions"] as core.List)
          .map<Version>((value) => new Version.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (versions != null) {
      _json["versions"] = versions.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("activeUsers")) {
      activeUsers = (_json["activeUsers"] as core.List)
          .map<MetricsValue>((value) => new MetricsValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("failedExecutions")) {
      failedExecutions = (_json["failedExecutions"] as core.List)
          .map<MetricsValue>((value) => new MetricsValue.fromJson(value))
          .toList();
    }
    if (_json.containsKey("totalExecutions")) {
      totalExecutions = (_json["totalExecutions"] as core.List)
          .map<MetricsValue>((value) => new MetricsValue.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (activeUsers != null) {
      _json["activeUsers"] =
          activeUsers.map((value) => (value).toJson()).toList();
    }
    if (failedExecutions != null) {
      _json["failedExecutions"] =
          failedExecutions.map((value) => (value).toJson()).toList();
    }
    if (totalExecutions != null) {
      _json["totalExecutions"] =
          totalExecutions.map((value) => (value).toJson()).toList();
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
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("value")) {
      value = _json["value"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (value != null) {
      _json["value"] = value;
    }
    return _json;
  }
}

/// A representation of an execution of an Apps Script function started with
/// run. The execution response does not arrive until the function finishes
/// executing. The maximum execution runtime is listed in the [Apps Script
/// quotas guide](/apps-script/guides/services/quotas#current_limitations).
/// <p>After execution has started, it can have one of four outcomes:</p> <ul>
/// <li> If the script function returns successfully, the
///   response field contains an
///   ExecutionResponse object
///   with the function's return value in the object's `result` field.</li>
/// <li> If the script function (or Apps Script itself) throws an exception, the
///   error field contains a
///   Status object. The `Status` object's `details`
///   field contains an array with a single
///   ExecutionError object that
///   provides information about the nature of the error.</li>
/// <li> If the execution has not yet completed,
///   the done field is `false` and
///   the neither the `response` nor `error` fields are present.</li>
/// <li> If the `run` call itself fails (for example, because of a
///   malformed request or an authorization error), the method returns an HTTP
///   response code in the 4XX range with a different format for the response
///   body. Client libraries automatically convert a 4XX response into an
///   exception class.</li>
/// </ul>
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
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (response != null) {
      _json["response"] = response;
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
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("creator")) {
      creator = new GoogleAppsScriptTypeUser.fromJson(_json["creator"]);
    }
    if (_json.containsKey("lastModifyUser")) {
      lastModifyUser =
          new GoogleAppsScriptTypeUser.fromJson(_json["lastModifyUser"]);
    }
    if (_json.containsKey("parentId")) {
      parentId = _json["parentId"];
    }
    if (_json.containsKey("scriptId")) {
      scriptId = _json["scriptId"];
    }
    if (_json.containsKey("title")) {
      title = _json["title"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (creator != null) {
      _json["creator"] = (creator).toJson();
    }
    if (lastModifyUser != null) {
      _json["lastModifyUser"] = (lastModifyUser).toJson();
    }
    if (parentId != null) {
      _json["parentId"] = parentId;
    }
    if (scriptId != null) {
      _json["scriptId"] = scriptId;
    }
    if (title != null) {
      _json["title"] = title;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// The result of an execution
/// Based on ScriptExecutionResult at:
/// google3/apps/maestro/api/frontend_execution_common.proto?q=message%5c%20ScriptExecutionResult
class ScriptExecutionResult {
  /// The returned value of the execution.
  /// TODO (johnlattin): Add HtmlResponse
  /// TODO (johnlattin): Add ExceptionResponse
  /// TODO (johlnattin): Add TextResponse
  Value returnValue;

  ScriptExecutionResult();

  ScriptExecutionResult.fromJson(core.Map _json) {
    if (_json.containsKey("returnValue")) {
      returnValue = new Value.fromJson(_json["returnValue"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (returnValue != null) {
      _json["returnValue"] = (returnValue).toJson();
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
    if (_json.containsKey("function")) {
      function = _json["function"];
    }
    if (_json.containsKey("lineNumber")) {
      lineNumber = _json["lineNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (function != null) {
      _json["function"] = function;
    }
    if (lineNumber != null) {
      _json["lineNumber"] = lineNumber;
    }
    return _json;
  }
}

/// If a `run` call succeeds but the script function (or Apps Script itself)
/// throws an exception, the response body's error field contains this `Status`
/// object.
class Status {
  /// The status code. For this API, this value either: <ul> <li> 10, indicating
  /// a `SCRIPT_TIMEOUT` error,</li> <li> 3, indicating an `INVALID_ARGUMENT`
  /// error, or</li> <li> 1, indicating a `CANCELLED` execution.</li> </ul>
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
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
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
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}

/// `Struct` represents a structured data value, consisting of fields which map
/// to dynamically typed values.
/// Based on Struct at:
/// google3/apps/maestro/api/struct.proto?q=message%5c%20Struct
class Struct {
  /// Unordered map of dynamically typed values.
  core.Map<core.String, Value> fields;

  Struct();

  Struct.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = commons.mapMap<core.Map, Value>(
          _json["fields"].cast<core.String, core.Map>(),
          (core.Map item) => new Value.fromJson(item));
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (fields != null) {
      _json["fields"] =
          commons.mapMap<Value, core.Map<core.String, core.Object>>(
              fields, (Value item) => (item).toJson());
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
    if (_json.containsKey("deploymentConfig")) {
      deploymentConfig =
          new DeploymentConfig.fromJson(_json["deploymentConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deploymentConfig != null) {
      _json["deploymentConfig"] = (deploymentConfig).toJson();
    }
    return _json;
  }
}

/// `Value` represents a dynamically typed value which is the outcome of an
/// executed script
/// Based on Value at:
/// google3/apps/maestro/api/struct.proto?q=message%5c%20Value
class Value {
  /// Represents a boolean value.
  core.bool boolValue;

  /// Represents raw byte values.
  core.String bytesValue;
  core.List<core.int> get bytesValueAsBytes {
    return convert.base64.decode(bytesValue);
  }

  set bytesValueAsBytes(core.List<core.int> _bytes) {
    bytesValue =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
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
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("bytesValue")) {
      bytesValue = _json["bytesValue"];
    }
    if (_json.containsKey("dateValue")) {
      dateValue = _json["dateValue"];
    }
    if (_json.containsKey("listValue")) {
      listValue = new ListValue.fromJson(_json["listValue"]);
    }
    if (_json.containsKey("nullValue")) {
      nullValue = _json["nullValue"];
    }
    if (_json.containsKey("numberValue")) {
      numberValue = _json["numberValue"].toDouble();
    }
    if (_json.containsKey("protoValue")) {
      protoValue =
          (_json["protoValue"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
    if (_json.containsKey("structValue")) {
      structValue = new Struct.fromJson(_json["structValue"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (boolValue != null) {
      _json["boolValue"] = boolValue;
    }
    if (bytesValue != null) {
      _json["bytesValue"] = bytesValue;
    }
    if (dateValue != null) {
      _json["dateValue"] = dateValue;
    }
    if (listValue != null) {
      _json["listValue"] = (listValue).toJson();
    }
    if (nullValue != null) {
      _json["nullValue"] = nullValue;
    }
    if (numberValue != null) {
      _json["numberValue"] = numberValue;
    }
    if (protoValue != null) {
      _json["protoValue"] = protoValue;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    if (structValue != null) {
      _json["structValue"] = (structValue).toJson();
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
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("scriptId")) {
      scriptId = _json["scriptId"];
    }
    if (_json.containsKey("versionNumber")) {
      versionNumber = _json["versionNumber"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (description != null) {
      _json["description"] = description;
    }
    if (scriptId != null) {
      _json["scriptId"] = scriptId;
    }
    if (versionNumber != null) {
      _json["versionNumber"] = versionNumber;
    }
    return _json;
  }
}
