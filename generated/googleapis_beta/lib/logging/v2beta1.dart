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

  final commons.ApiRequester _requester;

  LoggingApi(http.Client client, {core.String rootUrl: "https://logging.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
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
