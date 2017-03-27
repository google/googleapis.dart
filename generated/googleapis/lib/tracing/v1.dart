// This is a generated file (see the discoveryapis_generator project).

library googleapis.tracing.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client tracing/v1';

/** Send and retrieve trace data from Google Stackdriver Trace. */
class TracingApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";

  /** Write Trace data for a project or application */
  static const TraceAppendScope = "https://www.googleapis.com/auth/trace.append";

  /** Read Trace data for a project or application */
  static const TraceReadonlyScope = "https://www.googleapis.com/auth/trace.readonly";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  TracingApi(http.Client client, {core.String rootUrl: "https://tracing.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTracesResourceApi get traces => new ProjectsTracesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;
}


class ProjectsTracesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTracesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Sends new spans to Stackdriver Trace or updates existing spans. If the
   * name of a trace that you send matches that of an existing trace, any fields
   * in the existing trace and its spans are overwritten by the provided values,
   * and any new fields provided are merged with the existing trace data. If the
   * name does not match, a new trace is created with given set of spans.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [parent] - ID of the Cloud project where the trace data is stored.
   * Value must have pattern "^projects/[^/]+$".
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> batchUpdate(BatchUpdateSpansRequest request, core.String parent) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/traces:batchUpdate';

    var _response = _requester.request(_url,
                                       "POST",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

  /**
   * Returns a specific trace.
   *
   * Request parameters:
   *
   * [name] - ID of the trace. Format is `projects/PROJECT_ID/traces/TRACE_ID`.
   * Value must have pattern "^projects/[^/]+/traces/[^/]+$".
   *
   * Completes with a [Trace].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Trace> get(core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Trace.fromJson(data));
  }

  /**
   * Returns of a list of traces that match the specified filter conditions.
   *
   * Request parameters:
   *
   * [parent] - ID of the Cloud project where the trace data is stored.
   * Value must have pattern "^projects/[^/]+$".
   *
   * [filter] - An optional filter for the request.
   * Example:
   * `version_label_key:a some_label:some_label_key`
   * returns traces from version `a` and has `some_label` with `some_label_key`.
   *
   * [endTime] - End of the time interval (inclusive) during which the trace
   * data was
   * collected from the application.
   *
   * [startTime] - Start of the time interval (inclusive) during which the trace
   * data was
   * collected from the application.
   *
   * [pageToken] - Token identifying the page of results to return. If provided,
   * use the
   * value of the `next_page_token` field from a previous request. Optional.
   *
   * [pageSize] - Maximum number of traces to return. If not specified or <= 0,
   * the
   * implementation selects a reasonable value. The implementation may
   * return fewer traces than the requested page size. Optional.
   *
   * [orderBy] - Field used to sort the returned traces. Optional.
   * Can be one of the following:
   *
   * *   `trace_id`
   * *   `name` (`name` field of root span in the trace)
   * *   `duration` (difference between `end_time` and `start_time` fields of
   *      the root span)
   * *   `start` (`start_time` field of the root span)
   *
   * Descending order can be specified by appending `desc` to the sort field
   * (for example, `name desc`).
   *
   * Only one sort field is permitted.
   *
   * Completes with a [ListTracesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTracesResponse> list(core.String parent, {core.String filter, core.String endTime, core.String startTime, core.String pageToken, core.int pageSize, core.String orderBy}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$parent') + '/traces';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTracesResponse.fromJson(data));
  }

  /**
   * Returns a list of spans within a trace.
   *
   * Request parameters:
   *
   * [name] - ID of the trace for which to list child spans. Format is
   * `projects/PROJECT_ID/traces/TRACE_ID`.
   * Value must have pattern "^projects/[^/]+/traces/[^/]+$".
   *
   * [pageToken] - Token identifying the page of results to return. If provided,
   * use the
   * value of the `nextPageToken` field from a previous request. Optional.
   *
   * Completes with a [ListSpansResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListSpansResponse> listSpans(core.String name, {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v1/' + commons.Escaper.ecapeVariableReserved('$name') + ':listSpans';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListSpansResponse.fromJson(data));
  }

}



/** Text annotation with a set of attributes. */
class Annotation {
  /** A set of attributes on the annotation. */
  core.Map<core.String, AttributeValue> attributes;
  /** A user-supplied message describing the event. */
  core.String description;

  Annotation();

  Annotation.fromJson(core.Map _json) {
    if (_json.containsKey("attributes")) {
      attributes = commons.mapMap(_json["attributes"], (item) => new AttributeValue.fromJson(item));
    }
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attributes != null) {
      _json["attributes"] = commons.mapMap(attributes, (item) => (item).toJson());
    }
    if (description != null) {
      _json["description"] = description;
    }
    return _json;
  }
}

/** The allowed types for the value side of an attribute key:value pair. */
class AttributeValue {
  /** A boolean value. */
  core.bool boolValue;
  /** An integer value. */
  core.String intValue;
  /** A string value. */
  core.String stringValue;

  AttributeValue();

  AttributeValue.fromJson(core.Map _json) {
    if (_json.containsKey("boolValue")) {
      boolValue = _json["boolValue"];
    }
    if (_json.containsKey("intValue")) {
      intValue = _json["intValue"];
    }
    if (_json.containsKey("stringValue")) {
      stringValue = _json["stringValue"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (boolValue != null) {
      _json["boolValue"] = boolValue;
    }
    if (intValue != null) {
      _json["intValue"] = intValue;
    }
    if (stringValue != null) {
      _json["stringValue"] = stringValue;
    }
    return _json;
  }
}

/** The request message for the `BatchUpdateSpans` method. */
class BatchUpdateSpansRequest {
  /** A map from trace name to spans to be stored or updated. */
  core.Map<core.String, SpanUpdates> spanUpdates;

  BatchUpdateSpansRequest();

  BatchUpdateSpansRequest.fromJson(core.Map _json) {
    if (_json.containsKey("spanUpdates")) {
      spanUpdates = commons.mapMap(_json["spanUpdates"], (item) => new SpanUpdates.fromJson(item));
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (spanUpdates != null) {
      _json["spanUpdates"] = commons.mapMap(spanUpdates, (item) => (item).toJson());
    }
    return _json;
  }
}

/**
 * A generic empty message that you can re-use to avoid defining duplicated
 * empty messages in your APIs. A typical example is to use it as the request
 * or the response type of an API method. For instance:
 *
 *     service Foo {
 *       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
 *     }
 *
 * The JSON representation for `Empty` is empty JSON object `{}`.
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

/**
 * A pointer from this span to another span in a different `Trace`. Used
 * (for example) in batching operations, where a single batch handler
 * processes multiple requests from different traces.
 */
class Link {
  /** The `id` of the linked span. */
  core.String spanId;
  /** The ID of the parent trace of the linked span. */
  core.String traceId;
  /**
   * The relationship of the current span relative to the linked span.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : The relationship of the two spans is unknown.
   * - "CHILD" : The current span is a child of the linked span.
   * - "PARENT" : The current span is the parent of the linked span.
   */
  core.String type;

  Link();

  Link.fromJson(core.Map _json) {
    if (_json.containsKey("spanId")) {
      spanId = _json["spanId"];
    }
    if (_json.containsKey("traceId")) {
      traceId = _json["traceId"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (spanId != null) {
      _json["spanId"] = spanId;
    }
    if (traceId != null) {
      _json["traceId"] = traceId;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/** The response message for the `ListSpans` method. */
class ListSpansResponse {
  /**
   * If defined, indicates that there are more spans that match the request.
   * Pass this as the value of `pageToken` in a subsequent request to retrieve
   * additional spans.
   */
  core.String nextPageToken;
  /** The requested spans if there are any in the specified trace. */
  core.List<Span> spans;

  ListSpansResponse();

  ListSpansResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("spans")) {
      spans = _json["spans"].map((value) => new Span.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (spans != null) {
      _json["spans"] = spans.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** The response message for the `ListTraces` method. */
class ListTracesResponse {
  /**
   * If defined, indicates that there are more traces that match the request
   * and that this value should be passed to the next request to continue
   * retrieving additional traces.
   */
  core.String nextPageToken;
  /** List of trace records returned. */
  core.List<Trace> traces;

  ListTracesResponse();

  ListTracesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("traces")) {
      traces = _json["traces"].map((value) => new Trace.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (traces != null) {
      _json["traces"] = traces.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Binary module. */
class Module {
  /**
   * Build_id is a unique identifier for the module,
   * usually a hash of its contents
   */
  core.String buildId;
  /**
   * E.g. main binary, kernel modules, and dynamic libraries
   * such as libc.so, sharedlib.so
   */
  core.String module;

  Module();

  Module.fromJson(core.Map _json) {
    if (_json.containsKey("buildId")) {
      buildId = _json["buildId"];
    }
    if (_json.containsKey("module")) {
      module = _json["module"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (buildId != null) {
      _json["buildId"] = buildId;
    }
    if (module != null) {
      _json["module"] = module;
    }
    return _json;
  }
}

/** An event describing an RPC message sent/received on the network. */
class NetworkEvent {
  /**
   * If available, this is the kernel time:
   *
   * *  For sent messages, this is the time at which the first bit was sent.
   * *  For received messages, this is the time at which the last bit was
   *    received.
   */
  core.String kernelTime;
  /** An identifier for the message, which must be unique in this span. */
  core.String messageId;
  /** The number of bytes sent or received. */
  core.String messageSize;
  /**
   * Type of NetworkEvent. Indicates whether the RPC message was sent or
   * received.
   * Possible string values are:
   * - "TYPE_UNSPECIFIED" : Unknown event type.
   * - "SENT" : Indicates a sent RPC message.
   * - "RECV" : Indicates a received RPC message.
   */
  core.String type;

  NetworkEvent();

  NetworkEvent.fromJson(core.Map _json) {
    if (_json.containsKey("kernelTime")) {
      kernelTime = _json["kernelTime"];
    }
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
    if (_json.containsKey("messageSize")) {
      messageSize = _json["messageSize"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (kernelTime != null) {
      _json["kernelTime"] = kernelTime;
    }
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (messageSize != null) {
      _json["messageSize"] = messageSize;
    }
    if (type != null) {
      _json["type"] = type;
    }
    return _json;
  }
}

/**
 * A span represents a single operation within a trace. Spans can be nested
 * to form a trace tree. Often, a trace contains a root span that
 * describes the end-to-end latency and, optionally, one or more subspans for
 * its sub-operations. (A trace could alternatively contain multiple root spans,
 * or none at all.) Spans do not need to be contiguous. There may be gaps
 * and/or overlaps between spans in a trace.
 */
class Span {
  /**
   * Properties of a span in key:value format. The maximum length for the
   * key is 128 characters. The value can be a string (up to 2000 characters),
   * int, or boolean.
   *
   * Some common pair examples:
   *
   *     "/instance_id": "my-instance"
   *     "/zone": "us-central1-a"
   *     "/grpc/peer_address": "ip:port" (dns, etc.)
   *     "/grpc/deadline": "Duration"
   *     "/http/user_agent"
   *     "/http/request_bytes": 300
   *     "/http/response_bytes": 1200
   *     "/http/url": google.com/apis
   *     "abc.com/myattribute": true
   */
  core.Map<core.String, AttributeValue> attributes;
  /** True if this span has a remote parent (is an RPC server span). */
  core.bool hasRemoteParent;
  /**
   * Identifier for the span. Must be a 64-bit integer other than 0 and
   * unique within a trace.
   */
  core.String id;
  /**
   * A collection of links, which are references from this span to another span
   * in a different trace.
   */
  core.List<Link> links;
  /**
   * End time of the span.
   * On the client side, this is the local machine clock time at which the span
   * execution was ended; on the server
   * side, this is the time at which the server application handler stopped
   * running.
   */
  core.String localEndTime;
  /**
   * Start time of the span.
   * On the client side, this is the local machine clock time at which the span
   * execution was started; on the server
   * side, this is the time at which the server application handler started
   * running.
   */
  core.String localStartTime;
  /**
   * Name of the span. The span name is sanitized and displayed in the
   * Stackdriver Trace tool in the {% dynamic print site_values.console_name %}.
   * The name may be a method name or some other per-call site name.
   * For the same executable and the same call point, a best practice is
   * to use a consistent name, which makes it easier to correlate
   * cross-trace spans.
   */
  core.String name;
  /**
   * ID of the parent span. If this is a root span, the value must be `0` or
   * empty.
   */
  core.String parentId;
  /** Stack trace captured at the start of the span. */
  StackTrace stackTrace;
  /** An optional final status for this span. */
  Status status;
  /**
   * A collection of `TimeEvent`s. A `TimeEvent` is a time-stamped annotation
   * on the span, consisting of either user-supplied key:value pairs, or
   * details of an RPC message sent/received on the network.
   */
  core.List<TimeEvent> timeEvents;

  Span();

  Span.fromJson(core.Map _json) {
    if (_json.containsKey("attributes")) {
      attributes = commons.mapMap(_json["attributes"], (item) => new AttributeValue.fromJson(item));
    }
    if (_json.containsKey("hasRemoteParent")) {
      hasRemoteParent = _json["hasRemoteParent"];
    }
    if (_json.containsKey("id")) {
      id = _json["id"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new Link.fromJson(value)).toList();
    }
    if (_json.containsKey("localEndTime")) {
      localEndTime = _json["localEndTime"];
    }
    if (_json.containsKey("localStartTime")) {
      localStartTime = _json["localStartTime"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parentId")) {
      parentId = _json["parentId"];
    }
    if (_json.containsKey("stackTrace")) {
      stackTrace = new StackTrace.fromJson(_json["stackTrace"]);
    }
    if (_json.containsKey("status")) {
      status = new Status.fromJson(_json["status"]);
    }
    if (_json.containsKey("timeEvents")) {
      timeEvents = _json["timeEvents"].map((value) => new TimeEvent.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (attributes != null) {
      _json["attributes"] = commons.mapMap(attributes, (item) => (item).toJson());
    }
    if (hasRemoteParent != null) {
      _json["hasRemoteParent"] = hasRemoteParent;
    }
    if (id != null) {
      _json["id"] = id;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (localEndTime != null) {
      _json["localEndTime"] = localEndTime;
    }
    if (localStartTime != null) {
      _json["localStartTime"] = localStartTime;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parentId != null) {
      _json["parentId"] = parentId;
    }
    if (stackTrace != null) {
      _json["stackTrace"] = (stackTrace).toJson();
    }
    if (status != null) {
      _json["status"] = (status).toJson();
    }
    if (timeEvents != null) {
      _json["timeEvents"] = timeEvents.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Collection of spans to update. */
class SpanUpdates {
  /** A collection of spans. */
  core.List<Span> spans;

  SpanUpdates();

  SpanUpdates.fromJson(core.Map _json) {
    if (_json.containsKey("spans")) {
      spans = _json["spans"].map((value) => new Span.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (spans != null) {
      _json["spans"] = spans.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/** Represents a single stack frame in a stack trace. */
class StackFrame {
  /**
   * Column number is important in JavaScript (anonymous functions).
   * May not be available in some languages.
   */
  core.String columnNumber;
  /** The filename of the file containing this frame. */
  core.String fileName;
  /**
   * The fully-qualified name that uniquely identifies this function or
   * method.
   */
  core.String functionName;
  /** Line number of the frame. */
  core.String lineNumber;
  /** Binary module the code is loaded from. */
  Module loadModule;
  /**
   * Used when the function name is
   * [mangled](http://www.avabodh.com/cxxin/namemangling.html). May be
   * fully-qualified.
   */
  core.String originalFunctionName;
  /** The version of the deployed source code. */
  core.String sourceVersion;

  StackFrame();

  StackFrame.fromJson(core.Map _json) {
    if (_json.containsKey("columnNumber")) {
      columnNumber = _json["columnNumber"];
    }
    if (_json.containsKey("fileName")) {
      fileName = _json["fileName"];
    }
    if (_json.containsKey("functionName")) {
      functionName = _json["functionName"];
    }
    if (_json.containsKey("lineNumber")) {
      lineNumber = _json["lineNumber"];
    }
    if (_json.containsKey("loadModule")) {
      loadModule = new Module.fromJson(_json["loadModule"]);
    }
    if (_json.containsKey("originalFunctionName")) {
      originalFunctionName = _json["originalFunctionName"];
    }
    if (_json.containsKey("sourceVersion")) {
      sourceVersion = _json["sourceVersion"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (columnNumber != null) {
      _json["columnNumber"] = columnNumber;
    }
    if (fileName != null) {
      _json["fileName"] = fileName;
    }
    if (functionName != null) {
      _json["functionName"] = functionName;
    }
    if (lineNumber != null) {
      _json["lineNumber"] = lineNumber;
    }
    if (loadModule != null) {
      _json["loadModule"] = (loadModule).toJson();
    }
    if (originalFunctionName != null) {
      _json["originalFunctionName"] = originalFunctionName;
    }
    if (sourceVersion != null) {
      _json["sourceVersion"] = sourceVersion;
    }
    return _json;
  }
}

/** StackTrace collected in a trace. */
class StackTrace {
  /** Stack frames of this stack trace. */
  core.List<StackFrame> stackFrame;
  /**
   * The hash ID is used to conserve network bandwidth for duplicate
   * stack traces within a single trace.
   *
   * Often multiple spans will have identical stack traces.
   * The first occurance of a stack trace should contain both the
   * `stackFrame` content and a value in `stackTraceHashId`.
   *
   * Subsequent spans within the same request can refer
   * to that stack trace by only setting `stackTraceHashId`.
   */
  core.String stackTraceHashId;

  StackTrace();

  StackTrace.fromJson(core.Map _json) {
    if (_json.containsKey("stackFrame")) {
      stackFrame = _json["stackFrame"].map((value) => new StackFrame.fromJson(value)).toList();
    }
    if (_json.containsKey("stackTraceHashId")) {
      stackTraceHashId = _json["stackTraceHashId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (stackFrame != null) {
      _json["stackFrame"] = stackFrame.map((value) => (value).toJson()).toList();
    }
    if (stackTraceHashId != null) {
      _json["stackTraceHashId"] = stackTraceHashId;
    }
    return _json;
  }
}

/**
 * The `Status` type defines a logical error model that is suitable for
 * different
 * programming environments, including REST APIs and RPC APIs. It is used by
 * [gRPC](https://github.com/grpc). The error model is designed to be:
 *
 * - Simple to use and understand for most users
 * - Flexible enough to meet unexpected needs
 *
 * # Overview
 *
 * The `Status` message contains three pieces of data: error code, error
 * message,
 * and error details. The error code should be an enum value of
 * google.rpc.Code, but it may accept additional error codes if needed.  The
 * error message should be a developer-facing English message that helps
 * developers *understand* and *resolve* the error. If a localized user-facing
 * error message is needed, put the localized message in the error details or
 * localize it in the client. The optional error details may contain arbitrary
 * information about the error. There is a predefined set of error detail types
 * in the package `google.rpc` which can be used for common error conditions.
 *
 * # Language mapping
 *
 * The `Status` message is the logical representation of the error model, but it
 * is not necessarily the actual wire format. When the `Status` message is
 * exposed in different client libraries and different wire protocols, it can be
 * mapped differently. For example, it will likely be mapped to some exceptions
 * in Java, but more likely mapped to some error codes in C.
 *
 * # Other uses
 *
 * The error model and the `Status` message can be used in a variety of
 * environments, either with or without APIs, to provide a
 * consistent developer experience across different environments.
 *
 * Example uses of this error model include:
 *
 * - Partial errors. If a service needs to return partial errors to the client,
 *     it may embed the `Status` in the normal response to indicate the partial
 *     errors.
 *
 * - Workflow errors. A typical workflow has multiple steps. Each step may
 *     have a `Status` message for error reporting purpose.
 *
 * - Batch operations. If a client uses batch request and batch response, the
 *     `Status` message should be used directly inside batch response, one for
 *     each error sub-response.
 *
 * - Asynchronous operations. If an API call embeds asynchronous operation
 *     results in its response, the status of those operations should be
 *     represented directly using the `Status` message.
 *
 * - Logging. If some API errors are stored in logs, the message `Status` could
 * be used directly after any stripping needed for security/privacy reasons.
 */
class Status {
  /** The status code, which should be an enum value of google.rpc.Code. */
  core.int code;
  /**
   * A list of messages that carry the error details.  There will be a
   * common set of message types for APIs to use.
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

/** A time-stamped annotation in the Span. */
class TimeEvent {
  /** One or more key:value pairs. */
  Annotation annotation;
  /** The timestamp indicating the time the event occurred. */
  core.String localTime;
  /** An event describing an RPC message sent/received on the network. */
  NetworkEvent networkEvent;

  TimeEvent();

  TimeEvent.fromJson(core.Map _json) {
    if (_json.containsKey("annotation")) {
      annotation = new Annotation.fromJson(_json["annotation"]);
    }
    if (_json.containsKey("localTime")) {
      localTime = _json["localTime"];
    }
    if (_json.containsKey("networkEvent")) {
      networkEvent = new NetworkEvent.fromJson(_json["networkEvent"]);
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (annotation != null) {
      _json["annotation"] = (annotation).toJson();
    }
    if (localTime != null) {
      _json["localTime"] = localTime;
    }
    if (networkEvent != null) {
      _json["networkEvent"] = (networkEvent).toJson();
    }
    return _json;
  }
}

/**
 * A trace describes how long it takes for an application to perform some
 * operations. It consists of a set of spans, each representing
 * an operation and including time information and operation details.
 */
class Trace {
  /**
   * A globally unique identifier for the trace in the format
   * `projects/PROJECT_NUMBER/traces/TRACE_ID`. `TRACE_ID` is a base16-encoded
   * string of a 128-bit number and is required to be 32 char long.
   */
  core.String name;

  Trace();

  Trace.fromJson(core.Map _json) {
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (name != null) {
      _json["name"] = name;
    }
    return _json;
  }
}
