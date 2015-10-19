// This is a generated file (see the discoveryapis_generator project).

library googleapis.cloudtrace.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart' show
    ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudtrace/v1';

/**
 * The Google Cloud Trace API provides services for reading and writing runtime
 * trace data for Cloud applications.
 */
class CloudtraceApi {
  /** View and manage your data across Google Cloud Platform services */
  static const CloudPlatformScope = "https://www.googleapis.com/auth/cloud-platform";


  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);
  V1ResourceApi get v1 => new V1ResourceApi(_requester);

  CloudtraceApi(http.Client client, {core.String rootUrl: "https://cloudtrace.googleapis.com/", core.String servicePath: ""}) :
      _requester = new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}


class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTracesResourceApi get traces => new ProjectsTracesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Updates the existing traces specified by PatchTracesRequest and inserts the
   * new traces. Any existing trace or span fields included in an update are
   * overwritten by the update, and any additional fields in an update are
   * merged with the existing trace data.
   *
   * [request] - The metadata request object.
   *
   * Request parameters:
   *
   * [projectId] - The project id of the trace to patch.
   *
   * Completes with a [Empty].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Empty> patchTraces(Traces request, core.String projectId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (request != null) {
      _body = convert.JSON.encode((request).toJson());
    }
    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/traces';

    var _response = _requester.request(_url,
                                       "PATCH",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new Empty.fromJson(data));
  }

}


class ProjectsTracesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsTracesResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Gets one trace by id.
   *
   * Request parameters:
   *
   * [projectId] - The project id of the trace to return.
   *
   * [traceId] - The trace id of the trace to return.
   *
   * Completes with a [Trace].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<Trace> get(core.String projectId, core.String traceId) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (traceId == null) {
      throw new core.ArgumentError("Parameter traceId is required.");
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/traces/' + commons.Escaper.ecapeVariable('$traceId');

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
   * List traces matching the filter expression.
   *
   * Request parameters:
   *
   * [projectId] - The stringified-version of the project id.
   *
   * [view] - ViewType specifies the projection of the result.
   * Possible string values are:
   * - "VIEW_TYPE_UNSPECIFIED" : A VIEW_TYPE_UNSPECIFIED.
   * - "MINIMAL" : A MINIMAL.
   * - "ROOTSPAN" : A ROOTSPAN.
   * - "COMPLETE" : A COMPLETE.
   *
   * [pageSize] - Maximum number of topics to return. If not specified or <= 0,
   * the implementation will select a reasonable value. The implemenation may
   * always return fewer than the requested page_size.
   *
   * [pageToken] - The token identifying the page of results to return from the
   * ListTraces method. If present, this value is should be taken from the
   * next_page_token field of a previous ListTracesResponse.
   *
   * [startTime] - End of the time interval (inclusive).
   *
   * [endTime] - Start of the time interval (exclusive).
   *
   * [filter] - An optional filter for the request.
   *
   * [orderBy] - The trace field used to establish the order of traces returned
   * by the ListTraces method. Possible options are: trace_id name (name field
   * of root span) duration (different between end_time and start_time fields of
   * root span) start (start_time field of root span) Descending order can be
   * specified by appending "desc" to the sort field: name desc Only one sort
   * field is permitted, though this may change in the future.
   *
   * Completes with a [ListTracesResponse].
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future<ListTracesResponse> list(core.String projectId, {core.String view, core.int pageSize, core.String pageToken, core.String startTime, core.String endTime, core.String filter, core.String orderBy}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (projectId == null) {
      throw new core.ArgumentError("Parameter projectId is required.");
    }
    if (view != null) {
      _queryParams["view"] = [view];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (startTime != null) {
      _queryParams["startTime"] = [startTime];
    }
    if (endTime != null) {
      _queryParams["endTime"] = [endTime];
    }
    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (orderBy != null) {
      _queryParams["orderBy"] = [orderBy];
    }

    _url = 'v1/projects/' + commons.Escaper.ecapeVariable('$projectId') + '/traces';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => new ListTracesResponse.fromJson(data));
  }

}


class V1ResourceApi {
  final commons.ApiRequester _requester;

  V1ResourceApi(commons.ApiRequester client) : 
      _requester = client;

