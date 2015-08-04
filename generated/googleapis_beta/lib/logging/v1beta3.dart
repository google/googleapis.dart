// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.logging.v1beta3;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client logging/v1beta3';

/**
 * Google Cloud Logging API lets you create logs, ingest log entries, and manage
 * log sinks.
 */
class LoggingApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

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
   * Lists log services associated with log entries ingested for a project.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The project resource whose services
   * are to be listed.
   *
   * [log] - The name of the log resource whose services are to be listed. log
   * for which to list services. When empty, all services are listed.
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
  async.Future<ListLogServicesResponse> list(core.String projectsId, {core.String log, core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectsId == null) {
      throw new core.ArgumentError("Parameter projectsId is required.");
    }
    if (log != null) {
      _queryParams["log"] = [log];
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
   * Lists log service indexes associated with a log service.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `serviceName`. A log service resource of the form
   * `/projects / * /logServices / * `. The service indexes of the log service
   * are returned. Example:
   * `"/projects/myProj/logServices/appengine.googleapis.com"`.
   *
   * [logServicesId] - Part of `serviceName`. See documentation of `projectsId`.
   *
   * [indexPrefix] - Restricts the indexes returned to be those with a specified
   * prefix. The prefix has the form `"/label_value/label_value/..."`, in order
   * corresponding to the [`LogService
   * indexKeys`][google.logging.v1.LogService.index_keys]. Non-empty prefixes
   * must begin with `/` . Example prefixes: + `"/myModule/"` retrieves App
   * Engine versions associated with `myModule`. The trailing slash terminates
   * the value. + `"/myModule"` retrieves App Engine modules with names
   * beginning with `myModule`. + `""` retrieves all indexes.
   *
   * [depth] - A limit to the number of levels of the index hierarchy that are
   * expanded. If `depth` is 0, it defaults to the level specified by the prefix
   * field (the number of slash separators). The default empty prefix implies a
   * `depth` of 1. It is an error for `depth` to be any non-zero value less than
   * the number of components in `indexPrefix`.
   *
   * [log] - A log resource like `/projects/project_id/logs/log_name`,
   * identifying the log for which to list service indexes.
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
  async.Future<ListLogServiceIndexesResponse> list(core.String projectsId, core.String logServicesId, {core.String indexPrefix, core.int depth, core.String log, core.int pageSize, core.String pageToken}) {
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
    if (log != null) {
      _queryParams["log"] = [log];
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
   * Creates the specified log service sink resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `serviceName`. The name of the service in which to
   * create a sink.
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
   * Deletes the specified log service sink.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink to delete.
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
   * Gets the specified log service sink resource.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink to return.
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
   * Lists log service sinks associated with the specified service.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `serviceName`. The name of the service for which to
   * list sinks.
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
   * Creates or update the specified log service sink resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink to update.
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
   * Deletes the specified log resource and all log entries contained in it.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `logName`. The log resource to delete.
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
   * Lists log resources belonging to the specified project.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The project name for which to list
   * the log resources.
   *
   * [serviceName] - A service name for which to list logs. Only logs containing
   * entries whose metadata includes this service name are returned. If
   * `serviceName` and `serviceIndexPrefix` are both empty, then all log names
   * are returned. To list all log names, regardless of service, leave both the
   * `serviceName` and `serviceIndexPrefix` empty. To list log names containing
   * entries with a particular service name (or explicitly empty service name)
   * set `serviceName` to the desired value and `serviceIndexPrefix` to `"/"`.
   *
   * [serviceIndexPrefix] - A log service index prefix for which to list logs.
   * Only logs containing entries whose metadata that includes these label
   * values (associated with index keys) are returned. The prefix is a slash
   * separated list of values, and need not specify all index labels. An empty
   * index (or a single slash) matches all log service indexes.
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
   * Creates one or more log entries in a log. You must supply a list of
   * `LogEntry` objects, named `entries`. Each `LogEntry` object must contain a
   * payload object and a `LogEntryMetadata` object that describes the entry.
   * You must fill in all the fields of the entry, metadata, and payload. You
   * can also supply a map, `commonLabels`, that supplies default (key, value)
   * data for the `entries[].metadata.labels` maps, saving you the trouble of
   * creating identical copies for each entry.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `logName`. The name of the log resource into which
   * to insert the log entries.
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
   * Creates the specified log sink resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `logName`. The log in which to create a sink
   * resource.
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
   * Deletes the specified log sink resource.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink to delete.
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
   * Gets the specified log sink resource.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink resource to return.
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
   * Lists log sinks associated with the specified log.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `logName`. The log for which to list sinks.
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
   * Creates or updates the specified log sink resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink to update.
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


class ProjectsSinksResourceApi {
  final commons.ApiRequester _requester;

  ProjectsSinksResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates the specified sink resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The name of the project in which to
   * create a sink.
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
   * Deletes the specified sink.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink to delete.
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
   * Gets the specified sink resource.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink to return.
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
   * Lists sinks associated with the specified project.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `projectName`. The name of the project for which to
   * list sinks.
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
   * Creates or update the specified sink resource.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectsId] - Part of `sinkName`. The name of the sink to update.
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



/** BigQuery request and response messages for audit log. */
class AuditData {
  /** Dataset insert request. */
  DatasetInsertRequest datasetInsertRequest;
  /** Dataset insert response. */
  DatasetInsertResponse datasetInsertResponse;
  /** Dataset list request. */
  DatasetListRequest datasetListRequest;
  /** Dataset update request. */
  DatasetUpdateRequest datasetUpdateRequest;
  /** Dataset update response. */
  DatasetUpdateResponse datasetUpdateResponse;
  /** Job get query results request. */
  JobGetQueryResultsRequest jobGetQueryResultsRequest;
  /** Job get query results response. */
  JobGetQueryResultsResponse jobGetQueryResultsResponse;
  /** Job insert request. */
  JobInsertRequest jobInsertRequest;
  /** Job query-done response. Use this information for usage analysis. */
  JobQueryDoneResponse jobQueryDoneResponse;
  /** Job query request. */
  JobQueryRequest jobQueryRequest;
  /** Job query response. */
  JobQueryResponse jobQueryResponse;
  /** Table data-list request. */
  TableDataListRequest tableDataListRequest;
  /** Table insert request. */
  TableInsertRequest tableInsertRequest;
  /** Table insert response. */
  TableInsertResponse tableInsertResponse;
  /** Table update request. */
  TableUpdateRequest tableUpdateRequest;
  /** Table update response. */
  TableUpdateResponse tableUpdateResponse;

  AuditData();

  AuditData.fromJson(core.Map _json) {
    if (_json.containsKey("datasetInsertRequest")) {
      datasetInsertRequest = new DatasetInsertRequest.fromJson(_json["datasetInsertRequest"]);
    }
    if (_json.containsKey("datasetInsertResponse")) {
      datasetInsertResponse = new DatasetInsertResponse.fromJson(_json["datasetInsertResponse"]);
    }
    if (_json.containsKey("datasetListRequest")) {
      datasetListRequest = new DatasetListRequest.fromJson(_json["datasetListRequest"]);
    }
    if (_json.containsKey("datasetUpdateRequest")) {
      datasetUpdateRequest = new DatasetUpdateRequest.fromJson(_json["datasetUpdateRequest"]);
    }
    if (_json.containsKey("datasetUpdateResponse")) {
      datasetUpdateResponse = new DatasetUpdateResponse.fromJson(_json["datasetUpdateResponse"]);
    }
    if (_json.containsKey("jobGetQueryResultsRequest")) {
      jobGetQueryResultsRequest = new JobGetQueryResultsRequest.fromJson(_json["jobGetQueryResultsRequest"]);
    }
    if (_json.containsKey("jobGetQueryResultsResponse")) {
      jobGetQueryResultsResponse = new JobGetQueryResultsResponse.fromJson(_json["jobGetQueryResultsResponse"]);
    }
    if (_json.containsKey("jobInsertRequest")) {
      jobInsertRequest = new JobInsertRequest.fromJson(_json["jobInsertRequest"]);
    }
    if (_json.containsKey("jobQueryDoneResponse")) {
      jobQueryDoneResponse = new JobQueryDoneResponse.fromJson(_json["jobQueryDoneResponse"]);
    }
    if (_json.containsKey("jobQueryRequest")) {
      jobQueryRequest = new JobQueryRequest.fromJson(_json["jobQueryRequest"]);
    }
    if (_json.containsKey("jobQueryResponse")) {
      jobQueryResponse = new JobQueryResponse.fromJson(_json["jobQueryResponse"]);
    }
    if (_json.containsKey("tableDataListRequest")) {
      tableDataListRequest = new TableDataListRequest.fromJson(_json["tableDataListRequest"]);
    }
    if (_json.containsKey("tableInsertRequest")) {
      tableInsertRequest = new TableInsertRequest.fromJson(_json["tableInsertRequest"]);
    }
    if (_json.containsKey("tableInsertResponse")) {
      tableInsertResponse = new TableInsertResponse.fromJson(_json["tableInsertResponse"]);
    }
    if (_json.containsKey("tableUpdateRequest")) {
      tableUpdateRequest = new TableUpdateRequest.fromJson(_json["tableUpdateRequest"]);
    }
    if (_json.containsKey("tableUpdateResponse")) {
      tableUpdateResponse = new TableUpdateResponse.fromJson(_json["tableUpdateResponse"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetInsertRequest != null) {
      _json["datasetInsertRequest"] = (datasetInsertRequest).toJson();
    }
    if (datasetInsertResponse != null) {
      _json["datasetInsertResponse"] = (datasetInsertResponse).toJson();
    }
    if (datasetListRequest != null) {
      _json["datasetListRequest"] = (datasetListRequest).toJson();
    }
    if (datasetUpdateRequest != null) {
      _json["datasetUpdateRequest"] = (datasetUpdateRequest).toJson();
    }
    if (datasetUpdateResponse != null) {
      _json["datasetUpdateResponse"] = (datasetUpdateResponse).toJson();
    }
    if (jobGetQueryResultsRequest != null) {
      _json["jobGetQueryResultsRequest"] = (jobGetQueryResultsRequest).toJson();
    }
    if (jobGetQueryResultsResponse != null) {
      _json["jobGetQueryResultsResponse"] = (jobGetQueryResultsResponse).toJson();
    }
    if (jobInsertRequest != null) {
      _json["jobInsertRequest"] = (jobInsertRequest).toJson();
    }
    if (jobQueryDoneResponse != null) {
      _json["jobQueryDoneResponse"] = (jobQueryDoneResponse).toJson();
    }
    if (jobQueryRequest != null) {
      _json["jobQueryRequest"] = (jobQueryRequest).toJson();
    }
    if (jobQueryResponse != null) {
      _json["jobQueryResponse"] = (jobQueryResponse).toJson();
    }
    if (tableDataListRequest != null) {
      _json["tableDataListRequest"] = (tableDataListRequest).toJson();
    }
    if (tableInsertRequest != null) {
      _json["tableInsertRequest"] = (tableInsertRequest).toJson();
    }
    if (tableInsertResponse != null) {
      _json["tableInsertResponse"] = (tableInsertResponse).toJson();
    }
    if (tableUpdateRequest != null) {
      _json["tableUpdateRequest"] = (tableUpdateRequest).toJson();
    }
    if (tableUpdateResponse != null) {
      _json["tableUpdateResponse"] = (tableUpdateResponse).toJson();
    }
    return _json;
  }
}

/** Common audit log format for Google Cloud Platform API calls. */
class AuditLog {
  /** Authentication information about the call. */
  AuthenticationInfo authenticationInfo;
  /**
   * Authorization information about the call. If there are multiple resources
   * or permissions involved in authorizing the request, there will be one
   * AuthorizationInfo element for each {resource, permission} tuple.
   */
  core.List<AuthorizationInfo> authorizationInfo;
  /** Service-specific data for BigQuery. */
  AuditData bigqueryData;
  /**
   * Name of the service method or operation. Defined by the service. For API
   * call events, should match the name of the API method. For example,
   * `google.datastore.v1.Datastore.RunQuery`
   * `google.logging.v1.LoggingService.DeleteLog`
   */
  core.String methodName;
  /**
   * If applicable, the number of items returned from a List or Query API
   * method.
   */
  core.String numResponseItems;
  /** Metadata about the request. */
  RequestMetadata requestMetadata;
  /**
   * Resource name of the resource or collection that is the target of this
   * request, as a scheme-less URI, not including the API service name. For
   * example: shelves/shelf_id/books shelves/shelf_id/books/book_id
   */
  core.String resourceName;
  /**
   * Service specific data about the request, response, and other event data.
   * This should include all request parameters or response elements, except for
   * parameters that are large or privacy-sensitive. It should never contain
   * user-generated data (such as file contents).
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> serviceData;
  /**
   * Name of the API service for the request. e.g., datastore.googleapis.com
   */
  core.String serviceName;
  /** The status of the overall API call. */
  Status status;

  AuditLog();

  AuditLog.fromJson(core.Map _json) {
    if (_json.containsKey("authenticationInfo")) {
      authenticationInfo = new AuthenticationInfo.fromJson(_json["authenticationInfo"]);
    }
    if (_json.containsKey("authorizationInfo")) {
      authorizationInfo = _json["authorizationInfo"].map((value) => new AuthorizationInfo.fromJson(value)).toList();
    }
    if (_json.containsKey("bigqueryData")) {
      bigqueryData = new AuditData.fromJson(_json["bigqueryData"]);
    }
    if (_json.containsKey("methodName")) {
      methodName = _json["methodName"];
    }
    if (_json.containsKey("numResponseItems")) {
      numResponseItems = _json["numResponseItems"];
    }
    if (_json.containsKey("requestMetadata")) {
      requestMetadata = new RequestMetadata.fromJson(_json["requestMetadata"]);
    }
    if (_json.containsKey("resourceName")) {
      resourceName = _json["resourceName"];
    }
    if (_json.containsKey("serviceData")) {
      serviceData = _json["serviceData"];
    }
    if (_json.containsKey("serviceName")) {
      serviceName = _json["serviceName"];
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (authenticationInfo != null) {
      _json["authenticationInfo"] = (authenticationInfo).toJson();
    }
    if (authorizationInfo != null) {
      _json["authorizationInfo"] = authorizationInfo.map((value) => (value).toJson()).toList();
    }
    if (bigqueryData != null) {
      _json["bigqueryData"] = (bigqueryData).toJson();
    }
    if (methodName != null) {
      _json["methodName"] = methodName;
    }
    if (numResponseItems != null) {
      _json["numResponseItems"] = numResponseItems;
    }
    if (requestMetadata != null) {
      _json["requestMetadata"] = (requestMetadata).toJson();
    }
    if (resourceName != null) {
      _json["resourceName"] = resourceName;
    }
    if (serviceData != null) {
      _json["serviceData"] = serviceData;
    }
    if (serviceName != null) {
      _json["serviceName"] = serviceName;
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    return _json;
  }
}

/** Authentication information for the call. */
class AuthenticationInfo {
  /** Email address of the authenticated user making the request */
  core.String principalEmail;

  AuthenticationInfo();

  AuthenticationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("principalEmail")) {
      principalEmail = _json["principalEmail"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (principalEmail != null) {
      _json["principalEmail"] = principalEmail;
    }
    return _json;
  }
}

/** Authorization information for the call. */
class AuthorizationInfo {
  /**
   * Whether or not authorization for this resource and permission was granted.
   */
  core.bool granted;
  /** The required IAM permission. */
  core.String permission;
  /**
   * The resource being accessed, as a REST-style string. For example:
   * `bigquery.googlapis.com/projects/PROJECTID/datasets/DATASETID`
   */
  core.String resource;

  AuthorizationInfo();

  AuthorizationInfo.fromJson(core.Map _json) {
    if (_json.containsKey("granted")) {
      granted = _json["granted"];
    }
    if (_json.containsKey("permission")) {
      permission = _json["permission"];
    }
    if (_json.containsKey("resource")) {
      resource = _json["resource"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (granted != null) {
      _json["granted"] = granted;
    }
    if (permission != null) {
      _json["permission"] = permission;
    }
    if (resource != null) {
      _json["resource"] = resource;
    }
    return _json;
  }
}

/** Access control list. */
class BigQueryAcl {
  /** Access control entry list. */
  core.List<Entry> entries;

  BigQueryAcl();

  BigQueryAcl.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new Entry.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** BigQuery dataset information. */
class Dataset {
  /** Access contol list for this dataset. */
  BigQueryAcl acl;
  /** The creation time for this dataset. */
  core.String createTime;
  /** The name of this dataset. */
  DatasetName datasetName;
  /**
   * The number of milliseconds which should be added to the creation time to
   * determine the expiration time for newly created tables. If this value is
   * null then no expiration time will be set for new tables.
   */
  core.String defaultTableExpireDuration;
  /** User-modifiable metadata for this dataset. */
  DatasetInfo info;
  /** The last modified time for this dataset. */
  core.String updateTime;

  Dataset();

  Dataset.fromJson(core.Map _json) {
    if (_json.containsKey("acl")) {
      acl = new BigQueryAcl.fromJson(_json["acl"]);
    }
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("datasetName")) {
      datasetName = new DatasetName.fromJson(_json["datasetName"]);
    }
    if (_json.containsKey("defaultTableExpireDuration")) {
      defaultTableExpireDuration = _json["defaultTableExpireDuration"];
    }
    if (_json.containsKey("info")) {
      info = new DatasetInfo.fromJson(_json["info"]);
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (acl != null) {
      _json["acl"] = (acl).toJson();
    }
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (datasetName != null) {
      _json["datasetName"] = (datasetName).toJson();
    }
    if (defaultTableExpireDuration != null) {
      _json["defaultTableExpireDuration"] = defaultTableExpireDuration;
    }
    if (info != null) {
      _json["info"] = (info).toJson();
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/** User-provided metadata for a dataset, primarily for display in the UI. */
class DatasetInfo {
  /**
   * The description of a dataset. This can be several sentences or paragraphs
   * describing the dataset contents in detail.
   */
  core.String description;
  /**
   * The human-readable name of a dataset. This should be a short phrase
   * identifying the dataset (e.g., "Analytics Data 2011").
   */
  core.String friendlyName;

  DatasetInfo();

  DatasetInfo.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("friendlyName")) {
      friendlyName = _json["friendlyName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (friendlyName != null) {
      _json["friendlyName"] = friendlyName;
    }
    return _json;
  }
}

/** Dataset insert request. */
class DatasetInsertRequest {
  /** Dataset insert payload. */
  Dataset resource;

  DatasetInsertRequest();

  DatasetInsertRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Dataset.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/** Dataset insert response. */
class DatasetInsertResponse {
  /** Final state of inserted dataset. */
  Dataset resource;

  DatasetInsertResponse();

  DatasetInsertResponse.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Dataset.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/** Dataset list request. */
class DatasetListRequest {
  /** Whether to list all datasets, including hidden ones. */
  core.bool listAll;

  DatasetListRequest();

  DatasetListRequest.fromJson(core.Map _json) {
    if (_json.containsKey("listAll")) {
      listAll = _json["listAll"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (listAll != null) {
      _json["listAll"] = listAll;
    }
    return _json;
  }
}

/** Fully qualified name for a dataset. */
class DatasetName {
  /** The ID of the dataset (scoped to the project above). */
  core.String datasetId;
  /**
   * A string containing the id of this project. The id may be the alphanumeric
   * project ID, or the project number.
   */
  core.String projectId;

  DatasetName();

  DatasetName.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/** Dataset update request. */
class DatasetUpdateRequest {
  /** Dataset update payload. */
  Dataset resource;

  DatasetUpdateRequest();

  DatasetUpdateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Dataset.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/** Dataset update response. */
class DatasetUpdateResponse {
  /** Final state of updated dataset. */
  Dataset resource;

  DatasetUpdateResponse();

  DatasetUpdateResponse.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Dataset.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
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

/** Access control entry. */
class Entry {
  /** Grants access to all members of a domain. */
  core.String domain;
  /** Grants access to a group, by e-mail. */
  core.String groupEmail;
  /** Granted role. Valid roles are READER, WRITER, OWNER. */
  core.String role;
  /**
   * Grants access to special groups. Valid groups are PROJECT_OWNERS,
   * PROJECT_READERS, PROJECT_WRITERS and ALL_AUTHENTICATED_USERS.
   */
  core.String specialGroup;
  /** Grants access to a user, by e-mail. */
  core.String userEmail;
  /** Grants access to a BigQuery View. */
  TableName viewName;

  Entry();

  Entry.fromJson(core.Map _json) {
    if (_json.containsKey("domain")) {
      domain = _json["domain"];
    }
    if (_json.containsKey("groupEmail")) {
      groupEmail = _json["groupEmail"];
    }
    if (_json.containsKey("role")) {
      role = _json["role"];
    }
    if (_json.containsKey("specialGroup")) {
      specialGroup = _json["specialGroup"];
    }
    if (_json.containsKey("userEmail")) {
      userEmail = _json["userEmail"];
    }
    if (_json.containsKey("viewName")) {
      viewName = new TableName.fromJson(_json["viewName"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (domain != null) {
      _json["domain"] = domain;
    }
    if (groupEmail != null) {
      _json["groupEmail"] = groupEmail;
    }
    if (role != null) {
      _json["role"] = role;
    }
    if (specialGroup != null) {
      _json["specialGroup"] = specialGroup;
    }
    if (userEmail != null) {
      _json["userEmail"] = userEmail;
    }
    if (viewName != null) {
      _json["viewName"] = (viewName).toJson();
    }
    return _json;
  }
}

/**
 * Describes an extract job, which exports data to an external source via the
 * export pipeline.
 */
class Extract {
  /**
   * URI or URIs where extracted data should be written. Currently, only
   * Bigstore URIs are supported (e.g., "gs://bucket/object"). If more than one
   * URI given, output will be divided into 'partitions' of data, with each
   * partition containing one or more files. If more than one URI is given, each
   * URI must contain exactly one '*' which will be replaced with the file
   * number (within the partition) padded out to 9 digits.
   */
  core.List<core.String> destinationUris;
  /** Source table. */
  TableName sourceTable;

  Extract();

  Extract.fromJson(core.Map _json) {
    if (_json.containsKey("destinationUris")) {
      destinationUris = _json["destinationUris"];
    }
    if (_json.containsKey("sourceTable")) {
      sourceTable = new TableName.fromJson(_json["sourceTable"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (destinationUris != null) {
      _json["destinationUris"] = destinationUris;
    }
    if (sourceTable != null) {
      _json["sourceTable"] = (sourceTable).toJson();
    }
    return _json;
  }
}

/** BigQuery field schema. */
class FieldSchema {
  /** Column mode */
  core.String mode;
  /** Column name Matches: [A-Za-z_][A-Za-z_0-9]{0,127} */
  core.String name;
  /** Present iff type == RECORD. */
  TableSchema schema;
  /** Column type */
  core.String type;

  FieldSchema();

  FieldSchema.fromJson(core.Map _json) {
    if (_json.containsKey("mode")) {
      mode = _json["mode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("schema")) {
      schema = new TableSchema.fromJson(_json["schema"]);
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (mode != null) {
      _json["mode"] = mode;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (schema != null) {
      _json["schema"] = (schema).toJson();
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/** A common proto for logging HTTP requests. */
class HttpRequest {
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

  HttpRequest();

  HttpRequest.fromJson(core.Map _json) {
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
  }

  core.Map toJson() {
    var _json = new core.Map();
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
    return _json;
  }
}

/** Combines all of the information about a job. */
class Job {
  /** Job configuration. */
  JobConfiguration jobConfiguration;
  /** Job name. */
  JobName jobName;
  /** Job statistics. */
  JobStatistics jobStatistics;
  /** Job status. */
  JobStatus jobStatus;

  Job();

  Job.fromJson(core.Map _json) {
    if (_json.containsKey("jobConfiguration")) {
      jobConfiguration = new JobConfiguration.fromJson(_json["jobConfiguration"]);
    }
    if (_json.containsKey("jobName")) {
      jobName = new JobName.fromJson(_json["jobName"]);
    }
    if (_json.containsKey("jobStatistics")) {
      jobStatistics = new JobStatistics.fromJson(_json["jobStatistics"]);
    }
    if (_json.containsKey("jobStatus")) {
      jobStatus = new JobStatus.fromJson(_json["jobStatus"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobConfiguration != null) {
      _json["jobConfiguration"] = (jobConfiguration).toJson();
    }
    if (jobName != null) {
      _json["jobName"] = (jobName).toJson();
    }
    if (jobStatistics != null) {
      _json["jobStatistics"] = (jobStatistics).toJson();
    }
    if (jobStatus != null) {
      _json["jobStatus"] = (jobStatus).toJson();
    }
    return _json;
  }
}

/** Job configuration information. */
class JobConfiguration {
  /** If set, don't actually run the job. Just check that it would run. */
  core.bool dryRun;
  /** Extract job information. */
  Extract extract;
  /** Load job information. */
  Load load;
  /** Query job information. */
  Query query;
  /** TableCopy job information. */
  TableCopy tableCopy;

  JobConfiguration();

  JobConfiguration.fromJson(core.Map _json) {
    if (_json.containsKey("dryRun")) {
      dryRun = _json["dryRun"];
    }
    if (_json.containsKey("extract")) {
      extract = new Extract.fromJson(_json["extract"]);
    }
    if (_json.containsKey("load")) {
      load = new Load.fromJson(_json["load"]);
    }
    if (_json.containsKey("query")) {
      query = new Query.fromJson(_json["query"]);
    }
    if (_json.containsKey("tableCopy")) {
      tableCopy = new TableCopy.fromJson(_json["tableCopy"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (dryRun != null) {
      _json["dryRun"] = dryRun;
    }
    if (extract != null) {
      _json["extract"] = (extract).toJson();
    }
    if (load != null) {
      _json["load"] = (load).toJson();
    }
    if (query != null) {
      _json["query"] = (query).toJson();
    }
    if (tableCopy != null) {
      _json["tableCopy"] = (tableCopy).toJson();
    }
    return _json;
  }
}

/** Job get-query-results request. */
class JobGetQueryResultsRequest {
  /** Maximum number of results to return. */
  core.int maxResults;
  /** Row number to start returning results from. */
  core.String startRow;

  JobGetQueryResultsRequest();

  JobGetQueryResultsRequest.fromJson(core.Map _json) {
    if (_json.containsKey("maxResults")) {
      maxResults = _json["maxResults"];
    }
    if (_json.containsKey("startRow")) {
      startRow = _json["startRow"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maxResults != null) {
      _json["maxResults"] = maxResults;
    }
    if (startRow != null) {
      _json["startRow"] = startRow;
    }
    return _json;
  }
}

/** Job get-query-results response. */
class JobGetQueryResultsResponse {
  /**
   * Job that was created to run the query. Includes job state, job statistics,
   * and job errors (if any). To determine whether the job has completed, check
   * that job.status.state == DONE. If job.status.error_result is set, then the
   * job failed. If the job has not yet completed, call GetQueryResults again.
   */
  Job job;
  /** Total number of results in query results. */
  core.String totalResults;

  JobGetQueryResultsResponse();

  JobGetQueryResultsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
    if (_json.containsKey("totalResults")) {
      totalResults = _json["totalResults"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    if (totalResults != null) {
      _json["totalResults"] = totalResults;
    }
    return _json;
  }
}

/** Job insert request. */
class JobInsertRequest {
  /** Job insert payload. */
  Job resource;

  JobInsertRequest();

  JobInsertRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Job.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/** Fully-qualified name for a job. */
class JobName {
  /** The ID of the job (scoped to the project above). */
  core.String jobId;
  /** A string containing the id of this project. */
  core.String projectId;

  JobName();

  JobName.fromJson(core.Map _json) {
    if (_json.containsKey("jobId")) {
      jobId = _json["jobId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (jobId != null) {
      _json["jobId"] = jobId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    return _json;
  }
}

/** Job get query-done response. */
class JobQueryDoneResponse {
  /** Usage information about completed job. */
  Job job;

  JobQueryDoneResponse();

  JobQueryDoneResponse.fromJson(core.Map _json) {
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    return _json;
  }
}

/** Job query request. */
class JobQueryRequest {
  /**
   * Default dataset to use when tables in a query do not have a dataset
   * specified.
   */
  DatasetName defaultDataset;
  /** If set, don't actually run the query. */
  core.bool dryRun;
  /** Maximum number of results to return. */
  core.int maxResults;
  /** Project that the query should be charged to. */
  core.String projectId;
  /** The query to execute. */
  core.String query;

  JobQueryRequest();

  JobQueryRequest.fromJson(core.Map _json) {
    if (_json.containsKey("defaultDataset")) {
      defaultDataset = new DatasetName.fromJson(_json["defaultDataset"]);
    }
    if (_json.containsKey("dryRun")) {
      dryRun = _json["dryRun"];
    }
    if (_json.containsKey("maxResults")) {
      maxResults = _json["maxResults"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (defaultDataset != null) {
      _json["defaultDataset"] = (defaultDataset).toJson();
    }
    if (dryRun != null) {
      _json["dryRun"] = dryRun;
    }
    if (maxResults != null) {
      _json["maxResults"] = maxResults;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (query != null) {
      _json["query"] = query;
    }
    return _json;
  }
}

/** Job query response. */
class JobQueryResponse {
  /** Information about queried job. */
  Job job;
  /** The total number of rows in the complete query result set. */
  core.String totalResults;

  JobQueryResponse();

  JobQueryResponse.fromJson(core.Map _json) {
    if (_json.containsKey("job")) {
      job = new Job.fromJson(_json["job"]);
    }
    if (_json.containsKey("totalResults")) {
      totalResults = _json["totalResults"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (job != null) {
      _json["job"] = (job).toJson();
    }
    if (totalResults != null) {
      _json["totalResults"] = totalResults;
    }
    return _json;
  }
}

/** Job statistics that may change after a job starts. */
class JobStatistics {
  /** Time when the job was created (in milliseconds since the POSIX epoch). */
  core.String createTime;
  /** Time when the job ended. */
  core.String endTime;
  /** Time when the job started. */
  core.String startTime;
  /** Total bytes processed for a job. */
  core.String totalProcessedBytes;

  JobStatistics();

  JobStatistics.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("totalProcessedBytes")) {
      totalProcessedBytes = _json["totalProcessedBytes"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (totalProcessedBytes != null) {
      _json["totalProcessedBytes"] = totalProcessedBytes;
    }
    return _json;
  }
}

/** Running state of a job (whether it is running, failed, etc). */
class JobStatus {
  /** If the job did not complete successfully, this will contain an error. */
  Status error;
  /**
   * State of a job: PENDING, RUNNING, DONE. Includes no information about
   * whether the job was successful or not.
   */
  core.String state;

  JobStatus();

  JobStatus.fromJson(core.Map _json) {
    if (_json.containsKey("error")) {
      error = new Status.fromJson(_json["error"]);
    }
    if (_json.containsKey("state")) {
      state = _json["state"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (state != null) {
      _json["state"] = state;
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
  /** A list of log service index prefixes. */
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
   * The requested log service sinks. If any of the returned `LogSink` objects
   * have an empty `destination` field, then call `logServices.sinks.get` to
   * retrieve the complete `LogSink` object.
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
   * The requested log sinks. If any of the returned `LogSink` objects have an
   * empty `destination` field, then call `logServices.sinks.get` to retrieve
   * the complete `LogSink` object.
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
  /** A list of log resources. */
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
  /** The requested sinks. */
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

/**
 * Describes a load job, which loads data from an external source via the import
 * pipeline.
 */
class Load {
  /** Describes when a job should create a table. */
  core.String createDisposition;
  /** table where the imported data should be written. */
  TableName destinationTable;
  /** Schema for the data to be imported. */
  TableSchema schema;
  /**
   * URIs for the data to be imported. Only Bigstore URIs are supported (e.g.,
   * "gs://bucket/object").
   */
  core.List<core.String> sourceUris;
  /** Describes how writes should affect the table associated with the job. */
  core.String writeDisposition;

  Load();

  Load.fromJson(core.Map _json) {
    if (_json.containsKey("createDisposition")) {
      createDisposition = _json["createDisposition"];
    }
    if (_json.containsKey("destinationTable")) {
      destinationTable = new TableName.fromJson(_json["destinationTable"]);
    }
    if (_json.containsKey("schema")) {
      schema = new TableSchema.fromJson(_json["schema"]);
    }
    if (_json.containsKey("sourceUris")) {
      sourceUris = _json["sourceUris"];
    }
    if (_json.containsKey("writeDisposition")) {
      writeDisposition = _json["writeDisposition"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createDisposition != null) {
      _json["createDisposition"] = createDisposition;
    }
    if (destinationTable != null) {
      _json["destinationTable"] = (destinationTable).toJson();
    }
    if (schema != null) {
      _json["schema"] = (schema).toJson();
    }
    if (sourceUris != null) {
      _json["sourceUris"] = sourceUris;
    }
    if (writeDisposition != null) {
      _json["writeDisposition"] = writeDisposition;
    }
    return _json;
  }
}

/** A log object. */
class Log {
  /**
   * Name used when displaying the log to the user (for example, in a UI).
   * Example: `"activity_log"`
   */
  core.String displayName;
  /**
   * REQUIRED: The log's name. Example: `"compute.googleapis.com/activity_log"`.
   */
  core.String name;
  /** Type URL describing the expected payload type for the log. */
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
  /** The log entry payload, represented as a text string. */
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

/** A problem in a sink or the sink's configuration. */
class LogError {
  /**
   * The resource associated with the error. It may be different from the sink
   * destination. For example, the sink may point to a BigQuery dataset, but the
   * error may refer to a table resource inside the dataset.
   */
  core.String resource;
  /** The description of the last error observed. */
  Status status;
  /**
   * The last time the error was observed, in nanoseconds since the Unix epoch.
   */
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

/** A log service object. */
class LogService {
  /**
   * Label keys used when labeling log entries for this service. The order of
   * the keys is significant, with higher priority keys coming earlier in the
   * list.
   */
  core.List<core.String> indexKeys;
  /** The service's name. */
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

/** An object that describes where a log may be written. */
class LogSink {
  /**
   * The resource to send log entries to. The supported sink resource types are:
   * + Google Cloud Storage: `storage.googleapis.com/BUCKET` or
   * `BUCKET.storage.googleapis.com/` + Google BigQuery:
   * `bigquery.googleapis.com/projects/PROJECT/datasets/DATASET` Currently the
   * Cloud Logging API supports at most one sink for each resource type per log
   * or log service resource.
   */
  core.String destination;
  /** _Output only._ All active errors found for this sink. */
  core.List<LogError> errors;
  /**
   * One Platform filter expression. If provided, only the messages matching the
   * filter will be published.
   */
  core.String filter;
  /**
   * The name of this sink. This is a client-assigned identifier for the
   * resource. This is ignored by UpdateLogSink and UpdateLogServicesSink.
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

/** Represents an amount of money with its currency type. */
class Money {
  /** The 3-letter currency code defined in ISO 4217. */
  core.String currencyCode;
  /**
   * Number of nano (10^-9) units of the amount. The value must be between
   * -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos`
   * must be positive or zero. If `units` is zero, `nanos` can be positive,
   * zero, or negative. If `units` is negative, `nanos` must be negative or
   * zero. For example $-1.75 is represented as `units`=-1 and
   * `nanos`=-750,000,000.
   */
  core.int nanos;
  /**
   * The whole units of the amount. For example if `currencyCode` is `"USD"`,
   * then 1 unit is one US dollar.
   */
  core.String units;

  Money();

  Money.fromJson(core.Map _json) {
    if (_json.containsKey("currencyCode")) {
      currencyCode = _json["currencyCode"];
    }
    if (_json.containsKey("nanos")) {
      nanos = _json["nanos"];
    }
    if (_json.containsKey("units")) {
      units = _json["units"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (currencyCode != null) {
      _json["currencyCode"] = currencyCode;
    }
    if (nanos != null) {
      _json["nanos"] = nanos;
    }
    if (units != null) {
      _json["units"] = units;
    }
    return _json;
  }
}

/** Describes a query job, which executes a SQL-like query. */
class Query {
  /** Describe when a job should create a table. */
  core.String createDisposition;
  /**
   * If a table name is specified without a dataset in a query, this dataset
   * will be added to table name.
   */
  DatasetName defaultDataset;
  /** table where results should be written. */
  TableName destinationTable;
  /** SQL query to run. */
  core.String query;
  /**
   * Additional tables that this query might reference beyond the tables already
   * defined in BigQuery. This is typically used to provide external data
   * references for this query.
   */
  core.List<TableDefinition> tableDefinitions;
  /** Describes how writes should affect the table associated with the job. */
  core.String writeDisposition;

  Query();

  Query.fromJson(core.Map _json) {
    if (_json.containsKey("createDisposition")) {
      createDisposition = _json["createDisposition"];
    }
    if (_json.containsKey("defaultDataset")) {
      defaultDataset = new DatasetName.fromJson(_json["defaultDataset"]);
    }
    if (_json.containsKey("destinationTable")) {
      destinationTable = new TableName.fromJson(_json["destinationTable"]);
    }
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
    if (_json.containsKey("tableDefinitions")) {
      tableDefinitions = _json["tableDefinitions"].map((value) => new TableDefinition.fromJson(value)).toList();
    }
    if (_json.containsKey("writeDisposition")) {
      writeDisposition = _json["writeDisposition"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createDisposition != null) {
      _json["createDisposition"] = createDisposition;
    }
    if (defaultDataset != null) {
      _json["defaultDataset"] = (defaultDataset).toJson();
    }
    if (destinationTable != null) {
      _json["destinationTable"] = (destinationTable).toJson();
    }
    if (query != null) {
      _json["query"] = query;
    }
    if (tableDefinitions != null) {
      _json["tableDefinitions"] = tableDefinitions.map((value) => (value).toJson()).toList();
    }
    if (writeDisposition != null) {
      _json["writeDisposition"] = writeDisposition;
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
  core.List<core.int> get instanceIdAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(instanceId);
  }

  void set instanceIdAsBytes(core.List<core.int> _bytes) {
    instanceId = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
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
   * Request IDs for requests which started later will compare greater as binary
   * strings than those for requests which started earlier.
   */
  core.String requestId;
  core.List<core.int> get requestIdAsBytes {
    return crypto.CryptoUtils.base64StringToBytes(requestId);
  }

  void set requestIdAsBytes(core.List<core.int> _bytes) {
    requestId = crypto.CryptoUtils.bytesToBase64(_bytes, urlSafe: true);
  }
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

/** Metadata about the request. */
class RequestMetadata {
  /** IP address of the caller */
  core.String callerIp;
  /**
   * User-Agent of the caller. This is not authenticated, so a malicious caller
   * could provide a misleading value. For example:
   * `google-api-python-client/1.4.0` The request was made by the Google API
   * client for Python. `Cloud SDK Command Line Tool apitools-client/1.0
   * gcloud/0.9.62` The request was made by the Google Cloud SDK CLI (gcloud).
   * `AppEngine-Google; (+http://code.google.com/appengine; appid: s~my-project`
   * The request was made from the `my-project` App Engine app.
   */
  core.String callerSuppliedUserAgent;

  RequestMetadata();

  RequestMetadata.fromJson(core.Map _json) {
    if (_json.containsKey("callerIp")) {
      callerIp = _json["callerIp"];
    }
    if (_json.containsKey("callerSuppliedUserAgent")) {
      callerSuppliedUserAgent = _json["callerSuppliedUserAgent"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (callerIp != null) {
      _json["callerIp"] = callerIp;
    }
    if (callerSuppliedUserAgent != null) {
      _json["callerSuppliedUserAgent"] = callerSuppliedUserAgent;
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
 * an enum value of [google.rpc.Code][], but it may accept additional error
 * codes if needed. The error message should be a developer-facing English
 * message that helps developers *understand* and *resolve* the error. If a
 * localized user-facing error message is needed, put the localized message in
 * the error details or localize it in the client. The optional error details
 * may contain arbitrary information about the error. There is a predefined set
 * of error detail types in the package `google.rpc` which can be used for
 * common error conditions. # Language mapping The `Status` message is the
 * logical representation of the error model, but it is not necessarily the
 * actual wire format. When the `Status` message is exposed in different client
 * libraries and different wire protocols, it can be mapped differently. For
 * example, it will likely be mapped to some exceptions in Java, but more likely
 * mapped to some error codes in C. # Other uses The error model and the
 * `Status` message can be used in a variety of environments, either with or
 * without APIs, to provide a consistent developer experience across different
 * environments. Example uses of this error model include: - Partial errors. If
 * a service needs to return partial errors to the client, it may embed the
 * `Status` in the normal response to indicate the partial errors. - Workflow
 * errors. A typical workflow has multiple steps. Each step may have a `Status`
 * message for error reporting purpose. - Batch operations. If a client uses
 * batch request and batch response, the `Status` message should be used
 * directly inside batch response, one for each error sub-response. -
 * Asynchronous operations. If an API call embeds asynchronous operation results
 * in its response, the status of those operations should be represented
 * directly using the `Status` message. - Logging. If some API errors are stored
 * in logs, the message `Status` could be used directly after any stripping
 * needed for security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of [google.rpc.Code][]. */
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
   * [google.rpc.Status.details][google.rpc.Status.details] field, or localized
   * by the client.
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

/** Message containing BigQuery table information. */
class Table {
  /** The creation time for this table. */
  core.String createTime;
  /**
   * The expiration date for this table. After this time, the table will not be
   * externally visible and all storage associated with the table may be garbage
   * collected. If this field is not present, the
   * HelixDataset.default_table_expiration_ms value will be used to calculate
   * the expiration time. Otherwise, the table will live until explicitly
   * deleted.
   */
  core.String expireTime;
  /** User-modifiable metadata for this table. */
  TableInfo info;
  /** The table schema. */
  TableSchema schema;
  /** The table and dataset IDs uniquely describing this table. */
  TableName tableName;
  /**
   * The last truncation time for this table. This will only be updated when
   * operation specified with WRITE_TRUNCATE.
   */
  core.String truncateTime;
  /**
   * The table provides a Database View behavior and functionality based on a
   * query.
   */
  TableViewDefinition view;

  Table();

  Table.fromJson(core.Map _json) {
    if (_json.containsKey("createTime")) {
      createTime = _json["createTime"];
    }
    if (_json.containsKey("expireTime")) {
      expireTime = _json["expireTime"];
    }
    if (_json.containsKey("info")) {
      info = new TableInfo.fromJson(_json["info"]);
    }
    if (_json.containsKey("schema")) {
      schema = new TableSchema.fromJson(_json["schema"]);
    }
    if (_json.containsKey("tableName")) {
      tableName = new TableName.fromJson(_json["tableName"]);
    }
    if (_json.containsKey("truncateTime")) {
      truncateTime = _json["truncateTime"];
    }
    if (_json.containsKey("view")) {
      view = new TableViewDefinition.fromJson(_json["view"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createTime != null) {
      _json["createTime"] = createTime;
    }
    if (expireTime != null) {
      _json["expireTime"] = expireTime;
    }
    if (info != null) {
      _json["info"] = (info).toJson();
    }
    if (schema != null) {
      _json["schema"] = (schema).toJson();
    }
    if (tableName != null) {
      _json["tableName"] = (tableName).toJson();
    }
    if (truncateTime != null) {
      _json["truncateTime"] = truncateTime;
    }
    if (view != null) {
      _json["view"] = (view).toJson();
    }
    return _json;
  }
}

/** Describes a copy job, which copies an existing table to another table. */
class TableCopy {
  /** Describe when a job should create a table. */
  core.String createDisposition;
  /** Destination table. */
  TableName destinationTable;
  /** Source tables. */
  core.List<TableName> sourceTables;
  /** Describe whether the copy operation should append or not. */
  core.String writeDisposition;

  TableCopy();

  TableCopy.fromJson(core.Map _json) {
    if (_json.containsKey("createDisposition")) {
      createDisposition = _json["createDisposition"];
    }
    if (_json.containsKey("destinationTable")) {
      destinationTable = new TableName.fromJson(_json["destinationTable"]);
    }
    if (_json.containsKey("sourceTables")) {
      sourceTables = _json["sourceTables"].map((value) => new TableName.fromJson(value)).toList();
    }
    if (_json.containsKey("writeDisposition")) {
      writeDisposition = _json["writeDisposition"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (createDisposition != null) {
      _json["createDisposition"] = createDisposition;
    }
    if (destinationTable != null) {
      _json["destinationTable"] = (destinationTable).toJson();
    }
    if (sourceTables != null) {
      _json["sourceTables"] = sourceTables.map((value) => (value).toJson()).toList();
    }
    if (writeDisposition != null) {
      _json["writeDisposition"] = writeDisposition;
    }
    return _json;
  }
}

/** Table data-list request. */
class TableDataListRequest {
  /** Maximum number of results to return. */
  core.int maxResults;
  /** Starting row offset. */
  core.String startRow;

  TableDataListRequest();

  TableDataListRequest.fromJson(core.Map _json) {
    if (_json.containsKey("maxResults")) {
      maxResults = _json["maxResults"];
    }
    if (_json.containsKey("startRow")) {
      startRow = _json["startRow"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (maxResults != null) {
      _json["maxResults"] = maxResults;
    }
    if (startRow != null) {
      _json["startRow"] = startRow;
    }
    return _json;
  }
}

/**
 * Per Query external tables. These tables can be referenced with 'name' in the
 * query and can be read just like any other table.
 */
class TableDefinition {
  /**
   * Name of the table. This will be used to reference this table in the query.
   */
  core.String name;
  /** URIs for the data to be imported. */
  core.List<core.String> sourceUris;

  TableDefinition();

  TableDefinition.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("sourceUris")) {
      sourceUris = _json["sourceUris"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    if (sourceUris != null) {
      _json["sourceUris"] = sourceUris;
    }
    return _json;
  }
}

/** User-provided metadata for a table, primarily for display in the UI. */
class TableInfo {
  /**
   * The description of a table. This can be several sentences or paragraphs
   * describing the table contents in detail.
   */
  core.String description;
  /**
   * The human-readable name of a table. This should be a short phrase
   * identifying the table (e.g., "Analytics Data - Jan 2011").
   */
  core.String friendlyName;

  TableInfo();

  TableInfo.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("friendlyName")) {
      friendlyName = _json["friendlyName"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (friendlyName != null) {
      _json["friendlyName"] = friendlyName;
    }
    return _json;
  }
}

/** ==== Table =======// Table insert request. */
class TableInsertRequest {
  /** Table insert payload. */
  Table resource;

  TableInsertRequest();

  TableInsertRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Table.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/** Table insert response. */
class TableInsertResponse {
  /** Final state of inserted table. */
  Table resource;

  TableInsertResponse();

  TableInsertResponse.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Table.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/** Fully-qualified name for a table -- referenced through a dataset. */
class TableName {
  /** The ID of the dataset (scoped to the project above). */
  core.String datasetId;
  /**
   * A string containing the id of this project. The id be the alphanumeric
   * project ID, or the project number.
   */
  core.String projectId;
  /** The ID of the table (scoped to the dataset above). */
  core.String tableId;

  TableName();

  TableName.fromJson(core.Map _json) {
    if (_json.containsKey("datasetId")) {
      datasetId = _json["datasetId"];
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("tableId")) {
      tableId = _json["tableId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (datasetId != null) {
      _json["datasetId"] = datasetId;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (tableId != null) {
      _json["tableId"] = tableId;
    }
    return _json;
  }
}

/** BigQuery table schema. */
class TableSchema {
  /** One field per column in the table */
  core.List<FieldSchema> fields;

  TableSchema();

  TableSchema.fromJson(core.Map _json) {
    if (_json.containsKey("fields")) {
      fields = _json["fields"].map((value) => new FieldSchema.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (fields != null) {
      _json["fields"] = fields.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Table update request. */
class TableUpdateRequest {
  /** Table update payload. */
  Table resource;

  TableUpdateRequest();

  TableUpdateRequest.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Table.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/** Table update response. */
class TableUpdateResponse {
  /** Final state of updated table. */
  Table resource;

  TableUpdateResponse();

  TableUpdateResponse.fromJson(core.Map _json) {
    if (_json.containsKey("resource")) {
      resource = new Table.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    return _json;
  }
}

/**
 * Metadata for a table to become like a Database View based on a SQL-like
 * query.
 */
class TableViewDefinition {
  /** Sql query to run. */
  core.String query;

  TableViewDefinition();

  TableViewDefinition.fromJson(core.Map _json) {
    if (_json.containsKey("query")) {
      query = _json["query"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (query != null) {
      _json["query"] = query;
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
