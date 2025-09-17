// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unintended_html_in_doc_comment
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Trace API - v1
///
/// Sends application trace data to Cloud Trace for viewing. Trace data is
/// collected for all App Engine applications by default. Trace data from other
/// applications can be provided using this API. This library is used to
/// interact with the Cloud Trace API directly. If you are looking to instrument
/// your application for Cloud Trace, we recommend using OpenTelemetry.
///
/// For more information, see <https://cloud.google.com/trace>
///
/// Create an instance of [CloudTraceApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsTracesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../shared.dart';
import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Sends application trace data to Cloud Trace for viewing.
///
/// Trace data is collected for all App Engine applications by default. Trace
/// data from other applications can be provided using this API. This library is
/// used to interact with the Cloud Trace API directly. If you are looking to
/// instrument your application for Cloud Trace, we recommend using
/// OpenTelemetry.
class CloudTraceApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Write Trace data for a project or application
  static const traceAppendScope =
      'https://www.googleapis.com/auth/trace.append';

  /// Read Trace data for a project or application
  static const traceReadonlyScope =
      'https://www.googleapis.com/auth/trace.readonly';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudTraceApi(
    http.Client client, {
    core.String rootUrl = 'https://cloudtrace.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsTracesResource get traces => ProjectsTracesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Sends trace spans to Cloud Trace.
  ///
  /// Spans cannot be updated. If the trace ID and span ID already exist, an
  /// additional copy of the span will be stored.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the Cloud project where the trace data is
  /// stored.
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
  async.Future<Empty> patchTraces(
    Traces request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/traces';

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTracesResource {
  final commons.ApiRequester _requester;

  ProjectsTracesResource(commons.ApiRequester client) : _requester = client;

  /// Gets a single trace by its ID.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the Cloud project where the trace data is
  /// stored.
  ///
  /// [traceId] - Required. ID of the trace to return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Trace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Trace> get(
    core.String projectId,
    core.String traceId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' +
        commons.escapeVariable('$projectId') +
        '/traces/' +
        commons.escapeVariable('$traceId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Trace.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns a list of traces that match the specified filter conditions.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. ID of the Cloud project where the trace data is
  /// stored.
  ///
  /// [endTime] - End of the time interval (inclusive) during which the trace
  /// data was collected from the application.
  ///
  /// [filter] - Optional. A filter against properties of the trace. See
  /// [filter syntax documentation](https://cloud.google.com/trace/docs/trace-filters)
  /// for details.
  ///
  /// [orderBy] - Optional. Field used to sort the returned traces. Can be one
  /// of the following: * `trace_id` * `name` (`name` field of root span in the
  /// trace) * `duration` (difference between `end_time` and `start_time` fields
  /// of the root span) * `start` (`start_time` field of the root span)
  /// Descending order can be specified by appending `desc` to the sort field
  /// (for example, `name desc`). Only one sort field is permitted.
  ///
  /// [pageSize] - Optional. Maximum number of traces to return. If not
  /// specified or \<= 0, the implementation selects a reasonable value. The
  /// implementation may return fewer traces than the requested page size.
  ///
  /// [pageToken] - Token identifying the page of results to return. If
  /// provided, use the value of the `next_page_token` field from a previous
  /// request.
  ///
  /// [startTime] - Start of the time interval (inclusive) during which the
  /// trace data was collected from the application.
  ///
  /// [view] - Optional. Type of data returned for traces in the list. Default
  /// is `MINIMAL`.
  /// Possible string values are:
  /// - "VIEW_TYPE_UNSPECIFIED" : Default is `MINIMAL` if unspecified.
  /// - "MINIMAL" : Minimal view of the trace record that contains only the
  /// project and trace IDs.
  /// - "ROOTSPAN" : Root span view of the trace record that returns the root
  /// spans along with the minimal trace data.
  /// - "COMPLETE" : Complete view of the trace record that contains the actual
  /// trace data. This is equivalent to calling the REST `get` or RPC `GetTrace`
  /// method using the ID of each listed trace.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTracesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTracesResponse> list(
    core.String projectId, {
    core.String? endTime,
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/projects/' + commons.escapeVariable('$projectId') + '/traces';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTracesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The response message for the `ListTraces` method.
class ListTracesResponse {
  /// If defined, indicates that there are more traces that match the request
  /// and that this value should be passed to the next request to continue
  /// retrieving additional traces.
  core.String? nextPageToken;

  /// List of trace records as specified by the view parameter.
  core.List<Trace>? traces;

  ListTracesResponse({this.nextPageToken, this.traces});

  ListTracesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        traces:
            (json_['traces'] as core.List?)
                ?.map(
                  (value) => Trace.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (traces != null) 'traces': traces!,
  };
}

/// A trace describes how long it takes for an application to perform an
/// operation.
///
/// It consists of a set of spans, each of which represent a single timed event
/// within the operation.
class Trace {
  /// Project ID of the Cloud project where the trace data is stored.
  core.String? projectId;

  /// Collection of spans in the trace.
  core.List<TraceSpan>? spans;

  /// Globally unique identifier for the trace.
  ///
  /// This identifier is a 128-bit numeric value formatted as a 32-byte hex
  /// string. For example, `382d4f4c6b7bb2f4a972559d9085001d`. The numeric value
  /// should not be zero.
  core.String? traceId;

  Trace({this.projectId, this.spans, this.traceId});

  Trace.fromJson(core.Map json_)
    : this(
        projectId: json_['projectId'] as core.String?,
        spans:
            (json_['spans'] as core.List?)
                ?.map(
                  (value) => TraceSpan.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        traceId: json_['traceId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (projectId != null) 'projectId': projectId!,
    if (spans != null) 'spans': spans!,
    if (traceId != null) 'traceId': traceId!,
  };
}

/// A span represents a single timed event within a trace.
///
/// Spans can be nested and form a trace tree. Often, a trace contains a root
/// span that describes the end-to-end latency of an operation and, optionally,
/// one or more subspans for its suboperations. Spans do not need to be
/// contiguous. There may be gaps between spans in a trace.
class TraceSpan {
  /// End time of the span in seconds and nanoseconds from the UNIX epoch.
  core.String? endTime;

  /// Distinguishes between spans generated in a particular context.
  ///
  /// For example, two spans with the same name may be distinguished using
  /// `RPC_CLIENT` and `RPC_SERVER` to identify queueing latency associated with
  /// the span.
  /// Possible string values are:
  /// - "SPAN_KIND_UNSPECIFIED" : Unspecified.
  /// - "RPC_SERVER" : Indicates that the span covers server-side handling of an
  /// RPC or other remote network request.
  /// - "RPC_CLIENT" : Indicates that the span covers the client-side wrapper
  /// around an RPC or other remote request.
  core.String? kind;

  /// Collection of labels associated with the span.
  ///
  /// Label keys must be less than 128 bytes. Label values must be less than 16
  /// KiB. Some keys might have predefined meaning, and you can also create your
  /// own. For more information, see
  /// [Cloud Trace labels](https://cloud.google.com/trace/docs/trace-labels).
  core.Map<core.String, core.String>? labels;

  /// Name of the span.
  ///
  /// Must be less than 128 bytes. The span name is sanitized and displayed in
  /// the Trace tool in the Google Cloud Platform Console. The name may be a
  /// method name or some other per-call site name. For the same executable and
  /// the same call point, a best practice is to use a consistent name, which
  /// makes it easier to correlate cross-trace spans.
  core.String? name;

  /// ID of the parent span, if any.
  ///
  /// Optional.
  core.String? parentSpanId;

  /// Identifier for the span.
  ///
  /// Must be a 64-bit integer other than 0 and unique within a trace. For
  /// example, `2205310701640571284`.
  core.String? spanId;

  /// Start time of the span in seconds and nanoseconds from the UNIX epoch.
  core.String? startTime;

  TraceSpan({
    this.endTime,
    this.kind,
    this.labels,
    this.name,
    this.parentSpanId,
    this.spanId,
    this.startTime,
  });

  TraceSpan.fromJson(core.Map json_)
    : this(
        endTime: json_['endTime'] as core.String?,
        kind: json_['kind'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        parentSpanId: json_['parentSpanId'] as core.String?,
        spanId: json_['spanId'] as core.String?,
        startTime: json_['startTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endTime != null) 'endTime': endTime!,
    if (kind != null) 'kind': kind!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (parentSpanId != null) 'parentSpanId': parentSpanId!,
    if (spanId != null) 'spanId': spanId!,
    if (startTime != null) 'startTime': startTime!,
  };
}

/// List of new or updated traces.
class Traces {
  /// List of traces.
  core.List<Trace>? traces;

  Traces({this.traces});

  Traces.fromJson(core.Map json_)
    : this(
        traces:
            (json_['traces'] as core.List?)
                ?.map(
                  (value) => Trace.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (traces != null) 'traces': traces!,
  };
}
