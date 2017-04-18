// This is a generated file (see the discoveryapis_generator project).

library googleapis.tracing.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client tracing/v2';

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

  ProjectsTracesSpansResourceApi get spans => new ProjectsTracesSpansResourceApi(_requester);

  ProjectsTracesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Sends new spans to Stackdriver Trace or updates existing traces. If the
   * name of a trace that you send matches that of an existing trace, new spans
   * are added to the existing trace. Attempt to update existing spans results
   * undefined behavior. If the name does not match, a new trace is created
   * with given set of spans.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - Name of the project where the spans belong to. Format is
   * `projects/PROJECT_ID`.
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
  async.Future<Empty> batchWrite(BatchWriteSpansRequest request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name') + '/traces:batchWrite';

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
   * Returns of a list of traces that match the specified filter conditions.
   *
   * Request parameters:
   *
   * [parent] - ID of the Cloud project where the trace data is stored which is
   * `projects/PROJECT_ID`.
   * Value must have pattern "^projects/[^/]+$".
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
   * [filter] - An optional filter for the request.
   * Example:
   * `version_label_key:a some_label:some_label_key`
   * returns traces from version `a` and has `some_label` with `some_label_key`.
   *
   * [endTime] - End of the time interval (inclusive) during which the trace
   * data was
   * collected from the application.
   *
   * Completes with a [ListTracesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTracesResponse> list(core.String parent, {core.String startTime, core.String pageToken, core.int pageSize, core.String orderBy, core.String filter, core.String endTime}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
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
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/traces';

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
   * [parent] - ID of the trace for which to list child spans. Format is
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
  async.Future<ListSpansResponse> listSpans(core.String parent, {core.String pageToken}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + ':listSpans';

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


class ProjectsTracesSpansResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTracesSpansResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Creates a new Span.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [name] - The resource name of Span in the format
   * `projects/PROJECT_ID/traces/TRACE_ID/spans/SPAN_ID`.
   * `TRACE_ID` is a unique identifier for a trace within a project and is a
   * base16-encoded, case-insensitive string and is required to be 32 char long.
   * `SPAN_ID` is a unique identifier for a span within a trace. It is a
   * base 16-encoded, case-insensitive string of a 8-bytes array and is required
   * to be 16 char long.
   * Value must have pattern "^projects/[^/]+/traces/[^/]+/spans/[^/]+$".
   *
   * Completes with a [Span].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Span> create(Span request, core.String name) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url,
                                       "PUT",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Span.fromJson(data));
  }

}



/**
 * Text annotation with a set of attributes. A maximum of 32 annotations are
 * allowed per Span.
 */
class Annotation {
  /**
   * A set of attributes on the annotation. A maximum of 4 attributes are
   * allowed per Annotation. The maximum key length is 128 bytes. The
   * value can be a string (up to 256 bytes), integer, or boolean
   * (true/false).
   */
  core.Map<core.String, AttributeValue> attributes;
  /**
   * A user-supplied message describing the event. The maximum length for
   * the description is 256 characters.
   */
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

/** The request message for the `BatchWriteSpans` method. */
class BatchWriteSpansRequest {
  /** A collection of spans. */
  core.List<Span> spans;

  BatchWriteSpansRequest();

  BatchWriteSpansRequest.fromJson(core.Map _json) {
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
 * A pointer from this span to another span in a different `Trace` within
 * the same service project or within a different service project. Used
 * (for example) in batching operations, where a single batch handler
 * processes multiple requests from different traces or when receives a
 * request from a different service project.
 */
class Link {
  /**
   * `SPAN_ID` is a unique identifier for a span within a trace. It is a
   * base16-encoded, case-insensitive string of a 8-bytes array and is
   * required to be 16 char long.
   */
  core.String spanId;
  /**
   * `TRACE_ID` is a unique identifier for a trace within a project. It is
   * a base16-encoded, case-insensitive string of a 16-bytes array and is
   * required to be 32 char long.
   */
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
   * Build_id is a unique identifier for the module, usually a hash of its
   * contents (up to 128 characters).
   */
  core.String buildId;
  /**
   * E.g. main binary, kernel modules, and dynamic libraries
   * such as libc.so, sharedlib.so (up to 256 characters).
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

/**
 * An event describing an RPC message sent/received on the network. A
 * maximum of 128 network events are allowed per Span.
 */
class NetworkEvent {
  /** An identifier for the message, which must be unique in this span. */
  core.String messageId;
  /** The number of bytes sent or received. */
  core.String messageSize;
  /**
   * If available, this is the kernel time:
   *
   * *  For sent messages, this is the time at which the first bit was sent.
   * *  For received messages, this is the time at which the last bit was
   *    received.
   */
  core.String time;
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
    if (_json.containsKey("messageId")) {
      messageId = _json["messageId"];
    }
    if (_json.containsKey("messageSize")) {
      messageSize = _json["messageSize"];
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
    if (_json.containsKey("type")) {
      type = _json["type"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (messageId != null) {
      _json["messageId"] = messageId;
    }
    if (messageSize != null) {
      _json["messageSize"] = messageSize;
    }
    if (time != null) {
      _json["time"] = time;
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
   * Attributes of a span with a key:value format. A maximum of 16 custom
   * attributes are allowed per Span. The maximum key length is 128 bytes. The
   * value can be a string (up to 256 bytes), integer, or boolean (true/false).
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
  /**
   * Description of the operation in the span. It is sanitized and displayed in
   * the Stackdriver Trace tool in the
   * {% dynamic print site_values.console_name %}.
   * The display_name may be a method name or some other per-call site
   * name. For the same executable and the same call point, a best practice is
   * to use a consistent operation name, which makes it easier to correlate
   * cross-trace spans.
   */
  core.String displayName;
  /**
   * End time of the span.
   * On the client side, this is the local machine clock time at which the span
   * execution was ended; on the server
   * side, this is the time at which the server application handler stopped
   * running.
   */
  core.String endTime;
  /**
   * A collection of links, which are references from this span to a span
   * in the same or different trace.
   */
  core.List<Link> links;
  /**
   * The resource name of Span in the format
   * `projects/PROJECT_ID/traces/TRACE_ID/spans/SPAN_ID`.
   * `TRACE_ID` is a unique identifier for a trace within a project and is a
   * base16-encoded, case-insensitive string and is required to be 32 char long.
   * `SPAN_ID` is a unique identifier for a span within a trace. It is a
   * base 16-encoded, case-insensitive string of a 8-bytes array and is required
   * to be 16 char long.
   */
  core.String name;
  /**
   * ID of parent span which is a base 16-encoded, case-insensitive string of
   * a 8-bytes array and is required to be 16 char long. If this is a root span,
   * the value must be empty.
   */
  core.String parentSpanId;
  /**
   * Unique identifier for a span within a trace. It is a base 16-encoded,
   * case-insensitive string of a 8-bytes array and is required.
   */
  core.String spanId;
  /** Stack trace captured at the start of the span. */
  StackTrace stackTrace;
  /**
   * Start time of the span.
   * On the client side, this is the local machine clock time at which the span
   * execution was started; on the server
   * side, this is the time at which the server application handler started
   * running.
   */
  core.String startTime;
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
    if (_json.containsKey("displayName")) {
      displayName = _json["displayName"];
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("links")) {
      links = _json["links"].map((value) => new Link.fromJson(value)).toList();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("parentSpanId")) {
      parentSpanId = _json["parentSpanId"];
    }
    if (_json.containsKey("spanId")) {
      spanId = _json["spanId"];
    }
    if (_json.containsKey("stackTrace")) {
      stackTrace = new StackTrace.fromJson(_json["stackTrace"]);
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
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
    if (displayName != null) {
      _json["displayName"] = displayName;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (links != null) {
      _json["links"] = links.map((value) => (value).toJson()).toList();
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (parentSpanId != null) {
      _json["parentSpanId"] = parentSpanId;
    }
    if (spanId != null) {
      _json["spanId"] = spanId;
    }
    if (stackTrace != null) {
      _json["stackTrace"] = (stackTrace).toJson();
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
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

/** Represents a single stack frame in a stack trace. */
class StackFrame {
  /**
   * Column number is important in JavaScript (anonymous functions).
   * May not be available in some languages.
   */
  core.String columnNumber;
  /** The filename of the file containing this frame (up to 256 characters). */
  core.String fileName;
  /**
   * The fully-qualified name that uniquely identifies this function or
   * method (up to 1024 characters).
   */
  core.String functionName;
  /** Line number of the frame. */
  core.String lineNumber;
  /** Binary module the code is loaded from. */
  Module loadModule;
  /**
   * Used when the function name is
   * [mangled](http://www.avabodh.com/cxxin/namemangling.html). May be
   * fully-qualified (up to 1024 characters).
   */
  core.String originalFunctionName;
  /** The version of the deployed source code (up to 128 characters). */
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
  /** Stack frames in this stack trace. A maximum of 128 frames are allowed. */
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
  /** An event describing an RPC message sent/received on the network. */
  NetworkEvent networkEvent;
  /** The timestamp indicating the time the event occurred. */
  core.String time;

  TimeEvent();

  TimeEvent.fromJson(core.Map _json) {
    if (_json.containsKey("annotation")) {
      annotation = new Annotation.fromJson(_json["annotation"]);
    }
    if (_json.containsKey("networkEvent")) {
      networkEvent = new NetworkEvent.fromJson(_json["networkEvent"]);
    }
    if (_json.containsKey("time")) {
      time = _json["time"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (annotation != null) {
      _json["annotation"] = (annotation).toJson();
    }
    if (networkEvent != null) {
      _json["networkEvent"] = (networkEvent).toJson();
    }
    if (time != null) {
      _json["time"] = time;
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
   * The resource name of Trace in the format
   * `projects/PROJECT_ID/traces/TRACE_ID`. `TRACE_ID` is a unique identifier
   * for a trace within a project and is a base16-encoded, case-insensitive
   * string and is required to be 32 char long.
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
