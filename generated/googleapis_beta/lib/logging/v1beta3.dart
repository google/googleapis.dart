// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.logging.v1beta3;

import 'dart:core' as core;
import 'dart:collection' as collection;
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


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  LoggingApi(http.Client client, {core.String rootUrl: "https://logging.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogServicesResourceApi get logServices => new ProjectsLogServicesResourceApi(_requester);
  ProjectsLogsResourceApi get logs => new ProjectsLogsResourceApi(_requester);

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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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
   * this method  will complete with the same error.
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



/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request or
 * the response type of an API method. For instance: service Foo { rpc
 * Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }
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


/** Result returned from ListLogServiceIndexesRequest. */
class ListLogServiceIndexesResponse {
  /**
   * If there are more results, then `nextPageToken` is returned in the
   * response. To get the next batch of indexes, use the value of
   * `nextPageToken` as `pageToken` in the next call of
   * `ListLogServiceIndexess`. If `nextPageToken` is empty, then there are no
   * more results.
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


/** A log object. */
class Log {
  /**
   * Name used when displaying the log to the user (for example, in a UI).
   * Example: `"activity_log"`
   */
  core.String displayName;

  /**
   * REQUIRED: The log's name name. Example:
   * `"compute.googleapis.com/activity_log"`.
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
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}


/**
 * Represents the RPC error status for Google APIs. See http://go/errormodel for
 * details.
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
   * A developer-facing error message, which should be in English. The
   * user-facing error message should be localized and stored in the
   * [google.rpc.Status.details][google.rpc.Status.details] field.
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
   * Metadata labels that apply to all entries in this request. If one of the
   * log entries contains a (key, value) with the same key that is in
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
