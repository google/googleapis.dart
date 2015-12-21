// This is a generated file (see the discoveryapis_generator project).

library googleapis_beta.logging.v2beta1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client logging/v2beta1';

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

  EntriesResourceApi get entries => new EntriesResourceApi(_requester);
  MonitoredResourceDescriptorsResourceApi get monitoredResourceDescriptors => new MonitoredResourceDescriptorsResourceApi(_requester);
  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  LoggingApi(http.Client client, {core.String rootUrl: "https://logging.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class EntriesResourceApi {
  final commons.ApiRequester _requester;

  EntriesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists log entries. Use this method to examine log entries from Cloud
   * Logging. See [Exporting Logs](/logging/docs/export) for other ways to copy
   * log entries out of Cloud Logging.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [ListLogEntriesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogEntriesResponse> list(ListLogEntriesRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2beta1/entries:list';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListLogEntriesResponse.fromJson(data));
  }

  /**
   * Writes log entries to Cloud Logging. All log entries in Cloud Logging are
   * written by this method.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * Completes with a [WriteLogEntriesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<WriteLogEntriesResponse> write(WriteLogEntriesRequest request) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }

    _url = 'v2beta1/entries:write';

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


class MonitoredResourceDescriptorsResourceApi {
  final commons.ApiRequester _requester;

  MonitoredResourceDescriptorsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Lists monitored resource descriptors that are used by Cloud Logging.
   *
   * Request parameters:
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Fewer results might be returned. You must check for the
   * 'nextPageToken` result to determine if additional results are available,
   * which you can retrieve by passing the `nextPageToken` value in the
   * `pageToken` parameter to the next request.
   *
   * [pageToken] - Optional. If the `pageToken` request parameter is supplied,
   * then the next page of results in the set are retrieved. The `pageToken`
   * parameter must be set with the value of the `nextPageToken` result
   * parameter from the previous request.
   *
   * Completes with a [ListMonitoredResourceDescriptorsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListMonitoredResourceDescriptorsResponse> list({core.int pageSize, core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2beta1/monitoredResourceDescriptors';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListMonitoredResourceDescriptorsResponse.fromJson(data));
  }

}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogsResourceApi get logs => new ProjectsLogsResourceApi(_requester);
  ProjectsMetricsResourceApi get metrics => new ProjectsMetricsResourceApi(_requester);
  ProjectsSinksResourceApi get sinks => new ProjectsSinksResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsLogsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLogsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Deletes a log and all its log entries. The log will reappear if it receives
   * new entries.
   *
   * Request parameters:
   *
   * [logName] - Required. The resource name of the log to delete. Example:
   * `"projects/my-project/logs/syslog"`.
   * Value must have pattern "^projects/[^/] * / logs/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String logName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (logName == null) {
      throw new core.ArgumentError("Parameter logName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$logName');

    var _response = _requester.request(_url,
                                       "DELETE",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
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
   * [projectName] - The resource name of the project in which to create the
   * metric. Example: `"projects/my-project-id"`. The new metric must be
   * provided in the request.
   * Value must have pattern "^projects/[^/]*$".
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> create(LogMetric request, core.String projectName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$projectName') + '/metrics';

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
   * [metricName] - The resource name of the metric to delete. Example:
   * `"projects/my-project-id/metrics/my-metric-id"`.
   * Value must have pattern "^projects/[^/] * / metrics/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String metricName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (metricName == null) {
      throw new core.ArgumentError("Parameter metricName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$metricName');

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
   * [metricName] - The resource name of the desired metric. Example:
   * `"projects/my-project-id/metrics/my-metric-id"`.
   * Value must have pattern "^projects/[^/] * / metrics/[^/]*$".
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> get(core.String metricName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (metricName == null) {
      throw new core.ArgumentError("Parameter metricName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$metricName');

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
   * Lists logs-based metrics.
   *
   * Request parameters:
   *
   * [projectName] - Required. The resource name for the project whose metrics
   * are wanted. Example: `"projects/my-project-id"`.
   * Value must have pattern "^projects/[^/]*$".
   *
   * [pageToken] - Optional. If the `pageToken` request parameter is supplied,
   * then the next page of results in the set are retrieved. The `pageToken`
   * parameter must be set with the value of the `nextPageToken` result
   * parameter from the previous request. The value of `projectName` must be the
   * same as in the previous request.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Fewer results might be returned. You must check for the
   * 'nextPageToken` result to determine if additional results are available,
   * which you can retrieve by passing the `nextPageToken` value in the
   * `pageToken` parameter to the next request.
   *
   * Completes with a [ListLogMetricsResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListLogMetricsResponse> list(core.String projectName, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$projectName') + '/metrics';

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
   * [metricName] - The resource name of the metric to update. Example:
   * `"projects/my-project-id/metrics/my-metric-id"`. The updated metric must be
   * provided in the request and have the same identifier that is specified in
   * `metricName`. If the metric does not exist, it is created.
   * Value must have pattern "^projects/[^/] * / metrics/[^/]*$".
   *
   * Completes with a [LogMetric].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogMetric> update(LogMetric request, core.String metricName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (metricName == null) {
      throw new core.ArgumentError("Parameter metricName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$metricName');

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
   * Creates a sink.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectName] - The resource name of the project in which to create the
   * sink. Example: `"projects/my-project-id"`. The new sink must be provided in
   * the request.
   * Value must have pattern "^projects/[^/]*$".
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> create(LogSink request, core.String projectName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$projectName') + '/sinks';

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
   * Deletes a sink.
   *
   * Request parameters:
   *
   * [sinkName] - The resource name of the sink to delete. Example:
   * `"projects/my-project-id/sinks/my-sink-id"`.
   * Value must have pattern "^projects/[^/] * / sinks/[^/]*$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> delete(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$sinkName');

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
   * Gets a sink.
   *
   * Request parameters:
   *
   * [sinkName] - The resource name of the sink to return. Example:
   * `"projects/my-project-id/sinks/my-sink-id"`.
   * Value must have pattern "^projects/[^/] * / sinks/[^/]*$".
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> get(core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$sinkName');

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
   * Lists sinks.
   *
   * Request parameters:
   *
   * [projectName] - Required. The resource name of the project owning the
   * sinks. Example: `"projects/my-logging-project"`, `"projects/01234567890"`.
   * Value must have pattern "^projects/[^/]*$".
   *
   * [pageToken] - Optional. If the `pageToken` request parameter is supplied,
   * then the next page of results in the set are retrieved. The `pageToken`
   * parameter must be set with the value of the `nextPageToken` result
   * parameter from the previous request. The value of `projectName` must be the
   * same as in the previous request.
   *
   * [pageSize] - Optional. The maximum number of results to return from this
   * request. Fewer results might be returned. You must check for the
   * 'nextPageToken` result to determine if additional results are available,
   * which you can retrieve by passing the `nextPageToken` value in the
   * `pageToken` parameter to the next request.
   *
   * Completes with a [ListSinksResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListSinksResponse> list(core.String projectName, {core.String pageToken, core.int pageSize}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectName == null) {
      throw new core.ArgumentError("Parameter projectName is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$projectName') + '/sinks';

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
   * Creates or updates a sink.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [sinkName] - The resource name of the sink to update. Example:
   * `"projects/my-project-id/sinks/my-sink-id"`. The updated sink must be
   * provided in the request and have the same name that is specified in
   * `sinkName`. If the sink does not exist, it is created.
   * Value must have pattern "^projects/[^/] * / sinks/[^/]*$".
   *
   * Completes with a [LogSink].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<LogSink> update(LogSink request, core.String sinkName) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (sinkName == null) {
      throw new core.ArgumentError("Parameter sinkName is required.");
    }

    _url = 'v2beta1/' + commons.Escaper.ecapeVariableReserved('$sinkName');

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
   * The referer(sic) URL of the request, as defined in [HTTP/1.1 Header Field
   * Definitions](http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html).
   */
  core.String referer;
  /**
   * The IP address (IPv4 or IPv6) of the client that issued the HTTP request.
   * Examples: `"192.168.1.1"`, `"FE80::0202:B3FF:FE1E:8329"`.
   */
  core.String remoteIp;
  /** The request method. Examples: `"GET"`, `"HEAD"`, `"PUT"`, `"POST"`. */
  core.String requestMethod;
  /**
   * The size of the HTTP request message in bytes, including the request
   * headers and the request body.
   */
  core.String requestSize;
  /**
   * The scheme (http, https), the host name, the path and the query portion of
   * the URL that was requested. Example:
   * `"http://example.com/some/info?color=red"`.
   */
  core.String requestUrl;
  /**
   * The size of the HTTP response message sent back to the client, in bytes,
   * including the response headers and the response body.
   */
  core.String responseSize;
  /**
   * The response code indicating the status of response. Examples: 200, 404.
   */
  core.int status;
  /**
   * The user agent sent by the client. Example: `"Mozilla/4.0 (compatible; MSIE
   * 6.0; Windows 98; Q312461; .NET CLR 1.0.3705)"`.
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

/** A description of a label. */
class LabelDescriptor {
  /** A human-readable description for the label. */
  core.String description;
  /** The label key. */
  core.String key;
  /**
   * The type of data that can be assigned to the label.
   * Possible string values are:
   * - "STRING" : A STRING.
   * - "BOOL" : A BOOL.
   * - "INT64" : A INT64.
   */
  core.String valueType;

  LabelDescriptor();

  LabelDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("key")) {
      key = _json["key"];
    }
    if (_json.containsKey("valueType")) {
      valueType = _json["valueType"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (key != null) {
      _json["key"] = key;
    }
    if (valueType != null) {
      _json["valueType"] = valueType;
    }
    return _json;
  }
}

/** The parameters to `ListLogEntries`. */
class ListLogEntriesRequest {
  /**
   * Optional. An [advanced logs filter](/logging/docs/view/advanced_filters).
   * The filter is compared against all log entries in the projects specified by
   * `projectIds`. Only entries that match the filter are retrieved. An empty
   * filter matches all log entries.
   */
  core.String filter;
  /**
   * Optional. How the results should be sorted. Presently, the only permitted
   * values are `"timestamp"` (default) and `"timestamp desc"`. The first option
   * returns entries in order of increasing values of `LogEntry.timestamp`
   * (oldest first), and the second option returns entries in order of
   * decreasing timestamps (newest first). Entries with equal timestamps are
   * returned in order of `LogEntry.insertId`.
   */
  core.String orderBy;
  /**
   * Optional. The maximum number of results to return from this request. Fewer
   * results might be returned. You must check for the 'nextPageToken` result to
   * determine if additional results are available, which you can retrieve by
   * passing the `nextPageToken` value in the `pageToken` parameter to the next
   * request.
   */
  core.int pageSize;
  /**
   * Optional. If the `pageToken` request parameter is supplied, then the next
   * page of results in the set are retrieved. The `pageToken` parameter must be
   * set with the value of the `nextPageToken` result parameter from the
   * previous request. The values of `projectIds`, `filter`, and `orderBy` must
   * be the same as in the previous request.
   */
  core.String pageToken;
  /**
   * Required. One or more project IDs or project numbers from which to retrieve
   * log entries. Examples of a project ID: `"my-project-1A"`, `"1234567890"`.
   */
  core.List<core.String> projectIds;

  ListLogEntriesRequest();

  ListLogEntriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("orderBy")) {
      orderBy = _json["orderBy"];
    }
    if (_json.containsKey("pageSize")) {
      pageSize = _json["pageSize"];
    }
    if (_json.containsKey("pageToken")) {
      pageToken = _json["pageToken"];
    }
    if (_json.containsKey("projectIds")) {
      projectIds = _json["projectIds"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (orderBy != null) {
      _json["orderBy"] = orderBy;
    }
    if (pageSize != null) {
      _json["pageSize"] = pageSize;
    }
    if (pageToken != null) {
      _json["pageToken"] = pageToken;
    }
    if (projectIds != null) {
      _json["projectIds"] = projectIds;
    }
    return _json;
  }
}

/** Result returned from `ListLogEntries`. */
class ListLogEntriesResponse {
  /** A list of log entries. */
  core.List<LogEntry> entries;
  /**
   * If there are more results than were returned, then `nextPageToken` is given
   * a value in the response. To get the next batch of results, call this method
   * again using the value of `nextPageToken` as `pageToken`.
   */
  core.String nextPageToken;

  ListLogEntriesResponse();

  ListLogEntriesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new LogEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    return _json;
  }
}

/** Result returned from ListLogMetrics. */
class ListLogMetricsResponse {
  /** A list of logs-based metrics. */
  core.List<LogMetric> metrics;
  /**
   * If there are more results than were returned, then `nextPageToken` is given
   * a value in the response. To get the next batch of results, call this method
   * again using the value of `nextPageToken` as `pageToken`.
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

/** Result returned from ListMonitoredResourceDescriptors. */
class ListMonitoredResourceDescriptorsResponse {
  /**
   * If there are more results than were returned, then `nextPageToken` is
   * returned in the response. To get the next batch of results, call this
   * method again using the value of `nextPageToken` as `pageToken`.
   */
  core.String nextPageToken;
  /** A list of resource descriptors. */
  core.List<MonitoredResourceDescriptor> resourceDescriptors;

  ListMonitoredResourceDescriptorsResponse();

  ListMonitoredResourceDescriptorsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("resourceDescriptors")) {
      resourceDescriptors = _json["resourceDescriptors"].map((value) => new MonitoredResourceDescriptor.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (resourceDescriptors != null) {
      _json["resourceDescriptors"] = resourceDescriptors.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Result returned from `ListSinks`. */
class ListSinksResponse {
  /**
   * If there are more results than were returned, then `nextPageToken` is given
   * a value in the response. To get the next batch of results, call this method
   * again using the value of `nextPageToken` as `pageToken`.
   */
  core.String nextPageToken;
  /** A list of sinks. */
  core.List<LogSink> sinks;

  ListSinksResponse();

  ListSinksResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("sinks")) {
      sinks = _json["sinks"].map((value) => new LogSink.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (sinks != null) {
      _json["sinks"] = sinks.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** An individual entry in a log. */
class LogEntry {
  /**
   * Optional. Information about the HTTP request associated with this log
   * entry, if applicable.
   */
  HttpRequest httpRequest;
  /**
   * Optional. A unique ID for the log entry. If you provide this field, the
   * logging service considers other log entries in the same log with the same
   * ID as duplicates which can be removed. If omitted, Cloud Logging will
   * generate a unique ID for this log entry.
   */
  core.String insertId;
  /**
   * The log entry payload, represented as a structure that is expressed as a
   * JSON object.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> jsonPayload;
  /**
   * Optional. A set of user-defined (key, value) data that provides additional
   * information about the log entry.
   */
  core.Map<core.String, core.String> labels;
  /**
   * Required. The resource name of the log to which this log entry belongs. The
   * format of the name is `projects/<project-id>/logs/<log-id%gt;`. Examples:
   * `"projects/my-projectid/logs/syslog"`,
   * `"projects/1234567890/logs/library.googleapis.com%2Fbook_log"`. The log ID
   * part of resource name must be less than 512 characters long and can only
   * include the following characters: upper and lower case alphanumeric
   * characters: [A-Za-z0-9]; and punctuation characters: forward-slash,
   * underscore, hyphen, and period. Forward-slash (`/`) characters in the log
   * ID must be URL-encoded.
   */
  core.String logName;
  /**
   * Optional. Information about an operation associated with the log entry, if
   * applicable.
   */
  LogEntryOperation operation;
  /**
   * The log entry payload, represented as a protocol buffer. You can only use
   * `protoPayload` values that belong to a set of approved types.
   *
   * The values for Object must be JSON objects. It can consist of `num`,
   * `String`, `bool` and `null` as well as `Map` and `List` values.
   */
  core.Map<core.String, core.Object> protoPayload;
  /**
   * Required. The monitored resource associated with this log entry. Example: a
   * log entry that reports a database error would be associated with the
   * monitored resource designating the particular database that reported the
   * error.
   */
  MonitoredResource resource;
  /**
   * Optional. The severity of the log entry. The default value is
   * `LogSeverity.DEFAULT`.
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
  /** The log entry payload, represented as a Unicode string (UTF-8). */
  core.String textPayload;
  /**
   * Optional. The time the event described by the log entry occurred. If
   * omitted, Cloud Logging will use the time the log entry is written.
   */
  core.String timestamp;

  LogEntry();

  LogEntry.fromJson(core.Map _json) {
    if (_json.containsKey("httpRequest")) {
      httpRequest = new HttpRequest.fromJson(_json["httpRequest"]);
    }
    if (_json.containsKey("insertId")) {
      insertId = _json["insertId"];
    }
    if (_json.containsKey("jsonPayload")) {
      jsonPayload = _json["jsonPayload"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("logName")) {
      logName = _json["logName"];
    }
    if (_json.containsKey("operation")) {
      operation = new LogEntryOperation.fromJson(_json["operation"]);
    }
    if (_json.containsKey("protoPayload")) {
      protoPayload = _json["protoPayload"];
    }
    if (_json.containsKey("resource")) {
      resource = new MonitoredResource.fromJson(_json["resource"]);
    }
    if (_json.containsKey("severity")) {
      severity = _json["severity"];
    }
    if (_json.containsKey("textPayload")) {
      textPayload = _json["textPayload"];
    }
    if (_json.containsKey("timestamp")) {
      timestamp = _json["timestamp"];
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
    if (jsonPayload != null) {
      _json["jsonPayload"] = jsonPayload;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (logName != null) {
      _json["logName"] = logName;
    }
    if (operation != null) {
      _json["operation"] = (operation).toJson();
    }
    if (protoPayload != null) {
      _json["protoPayload"] = protoPayload;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
    }
    if (severity != null) {
      _json["severity"] = severity;
    }
    if (textPayload != null) {
      _json["textPayload"] = textPayload;
    }
    if (timestamp != null) {
      _json["timestamp"] = timestamp;
    }
    return _json;
  }
}

/**
 * Additional information about a potentially long-running operation with which
 * a log entry is associated.
 */
class LogEntryOperation {
  /**
   * Optional. Set this to True if this is the first log entry in the operation.
   */
  core.bool first;
  /**
   * Required. An arbitrary operation identifier. Log entries with the same
   * identifier are assumed to be part of the same operation.
   */
  core.String id;
  /**
   * Optional. Set this to True if this is the last log entry in the operation.
   */
  core.bool last;
  /**
   * Required. A arbitrary producer identifier. The combination of `id` and
   * `producer` must be globally unique. Examples for `producer`:
   * `"MyDivision.MyBigCompany.com"`, "github.com/MyProject/MyApplication"`.
   */
  core.String producer;

  LogEntryOperation();

  LogEntryOperation.fromJson(core.Map _json) {
    if (_json.containsKey("first")) {
      first = _json["first"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("last")) {
      last = _json["last"];
    }
    if (_json.containsKey("producer")) {
      producer = _json["producer"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (first != null) {
      _json["first"] = first;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (last != null) {
      _json["last"] = last;
    }
    if (producer != null) {
      _json["producer"] = producer;
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
 * entries that match a logs filter.
 */
class LogMetric {
  /** A description of this metric, which is used in documentation. */
  core.String description;
  /**
   * An [advanced logs filter](/logging/docs/view/advanced_filters). Example:
   * `"logName:syslog AND severity>=ERROR"`.
   */
  core.String filter;
  /**
   * Required. The client-assigned metric identifier. Example:
   * `"severe_errors"`. Metric identifiers are limited to 1000 characters and
   * can include only the following characters: `A-Z`, `a-z`, `0-9`, and the
   * special characters `_-.,+!*',()%/\`. The forward-slash character (`/`)
   * denotes a hierarchy of name pieces, and it cannot be the first character of
   * the name.
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

/** Describes a sink used to export log entries outside Cloud Logging. */
class LogSink {
  /**
   * The export destination. See [Exporting Logs With
   * Sinks](/logging/docs/api/tasks/exporting-logs). Examples:
   * `"storage.googleapis.com/a-bucket"`,
   * `"bigquery.googleapis.com/projects/a-project-id/datasets/a-dataset"`.
   */
  core.String destination;
  /**
   * An [advanced logs filter](/logging/docs/view/advanced_filters) that defines
   * the log entries to be exported. The filter must be consistent with the log
   * entry format designed by the `outputVersionFormat` parameter, regardless of
   * the format of the log entry that was originally written to Cloud Logging.
   * Example: `"logName:syslog AND severity>=ERROR"`.
   */
  core.String filter;
  /**
   * Required. The client-assigned sink identifier. Example:
   * `"my-severe-errors-to-pubsub"`. Sink identifiers are limited to 1000
   * characters and can include only the following characters: `A-Z`, `a-z`,
   * `0-9`, and the special characters `_-.`.
   */
  core.String name;
  /**
   * The log entry version used when exporting log entries from this sink. This
   * version does not have to correspond to the version of the log entry when it
   * was written to Cloud Logging.
   * Possible string values are:
   * - "VERSION_FORMAT_UNSPECIFIED" : A VERSION_FORMAT_UNSPECIFIED.
   * - "V2" : A V2.
   * - "V1" : A V1.
   */
  core.String outputVersionFormat;

  LogSink();

  LogSink.fromJson(core.Map _json) {
    if (_json.containsKey("destination")) {
      destination = _json["destination"];
    }
    if (_json.containsKey("filter")) {
      filter = _json["filter"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("outputVersionFormat")) {
      outputVersionFormat = _json["outputVersionFormat"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (destination != null) {
      _json["destination"] = destination;
    }
    if (filter != null) {
      _json["filter"] = filter;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (outputVersionFormat != null) {
      _json["outputVersionFormat"] = outputVersionFormat;
    }
    return _json;
  }
}

/** A specific monitored resource or a group of monitored resources. */
class MonitoredResource {
  /**
   * Values for some or all of the labels listed in the associated monitored
   * resource descriptor. For example, specify a specific Cloud SQL database by
   * supplying values for both the `"database_id"` and `"zone"` labels. Specify
   * the set of all Cloud SQL databases in a particular location by supplying a
   * value for only the `"zone"` label.
   */
  core.Map<core.String, core.String> labels;
  /**
   * The type of monitored resource. This field must match the value of the
   * `type` field in a MonitoredResourceDescriptor object. For example,
   * `"cloudsql_database"` represents Cloud SQL databases.
   */
  core.String type;

  MonitoredResource();

  MonitoredResource.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/** A description of a type of monitored resource. */
class MonitoredResourceDescriptor {
  /**
   * A detailed description of the monitored resource type, which is used in
   * documentation.
   */
  core.String description;
  /**
   * A concise name for the monitored resource type, which is displayed in user
   * interfaces. For example, `"Cloud SQL Database"`.
   */
  core.String displayName;
  /**
   * A set of labels that can be used to describe instances of this monitored
   * resource type. For example, Cloud SQL databases can be labeled with their
   * `"database_id"` and their `"zone"`.
   */
  core.List<LabelDescriptor> labels;
  /**
   * The monitored resource type. For example, the type `"cloudsql_database"`
   * represents databases in Google Cloud SQL.
   */
  core.String type;

  MonitoredResourceDescriptor();

  MonitoredResourceDescriptor.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"].map((value) => new LabelDescriptor.fromJson(value)).toList();
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (description != null) {
      _json["description"] = description;
    }
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (labels != null) {
      _json["labels"] = labels.map((value) => (value).toJson()).toList();
    }
    if (type != null) {
      _json["type"] = type;
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
   * (i.e. belongs to a manually scaled module), this is the 0 based index of
   * the instance, otherwise this value is -1.
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

/** The parameters to WriteLogEntries. */
class WriteLogEntriesRequest {
  /**
   * Required. The log entries to write. The log entries must have values for
   * all required fields.
   */
  core.List<LogEntry> entries;
  /**
   * Optional. User-defined `key:value` items that are added to the `labels`
   * field of each log entry in `entries`, except when a log entry specifies its
   * own 'key:value' item with the same key. Example: `{ "size": "large",
   * "color":"red" }`
   */
  core.Map<core.String, core.String> labels;
  /**
   * Optional. A default log resource name for those log entries in `entries`
   * that do not specify their own `logName`. Example:
   * `"projects/my-project/logs/syslog"`. See LogEntry.
   */
  core.String logName;
  /**
   * Optional. A default monitored resource for those log entries in `entries`
   * that do not specify their own `resource`.
   */
  MonitoredResource resource;

  WriteLogEntriesRequest();

  WriteLogEntriesRequest.fromJson(core.Map _json) {
    if (_json.containsKey("entries")) {
      entries = _json["entries"].map((value) => new LogEntry.fromJson(value)).toList();
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
    }
    if (_json.containsKey("logName")) {
      logName = _json["logName"];
    }
    if (_json.containsKey("resource")) {
      resource = new MonitoredResource.fromJson(_json["resource"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (entries != null) {
      _json["entries"] = entries.map((value) => (value).toJson()).toList();
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (logName != null) {
      _json["logName"] = logName;
    }
    if (resource != null) {
      _json["resource"] = (resource).toJson();
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
