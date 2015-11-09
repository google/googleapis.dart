// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.logging.v1beta3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client logging/v1beta3';

/**
 * The Google Cloud Logging API lets you write log entries and manage your logs,
 * log sinks and logs-based metrics.
 */
class LoggingApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** View your data across Google Cloud Platform services */
  static const CloudPlatformReadOnlyScope = "https://www.googleapis.com/auth/cloud-platform.read-only";

  /** Administrate log data for your projects */
  static const LoggingAdminScope = "https://www.googleapis.com/auth/logging.admin";

  /** View log data for your projects */
  static const LoggingReadScope = "https://www.googleapis.com/auth/logging.read";

  /** Submit log data for your projects */
  static const LoggingWriteScope = "https://www.googleapis.com/auth/logging.write";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  LoggingApi(http.Client client, {core.String rootUrl: "https://logging.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogServicesResourceApi get logServices => new ProjectsLogServicesResourceApi(_requester);
  ProjectsLogsResourceApi get logs => new ProjectsLogsResourceApi(_requester);
  ProjectsMetricsResourceApi get metrics => new ProjectsMetricsResourceApi(_requester);
  ProjectsSinksResourceApi get sinks => new ProjectsSinksResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsLogServicesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogServicesIndexesResourceApi get indexes => new ProjectsLogServicesIndexesResourceApi(_requester);
  ProjectsLogServicesSinksResourceApi get sinks => new ProjectsLogServicesSinksResourceApi(_requester);

  ProjectsLogServicesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists the log services that have log entries in this project.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The resource name of the project
   * whose services are to be listed.
   *
   * [pageSize] - The maximum number of `LogService` objects to return in one
   * operation.
   *
   * [pageToken] - An opaque token, returned as `nextPageToken` by a prior
   * `ListLogServices` operation. If `pageToken` is supplied, then the other
   * fields of this request are ignored, and instead the previous
   * `ListLogServices` operation is continued.
   *
   * Completes with a [ListLogServicesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogServicesResponse> list(core.String projectsId, {core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logServices';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogServicesResponse.fromJson(data));
  }

}


class ProjectsLogServicesIndexesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogServicesIndexesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists the current index values for a log service.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `serviceName`. The resource name of a log service
   * whose service indexes are requested. Example:
   * `"projects/my-project-id/logServices/appengine.googleapis.com"`.
   *
   * [logServicesId] - Part of `serviceName`. See documentation of `projectsId`.
   *
   * [indexPrefix] - Restricts the index values returned to be those with a
   * specified prefix for each index key. This field has the form
   * `"/prefix1/prefix2/..."`, in order corresponding to the `LogService
   * indexKeys`. Non-empty prefixes must begin with `/`. For example, App
   * Engine's two keys are the module ID and the version ID. Following is the
   * effect of using various values for `indexPrefix`: + `"/Mod/"` retrieves
   * `/Mod/10` and `/Mod/11` but not `/ModA/10`. + `"/Mod` retrieves `/Mod/10`,
   * `/Mod/11` and `/ModA/10` but not `/XXX/33`. + `"/Mod/1"` retrieves
   * `/Mod/10` and `/Mod/11` but not `/ModA/10`. + `"/Mod/10/"` retrieves
   * `/Mod/10` only. + An empty prefix or `"/"` retrieves all values.
   *
   * [depth] - A non-negative integer that limits the number of levels of the
   * index hierarchy that are returned. If `depth` is 1 (default), only the
   * first index key value is returned. If `depth` is 2, both primary and
   * secondary key values are returned. If `depth` is 0, the depth is the number
   * of slash-separators in the `indexPrefix` field, not counting a slash
   * appearing as the last character of the prefix. If the `indexPrefix` field
   * is empty, the default depth is 1. It is an error for `depth` to be any
   * positive value less than the number of components in `indexPrefix`.
   *
   * [pageSize] - The maximum number of log service index resources to return in
   * one operation.
   *
   * [pageToken] - An opaque token, returned as `nextPageToken` by a prior
   * `ListLogServiceIndexes` operation. If `pageToken` is supplied, then the
   * other fields of this request are ignored, and instead the previous
   * `ListLogServiceIndexes` operation is continued.
   *
   * Completes with a [ListLogServiceIndexesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogServiceIndexesResponse> list(core.String projectsId, core.String logServicesId, {core.String indexPrefix, core.int depth, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logServicesId == null) {
      throw new core.ArgumentError("Parameter logServicesId is required.");
    }
    if (indexPrefix != null) {
      _queryParams["indexPrefix"] = [indexPrefix];
    }
    if (depth != null) {
      _queryParams["depth"] = ["${depth}"];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logServices/' + commons.Escaper.ecapeVariable('$logServicesId') + '/indexes';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogServiceIndexesResponse.fromJson(data));
  }

}


class ProjectsLogServicesSinksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogServicesSinksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a log service sink. All log entries from a specified log service
   * are written to the destination.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `serviceName`. The resource name of the log service
   * to which the sink is bound.
   *
   * [logServicesId] - Part of `serviceName`. See documentation of `projectsId`.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> create(LogSink request, core.String projectsId, core.String logServicesId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logServicesId == null) {
      throw new core.ArgumentError("Parameter logServicesId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logServices/' + commons.Escaper.ecapeVariable('$logServicesId') + '/sinks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Deletes a log service sink. After deletion, no new log entries are written
   * to the destination.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the log service
   * sink to delete.
   *
   * [logServicesId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String projectsId, core.String logServicesId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logServicesId == null) {
      throw new core.ArgumentError("Parameter logServicesId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logServices/' + commons.Escaper.ecapeVariable('$logServicesId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a log service sink.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the log service
   * sink to return.
   *
   * [logServicesId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> get(core.String projectsId, core.String logServicesId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logServicesId == null) {
      throw new core.ArgumentError("Parameter logServicesId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logServices/' + commons.Escaper.ecapeVariable('$logServicesId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Lists log service sinks associated with a log service.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `serviceName`. The log service whose sinks are
   * wanted.
   *
   * [logServicesId] - Part of `serviceName`. See documentation of `projectsId`.
   *
   * Completes with a [ListLogServiceSinksResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogServiceSinksResponse> list(core.String projectsId, core.String logServicesId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logServicesId == null) {
      throw new core.ArgumentError("Parameter logServicesId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logServices/' + commons.Escaper.ecapeVariable('$logServicesId') + '/sinks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogServiceSinksResponse.fromJson(data));
  }

  /**
   * Updates a log service sink. If the sink does not exist, it is created.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the log service
   * sink to update.
   *
   * [logServicesId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> update(LogSink request, core.String projectsId, core.String logServicesId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logServicesId == null) {
      throw new core.ArgumentError("Parameter logServicesId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logServices/' + commons.Escaper.ecapeVariable('$logServicesId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

}


class ProjectsLogsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogsEntriesResourceApi get entries => new ProjectsLogsEntriesResourceApi(_requester);
  ProjectsLogsSinksResourceApi get sinks => new ProjectsLogsSinksResourceApi(_requester);

  ProjectsLogsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a log and all its log entries. The log will reappear if it receives
   * new entries.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `logName`. The resource name of the log to be
   * deleted.
   *
   * [logsId] - Part of `logName`. See documentation of `projectsId`.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String projectsId, core.String logsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logsId == null) {
      throw new core.ArgumentError("Parameter logsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logs/' + commons.Escaper.ecapeVariable('$logsId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Lists the logs in the project. Only logs that have entries are listed.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The resource name of the project
   * whose logs are requested. If both `serviceName` and `serviceIndexPrefix`
   * are empty, then all logs with entries in this project are listed.
   *
   * [serviceName] - If not empty, this field must be a log service name such as
   * `"compute.googleapis.com"`. Only logs associated with that that log service
   * are listed.
   *
   * [serviceIndexPrefix] - The purpose of this field is to restrict the listed
   * logs to those with entries of a certain kind. If `serviceName` is the name
   * of a log service, then this field may contain values for the log service's
   * indexes. Only logs that have entries whose indexes include the values are
   * listed. The format for this field is `"/val1/val2.../valN"`, where `val1`
   * is a value for the first index, `val2` for the second index, etc. An empty
   * value (a single slash) for an index matches all values, and you can omit
   * values for later indexes entirely.
   *
   * [pageSize] - The maximum number of results to return.
   *
   * [pageToken] - An opaque token, returned as `nextPageToken` by a prior
   * `ListLogs` operation. If `pageToken` is supplied, then the other fields of
   * this request are ignored, and instead the previous `ListLogs` operation is
   * continued.
   *
   * Completes with a [ListLogsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogsResponse> list(core.String projectsId, {core.String serviceName, core.String serviceIndexPrefix, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (serviceName != null) {
      _queryParams["serviceName"] = [serviceName];
    }
    if (serviceIndexPrefix != null) {
      _queryParams["serviceIndexPrefix"] = [serviceIndexPrefix];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logs';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogsResponse.fromJson(data));
  }

}


class ProjectsLogsEntriesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogsEntriesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Writes log entries to Cloud Logging. Each entry consists of a `LogEntry`
   * object. You must fill in all the fields of the object, including one of the
   * payload fields. You may supply a map, `commonLabels`, that holds default
   * (key, value) data for the `entries[].metadata.labels` map in each entry,
   * saving you the trouble of creating identical copies for each entry.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `logName`. The resource name of the log that will
   * receive the log entries.
   *
   * [logsId] - Part of `logName`. See documentation of `projectsId`.
   *
   * Completes with a [WriteLogEntriesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<WriteLogEntriesResponse> write(WriteLogEntriesRequest request, core.String projectsId, core.String logsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logsId == null) {
      throw new core.ArgumentError("Parameter logsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logs/' + commons.Escaper.ecapeVariable('$logsId') + '/entries:write';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new WriteLogEntriesResponse.fromJson(data));
  }

}


class ProjectsLogsSinksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogsSinksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a log sink. All log entries for a specified log are written to the
   * destination.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `logName`. The resource name of the log to which to
   * the sink is bound.
   *
   * [logsId] - Part of `logName`. See documentation of `projectsId`.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> create(LogSink request, core.String projectsId, core.String logsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logsId == null) {
      throw new core.ArgumentError("Parameter logsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logs/' + commons.Escaper.ecapeVariable('$logsId') + '/sinks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Deletes a log sink. After deletion, no new log entries are written to the
   * destination.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the log sink to
   * delete.
   *
   * [logsId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String projectsId, core.String logsId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logsId == null) {
      throw new core.ArgumentError("Parameter logsId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logs/' + commons.Escaper.ecapeVariable('$logsId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a log sink.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the log sink to
   * return.
   *
   * [logsId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> get(core.String projectsId, core.String logsId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logsId == null) {
      throw new core.ArgumentError("Parameter logsId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logs/' + commons.Escaper.ecapeVariable('$logsId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Lists log sinks associated with a log.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `logName`. The log whose sinks are wanted. For
   * example, `"compute.google.com/syslog"`.
   *
   * [logsId] - Part of `logName`. See documentation of `projectsId`.
   *
   * Completes with a [ListLogSinksResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogSinksResponse> list(core.String projectsId, core.String logsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logsId == null) {
      throw new core.ArgumentError("Parameter logsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logs/' + commons.Escaper.ecapeVariable('$logsId') + '/sinks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogSinksResponse.fromJson(data));
  }

  /**
   * Updates a log sink. If the sink does not exist, it is created.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the sink to update.
   *
   * [logsId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> update(LogSink request, core.String projectsId, core.String logsId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (logsId == null) {
      throw new core.ArgumentError("Parameter logsId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/logs/' + commons.Escaper.ecapeVariable('$logsId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

}


class ProjectsMetricsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsMetricsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a logs-based metric.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The resource name of the project in
   * which to create the metric.
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> create(LogMetric request, core.String projectsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/metrics';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogMetric.fromJson(data));
  }

  /**
   * Deletes a logs-based metric.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `metricName`. The resource name of the metric to
   * delete.
   *
   * [metricsId] - Part of `metricName`. See documentation of `projectsId`.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String projectsId, core.String metricsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (metricsId == null) {
      throw new core.ArgumentError("Parameter metricsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/metrics/' + commons.Escaper.ecapeVariable('$metricsId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a logs-based metric.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `metricName`. The resource name of the desired
   * metric.
   *
   * [metricsId] - Part of `metricName`. See documentation of `projectsId`.
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> get(core.String projectsId, core.String metricsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (metricsId == null) {
      throw new core.ArgumentError("Parameter metricsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/metrics/' + commons.Escaper.ecapeVariable('$metricsId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogMetric.fromJson(data));
  }

  /**
   * Lists the logs-based metrics associated with a project.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The resource name for the project
   * whose metrics are wanted.
   *
   * [pageToken] - An opaque token, returned as `nextPageToken` by a prior
   * `ListLogMetrics` operation. If `pageToken` is supplied, then the other
   * fields of this request are ignored, and instead the previous
   * `ListLogMetrics` operation is continued.
   *
   * [pageSize] - The maximum number of `LogMetric` objects to return in one
   * operation.
   *
   * Completes with a [ListLogMetricsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogMetricsResponse> list(core.String projectsId, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/metrics';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogMetricsResponse.fromJson(data));
  }

  /**
   * Creates or updates a logs-based metric.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `metricName`. The resource name of the metric to
   * update.
   *
   * [metricsId] - Part of `metricName`. See documentation of `projectsId`.
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> update(LogMetric request, core.String projectsId, core.String metricsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (metricsId == null) {
      throw new core.ArgumentError("Parameter metricsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/metrics/' + commons.Escaper.ecapeVariable('$metricsId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogMetric.fromJson(data));
  }

}


class ProjectsSinksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSinksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a project sink. A logs filter determines which log entries are
   * written to the destination.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The resource name of the project to
   * which the sink is bound.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> create(LogSink request, core.String projectsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/sinks';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Deletes a project sink. After deletion, no new log entries are written to
   * the destination.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the project sink to
   * delete.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String projectsId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Gets a project sink.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the project sink to
   * return.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> get(core.String projectsId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

  /**
   * Lists project sinks associated with a project.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The project whose sinks are wanted.
   *
   * Completes with a [ListSinksResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListSinksResponse> list(core.String projectsId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/sinks';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSinksResponse.fromJson(data));
  }

  /**
   * Updates a project sink. If the sink does not exist, it is created. The
   * destination, filter, or both may be updated.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The resource name of the project sink to
   * update.
   *
   * [sinksId] - Part of `sinkName`. See documentation of `projectsId`.
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> update(LogSink request, core.String projectsId, core.String sinksId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (sinksId == null) {
      throw new core.ArgumentError("Parameter sinksId is required.");
    }

    _url = 'v1beta3/projects/' + commons.Escaper.ecapeVariable('$projectsId') + '/sinks/' + commons.Escaper.ecapeVariable('$sinksId');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new LogSink.fromJson(data));
  }

}



/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
 * representation for `Empty` is empty JSON object `{}`.
 */
class Empty {

  Empty();

  Empty.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}

/** A common proto for logging HTTP requests. */
class HttpRequest {
  /**
   * Whether or not an entity was served from cache (with or without
   * validation).
   */
  core.bool cacheHit;
  /**
   * Referer (a.k.a. referrer) URL of request, as defined in
   * http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html.
   */
  core.String referer;
  /**
   * IP address of the client who issues the HTTP request. Could be either IPv4
   * or IPv6.
   */
  core.String remoteIp;
  /** Request method, such as `GET`, `HEAD`, `PUT` or `POST`. */
  core.String requestMethod;
  /**
   * Size of the HTTP request message in bytes, including request headers and
   * the request body.
   */
  core.String requestSize;
  /**
   * Contains the scheme (http|https), the host name, the path and the query
   * portion of the URL that was requested.
   */
  core.String requestUrl;
  /**
   * Size of the HTTP response message in bytes sent back to the client,
   * including response headers and response body.
   */
  core.String responseSize;
  /** A response code indicates the status of response, e.g., 200. */
  core.int status;
  /**
   * User agent sent by the client, e.g., "Mozilla/4.0 (compatible; MSIE 6.0;
   * Windows 98; Q312461; .NET CLR 1.0.3705)".
   */
  core.String userAgent;
  /**
   * Whether or not the response was validated with the origin server before
   * being served from cache. This field is only meaningful if cache_hit is
   * True.
   */
  core.bool validatedWithOriginServer;

  HttpRequest();

  HttpRequest.fromJson(core.Map _json) {
    if (_json.containsKey("cacheHit")) {
      cacheHit = _json["cacheHit"];
    }
    if (_json.containsKey("referer")) {
      referer = _json["referer"];
    }
    if (_json.containsKey("remoteIp")) {
      remoteIp = _json["remoteIp"];
    }
    if (_json.containsKey("requestMethod")) {
      requestMethod = _json["requestMethod"];
    }
    if (_json.containsKey("requestSize")) {
      requestSize = _json["requestSize"];
    }
    if (_json.containsKey("requestUrl")) {
      requestUrl = _json["requestUrl"];
    }
    if (_json.containsKey("responseSize")) {
      responseSize = _json["responseSize"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("userAgent")) {
      userAgent = _json["userAgent"];
    }
    if (_json.containsKey("validatedWithOriginServer")) {
      validatedWithOriginServer = _json["validatedWithOriginServer"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (cacheHit != null) {
      _json["cacheHit"] = cacheHit;
    }
    if (referer != null) {
      _json["referer"] = referer;
    }
    if (remoteIp != null) {
      _json["remoteIp"] = remoteIp;
    }
    if (requestMethod != null) {
      _json["requestMethod"] = requestMethod;
    }
    if (requestSize != null) {
      _json["requestSize"] = requestSize;
    }
    if (requestUrl != null) {
      _json["requestUrl"] = requestUrl;
    }
    if (responseSize != null) {
      _json["responseSize"] = responseSize;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    if (validatedWithOriginServer != null) {
      _json["validatedWithOriginServer"] = validatedWithOriginServer;
    }
    return _json;
  }
}

/** Result returned from ListLogMetrics. */
class ListLogMetricsResponse {
  /** The list of metrics that was requested. */
  core.List<LogMetric> metrics;
  /**
   * If there are more results, then `nextPageToken` is returned in the
   * response. To get the next batch of entries, use the value of
   * `nextPageToken` as `pageToken` in the next call of `ListLogMetrics`. If
   * `nextPageToken` is empty, then there are no more results.
   */
  core.String nextPageToken;

  ListLogMetricsResponse();

  ListLogMetricsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("metrics")) {
      metrics = _json["metrics"].map((value) => new LogMetric.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (metrics != null) {
      _json["metrics"] = metrics.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Result returned from ListLogServiceIndexesRequest. */
class ListLogServiceIndexesResponse {
  /**
   * If there are more results, then `nextPageToken` is returned in the
   * response. To get the next batch of indexes, use the value of
   * `nextPageToken` as `pageToken` in the next call of `ListLogServiceIndexes`.
   * If `nextPageToken` is empty, then there are no more results.
   */
  core.String nextPageToken;
  /**
   * A list of log service index values. Each index value has the form
   * `"/value1/value2/..."`, where `value1` is a value in the primary index,
   * `value2` is a value in the secondary index, and so forth.
   */
  core.List<core.String> serviceIndexPrefixes;

  ListLogServiceIndexesResponse();

  ListLogServiceIndexesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("serviceIndexPrefixes")) {
      serviceIndexPrefixes = _json["serviceIndexPrefixes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (serviceIndexPrefixes != null) {
      _json["serviceIndexPrefixes"] = serviceIndexPrefixes;
    }
    return _json;
  }
}

/** Result returned from `ListLogServiceSinks`. */
class ListLogServiceSinksResponse {
  /**
   * The requested log service sinks. If a returned `LogSink` object has an
   * empty `destination` field, the client can retrieve the complete `LogSink`
   * object by calling `logServices.sinks.get`.
   */
  core.List<LogSink> sinks;

  ListLogServiceSinksResponse();

  ListLogServiceSinksResponse.fromJson(core.Map _json) {
    if (_json.containsKey("sinks")) {
      sinks = _json["sinks"].map((value) => new LogSink.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sinks != null) {
      _json["sinks"] = sinks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Result returned from `ListLogServicesRequest`. */
class ListLogServicesResponse {
  /** A list of log services. */
  core.List<LogService> logServices;
  /**
   * If there are more results, then `nextPageToken` is returned in the
   * response. To get the next batch of services, use the value of
   * `nextPageToken` as `pageToken` in the next call of `ListLogServices`. If
   * `nextPageToken` is empty, then there are no more results.
   */
  core.String nextPageToken;

  ListLogServicesResponse();

  ListLogServicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("logServices")) {
      logServices = _json["logServices"].map((value) => new LogService.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (logServices != null) {
      _json["logServices"] = logServices.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Result returned from `ListLogSinks`. */
class ListLogSinksResponse {
  /**
   * The requested log sinks. If a returned `LogSink` object has an empty
   * `destination` field, the client can retrieve the complete `LogSink` object
   * by calling `log.sinks.get`.
   */
  core.List<LogSink> sinks;

  ListLogSinksResponse();

  ListLogSinksResponse.fromJson(core.Map _json) {
    if (_json.containsKey("sinks")) {
      sinks = _json["sinks"].map((value) => new LogSink.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sinks != null) {
      _json["sinks"] = sinks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Result returned from ListLogs. */
class ListLogsResponse {
  /** A list of log descriptions matching the criteria. */
  core.List<Log> logs;
  /**
   * If there are more results, then `nextPageToken` is returned in the
   * response. To get the next batch of logs, use the value of `nextPageToken`
   * as `pageToken` in the next call of `ListLogs`. If `nextPageToken` is empty,
   * then there are no more results.
   */
  core.String nextPageToken;

  ListLogsResponse();

  ListLogsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("logs")) {
      logs = _json["logs"].map((value) => new Log.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (logs != null) {
      _json["logs"] = logs.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Result returned from `ListSinks`. */
class ListSinksResponse {
  /**
   * The requested sinks. If a returned `LogSink` object has an empty
   * `destination` field, the client can retrieve the complete `LogSink` object
   * by calling `projects.sinks.get`.
   */
  core.List<LogSink> sinks;

  ListSinksResponse();

  ListSinksResponse.fromJson(core.Map _json) {
    if (_json.containsKey("sinks")) {
      sinks = _json["sinks"].map((value) => new LogSink.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (sinks != null) {
      _json["sinks"] = sinks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** _Output only._ Describes a log, which is a named stream of log entries. */
class Log {
  /** _Optional._ The common name of the log. Example: `"request_log"`. */
  core.String displayName;
  /**
   * The resource name of the log. Example:
   * `"/projects/my-gcp-project-id/logs/LOG_NAME"`, where `LOG_NAME` is the
   * URL-encoded given name of the log. The log includes those log entries whose
   * `LogEntry.log` field contains this given name. To avoid name collisions, it
   * is a best practice to prefix the given log name with the service name, but
   * this is not required. Examples of log given names:
   * `"appengine.googleapis.com/request_log"`, `"apache-access"`.
   */
  core.String name;
  /**
   * _Optional_. A URI representing the expected payload type for log entries.
   */
  core.String payloadType;

  Log();

  Log.fromJson(core.Map _json) {
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("payloadType")) {
      payloadType = _json["payloadType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (payloadType != null) {
      _json["payloadType"] = payloadType;
    }
    return _json;
  }
}

/** An individual entry in a log. */
class LogEntry {
  /**
   * Information about the HTTP request associated with this log entry, if
   * applicable.
   */
  HttpRequest httpRequest;
  /**
   * A unique ID for the log entry. If you provide this field, the logging
   * service considers other log entries in the same log with the same ID as
   * duplicates which can be removed.
   */
  core.String insertId;
  /**
   * The log to which this entry belongs. When a log entry is ingested, the
   * value of this field is set by the logging system.
   */
  core.String log;
  /** Information about the log entry. */
  LogEntryMetadata metadata;
  /**
   * The log entry payload, represented as a protocol buffer that is expressed
   * as a JSON object. You can only pass `protoPayload` values that belong to a
   * set of approved types.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> protoPayload;
  /**
   * The log entry payload, represented as a structure that is expressed as a
   * JSON object.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> structPayload;
  /** The log entry payload, represented as a Unicode string (UTF-8). */
  core.String textPayload;

  LogEntry();

  LogEntry.fromJson(core.Map _json) {
    if (_json.containsKey("httpRequest")) {
      httpRequest = new HttpRequest.fromJson(_json["httpRequest"]);
    }
    if (_json.containsKey("insertId")) {
      insertId = _json["insertId"];
    }
    if (_json.containsKey("log")) {
      log = _json["log"];
    }
    if (_json.containsKey("metadata")) {
      metadata = new LogEntryMetadata.fromJson(_json["metadata"]);
    }
    if (_json.containsKey("protoPayload")) {
      protoPayload = _json["protoPayload"];
    }
    if (_json.containsKey("structPayload")) {
      structPayload = _json["structPayload"];
    }
    if (_json.containsKey("textPayload")) {
      textPayload = _json["textPayload"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (httpRequest != null) {
      _json["httpRequest"] = (httpRequest).toJson();
    }
    if (insertId != null) {
      _json["insertId"] = insertId;
    }
    if (log != null) {
      _json["log"] = log;
    }
    if (metadata != null) {
      _json["metadata"] = (metadata).toJson();
    }
    if (protoPayload != null) {
      _json["protoPayload"] = protoPayload;
    }
    if (structPayload != null) {
      _json["structPayload"] = structPayload;
    }
    if (textPayload != null) {
      _json["textPayload"] = textPayload;
    }
    return _json;
  }
}

/**
 * Additional data that is associated with a log entry, set by the service
 * creating the log entry.
 */
class LogEntryMetadata {
  /**
   * A set of (key, value) data that provides additional information about the
   * log entry. If the log entry is from one of the Google Cloud Platform
   * sources listed below, the indicated (key, value) information must be
   * provided: Google App Engine, service_name `appengine.googleapis.com`:
   * "appengine.googleapis.com/module_id",
   * "appengine.googleapis.com/version_id",  and one of:
   * "appengine.googleapis.com/replica_index",
   * "appengine.googleapis.com/clone_id",  or else provide the following Compute
   * Engine labels: Google Compute Engine, service_name
   * `compute.googleapis.com`: "compute.googleapis.com/resource_type",
   * "instance" "compute.googleapis.com/resource_id",
   */
  core.Map<core.String, core.String> labels;
  /**
   * The project ID of the Google Cloud Platform service that created the log
   * entry.
   */
  core.String projectId;
  /**
   * The region name of the Google Cloud Platform service that created the log
   * entry. For example, `"us-central1"`.
   */
  core.String region;
  /**
   * The API name of the Google Cloud Platform service that created the log
   * entry. For example, `"compute.googleapis.com"`.
   */
  core.String serviceName;
  /**
   * The severity of the log entry.
   * Possible string values are:
   * - "DEFAULT" : A DEFAULT.
   * - "DEBUG" : A DEBUG.
   * - "INFO" : A INFO.
   * - "NOTICE" : A NOTICE.
   * - "WARNING" : A WARNING.
   * - "ERROR" : A ERROR.
   * - "CRITICAL" : A CRITICAL.
   * - "ALERT" : A ALERT.
   * - "EMERGENCY" : A EMERGENCY.
   */
  core.String severity;
  /**
   * The time the event described by the log entry occurred. Timestamps must be
   * later than January 1, 1970.
   */
  core.String timestamp;
  /**
   * The fully-qualified email address of the authenticated user that performed
   * or requested the action represented by the log entry. If the log entry does
   * not apply to an action taken by an authenticated user, then the field
   * should be empty.
   */
  core.String userId;
  /**
   * The zone of the Google Cloud Platform service that created the log entry.
   * For example, `"us-central1-a"`.
   */
  core.String zone;

  LogEntryMetadata();

  LogEntryMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("region")) {
      region = _json["region"];
    }
    if (_json.containsKey("serviceName")) {
      serviceName = _json["serviceName"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
    }
    if (_json.containsKey("userId")) {
      userId = _json["userId"];
    }
    if (_json.containsKey("zone")) {
      zone = _json["zone"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (region != null) {
      _json["region"] = region;
    }
    if (serviceName != null) {
      _json["serviceName"] = serviceName;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    if (userId != null) {
      _json["userId"] = userId;
    }
    if (zone != null) {
      _json["zone"] = zone;
    }
    return _json;
  }
}

/** Describes a problem with a logging resource or operation. */
class LogError {
  /**
   * A resource name associated with this error. For example, the name of a
   * Cloud Storage bucket that has insufficient permissions to be a destination
   * for log entries.
   */
  core.String resource;
  /**
   * The error description, including a classification code, an error message,
   * and other details.
   */
  Status status;
  /** The time the error was observed, in nanoseconds since the Unix epoch. */
  core.String timeNanos;

  LogError();

  LogError.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
    if (_json.containsKey("timeNanos")) {
      timeNanos = _json["timeNanos"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = resource;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (timeNanos != null) {
      _json["timeNanos"] = timeNanos;
    }
    return _json;
  }
}

/** Application log line emitted while processing a request. */
class LogLine {
  /** App provided log message. */
  core.String logMessage;
  /**
   * Severity of log.
   * Possible string values are:
   * - "DEFAULT" : A DEFAULT.
   * - "DEBUG" : A DEBUG.
   * - "INFO" : A INFO.
   * - "NOTICE" : A NOTICE.
   * - "WARNING" : A WARNING.
   * - "ERROR" : A ERROR.
   * - "CRITICAL" : A CRITICAL.
   * - "ALERT" : A ALERT.
   * - "EMERGENCY" : A EMERGENCY.
   */
  core.String severity;
  /** Line of code that generated this log message. */
  SourceLocation sourceLocation;
  /** Time when log entry was made. May be inaccurate. */
  core.String time;

  LogLine();

  LogLine.fromJson(core.Map _json) {
    if (_json.containsKey("logMessage")) {
      logMessage = _json["logMessage"];
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("sourceLocation")) {
      sourceLocation = new SourceLocation.fromJson(_json["sourceLocation"]);
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (logMessage != null) {
      _json["logMessage"] = logMessage;
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (sourceLocation != null) {
      _json["sourceLocation"] = (sourceLocation).toJson();
    }
    if (time != null) {
      _json["time"] = time;
    }
    return _json;
  }
}

/**
 * Describes a logs-based metric. The value of the metric is the number of log
 * entries in your project that match a logs filter.
 */
class LogMetric {
  /** A description of this metric. */
  core.String description;
  /**
   * An [advanced logs filter](/logging/docs/view/advanced_filters). Example:
   * `"log:syslog AND metadata.severity>=ERROR"`.
   */
  core.String filter;
  /**
   * The client-assigned name for this metric, such as `"severe_errors"`. Metric
   * names are limited to 1000 characters and can include only the following
   * characters: `A-Z`, `a-z`, `0-9`, and the special characters
   * `_-.,+!*',()%/\`. The slash character (`/`) denotes a hierarchy of name
   * pieces, and it cannot be the first character of the name.
   */
  core.String name;

  LogMetric();

  LogMetric.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** _Output only._ Describes a service that writes log entries. */
class LogService {
  /**
   * A list of the names of the keys used to index and label individual log
   * entries from this service. The first two keys are used as the primary and
   * secondary index, respectively. Additional keys may be used to label the
   * entries. For example, App Engine indexes its entries by module and by
   * version, so its `indexKeys` field is the following: [
   * "appengine.googleapis.com/module_id", "appengine.googleapis.com/version_id"
   * ]
   */
  core.List<core.String> indexKeys;
  /**
   * The service's name. Example: `"appengine.googleapis.com"`. Log names
   * beginning with this string are reserved for this service. This value can
   * appear in the `LogEntry.metadata.serviceName` field of log entries
   * associated with this log service.
   */
  core.String name;

  LogService();

  LogService.fromJson(core.Map _json) {
    if (_json.containsKey("indexKeys")) {
      indexKeys = _json["indexKeys"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (indexKeys != null) {
      _json["indexKeys"] = indexKeys;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** Describes where log entries are written outside of Cloud Logging. */
class LogSink {
  /**
   * The resource name of the destination. Cloud Logging writes designated log
   * entries to this destination. For example,
   * `"storage.googleapis.com/my-output-bucket"`.
   */
  core.String destination;
  /**
   * _Output only._ If any errors occur when invoking a sink method, then this
   * field contains descriptions of the errors.
   */
  core.List<LogError> errors;
  /**
   * An advanced logs filter. If present, only log entries matching the filter
   * are written. Only project sinks use this field; log sinks and log service
   * sinks must not include a filter.
   */
  core.String filter;
  /**
   * The client-assigned name of this sink. For example, `"my-syslog-sink"`. The
   * name must be unique among the sinks of a similar kind in the project.
   */
  core.String name;

  LogSink();

  LogSink.fromJson(core.Map _json) {
    if (_json.containsKey("destination")) {
      destination = _json["destination"];
    }
    if (_json.containsKey("errors")) {
      errors = _json["errors"].map((value) => new LogError.fromJson(value)).toList();
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (destination != null) {
      _json["destination"] = destination;
    }
    if (errors != null) {
      _json["errors"] = errors.map((value) => (value).toJson()).toList();
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}

/** Complete log information about a single request to an application. */
class RequestLog {
  /** App Engine release version string. */
  core.String appEngineRelease;
  /** Identifies the application that handled this request. */
  core.String appId;
  /** An indication of the relative cost of serving this request. */
  core.double cost;
  /** Time at which request was known to end processing. */
  core.String endTime;
  /**
   * If true, represents a finished request. Otherwise, the request is active.
   */
  core.bool finished;
  /** The Internet host and port number of the resource being requested. */
  core.String host;
  /** HTTP version of request. */
  core.String httpVersion;
  /** An opaque identifier for the instance that handled the request. */
  core.String instanceId;
  /**
   * If the instance that processed this request was individually addressable
   * (i.e. belongs to a manually scaled module), this is the index of the
   * instance.
   */
  core.int instanceIndex;
  /** Origin IP address. */
  core.String ip;
  /** Latency of the request. */
  core.String latency;
  /**
   * List of log lines emitted by the application while serving this request, if
   * requested.
   */
  core.List<LogLine> line;
  /** Number of CPU megacycles used to process request. */
  core.String megaCycles;
  /** Request method, such as `GET`, `HEAD`, `PUT`, `POST`, or `DELETE`. */
  core.String method;
  /** Identifies the module of the application that handled this request. */
  core.String moduleId;
  /**
   * A string that identifies a logged-in user who made this request, or empty
   * if the user is not logged in. Most likely, this is the part of the user's
   * email before the '@' sign. The field value is the same for different
   * requests from the same user, but different users may have a similar name.
   * This information is also available to the application via Users API. This
   * field will be populated starting with App Engine 1.9.21.
   */
  core.String nickname;
  /**
   * Time this request spent in the pending request queue, if it was pending at
   * all.
   */
  core.String pendingTime;
  /** Referrer URL of request. */
  core.String referrer;
  /**
   * Globally unique identifier for a request, based on request start time.
   * Request IDs for requests which started later will compare greater as
   * strings than those for requests which started earlier.
   */
  core.String requestId;
  /**
   * Contains the path and query portion of the URL that was requested. For
   * example, if the URL was "http://example.com/app?name=val", the resource
   * would be "/app?name=val". Any trailing fragment (separated by a '#'
   * character) will not be included.
   */
  core.String resource;
  /** Size in bytes sent back to client by request. */
  core.String responseSize;
  /**
   * Source code for the application that handled this request. There can be
   * more than one source reference per deployed application if source code is
   * distributed among multiple repositories.
   */
  core.List<SourceReference> sourceReference;
  /** Time at which request was known to have begun processing. */
  core.String startTime;
  /** Response status of request. */
  core.int status;
  /** Task name of the request (for an offline request). */
  core.String taskName;
  /** Queue name of the request (for an offline request). */
  core.String taskQueueName;
  /** Cloud Trace identifier of the trace for this request. */
  core.String traceId;
  /**
   * File or class within URL mapping used for request. Useful for tracking down
   * the source code which was responsible for managing request. Especially for
   * multiply mapped handlers.
   */
  core.String urlMapEntry;
  /** User agent used for making request. */
  core.String userAgent;
  /** Version of the application that handled this request. */
  core.String versionId;
  /** Was this request a loading request for this instance? */
  core.bool wasLoadingRequest;

  RequestLog();

  RequestLog.fromJson(core.Map _json) {
    if (_json.containsKey("appEngineRelease")) {
      appEngineRelease = _json["appEngineRelease"];
    }
    if (_json.containsKey("appId")) {
      appId = _json["appId"];
    }
    if (_json.containsKey("cost")) {
      cost = _json["cost"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("finished")) {
      finished = _json["finished"];
    }
    if (_json.containsKey("host")) {
      host = _json["host"];
    }
    if (_json.containsKey("httpVersion")) {
      httpVersion = _json["httpVersion"];
    }
    if (_json.containsKey("instanceId")) {
      instanceId = _json["instanceId"];
    }
    if (_json.containsKey("instanceIndex")) {
      instanceIndex = _json["instanceIndex"];
    }
    if (_json.containsKey("ip")) {
      ip = _json["ip"];
    }
    if (_json.containsKey("latency")) {
      latency = _json["latency"];
    }
    if (_json.containsKey("line")) {
      line = _json["line"].map((value) => new LogLine.fromJson(value)).toList();
    }
    if (_json.containsKey("megaCycles")) {
      megaCycles = _json["megaCycles"];
    }
    if (_json.containsKey("method")) {
      method = _json["method"];
    }
    if (_json.containsKey("moduleId")) {
      moduleId = _json["moduleId"];
    }
    if (_json.containsKey("nickname")) {
      nickname = _json["nickname"];
    }
    if (_json.containsKey("pendingTime")) {
      pendingTime = _json["pendingTime"];
    }
    if (_json.containsKey("referrer")) {
      referrer = _json["referrer"];
    }
    if (_json.containsKey("requestId")) {
      requestId = _json["requestId"];
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
    if (_json.containsKey("responseSize")) {
      responseSize = _json["responseSize"];
    }
    if (_json.containsKey("sourceReference")) {
      sourceReference = _json["sourceReference"].map((value) => new SourceReference.fromJson(value)).toList();
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("status")) {
      status = _json["status"];
    }
    if (_json.containsKey("taskName")) {
      taskName = _json["taskName"];
    }
    if (_json.containsKey("taskQueueName")) {
      taskQueueName = _json["taskQueueName"];
    }
    if (_json.containsKey("traceId")) {
      traceId = _json["traceId"];
    }
    if (_json.containsKey("urlMapEntry")) {
      urlMapEntry = _json["urlMapEntry"];
    }
    if (_json.containsKey("userAgent")) {
      userAgent = _json["userAgent"];
    }
    if (_json.containsKey("versionId")) {
      versionId = _json["versionId"];
    }
    if (_json.containsKey("wasLoadingRequest")) {
      wasLoadingRequest = _json["wasLoadingRequest"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (appEngineRelease != null) {
      _json["appEngineRelease"] = appEngineRelease;
    }
    if (appId != null) {
      _json["appId"] = appId;
    }
    if (cost != null) {
      _json["cost"] = cost;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (finished != null) {
      _json["finished"] = finished;
    }
    if (host != null) {
      _json["host"] = host;
    }
    if (httpVersion != null) {
      _json["httpVersion"] = httpVersion;
    }
    if (instanceId != null) {
      _json["instanceId"] = instanceId;
    }
    if (instanceIndex != null) {
      _json["instanceIndex"] = instanceIndex;
    }
    if (ip != null) {
      _json["ip"] = ip;
    }
    if (latency != null) {
      _json["latency"] = latency;
    }
    if (line != null) {
      _json["line"] = line.map((value) => (value).toJson()).toList();
    }
    if (megaCycles != null) {
      _json["megaCycles"] = megaCycles;
    }
    if (method != null) {
      _json["method"] = method;
    }
    if (moduleId != null) {
      _json["moduleId"] = moduleId;
    }
    if (nickname != null) {
      _json["nickname"] = nickname;
    }
    if (pendingTime != null) {
      _json["pendingTime"] = pendingTime;
    }
    if (referrer != null) {
      _json["referrer"] = referrer;
    }
    if (requestId != null) {
      _json["requestId"] = requestId;
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    if (responseSize != null) {
      _json["responseSize"] = responseSize;
    }
    if (sourceReference != null) {
      _json["sourceReference"] = sourceReference.map((value) => (value).toJson()).toList();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (status != null) {
      _json["status"] = status;
    }
    if (taskName != null) {
      _json["taskName"] = taskName;
    }
    if (taskQueueName != null) {
      _json["taskQueueName"] = taskQueueName;
    }
    if (traceId != null) {
      _json["traceId"] = traceId;
    }
    if (urlMapEntry != null) {
      _json["urlMapEntry"] = urlMapEntry;
    }
    if (userAgent != null) {
      _json["userAgent"] = userAgent;
    }
    if (versionId != null) {
      _json["versionId"] = versionId;
    }
    if (wasLoadingRequest != null) {
      _json["wasLoadingRequest"] = wasLoadingRequest;
    }
    return _json;
  }
}

/** Specifies a location in a source file. */
class SourceLocation {
  /**
   * Source file name. May or may not be a fully qualified name, depending on
   * the runtime environment.
   */
  core.String file;
  /**
   * Human-readable name of the function or method being invoked, with optional
   * context such as the class or package name, for use in contexts such as the
   * logs viewer where file:line number is less meaningful. This may vary by
   * language, for example: in Java: qual.if.ied.Class.method in Go:
   * dir/package.func in Python: function ...
   */
  core.String functionName;
  /** Line within the source file. */
  core.String line;

  SourceLocation();

  SourceLocation.fromJson(core.Map _json) {
    if (_json.containsKey("file")) {
      file = _json["file"];
    }
    if (_json.containsKey("functionName")) {
      functionName = _json["functionName"];
    }
    if (_json.containsKey("line")) {
      line = _json["line"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (file != null) {
      _json["file"] = file;
    }
    if (functionName != null) {
      _json["functionName"] = functionName;
    }
    if (line != null) {
      _json["line"] = line;
    }
    return _json;
  }
}

/**
 * A reference to a particular snapshot of the source tree used to build and
 * deploy an application.
 */
class SourceReference {
  /**
   * Optional. A URI string identifying the repository. Example:
   * "https://github.com/GoogleCloudPlatform/kubernetes.git"
   */
  core.String repository;
  /**
   * The canonical (and persistent) identifier of the deployed revision. Example
   * (git): "0035781c50ec7aa23385dc841529ce8a4b70db1b"
   */
  core.String revisionId;

  SourceReference();

  SourceReference.fromJson(core.Map _json) {
    if (_json.containsKey("repository")) {
      repository = _json["repository"];
    }
    if (_json.containsKey("revisionId")) {
      revisionId = _json["revisionId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (repository != null) {
      _json["repository"] = repository;
    }
    if (revisionId != null) {
      _json["revisionId"] = revisionId;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different programming environments, including REST APIs and RPC APIs. It is
 * used by [gRPC](https://github.com/grpc). The error model is designed to be: -
 * Simple to use and understand for most users - Flexible enough to meet
 * unexpected needs # Overview The `Status` message contains three pieces of
 * data: error code, error message, and error details. The error code should be
 * an enum value of google.rpc.Code, but it may accept additional error codes if
 * needed. The error message should be a developer-facing English message that
 * helps developers *understand* and *resolve* the error. If a localized
 * user-facing error message is needed, put the localized message in the error
 * details or localize it in the client. The optional error details may contain
 * arbitrary information about the error. There is a predefined set of error
 * detail types in the package `google.rpc` which can be used for common error
 * conditions. # Language mapping The `Status` message is the logical
 * representation of the error model, but it is not necessarily the actual wire
 * format. When the `Status` message is exposed in different client libraries
 * and different wire protocols, it can be mapped differently. For example, it
 * will likely be mapped to some exceptions in Java, but more likely mapped to
 * some error codes in C. # Other uses The error model and the `Status` message
 * can be used in a variety of environments, either with or without APIs, to
 * provide a consistent developer experience across different environments.
 * Example uses of this error model include: - Partial errors. If a service
 * needs to return partial errors to the client, it may embed the `Status` in
 * the normal response to indicate the partial errors. - Workflow errors. A
 * typical workflow has multiple steps. Each step may have a `Status` message
 * for error reporting purpose. - Batch operations. If a client uses batch
 * request and batch response, the `Status` message should be used directly
 * inside batch response, one for each error sub-response. - Asynchronous
 * operations. If an API call embeds asynchronous operation results in its
 * response, the status of those operations should be represented directly using
 * the `Status` message. - Logging. If some API errors are stored in logs, the
 * message `Status` could be used directly after any stripping needed for
 * security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details. There will be a common set
   * of message types for APIs to use.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.List<core.Map<core.String, core.Object>> details;
  /**
   * A developer-facing error message, which should be in English. Any
   * user-facing error message should be localized and sent in the
   * google.rpc.Status.details field, or localized by the client.
   */
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = _json["details"];
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
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

/** The parameters to WriteLogEntries. */
class WriteLogEntriesRequest {
  /**
   * Metadata labels that apply to all log entries in this request, so that you
   * don't have to repeat them in each log entry's `metadata.labels` field. If
   * any of the log entries contains a (key, value) with the same key that is in
   * `commonLabels`, then the entry's (key, value) overrides the one in
   * `commonLabels`.
   */
  core.Map<core.String, core.String> commonLabels;
  /** Log entries to insert. */
  core.List<LogEntry> entries;

  WriteLogEntriesRequest();

  WriteLogEntriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("commonLabels")) {
      commonLabels = _json["commonLabels"];
    }
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new LogEntry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (commonLabels != null) {
      _json["commonLabels"] = commonLabels;
    }
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Result returned from WriteLogEntries. empty */
class WriteLogEntriesResponse {

  WriteLogEntriesResponse();

  WriteLogEntriesResponse.fromJson(core.Map _json) {
  }

  core.Map toJson() {
    var _json = new core.Map();
    return _json;
  }
}
