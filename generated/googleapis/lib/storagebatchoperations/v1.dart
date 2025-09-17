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

/// Storage Batch Operations API - v1
///
/// For more information, see
/// <https://cloud.google.com/storage/docs/batch-operations/overview>
///
/// Create an instance of [StorageBatchOperationsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsJobsResource]
///     - [ProjectsLocationsOperationsResource]
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

class StorageBatchOperationsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  StorageBatchOperationsApi(
    http.Client client, {
    core.String rootUrl = 'https://storagebatchoperations.googleapis.com/',
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

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsResource get jobs =>
      ProjectsLocationsJobsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Unless explicitly documented otherwise,
  /// don't use this unsupported field which is primarily intended for internal
  /// usage.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsResource(commons.ApiRequester client)
    : _requester = client;

  /// Cancels a batch job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The `name` of the job to cancel. Format:
  /// projects/{project_id}/locations/global/jobs/{job_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CancelJobResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CancelJobResponse> cancel(
    CancelJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return CancelJobResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a batch job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [jobId] - Required. The optional `job_id` for this Job . If not specified,
  /// an id is generated. `job_id` should be no more than 128 characters and
  /// must include only characters available in DNS names, as defined by
  /// RFC-1123.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID in case you need to retry your request.
  /// Requests with same `request_id` will be ignored for at least 60 minutes
  /// since the first request. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> create(
    Job request,
    core.String parent, {
    core.String? jobId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a batch job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The `name` of the job to delete. Format:
  /// projects/{project_id}/locations/global/jobs/{job_id} .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID in case you need to retry your request.
  /// Requests with same `request_id` will be ignored for at least 60 minutes
  /// since the first request. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
  async.Future<Empty> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a batch job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. `name` of the job to retrieve. Format:
  /// projects/{project_id}/locations/global/jobs/{job_id} .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Jobs in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: projects/{project_id}/locations/global.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filters results as defined by
  /// https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. Field to sort by. Supported fields are name,
  /// create_time.
  ///
  /// [pageSize] - Optional. The list page size. default page size is 100.
  ///
  /// [pageToken] - Optional. The list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
    : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Empty> cancel(
    CancelOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter.
  ///
  /// [pageSize] - The standard list page size.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOperationsResponse> list(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Describes configuration of a single bucket and its objects to be
/// transformed.
class Bucket {
  /// Bucket name for the objects to be transformed.
  ///
  /// Required.
  core.String? bucket;

  /// Specifies objects in a manifest file.
  Manifest? manifest;

  /// Specifies objects matching a prefix set.
  PrefixList? prefixList;

  Bucket({this.bucket, this.manifest, this.prefixList});

  Bucket.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        manifest:
            json_.containsKey('manifest')
                ? Manifest.fromJson(
                  json_['manifest'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        prefixList:
            json_.containsKey('prefixList')
                ? PrefixList.fromJson(
                  json_['prefixList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucket != null) 'bucket': bucket!,
    if (manifest != null) 'manifest': manifest!,
    if (prefixList != null) 'prefixList': prefixList!,
  };
}

/// Describes list of buckets and their objects to be transformed.
class BucketList {
  /// List of buckets and their objects to be transformed.
  ///
  /// Currently, only one bucket configuration is supported. If multiple buckets
  /// are specified, an error will be returned.
  ///
  /// Required.
  core.List<Bucket>? buckets;

  BucketList({this.buckets});

  BucketList.fromJson(core.Map json_)
    : this(
        buckets:
            (json_['buckets'] as core.List?)
                ?.map(
                  (value) => Bucket.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (buckets != null) 'buckets': buckets!,
  };
}

/// Message for Job to Cancel
class CancelJobRequest {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID in case you need to retry your request.
  /// Requests with same `request_id` will be ignored for at least 60 minutes
  /// since the first request. The request ID must be a valid UUID with the
  /// exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  CancelJobRequest({this.requestId});

  CancelJobRequest.fromJson(core.Map json_)
    : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (requestId != null) 'requestId': requestId!,
  };
}

/// Message for response to cancel Job.
typedef CancelJobResponse = $Empty;

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Describes details about the progress of the job.
class Counters {
  /// Number of objects failed.
  ///
  /// Output only.
  core.String? failedObjectCount;

  /// Number of objects completed.
  ///
  /// Output only.
  core.String? succeededObjectCount;

  /// Number of objects listed.
  ///
  /// Output only.
  core.String? totalObjectCount;

  Counters({
    this.failedObjectCount,
    this.succeededObjectCount,
    this.totalObjectCount,
  });

  Counters.fromJson(core.Map json_)
    : this(
        failedObjectCount: json_['failedObjectCount'] as core.String?,
        succeededObjectCount: json_['succeededObjectCount'] as core.String?,
        totalObjectCount: json_['totalObjectCount'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (failedObjectCount != null) 'failedObjectCount': failedObjectCount!,
    if (succeededObjectCount != null)
      'succeededObjectCount': succeededObjectCount!,
    if (totalObjectCount != null) 'totalObjectCount': totalObjectCount!,
  };
}

/// Describes options to delete an object.
class DeleteObject {
  /// Controls deletion behavior when versioning is enabled for the object's
  /// bucket.
  ///
  /// If true both live and noncurrent objects will be permanently deleted.
  /// Otherwise live objects in versioned buckets will become noncurrent and
  /// objects that were already noncurrent will be skipped. This setting doesn't
  /// have any impact on the Soft Delete feature. All objects deleted by this
  /// service can be be restored for the duration of the Soft Delete retention
  /// duration if enabled. If enabled and the manifest doesn't specify an
  /// object's generation, a GetObjectMetadata call (a Class B operation) will
  /// be made to determine the live object generation.
  ///
  /// Required.
  core.bool? permanentObjectDeletionEnabled;

  DeleteObject({this.permanentObjectDeletionEnabled});

  DeleteObject.fromJson(core.Map json_)
    : this(
        permanentObjectDeletionEnabled:
            json_['permanentObjectDeletionEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (permanentObjectDeletionEnabled != null)
      'permanentObjectDeletionEnabled': permanentObjectDeletionEnabled!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// An entry describing an error that has occurred.
class ErrorLogEntry {
  /// At most 5 error log entries are recorded for a given error code for a job.
  ///
  /// Optional. Output only.
  core.List<core.String>? errorDetails;

  /// Object URL.
  ///
  /// e.g. gs://my_bucket/object.txt
  ///
  /// Required. Output only.
  core.String? objectUri;

  ErrorLogEntry({this.errorDetails, this.objectUri});

  ErrorLogEntry.fromJson(core.Map json_)
    : this(
        errorDetails:
            (json_['errorDetails'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        objectUri: json_['objectUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorDetails != null) 'errorDetails': errorDetails!,
    if (objectUri != null) 'objectUri': objectUri!,
  };
}

/// A summary of errors by error code, plus a count and sample error log
/// entries.
class ErrorSummary {
  /// The canonical error code.
  ///
  /// Required.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success. HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level. For example, when
  /// a client-specified test-and-set fails, indicating the client should
  /// restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the
  /// client should not retry until the system state has been explicitly fixed.
  /// For example, if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range \[0,2^32-1\], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String? errorCode;

  /// Number of errors encountered per `error_code`.
  ///
  /// Required.
  core.String? errorCount;

  /// Sample error logs.
  ///
  /// Required.
  core.List<ErrorLogEntry>? errorLogEntries;

  ErrorSummary({this.errorCode, this.errorCount, this.errorLogEntries});

  ErrorSummary.fromJson(core.Map json_)
    : this(
        errorCode: json_['errorCode'] as core.String?,
        errorCount: json_['errorCount'] as core.String?,
        errorLogEntries:
            (json_['errorLogEntries'] as core.List?)
                ?.map(
                  (value) => ErrorLogEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorCode != null) 'errorCode': errorCode!,
    if (errorCount != null) 'errorCount': errorCount!,
    if (errorLogEntries != null) 'errorLogEntries': errorLogEntries!,
  };
}

/// The Storage Batch Operations Job description.
class Job {
  /// Specifies a list of buckets and their objects to be transformed.
  BucketList? bucketList;

  /// The time that the job was completed.
  ///
  /// Output only.
  core.String? completeTime;

  /// Information about the progress of the job.
  ///
  /// Output only.
  Counters? counters;

  /// The time that the job was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Delete objects.
  DeleteObject? deleteObject;

  /// A description provided by the user for the job.
  ///
  /// Its max length is 1024 bytes when Unicode-encoded.
  ///
  /// Optional.
  core.String? description;

  /// Summarizes errors encountered with sample error log entries.
  ///
  /// Output only.
  core.List<ErrorSummary>? errorSummaries;

  /// Logging configuration.
  ///
  /// Optional.
  LoggingConfig? loggingConfig;

  /// Identifier.
  ///
  /// The resource name of the Job. job_id is unique within the project, that is
  /// either set by the customer or defined by the service. Format:
  /// projects/{project}/locations/global/jobs/{job_id} . For example:
  /// "projects/123456/locations/global/jobs/job01".
  core.String? name;

  /// Updates object metadata.
  ///
  /// Allows updating fixed-key and custom metadata and fixed-key metadata i.e.
  /// Cache-Control, Content-Disposition, Content-Encoding, Content-Language,
  /// Content-Type, Custom-Time.
  PutMetadata? putMetadata;

  /// Changes object hold status.
  PutObjectHold? putObjectHold;

  /// Rewrite the object and updates metadata like KMS key.
  RewriteObject? rewriteObject;

  /// The time that the job was scheduled.
  ///
  /// Output only.
  core.String? scheduleTime;

  /// State of the job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "RUNNING" : In progress.
  /// - "SUCCEEDED" : Completed successfully.
  /// - "CANCELED" : Cancelled by the user.
  /// - "FAILED" : Terminated due to an unrecoverable failure.
  core.String? state;

  Job({
    this.bucketList,
    this.completeTime,
    this.counters,
    this.createTime,
    this.deleteObject,
    this.description,
    this.errorSummaries,
    this.loggingConfig,
    this.name,
    this.putMetadata,
    this.putObjectHold,
    this.rewriteObject,
    this.scheduleTime,
    this.state,
  });

  Job.fromJson(core.Map json_)
    : this(
        bucketList:
            json_.containsKey('bucketList')
                ? BucketList.fromJson(
                  json_['bucketList'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        completeTime: json_['completeTime'] as core.String?,
        counters:
            json_.containsKey('counters')
                ? Counters.fromJson(
                  json_['counters'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        deleteObject:
            json_.containsKey('deleteObject')
                ? DeleteObject.fromJson(
                  json_['deleteObject'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        errorSummaries:
            (json_['errorSummaries'] as core.List?)
                ?.map(
                  (value) => ErrorSummary.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        loggingConfig:
            json_.containsKey('loggingConfig')
                ? LoggingConfig.fromJson(
                  json_['loggingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        putMetadata:
            json_.containsKey('putMetadata')
                ? PutMetadata.fromJson(
                  json_['putMetadata'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        putObjectHold:
            json_.containsKey('putObjectHold')
                ? PutObjectHold.fromJson(
                  json_['putObjectHold'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rewriteObject:
            json_.containsKey('rewriteObject')
                ? RewriteObject.fromJson(
                  json_['rewriteObject'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        scheduleTime: json_['scheduleTime'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bucketList != null) 'bucketList': bucketList!,
    if (completeTime != null) 'completeTime': completeTime!,
    if (counters != null) 'counters': counters!,
    if (createTime != null) 'createTime': createTime!,
    if (deleteObject != null) 'deleteObject': deleteObject!,
    if (description != null) 'description': description!,
    if (errorSummaries != null) 'errorSummaries': errorSummaries!,
    if (loggingConfig != null) 'loggingConfig': loggingConfig!,
    if (name != null) 'name': name!,
    if (putMetadata != null) 'putMetadata': putMetadata!,
    if (putObjectHold != null) 'putObjectHold': putObjectHold!,
    if (rewriteObject != null) 'rewriteObject': rewriteObject!,
    if (scheduleTime != null) 'scheduleTime': scheduleTime!,
    if (state != null) 'state': state!,
  };
}

/// Message for response to listing Jobs
class ListJobsResponse {
  /// A list of storage batch jobs.
  core.List<Job>? jobs;

  /// A token identifying a page of results.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListJobsResponse({this.jobs, this.nextPageToken, this.unreachable});

  ListJobsResponse.fromJson(core.Map json_)
    : this(
        jobs:
            (json_['jobs'] as core.List?)
                ?.map(
                  (value) => Job.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (jobs != null) 'jobs': jobs!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
    : this(
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => Location.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (locations != null) 'locations': locations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (operations != null) 'operations': operations!,
  };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Specifies the Cloud Logging behavior.
class LoggingConfig {
  /// States in which Action are logged.If empty, no logs are generated.
  ///
  /// Required.
  core.List<core.String>? logActionStates;

  /// Specifies the actions to be logged.
  ///
  /// Required.
  core.List<core.String>? logActions;

  LoggingConfig({this.logActionStates, this.logActions});

  LoggingConfig.fromJson(core.Map json_)
    : this(
        logActionStates:
            (json_['logActionStates'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        logActions:
            (json_['logActions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (logActionStates != null) 'logActionStates': logActionStates!,
    if (logActions != null) 'logActions': logActions!,
  };
}

/// Describes list of objects to be transformed.
class Manifest {
  /// `manifest_location` must contain the manifest source file that is a CSV
  /// file in a Google Cloud Storage bucket.
  ///
  /// Each row in the file must include the object details i.e. BucketId and
  /// Name. Generation may optionally be specified. When it is not specified the
  /// live object is acted upon. `manifest_location` should either be 1) An
  /// absolute path to the object in the format of
  /// `gs://bucket_name/path/file_name.csv`. 2) An absolute path with a single
  /// wildcard character in the file name, for example
  /// `gs://bucket_name/path/file_name*.csv`. If manifest location is specified
  /// with a wildcard, objects in all manifest files matching the pattern will
  /// be acted upon.
  ///
  /// Required.
  core.String? manifestLocation;

  Manifest({this.manifestLocation});

  Manifest.fromJson(core.Map json_)
    : this(manifestLocation: json_['manifestLocation'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (manifestLocation != null) 'manifestLocation': manifestLocation!,
  };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  Status? error;

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
    : this(
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
                ? json_['response'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (done != null) 'done': done!,
    if (error != null) 'error': error!,
    if (metadata != null) 'metadata': metadata!,
    if (name != null) 'name': name!,
    if (response != null) 'response': response!,
  };
}

/// Describes prefixes of objects to be transformed.
class PrefixList {
  /// Include prefixes of the objects to be transformed.
  ///
  /// * Supports full object name * Supports prefix of the object name *
  /// Wildcards are not supported * Supports empty string for all objects in a
  /// bucket.
  ///
  /// Optional.
  core.List<core.String>? includedObjectPrefixes;

  PrefixList({this.includedObjectPrefixes});

  PrefixList.fromJson(core.Map json_)
    : this(
        includedObjectPrefixes:
            (json_['includedObjectPrefixes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (includedObjectPrefixes != null)
      'includedObjectPrefixes': includedObjectPrefixes!,
  };
}

/// Describes options for object metadata update.
class PutMetadata {
  /// Updates objects Cache-Control fixed metadata.
  ///
  /// Unset values will be ignored. Set empty values to clear the metadata.
  /// Additionally, the value for Custom-Time cannot decrease. Refer to
  /// documentation in
  /// https://cloud.google.com/storage/docs/metadata#caching_data.
  ///
  /// Optional.
  core.String? cacheControl;

  /// Updates objects Content-Disposition fixed metadata.
  ///
  /// Unset values will be ignored. Set empty values to clear the metadata.
  /// Refer https://cloud.google.com/storage/docs/metadata#content-disposition
  /// for additional documentation.
  ///
  /// Optional.
  core.String? contentDisposition;

  /// Updates objects Content-Encoding fixed metadata.
  ///
  /// Unset values will be ignored. Set empty values to clear the metadata.
  /// Refer to documentation in
  /// https://cloud.google.com/storage/docs/metadata#content-encoding.
  ///
  /// Optional.
  core.String? contentEncoding;

  /// Updates objects Content-Language fixed metadata.
  ///
  /// Refer to ISO 639-1 language codes for typical values of this metadata. Max
  /// length 100 characters. Unset values will be ignored. Set empty values to
  /// clear the metadata. Refer to documentation in
  /// https://cloud.google.com/storage/docs/metadata#content-language.
  ///
  /// Optional.
  core.String? contentLanguage;

  /// Updates objects Content-Type fixed metadata.
  ///
  /// Unset values will be ignored. Set empty values to clear the metadata.
  /// Refer to documentation in
  /// https://cloud.google.com/storage/docs/metadata#content-type
  ///
  /// Optional.
  core.String? contentType;

  /// Updates objects custom metadata.
  ///
  /// Adds or sets individual custom metadata key value pairs on objects. Keys
  /// that are set with empty custom metadata values will have its value
  /// cleared. Existing custom metadata not specified with this flag is not
  /// changed. Refer to documentation in
  /// https://cloud.google.com/storage/docs/metadata#custom-metadata
  ///
  /// Optional.
  core.Map<core.String, core.String>? customMetadata;

  /// Updates objects Custom-Time fixed metadata.
  ///
  /// Unset values will be ignored. Set empty values to clear the metadata.
  /// Refer to documentation in
  /// https://cloud.google.com/storage/docs/metadata#custom-time.
  ///
  /// Optional.
  core.String? customTime;

  PutMetadata({
    this.cacheControl,
    this.contentDisposition,
    this.contentEncoding,
    this.contentLanguage,
    this.contentType,
    this.customMetadata,
    this.customTime,
  });

  PutMetadata.fromJson(core.Map json_)
    : this(
        cacheControl: json_['cacheControl'] as core.String?,
        contentDisposition: json_['contentDisposition'] as core.String?,
        contentEncoding: json_['contentEncoding'] as core.String?,
        contentLanguage: json_['contentLanguage'] as core.String?,
        contentType: json_['contentType'] as core.String?,
        customMetadata: (json_['customMetadata']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        customTime: json_['customTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cacheControl != null) 'cacheControl': cacheControl!,
    if (contentDisposition != null) 'contentDisposition': contentDisposition!,
    if (contentEncoding != null) 'contentEncoding': contentEncoding!,
    if (contentLanguage != null) 'contentLanguage': contentLanguage!,
    if (contentType != null) 'contentType': contentType!,
    if (customMetadata != null) 'customMetadata': customMetadata!,
    if (customTime != null) 'customTime': customTime!,
  };
}

/// Describes options to update object hold.
class PutObjectHold {
  /// Updates object event based holds state.
  ///
  /// When object event based hold is set, object cannot be deleted or replaced.
  /// Resets object's time in the bucket for the purposes of the retention
  /// period.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HOLD_STATUS_UNSPECIFIED" : Default value, Object hold status will not
  /// be changed.
  /// - "SET" : Places the hold.
  /// - "UNSET" : Releases the hold.
  core.String? eventBasedHold;

  /// Updates object temporary holds state.
  ///
  /// When object temporary hold is set, object cannot be deleted or replaced.
  ///
  /// Required.
  /// Possible string values are:
  /// - "HOLD_STATUS_UNSPECIFIED" : Default value, Object hold status will not
  /// be changed.
  /// - "SET" : Places the hold.
  /// - "UNSET" : Releases the hold.
  core.String? temporaryHold;

  PutObjectHold({this.eventBasedHold, this.temporaryHold});

  PutObjectHold.fromJson(core.Map json_)
    : this(
        eventBasedHold: json_['eventBasedHold'] as core.String?,
        temporaryHold: json_['temporaryHold'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventBasedHold != null) 'eventBasedHold': eventBasedHold!,
    if (temporaryHold != null) 'temporaryHold': temporaryHold!,
  };
}

/// Describes options for object rewrite.
class RewriteObject {
  /// Resource name of the Cloud KMS key that will be used to encrypt the
  /// object.
  ///
  /// The Cloud KMS key must be located in same location as the object. Refer to
  /// https://cloud.google.com/storage/docs/encryption/using-customer-managed-keys#add-object-key
  /// for additional documentation. Format:
  /// projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}
  /// For example:
  /// "projects/123456/locations/us-central1/keyRings/my-keyring/cryptoKeys/my-key".
  /// The object will be rewritten and set with the specified KMS key.
  ///
  /// Required.
  core.String? kmsKey;

  RewriteObject({this.kmsKey});

  RewriteObject.fromJson(core.Map json_)
    : this(kmsKey: json_['kmsKey'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (kmsKey != null) 'kmsKey': kmsKey!,
  };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;
