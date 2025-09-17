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

/// Cloud Trace API - v2beta1
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
///   - [ProjectsTraceSinksResource]
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

  ProjectsTraceSinksResource get traceSinks =>
      ProjectsTraceSinksResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsTraceSinksResource {
  final commons.ApiRequester _requester;

  ProjectsTraceSinksResource(commons.ApiRequester client) : _requester = client;

  /// Creates a sink that exports trace spans to a destination.
  ///
  /// The export of newly-ingested traces begins immediately, unless the sink's
  /// `writer_identity` is not permitted to write to the destination. A sink can
  /// export traces only from the resource owning the sink (the 'parent').
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource in which to create the sink (currently
  /// only project sinks are supported): "projects/\[PROJECT_ID\]" Examples:
  /// `"projects/my-trace-project"`, `"projects/123456789"`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TraceSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TraceSink> create(
    TraceSink request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/traceSinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TraceSink.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a sink.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the sink to delete, including
  /// the parent resource and the sink identifier:
  /// "projects/\[PROJECT_NUMBER\]/traceSinks/\[SINK_ID\]" Example:
  /// `"projects/12345/traceSinks/my-sink-id"`.
  /// Value must have pattern `^projects/\[^/\]+/traceSinks/\[^/\]+$`.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get a trace sink by name under the parent resource (GCP project).
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the sink:
  /// "projects/\[PROJECT_NUMBER\]/traceSinks/\[SINK_ID\]" Example:
  /// `"projects/12345/traceSinks/my-sink-id"`.
  /// Value must have pattern `^projects/\[^/\]+/traceSinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TraceSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TraceSink> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return TraceSink.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all sinks for the parent resource (GCP project).
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource whose sinks are to be listed
  /// (currently only project parent resources are supported):
  /// "projects/\[PROJECT_ID\]"
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of results to return from this
  /// request. Non-positive values are ignored. The presence of
  /// `next_page_token` in the response indicates that more results might be
  /// available.
  ///
  /// [pageToken] - Optional. If present, then retrieve the next batch of
  /// results from the preceding call to this method. `page_token` must be the
  /// value of `next_page_token` from the previous response. The values of other
  /// method parameters should be identical to those in the previous call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTraceSinksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTraceSinksResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$parent') + '/traceSinks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTraceSinksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a sink.
  ///
  /// This method updates fields in the existing sink according to the provided
  /// update mask. The sink's name cannot be changed nor any output-only fields
  /// (e.g. the writer_identity).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The full resource name of the sink to update, including
  /// the parent resource and the sink identifier:
  /// "projects/\[PROJECT_NUMBER\]/traceSinks/\[SINK_ID\]" Example:
  /// `"projects/12345/traceSinks/my-sink-id"`.
  /// Value must have pattern `^projects/\[^/\]+/traceSinks/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask that specifies the fields in
  /// `trace_sink` that are to be updated. A sink field is overwritten if, and
  /// only if, it is in the update mask. `name` and `writer_identity` fields
  /// cannot be updated. An empty `update_mask` is considered an error. For a
  /// detailed `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// Example: `updateMask=output_config`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TraceSink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TraceSink> patch(
    TraceSink request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return TraceSink.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Result returned from `ListTraceSinks`.
class ListTraceSinksResponse {
  /// A paginated response where more pages might be available has
  /// `next_page_token` set.
  ///
  /// To get the next set of results, call the same method again using the value
  /// of `next_page_token` as `page_token`.
  core.String? nextPageToken;

  /// A list of sinks.
  core.List<TraceSink>? sinks;

  ListTraceSinksResponse({this.nextPageToken, this.sinks});

  ListTraceSinksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        sinks:
            (json_['sinks'] as core.List?)
                ?.map(
                  (value) => TraceSink.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (sinks != null) 'sinks': sinks!,
  };
}

/// OutputConfig contains a destination for writing trace data.
class OutputConfig {
  /// The destination for writing trace data.
  ///
  /// Supported formats include:
  /// "bigquery.googleapis.com/projects/\[PROJECT_ID\]/datasets/\[DATASET\]"
  ///
  /// Required.
  core.String? destination;

  OutputConfig({this.destination});

  OutputConfig.fromJson(core.Map json_)
    : this(destination: json_['destination'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (destination != null) 'destination': destination!,
  };
}

/// Describes a sink used to export traces to a BigQuery dataset.
///
/// The sink must be created within a project.
class TraceSink {
  /// Identifier.
  ///
  /// The canonical sink resource name, unique within the project. Must be of
  /// the form: projects/\[PROJECT_NUMBER\]/traceSinks/\[SINK_ID\]. E.g.:
  /// `"projects/12345/traceSinks/my-project-trace-sink"`. Sink identifiers are
  /// limited to 256 characters and can include only the following characters:
  /// upper and lower-case alphanumeric characters, underscores, hyphens, and
  /// periods.
  core.String? name;

  /// The export destination.
  ///
  /// Required.
  OutputConfig? outputConfig;

  /// A service account name for exporting the data.
  ///
  /// This field is set by sinks.create and sinks.update. The service account
  /// will need to be granted write access to the destination specified in the
  /// output configuration, see \[Granting access for a
  /// resource\](/iam/docs/granting-roles-to-service-accounts#granting_access_to_a_service_account_for_a_resource).
  /// To create tables and to write data, this account needs the `dataEditor`
  /// role. Read more about roles in the
  /// [BigQuery documentation](https://cloud.google.com/bigquery/docs/access-control).
  /// E.g.: "service-00000001@00000002.iam.gserviceaccount.com"
  ///
  /// Output only.
  core.String? writerIdentity;

  TraceSink({this.name, this.outputConfig, this.writerIdentity});

  TraceSink.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        outputConfig:
            json_.containsKey('outputConfig')
                ? OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        writerIdentity: json_['writerIdentity'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (outputConfig != null) 'outputConfig': outputConfig!,
    if (writerIdentity != null) 'writerIdentity': writerIdentity!,
  };
}
