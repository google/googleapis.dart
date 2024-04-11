// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Cloud Document AI API - v1
///
/// Service to parse structured information from unstructured or semi-structured
/// documents using state-of-the-art Google AI such as natural language,
/// computer vision, translation, and AutoML.
///
/// For more information, see <https://cloud.google.com/document-ai/docs/>
///
/// Create an instance of [DocumentApi] to access these resources:
///
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsProcessorTypesResource]
///     - [ProjectsLocationsProcessorsResource]
///       - [ProjectsLocationsProcessorsHumanReviewConfigResource]
///       - [ProjectsLocationsProcessorsProcessorVersionsResource]
///         - [ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource]
///   - [ProjectsOperationsResource]
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

/// Service to parse structured information from unstructured or semi-structured
/// documents using state-of-the-art Google AI such as natural language,
/// computer vision, translation, and AutoML.
class DocumentApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  DocumentApi(http.Client client,
      {core.String rootUrl = 'https://documentai.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern `^operations/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsProcessorTypesResource get processorTypes =>
      ProjectsLocationsProcessorTypesResource(_requester);
  ProjectsLocationsProcessorsResource get processors =>
      ProjectsLocationsProcessorsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Fetches processor types.
  ///
  /// Note that we don't use ListProcessorTypes here, because it isn't
  /// paginated.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location of processor types to list. Format:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1FetchProcessorTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1FetchProcessorTypesResponse>
      fetchProcessorTypes(
    core.String parent, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':fetchProcessorTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1FetchProcessorTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

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
  /// Completes with a [GoogleCloudLocationLocation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationLocation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  /// Completes with a [GoogleCloudLocationListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudLocationListLocationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+/operations$`.
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
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets a processor type detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor type resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processorTypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ProcessorType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ProcessorType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1ProcessorType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the processor types that exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location of processor types to list. Format:
  /// `projects/{project}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of processor types to return. If
  /// unspecified, at most `100` processor types will be returned. The maximum
  /// value is `500`. Values above `500` will be coerced to `500`.
  ///
  /// [pageToken] - Used to retrieve the next page of results, empty if at the
  /// end of the list.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ListProcessorTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ListProcessorTypesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/processorTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1ListProcessorTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsHumanReviewConfigResource get humanReviewConfig =>
      ProjectsLocationsProcessorsHumanReviewConfigResource(_requester);
  ProjectsLocationsProcessorsProcessorVersionsResource get processorVersions =>
      ProjectsLocationsProcessorsProcessorVersionsResource(_requester);

  ProjectsLocationsProcessorsResource(commons.ApiRequester client)
      : _requester = client;

  /// LRO endpoint to batch process many documents.
  ///
  /// The output is written to Cloud Storage as JSON in the \[Document\] format.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of Processor or ProcessorVersion.
  /// Format: `projects/{project}/locations/{location}/processors/{processor}`,
  /// or
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> batchProcess(
    GoogleCloudDocumentaiV1BatchProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':batchProcess';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a processor from the ProcessorType provided.
  ///
  /// The processor will be at `ENABLED` state by default after its creation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) under which to
  /// create the processor. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1Processor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1Processor> create(
    GoogleCloudDocumentaiV1Processor request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/processors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1Processor.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the processor, unloads all deployed model artifacts if it was
  /// enabled and then deletes all artifacts associated with this processor.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Disables a processor
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name to be disabled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> disable(
    GoogleCloudDocumentaiV1DisableProcessorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Enables a processor
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name to be enabled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> enable(
    GoogleCloudDocumentaiV1EnableProcessorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a processor detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1Processor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1Processor> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1Processor.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all processors which belong to this project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project and location) which owns this
  /// collection of Processors. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of processors to return. If unspecified,
  /// at most `50` processors will be returned. The maximum value is `100`.
  /// Values above `100` will be coerced to `100`.
  ///
  /// [pageToken] - We will return the processors sorted by creation time. The
  /// page token will point to the next processor.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ListProcessorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ListProcessorsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/processors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1ListProcessorsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Processes a single document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Processor or ProcessorVersion
  /// to use for processing. If a Processor is specified, the server will use
  /// its default version. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}`, or
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ProcessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ProcessResponse> process(
    GoogleCloudDocumentaiV1ProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':process';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1ProcessResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Set the default (active) version of a Processor that will be used in
  /// ProcessDocument and BatchProcessDocuments.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [processor] - Required. The resource name of the Processor to change
  /// default version.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> setDefaultProcessorVersion(
    GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest request,
    core.String processor, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$processor') +
        ':setDefaultProcessorVersion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorsHumanReviewConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsHumanReviewConfigResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Send a document for Human Review.
  ///
  /// The input document should be processed by the specified processor.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [humanReviewConfig] - Required. The resource name of the HumanReviewConfig
  /// that the document will be reviewed with.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/humanReviewConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> reviewDocument(
    GoogleCloudDocumentaiV1ReviewDocumentRequest request,
    core.String humanReviewConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$humanReviewConfig') + ':reviewDocument';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorsProcessorVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource
      get evaluations =>
          ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource(
              _requester);

  ProjectsLocationsProcessorsProcessorVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// LRO endpoint to batch process many documents.
  ///
  /// The output is written to Cloud Storage as JSON in the \[Document\] format.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of Processor or ProcessorVersion.
  /// Format: `projects/{project}/locations/{location}/processors/{processor}`,
  /// or
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> batchProcess(
    GoogleCloudDocumentaiV1BatchProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':batchProcess';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes the processor version, all artifacts under the processor version
  /// will be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor version resource name to be deleted.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deploys the processor version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor version resource name to be deployed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> deploy(
    GoogleCloudDocumentaiV1DeployProcessorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Evaluates a ProcessorVersion against annotated documents, producing an
  /// Evaluation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [processorVersion] - Required. The resource name of the ProcessorVersion
  /// to evaluate.
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> evaluateProcessorVersion(
    GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest request,
    core.String processorVersion, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$processorVersion') +
        ':evaluateProcessorVersion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a processor version detail.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor resource name.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ProcessorVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ProcessorVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1ProcessorVersion.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all versions of a processor.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project, location and processor) to list
  /// all versions. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of processor versions to return. If
  /// unspecified, at most `10` processor versions will be returned. The maximum
  /// value is `20`. Values above `20` will be coerced to `20`.
  ///
  /// [pageToken] - We will return the processor versions sorted by creation
  /// time. The page token will point to the next processor version.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ListProcessorVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ListProcessorVersionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/processorVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1ListProcessorVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Processes a single document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Processor or ProcessorVersion
  /// to use for processing. If a Processor is specified, the server will use
  /// its default version. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}`, or
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ProcessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ProcessResponse> process(
    GoogleCloudDocumentaiV1ProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':process';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1ProcessResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Trains a new processor version.
  ///
  /// Operation metadata is returned as TrainProcessorVersionMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent (project, location and processor) to
  /// create the new version for. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> train(
    GoogleCloudDocumentaiV1TrainProcessorVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/processorVersions:train';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Undeploys the processor version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The processor version resource name to be undeployed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> undeploy(
    GoogleCloudDocumentaiV1UndeployProcessorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':undeploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Retrieves a specific evaluation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Evaluation to get.
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}/evaluations/{evaluation}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+/evaluations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1Evaluation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1Evaluation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1Evaluation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves a set of evaluations for a given processor version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The resource name of the ProcessorVersion to list
  /// evaluations for.
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/processorVersions/\[^/\]+$`.
  ///
  /// [pageSize] - The standard list page size. If unspecified, at most `5`
  /// evaluations are returned. The maximum value is `100`. Values above `100`
  /// are coerced to `100`.
  ///
  /// [pageToken] - A page token, received from a previous `ListEvaluations`
  /// call. Provide this to retrieve the subsequent page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1ListEvaluationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1ListEvaluationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1ListEvaluationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Encodes the detailed information of a barcode.
typedef GoogleCloudDocumentaiV1Barcode = $GoogleCloudDocumentaiV1Barcode;

/// The common config to specify a set of documents used as input.
class GoogleCloudDocumentaiV1BatchDocumentsInputConfig {
  /// The set of documents individually specified on Cloud Storage.
  GoogleCloudDocumentaiV1GcsDocuments? gcsDocuments;

  /// The set of documents that match the specified Cloud Storage `gcs_prefix`.
  GoogleCloudDocumentaiV1GcsPrefix? gcsPrefix;

  GoogleCloudDocumentaiV1BatchDocumentsInputConfig({
    this.gcsDocuments,
    this.gcsPrefix,
  });

  GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(core.Map json_)
      : this(
          gcsDocuments: json_.containsKey('gcsDocuments')
              ? GoogleCloudDocumentaiV1GcsDocuments.fromJson(
                  json_['gcsDocuments'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsPrefix: json_.containsKey('gcsPrefix')
              ? GoogleCloudDocumentaiV1GcsPrefix.fromJson(
                  json_['gcsPrefix'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDocuments != null) 'gcsDocuments': gcsDocuments!,
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
      };
}

/// Request message for BatchProcessDocuments.
class GoogleCloudDocumentaiV1BatchProcessRequest {
  /// The output configuration for the BatchProcessDocuments method.
  GoogleCloudDocumentaiV1DocumentOutputConfig? documentOutputConfig;

  /// The input documents for the BatchProcessDocuments method.
  GoogleCloudDocumentaiV1BatchDocumentsInputConfig? inputDocuments;

  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints) and can only contain lowercase letters, numeric characters,
  /// underscores, and dashes. International characters are allowed. Label
  /// values are optional. Label keys must start with a letter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Inference-time options for the process API
  GoogleCloudDocumentaiV1ProcessOptions? processOptions;

  /// Whether human review should be skipped for this request.
  ///
  /// Default to `false`.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1BatchProcessRequest({
    this.documentOutputConfig,
    this.inputDocuments,
    this.labels,
    this.processOptions,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(core.Map json_)
      : this(
          documentOutputConfig: json_.containsKey('documentOutputConfig')
              ? GoogleCloudDocumentaiV1DocumentOutputConfig.fromJson(
                  json_['documentOutputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputDocuments: json_.containsKey('inputDocuments')
              ? GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(
                  json_['inputDocuments']
                      as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          processOptions: json_.containsKey('processOptions')
              ? GoogleCloudDocumentaiV1ProcessOptions.fromJson(
                  json_['processOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          skipHumanReview: json_.containsKey('skipHumanReview')
              ? json_['skipHumanReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentOutputConfig != null)
          'documentOutputConfig': documentOutputConfig!,
        if (inputDocuments != null) 'inputDocuments': inputDocuments!,
        if (labels != null) 'labels': labels!,
        if (processOptions != null) 'processOptions': processOptions!,
        if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
      };
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDocumentaiV1NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudDocumentaiV1Vertex>? vertices;

  GoogleCloudDocumentaiV1BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  GoogleCloudDocumentaiV1BoundingPoly.fromJson(core.Map json_)
      : this(
          normalizedVertices: json_.containsKey('normalizedVertices')
              ? (json_['normalizedVertices'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vertices: json_.containsKey('vertices')
              ? (json_['vertices'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1Vertex.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedVertices != null)
          'normalizedVertices': normalizedVertices!,
        if (vertices != null) 'vertices': vertices!,
      };
}

/// Request message for the DeployProcessorVersion method.
typedef GoogleCloudDocumentaiV1DeployProcessorVersionRequest = $Empty;

/// Request message for the DisableProcessor method.
typedef GoogleCloudDocumentaiV1DisableProcessorRequest = $Empty;

/// Document represents the canonical document resource in Document AI.
///
/// It is an interchange format that provides insights into documents and allows
/// for collaboration between users and Document AI to iterate and optimize for
/// quality.
class GoogleCloudDocumentaiV1Document {
  /// Inline document content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Optional.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A list of entities detected on Document.text.
  ///
  /// For document shards, entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1DocumentEntity>? entities;

  /// Placeholder.
  ///
  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1DocumentEntityRelation>? entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus? error;

  /// An IANA published \[media type (MIME
  /// type)\](https://www.iana.org/assignments/media-types/media-types.xhtml).
  core.String? mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1DocumentPage>? pages;

  /// Placeholder.
  ///
  /// Revision history of this document.
  core.List<GoogleCloudDocumentaiV1DocumentRevision>? revisions;

  /// Information about the sharding if this document is sharded part of a
  /// larger document.
  ///
  /// If the document is not sharded, this message is not specified.
  GoogleCloudDocumentaiV1DocumentShardInfo? shardInfo;

  /// UTF-8 encoded text in reading order from the document.
  ///
  /// Optional.
  core.String? text;

  /// Placeholder.
  ///
  /// A list of text corrections made to Document.text. This is usually used for
  /// annotating corrections to OCR mistakes. Text changes for a given revision
  /// may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1DocumentTextChange>? textChanges;

  /// Styles for the Document.text.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudDocumentaiV1DocumentStyle>? textStyles;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. For more information, refer to
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  ///
  /// Optional.
  core.String? uri;

  GoogleCloudDocumentaiV1Document({
    this.content,
    this.entities,
    this.entityRelations,
    this.error,
    this.mimeType,
    this.pages,
    this.revisions,
    this.shardInfo,
    this.text,
    this.textChanges,
    this.textStyles,
    this.uri,
  });

  GoogleCloudDocumentaiV1Document.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityRelations: json_.containsKey('entityRelations')
              ? (json_['entityRelations'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          pages: json_.containsKey('pages')
              ? (json_['pages'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1DocumentPage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisions: json_.containsKey('revisions')
              ? (json_['revisions'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentRevision.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shardInfo: json_.containsKey('shardInfo')
              ? GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(
                  json_['shardInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          textChanges: json_.containsKey('textChanges')
              ? (json_['textChanges'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentTextChange.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textStyles: json_.containsKey('textStyles')
              ? (json_['textStyles'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1DocumentStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (entities != null) 'entities': entities!,
        if (entityRelations != null) 'entityRelations': entityRelations!,
        if (error != null) 'error': error!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (pages != null) 'pages': pages!,
        if (revisions != null) 'revisions': revisions!,
        if (shardInfo != null) 'shardInfo': shardInfo!,
        if (text != null) 'text': text!,
        if (textChanges != null) 'textChanges': textChanges!,
        if (textStyles != null) 'textStyles': textStyles!,
        if (uri != null) 'uri': uri!,
      };
}

/// An entity that could be a phrase in the text or a property that belongs to
/// the document.
///
/// It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1DocumentEntity {
  /// Confidence of detected Schema entity.
  ///
  /// Range `[0, 1]`.
  ///
  /// Optional.
  core.double? confidence;

  /// Canonical id.
  ///
  /// This will be a unique value in the entity list for this document.
  ///
  /// Optional.
  core.String? id;

  /// Use `id` field instead.
  ///
  /// Optional. Deprecated.
  core.String? mentionId;

  /// Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
  ///
  /// Optional.
  core.String? mentionText;

  /// Normalized entity value.
  ///
  /// Absent if the extracted value could not be converted or the type (e.g.
  /// address) is not supported for certain parsers. This field is also only
  /// populated for certain supported document types.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue? normalizedValue;

  /// Represents the provenance of this entity wrt.
  ///
  /// the location on the page where it was found.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentPageAnchor? pageAnchor;

  /// Entities can be nested to form a hierarchical data structure representing
  /// the content in the document.
  ///
  /// Optional.
  core.List<GoogleCloudDocumentaiV1DocumentEntity>? properties;

  /// The history of this annotation.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// Whether the entity will be redacted for de-identification purposes.
  ///
  /// Optional.
  core.bool? redacted;

  /// Provenance of the entity.
  ///
  /// Text anchor indexing into the Document.text.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  /// Entity type from a schema e.g. `Address`.
  ///
  /// Required.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentEntity({
    this.confidence,
    this.id,
    this.mentionId,
    this.mentionText,
    this.normalizedValue,
    this.pageAnchor,
    this.properties,
    this.provenance,
    this.redacted,
    this.textAnchor,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentEntity.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          mentionId: json_.containsKey('mentionId')
              ? json_['mentionId'] as core.String
              : null,
          mentionText: json_.containsKey('mentionText')
              ? json_['mentionText'] as core.String
              : null,
          normalizedValue: json_.containsKey('normalizedValue')
              ? GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(
                  json_['normalizedValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pageAnchor: json_.containsKey('pageAnchor')
              ? GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(
                  json_['pageAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          redacted: json_.containsKey('redacted')
              ? json_['redacted'] as core.bool
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (id != null) 'id': id!,
        if (mentionId != null) 'mentionId': mentionId!,
        if (mentionText != null) 'mentionText': mentionText!,
        if (normalizedValue != null) 'normalizedValue': normalizedValue!,
        if (pageAnchor != null) 'pageAnchor': pageAnchor!,
        if (properties != null) 'properties': properties!,
        if (provenance != null) 'provenance': provenance!,
        if (redacted != null) 'redacted': redacted!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
        if (type != null) 'type': type!,
      };
}

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue {
  /// Postal address.
  ///
  /// See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  GoogleTypePostalAddress? addressValue;

  /// Boolean value.
  ///
  /// Can be used for entities with binary values, or for checkboxes.
  core.bool? booleanValue;

  /// Date value.
  ///
  /// Includes year, month, day. See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  GoogleTypeDate? dateValue;

  /// DateTime value.
  ///
  /// Includes date, time, and timezone. See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  GoogleTypeDateTime? datetimeValue;

  /// Float value.
  core.double? floatValue;

  /// Integer value.
  core.int? integerValue;

  /// Money value.
  ///
  /// See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  GoogleTypeMoney? moneyValue;

  /// An optional field to store a normalized string.
  ///
  /// For some entity types, one of respective `structured_value` fields may
  /// also be populated. Also not all the types of `structured_value` will be
  /// normalized. For example, some processors may not generate `float` or
  /// `integer` normalized text by default. Below are sample formats mapped to
  /// structured values. - Money/Currency type (`money_value`) is in the ISO
  /// 4217 text format. - Date type (`date_value`) is in the ISO 8601 text
  /// format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  ///
  /// Optional.
  core.String? text;

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue({
    this.addressValue,
    this.booleanValue,
    this.dateValue,
    this.datetimeValue,
    this.floatValue,
    this.integerValue,
    this.moneyValue,
    this.text,
  });

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(core.Map json_)
      : this(
          addressValue: json_.containsKey('addressValue')
              ? GoogleTypePostalAddress.fromJson(
                  json_['addressValue'] as core.Map<core.String, core.dynamic>)
              : null,
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          dateValue: json_.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  json_['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          datetimeValue: json_.containsKey('datetimeValue')
              ? GoogleTypeDateTime.fromJson(
                  json_['datetimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          floatValue: json_.containsKey('floatValue')
              ? (json_['floatValue'] as core.num).toDouble()
              : null,
          integerValue: json_.containsKey('integerValue')
              ? json_['integerValue'] as core.int
              : null,
          moneyValue: json_.containsKey('moneyValue')
              ? GoogleTypeMoney.fromJson(
                  json_['moneyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressValue != null) 'addressValue': addressValue!,
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValue != null) 'dateValue': dateValue!,
        if (datetimeValue != null) 'datetimeValue': datetimeValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (moneyValue != null) 'moneyValue': moneyValue!,
        if (text != null) 'text': text!,
      };
}

/// Relationship between Entities.
typedef GoogleCloudDocumentaiV1DocumentEntityRelation
    = $GoogleCloudDocumentaiV1DocumentEntityRelation;

/// Config that controls the output of documents.
///
/// All documents will be written as a JSON file.
class GoogleCloudDocumentaiV1DocumentOutputConfig {
  /// Output config to write the results to Cloud Storage.
  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig? gcsOutputConfig;

  GoogleCloudDocumentaiV1DocumentOutputConfig({
    this.gcsOutputConfig,
  });

  GoogleCloudDocumentaiV1DocumentOutputConfig.fromJson(core.Map json_)
      : this(
          gcsOutputConfig: json_.containsKey('gcsOutputConfig')
              ? GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
                  .fromJson(json_['gcsOutputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsOutputConfig != null) 'gcsOutputConfig': gcsOutputConfig!,
      };
}

/// The configuration used when outputting documents.
class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig {
  /// Specifies which fields to include in the output documents.
  ///
  /// Only supports top level document and pages field so it must be in the form
  /// of `{document_field_name}` or `pages.{page_field_name}`.
  core.String? fieldMask;

  /// The Cloud Storage uri (a directory) of the output.
  core.String? gcsUri;

  /// Specifies the sharding config for the output document.
  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig?
      shardingConfig;

  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig({
    this.fieldMask,
    this.gcsUri,
    this.shardingConfig,
  });

  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig.fromJson(
      core.Map json_)
      : this(
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          gcsUri: json_.containsKey('gcsUri')
              ? json_['gcsUri'] as core.String
              : null,
          shardingConfig: json_.containsKey('shardingConfig')
              ? GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig
                  .fromJson(json_['shardingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (gcsUri != null) 'gcsUri': gcsUri!,
        if (shardingConfig != null) 'shardingConfig': shardingConfig!,
      };
}

/// The sharding config for the output document.
class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig {
  /// The number of overlapping pages between consecutive shards.
  core.int? pagesOverlap;

  /// The number of pages per shard.
  core.int? pagesPerShard;

  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig({
    this.pagesOverlap,
    this.pagesPerShard,
  });

  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfigShardingConfig.fromJson(
      core.Map json_)
      : this(
          pagesOverlap: json_.containsKey('pagesOverlap')
              ? json_['pagesOverlap'] as core.int
              : null,
          pagesPerShard: json_.containsKey('pagesPerShard')
              ? json_['pagesPerShard'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pagesOverlap != null) 'pagesOverlap': pagesOverlap!,
        if (pagesPerShard != null) 'pagesPerShard': pagesPerShard!,
      };
}

/// A page in a Document.
class GoogleCloudDocumentaiV1DocumentPage {
  /// A list of visually detected text blocks on the page.
  ///
  /// A block has a set of lines (collected into paragraphs) that have a common
  /// line-spacing and orientation.
  core.List<GoogleCloudDocumentaiV1DocumentPageBlock>? blocks;

  /// A list of detected barcodes.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>?
      detectedBarcodes;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Physical dimension of the page.
  GoogleCloudDocumentaiV1DocumentPageDimension? dimension;

  /// A list of visually detected form fields on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageFormField>? formFields;

  /// Rendered image for this page.
  ///
  /// This image is preprocessed to remove any skew, rotation, and distortions
  /// such that the annotation bounding boxes can be upright and axis-aligned.
  GoogleCloudDocumentaiV1DocumentPageImage? image;

  /// Image quality scores.
  GoogleCloudDocumentaiV1DocumentPageImageQualityScores? imageQualityScores;

  /// Layout for the page.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// A list of visually detected text lines on the page.
  ///
  /// A collection of tokens that a human would perceive as a line.
  core.List<GoogleCloudDocumentaiV1DocumentPageLine>? lines;

  /// 1-based index for current Page in a parent Document.
  ///
  /// Useful when a page is taken out of a Document for individual processing.
  core.int? pageNumber;

  /// A list of visually detected text paragraphs on the page.
  ///
  /// A collection of lines that a human would perceive as a paragraph.
  core.List<GoogleCloudDocumentaiV1DocumentPageParagraph>? paragraphs;

  /// The history of this page.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// A list of visually detected symbols on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageSymbol>? symbols;

  /// A list of visually detected tables on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageTable>? tables;

  /// A list of visually detected tokens on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageToken>? tokens;

  /// Transformation matrices that were applied to the original document image
  /// to produce Page.image.
  core.List<GoogleCloudDocumentaiV1DocumentPageMatrix>? transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc.
  ///
  /// on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageVisualElement>? visualElements;

  GoogleCloudDocumentaiV1DocumentPage({
    this.blocks,
    this.detectedBarcodes,
    this.detectedLanguages,
    this.dimension,
    this.formFields,
    this.image,
    this.imageQualityScores,
    this.layout,
    this.lines,
    this.pageNumber,
    this.paragraphs,
    this.provenance,
    this.symbols,
    this.tables,
    this.tokens,
    this.transforms,
    this.visualElements,
  });

  GoogleCloudDocumentaiV1DocumentPage.fromJson(core.Map json_)
      : this(
          blocks: json_.containsKey('blocks')
              ? (json_['blocks'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedBarcodes: json_.containsKey('detectedBarcodes')
              ? (json_['detectedBarcodes'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedBarcode
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimension: json_.containsKey('dimension')
              ? GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(
                  json_['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          formFields: json_.containsKey('formFields')
              ? (json_['formFields'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: json_.containsKey('image')
              ? GoogleCloudDocumentaiV1DocumentPageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          imageQualityScores: json_.containsKey('imageQualityScores')
              ? GoogleCloudDocumentaiV1DocumentPageImageQualityScores.fromJson(
                  json_['imageQualityScores']
                      as core.Map<core.String, core.dynamic>)
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          lines: json_.containsKey('lines')
              ? (json_['lines'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageLine.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageNumber: json_.containsKey('pageNumber')
              ? json_['pageNumber'] as core.int
              : null,
          paragraphs: json_.containsKey('paragraphs')
              ? (json_['paragraphs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          symbols: json_.containsKey('symbols')
              ? (json_['symbols'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageSymbol.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tables: json_.containsKey('tables')
              ? (json_['tables'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTable.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: json_.containsKey('tokens')
              ? (json_['tokens'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transforms: json_.containsKey('transforms')
              ? (json_['transforms'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          visualElements: json_.containsKey('visualElements')
              ? (json_['visualElements'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blocks != null) 'blocks': blocks!,
        if (detectedBarcodes != null) 'detectedBarcodes': detectedBarcodes!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (dimension != null) 'dimension': dimension!,
        if (formFields != null) 'formFields': formFields!,
        if (image != null) 'image': image!,
        if (imageQualityScores != null)
          'imageQualityScores': imageQualityScores!,
        if (layout != null) 'layout': layout!,
        if (lines != null) 'lines': lines!,
        if (pageNumber != null) 'pageNumber': pageNumber!,
        if (paragraphs != null) 'paragraphs': paragraphs!,
        if (provenance != null) 'provenance': provenance!,
        if (symbols != null) 'symbols': symbols!,
        if (tables != null) 'tables': tables!,
        if (tokens != null) 'tokens': tokens!,
        if (transforms != null) 'transforms': transforms!,
        if (visualElements != null) 'visualElements': visualElements!,
      };
}

/// Referencing the visual context of the entity in the Document.pages.
///
/// Page anchors can be cross-page, consist of multiple bounding polygons and
/// optionally reference specific layout element types.
class GoogleCloudDocumentaiV1DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>? pageRefs;

  GoogleCloudDocumentaiV1DocumentPageAnchor({
    this.pageRefs,
  });

  GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(core.Map json_)
      : this(
          pageRefs: json_.containsKey('pageRefs')
              ? (json_['pageRefs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageRefs != null) 'pageRefs': pageRefs!,
      };
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef {
  /// Identifies the bounding polygon of a layout element on the page.
  ///
  /// If `layout_type` is set, the bounding polygon must be exactly the same to
  /// the layout element it's referring to.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of detected page element, if applicable.
  ///
  /// Range `[0, 1]`.
  ///
  /// Optional.
  core.double? confidence;

  /// Use PageRef.bounding_poly instead.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? layoutId;

  /// The type of the layout element that is being referenced if any.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LAYOUT_TYPE_UNSPECIFIED" : Layout Unspecified.
  /// - "BLOCK" : References a Page.blocks element.
  /// - "PARAGRAPH" : References a Page.paragraphs element.
  /// - "LINE" : References a Page.lines element.
  /// - "TOKEN" : References a Page.tokens element.
  /// - "VISUAL_ELEMENT" : References a Page.visual_elements element.
  /// - "TABLE" : Refrrences a Page.tables element.
  /// - "FORM_FIELD" : References a Page.form_fields element.
  core.String? layoutType;

  /// Index into the Document.pages element, for example using `Document.pages`
  /// to locate the related page element.
  ///
  /// This field is skipped when its value is the default `0`. See
  /// https://developers.google.com/protocol-buffers/docs/proto3#json.
  ///
  /// Required.
  core.String? page;

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    this.page,
  });

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          layoutId: json_.containsKey('layoutId')
              ? json_['layoutId'] as core.String
              : null,
          layoutType: json_.containsKey('layoutType')
              ? json_['layoutType'] as core.String
              : null,
          page: json_.containsKey('page') ? json_['page'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (confidence != null) 'confidence': confidence!,
        if (layoutId != null) 'layoutId': layoutId!,
        if (layoutType != null) 'layoutType': layoutType!,
        if (page != null) 'page': page!,
      };
}

/// A block has a set of lines (collected into paragraphs) that have a common
/// line-spacing and orientation.
class GoogleCloudDocumentaiV1DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// A detected barcode.
class GoogleCloudDocumentaiV1DocumentPageDetectedBarcode {
  /// Detailed barcode information of the DetectedBarcode.
  GoogleCloudDocumentaiV1Barcode? barcode;

  /// Layout for DetectedBarcode.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1DocumentPageDetectedBarcode({
    this.barcode,
    this.layout,
  });

  GoogleCloudDocumentaiV1DocumentPageDetectedBarcode.fromJson(core.Map json_)
      : this(
          barcode: json_.containsKey('barcode')
              ? GoogleCloudDocumentaiV1Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (barcode != null) 'barcode': barcode!,
        if (layout != null) 'layout': layout!,
      };
}

/// Detected language for a structural component.
typedef GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
    = $GoogleCloudDocumentaiV1DocumentPageDetectedLanguage;

/// Dimension for the page.
typedef GoogleCloudDocumentaiV1DocumentPageDimension
    = $GoogleCloudDocumentaiV1DocumentPageDimension;

/// A form field detected on the page.
class GoogleCloudDocumentaiV1DocumentPageFormField {
  /// Created for Labeling UI to export key text.
  ///
  /// If corrections were made to the text identified by the
  /// `field_name.text_anchor`, this field will contain the correction.
  core.String? correctedKeyText;

  /// Created for Labeling UI to export value text.
  ///
  /// If corrections were made to the text identified by the
  /// `field_value.text_anchor`, this field will contain the correction.
  core.String? correctedValueText;

  /// Layout for the FormField name.
  ///
  /// e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  GoogleCloudDocumentaiV1DocumentPageLayout? fieldName;

  /// Layout for the FormField value.
  GoogleCloudDocumentaiV1DocumentPageLayout? fieldValue;

  /// A list of detected languages for name together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      nameDetectedLanguages;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// A list of detected languages for value together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type.
  ///
  /// Current valid values are: - blank (this indicates the `field_value` is
  /// normal text) - `unfilled_checkbox` - `filled_checkbox`
  core.String? valueType;

  GoogleCloudDocumentaiV1DocumentPageFormField({
    this.correctedKeyText,
    this.correctedValueText,
    this.fieldName,
    this.fieldValue,
    this.nameDetectedLanguages,
    this.provenance,
    this.valueDetectedLanguages,
    this.valueType,
  });

  GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(core.Map json_)
      : this(
          correctedKeyText: json_.containsKey('correctedKeyText')
              ? json_['correctedKeyText'] as core.String
              : null,
          correctedValueText: json_.containsKey('correctedValueText')
              ? json_['correctedValueText'] as core.String
              : null,
          fieldName: json_.containsKey('fieldName')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['fieldName'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldValue: json_.containsKey('fieldValue')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['fieldValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nameDetectedLanguages: json_.containsKey('nameDetectedLanguages')
              ? (json_['nameDetectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          valueDetectedLanguages: json_.containsKey('valueDetectedLanguages')
              ? (json_['valueDetectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correctedKeyText != null) 'correctedKeyText': correctedKeyText!,
        if (correctedValueText != null)
          'correctedValueText': correctedValueText!,
        if (fieldName != null) 'fieldName': fieldName!,
        if (fieldValue != null) 'fieldValue': fieldValue!,
        if (nameDetectedLanguages != null)
          'nameDetectedLanguages': nameDetectedLanguages!,
        if (provenance != null) 'provenance': provenance!,
        if (valueDetectedLanguages != null)
          'valueDetectedLanguages': valueDetectedLanguages!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Rendered image contents for this page.
typedef GoogleCloudDocumentaiV1DocumentPageImage
    = $GoogleCloudDocumentaiV1DocumentPageImage;

/// Image quality scores for the page image.
class GoogleCloudDocumentaiV1DocumentPageImageQualityScores {
  /// A list of detected defects.
  core.List<
          GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>?
      detectedDefects;

  /// The overall quality score.
  ///
  /// Range `[0, 1]` where `1` is perfect quality.
  core.double? qualityScore;

  GoogleCloudDocumentaiV1DocumentPageImageQualityScores({
    this.detectedDefects,
    this.qualityScore,
  });

  GoogleCloudDocumentaiV1DocumentPageImageQualityScores.fromJson(core.Map json_)
      : this(
          detectedDefects: json_.containsKey('detectedDefects')
              ? (json_['detectedDefects'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          qualityScore: json_.containsKey('qualityScore')
              ? (json_['qualityScore'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedDefects != null) 'detectedDefects': detectedDefects!,
        if (qualityScore != null) 'qualityScore': qualityScore!,
      };
}

/// Image Quality Defects
typedef GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
    = $GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect;

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of the current Layout within context of the object this layout
  /// is for.
  ///
  /// e.g. confidence can be for a single token, a table, a visual element, etc.
  /// depending on context. Range `[0, 1]`.
  core.double? confidence;

  /// Detected orientation for the Layout.
  /// Possible string values are:
  /// - "ORIENTATION_UNSPECIFIED" : Unspecified orientation.
  /// - "PAGE_UP" : Orientation is aligned with page up.
  /// - "PAGE_RIGHT" : Orientation is aligned with page right. Turn the head 90
  /// degrees clockwise from upright to read.
  /// - "PAGE_DOWN" : Orientation is aligned with page down. Turn the head 180
  /// degrees from upright to read.
  /// - "PAGE_LEFT" : Orientation is aligned with page left. Turn the head 90
  /// degrees counterclockwise from upright to read.
  core.String? orientation;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1DocumentPageLayout({
    this.boundingPoly,
    this.confidence,
    this.orientation,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          orientation: json_.containsKey('orientation')
              ? json_['orientation'] as core.String
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (confidence != null) 'confidence': confidence!,
        if (orientation != null) 'orientation': orientation!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
      };
}

/// A collection of tokens that a human would perceive as a line.
///
/// Does not cross column boundaries, can be horizontal, vertical, etc.
class GoogleCloudDocumentaiV1DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageLine({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageLine.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// Representation for transformation matrix, intended to be compatible and used
/// with OpenCV format for image manipulation.
typedef GoogleCloudDocumentaiV1DocumentPageMatrix
    = $GoogleCloudDocumentaiV1DocumentPageMatrix;

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageParagraph({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// A detected symbol.
class GoogleCloudDocumentaiV1DocumentPageSymbol {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Symbol.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1DocumentPageSymbol({
    this.detectedLanguages,
    this.layout,
  });

  GoogleCloudDocumentaiV1DocumentPageSymbol.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
      };
}

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1DocumentPageTable {
  /// Body rows of the table.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>? bodyRows;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Header rows of the table.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>? headerRows;

  /// Layout for Table.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this table.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageTable.fromJson(core.Map json_)
      : this(
          bodyRows: json_.containsKey('bodyRows')
              ? (json_['bodyRows'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headerRows: json_.containsKey('headerRows')
              ? (json_['headerRows'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bodyRows != null) 'bodyRows': bodyRows!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (headerRows != null) 'headerRows': headerRows!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1DocumentPageTableTableCell {
  /// How many columns this cell spans.
  core.int? colSpan;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for TableCell.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// How many rows this cell spans.
  core.int? rowSpan;

  GoogleCloudDocumentaiV1DocumentPageTableTableCell({
    this.colSpan,
    this.detectedLanguages,
    this.layout,
    this.rowSpan,
  });

  GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromJson(core.Map json_)
      : this(
          colSpan: json_.containsKey('colSpan')
              ? json_['colSpan'] as core.int
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          rowSpan: json_.containsKey('rowSpan')
              ? json_['rowSpan'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colSpan != null) 'colSpan': colSpan!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (rowSpan != null) 'rowSpan': rowSpan!,
      };
}

/// A row of table cells.
class GoogleCloudDocumentaiV1DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableCell>? cells;

  GoogleCloudDocumentaiV1DocumentPageTableTableRow({
    this.cells,
  });

  GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(core.Map json_)
      : this(
          cells: json_.containsKey('cells')
              ? (json_['cells'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableCell
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null) 'cells': cells!,
      };
}

/// A detected token.
class GoogleCloudDocumentaiV1DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// Text style attributes.
  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo? styleInfo;

  GoogleCloudDocumentaiV1DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
    this.styleInfo,
  });

  GoogleCloudDocumentaiV1DocumentPageToken.fromJson(core.Map json_)
      : this(
          detectedBreak: json_.containsKey('detectedBreak')
              ? GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
                  json_['detectedBreak'] as core.Map<core.String, core.dynamic>)
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          styleInfo: json_.containsKey('styleInfo')
              ? GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromJson(
                  json_['styleInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedBreak != null) 'detectedBreak': detectedBreak!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
        if (styleInfo != null) 'styleInfo': styleInfo!,
      };
}

/// Detected break at the end of a Token.
typedef GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
    = $GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak;

/// Font and other text style attributes.
class GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo {
  /// Color of the background.
  GoogleTypeColor? backgroundColor;

  /// Whether the text is bold (equivalent to font_weight is at least `700`).
  core.bool? bold;

  /// Font size in points (`1` point is `¹⁄₇₂` inches).
  core.int? fontSize;

  /// Name or style of the font.
  core.String? fontType;

  /// TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy).
  ///
  /// Normal is `400`, bold is `700`.
  core.int? fontWeight;

  /// Whether the text is handwritten.
  core.bool? handwritten;

  /// Whether the text is italic.
  core.bool? italic;

  /// Letter spacing in points.
  core.double? letterSpacing;

  /// Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷
  /// `72.0`.
  core.double? pixelFontSize;

  /// Whether the text is in small caps.
  core.bool? smallcaps;

  /// Whether the text is strikethrough.
  core.bool? strikeout;

  /// Whether the text is a subscript.
  core.bool? subscript;

  /// Whether the text is a superscript.
  core.bool? superscript;

  /// Color of the text.
  GoogleTypeColor? textColor;

  /// Whether the text is underlined.
  core.bool? underlined;

  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo({
    this.backgroundColor,
    this.bold,
    this.fontSize,
    this.fontType,
    this.fontWeight,
    this.handwritten,
    this.italic,
    this.letterSpacing,
    this.pixelFontSize,
    this.smallcaps,
    this.strikeout,
    this.subscript,
    this.superscript,
    this.textColor,
    this.underlined,
  });

  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromJson(core.Map json_)
      : this(
          backgroundColor: json_.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bold: json_.containsKey('bold') ? json_['bold'] as core.bool : null,
          fontSize: json_.containsKey('fontSize')
              ? json_['fontSize'] as core.int
              : null,
          fontType: json_.containsKey('fontType')
              ? json_['fontType'] as core.String
              : null,
          fontWeight: json_.containsKey('fontWeight')
              ? json_['fontWeight'] as core.int
              : null,
          handwritten: json_.containsKey('handwritten')
              ? json_['handwritten'] as core.bool
              : null,
          italic:
              json_.containsKey('italic') ? json_['italic'] as core.bool : null,
          letterSpacing: json_.containsKey('letterSpacing')
              ? (json_['letterSpacing'] as core.num).toDouble()
              : null,
          pixelFontSize: json_.containsKey('pixelFontSize')
              ? (json_['pixelFontSize'] as core.num).toDouble()
              : null,
          smallcaps: json_.containsKey('smallcaps')
              ? json_['smallcaps'] as core.bool
              : null,
          strikeout: json_.containsKey('strikeout')
              ? json_['strikeout'] as core.bool
              : null,
          subscript: json_.containsKey('subscript')
              ? json_['subscript'] as core.bool
              : null,
          superscript: json_.containsKey('superscript')
              ? json_['superscript'] as core.bool
              : null,
          textColor: json_.containsKey('textColor')
              ? GoogleTypeColor.fromJson(
                  json_['textColor'] as core.Map<core.String, core.dynamic>)
              : null,
          underlined: json_.containsKey('underlined')
              ? json_['underlined'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (bold != null) 'bold': bold!,
        if (fontSize != null) 'fontSize': fontSize!,
        if (fontType != null) 'fontType': fontType!,
        if (fontWeight != null) 'fontWeight': fontWeight!,
        if (handwritten != null) 'handwritten': handwritten!,
        if (italic != null) 'italic': italic!,
        if (letterSpacing != null) 'letterSpacing': letterSpacing!,
        if (pixelFontSize != null) 'pixelFontSize': pixelFontSize!,
        if (smallcaps != null) 'smallcaps': smallcaps!,
        if (strikeout != null) 'strikeout': strikeout!,
        if (subscript != null) 'subscript': subscript!,
        if (superscript != null) 'superscript': superscript!,
        if (textColor != null) 'textColor': textColor!,
        if (underlined != null) 'underlined': underlined!,
      };
}

/// Detected non-text visual elements e.g. checkbox, signature etc.
///
/// on the page.
class GoogleCloudDocumentaiV1DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for VisualElement.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// Type of the VisualElement.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentPageVisualElement({
    this.detectedLanguages,
    this.layout,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (type != null) 'type': type!,
      };
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1DocumentProvenance {
  /// The Id of this operation.
  ///
  /// Needs to be unique within the scope of the revision.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1DocumentProvenanceParent>? parents;

  /// The index of the revision that produced this element.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified. If no
  /// operation is specified a provenance entry is simply used to match against
  /// a `parent`.
  /// - "ADD" : Add an element.
  /// - "REMOVE" : Remove an element identified by `parent`.
  /// - "UPDATE" : Updates any fields within the given provenance scope of the
  /// message. It overwrites the fields rather than replacing them. Use this
  /// when you want to update a field value of an entity without also updating
  /// all the child properties.
  /// - "REPLACE" : Currently unused. Replace an element identified by `parent`.
  /// - "EVAL_REQUESTED" : Deprecated. Request human review for the element
  /// identified by `parent`.
  /// - "EVAL_APPROVED" : Deprecated. Element is reviewed and approved at human
  /// review, confidence will be set to 1.0.
  /// - "EVAL_SKIPPED" : Deprecated. Element is skipped in the validation
  /// process.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentProvenance.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.int : null,
          parents: json_.containsKey('parents')
              ? (json_['parents'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentProvenanceParent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (parents != null) 'parents': parents!,
        if (revision != null) 'revision': revision!,
        if (type != null) 'type': type!,
      };
}

/// The parent element the current element is based on.
///
/// Used for referencing/aligning, removal and replacement operations.
typedef GoogleCloudDocumentaiV1DocumentProvenanceParent
    = $GoogleCloudDocumentaiV1DocumentProvenanceParent;

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String? agent;

  /// The time that the revision was created, internally generated by doc proto
  /// storage at the time of create.
  core.String? createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1DocumentRevisionHumanReview? humanReview;

  /// Id of the revision, internally generated by doc proto storage.
  ///
  /// Unique within the context of the document.
  core.String? id;

  /// The revisions that this revision is based on.
  ///
  /// This can include one or more parent (when documents are merged.) This
  /// field represents the index into the `revisions` field.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.int>? parent;

  /// The revisions that this revision is based on.
  ///
  /// Must include all the ids that have anything to do with this revision - eg.
  /// there are `provenance.parent.revision` fields that index into this field.
  core.List<core.String>? parentIds;

  /// If the annotation was made by processor identify the processor by its
  /// resource name.
  core.String? processor;

  GoogleCloudDocumentaiV1DocumentRevision({
    this.agent,
    this.createTime,
    this.humanReview,
    this.id,
    this.parent,
    this.parentIds,
    this.processor,
  });

  GoogleCloudDocumentaiV1DocumentRevision.fromJson(core.Map json_)
      : this(
          agent:
              json_.containsKey('agent') ? json_['agent'] as core.String : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          humanReview: json_.containsKey('humanReview')
              ? GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(
                  json_['humanReview'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          parent: json_.containsKey('parent')
              ? (json_['parent'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          parentIds: json_.containsKey('parentIds')
              ? (json_['parentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          processor: json_.containsKey('processor')
              ? json_['processor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
        if (createTime != null) 'createTime': createTime!,
        if (humanReview != null) 'humanReview': humanReview!,
        if (id != null) 'id': id!,
        if (parent != null) 'parent': parent!,
        if (parentIds != null) 'parentIds': parentIds!,
        if (processor != null) 'processor': processor!,
      };
}

/// Human Review information of the document.
typedef GoogleCloudDocumentaiV1DocumentRevisionHumanReview
    = $GoogleCloudDocumentaiV1DocumentRevisionHumanReview;

/// The schema defines the output of the processed document by a processor.
class GoogleCloudDocumentaiV1DocumentSchema {
  /// Description of the schema.
  core.String? description;

  /// Display name to show to users.
  core.String? displayName;

  /// Entity types of the schema.
  core.List<GoogleCloudDocumentaiV1DocumentSchemaEntityType>? entityTypes;

  /// Metadata of the schema.
  GoogleCloudDocumentaiV1DocumentSchemaMetadata? metadata;

  GoogleCloudDocumentaiV1DocumentSchema({
    this.description,
    this.displayName,
    this.entityTypes,
    this.metadata,
  });

  GoogleCloudDocumentaiV1DocumentSchema.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityTypes: json_.containsKey('entityTypes')
              ? (json_['entityTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentSchemaEntityType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? GoogleCloudDocumentaiV1DocumentSchemaMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (entityTypes != null) 'entityTypes': entityTypes!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// EntityType is the wrapper of a label of the corresponding model with
/// detailed attributes and limitations for entity-based processors.
///
/// Multiple types can also compose a dependency tree to represent nested types.
class GoogleCloudDocumentaiV1DocumentSchemaEntityType {
  /// The entity type that this type is derived from.
  ///
  /// For now, one and only one should be set.
  core.List<core.String>? baseTypes;

  /// User defined name for the type.
  core.String? displayName;

  /// If specified, lists all the possible values for this entity.
  ///
  /// This should not be more than a handful of values. If the number of values
  /// is \>10 or could change frequently use the `EntityType.value_ontology`
  /// field and specify a list of all possible values in a value ontology file.
  GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues? enumValues;

  /// Name of the type.
  ///
  /// It must be unique within the schema file and cannot be a "Common Type".
  /// The following naming conventions are used: - Use `snake_casing`. - Name
  /// matching is case-sensitive. - Maximum 64 characters. - Must start with a
  /// letter. - Allowed characters: ASCII letters `[a-z0-9_-]`. (For backward
  /// compatibility internal infrastructure and tooling can handle any ascii
  /// character.) - The `/` is sometimes used to denote a property of a type.
  /// For example `line_item/amount`. This convention is deprecated, but will
  /// still be honored for backward compatibility.
  core.String? name;

  /// Description the nested structure, or composition of an entity.
  core.List<GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty>?
      properties;

  GoogleCloudDocumentaiV1DocumentSchemaEntityType({
    this.baseTypes,
    this.displayName,
    this.enumValues,
    this.name,
    this.properties,
  });

  GoogleCloudDocumentaiV1DocumentSchemaEntityType.fromJson(core.Map json_)
      : this(
          baseTypes: json_.containsKey('baseTypes')
              ? (json_['baseTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          enumValues: json_.containsKey('enumValues')
              ? GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues
                  .fromJson(json_['enumValues']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseTypes != null) 'baseTypes': baseTypes!,
        if (displayName != null) 'displayName': displayName!,
        if (enumValues != null) 'enumValues': enumValues!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
      };
}

/// Defines the a list of enum values.
class GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues {
  /// The individual values that this enum values type can include.
  core.List<core.String>? values;

  GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues({
    this.values,
  });

  GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues.fromJson(
      core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Defines properties that can be part of the entity type.
class GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty {
  /// User defined name for the property.
  core.String? displayName;

  /// The name of the property.
  ///
  /// Follows the same guidelines as the EntityType name.
  core.String? name;

  /// Occurrence type limits the number of instances an entity type appears in
  /// the document.
  /// Possible string values are:
  /// - "OCCURRENCE_TYPE_UNSPECIFIED" : Unspecified occurrence type.
  /// - "OPTIONAL_ONCE" : There will be zero or one instance of this entity
  /// type. The same entity instance may be mentioned multiple times.
  /// - "OPTIONAL_MULTIPLE" : The entity type will appear zero or multiple
  /// times.
  /// - "REQUIRED_ONCE" : The entity type will only appear exactly once. The
  /// same entity instance may be mentioned multiple times.
  /// - "REQUIRED_MULTIPLE" : The entity type will appear once or more times.
  core.String? occurrenceType;

  /// A reference to the value type of the property.
  ///
  /// This type is subject to the same conventions as the `Entity.base_types`
  /// field.
  core.String? valueType;

  GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty({
    this.displayName,
    this.name,
    this.occurrenceType,
    this.valueType,
  });

  GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty.fromJson(
      core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          occurrenceType: json_.containsKey('occurrenceType')
              ? json_['occurrenceType'] as core.String
              : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (occurrenceType != null) 'occurrenceType': occurrenceType!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Metadata for global schema behavior.
class GoogleCloudDocumentaiV1DocumentSchemaMetadata {
  /// If true, on a given page, there can be multiple `document` annotations
  /// covering it.
  core.bool? documentAllowMultipleLabels;

  /// If true, a `document` entity type can be applied to subdocument
  /// (splitting).
  ///
  /// Otherwise, it can only be applied to the entire document (classification).
  core.bool? documentSplitter;

  /// If set, all the nested entities must be prefixed with the parents.
  core.bool? prefixedNamingOnProperties;

  /// If set, we will skip the naming format validation in the schema.
  ///
  /// So the string values in `DocumentSchema.EntityType.name` and
  /// `DocumentSchema.EntityType.Property.name` will not be checked.
  core.bool? skipNamingValidation;

  GoogleCloudDocumentaiV1DocumentSchemaMetadata({
    this.documentAllowMultipleLabels,
    this.documentSplitter,
    this.prefixedNamingOnProperties,
    this.skipNamingValidation,
  });

  GoogleCloudDocumentaiV1DocumentSchemaMetadata.fromJson(core.Map json_)
      : this(
          documentAllowMultipleLabels:
              json_.containsKey('documentAllowMultipleLabels')
                  ? json_['documentAllowMultipleLabels'] as core.bool
                  : null,
          documentSplitter: json_.containsKey('documentSplitter')
              ? json_['documentSplitter'] as core.bool
              : null,
          prefixedNamingOnProperties:
              json_.containsKey('prefixedNamingOnProperties')
                  ? json_['prefixedNamingOnProperties'] as core.bool
                  : null,
          skipNamingValidation: json_.containsKey('skipNamingValidation')
              ? json_['skipNamingValidation'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentAllowMultipleLabels != null)
          'documentAllowMultipleLabels': documentAllowMultipleLabels!,
        if (documentSplitter != null) 'documentSplitter': documentSplitter!,
        if (prefixedNamingOnProperties != null)
          'prefixedNamingOnProperties': prefixedNamingOnProperties!,
        if (skipNamingValidation != null)
          'skipNamingValidation': skipNamingValidation!,
      };
}

/// For a large document, sharding may be performed to produce several document
/// shards.
///
/// Each document shard contains this field to detail which shard it is.
typedef GoogleCloudDocumentaiV1DocumentShardInfo
    = $GoogleCloudDocumentaiV1DocumentShardInfo;

/// Annotation for common text style attributes.
///
/// This adheres to CSS conventions as much as possible.
class GoogleCloudDocumentaiV1DocumentStyle {
  /// Text background color.
  GoogleTypeColor? backgroundColor;

  /// Text color.
  GoogleTypeColor? color;

  /// Font family such as `Arial`, `Times New Roman`.
  ///
  /// https://www.w3schools.com/cssref/pr_font_font-family.asp
  core.String? fontFamily;

  /// Font size.
  GoogleCloudDocumentaiV1DocumentStyleFontSize? fontSize;

  /// [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp).
  ///
  /// Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  core.String? fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  /// [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp).
  ///
  /// Follows CSS standard.
  core.String? textDecoration;

  /// [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp).
  ///
  /// Possible values are `normal`, `italic`, and `oblique`.
  core.String? textStyle;

  GoogleCloudDocumentaiV1DocumentStyle({
    this.backgroundColor,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.textAnchor,
    this.textDecoration,
    this.textStyle,
  });

  GoogleCloudDocumentaiV1DocumentStyle.fromJson(core.Map json_)
      : this(
          backgroundColor: json_.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          color: json_.containsKey('color')
              ? GoogleTypeColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          fontFamily: json_.containsKey('fontFamily')
              ? json_['fontFamily'] as core.String
              : null,
          fontSize: json_.containsKey('fontSize')
              ? GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(
                  json_['fontSize'] as core.Map<core.String, core.dynamic>)
              : null,
          fontWeight: json_.containsKey('fontWeight')
              ? json_['fontWeight'] as core.String
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          textDecoration: json_.containsKey('textDecoration')
              ? json_['textDecoration'] as core.String
              : null,
          textStyle: json_.containsKey('textStyle')
              ? json_['textStyle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (color != null) 'color': color!,
        if (fontFamily != null) 'fontFamily': fontFamily!,
        if (fontSize != null) 'fontSize': fontSize!,
        if (fontWeight != null) 'fontWeight': fontWeight!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
        if (textDecoration != null) 'textDecoration': textDecoration!,
        if (textStyle != null) 'textStyle': textStyle!,
      };
}

/// Font size with unit.
typedef GoogleCloudDocumentaiV1DocumentStyleFontSize
    = $GoogleCloudDocumentaiV1DocumentStyleFontSize;

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  ///
  /// It is always populated for formFields.
  core.String? content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>? textSegments;

  GoogleCloudDocumentaiV1DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          textSegments: json_.containsKey('textSegments')
              ? (json_['textSegments'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (textSegments != null) 'textSegments': textSegments!,
      };
}

/// A text segment in the Document.text.
///
/// The indices may be out of bounds which indicate that the text extends into
/// another document shard for large sharded documents. See
/// ShardInfo.text_offset
typedef GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
    = $GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment;

/// This message is used for text changes aka.
///
/// OCR corrections.
class GoogleCloudDocumentaiV1DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String? changedText;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;

  /// Provenance of the correction.
  ///
  /// Text anchor indexing into the Document.text. There can only be a single
  /// `TextAnchor.text_segments` element. If the start and end index of the text
  /// segment are the same, the text change is inserted before that index.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1DocumentTextChange({
    this.changedText,
    this.provenance,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1DocumentTextChange.fromJson(core.Map json_)
      : this(
          changedText: json_.containsKey('changedText')
              ? json_['changedText'] as core.String
              : null,
          provenance: json_.containsKey('provenance')
              ? (json_['provenance'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedText != null) 'changedText': changedText!,
        if (provenance != null) 'provenance': provenance!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
      };
}

/// Request message for the EnableProcessor method.
typedef GoogleCloudDocumentaiV1EnableProcessorRequest = $Empty;

/// Evaluates the given ProcessorVersion against the supplied documents.
class GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest {
  /// The documents used in the evaluation.
  ///
  /// If unspecified, use the processor's dataset as evaluation input.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1BatchDocumentsInputConfig? evaluationDocuments;

  GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest({
    this.evaluationDocuments,
  });

  GoogleCloudDocumentaiV1EvaluateProcessorVersionRequest.fromJson(
      core.Map json_)
      : this(
          evaluationDocuments: json_.containsKey('evaluationDocuments')
              ? GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(
                  json_['evaluationDocuments']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluationDocuments != null)
          'evaluationDocuments': evaluationDocuments!,
      };
}

/// An evaluation of a ProcessorVersion's performance.
class GoogleCloudDocumentaiV1Evaluation {
  /// Metrics for all the entities in aggregate.
  GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics? allEntitiesMetrics;

  /// The time that the evaluation was created.
  core.String? createTime;

  /// Counters for the documents used in the evaluation.
  GoogleCloudDocumentaiV1EvaluationCounters? documentCounters;

  /// Metrics across confidence levels, for different entities.
  core.Map<core.String,
      GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics>? entityMetrics;

  /// The KMS key name used for encryption.
  core.String? kmsKeyName;

  /// The KMS key version with which data is encrypted.
  core.String? kmsKeyVersionName;

  /// The resource name of the evaluation.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}/evaluations/{evaluation}`
  core.String? name;

  GoogleCloudDocumentaiV1Evaluation({
    this.allEntitiesMetrics,
    this.createTime,
    this.documentCounters,
    this.entityMetrics,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.name,
  });

  GoogleCloudDocumentaiV1Evaluation.fromJson(core.Map json_)
      : this(
          allEntitiesMetrics: json_.containsKey('allEntitiesMetrics')
              ? GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics
                  .fromJson(json_['allEntitiesMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          documentCounters: json_.containsKey('documentCounters')
              ? GoogleCloudDocumentaiV1EvaluationCounters.fromJson(
                  json_['documentCounters']
                      as core.Map<core.String, core.dynamic>)
              : null,
          entityMetrics: json_.containsKey('entityMetrics')
              ? (json_['entityMetrics'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics
                        .fromJson(value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          kmsKeyVersionName: json_.containsKey('kmsKeyVersionName')
              ? json_['kmsKeyVersionName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allEntitiesMetrics != null)
          'allEntitiesMetrics': allEntitiesMetrics!,
        if (createTime != null) 'createTime': createTime!,
        if (documentCounters != null) 'documentCounters': documentCounters!,
        if (entityMetrics != null) 'entityMetrics': entityMetrics!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
        if (name != null) 'name': name!,
      };
}

/// Evaluations metrics, at a specific confidence level.
class GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics {
  /// The confidence level.
  core.double? confidenceLevel;

  /// The metrics at the specific confidence level.
  GoogleCloudDocumentaiV1EvaluationMetrics? metrics;

  GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics({
    this.confidenceLevel,
    this.metrics,
  });

  GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics.fromJson(
      core.Map json_)
      : this(
          confidenceLevel: json_.containsKey('confidenceLevel')
              ? (json_['confidenceLevel'] as core.num).toDouble()
              : null,
          metrics: json_.containsKey('metrics')
              ? GoogleCloudDocumentaiV1EvaluationMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceLevel != null) 'confidenceLevel': confidenceLevel!,
        if (metrics != null) 'metrics': metrics!,
      };
}

/// Evaluation counters for the documents that were used.
class GoogleCloudDocumentaiV1EvaluationCounters {
  /// How many documents were used in the evaluation.
  core.int? evaluatedDocumentsCount;

  /// How many documents were not included in the evaluation as Document AI
  /// failed to process them.
  core.int? failedDocumentsCount;

  /// How many documents were sent for evaluation.
  core.int? inputDocumentsCount;

  /// How many documents were not included in the evaluation as they didn't pass
  /// validation.
  core.int? invalidDocumentsCount;

  GoogleCloudDocumentaiV1EvaluationCounters({
    this.evaluatedDocumentsCount,
    this.failedDocumentsCount,
    this.inputDocumentsCount,
    this.invalidDocumentsCount,
  });

  GoogleCloudDocumentaiV1EvaluationCounters.fromJson(core.Map json_)
      : this(
          evaluatedDocumentsCount: json_.containsKey('evaluatedDocumentsCount')
              ? json_['evaluatedDocumentsCount'] as core.int
              : null,
          failedDocumentsCount: json_.containsKey('failedDocumentsCount')
              ? json_['failedDocumentsCount'] as core.int
              : null,
          inputDocumentsCount: json_.containsKey('inputDocumentsCount')
              ? json_['inputDocumentsCount'] as core.int
              : null,
          invalidDocumentsCount: json_.containsKey('invalidDocumentsCount')
              ? json_['invalidDocumentsCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluatedDocumentsCount != null)
          'evaluatedDocumentsCount': evaluatedDocumentsCount!,
        if (failedDocumentsCount != null)
          'failedDocumentsCount': failedDocumentsCount!,
        if (inputDocumentsCount != null)
          'inputDocumentsCount': inputDocumentsCount!,
        if (invalidDocumentsCount != null)
          'invalidDocumentsCount': invalidDocumentsCount!,
      };
}

/// Evaluation metrics, either in aggregate or about a specific entity.
class GoogleCloudDocumentaiV1EvaluationMetrics {
  /// The calculated f1 score.
  core.double? f1Score;

  /// The amount of false negatives.
  core.int? falseNegativesCount;

  /// The amount of false positives.
  core.int? falsePositivesCount;

  /// The amount of documents with a ground truth occurrence.
  core.int? groundTruthDocumentCount;

  /// The amount of occurrences in ground truth documents.
  core.int? groundTruthOccurrencesCount;

  /// The calculated precision.
  core.double? precision;

  /// The amount of documents with a predicted occurrence.
  core.int? predictedDocumentCount;

  /// The amount of occurrences in predicted documents.
  core.int? predictedOccurrencesCount;

  /// The calculated recall.
  core.double? recall;

  /// The amount of documents that had an occurrence of this label.
  core.int? totalDocumentsCount;

  /// The amount of true positives.
  core.int? truePositivesCount;

  GoogleCloudDocumentaiV1EvaluationMetrics({
    this.f1Score,
    this.falseNegativesCount,
    this.falsePositivesCount,
    this.groundTruthDocumentCount,
    this.groundTruthOccurrencesCount,
    this.precision,
    this.predictedDocumentCount,
    this.predictedOccurrencesCount,
    this.recall,
    this.totalDocumentsCount,
    this.truePositivesCount,
  });

  GoogleCloudDocumentaiV1EvaluationMetrics.fromJson(core.Map json_)
      : this(
          f1Score: json_.containsKey('f1Score')
              ? (json_['f1Score'] as core.num).toDouble()
              : null,
          falseNegativesCount: json_.containsKey('falseNegativesCount')
              ? json_['falseNegativesCount'] as core.int
              : null,
          falsePositivesCount: json_.containsKey('falsePositivesCount')
              ? json_['falsePositivesCount'] as core.int
              : null,
          groundTruthDocumentCount:
              json_.containsKey('groundTruthDocumentCount')
                  ? json_['groundTruthDocumentCount'] as core.int
                  : null,
          groundTruthOccurrencesCount:
              json_.containsKey('groundTruthOccurrencesCount')
                  ? json_['groundTruthOccurrencesCount'] as core.int
                  : null,
          precision: json_.containsKey('precision')
              ? (json_['precision'] as core.num).toDouble()
              : null,
          predictedDocumentCount: json_.containsKey('predictedDocumentCount')
              ? json_['predictedDocumentCount'] as core.int
              : null,
          predictedOccurrencesCount:
              json_.containsKey('predictedOccurrencesCount')
                  ? json_['predictedOccurrencesCount'] as core.int
                  : null,
          recall: json_.containsKey('recall')
              ? (json_['recall'] as core.num).toDouble()
              : null,
          totalDocumentsCount: json_.containsKey('totalDocumentsCount')
              ? json_['totalDocumentsCount'] as core.int
              : null,
          truePositivesCount: json_.containsKey('truePositivesCount')
              ? json_['truePositivesCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (f1Score != null) 'f1Score': f1Score!,
        if (falseNegativesCount != null)
          'falseNegativesCount': falseNegativesCount!,
        if (falsePositivesCount != null)
          'falsePositivesCount': falsePositivesCount!,
        if (groundTruthDocumentCount != null)
          'groundTruthDocumentCount': groundTruthDocumentCount!,
        if (groundTruthOccurrencesCount != null)
          'groundTruthOccurrencesCount': groundTruthOccurrencesCount!,
        if (precision != null) 'precision': precision!,
        if (predictedDocumentCount != null)
          'predictedDocumentCount': predictedDocumentCount!,
        if (predictedOccurrencesCount != null)
          'predictedOccurrencesCount': predictedOccurrencesCount!,
        if (recall != null) 'recall': recall!,
        if (totalDocumentsCount != null)
          'totalDocumentsCount': totalDocumentsCount!,
        if (truePositivesCount != null)
          'truePositivesCount': truePositivesCount!,
      };
}

/// Metrics across multiple confidence levels.
class GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics {
  /// The calculated area under the precision recall curve (AUPRC), computed by
  /// integrating over all confidence thresholds.
  core.double? auprc;

  /// The AUPRC for metrics with fuzzy matching disabled, i.e., exact matching
  /// only.
  core.double? auprcExact;

  /// Metrics across confidence levels with fuzzy matching enabled.
  core.List<GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics>?
      confidenceLevelMetrics;

  /// Metrics across confidence levels with only exact matching.
  core.List<GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics>?
      confidenceLevelMetricsExact;

  /// The Estimated Calibration Error (ECE) of the confidence of the predicted
  /// entities.
  core.double? estimatedCalibrationError;

  /// The ECE for the predicted entities with fuzzy matching disabled, i.e.,
  /// exact matching only.
  core.double? estimatedCalibrationErrorExact;

  /// The metrics type for the label.
  /// Possible string values are:
  /// - "METRICS_TYPE_UNSPECIFIED" : The metrics type is unspecified. By
  /// default, metrics without a particular specification are for leaf entity
  /// types (i.e., top-level entity types without child types, or child types
  /// which are not parent types themselves).
  /// - "AGGREGATE" : Indicates whether metrics for this particular label type
  /// represent an aggregate of metrics for other types instead of being based
  /// on actual TP/FP/FN values for the label type. Metrics for parent (i.e.,
  /// non-leaf) entity types are an aggregate of metrics for their children.
  core.String? metricsType;

  GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics({
    this.auprc,
    this.auprcExact,
    this.confidenceLevelMetrics,
    this.confidenceLevelMetricsExact,
    this.estimatedCalibrationError,
    this.estimatedCalibrationErrorExact,
    this.metricsType,
  });

  GoogleCloudDocumentaiV1EvaluationMultiConfidenceMetrics.fromJson(
      core.Map json_)
      : this(
          auprc: json_.containsKey('auprc')
              ? (json_['auprc'] as core.num).toDouble()
              : null,
          auprcExact: json_.containsKey('auprcExact')
              ? (json_['auprcExact'] as core.num).toDouble()
              : null,
          confidenceLevelMetrics: json_.containsKey('confidenceLevelMetrics')
              ? (json_['confidenceLevelMetrics'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          confidenceLevelMetricsExact: json_
                  .containsKey('confidenceLevelMetricsExact')
              ? (json_['confidenceLevelMetricsExact'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1EvaluationConfidenceLevelMetrics
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          estimatedCalibrationError:
              json_.containsKey('estimatedCalibrationError')
                  ? (json_['estimatedCalibrationError'] as core.num).toDouble()
                  : null,
          estimatedCalibrationErrorExact: json_
                  .containsKey('estimatedCalibrationErrorExact')
              ? (json_['estimatedCalibrationErrorExact'] as core.num).toDouble()
              : null,
          metricsType: json_.containsKey('metricsType')
              ? json_['metricsType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auprc != null) 'auprc': auprc!,
        if (auprcExact != null) 'auprcExact': auprcExact!,
        if (confidenceLevelMetrics != null)
          'confidenceLevelMetrics': confidenceLevelMetrics!,
        if (confidenceLevelMetricsExact != null)
          'confidenceLevelMetricsExact': confidenceLevelMetricsExact!,
        if (estimatedCalibrationError != null)
          'estimatedCalibrationError': estimatedCalibrationError!,
        if (estimatedCalibrationErrorExact != null)
          'estimatedCalibrationErrorExact': estimatedCalibrationErrorExact!,
        if (metricsType != null) 'metricsType': metricsType!,
      };
}

/// Gives a short summary of an evaluation, and links to the evaluation itself.
class GoogleCloudDocumentaiV1EvaluationReference {
  /// An aggregate of the statistics for the evaluation with fuzzy matching on.
  GoogleCloudDocumentaiV1EvaluationMetrics? aggregateMetrics;

  /// An aggregate of the statistics for the evaluation with fuzzy matching off.
  GoogleCloudDocumentaiV1EvaluationMetrics? aggregateMetricsExact;

  /// The resource name of the evaluation.
  core.String? evaluation;

  /// The resource name of the Long Running Operation for the evaluation.
  core.String? operation;

  GoogleCloudDocumentaiV1EvaluationReference({
    this.aggregateMetrics,
    this.aggregateMetricsExact,
    this.evaluation,
    this.operation,
  });

  GoogleCloudDocumentaiV1EvaluationReference.fromJson(core.Map json_)
      : this(
          aggregateMetrics: json_.containsKey('aggregateMetrics')
              ? GoogleCloudDocumentaiV1EvaluationMetrics.fromJson(
                  json_['aggregateMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          aggregateMetricsExact: json_.containsKey('aggregateMetricsExact')
              ? GoogleCloudDocumentaiV1EvaluationMetrics.fromJson(
                  json_['aggregateMetricsExact']
                      as core.Map<core.String, core.dynamic>)
              : null,
          evaluation: json_.containsKey('evaluation')
              ? json_['evaluation'] as core.String
              : null,
          operation: json_.containsKey('operation')
              ? json_['operation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregateMetrics != null) 'aggregateMetrics': aggregateMetrics!,
        if (aggregateMetricsExact != null)
          'aggregateMetricsExact': aggregateMetricsExact!,
        if (evaluation != null) 'evaluation': evaluation!,
        if (operation != null) 'operation': operation!,
      };
}

/// Response message for the FetchProcessorTypes method.
class GoogleCloudDocumentaiV1FetchProcessorTypesResponse {
  /// The list of processor types.
  core.List<GoogleCloudDocumentaiV1ProcessorType>? processorTypes;

  GoogleCloudDocumentaiV1FetchProcessorTypesResponse({
    this.processorTypes,
  });

  GoogleCloudDocumentaiV1FetchProcessorTypesResponse.fromJson(core.Map json_)
      : this(
          processorTypes: json_.containsKey('processorTypes')
              ? (json_['processorTypes'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1ProcessorType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (processorTypes != null) 'processorTypes': processorTypes!,
      };
}

/// Specifies a document stored on Cloud Storage.
class GoogleCloudDocumentaiV1GcsDocument {
  /// The Cloud Storage object uri.
  core.String? gcsUri;

  /// An IANA MIME type (RFC6838) of the content.
  core.String? mimeType;

  GoogleCloudDocumentaiV1GcsDocument({
    this.gcsUri,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1GcsDocument.fromJson(core.Map json_)
      : this(
          gcsUri: json_.containsKey('gcsUri')
              ? json_['gcsUri'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUri != null) 'gcsUri': gcsUri!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Specifies a set of documents on Cloud Storage.
class GoogleCloudDocumentaiV1GcsDocuments {
  /// The list of documents.
  core.List<GoogleCloudDocumentaiV1GcsDocument>? documents;

  GoogleCloudDocumentaiV1GcsDocuments({
    this.documents,
  });

  GoogleCloudDocumentaiV1GcsDocuments.fromJson(core.Map json_)
      : this(
          documents: json_.containsKey('documents')
              ? (json_['documents'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1GcsDocument.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
      };
}

/// Specifies all documents on Cloud Storage with a common prefix.
class GoogleCloudDocumentaiV1GcsPrefix {
  /// The URI prefix.
  core.String? gcsUriPrefix;

  GoogleCloudDocumentaiV1GcsPrefix({
    this.gcsUriPrefix,
  });

  GoogleCloudDocumentaiV1GcsPrefix.fromJson(core.Map json_)
      : this(
          gcsUriPrefix: json_.containsKey('gcsUriPrefix')
              ? json_['gcsUriPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUriPrefix != null) 'gcsUriPrefix': gcsUriPrefix!,
      };
}

/// The status of human review on a processed document.
class GoogleCloudDocumentaiV1HumanReviewStatus {
  /// The name of the operation triggered by the processed document.
  ///
  /// This field is populated only when the state is `HUMAN_REVIEW_IN_PROGRESS`.
  /// It has the same response type and metadata as the long-running operation
  /// returned by ReviewDocument.
  core.String? humanReviewOperation;

  /// The state of human review on the processing request.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Human review state is unspecified. Most likely due
  /// to an internal error.
  /// - "SKIPPED" : Human review is skipped for the document. This can happen
  /// because human review isn't enabled on the processor or the processing
  /// request has been set to skip this document.
  /// - "VALIDATION_PASSED" : Human review validation is triggered and passed,
  /// so no review is needed.
  /// - "IN_PROGRESS" : Human review validation is triggered and the document is
  /// under review.
  /// - "ERROR" : Some error happened during triggering human review, see the
  /// state_message for details.
  core.String? state;

  /// A message providing more details about the human review state.
  core.String? stateMessage;

  GoogleCloudDocumentaiV1HumanReviewStatus({
    this.humanReviewOperation,
    this.state,
    this.stateMessage,
  });

  GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(core.Map json_)
      : this(
          humanReviewOperation: json_.containsKey('humanReviewOperation')
              ? json_['humanReviewOperation'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateMessage: json_.containsKey('stateMessage')
              ? json_['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReviewOperation != null)
          'humanReviewOperation': humanReviewOperation!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// The response from `ListEvaluations`.
class GoogleCloudDocumentaiV1ListEvaluationsResponse {
  /// The evaluations requested.
  core.List<GoogleCloudDocumentaiV1Evaluation>? evaluations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudDocumentaiV1ListEvaluationsResponse({
    this.evaluations,
    this.nextPageToken,
  });

  GoogleCloudDocumentaiV1ListEvaluationsResponse.fromJson(core.Map json_)
      : this(
          evaluations: json_.containsKey('evaluations')
              ? (json_['evaluations'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1Evaluation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluations != null) 'evaluations': evaluations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for the ListProcessorTypes method.
class GoogleCloudDocumentaiV1ListProcessorTypesResponse {
  /// Points to the next page, otherwise empty.
  core.String? nextPageToken;

  /// The processor types.
  core.List<GoogleCloudDocumentaiV1ProcessorType>? processorTypes;

  GoogleCloudDocumentaiV1ListProcessorTypesResponse({
    this.nextPageToken,
    this.processorTypes,
  });

  GoogleCloudDocumentaiV1ListProcessorTypesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          processorTypes: json_.containsKey('processorTypes')
              ? (json_['processorTypes'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1ProcessorType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processorTypes != null) 'processorTypes': processorTypes!,
      };
}

/// Response message for the ListProcessorVersions method.
class GoogleCloudDocumentaiV1ListProcessorVersionsResponse {
  /// Points to the next processor, otherwise empty.
  core.String? nextPageToken;

  /// The list of processors.
  core.List<GoogleCloudDocumentaiV1ProcessorVersion>? processorVersions;

  GoogleCloudDocumentaiV1ListProcessorVersionsResponse({
    this.nextPageToken,
    this.processorVersions,
  });

  GoogleCloudDocumentaiV1ListProcessorVersionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          processorVersions: json_.containsKey('processorVersions')
              ? (json_['processorVersions'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1ProcessorVersion.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processorVersions != null) 'processorVersions': processorVersions!,
      };
}

/// Response message for the ListProcessors method.
class GoogleCloudDocumentaiV1ListProcessorsResponse {
  /// Points to the next processor, otherwise empty.
  core.String? nextPageToken;

  /// The list of processors.
  core.List<GoogleCloudDocumentaiV1Processor>? processors;

  GoogleCloudDocumentaiV1ListProcessorsResponse({
    this.nextPageToken,
    this.processors,
  });

  GoogleCloudDocumentaiV1ListProcessorsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          processors: json_.containsKey('processors')
              ? (json_['processors'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1Processor.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processors != null) 'processors': processors!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
typedef GoogleCloudDocumentaiV1NormalizedVertex
    = $GoogleCloudDocumentaiV1NormalizedVertex;

/// Config for Document OCR.
class GoogleCloudDocumentaiV1OcrConfig {
  /// A list of advanced OCR options to further fine-tune OCR behavior.
  ///
  /// Current valid values are: - `legacy_layout`: a heuristics layout detection
  /// algorithm, which serves as an alternative to the current ML-based layout
  /// detection algorithm. Customers can choose the best suitable layout
  /// algorithm based on their situation.
  core.List<core.String>? advancedOcrOptions;

  /// Turn on font identification model and return font style information.
  ///
  /// Deprecated, use PremiumFeatures.compute_style_info instead.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? computeStyleInfo;

  /// Turn off character box detector in OCR engine.
  ///
  /// Character box detection is enabled by default in OCR 2.0 (and later)
  /// processors.
  core.bool? disableCharacterBoxesDetection;

  /// Enables intelligent document quality scores after OCR.
  ///
  /// Can help with diagnosing why OCR responses are of poor quality for a given
  /// input. Adds additional latency comparable to regular OCR to the process
  /// call.
  core.bool? enableImageQualityScores;

  /// Enables special handling for PDFs with existing text information.
  ///
  /// Results in better text extraction quality in such PDF inputs.
  core.bool? enableNativePdfParsing;

  /// Includes symbol level OCR information if set to true.
  core.bool? enableSymbol;

  /// Hints for the OCR model.
  GoogleCloudDocumentaiV1OcrConfigHints? hints;

  /// Configurations for premium OCR features.
  GoogleCloudDocumentaiV1OcrConfigPremiumFeatures? premiumFeatures;

  GoogleCloudDocumentaiV1OcrConfig({
    this.advancedOcrOptions,
    this.computeStyleInfo,
    this.disableCharacterBoxesDetection,
    this.enableImageQualityScores,
    this.enableNativePdfParsing,
    this.enableSymbol,
    this.hints,
    this.premiumFeatures,
  });

  GoogleCloudDocumentaiV1OcrConfig.fromJson(core.Map json_)
      : this(
          advancedOcrOptions: json_.containsKey('advancedOcrOptions')
              ? (json_['advancedOcrOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          computeStyleInfo: json_.containsKey('computeStyleInfo')
              ? json_['computeStyleInfo'] as core.bool
              : null,
          disableCharacterBoxesDetection:
              json_.containsKey('disableCharacterBoxesDetection')
                  ? json_['disableCharacterBoxesDetection'] as core.bool
                  : null,
          enableImageQualityScores:
              json_.containsKey('enableImageQualityScores')
                  ? json_['enableImageQualityScores'] as core.bool
                  : null,
          enableNativePdfParsing: json_.containsKey('enableNativePdfParsing')
              ? json_['enableNativePdfParsing'] as core.bool
              : null,
          enableSymbol: json_.containsKey('enableSymbol')
              ? json_['enableSymbol'] as core.bool
              : null,
          hints: json_.containsKey('hints')
              ? GoogleCloudDocumentaiV1OcrConfigHints.fromJson(
                  json_['hints'] as core.Map<core.String, core.dynamic>)
              : null,
          premiumFeatures: json_.containsKey('premiumFeatures')
              ? GoogleCloudDocumentaiV1OcrConfigPremiumFeatures.fromJson(
                  json_['premiumFeatures']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedOcrOptions != null)
          'advancedOcrOptions': advancedOcrOptions!,
        if (computeStyleInfo != null) 'computeStyleInfo': computeStyleInfo!,
        if (disableCharacterBoxesDetection != null)
          'disableCharacterBoxesDetection': disableCharacterBoxesDetection!,
        if (enableImageQualityScores != null)
          'enableImageQualityScores': enableImageQualityScores!,
        if (enableNativePdfParsing != null)
          'enableNativePdfParsing': enableNativePdfParsing!,
        if (enableSymbol != null) 'enableSymbol': enableSymbol!,
        if (hints != null) 'hints': hints!,
        if (premiumFeatures != null) 'premiumFeatures': premiumFeatures!,
      };
}

/// Hints for OCR Engine
class GoogleCloudDocumentaiV1OcrConfigHints {
  /// List of BCP-47 language codes to use for OCR.
  ///
  /// In most cases, not specifying it yields the best results since it enables
  /// automatic language detection. For languages based on the Latin alphabet,
  /// setting hints is not needed. In rare cases, when the language of the text
  /// in the image is known, setting a hint will help get better results
  /// (although it will be a significant hindrance if the hint is wrong).
  core.List<core.String>? languageHints;

  GoogleCloudDocumentaiV1OcrConfigHints({
    this.languageHints,
  });

  GoogleCloudDocumentaiV1OcrConfigHints.fromJson(core.Map json_)
      : this(
          languageHints: json_.containsKey('languageHints')
              ? (json_['languageHints'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageHints != null) 'languageHints': languageHints!,
      };
}

/// Configurations for premium OCR features.
class GoogleCloudDocumentaiV1OcrConfigPremiumFeatures {
  /// Turn on font identification model and return font style information.
  core.bool? computeStyleInfo;

  /// Turn on the model that can extract LaTeX math formulas.
  core.bool? enableMathOcr;

  /// Turn on selection mark detector in OCR engine.
  ///
  /// Only available in OCR 2.0 (and later) processors.
  core.bool? enableSelectionMarkDetection;

  GoogleCloudDocumentaiV1OcrConfigPremiumFeatures({
    this.computeStyleInfo,
    this.enableMathOcr,
    this.enableSelectionMarkDetection,
  });

  GoogleCloudDocumentaiV1OcrConfigPremiumFeatures.fromJson(core.Map json_)
      : this(
          computeStyleInfo: json_.containsKey('computeStyleInfo')
              ? json_['computeStyleInfo'] as core.bool
              : null,
          enableMathOcr: json_.containsKey('enableMathOcr')
              ? json_['enableMathOcr'] as core.bool
              : null,
          enableSelectionMarkDetection:
              json_.containsKey('enableSelectionMarkDetection')
                  ? json_['enableSelectionMarkDetection'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeStyleInfo != null) 'computeStyleInfo': computeStyleInfo!,
        if (enableMathOcr != null) 'enableMathOcr': enableMathOcr!,
        if (enableSelectionMarkDetection != null)
          'enableSelectionMarkDetection': enableSelectionMarkDetection!,
      };
}

/// Options for Process API
class GoogleCloudDocumentaiV1ProcessOptions {
  /// Only process certain pages from the end, same as above.
  core.int? fromEnd;

  /// Only process certain pages from the start.
  ///
  /// Process all if the document has fewer pages.
  core.int? fromStart;

  /// Which pages to process (1-indexed).
  GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector?
      individualPageSelector;

  /// Only applicable to `OCR_PROCESSOR` and `FORM_PARSER_PROCESSOR`.
  ///
  /// Returns error if set on other processor types.
  GoogleCloudDocumentaiV1OcrConfig? ocrConfig;

  /// Override the schema of the ProcessorVersion.
  ///
  /// Will return an Invalid Argument error if this field is set when the
  /// underlying ProcessorVersion doesn't support schema override.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentSchema? schemaOverride;

  GoogleCloudDocumentaiV1ProcessOptions({
    this.fromEnd,
    this.fromStart,
    this.individualPageSelector,
    this.ocrConfig,
    this.schemaOverride,
  });

  GoogleCloudDocumentaiV1ProcessOptions.fromJson(core.Map json_)
      : this(
          fromEnd: json_.containsKey('fromEnd')
              ? json_['fromEnd'] as core.int
              : null,
          fromStart: json_.containsKey('fromStart')
              ? json_['fromStart'] as core.int
              : null,
          individualPageSelector: json_.containsKey('individualPageSelector')
              ? GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector
                  .fromJson(json_['individualPageSelector']
                      as core.Map<core.String, core.dynamic>)
              : null,
          ocrConfig: json_.containsKey('ocrConfig')
              ? GoogleCloudDocumentaiV1OcrConfig.fromJson(
                  json_['ocrConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          schemaOverride: json_.containsKey('schemaOverride')
              ? GoogleCloudDocumentaiV1DocumentSchema.fromJson(
                  json_['schemaOverride']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fromEnd != null) 'fromEnd': fromEnd!,
        if (fromStart != null) 'fromStart': fromStart!,
        if (individualPageSelector != null)
          'individualPageSelector': individualPageSelector!,
        if (ocrConfig != null) 'ocrConfig': ocrConfig!,
        if (schemaOverride != null) 'schemaOverride': schemaOverride!,
      };
}

/// A list of individual page numbers.
class GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector {
  /// Indices of the pages (starting from 1).
  ///
  /// Optional.
  core.List<core.int>? pages;

  GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector({
    this.pages,
  });

  GoogleCloudDocumentaiV1ProcessOptionsIndividualPageSelector.fromJson(
      core.Map json_)
      : this(
          pages: json_.containsKey('pages')
              ? (json_['pages'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pages != null) 'pages': pages!,
      };
}

/// Request message for the ProcessDocument method.
class GoogleCloudDocumentaiV1ProcessRequest {
  /// Specifies which fields to include in the ProcessResponse.document output.
  ///
  /// Only supports top-level document and pages field, so it must be in the
  /// form of `{document_field_name}` or `pages.{page_field_name}`.
  core.String? fieldMask;

  /// A raw document on Google Cloud Storage.
  GoogleCloudDocumentaiV1GcsDocument? gcsDocument;

  /// An inline document proto.
  GoogleCloudDocumentaiV1Document? inlineDocument;

  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints) and can only contain lowercase letters, numeric characters,
  /// underscores, and dashes. International characters are allowed. Label
  /// values are optional. Label keys must start with a letter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Inference-time options for the process API
  GoogleCloudDocumentaiV1ProcessOptions? processOptions;

  /// A raw document content (bytes).
  GoogleCloudDocumentaiV1RawDocument? rawDocument;

  /// Whether human review should be skipped for this request.
  ///
  /// Default to `false`.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1ProcessRequest({
    this.fieldMask,
    this.gcsDocument,
    this.inlineDocument,
    this.labels,
    this.processOptions,
    this.rawDocument,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1ProcessRequest.fromJson(core.Map json_)
      : this(
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          gcsDocument: json_.containsKey('gcsDocument')
              ? GoogleCloudDocumentaiV1GcsDocument.fromJson(
                  json_['gcsDocument'] as core.Map<core.String, core.dynamic>)
              : null,
          inlineDocument: json_.containsKey('inlineDocument')
              ? GoogleCloudDocumentaiV1Document.fromJson(json_['inlineDocument']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          processOptions: json_.containsKey('processOptions')
              ? GoogleCloudDocumentaiV1ProcessOptions.fromJson(
                  json_['processOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          rawDocument: json_.containsKey('rawDocument')
              ? GoogleCloudDocumentaiV1RawDocument.fromJson(
                  json_['rawDocument'] as core.Map<core.String, core.dynamic>)
              : null,
          skipHumanReview: json_.containsKey('skipHumanReview')
              ? json_['skipHumanReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (gcsDocument != null) 'gcsDocument': gcsDocument!,
        if (inlineDocument != null) 'inlineDocument': inlineDocument!,
        if (labels != null) 'labels': labels!,
        if (processOptions != null) 'processOptions': processOptions!,
        if (rawDocument != null) 'rawDocument': rawDocument!,
        if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
      };
}

/// Response message for the ProcessDocument method.
class GoogleCloudDocumentaiV1ProcessResponse {
  /// The document payload, will populate fields based on the processor's
  /// behavior.
  GoogleCloudDocumentaiV1Document? document;

  /// The status of human review on the processed document.
  GoogleCloudDocumentaiV1HumanReviewStatus? humanReviewStatus;

  GoogleCloudDocumentaiV1ProcessResponse({
    this.document,
    this.humanReviewStatus,
  });

  GoogleCloudDocumentaiV1ProcessResponse.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? GoogleCloudDocumentaiV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          humanReviewStatus: json_.containsKey('humanReviewStatus')
              ? GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(
                  json_['humanReviewStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (humanReviewStatus != null) 'humanReviewStatus': humanReviewStatus!,
      };
}

/// The first-class citizen for Document AI.
///
/// Each processor defines how to extract structural information from a
/// document.
class GoogleCloudDocumentaiV1Processor {
  /// The time the processor was created.
  core.String? createTime;

  /// The default processor version.
  core.String? defaultProcessorVersion;

  /// The display name of the processor.
  core.String? displayName;

  /// The [KMS key](https://cloud.google.com/security-key-management) used for
  /// encryption and decryption in CMEK scenarios.
  core.String? kmsKeyName;

  /// The resource name of the processor.
  ///
  /// Format: `projects/{project}/locations/{location}/processors/{processor}`
  ///
  /// Output only. Immutable.
  core.String? name;

  /// The http endpoint that can be called to invoke processing.
  ///
  /// Output only. Immutable.
  core.String? processEndpoint;

  /// The processor version aliases.
  ///
  /// Output only.
  core.List<GoogleCloudDocumentaiV1ProcessorVersionAlias>?
      processorVersionAliases;

  /// The state of the processor.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The processor is in an unspecified state.
  /// - "ENABLED" : The processor is enabled, i.e., has an enabled version which
  /// can currently serve processing requests and all the feature dependencies
  /// have been successfully initialized.
  /// - "DISABLED" : The processor is disabled.
  /// - "ENABLING" : The processor is being enabled, will become `ENABLED` if
  /// successful.
  /// - "DISABLING" : The processor is being disabled, will become `DISABLED` if
  /// successful.
  /// - "CREATING" : The processor is being created, will become either
  /// `ENABLED` (for successful creation) or `FAILED` (for failed ones). Once a
  /// processor is in this state, it can then be used for document processing,
  /// but the feature dependencies of the processor might not be fully created
  /// yet.
  /// - "FAILED" : The processor failed during creation or initialization of
  /// feature dependencies. The user should delete the processor and recreate
  /// one as all the functionalities of the processor are disabled.
  /// - "DELETING" : The processor is being deleted, will be removed if
  /// successful.
  core.String? state;

  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`.
  ///
  /// To get a list of processor types, see FetchProcessorTypes.
  core.String? type;

  GoogleCloudDocumentaiV1Processor({
    this.createTime,
    this.defaultProcessorVersion,
    this.displayName,
    this.kmsKeyName,
    this.name,
    this.processEndpoint,
    this.processorVersionAliases,
    this.state,
    this.type,
  });

  GoogleCloudDocumentaiV1Processor.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          defaultProcessorVersion: json_.containsKey('defaultProcessorVersion')
              ? json_['defaultProcessorVersion'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          processEndpoint: json_.containsKey('processEndpoint')
              ? json_['processEndpoint'] as core.String
              : null,
          processorVersionAliases: json_.containsKey('processorVersionAliases')
              ? (json_['processorVersionAliases'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1ProcessorVersionAlias.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (defaultProcessorVersion != null)
          'defaultProcessorVersion': defaultProcessorVersion!,
        if (displayName != null) 'displayName': displayName!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (name != null) 'name': name!,
        if (processEndpoint != null) 'processEndpoint': processEndpoint!,
        if (processorVersionAliases != null)
          'processorVersionAliases': processorVersionAliases!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// A processor type is responsible for performing a certain document
/// understanding task on a certain type of document.
class GoogleCloudDocumentaiV1ProcessorType {
  /// Whether the processor type allows creation.
  ///
  /// If true, users can create a processor of this processor type. Otherwise,
  /// users need to request access.
  core.bool? allowCreation;

  /// The locations in which this processor is available.
  core.List<GoogleCloudDocumentaiV1ProcessorTypeLocationInfo>?
      availableLocations;

  /// The processor category, used by UI to group processor types.
  core.String? category;

  /// Launch stage of the processor type
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : Do not use this default value.
  /// - "UNIMPLEMENTED" : The feature is not yet implemented. Users can not use
  /// it.
  /// - "PRELAUNCH" : Prelaunch features are hidden from users and are only
  /// visible internally.
  /// - "EARLY_ACCESS" : Early Access features are limited to a closed group of
  /// testers. To use these features, you must sign up in advance and sign a
  /// Trusted Tester agreement (which includes confidentiality provisions).
  /// These features may be unstable, changed in backward-incompatible ways, and
  /// are not guaranteed to be released.
  /// - "ALPHA" : Alpha is a limited availability test for releases before they
  /// are cleared for widespread use. By Alpha, all significant design issues
  /// are resolved and we are in the process of verifying functionality. Alpha
  /// customers need to apply for access, agree to applicable terms, and have
  /// their projects allowlisted. Alpha releases don't have to be feature
  /// complete, no SLAs are provided, and there are no technical support
  /// obligations, but they will be far enough along that customers can actually
  /// use them in test environments or for limited-use tests -- just like they
  /// would in normal production cases.
  /// - "BETA" : Beta is the point at which we are ready to open a release for
  /// any customer to use. There are no SLA or technical support obligations in
  /// a Beta release. Products will be complete from a feature perspective, but
  /// may have some open outstanding issues. Beta releases are suitable for
  /// limited production use cases.
  /// - "GA" : GA features are open to all developers and are considered stable
  /// and fully qualified for production use.
  /// - "DEPRECATED" : Deprecated features are scheduled to be shut down and
  /// removed. For more information, see the "Deprecation Policy" section of our
  /// [Terms of Service](https://cloud.google.com/terms/) and the
  /// [Google Cloud Platform Subject to the Deprecation Policy](https://cloud.google.com/terms/deprecation)
  /// documentation.
  core.String? launchStage;

  /// The resource name of the processor type.
  ///
  /// Format: `projects/{project}/processorTypes/{processor_type}`
  core.String? name;

  /// A set of Cloud Storage URIs of sample documents for this processor.
  core.List<core.String>? sampleDocumentUris;

  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`.
  core.String? type;

  GoogleCloudDocumentaiV1ProcessorType({
    this.allowCreation,
    this.availableLocations,
    this.category,
    this.launchStage,
    this.name,
    this.sampleDocumentUris,
    this.type,
  });

  GoogleCloudDocumentaiV1ProcessorType.fromJson(core.Map json_)
      : this(
          allowCreation: json_.containsKey('allowCreation')
              ? json_['allowCreation'] as core.bool
              : null,
          availableLocations: json_.containsKey('availableLocations')
              ? (json_['availableLocations'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1ProcessorTypeLocationInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          category: json_.containsKey('category')
              ? json_['category'] as core.String
              : null,
          launchStage: json_.containsKey('launchStage')
              ? json_['launchStage'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sampleDocumentUris: json_.containsKey('sampleDocumentUris')
              ? (json_['sampleDocumentUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowCreation != null) 'allowCreation': allowCreation!,
        if (availableLocations != null)
          'availableLocations': availableLocations!,
        if (category != null) 'category': category!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (sampleDocumentUris != null)
          'sampleDocumentUris': sampleDocumentUris!,
        if (type != null) 'type': type!,
      };
}

/// The location information about where the processor is available.
class GoogleCloudDocumentaiV1ProcessorTypeLocationInfo {
  /// The location ID.
  ///
  /// For supported locations, refer to \[regional and multi-regional
  /// support\](/document-ai/docs/regions).
  core.String? locationId;

  GoogleCloudDocumentaiV1ProcessorTypeLocationInfo({
    this.locationId,
  });

  GoogleCloudDocumentaiV1ProcessorTypeLocationInfo.fromJson(core.Map json_)
      : this(
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locationId != null) 'locationId': locationId!,
      };
}

/// A processor version is an implementation of a processor.
///
/// Each processor can have multiple versions, pretrained by Google internally
/// or uptrained by the customer. A processor can only have one default version
/// at a time. Its document-processing behavior is defined by that version.
class GoogleCloudDocumentaiV1ProcessorVersion {
  /// The time the processor version was created.
  core.String? createTime;

  /// If set, information about the eventual deprecation of this version.
  GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo? deprecationInfo;

  /// The display name of the processor version.
  core.String? displayName;

  /// The schema of the processor version.
  ///
  /// Describes the output.
  GoogleCloudDocumentaiV1DocumentSchema? documentSchema;

  /// Denotes that this `ProcessorVersion` is managed by Google.
  ///
  /// Output only.
  core.bool? googleManaged;

  /// The KMS key name used for encryption.
  core.String? kmsKeyName;

  /// The KMS key version with which data is encrypted.
  core.String? kmsKeyVersionName;

  /// The most recently invoked evaluation for the processor version.
  GoogleCloudDocumentaiV1EvaluationReference? latestEvaluation;

  /// The model type of this processor version.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MODEL_TYPE_UNSPECIFIED" : The processor version has unspecified model
  /// type.
  /// - "MODEL_TYPE_GENERATIVE" : The processor version has generative model
  /// type.
  /// - "MODEL_TYPE_CUSTOM" : The processor version has custom model type.
  core.String? modelType;

  /// Identifier.
  ///
  /// The resource name of the processor version. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}`
  core.String? name;

  /// The state of the processor version.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The processor version is in an unspecified state.
  /// - "DEPLOYED" : The processor version is deployed and can be used for
  /// processing.
  /// - "DEPLOYING" : The processor version is being deployed.
  /// - "UNDEPLOYED" : The processor version is not deployed and cannot be used
  /// for processing.
  /// - "UNDEPLOYING" : The processor version is being undeployed.
  /// - "CREATING" : The processor version is being created.
  /// - "DELETING" : The processor version is being deleted.
  /// - "FAILED" : The processor version failed and is in an indeterminate
  /// state.
  /// - "IMPORTING" : The processor version is being imported.
  core.String? state;

  GoogleCloudDocumentaiV1ProcessorVersion({
    this.createTime,
    this.deprecationInfo,
    this.displayName,
    this.documentSchema,
    this.googleManaged,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.latestEvaluation,
    this.modelType,
    this.name,
    this.state,
  });

  GoogleCloudDocumentaiV1ProcessorVersion.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deprecationInfo: json_.containsKey('deprecationInfo')
              ? GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo.fromJson(
                  json_['deprecationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          documentSchema: json_.containsKey('documentSchema')
              ? GoogleCloudDocumentaiV1DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>)
              : null,
          googleManaged: json_.containsKey('googleManaged')
              ? json_['googleManaged'] as core.bool
              : null,
          kmsKeyName: json_.containsKey('kmsKeyName')
              ? json_['kmsKeyName'] as core.String
              : null,
          kmsKeyVersionName: json_.containsKey('kmsKeyVersionName')
              ? json_['kmsKeyVersionName'] as core.String
              : null,
          latestEvaluation: json_.containsKey('latestEvaluation')
              ? GoogleCloudDocumentaiV1EvaluationReference.fromJson(
                  json_['latestEvaluation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          modelType: json_.containsKey('modelType')
              ? json_['modelType'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deprecationInfo != null) 'deprecationInfo': deprecationInfo!,
        if (displayName != null) 'displayName': displayName!,
        if (documentSchema != null) 'documentSchema': documentSchema!,
        if (googleManaged != null) 'googleManaged': googleManaged!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
        if (latestEvaluation != null) 'latestEvaluation': latestEvaluation!,
        if (modelType != null) 'modelType': modelType!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// Contains the alias and the aliased resource name of processor version.
class GoogleCloudDocumentaiV1ProcessorVersionAlias {
  /// The alias in the form of `processor_version` resource name.
  core.String? alias;

  /// The resource name of aliased processor version.
  core.String? processorVersion;

  GoogleCloudDocumentaiV1ProcessorVersionAlias({
    this.alias,
    this.processorVersion,
  });

  GoogleCloudDocumentaiV1ProcessorVersionAlias.fromJson(core.Map json_)
      : this(
          alias:
              json_.containsKey('alias') ? json_['alias'] as core.String : null,
          processorVersion: json_.containsKey('processorVersion')
              ? json_['processorVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alias != null) 'alias': alias!,
        if (processorVersion != null) 'processorVersion': processorVersion!,
      };
}

/// Information about the upcoming deprecation of this processor version.
class GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo {
  /// The time at which this processor version will be deprecated.
  core.String? deprecationTime;

  /// If set, the processor version that will be used as a replacement.
  core.String? replacementProcessorVersion;

  GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo({
    this.deprecationTime,
    this.replacementProcessorVersion,
  });

  GoogleCloudDocumentaiV1ProcessorVersionDeprecationInfo.fromJson(
      core.Map json_)
      : this(
          deprecationTime: json_.containsKey('deprecationTime')
              ? json_['deprecationTime'] as core.String
              : null,
          replacementProcessorVersion:
              json_.containsKey('replacementProcessorVersion')
                  ? json_['replacementProcessorVersion'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deprecationTime != null) 'deprecationTime': deprecationTime!,
        if (replacementProcessorVersion != null)
          'replacementProcessorVersion': replacementProcessorVersion!,
      };
}

/// Payload message of raw document content (bytes).
class GoogleCloudDocumentaiV1RawDocument {
  /// Inline document content.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The display name of the document, it supports all Unicode characters
  /// except the following: `*`, `?`, `[`, `]`, `%`, `{`, `}`,`'`, `\"`, `,`
  /// `~`, `=` and `:` are reserved.
  ///
  /// If not specified, a default ID is generated.
  core.String? displayName;

  /// An IANA MIME type (RFC6838) indicating the nature and format of the
  /// content.
  core.String? mimeType;

  GoogleCloudDocumentaiV1RawDocument({
    this.content,
    this.displayName,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1RawDocument.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (displayName != null) 'displayName': displayName!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Request message for the ReviewDocument method.
class GoogleCloudDocumentaiV1ReviewDocumentRequest {
  /// The document schema of the human review task.
  GoogleCloudDocumentaiV1DocumentSchema? documentSchema;

  /// Whether the validation should be performed on the ad-hoc review request.
  core.bool? enableSchemaValidation;

  /// An inline document proto.
  GoogleCloudDocumentaiV1Document? inlineDocument;

  /// The priority of the human review task.
  /// Possible string values are:
  /// - "DEFAULT" : The default priority level.
  /// - "URGENT" : The urgent priority level. The labeling manager should
  /// allocate labeler resource to the urgent task queue to respect this
  /// priority level.
  core.String? priority;

  GoogleCloudDocumentaiV1ReviewDocumentRequest({
    this.documentSchema,
    this.enableSchemaValidation,
    this.inlineDocument,
    this.priority,
  });

  GoogleCloudDocumentaiV1ReviewDocumentRequest.fromJson(core.Map json_)
      : this(
          documentSchema: json_.containsKey('documentSchema')
              ? GoogleCloudDocumentaiV1DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableSchemaValidation: json_.containsKey('enableSchemaValidation')
              ? json_['enableSchemaValidation'] as core.bool
              : null,
          inlineDocument: json_.containsKey('inlineDocument')
              ? GoogleCloudDocumentaiV1Document.fromJson(json_['inlineDocument']
                  as core.Map<core.String, core.dynamic>)
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentSchema != null) 'documentSchema': documentSchema!,
        if (enableSchemaValidation != null)
          'enableSchemaValidation': enableSchemaValidation!,
        if (inlineDocument != null) 'inlineDocument': inlineDocument!,
        if (priority != null) 'priority': priority!,
      };
}

/// Request message for the SetDefaultProcessorVersion method.
class GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest {
  /// The resource name of child ProcessorVersion to use as default.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{version}`
  ///
  /// Required.
  core.String? defaultProcessorVersion;

  GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest({
    this.defaultProcessorVersion,
  });

  GoogleCloudDocumentaiV1SetDefaultProcessorVersionRequest.fromJson(
      core.Map json_)
      : this(
          defaultProcessorVersion: json_.containsKey('defaultProcessorVersion')
              ? json_['defaultProcessorVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultProcessorVersion != null)
          'defaultProcessorVersion': defaultProcessorVersion!,
      };
}

/// Request message for the TrainProcessorVersion method.
class GoogleCloudDocumentaiV1TrainProcessorVersionRequest {
  /// The processor version to use as a base for training.
  ///
  /// This processor version must be a child of `parent`. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`.
  ///
  /// Optional.
  core.String? baseProcessorVersion;

  /// Options to control Custom Document Extraction (CDE) Processor.
  GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions?
      customDocumentExtractionOptions;

  /// The schema the processor version will be trained with.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentSchema? documentSchema;

  /// Options to control foundation model tuning of a processor.
  GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions?
      foundationModelTuningOptions;

  /// The input data used to train the ProcessorVersion.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData? inputData;

  /// The processor version to be created.
  ///
  /// Required.
  GoogleCloudDocumentaiV1ProcessorVersion? processorVersion;

  GoogleCloudDocumentaiV1TrainProcessorVersionRequest({
    this.baseProcessorVersion,
    this.customDocumentExtractionOptions,
    this.documentSchema,
    this.foundationModelTuningOptions,
    this.inputData,
    this.processorVersion,
  });

  GoogleCloudDocumentaiV1TrainProcessorVersionRequest.fromJson(core.Map json_)
      : this(
          baseProcessorVersion: json_.containsKey('baseProcessorVersion')
              ? json_['baseProcessorVersion'] as core.String
              : null,
          customDocumentExtractionOptions: json_
                  .containsKey('customDocumentExtractionOptions')
              ? GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions
                  .fromJson(json_['customDocumentExtractionOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          documentSchema: json_.containsKey('documentSchema')
              ? GoogleCloudDocumentaiV1DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>)
              : null,
          foundationModelTuningOptions: json_
                  .containsKey('foundationModelTuningOptions')
              ? GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions
                  .fromJson(json_['foundationModelTuningOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputData: json_.containsKey('inputData')
              ? GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData
                  .fromJson(
                      json_['inputData'] as core.Map<core.String, core.dynamic>)
              : null,
          processorVersion: json_.containsKey('processorVersion')
              ? GoogleCloudDocumentaiV1ProcessorVersion.fromJson(
                  json_['processorVersion']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseProcessorVersion != null)
          'baseProcessorVersion': baseProcessorVersion!,
        if (customDocumentExtractionOptions != null)
          'customDocumentExtractionOptions': customDocumentExtractionOptions!,
        if (documentSchema != null) 'documentSchema': documentSchema!,
        if (foundationModelTuningOptions != null)
          'foundationModelTuningOptions': foundationModelTuningOptions!,
        if (inputData != null) 'inputData': inputData!,
        if (processorVersion != null) 'processorVersion': processorVersion!,
      };
}

/// Options to control the training of the Custom Document Extraction (CDE)
/// Processor.
class GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions {
  /// Training method to use for CDE training.
  /// Possible string values are:
  /// - "TRAINING_METHOD_UNSPECIFIED"
  /// - "MODEL_BASED"
  /// - "TEMPLATE_BASED"
  core.String? trainingMethod;

  GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions({
    this.trainingMethod,
  });

  GoogleCloudDocumentaiV1TrainProcessorVersionRequestCustomDocumentExtractionOptions.fromJson(
      core.Map json_)
      : this(
          trainingMethod: json_.containsKey('trainingMethod')
              ? json_['trainingMethod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (trainingMethod != null) 'trainingMethod': trainingMethod!,
      };
}

/// Options to control foundation model tuning of the processor.
class GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions {
  /// The multiplier to apply to the recommended learning rate.
  ///
  /// Valid values are between 0.1 and 10. If not provided, recommended learning
  /// rate will be used.
  ///
  /// Optional.
  core.double? learningRateMultiplier;

  /// The number of steps to run for model tuning.
  ///
  /// Valid values are between 1 and 400. If not provided, recommended steps
  /// will be used.
  ///
  /// Optional.
  core.int? trainSteps;

  GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions({
    this.learningRateMultiplier,
    this.trainSteps,
  });

  GoogleCloudDocumentaiV1TrainProcessorVersionRequestFoundationModelTuningOptions.fromJson(
      core.Map json_)
      : this(
          learningRateMultiplier: json_.containsKey('learningRateMultiplier')
              ? (json_['learningRateMultiplier'] as core.num).toDouble()
              : null,
          trainSteps: json_.containsKey('trainSteps')
              ? json_['trainSteps'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (learningRateMultiplier != null)
          'learningRateMultiplier': learningRateMultiplier!,
        if (trainSteps != null) 'trainSteps': trainSteps!,
      };
}

/// The input data used to train a new ProcessorVersion.
class GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData {
  /// The documents used for testing the trained version.
  GoogleCloudDocumentaiV1BatchDocumentsInputConfig? testDocuments;

  /// The documents used for training the new version.
  GoogleCloudDocumentaiV1BatchDocumentsInputConfig? trainingDocuments;

  GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData({
    this.testDocuments,
    this.trainingDocuments,
  });

  GoogleCloudDocumentaiV1TrainProcessorVersionRequestInputData.fromJson(
      core.Map json_)
      : this(
          testDocuments: json_.containsKey('testDocuments')
              ? GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(
                  json_['testDocuments'] as core.Map<core.String, core.dynamic>)
              : null,
          trainingDocuments: json_.containsKey('trainingDocuments')
              ? GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(
                  json_['trainingDocuments']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testDocuments != null) 'testDocuments': testDocuments!,
        if (trainingDocuments != null) 'trainingDocuments': trainingDocuments!,
      };
}

/// Request message for the UndeployProcessorVersion method.
typedef GoogleCloudDocumentaiV1UndeployProcessorVersionRequest = $Empty;

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
typedef GoogleCloudDocumentaiV1Vertex = $GoogleCloudDocumentaiV1Vertex;

/// The response message for Locations.ListLocations.
class GoogleCloudLocationListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<GoogleCloudLocationLocation>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  GoogleCloudLocationListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => GoogleCloudLocationLocation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A resource that represents a Google Cloud location.
typedef GoogleCloudLocationLocation = $Location00;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to and from
/// color representations in various languages over compactness. For example,
/// the fields of this representation can be trivially provided to the
/// constructor of `java.awt.Color` in Java; it can also be trivially provided
/// to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just
/// a little work, it can be easily formatted into a CSS `rgba()` string in
/// JavaScript. This reference page doesn't have information about the absolute
/// color space that should be used to interpret the RGB value—for example,
/// sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume
/// the sRGB color space. When color equality needs to be decided,
/// implementations, unless documented otherwise, treat two colors as equal if
/// all their red, green, blue, and alpha values each differ by at most `1e-5`.
/// Example (Java): import com.google.type.Color; // ... public static
/// java.awt.Color fromProto(Color protocolor) { float alpha =
/// protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
/// java.awt.Color( protocolor.getRed(), protocolor.getGreen(),
/// protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color
/// color) { float red = (float) color.getRed(); float green = (float)
/// color.getGreen(); float blue = (float) color.getBlue(); float denominator =
/// 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red /
/// denominator) .setGreen(green / denominator) .setBlue(blue / denominator);
/// int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha(
/// FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build());
/// } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ...
/// static UIColor* fromProto(Color* protocolor) { float red = \[protocolor
/// red\]; float green = \[protocolor green\]; float blue = \[protocolor blue\];
/// FloatValue* alpha_wrapper = \[protocolor alpha\]; float alpha = 1.0; if
/// (alpha_wrapper != nil) { alpha = \[alpha_wrapper value\]; } return \[UIColor
/// colorWithRed:red green:green blue:blue alpha:alpha\]; } static Color*
/// toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (!\[color
/// getRed:&red green:&green blue:&blue alpha:&alpha\]) { return nil; } Color*
/// result = \[\[Color alloc\] init\]; \[result setRed:red\]; \[result
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha \<= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) |
/// (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var
/// missingZeros = 6 - hexString.length; var resultBuilder = \['#'\]; for (var i
/// = 0; i \< missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
typedef GoogleTypeColor = $Color;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef GoogleTypeDate = $Date;

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year, month, or day are 0, the DateTime is considered not to have a specific
/// year, month, or day respectively. This type may also be used to represent a
/// physical time if all the date and time fields are set and either case of the
/// `time_offset` oneof is set. Consider using `Timestamp` message for physical
/// time instead. If your use case also would like to store the user's timezone,
/// that can be done in another field. This type is more flexible than some
/// applications may want. Make sure to document and validate your application's
/// limitations.
class GoogleTypeDateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 if specifying
  /// a datetime without a day.
  ///
  /// Optional.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// Optional.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59, defaults to 0.
  ///
  /// Optional.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12, or 0 if specifying a datetime without a month.
  ///
  /// Optional.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// Optional.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// Optional.
  core.int? seconds;

  /// Time zone.
  GoogleTypeTimeZone? timeZone;

  /// UTC offset.
  ///
  /// Must be whole seconds, between -18 hours and +18 hours. For example, a UTC
  /// offset of -4:00 would be represented as { seconds: -14400 }.
  core.String? utcOffset;

  /// Year of date.
  ///
  /// Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  ///
  /// Optional.
  core.int? year;

  GoogleTypeDateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  GoogleTypeDateTime.fromJson(core.Map json_)
      : this(
          day: json_.containsKey('day') ? json_['day'] as core.int : null,
          hours: json_.containsKey('hours') ? json_['hours'] as core.int : null,
          minutes: json_.containsKey('minutes')
              ? json_['minutes'] as core.int
              : null,
          month: json_.containsKey('month') ? json_['month'] as core.int : null,
          nanos: json_.containsKey('nanos') ? json_['nanos'] as core.int : null,
          seconds: json_.containsKey('seconds')
              ? json_['seconds'] as core.int
              : null,
          timeZone: json_.containsKey('timeZone')
              ? GoogleTypeTimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
          utcOffset: json_.containsKey('utcOffset')
              ? json_['utcOffset'] as core.String
              : null,
          year: json_.containsKey('year') ? json_['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (month != null) 'month': month!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (utcOffset != null) 'utcOffset': utcOffset!,
        if (year != null) 'year': year!,
      };
}

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an
/// internationalization-ready address widget such as
/// https://github.com/google/libaddressinput) - Users should not be presented
/// with UI elements for input or editing of fields outside countries where that
/// field is used. For more guidance on how to use this schema, please see:
/// https://support.google.com/business/answer/6397478
typedef GoogleTypePostalAddress = $PostalAddress;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef GoogleTypeTimeZone = $TimeZone;