  /**
   * Returns a discovery document in the specified `format`. The typeurl in the
   * returned google.protobuf.Any value depends on the requested format.
   *
   * Request parameters:
   *
   * [format] - The format requested for discovery.
   *
   * [labels] - A list of labels (like visibility) influencing the scope of the
   * requested doc.
   *
   * [version] - The API version of the requested discovery doc.
   *
   * [args] - Any additional arguments.
   *
   * Completes with a [commons.ApiRequestError] if the API endpoint returned an
   * error.
   *
   * If the used [http.Client] completes with an error when making a REST call,
   * this method will complete with the same error.
   */
  async.Future getDiscovery({core.String format, core.List<core.String> labels, core.String version, core.List<core.String> args}) {
    var _url = null;
    var _queryParams = new core.Map();
    var _uploadMedia = null;
    var _uploadOptions = null;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body = null;

    if (format != null) {
      _queryParams["format"] = [format];
    }
    if (labels != null) {
      _queryParams["labels"] = labels;
    }
    if (version != null) {
      _queryParams["version"] = [version];
    }
    if (args != null) {
      _queryParams["args"] = args;
    }

    _downloadOptions = null;

    _url = 'v1/discovery';

    var _response = _requester.request(_url,
                                       "GET",
                                       body: _body,
                                       queryParams: _queryParams,
                                       uploadOptions: _uploadOptions,
                                       uploadMedia: _uploadMedia,
                                       downloadOptions: _downloadOptions);
    return _response.then((data) => null);
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

/** The response message for the ListTraces method. */
class ListTracesResponse {
  /**
   * If defined, indicates that there are more topics that match the request,
   * and this value should be passed to the next ListTopicsRequest to continue.
   */
  core.String nextPageToken;
  /** The list of trace records returned. */
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

/**
 * A Trace is a collection of spans describing the execution timings of a single
 * operation.
 */
class Trace {
  /** The Project ID of the Google Cloud project. */
  core.String projectId;
  /**
   * The collection of span records within this trace. Spans that appear in
   * calls to PatchTraces may be incomplete or partial.
   */
  core.List<TraceSpan> spans;
  /**
   * A 128-bit numeric value, formatted as a 32-byte hex string, that represents
   * a trace. Each trace should have an identifier that is globally unique.
   */
  core.String traceId;

  Trace();

  Trace.fromJson(core.Map _json) {
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("spans")) {
      spans = _json["spans"].map((value) => new TraceSpan.fromJson(value)).toList();
    }
    if (_json.containsKey("traceId")) {
      traceId = _json["traceId"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (spans != null) {
      _json["spans"] = spans.map((value) => (value).toJson()).toList();
    }
    if (traceId != null) {
      _json["traceId"] = traceId;
    }
    return _json;
  }
}

/** A span is the data recorded with a single span. */
class TraceSpan {
  /** The end time of the span in nanoseconds from the UNIX epoch. */
  core.String endTime;
  /**
   * SpanKind distinguishes spans generated in a particular context. For
   * example, two spans with the same name, one with the kind RPC_CLIENT, and
   * the other with RPC_SERVER can indicate the queueing latency associated with
   * the span.
   * Possible string values are:
   * - "SPAN_KIND_UNSPECIFIED" : A SPAN_KIND_UNSPECIFIED.
   * - "RPC_SERVER" : A RPC_SERVER.
   * - "RPC_CLIENT" : A RPC_CLIENT.
   */
  core.String kind;
  /** Annotations via labels. */
  core.Map<core.String, core.String> labels;
  /**
   * The name of the trace. This is sanitized and displayed on the UI. This may
   * be a method name or some other per-callsite name. For the same binary and
   * the same call point, it is a good practice to choose a consistent name in
   * order to correlate cross-trace spans.
   */
  core.String name;
  /**
   * Identifies the parent of the current span. May be missing. Serialized bytes
   * representation of SpanId.
   */
  core.String parentSpanId;
  /**
   * Identifier of the span within the trace. Each span should have an
   * identifier that is unique per trace.
   */
  core.String spanId;
  /** The start time of the span in nanoseconds from the UNIX epoch. */
  core.String startTime;

  TraceSpan();

  TraceSpan.fromJson(core.Map _json) {
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("kind")) {
      kind = _json["kind"];
    }
    if (_json.containsKey("labels")) {
      labels = _json["labels"];
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
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (kind != null) {
      _json["kind"] = kind;
    }
    if (labels != null) {
      _json["labels"] = labels;
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
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    return _json;
  }
}

/** A list of traces for the PatchTraces method. */
class Traces {
  /** A list of traces. */
  core.List<Trace> traces;

  Traces();

  Traces.fromJson(core.Map _json) {
    if (_json.containsKey("traces")) {
      traces = _json["traces"].map((value) => new Trace.fromJson(value)).toList();
    }
  }

  core.Map toJson() {
    var _json = new core.Map();
    if (traces != null) {
      _json["traces"] = traces.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}
