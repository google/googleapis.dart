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

/// Cloud Document AI API - v1beta3
///
/// Service to parse structured information from unstructured or semi-structured
/// documents using state-of-the-art Google AI such as natural language,
/// computer vision, translation, and AutoML.
///
/// For more information, see <https://cloud.google.com/document-ai/docs/>
///
/// Create an instance of [DocumentApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsProcessorTypesResource]
///     - [ProjectsLocationsProcessorsResource]
///       - [ProjectsLocationsProcessorsDatasetResource]
///       - [ProjectsLocationsProcessorsHumanReviewConfigResource]
///       - [ProjectsLocationsProcessorsProcessorVersionsResource]
///         - [ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource]
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

  ProjectsResource get projects => ProjectsResource(_requester);

  DocumentApi(
    http.Client client, {
    core.String rootUrl = 'https://documentai.googleapis.com/',
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
  /// Completes with a
  /// [GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse>
  fetchProcessorTypes(core.String parent, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' + core.Uri.encodeFull('$parent') + ':fetchProcessorTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationLocation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3ProcessorType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ProcessorType> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse> list(
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

    final url_ =
        'v1beta3/' + core.Uri.encodeFull('$parent') + '/processorTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProcessorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsDatasetResource get dataset =>
      ProjectsLocationsProcessorsDatasetResource(_requester);
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
    GoogleCloudDocumentaiV1beta3BatchProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':batchProcess';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Creates a processor from the ProcessorType provided.
  ///
  /// The processor will be at `ENABLED` state by default after its creation.
  /// Note that this method requires the `documentai.processors.create`
  /// permission on the project, which is highly privileged. A user or service
  /// account with this permission can create new processors that can interact
  /// with any gcs bucket in your project.
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3Processor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3Processor> create(
    GoogleCloudDocumentaiV1beta3Processor request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$parent') + '/processors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3Processor.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDocumentaiV1beta3DisableProcessorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':disable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDocumentaiV1beta3EnableProcessorRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':enable';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3Processor].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3Processor> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3Processor.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3ListProcessorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ListProcessorsResponse> list(
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$parent') + '/processors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ListProcessorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3ProcessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ProcessResponse> process(
    GoogleCloudDocumentaiV1beta3ProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':process';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ProcessResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest request,
    core.String processor, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' +
        core.Uri.encodeFull('$processor') +
        ':setDefaultProcessorVersion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates metadata associated with a dataset.
  ///
  /// Note that this method requires the
  /// `documentai.googleapis.com/datasets.update` permission on the project,
  /// which is highly privileged. A user or service account with this permission
  /// can create new processors that can interact with any gcs bucket in your
  /// project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Dataset resource name. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/dataset`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/dataset$`.
  ///
  /// [updateMask] - The update mask applies to the resource.
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
  async.Future<GoogleLongrunningOperation> updateDataset(
    GoogleCloudDocumentaiV1beta3Dataset request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProcessorsDatasetResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsDatasetResource(commons.ApiRequester client)
    : _requester = client;

  /// Deletes a set of documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [dataset] - Required. The dataset resource name. Format:
  /// projects/{project}/locations/{location}/processors/{processor}/dataset
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/dataset$`.
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
  async.Future<GoogleLongrunningOperation> batchDeleteDocuments(
    GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest request,
    core.String dataset, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' + core.Uri.encodeFull('$dataset') + ':batchDeleteDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the `DatasetSchema` of a `Dataset`.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The dataset schema resource name. Format:
  /// projects/{project}/locations/{location}/processors/{processor}/dataset/datasetSchema
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/dataset/datasetSchema$`.
  ///
  /// [visibleFieldsOnly] - If set, only returns the visible fields of the
  /// schema.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1beta3DatasetSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3DatasetSchema> getDatasetSchema(
    core.String name, {
    core.bool? visibleFieldsOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (visibleFieldsOnly != null)
        'visibleFieldsOnly': ['${visibleFieldsOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3DatasetSchema.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns relevant fields present in the requested document.
  ///
  /// Request parameters:
  ///
  /// [dataset] - Required. The resource name of the dataset that the document
  /// belongs to . Format:
  /// projects/{project}/locations/{location}/processors/{processor}/dataset
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/dataset$`.
  ///
  /// [documentId_gcsManagedDocId_cwDocId] - Id of the document (indexed)
  /// managed by Content Warehouse.
  ///
  /// [documentId_gcsManagedDocId_gcsUri] - Required. The Cloud Storage URI
  /// where the actual document is stored.
  ///
  /// [documentId_revisionRef_latestProcessorVersion] - Reads the revision
  /// generated by the processor version. The format takes the full resource
  /// name of processor version.
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  ///
  /// [documentId_revisionRef_revisionCase] - Reads the revision by the
  /// predefined case.
  /// Possible string values are:
  /// - "REVISION_CASE_UNSPECIFIED" : Unspecified case, fall back to read the
  /// `LATEST_HUMAN_REVIEW`.
  /// - "LATEST_HUMAN_REVIEW" : The latest revision made by a human.
  /// - "LATEST_TIMESTAMP" : The latest revision based on timestamp.
  /// - "BASE_OCR_REVISION" : The first (OCR) revision.
  ///
  /// [documentId_revisionRef_revisionId] - Reads the revision given by the id.
  ///
  /// [documentId_unmanagedDocId_docId] - Required. The id of the document.
  ///
  /// [pageRange_end] - Last page number (one-based index) to be returned.
  ///
  /// [pageRange_start] - First page number (one-based index) to be returned.
  ///
  /// [readMask] - If set, only fields listed here will be returned. Otherwise,
  /// all fields will be returned by default.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1beta3GetDocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3GetDocumentResponse> getDocument(
    core.String dataset, {
    core.String? documentId_gcsManagedDocId_cwDocId,
    core.String? documentId_gcsManagedDocId_gcsUri,
    core.String? documentId_revisionRef_latestProcessorVersion,
    core.String? documentId_revisionRef_revisionCase,
    core.String? documentId_revisionRef_revisionId,
    core.String? documentId_unmanagedDocId_docId,
    core.int? pageRange_end,
    core.int? pageRange_start,
    core.String? readMask,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (documentId_gcsManagedDocId_cwDocId != null)
        'documentId.gcsManagedDocId.cwDocId': [
          documentId_gcsManagedDocId_cwDocId,
        ],
      if (documentId_gcsManagedDocId_gcsUri != null)
        'documentId.gcsManagedDocId.gcsUri': [
          documentId_gcsManagedDocId_gcsUri,
        ],
      if (documentId_revisionRef_latestProcessorVersion != null)
        'documentId.revisionRef.latestProcessorVersion': [
          documentId_revisionRef_latestProcessorVersion,
        ],
      if (documentId_revisionRef_revisionCase != null)
        'documentId.revisionRef.revisionCase': [
          documentId_revisionRef_revisionCase,
        ],
      if (documentId_revisionRef_revisionId != null)
        'documentId.revisionRef.revisionId': [
          documentId_revisionRef_revisionId,
        ],
      if (documentId_unmanagedDocId_docId != null)
        'documentId.unmanagedDocId.docId': [documentId_unmanagedDocId_docId],
      if (pageRange_end != null) 'pageRange.end': ['${pageRange_end}'],
      if (pageRange_start != null) 'pageRange.start': ['${pageRange_start}'],
      if (readMask != null) 'readMask': [readMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$dataset') + ':getDocument';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3GetDocumentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Import documents into a dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [dataset] - Required. The dataset resource name. Format:
  /// projects/{project}/locations/{location}/processors/{processor}/dataset
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/dataset$`.
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
  async.Future<GoogleLongrunningOperation> importDocuments(
    GoogleCloudDocumentaiV1beta3ImportDocumentsRequest request,
    core.String dataset, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' + core.Uri.encodeFull('$dataset') + ':importDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Returns a list of documents present in the dataset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [dataset] - Required. The resource name of the dataset to be listed.
  /// Format:
  /// projects/{project}/locations/{location}/processors/{processor}/dataset
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/dataset$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1beta3ListDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ListDocumentsResponse> listDocuments(
    GoogleCloudDocumentaiV1beta3ListDocumentsRequest request,
    core.String dataset, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' + core.Uri.encodeFull('$dataset') + ':listDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ListDocumentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a `DatasetSchema`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Dataset schema resource name. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/dataset/datasetSchema`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/processors/\[^/\]+/dataset/datasetSchema$`.
  ///
  /// [updateMask] - The update mask applies to the resource.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1beta3DatasetSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3DatasetSchema> updateDatasetSchema(
    GoogleCloudDocumentaiV1beta3DatasetSchema request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3DatasetSchema.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProcessorsHumanReviewConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsHumanReviewConfigResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
    GoogleCloudDocumentaiV1beta3ReviewDocumentRequest request,
    core.String humanReviewConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' +
        core.Uri.encodeFull('$humanReviewConfig') +
        ':reviewDocument';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProcessorsProcessorVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource
  get evaluations =>
      ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource(
        _requester,
      );

  ProjectsLocationsProcessorsProcessorVersionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
    GoogleCloudDocumentaiV1beta3BatchProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':batchProcess';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':deploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest request,
    core.String processorVersion, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' +
        core.Uri.encodeFull('$processorVersion') +
        ':evaluateProcessorVersion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3ProcessorVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ProcessorVersion> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Imports a processor version from source processor version.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The destination processor name to create the
  /// processor version in. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}`
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
  async.Future<GoogleLongrunningOperation> importProcessorVersion(
    GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' +
        core.Uri.encodeFull('$parent') +
        '/processorVersions:importProcessorVersion';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a
  /// [GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse> list(
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

    final url_ =
        'v1beta3/' + core.Uri.encodeFull('$parent') + '/processorVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3ProcessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ProcessResponse> process(
    GoogleCloudDocumentaiV1beta3ProcessRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':process';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ProcessResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta3/' +
        core.Uri.encodeFull('$parent') +
        '/processorVersions:train';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':undeploy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// Completes with a [GoogleCloudDocumentaiV1beta3Evaluation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3Evaluation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3Evaluation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// Completes with a [GoogleCloudDocumentaiV1beta3ListEvaluationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta3ListEvaluationsResponse> list(
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$parent') + '/evaluations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudDocumentaiV1beta3ListEvaluationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Encodes the detailed information of a barcode.
typedef GoogleCloudDocumentaiV1beta3Barcode = $Barcode;

/// Dataset documents that the batch operation will be applied to.
class GoogleCloudDocumentaiV1beta3BatchDatasetDocuments {
  /// A filter matching the documents.
  ///
  /// Follows the same format and restriction as
  /// \[google.cloud.documentai.master.ListDocumentsRequest.filter\].
  core.String? filter;

  /// Document identifiers.
  GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds?
  individualDocumentIds;

  GoogleCloudDocumentaiV1beta3BatchDatasetDocuments({
    this.filter,
    this.individualDocumentIds,
  });

  GoogleCloudDocumentaiV1beta3BatchDatasetDocuments.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        individualDocumentIds:
            json_.containsKey('individualDocumentIds')
                ? GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds.fromJson(
                  json_['individualDocumentIds']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (individualDocumentIds != null)
      'individualDocumentIds': individualDocumentIds!,
  };
}

/// List of individual DocumentIds.
class GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds {
  /// List of Document IDs indicating where the actual documents are stored.
  ///
  /// Required.
  core.List<GoogleCloudDocumentaiV1beta3DocumentId>? documentIds;

  GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds({
    this.documentIds,
  });

  GoogleCloudDocumentaiV1beta3BatchDatasetDocumentsIndividualDocumentIds.fromJson(
    core.Map json_,
  ) : this(
        documentIds:
            (json_['documentIds'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3DocumentId.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentIds != null) 'documentIds': documentIds!,
  };
}

class GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest {
  /// Dataset documents input.
  ///
  /// If given `filter`, all documents satisfying the filter will be deleted. If
  /// given documentIds, a maximum of 50 documents can be deleted in a batch.
  /// The request will be rejected if more than 50 document_ids are provided.
  ///
  /// Required.
  GoogleCloudDocumentaiV1beta3BatchDatasetDocuments? datasetDocuments;

  GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest({
    this.datasetDocuments,
  });

  GoogleCloudDocumentaiV1beta3BatchDeleteDocumentsRequest.fromJson(
    core.Map json_,
  ) : this(
        datasetDocuments:
            json_.containsKey('datasetDocuments')
                ? GoogleCloudDocumentaiV1beta3BatchDatasetDocuments.fromJson(
                  json_['datasetDocuments']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (datasetDocuments != null) 'datasetDocuments': datasetDocuments!,
  };
}

/// The common config to specify a set of documents used as input.
class GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig {
  /// The set of documents individually specified on Cloud Storage.
  GoogleCloudDocumentaiV1beta3GcsDocuments? gcsDocuments;

  /// The set of documents that match the specified Cloud Storage `gcs_prefix`.
  GoogleCloudDocumentaiV1beta3GcsPrefix? gcsPrefix;

  GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig({
    this.gcsDocuments,
    this.gcsPrefix,
  });

  GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(core.Map json_)
    : this(
        gcsDocuments:
            json_.containsKey('gcsDocuments')
                ? GoogleCloudDocumentaiV1beta3GcsDocuments.fromJson(
                  json_['gcsDocuments'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsPrefix:
            json_.containsKey('gcsPrefix')
                ? GoogleCloudDocumentaiV1beta3GcsPrefix.fromJson(
                  json_['gcsPrefix'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsDocuments != null) 'gcsDocuments': gcsDocuments!,
    if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
  };
}

/// Request message for BatchProcessDocuments.
class GoogleCloudDocumentaiV1beta3BatchProcessRequest {
  /// The output configuration for the BatchProcessDocuments method.
  GoogleCloudDocumentaiV1beta3DocumentOutputConfig? documentOutputConfig;

  /// The input config for each single document in the batch process.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>?
  inputConfigs;

  /// The input documents for the BatchProcessDocuments method.
  GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig? inputDocuments;

  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints) and can only contain lowercase letters, numeric characters,
  /// underscores, and dashes. International characters are allowed. Label
  /// values are optional. Label keys must start with a letter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The overall output config for batch process.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig?
  outputConfig;

  /// Inference-time options for the process API
  GoogleCloudDocumentaiV1beta3ProcessOptions? processOptions;

  /// Whether human review should be skipped for this request.
  ///
  /// Default to `false`.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1beta3BatchProcessRequest({
    this.documentOutputConfig,
    this.inputConfigs,
    this.inputDocuments,
    this.labels,
    this.outputConfig,
    this.processOptions,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(core.Map json_)
    : this(
        documentOutputConfig:
            json_.containsKey('documentOutputConfig')
                ? GoogleCloudDocumentaiV1beta3DocumentOutputConfig.fromJson(
                  json_['documentOutputConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputConfigs:
            (json_['inputConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        inputDocuments:
            json_.containsKey('inputDocuments')
                ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
                  json_['inputDocuments']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        outputConfig:
            json_.containsKey('outputConfig')
                ? GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        processOptions:
            json_.containsKey('processOptions')
                ? GoogleCloudDocumentaiV1beta3ProcessOptions.fromJson(
                  json_['processOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        skipHumanReview: json_['skipHumanReview'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentOutputConfig != null)
      'documentOutputConfig': documentOutputConfig!,
    if (inputConfigs != null) 'inputConfigs': inputConfigs!,
    if (inputDocuments != null) 'inputDocuments': inputDocuments!,
    if (labels != null) 'labels': labels!,
    if (outputConfig != null) 'outputConfig': outputConfig!,
    if (processOptions != null) 'processOptions': processOptions!,
    if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
  };
}

/// The message for input config in batch process.
class GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig {
  /// The Cloud Storage location as the source of the document.
  core.String? gcsSource;

  /// An IANA published \[media type (MIME
  /// type)\](https://www.iana.org/assignments/media-types/media-types.xhtml) of
  /// the input.
  ///
  /// If the input is a raw document, refer to
  /// [supported file types](https://cloud.google.com/document-ai/docs/file-types)
  /// for the list of media types. If the input is a Document, the type should
  /// be `application/json`.
  core.String? mimeType;

  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig({
    this.gcsSource,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig.fromJson(
    core.Map json_,
  ) : this(
        gcsSource: json_['gcsSource'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (mimeType != null) 'mimeType': mimeType!,
  };
}

/// The output configuration in the BatchProcessDocuments method.
class GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig {
  /// The output Cloud Storage directory to put the processed documents.
  core.String? gcsDestination;

  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig({
    this.gcsDestination,
  });

  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig.fromJson(
    core.Map json_,
  ) : this(gcsDestination: json_['gcsDestination'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsDestination != null) 'gcsDestination': gcsDestination!,
  };
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1beta3BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDocumentaiV1beta3NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudDocumentaiV1beta3Vertex>? vertices;

  GoogleCloudDocumentaiV1beta3BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(core.Map json_)
    : this(
        normalizedVertices:
            (json_['normalizedVertices'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3NormalizedVertex.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        vertices:
            (json_['vertices'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3Vertex.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (normalizedVertices != null) 'normalizedVertices': normalizedVertices!,
    if (vertices != null) 'vertices': vertices!,
  };
}

/// A singleton resource under a Processor which configures a collection of
/// documents.
class GoogleCloudDocumentaiV1beta3Dataset {
  /// Warehouse-based dataset configuration is not supported.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig?
  documentWarehouseConfig;

  /// User-managed Cloud Storage dataset configuration.
  ///
  /// Use this configuration if the dataset documents are stored under a
  /// user-managed Cloud Storage location.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig? gcsManagedConfig;

  /// Dataset resource name.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/dataset`
  core.String? name;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// A lightweight indexing source with low latency and high reliability, but
  /// lacking advanced features like CMEK and content-based search.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig?
  spannerIndexingConfig;

  /// State of the dataset.
  ///
  /// Ignored when updating dataset.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified enum, should not be used.
  /// - "UNINITIALIZED" : Dataset has not been initialized.
  /// - "INITIALIZING" : Dataset is being initialized.
  /// - "INITIALIZED" : Dataset has been initialized.
  core.String? state;

  /// Unmanaged dataset configuration.
  ///
  /// Use this configuration if the dataset documents are managed by the
  /// document service internally (not user-managed).
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig?
  unmanagedDatasetConfig;

  GoogleCloudDocumentaiV1beta3Dataset({
    this.documentWarehouseConfig,
    this.gcsManagedConfig,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.spannerIndexingConfig,
    this.state,
    this.unmanagedDatasetConfig,
  });

  GoogleCloudDocumentaiV1beta3Dataset.fromJson(core.Map json_)
    : this(
        documentWarehouseConfig:
            json_.containsKey('documentWarehouseConfig')
                ? GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig.fromJson(
                  json_['documentWarehouseConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        gcsManagedConfig:
            json_.containsKey('gcsManagedConfig')
                ? GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig.fromJson(
                  json_['gcsManagedConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        spannerIndexingConfig:
            json_.containsKey('spannerIndexingConfig')
                ? GoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig.fromJson(
                  json_['spannerIndexingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        unmanagedDatasetConfig:
            json_.containsKey('unmanagedDatasetConfig')
                ? GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig.fromJson(
                  json_['unmanagedDatasetConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentWarehouseConfig != null)
      'documentWarehouseConfig': documentWarehouseConfig!,
    if (gcsManagedConfig != null) 'gcsManagedConfig': gcsManagedConfig!,
    if (name != null) 'name': name!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (spannerIndexingConfig != null)
      'spannerIndexingConfig': spannerIndexingConfig!,
    if (state != null) 'state': state!,
    if (unmanagedDatasetConfig != null)
      'unmanagedDatasetConfig': unmanagedDatasetConfig!,
  };
}

/// Configuration specific to the Document AI Warehouse-based implementation.
class GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig {
  /// The collection in Document AI Warehouse associated with the dataset.
  ///
  /// Output only.
  core.String? collection;

  /// The schema in Document AI Warehouse associated with the dataset.
  ///
  /// Output only.
  core.String? schema;

  GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig({
    this.collection,
    this.schema,
  });

  GoogleCloudDocumentaiV1beta3DatasetDocumentWarehouseConfig.fromJson(
    core.Map json_,
  ) : this(
        collection: json_['collection'] as core.String?,
        schema: json_['schema'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (collection != null) 'collection': collection!,
    if (schema != null) 'schema': schema!,
  };
}

/// Configuration specific to the Cloud Storage-based implementation.
class GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig {
  /// The Cloud Storage URI (a directory) where the documents belonging to the
  /// dataset must be stored.
  ///
  /// Required.
  GoogleCloudDocumentaiV1beta3GcsPrefix? gcsPrefix;

  GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig({this.gcsPrefix});

  GoogleCloudDocumentaiV1beta3DatasetGCSManagedConfig.fromJson(core.Map json_)
    : this(
        gcsPrefix:
            json_.containsKey('gcsPrefix')
                ? GoogleCloudDocumentaiV1beta3GcsPrefix.fromJson(
                  json_['gcsPrefix'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
  };
}

/// Dataset Schema.
class GoogleCloudDocumentaiV1beta3DatasetSchema {
  /// Schema of the dataset.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DocumentSchema? documentSchema;

  /// Dataset schema resource name.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/dataset/datasetSchema`
  core.String? name;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  GoogleCloudDocumentaiV1beta3DatasetSchema({
    this.documentSchema,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
  });

  GoogleCloudDocumentaiV1beta3DatasetSchema.fromJson(core.Map json_)
    : this(
        documentSchema:
            json_.containsKey('documentSchema')
                ? GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentSchema != null) 'documentSchema': documentSchema!,
    if (name != null) 'name': name!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
  };
}

/// Configuration specific to spanner-based indexing.
typedef GoogleCloudDocumentaiV1beta3DatasetSpannerIndexingConfig = $Empty;

/// Configuration specific to an unmanaged dataset.
typedef GoogleCloudDocumentaiV1beta3DatasetUnmanagedDatasetConfig = $Empty;

/// Request message for the DeployProcessorVersion method.
typedef GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest = $Empty;

/// Request message for the DisableProcessor method.
typedef GoogleCloudDocumentaiV1beta3DisableProcessorRequest = $Empty;

/// Document represents the canonical document resource in Document AI.
///
/// It is an interchange format that provides insights into documents and allows
/// for collaboration between users and Document AI to iterate and optimize for
/// quality.
class GoogleCloudDocumentaiV1beta3Document {
  /// The blob assets in this document.
  ///
  /// This is used to store the content of the inline blobs in this document,
  /// e.g. image bytes, such that it can be referenced by other fields in the
  /// document via asset id.
  ///
  /// Optional.
  core.List<GoogleCloudDocumentaiV1beta3DocumentBlobAsset>? blobAssets;

  /// Document chunked based on chunking config.
  GoogleCloudDocumentaiV1beta3DocumentChunkedDocument? chunkedDocument;

  /// Inline document content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Optional.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// An internal identifier for document.
  ///
  /// Should be loggable (no PII).
  ///
  /// Optional.
  core.String? docid;

  /// Parsed layout of the document.
  GoogleCloudDocumentaiV1beta3DocumentDocumentLayout? documentLayout;

  /// A list of entities detected on Document.text.
  ///
  /// For document shards, entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1beta3DocumentEntity>? entities;

  /// Placeholder.
  ///
  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1beta3DocumentEntityRelation>?
  entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus? error;

  /// An IANA published \[media type (MIME
  /// type)\](https://www.iana.org/assignments/media-types/media-types.xhtml).
  core.String? mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPage>? pages;

  /// Placeholder.
  ///
  /// Revision history of this document.
  core.List<GoogleCloudDocumentaiV1beta3DocumentRevision>? revisions;

  /// Information about the sharding if this document is sharded part of a
  /// larger document.
  ///
  /// If the document is not sharded, this message is not specified.
  GoogleCloudDocumentaiV1beta3DocumentShardInfo? shardInfo;

  /// UTF-8 encoded text in reading order from the document.
  ///
  /// Optional.
  core.String? text;

  /// Placeholder.
  ///
  /// A list of text corrections made to Document.text. This is usually used for
  /// annotating corrections to OCR mistakes. Text changes for a given revision
  /// may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1beta3DocumentTextChange>? textChanges;

  /// Styles for the Document.text.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudDocumentaiV1beta3DocumentStyle>? textStyles;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. For more information, refer to
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  ///
  /// Optional.
  core.String? uri;

  GoogleCloudDocumentaiV1beta3Document({
    this.blobAssets,
    this.chunkedDocument,
    this.content,
    this.docid,
    this.documentLayout,
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

  GoogleCloudDocumentaiV1beta3Document.fromJson(core.Map json_)
    : this(
        blobAssets:
            (json_['blobAssets'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentBlobAsset.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        chunkedDocument:
            json_.containsKey('chunkedDocument')
                ? GoogleCloudDocumentaiV1beta3DocumentChunkedDocument.fromJson(
                  json_['chunkedDocument']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        content: json_['content'] as core.String?,
        docid: json_['docid'] as core.String?,
        documentLayout:
            json_.containsKey('documentLayout')
                ? GoogleCloudDocumentaiV1beta3DocumentDocumentLayout.fromJson(
                  json_['documentLayout']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        entities:
            (json_['entities'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        entityRelations:
            (json_['entityRelations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentEntityRelation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mimeType: json_['mimeType'] as core.String?,
        pages:
            (json_['pages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3DocumentPage.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        revisions:
            (json_['revisions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentRevision.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        shardInfo:
            json_.containsKey('shardInfo')
                ? GoogleCloudDocumentaiV1beta3DocumentShardInfo.fromJson(
                  json_['shardInfo'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
        textChanges:
            (json_['textChanges'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentTextChange.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        textStyles:
            (json_['textStyles'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3DocumentStyle.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blobAssets != null) 'blobAssets': blobAssets!,
    if (chunkedDocument != null) 'chunkedDocument': chunkedDocument!,
    if (content != null) 'content': content!,
    if (docid != null) 'docid': docid!,
    if (documentLayout != null) 'documentLayout': documentLayout!,
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

/// Represents the annotation of a block or a chunk.
class GoogleCloudDocumentaiV1beta3DocumentAnnotations {
  /// The description of the content with this annotation.
  core.String? description;

  GoogleCloudDocumentaiV1beta3DocumentAnnotations({this.description});

  GoogleCloudDocumentaiV1beta3DocumentAnnotations.fromJson(core.Map json_)
    : this(description: json_['description'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
  };
}

/// Represents a blob asset.
///
/// It's used to store the content of the inline blob in this document, e.g.
/// image bytes, such that it can be referenced by other fields in the document
/// via asset id.
class GoogleCloudDocumentaiV1beta3DocumentBlobAsset {
  /// The id of the blob asset.
  ///
  /// Optional.
  core.String? assetId;

  /// The content of the blob asset, e.g. image bytes.
  ///
  /// Optional.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The mime type of the blob asset.
  ///
  /// An IANA published \[media type (MIME
  /// type)\](https://www.iana.org/assignments/media-types/media-types.xhtml).
  core.String? mimeType;

  GoogleCloudDocumentaiV1beta3DocumentBlobAsset({
    this.assetId,
    this.content,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1beta3DocumentBlobAsset.fromJson(core.Map json_)
    : this(
        assetId: json_['assetId'] as core.String?,
        content: json_['content'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (assetId != null) 'assetId': assetId!,
    if (content != null) 'content': content!,
    if (mimeType != null) 'mimeType': mimeType!,
  };
}

/// Represents the chunks that the document is divided into.
class GoogleCloudDocumentaiV1beta3DocumentChunkedDocument {
  /// List of chunks.
  core.List<GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk>? chunks;

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocument({this.chunks});

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocument.fromJson(core.Map json_)
    : this(
        chunks:
            (json_['chunks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunks != null) 'chunks': chunks!,
  };
}

/// Represents a chunk.
class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk {
  /// Chunk fields inside this chunk.
  core.List<GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField>?
  chunkFields;

  /// ID of the chunk.
  core.String? chunkId;

  /// Text content of the chunk.
  core.String? content;

  /// Page footers associated with the chunk.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter
  >?
  pageFooters;

  /// Page headers associated with the chunk.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader
  >?
  pageHeaders;

  /// Page span of the chunk.
  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan?
  pageSpan;

  /// Unused.
  core.List<core.String>? sourceBlockIds;

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk({
    this.chunkFields,
    this.chunkId,
    this.content,
    this.pageFooters,
    this.pageHeaders,
    this.pageSpan,
    this.sourceBlockIds,
  });

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunk.fromJson(
    core.Map json_,
  ) : this(
        chunkFields:
            (json_['chunkFields'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        chunkId: json_['chunkId'] as core.String?,
        content: json_['content'] as core.String?,
        pageFooters:
            (json_['pageFooters'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        pageHeaders:
            (json_['pageHeaders'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        pageSpan:
            json_.containsKey('pageSpan')
                ? GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan.fromJson(
                  json_['pageSpan'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sourceBlockIds:
            (json_['sourceBlockIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkFields != null) 'chunkFields': chunkFields!,
    if (chunkId != null) 'chunkId': chunkId!,
    if (content != null) 'content': content!,
    if (pageFooters != null) 'pageFooters': pageFooters!,
    if (pageHeaders != null) 'pageHeaders': pageHeaders!,
    if (pageSpan != null) 'pageSpan': pageSpan!,
    if (sourceBlockIds != null) 'sourceBlockIds': sourceBlockIds!,
  };
}

/// The chunk field in the chunk.
///
/// A chunk field could be one of the various types (e.g. image, table)
/// supported.
class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField {
  /// The image chunk field in the chunk.
  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField?
  imageChunkField;

  /// The table chunk field in the chunk.
  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField?
  tableChunkField;

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField({
    this.imageChunkField,
    this.tableChunkField,
  });

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkField.fromJson(
    core.Map json_,
  ) : this(
        imageChunkField:
            json_.containsKey('imageChunkField')
                ? GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField.fromJson(
                  json_['imageChunkField']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        tableChunkField:
            json_.containsKey('tableChunkField')
                ? GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField.fromJson(
                  json_['tableChunkField']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (imageChunkField != null) 'imageChunkField': imageChunkField!,
    if (tableChunkField != null) 'tableChunkField': tableChunkField!,
  };
}

/// Represents the page footer associated with the chunk.
class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter {
  /// Page span of the footer.
  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan?
  pageSpan;

  /// Footer in text format.
  core.String? text;

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter({
    this.pageSpan,
    this.text,
  });

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageFooter.fromJson(
    core.Map json_,
  ) : this(
        pageSpan:
            json_.containsKey('pageSpan')
                ? GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan.fromJson(
                  json_['pageSpan'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pageSpan != null) 'pageSpan': pageSpan!,
    if (text != null) 'text': text!,
  };
}

/// Represents the page header associated with the chunk.
class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader {
  /// Page span of the header.
  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan?
  pageSpan;

  /// Header in text format.
  core.String? text;

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader({
    this.pageSpan,
    this.text,
  });

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageHeader.fromJson(
    core.Map json_,
  ) : this(
        pageSpan:
            json_.containsKey('pageSpan')
                ? GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan.fromJson(
                  json_['pageSpan'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pageSpan != null) 'pageSpan': pageSpan!,
    if (text != null) 'text': text!,
  };
}

/// Represents where the chunk starts and ends in the document.
typedef GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkChunkPageSpan =
    $DocumentChunkedDocumentChunkChunkPageSpan;

/// The image chunk field in the chunk.
class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField {
  /// Annotation of the image chunk field.
  GoogleCloudDocumentaiV1beta3DocumentAnnotations? annotations;

  /// Asset id of the inline image.
  ///
  /// If set, find the image content in the blob_assets field.
  ///
  /// Optional.
  core.String? blobAssetId;

  /// Data uri of the image.
  ///
  /// It is composed of four parts: a prefix (data:), a MIME type indicating the
  /// type of data, an optional base64 token if non-textual, and the data
  /// itself: data:,
  ///
  /// Optional.
  core.String? dataUri;

  /// Google Cloud Storage uri of the image.
  ///
  /// Optional.
  core.String? gcsUri;

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField({
    this.annotations,
    this.blobAssetId,
    this.dataUri,
    this.gcsUri,
  });

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkImageChunkField.fromJson(
    core.Map json_,
  ) : this(
        annotations:
            json_.containsKey('annotations')
                ? GoogleCloudDocumentaiV1beta3DocumentAnnotations.fromJson(
                  json_['annotations'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        blobAssetId: json_['blobAssetId'] as core.String?,
        dataUri: json_['dataUri'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (blobAssetId != null) 'blobAssetId': blobAssetId!,
    if (dataUri != null) 'dataUri': dataUri!,
    if (gcsUri != null) 'gcsUri': gcsUri!,
  };
}

/// The table chunk field in the chunk.
class GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField {
  /// Annotation of the table chunk field.
  GoogleCloudDocumentaiV1beta3DocumentAnnotations? annotations;

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField({
    this.annotations,
  });

  GoogleCloudDocumentaiV1beta3DocumentChunkedDocumentChunkTableChunkField.fromJson(
    core.Map json_,
  ) : this(
        annotations:
            json_.containsKey('annotations')
                ? GoogleCloudDocumentaiV1beta3DocumentAnnotations.fromJson(
                  json_['annotations'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
  };
}

/// Represents the parsed layout of a document as a collection of blocks that
/// the document is divided into.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayout {
  /// List of blocks in the document.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
  >?
  blocks;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayout({this.blocks});

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayout.fromJson(core.Map json_)
    : this(
        blocks:
            (json_['blocks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blocks != null) 'blocks': blocks!,
  };
}

/// Represents a block.
///
/// A block could be one of the various types (text, table, list) supported.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock {
  /// ID of the block.
  core.String? blockId;

  /// Identifies the bounding box for the block.
  GoogleCloudDocumentaiV1beta3BoundingPoly? boundingBox;

  /// Block consisting of image content.
  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock?
  imageBlock;

  /// Block consisting of list content/structure.
  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock?
  listBlock;

  /// Page span of the block.
  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan?
  pageSpan;

  /// Block consisting of table content/structure.
  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock?
  tableBlock;

  /// Block consisting of text content.
  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock?
  textBlock;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock({
    this.blockId,
    this.boundingBox,
    this.imageBlock,
    this.listBlock,
    this.pageSpan,
    this.tableBlock,
    this.textBlock,
  });

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock.fromJson(
    core.Map json_,
  ) : this(
        blockId: json_['blockId'] as core.String?,
        boundingBox:
            json_.containsKey('boundingBox')
                ? GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        imageBlock:
            json_.containsKey('imageBlock')
                ? GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock.fromJson(
                  json_['imageBlock'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        listBlock:
            json_.containsKey('listBlock')
                ? GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock.fromJson(
                  json_['listBlock'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pageSpan:
            json_.containsKey('pageSpan')
                ? GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan.fromJson(
                  json_['pageSpan'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tableBlock:
            json_.containsKey('tableBlock')
                ? GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock.fromJson(
                  json_['tableBlock'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        textBlock:
            json_.containsKey('textBlock')
                ? GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock.fromJson(
                  json_['textBlock'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blockId != null) 'blockId': blockId!,
    if (boundingBox != null) 'boundingBox': boundingBox!,
    if (imageBlock != null) 'imageBlock': imageBlock!,
    if (listBlock != null) 'listBlock': listBlock!,
    if (pageSpan != null) 'pageSpan': pageSpan!,
    if (tableBlock != null) 'tableBlock': tableBlock!,
    if (textBlock != null) 'textBlock': textBlock!,
  };
}

/// Represents an image type block.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock {
  /// Annotation of the image block.
  GoogleCloudDocumentaiV1beta3DocumentAnnotations? annotations;

  /// Asset id of the inline image.
  ///
  /// If set, find the image content in the blob_assets field.
  ///
  /// Optional.
  core.String? blobAssetId;

  /// Data uri of the image.
  ///
  /// It is composed of four parts: a prefix (data:), a MIME type indicating the
  /// type of data, an optional base64 token if non-textual, and the data
  /// itself: data:,
  ///
  /// Optional.
  core.String? dataUri;

  /// Google Cloud Storage uri of the image.
  ///
  /// Optional.
  core.String? gcsUri;

  /// Text extracted from the image using OCR or alt text describing the image.
  core.String? imageText;

  /// Mime type of the image.
  ///
  /// An IANA published \[media type (MIME
  /// type)\](https://www.iana.org/assignments/media-types/media-types.xhtml).
  core.String? mimeType;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock({
    this.annotations,
    this.blobAssetId,
    this.dataUri,
    this.gcsUri,
    this.imageText,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutImageBlock.fromJson(
    core.Map json_,
  ) : this(
        annotations:
            json_.containsKey('annotations')
                ? GoogleCloudDocumentaiV1beta3DocumentAnnotations.fromJson(
                  json_['annotations'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        blobAssetId: json_['blobAssetId'] as core.String?,
        dataUri: json_['dataUri'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
        imageText: json_['imageText'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (blobAssetId != null) 'blobAssetId': blobAssetId!,
    if (dataUri != null) 'dataUri': dataUri!,
    if (gcsUri != null) 'gcsUri': gcsUri!,
    if (imageText != null) 'imageText': imageText!,
    if (mimeType != null) 'mimeType': mimeType!,
  };
}

/// Represents a list type block.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock {
  /// List entries that constitute a list block.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry
  >?
  listEntries;

  /// Type of the list_entries (if exist).
  ///
  /// Available options are `ordered` and `unordered`.
  core.String? type;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock({
    this.listEntries,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock.fromJson(
    core.Map json_,
  ) : this(
        listEntries:
            (json_['listEntries'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (listEntries != null) 'listEntries': listEntries!,
    if (type != null) 'type': type!,
  };
}

/// Represents an entry in the list.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry {
  /// A list entry is a list of blocks.
  ///
  /// Repeated blocks support further hierarchies and nested blocks.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
  >?
  blocks;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry({
    this.blocks,
  });

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry.fromJson(
    core.Map json_,
  ) : this(
        blocks:
            (json_['blocks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blocks != null) 'blocks': blocks!,
  };
}

/// Represents where the block starts and ends in the document.
typedef GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan =
    $DocumentDocumentLayoutDocumentLayoutBlockLayoutPageSpan;

/// Represents a table type block.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock {
  /// Annotation of the table block.
  GoogleCloudDocumentaiV1beta3DocumentAnnotations? annotations;

  /// Body rows containing main table content.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
  >?
  bodyRows;

  /// Table caption/title.
  core.String? caption;

  /// Header rows at the top of the table.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow
  >?
  headerRows;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock({
    this.annotations,
    this.bodyRows,
    this.caption,
    this.headerRows,
  });

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableBlock.fromJson(
    core.Map json_,
  ) : this(
        annotations:
            json_.containsKey('annotations')
                ? GoogleCloudDocumentaiV1beta3DocumentAnnotations.fromJson(
                  json_['annotations'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        bodyRows:
            (json_['bodyRows'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        caption: json_['caption'] as core.String?,
        headerRows:
            (json_['headerRows'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (annotations != null) 'annotations': annotations!,
    if (bodyRows != null) 'bodyRows': bodyRows!,
    if (caption != null) 'caption': caption!,
    if (headerRows != null) 'headerRows': headerRows!,
  };
}

/// Represents a cell in a table row.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell {
  /// A table cell is a list of blocks.
  ///
  /// Repeated blocks support further hierarchies and nested blocks.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
  >?
  blocks;

  /// How many columns this cell spans.
  core.int? colSpan;

  /// How many rows this cell spans.
  core.int? rowSpan;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell({
    this.blocks,
    this.colSpan,
    this.rowSpan,
  });

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell.fromJson(
    core.Map json_,
  ) : this(
        blocks:
            (json_['blocks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        colSpan: json_['colSpan'] as core.int?,
        rowSpan: json_['rowSpan'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blocks != null) 'blocks': blocks!,
    if (colSpan != null) 'colSpan': colSpan!,
    if (rowSpan != null) 'rowSpan': rowSpan!,
  };
}

/// Represents a row in a table.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow {
  /// A table row is a list of table cells.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell
  >?
  cells;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow({
    this.cells,
  });

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableRow.fromJson(
    core.Map json_,
  ) : this(
        cells:
            (json_['cells'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTableCell.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cells != null) 'cells': cells!,
  };
}

/// Represents a text type block.
class GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock {
  /// A text block could further have child blocks.
  ///
  /// Repeated blocks support further hierarchies and nested blocks.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock
  >?
  blocks;

  /// Text content stored in the block.
  core.String? text;

  /// Type of the text in the block.
  ///
  /// Available options are: `paragraph`, `subtitle`, `heading-1`, `heading-2`,
  /// `heading-3`, `heading-4`, `heading-5`, `header`, `footer`.
  core.String? type;

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock({
    this.blocks,
    this.text,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlockLayoutTextBlock.fromJson(
    core.Map json_,
  ) : this(
        blocks:
            (json_['blocks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentDocumentLayoutDocumentLayoutBlock.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        text: json_['text'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blocks != null) 'blocks': blocks!,
    if (text != null) 'text': text!,
    if (type != null) 'type': type!,
  };
}

/// An entity that could be a phrase in the text or a property that belongs to
/// the document.
///
/// It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1beta3DocumentEntity {
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
  GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue? normalizedValue;

  /// Represents the provenance of this entity wrt.
  ///
  /// the location on the page where it was found.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DocumentPageAnchor? pageAnchor;

  /// Entities can be nested to form a hierarchical data structure representing
  /// the content in the document.
  ///
  /// Optional.
  core.List<GoogleCloudDocumentaiV1beta3DocumentEntity>? properties;

  /// The history of this annotation.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  /// Whether the entity will be redacted for de-identification purposes.
  ///
  /// Optional.
  core.bool? redacted;

  /// Provenance of the entity.
  ///
  /// Text anchor indexing into the Document.text.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DocumentTextAnchor? textAnchor;

  /// Entity type from a schema e.g. `Address`.
  ///
  /// Required.
  core.String? type;

  GoogleCloudDocumentaiV1beta3DocumentEntity({
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

  GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(core.Map json_)
    : this(
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        id: json_['id'] as core.String?,
        mentionId: json_['mentionId'] as core.String?,
        mentionText: json_['mentionText'] as core.String?,
        normalizedValue:
            json_.containsKey('normalizedValue')
                ? GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue.fromJson(
                  json_['normalizedValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pageAnchor:
            json_.containsKey('pageAnchor')
                ? GoogleCloudDocumentaiV1beta3DocumentPageAnchor.fromJson(
                  json_['pageAnchor'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        properties:
            (json_['properties'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        provenance:
            json_.containsKey('provenance')
                ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        redacted: json_['redacted'] as core.bool?,
        textAnchor:
            json_.containsKey('textAnchor')
                ? GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
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
class GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue {
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
  core.bool? signatureValue;

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

  GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue({
    this.addressValue,
    this.booleanValue,
    this.dateValue,
    this.datetimeValue,
    this.floatValue,
    this.integerValue,
    this.moneyValue,
    this.signatureValue,
    this.text,
  });

  GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue.fromJson(
    core.Map json_,
  ) : this(
        addressValue:
            json_.containsKey('addressValue')
                ? GoogleTypePostalAddress.fromJson(
                  json_['addressValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        booleanValue: json_['booleanValue'] as core.bool?,
        dateValue:
            json_.containsKey('dateValue')
                ? GoogleTypeDate.fromJson(
                  json_['dateValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        datetimeValue:
            json_.containsKey('datetimeValue')
                ? GoogleTypeDateTime.fromJson(
                  json_['datetimeValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        floatValue: (json_['floatValue'] as core.num?)?.toDouble(),
        integerValue: json_['integerValue'] as core.int?,
        moneyValue:
            json_.containsKey('moneyValue')
                ? GoogleTypeMoney.fromJson(
                  json_['moneyValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        signatureValue: json_['signatureValue'] as core.bool?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (addressValue != null) 'addressValue': addressValue!,
    if (booleanValue != null) 'booleanValue': booleanValue!,
    if (dateValue != null) 'dateValue': dateValue!,
    if (datetimeValue != null) 'datetimeValue': datetimeValue!,
    if (floatValue != null) 'floatValue': floatValue!,
    if (integerValue != null) 'integerValue': integerValue!,
    if (moneyValue != null) 'moneyValue': moneyValue!,
    if (signatureValue != null) 'signatureValue': signatureValue!,
    if (text != null) 'text': text!,
  };
}

/// Relationship between Entities.
typedef GoogleCloudDocumentaiV1beta3DocumentEntityRelation =
    $DocumentEntityRelation;

/// Document Identifier.
class GoogleCloudDocumentaiV1beta3DocumentId {
  /// A document id within user-managed Cloud Storage.
  GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId? gcsManagedDocId;

  /// Points to a specific revision of the document if set.
  GoogleCloudDocumentaiV1beta3RevisionRef? revisionRef;

  /// A document id within unmanaged dataset.
  GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId? unmanagedDocId;

  GoogleCloudDocumentaiV1beta3DocumentId({
    this.gcsManagedDocId,
    this.revisionRef,
    this.unmanagedDocId,
  });

  GoogleCloudDocumentaiV1beta3DocumentId.fromJson(core.Map json_)
    : this(
        gcsManagedDocId:
            json_.containsKey('gcsManagedDocId')
                ? GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId.fromJson(
                  json_['gcsManagedDocId']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        revisionRef:
            json_.containsKey('revisionRef')
                ? GoogleCloudDocumentaiV1beta3RevisionRef.fromJson(
                  json_['revisionRef'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        unmanagedDocId:
            json_.containsKey('unmanagedDocId')
                ? GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId.fromJson(
                  json_['unmanagedDocId']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsManagedDocId != null) 'gcsManagedDocId': gcsManagedDocId!,
    if (revisionRef != null) 'revisionRef': revisionRef!,
    if (unmanagedDocId != null) 'unmanagedDocId': unmanagedDocId!,
  };
}

/// Identifies a document uniquely within the scope of a dataset in the
/// user-managed Cloud Storage option.
class GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId {
  /// Id of the document (indexed) managed by Content Warehouse.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? cwDocId;

  /// The Cloud Storage URI where the actual document is stored.
  ///
  /// Required.
  core.String? gcsUri;

  GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId({
    this.cwDocId,
    this.gcsUri,
  });

  GoogleCloudDocumentaiV1beta3DocumentIdGCSManagedDocumentId.fromJson(
    core.Map json_,
  ) : this(
        cwDocId: json_['cwDocId'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cwDocId != null) 'cwDocId': cwDocId!,
    if (gcsUri != null) 'gcsUri': gcsUri!,
  };
}

/// Identifies a document uniquely within the scope of a dataset in unmanaged
/// option.
class GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId {
  /// The id of the document.
  ///
  /// Required.
  core.String? docId;

  GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId({this.docId});

  GoogleCloudDocumentaiV1beta3DocumentIdUnmanagedDocumentId.fromJson(
    core.Map json_,
  ) : this(docId: json_['docId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (docId != null) 'docId': docId!,
  };
}

/// Metadata about a document.
class GoogleCloudDocumentaiV1beta3DocumentMetadata {
  /// Type of the dataset split to which the document belongs.
  /// Possible string values are:
  /// - "DATASET_SPLIT_TYPE_UNSPECIFIED" : Default value if the enum is not set.
  /// - "DATASET_SPLIT_TRAIN" : Identifies the train documents.
  /// - "DATASET_SPLIT_TEST" : Identifies the test documents.
  /// - "DATASET_SPLIT_UNASSIGNED" : Identifies the unassigned documents.
  core.String? datasetType;

  /// The display name of the document.
  core.String? displayName;

  /// Document identifier.
  GoogleCloudDocumentaiV1beta3DocumentId? documentId;

  /// Labeling state of the document.
  /// Possible string values are:
  /// - "DOCUMENT_LABELING_STATE_UNSPECIFIED" : Default value if the enum is not
  /// set.
  /// - "DOCUMENT_LABELED" : Document has been labeled.
  /// - "DOCUMENT_UNLABELED" : Document has not been labeled.
  /// - "DOCUMENT_AUTO_LABELED" : Document has been auto-labeled.
  core.String? labelingState;

  /// Number of pages in the document.
  core.int? pageCount;

  GoogleCloudDocumentaiV1beta3DocumentMetadata({
    this.datasetType,
    this.displayName,
    this.documentId,
    this.labelingState,
    this.pageCount,
  });

  GoogleCloudDocumentaiV1beta3DocumentMetadata.fromJson(core.Map json_)
    : this(
        datasetType: json_['datasetType'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentId:
            json_.containsKey('documentId')
                ? GoogleCloudDocumentaiV1beta3DocumentId.fromJson(
                  json_['documentId'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labelingState: json_['labelingState'] as core.String?,
        pageCount: json_['pageCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (datasetType != null) 'datasetType': datasetType!,
    if (displayName != null) 'displayName': displayName!,
    if (documentId != null) 'documentId': documentId!,
    if (labelingState != null) 'labelingState': labelingState!,
    if (pageCount != null) 'pageCount': pageCount!,
  };
}

/// Config that controls the output of documents.
///
/// All documents will be written as a JSON file.
class GoogleCloudDocumentaiV1beta3DocumentOutputConfig {
  /// Output config to write the results to Cloud Storage.
  GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig?
  gcsOutputConfig;

  GoogleCloudDocumentaiV1beta3DocumentOutputConfig({this.gcsOutputConfig});

  GoogleCloudDocumentaiV1beta3DocumentOutputConfig.fromJson(core.Map json_)
    : this(
        gcsOutputConfig:
            json_.containsKey('gcsOutputConfig')
                ? GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig.fromJson(
                  json_['gcsOutputConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (gcsOutputConfig != null) 'gcsOutputConfig': gcsOutputConfig!,
  };
}

/// The configuration used when outputting documents.
class GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig {
  /// Specifies which fields to include in the output documents.
  ///
  /// Only supports top level document and pages field so it must be in the form
  /// of `{document_field_name}` or `pages.{page_field_name}`.
  core.String? fieldMask;

  /// The Cloud Storage uri (a directory) of the output.
  core.String? gcsUri;

  /// Specifies the sharding config for the output document.
  GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig?
  shardingConfig;

  GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig({
    this.fieldMask,
    this.gcsUri,
    this.shardingConfig,
  });

  GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig.fromJson(
    core.Map json_,
  ) : this(
        fieldMask: json_['fieldMask'] as core.String?,
        gcsUri: json_['gcsUri'] as core.String?,
        shardingConfig:
            json_.containsKey('shardingConfig')
                ? GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig.fromJson(
                  json_['shardingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldMask != null) 'fieldMask': fieldMask!,
    if (gcsUri != null) 'gcsUri': gcsUri!,
    if (shardingConfig != null) 'shardingConfig': shardingConfig!,
  };
}

/// The sharding config for the output document.
typedef GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfigShardingConfig =
    $DocumentOutputConfigGcsOutputConfigShardingConfig;

/// A page in a Document.
class GoogleCloudDocumentaiV1beta3DocumentPage {
  /// A list of visually detected text blocks on the page.
  ///
  /// A block has a set of lines (collected into paragraphs) that have a common
  /// line-spacing and orientation.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageBlock>? blocks;

  /// A list of detected barcodes.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode>?
  detectedBarcodes;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Physical dimension of the page.
  GoogleCloudDocumentaiV1beta3DocumentPageDimension? dimension;

  /// A list of visually detected form fields on the page.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageFormField>? formFields;

  /// Rendered image for this page.
  ///
  /// This image is preprocessed to remove any skew, rotation, and distortions
  /// such that the annotation bounding boxes can be upright and axis-aligned.
  GoogleCloudDocumentaiV1beta3DocumentPageImage? image;

  /// Image quality scores.
  GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores?
  imageQualityScores;

  /// Layout for the page.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// A list of visually detected text lines on the page.
  ///
  /// A collection of tokens that a human would perceive as a line.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageLine>? lines;

  /// 1-based index for current Page in a parent Document.
  ///
  /// Useful when a page is taken out of a Document for individual processing.
  core.int? pageNumber;

  /// A list of visually detected text paragraphs on the page.
  ///
  /// A collection of lines that a human would perceive as a paragraph.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageParagraph>? paragraphs;

  /// The history of this page.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  /// A list of visually detected symbols on the page.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageSymbol>? symbols;

  /// A list of visually detected tables on the page.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageTable>? tables;

  /// A list of visually detected tokens on the page.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageToken>? tokens;

  /// Transformation matrices that were applied to the original document image
  /// to produce Page.image.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageMatrix>? transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc.
  ///
  /// on the page.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageVisualElement>?
  visualElements;

  GoogleCloudDocumentaiV1beta3DocumentPage({
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

  GoogleCloudDocumentaiV1beta3DocumentPage.fromJson(core.Map json_)
    : this(
        blocks:
            (json_['blocks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageBlock.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        detectedBarcodes:
            (json_['detectedBarcodes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        dimension:
            json_.containsKey('dimension')
                ? GoogleCloudDocumentaiV1beta3DocumentPageDimension.fromJson(
                  json_['dimension'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        formFields:
            (json_['formFields'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageFormField.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        image:
            json_.containsKey('image')
                ? GoogleCloudDocumentaiV1beta3DocumentPageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        imageQualityScores:
            json_.containsKey('imageQualityScores')
                ? GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores.fromJson(
                  json_['imageQualityScores']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        lines:
            (json_['lines'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageLine.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        pageNumber: json_['pageNumber'] as core.int?,
        paragraphs:
            (json_['paragraphs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageParagraph.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        provenance:
            json_.containsKey('provenance')
                ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        symbols:
            (json_['symbols'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageSymbol.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        tables:
            (json_['tables'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageTable.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        tokens:
            (json_['tokens'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageToken.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        transforms:
            (json_['transforms'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageMatrix.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        visualElements:
            (json_['visualElements'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageVisualElement.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (blocks != null) 'blocks': blocks!,
    if (detectedBarcodes != null) 'detectedBarcodes': detectedBarcodes!,
    if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
    if (dimension != null) 'dimension': dimension!,
    if (formFields != null) 'formFields': formFields!,
    if (image != null) 'image': image!,
    if (imageQualityScores != null) 'imageQualityScores': imageQualityScores!,
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
class GoogleCloudDocumentaiV1beta3DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef>? pageRefs;

  GoogleCloudDocumentaiV1beta3DocumentPageAnchor({this.pageRefs});

  GoogleCloudDocumentaiV1beta3DocumentPageAnchor.fromJson(core.Map json_)
    : this(
        pageRefs:
            (json_['pageRefs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pageRefs != null) 'pageRefs': pageRefs!,
  };
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef {
  /// Identifies the bounding polygon of a layout element on the page.
  ///
  /// If `layout_type` is set, the bounding polygon must be exactly the same to
  /// the layout element it's referring to.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3BoundingPoly? boundingPoly;

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

  GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    this.page,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef.fromJson(core.Map json_)
    : this(
        boundingPoly:
            json_.containsKey('boundingPoly')
                ? GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        layoutId: json_['layoutId'] as core.String?,
        layoutType: json_['layoutType'] as core.String?,
        page: json_['page'] as core.String?,
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
class GoogleCloudDocumentaiV1beta3DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta3DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageBlock.fromJson(core.Map json_)
    : this(
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        provenance:
            json_.containsKey('provenance')
                ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
    if (layout != null) 'layout': layout!,
    if (provenance != null) 'provenance': provenance!,
  };
}

/// A detected barcode.
class GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode {
  /// Detailed barcode information of the DetectedBarcode.
  GoogleCloudDocumentaiV1beta3Barcode? barcode;

  /// Layout for DetectedBarcode.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode({
    this.barcode,
    this.layout,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode.fromJson(
    core.Map json_,
  ) : this(
        barcode:
            json_.containsKey('barcode')
                ? GoogleCloudDocumentaiV1beta3Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (barcode != null) 'barcode': barcode!,
    if (layout != null) 'layout': layout!,
  };
}

/// Detected language for a structural component.
typedef GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage =
    $DocumentPageDetectedLanguage;

/// Dimension for the page.
typedef GoogleCloudDocumentaiV1beta3DocumentPageDimension =
    $DocumentPageDimension;

/// A form field detected on the page.
class GoogleCloudDocumentaiV1beta3DocumentPageFormField {
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
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? fieldName;

  /// Layout for the FormField value.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? fieldValue;

  /// A list of detected languages for name together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  nameDetectedLanguages;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  /// A list of detected languages for value together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type.
  ///
  /// Current valid values are: - blank (this indicates the `field_value` is
  /// normal text) - `unfilled_checkbox` - `filled_checkbox`
  core.String? valueType;

  GoogleCloudDocumentaiV1beta3DocumentPageFormField({
    this.correctedKeyText,
    this.correctedValueText,
    this.fieldName,
    this.fieldValue,
    this.nameDetectedLanguages,
    this.provenance,
    this.valueDetectedLanguages,
    this.valueType,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageFormField.fromJson(core.Map json_)
    : this(
        correctedKeyText: json_['correctedKeyText'] as core.String?,
        correctedValueText: json_['correctedValueText'] as core.String?,
        fieldName:
            json_.containsKey('fieldName')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['fieldName'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fieldValue:
            json_.containsKey('fieldValue')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['fieldValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nameDetectedLanguages:
            (json_['nameDetectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        provenance:
            json_.containsKey('provenance')
                ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        valueDetectedLanguages:
            (json_['valueDetectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (correctedKeyText != null) 'correctedKeyText': correctedKeyText!,
    if (correctedValueText != null) 'correctedValueText': correctedValueText!,
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
typedef GoogleCloudDocumentaiV1beta3DocumentPageImage = $DocumentPageImage;

/// Image quality scores for the page image.
class GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores {
  /// A list of detected defects.
  core.List<
    GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect
  >?
  detectedDefects;

  /// The overall quality score.
  ///
  /// Range `[0, 1]` where `1` is perfect quality.
  core.double? qualityScore;

  GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores({
    this.detectedDefects,
    this.qualityScore,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores.fromJson(
    core.Map json_,
  ) : this(
        detectedDefects:
            (json_['detectedDefects'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        qualityScore: (json_['qualityScore'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detectedDefects != null) 'detectedDefects': detectedDefects!,
    if (qualityScore != null) 'qualityScore': qualityScore!,
  };
}

/// Image Quality Defects
typedef GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect =
    $DocumentPageImageQualityScoresDetectedDefect;

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1beta3DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1beta3BoundingPoly? boundingPoly;

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
  GoogleCloudDocumentaiV1beta3DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1beta3DocumentPageLayout({
    this.boundingPoly,
    this.confidence,
    this.orientation,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(core.Map json_)
    : this(
        boundingPoly:
            json_.containsKey('boundingPoly')
                ? GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        orientation: json_['orientation'] as core.String?,
        textAnchor:
            json_.containsKey('textAnchor')
                ? GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDocumentaiV1beta3DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta3DocumentPageLine({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageLine.fromJson(core.Map json_)
    : this(
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        provenance:
            json_.containsKey('provenance')
                ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudDocumentaiV1beta3DocumentPageMatrix = $DocumentPageMatrix;

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1beta3DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta3DocumentPageParagraph({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageParagraph.fromJson(core.Map json_)
    : this(
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        provenance:
            json_.containsKey('provenance')
                ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
    if (layout != null) 'layout': layout!,
    if (provenance != null) 'provenance': provenance!,
  };
}

/// A detected symbol.
class GoogleCloudDocumentaiV1beta3DocumentPageSymbol {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for Symbol.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1beta3DocumentPageSymbol({
    this.detectedLanguages,
    this.layout,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageSymbol.fromJson(core.Map json_)
    : this(
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
    if (layout != null) 'layout': layout!,
  };
}

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1beta3DocumentPageTable {
  /// Body rows of the table.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>? bodyRows;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Header rows of the table.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow>? headerRows;

  /// Layout for Table.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this table.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta3DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageTable.fromJson(core.Map json_)
    : this(
        bodyRows:
            (json_['bodyRows'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        headerRows:
            (json_['headerRows'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        provenance:
            json_.containsKey('provenance')
                ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell {
  /// How many columns this cell spans.
  core.int? colSpan;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for TableCell.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// How many rows this cell spans.
  core.int? rowSpan;

  GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell({
    this.colSpan,
    this.detectedLanguages,
    this.layout,
    this.rowSpan,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell.fromJson(
    core.Map json_,
  ) : this(
        colSpan: json_['colSpan'] as core.int?,
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        rowSpan: json_['rowSpan'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (colSpan != null) 'colSpan': colSpan!,
    if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
    if (layout != null) 'layout': layout!,
    if (rowSpan != null) 'rowSpan': rowSpan!,
  };
}

/// A row of table cells.
class GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell>? cells;

  GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow({this.cells});

  GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow.fromJson(core.Map json_)
    : this(
        cells:
            (json_['cells'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cells != null) 'cells': cells!,
  };
}

/// A detected token.
class GoogleCloudDocumentaiV1beta3DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  /// Text style attributes.
  GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo? styleInfo;

  GoogleCloudDocumentaiV1beta3DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
    this.styleInfo,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageToken.fromJson(core.Map json_)
    : this(
        detectedBreak:
            json_.containsKey('detectedBreak')
                ? GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak.fromJson(
                  json_['detectedBreak'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        provenance:
            json_.containsKey('provenance')
                ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        styleInfo:
            json_.containsKey('styleInfo')
                ? GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo.fromJson(
                  json_['styleInfo'] as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak =
    $DocumentPageTokenDetectedBreak;

/// Font and other text style attributes.
class GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo {
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
  ///
  /// This feature is not supported yet.
  core.bool? smallcaps;

  /// Whether the text is strikethrough.
  ///
  /// This feature is not supported yet.
  core.bool? strikeout;

  /// Whether the text is a subscript.
  ///
  /// This feature is not supported yet.
  core.bool? subscript;

  /// Whether the text is a superscript.
  ///
  /// This feature is not supported yet.
  core.bool? superscript;

  /// Color of the text.
  GoogleTypeColor? textColor;

  /// Whether the text is underlined.
  core.bool? underlined;

  GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo({
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

  GoogleCloudDocumentaiV1beta3DocumentPageTokenStyleInfo.fromJson(
    core.Map json_,
  ) : this(
        backgroundColor:
            json_.containsKey('backgroundColor')
                ? GoogleTypeColor.fromJson(
                  json_['backgroundColor']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        bold: json_['bold'] as core.bool?,
        fontSize: json_['fontSize'] as core.int?,
        fontType: json_['fontType'] as core.String?,
        fontWeight: json_['fontWeight'] as core.int?,
        handwritten: json_['handwritten'] as core.bool?,
        italic: json_['italic'] as core.bool?,
        letterSpacing: (json_['letterSpacing'] as core.num?)?.toDouble(),
        pixelFontSize: (json_['pixelFontSize'] as core.num?)?.toDouble(),
        smallcaps: json_['smallcaps'] as core.bool?,
        strikeout: json_['strikeout'] as core.bool?,
        subscript: json_['subscript'] as core.bool?,
        superscript: json_['superscript'] as core.bool?,
        textColor:
            json_.containsKey('textColor')
                ? GoogleTypeColor.fromJson(
                  json_['textColor'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        underlined: json_['underlined'] as core.bool?,
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
class GoogleCloudDocumentaiV1beta3DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
  detectedLanguages;

  /// Layout for VisualElement.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// Type of the VisualElement.
  core.String? type;

  GoogleCloudDocumentaiV1beta3DocumentPageVisualElement({
    this.detectedLanguages,
    this.layout,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageVisualElement.fromJson(core.Map json_)
    : this(
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        layout:
            json_.containsKey('layout')
                ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
    if (layout != null) 'layout': layout!,
    if (type != null) 'type': type!,
  };
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1beta3DocumentProvenance {
  /// The Id of this operation.
  ///
  /// Needs to be unique within the scope of the revision.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1beta3DocumentProvenanceParent>? parents;

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

  GoogleCloudDocumentaiV1beta3DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(core.Map json_)
    : this(
        id: json_['id'] as core.int?,
        parents:
            (json_['parents'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentProvenanceParent.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        revision: json_['revision'] as core.int?,
        type: json_['type'] as core.String?,
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
typedef GoogleCloudDocumentaiV1beta3DocumentProvenanceParent =
    $DocumentProvenanceParent;

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1beta3DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String? agent;

  /// The time that the revision was created, internally generated by doc proto
  /// storage at the time of create.
  core.String? createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview? humanReview;

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

  GoogleCloudDocumentaiV1beta3DocumentRevision({
    this.agent,
    this.createTime,
    this.humanReview,
    this.id,
    this.parent,
    this.parentIds,
    this.processor,
  });

  GoogleCloudDocumentaiV1beta3DocumentRevision.fromJson(core.Map json_)
    : this(
        agent: json_['agent'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        humanReview:
            json_.containsKey('humanReview')
                ? GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview.fromJson(
                  json_['humanReview'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        id: json_['id'] as core.String?,
        parent:
            (json_['parent'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        parentIds:
            (json_['parentIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        processor: json_['processor'] as core.String?,
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
typedef GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview =
    $DocumentRevisionHumanReview;

/// The schema defines the output of the processed document by a processor.
class GoogleCloudDocumentaiV1beta3DocumentSchema {
  /// Description of the schema.
  core.String? description;

  /// Display name to show to users.
  core.String? displayName;

  /// Entity types of the schema.
  core.List<GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType>? entityTypes;

  /// Metadata of the schema.
  GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata? metadata;

  GoogleCloudDocumentaiV1beta3DocumentSchema({
    this.description,
    this.displayName,
    this.entityTypes,
    this.metadata,
  });

  GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entityTypes:
            (json_['entityTypes'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        metadata:
            json_.containsKey('metadata')
                ? GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType {
  /// The entity type that this type is derived from.
  ///
  /// For now, one and only one should be set.
  core.List<core.String>? baseTypes;

  /// The description of the entity type.
  ///
  /// Could be used to provide more information about the entity type for model
  /// calls.
  core.String? description;

  /// User defined name for the type.
  core.String? displayName;

  /// Metadata for the entity type.
  GoogleCloudDocumentaiV1beta3EntityTypeMetadata? entityTypeMetadata;

  /// If specified, lists all the possible values for this entity.
  ///
  /// This should not be more than a handful of values. If the number of values
  /// is \>10 or could change frequently use the `EntityType.value_ontology`
  /// field and specify a list of all possible values in a value ontology file.
  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues? enumValues;

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
  core.List<GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty>?
  properties;

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType({
    this.baseTypes,
    this.description,
    this.displayName,
    this.entityTypeMetadata,
    this.enumValues,
    this.name,
    this.properties,
  });

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType.fromJson(core.Map json_)
    : this(
        baseTypes:
            (json_['baseTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entityTypeMetadata:
            json_.containsKey('entityTypeMetadata')
                ? GoogleCloudDocumentaiV1beta3EntityTypeMetadata.fromJson(
                  json_['entityTypeMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enumValues:
            json_.containsKey('enumValues')
                ? GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues.fromJson(
                  json_['enumValues'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        properties:
            (json_['properties'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (baseTypes != null) 'baseTypes': baseTypes!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (entityTypeMetadata != null) 'entityTypeMetadata': entityTypeMetadata!,
    if (enumValues != null) 'enumValues': enumValues!,
    if (name != null) 'name': name!,
    if (properties != null) 'properties': properties!,
  };
}

/// Defines the a list of enum values.
typedef GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues =
    $DocumentSchemaEntityTypeEnumValues;

/// Defines properties that can be part of the entity type.
class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty {
  /// The description of the property.
  ///
  /// Could be used to provide more information about the property for model
  /// calls.
  core.String? description;

  /// User defined name for the property.
  core.String? displayName;

  /// Specifies how the entity's value is obtained.
  /// Possible string values are:
  /// - "METHOD_UNSPECIFIED" : Unspecified method. It defaults to `EXTRACT`.
  /// - "EXTRACT" : The entity's value is directly extracted as-is from the
  /// document text.
  /// - "DERIVE" : The entity's value is derived through inference and is not
  /// necessarily an exact text extraction from the document.
  core.String? method;

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

  /// Any additional metadata about the property can be added here.
  GoogleCloudDocumentaiV1beta3PropertyMetadata? propertyMetadata;

  /// A reference to the value type of the property.
  ///
  /// This type is subject to the same conventions as the `Entity.base_types`
  /// field.
  core.String? valueType;

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty({
    this.description,
    this.displayName,
    this.method,
    this.name,
    this.occurrenceType,
    this.propertyMetadata,
    this.valueType,
  });

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty.fromJson(
    core.Map json_,
  ) : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        method: json_['method'] as core.String?,
        name: json_['name'] as core.String?,
        occurrenceType: json_['occurrenceType'] as core.String?,
        propertyMetadata:
            json_.containsKey('propertyMetadata')
                ? GoogleCloudDocumentaiV1beta3PropertyMetadata.fromJson(
                  json_['propertyMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (method != null) 'method': method!,
    if (name != null) 'name': name!,
    if (occurrenceType != null) 'occurrenceType': occurrenceType!,
    if (propertyMetadata != null) 'propertyMetadata': propertyMetadata!,
    if (valueType != null) 'valueType': valueType!,
  };
}

/// Metadata for global schema behavior.
typedef GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata =
    $DocumentSchemaMetadata;

/// For a large document, sharding may be performed to produce several document
/// shards.
///
/// Each document shard contains this field to detail which shard it is.
typedef GoogleCloudDocumentaiV1beta3DocumentShardInfo = $DocumentShardInfo;

/// Annotation for common text style attributes.
///
/// This adheres to CSS conventions as much as possible.
class GoogleCloudDocumentaiV1beta3DocumentStyle {
  /// Text background color.
  GoogleTypeColor? backgroundColor;

  /// Text color.
  GoogleTypeColor? color;

  /// Font family such as `Arial`, `Times New Roman`.
  ///
  /// https://www.w3schools.com/cssref/pr_font_font-family.asp
  core.String? fontFamily;

  /// Font size.
  GoogleCloudDocumentaiV1beta3DocumentStyleFontSize? fontSize;

  /// [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp).
  ///
  /// Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  core.String? fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta3DocumentTextAnchor? textAnchor;

  /// [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp).
  ///
  /// Follows CSS standard.
  core.String? textDecoration;

  /// [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp).
  ///
  /// Possible values are `normal`, `italic`, and `oblique`.
  core.String? textStyle;

  GoogleCloudDocumentaiV1beta3DocumentStyle({
    this.backgroundColor,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.textAnchor,
    this.textDecoration,
    this.textStyle,
  });

  GoogleCloudDocumentaiV1beta3DocumentStyle.fromJson(core.Map json_)
    : this(
        backgroundColor:
            json_.containsKey('backgroundColor')
                ? GoogleTypeColor.fromJson(
                  json_['backgroundColor']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        color:
            json_.containsKey('color')
                ? GoogleTypeColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fontFamily: json_['fontFamily'] as core.String?,
        fontSize:
            json_.containsKey('fontSize')
                ? GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.fromJson(
                  json_['fontSize'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fontWeight: json_['fontWeight'] as core.String?,
        textAnchor:
            json_.containsKey('textAnchor')
                ? GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        textDecoration: json_['textDecoration'] as core.String?,
        textStyle: json_['textStyle'] as core.String?,
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
typedef GoogleCloudDocumentaiV1beta3DocumentStyleFontSize =
    $DocumentStyleFontSize;

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1beta3DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  ///
  /// It is always populated for formFields.
  core.String? content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment>?
  textSegments;

  GoogleCloudDocumentaiV1beta3DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        textSegments:
            (json_['textSegments'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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
typedef GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment =
    $DocumentTextAnchorTextSegment;

/// This message is used for text changes aka.
///
/// OCR corrections.
class GoogleCloudDocumentaiV1beta3DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String? changedText;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudDocumentaiV1beta3DocumentProvenance>? provenance;

  /// Provenance of the correction.
  ///
  /// Text anchor indexing into the Document.text. There can only be a single
  /// `TextAnchor.text_segments` element. If the start and end index of the text
  /// segment are the same, the text change is inserted before that index.
  GoogleCloudDocumentaiV1beta3DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1beta3DocumentTextChange({
    this.changedText,
    this.provenance,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1beta3DocumentTextChange.fromJson(core.Map json_)
    : this(
        changedText: json_['changedText'] as core.String?,
        provenance:
            (json_['provenance'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        textAnchor:
            json_.containsKey('textAnchor')
                ? GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (changedText != null) 'changedText': changedText!,
    if (provenance != null) 'provenance': provenance!,
    if (textAnchor != null) 'textAnchor': textAnchor!,
  };
}

/// Request message for the EnableProcessor method.
typedef GoogleCloudDocumentaiV1beta3EnableProcessorRequest = $Empty;

/// Metadata about an entity type.
class GoogleCloudDocumentaiV1beta3EntityTypeMetadata {
  /// Whether the entity type should be considered inactive.
  core.bool? inactive;

  GoogleCloudDocumentaiV1beta3EntityTypeMetadata({this.inactive});

  GoogleCloudDocumentaiV1beta3EntityTypeMetadata.fromJson(core.Map json_)
    : this(inactive: json_['inactive'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (inactive != null) 'inactive': inactive!,
  };
}

/// Evaluates the given ProcessorVersion against the supplied documents.
class GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest {
  /// The documents used in the evaluation.
  ///
  /// If unspecified, use the processor's dataset as evaluation input.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig? evaluationDocuments;

  GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest({
    this.evaluationDocuments,
  });

  GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest.fromJson(
    core.Map json_,
  ) : this(
        evaluationDocuments:
            json_.containsKey('evaluationDocuments')
                ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
                  json_['evaluationDocuments']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (evaluationDocuments != null)
      'evaluationDocuments': evaluationDocuments!,
  };
}

/// An evaluation of a ProcessorVersion's performance.
class GoogleCloudDocumentaiV1beta3Evaluation {
  /// Metrics for all the entities in aggregate.
  GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics?
  allEntitiesMetrics;

  /// The time that the evaluation was created.
  core.String? createTime;

  /// Counters for the documents used in the evaluation.
  GoogleCloudDocumentaiV1beta3EvaluationCounters? documentCounters;

  /// Metrics across confidence levels, for different entities.
  core.Map<
    core.String,
    GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics
  >?
  entityMetrics;

  /// The KMS key name used for encryption.
  core.String? kmsKeyName;

  /// The KMS key version with which data is encrypted.
  core.String? kmsKeyVersionName;

  /// The resource name of the evaluation.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}/evaluations/{evaluation}`
  core.String? name;

  GoogleCloudDocumentaiV1beta3Evaluation({
    this.allEntitiesMetrics,
    this.createTime,
    this.documentCounters,
    this.entityMetrics,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.name,
  });

  GoogleCloudDocumentaiV1beta3Evaluation.fromJson(core.Map json_)
    : this(
        allEntitiesMetrics:
            json_.containsKey('allEntitiesMetrics')
                ? GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics.fromJson(
                  json_['allEntitiesMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        documentCounters:
            json_.containsKey('documentCounters')
                ? GoogleCloudDocumentaiV1beta3EvaluationCounters.fromJson(
                  json_['documentCounters']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        entityMetrics: (json_['entityMetrics']
                as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        kmsKeyName: json_['kmsKeyName'] as core.String?,
        kmsKeyVersionName: json_['kmsKeyVersionName'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allEntitiesMetrics != null) 'allEntitiesMetrics': allEntitiesMetrics!,
    if (createTime != null) 'createTime': createTime!,
    if (documentCounters != null) 'documentCounters': documentCounters!,
    if (entityMetrics != null) 'entityMetrics': entityMetrics!,
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
    if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
    if (name != null) 'name': name!,
  };
}

/// Evaluations metrics, at a specific confidence level.
class GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics {
  /// The confidence level.
  core.double? confidenceLevel;

  /// The metrics at the specific confidence level.
  GoogleCloudDocumentaiV1beta3EvaluationMetrics? metrics;

  GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics({
    this.confidenceLevel,
    this.metrics,
  });

  GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics.fromJson(
    core.Map json_,
  ) : this(
        confidenceLevel: (json_['confidenceLevel'] as core.num?)?.toDouble(),
        metrics:
            json_.containsKey('metrics')
                ? GoogleCloudDocumentaiV1beta3EvaluationMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (confidenceLevel != null) 'confidenceLevel': confidenceLevel!,
    if (metrics != null) 'metrics': metrics!,
  };
}

/// Evaluation counters for the documents that were used.
typedef GoogleCloudDocumentaiV1beta3EvaluationCounters = $EvaluationCounters;

/// Evaluation metrics, either in aggregate or about a specific entity.
typedef GoogleCloudDocumentaiV1beta3EvaluationMetrics = $EvaluationMetrics;

/// Metrics across multiple confidence levels.
class GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics {
  /// The calculated area under the precision recall curve (AUPRC), computed by
  /// integrating over all confidence thresholds.
  core.double? auprc;

  /// The AUPRC for metrics with fuzzy matching disabled, i.e., exact matching
  /// only.
  core.double? auprcExact;

  /// Metrics across confidence levels with fuzzy matching enabled.
  core.List<GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics>?
  confidenceLevelMetrics;

  /// Metrics across confidence levels with only exact matching.
  core.List<GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics>?
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

  GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics({
    this.auprc,
    this.auprcExact,
    this.confidenceLevelMetrics,
    this.confidenceLevelMetricsExact,
    this.estimatedCalibrationError,
    this.estimatedCalibrationErrorExact,
    this.metricsType,
  });

  GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics.fromJson(
    core.Map json_,
  ) : this(
        auprc: (json_['auprc'] as core.num?)?.toDouble(),
        auprcExact: (json_['auprcExact'] as core.num?)?.toDouble(),
        confidenceLevelMetrics:
            (json_['confidenceLevelMetrics'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        confidenceLevelMetricsExact:
            (json_['confidenceLevelMetricsExact'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        estimatedCalibrationError:
            (json_['estimatedCalibrationError'] as core.num?)?.toDouble(),
        estimatedCalibrationErrorExact:
            (json_['estimatedCalibrationErrorExact'] as core.num?)?.toDouble(),
        metricsType: json_['metricsType'] as core.String?,
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
class GoogleCloudDocumentaiV1beta3EvaluationReference {
  /// An aggregate of the statistics for the evaluation with fuzzy matching on.
  GoogleCloudDocumentaiV1beta3EvaluationMetrics? aggregateMetrics;

  /// An aggregate of the statistics for the evaluation with fuzzy matching off.
  GoogleCloudDocumentaiV1beta3EvaluationMetrics? aggregateMetricsExact;

  /// The resource name of the evaluation.
  core.String? evaluation;

  /// The resource name of the Long Running Operation for the evaluation.
  core.String? operation;

  GoogleCloudDocumentaiV1beta3EvaluationReference({
    this.aggregateMetrics,
    this.aggregateMetricsExact,
    this.evaluation,
    this.operation,
  });

  GoogleCloudDocumentaiV1beta3EvaluationReference.fromJson(core.Map json_)
    : this(
        aggregateMetrics:
            json_.containsKey('aggregateMetrics')
                ? GoogleCloudDocumentaiV1beta3EvaluationMetrics.fromJson(
                  json_['aggregateMetrics']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        aggregateMetricsExact:
            json_.containsKey('aggregateMetricsExact')
                ? GoogleCloudDocumentaiV1beta3EvaluationMetrics.fromJson(
                  json_['aggregateMetricsExact']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        evaluation: json_['evaluation'] as core.String?,
        operation: json_['operation'] as core.String?,
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
class GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse {
  /// The list of processor types.
  core.List<GoogleCloudDocumentaiV1beta3ProcessorType>? processorTypes;

  GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse({
    this.processorTypes,
  });

  GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse.fromJson(
    core.Map json_,
  ) : this(
        processorTypes:
            (json_['processorTypes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (processorTypes != null) 'processorTypes': processorTypes!,
  };
}

/// Metadata for how this field value is extracted.
class GoogleCloudDocumentaiV1beta3FieldExtractionMetadata {
  /// Summary options config.
  GoogleCloudDocumentaiV1beta3SummaryOptions? summaryOptions;

  GoogleCloudDocumentaiV1beta3FieldExtractionMetadata({this.summaryOptions});

  GoogleCloudDocumentaiV1beta3FieldExtractionMetadata.fromJson(core.Map json_)
    : this(
        summaryOptions:
            json_.containsKey('summaryOptions')
                ? GoogleCloudDocumentaiV1beta3SummaryOptions.fromJson(
                  json_['summaryOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (summaryOptions != null) 'summaryOptions': summaryOptions!,
  };
}

/// Specifies a document stored on Cloud Storage.
typedef GoogleCloudDocumentaiV1beta3GcsDocument = $GcsDocument;

/// Specifies a set of documents on Cloud Storage.
class GoogleCloudDocumentaiV1beta3GcsDocuments {
  /// The list of documents.
  core.List<GoogleCloudDocumentaiV1beta3GcsDocument>? documents;

  GoogleCloudDocumentaiV1beta3GcsDocuments({this.documents});

  GoogleCloudDocumentaiV1beta3GcsDocuments.fromJson(core.Map json_)
    : this(
        documents:
            (json_['documents'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3GcsDocument.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documents != null) 'documents': documents!,
  };
}

/// Specifies all documents on Cloud Storage with a common prefix.
typedef GoogleCloudDocumentaiV1beta3GcsPrefix = $GcsPrefix;

class GoogleCloudDocumentaiV1beta3GetDocumentResponse {
  GoogleCloudDocumentaiV1beta3Document? document;

  GoogleCloudDocumentaiV1beta3GetDocumentResponse({this.document});

  GoogleCloudDocumentaiV1beta3GetDocumentResponse.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
  };
}

/// The status of human review on a processed document.
typedef GoogleCloudDocumentaiV1beta3HumanReviewStatus = $HumanReviewStatus;

class GoogleCloudDocumentaiV1beta3ImportDocumentsRequest {
  /// The Cloud Storage uri containing raw documents that must be imported.
  ///
  /// Required.
  core.List<
    GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig
  >?
  batchDocumentsImportConfigs;

  GoogleCloudDocumentaiV1beta3ImportDocumentsRequest({
    this.batchDocumentsImportConfigs,
  });

  GoogleCloudDocumentaiV1beta3ImportDocumentsRequest.fromJson(core.Map json_)
    : this(
        batchDocumentsImportConfigs:
            (json_['batchDocumentsImportConfigs'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batchDocumentsImportConfigs != null)
      'batchDocumentsImportConfigs': batchDocumentsImportConfigs!,
  };
}

/// Config for importing documents.
///
/// Each batch can have its own dataset split type.
class GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig {
  /// If set, documents will be automatically split into training and test split
  /// category with the specified ratio.
  GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig?
  autoSplitConfig;

  /// The common config to specify a set of documents used as input.
  GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig? batchInputConfig;

  /// Target dataset split where the documents must be stored.
  /// Possible string values are:
  /// - "DATASET_SPLIT_TYPE_UNSPECIFIED" : Default value if the enum is not set.
  /// - "DATASET_SPLIT_TRAIN" : Identifies the train documents.
  /// - "DATASET_SPLIT_TEST" : Identifies the test documents.
  /// - "DATASET_SPLIT_UNASSIGNED" : Identifies the unassigned documents.
  core.String? datasetSplit;

  GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig({
    this.autoSplitConfig,
    this.batchInputConfig,
    this.datasetSplit,
  });

  GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfig.fromJson(
    core.Map json_,
  ) : this(
        autoSplitConfig:
            json_.containsKey('autoSplitConfig')
                ? GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig.fromJson(
                  json_['autoSplitConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        batchInputConfig:
            json_.containsKey('batchInputConfig')
                ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
                  json_['batchInputConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        datasetSplit: json_['datasetSplit'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autoSplitConfig != null) 'autoSplitConfig': autoSplitConfig!,
    if (batchInputConfig != null) 'batchInputConfig': batchInputConfig!,
    if (datasetSplit != null) 'datasetSplit': datasetSplit!,
  };
}

/// The config for auto-split.
class GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig {
  /// Ratio of training dataset split.
  core.double? trainingSplitRatio;

  GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig({
    this.trainingSplitRatio,
  });

  GoogleCloudDocumentaiV1beta3ImportDocumentsRequestBatchDocumentsImportConfigAutoSplitConfig.fromJson(
    core.Map json_,
  ) : this(
        trainingSplitRatio:
            (json_['trainingSplitRatio'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (trainingSplitRatio != null) 'trainingSplitRatio': trainingSplitRatio!,
  };
}

/// The request message for the ImportProcessorVersion method.
///
/// The Document AI
/// [Service Agent](https://cloud.google.com/iam/docs/service-agents) of the
/// destination project must have
/// [Document AI Editor role](https://cloud.google.com/document-ai/docs/access-control/iam-roles)
/// on the source project. The destination project is specified as part of the
/// parent field. The source project is specified as part of the source or
/// external_processor_version_source field.
class GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest {
  /// The source processor version to import from.
  ///
  /// It can be from a different environment and region than the destination
  /// processor.
  GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource?
  externalProcessorVersionSource;

  /// The source processor version to import from.
  ///
  /// The source processor version and destination processor need to be in the
  /// same environment and region. Note that ProcessorVersions with `model_type`
  /// `MODEL_TYPE_LLM` are not supported.
  core.String? processorVersionSource;

  GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest({
    this.externalProcessorVersionSource,
    this.processorVersionSource,
  });

  GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequest.fromJson(
    core.Map json_,
  ) : this(
        externalProcessorVersionSource:
            json_.containsKey('externalProcessorVersionSource')
                ? GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource.fromJson(
                  json_['externalProcessorVersionSource']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        processorVersionSource: json_['processorVersionSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (externalProcessorVersionSource != null)
      'externalProcessorVersionSource': externalProcessorVersionSource!,
    if (processorVersionSource != null)
      'processorVersionSource': processorVersionSource!,
  };
}

/// The external source processor version.
class GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource {
  /// The processor version name.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  ///
  /// Required.
  core.String? processorVersion;

  /// The Document AI service endpoint.
  ///
  /// For example, 'https://us-documentai.googleapis.com'
  ///
  /// Optional.
  core.String? serviceEndpoint;

  GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource({
    this.processorVersion,
    this.serviceEndpoint,
  });

  GoogleCloudDocumentaiV1beta3ImportProcessorVersionRequestExternalProcessorVersionSource.fromJson(
    core.Map json_,
  ) : this(
        processorVersion: json_['processorVersion'] as core.String?,
        serviceEndpoint: json_['serviceEndpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (processorVersion != null) 'processorVersion': processorVersion!,
    if (serviceEndpoint != null) 'serviceEndpoint': serviceEndpoint!,
  };
}

class GoogleCloudDocumentaiV1beta3ListDocumentsRequest {
  /// Query to filter the documents based on https://google.aip.dev/160.
  ///
  /// ## Currently support query strings are:
  /// `SplitType=DATASET_SPLIT_TEST|DATASET_SPLIT_TRAIN|DATASET_SPLIT_UNASSIGNED`
  /// -
  /// `LabelingState=DOCUMENT_LABELED|DOCUMENT_UNLABELED|DOCUMENT_AUTO_LABELED`
  /// - `DisplayName=\"file_name.pdf\"` - `EntityType=abc/def` -
  /// `TagName=\"auto-labeling-running\"|\"sampled\"` Note: - Only `AND`, `=`
  /// and `!=` are supported. e.g. `DisplayName=file_name AND EntityType!=abc`
  /// IS supported. - Wildcard `*` is supported only in `DisplayName` filter -
  /// No duplicate filter keys are allowed, e.g. `EntityType=a AND EntityType=b`
  /// is NOT supported. - String match is case sensitive (for filter
  /// `DisplayName` & `EntityType`).
  ///
  /// Optional.
  core.String? filter;

  /// The maximum number of documents to return.
  ///
  /// The service may return fewer than this value. If unspecified, at most 20
  /// documents will be returned. The maximum value is 100; values above 100
  /// will be coerced to 100.
  core.int? pageSize;

  /// A page token, received from a previous `ListDocuments` call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListDocuments` must match the call that provided
  /// the page token.
  core.String? pageToken;

  /// Controls if the request requires a total size of matched documents.
  ///
  /// See ListDocumentsResponse.total_size. Enabling this flag may adversely
  /// impact performance. Defaults to false.
  ///
  /// Optional.
  core.bool? returnTotalSize;

  /// Number of results to skip beginning from the `page_token` if provided.
  ///
  /// https://google.aip.dev/158#skipping-results. It must be a non-negative
  /// integer. Negative values will be rejected. Note that this is not the
  /// number of pages to skip. If this value causes the cursor to move past the
  /// end of results, ListDocumentsResponse.document_metadata and
  /// ListDocumentsResponse.next_page_token will be empty.
  ///
  /// Optional.
  core.int? skip;

  GoogleCloudDocumentaiV1beta3ListDocumentsRequest({
    this.filter,
    this.pageSize,
    this.pageToken,
    this.returnTotalSize,
    this.skip,
  });

  GoogleCloudDocumentaiV1beta3ListDocumentsRequest.fromJson(core.Map json_)
    : this(
        filter: json_['filter'] as core.String?,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        returnTotalSize: json_['returnTotalSize'] as core.bool?,
        skip: json_['skip'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (filter != null) 'filter': filter!,
    if (pageSize != null) 'pageSize': pageSize!,
    if (pageToken != null) 'pageToken': pageToken!,
    if (returnTotalSize != null) 'returnTotalSize': returnTotalSize!,
    if (skip != null) 'skip': skip!,
  };
}

class GoogleCloudDocumentaiV1beta3ListDocumentsResponse {
  /// Document metadata corresponding to the listed documents.
  core.List<GoogleCloudDocumentaiV1beta3DocumentMetadata>? documentMetadata;

  /// A token, which can be sent as ListDocumentsRequest.page_token to retrieve
  /// the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Total count of documents queried.
  core.int? totalSize;

  GoogleCloudDocumentaiV1beta3ListDocumentsResponse({
    this.documentMetadata,
    this.nextPageToken,
    this.totalSize,
  });

  GoogleCloudDocumentaiV1beta3ListDocumentsResponse.fromJson(core.Map json_)
    : this(
        documentMetadata:
            (json_['documentMetadata'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3DocumentMetadata.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        totalSize: json_['totalSize'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (documentMetadata != null) 'documentMetadata': documentMetadata!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (totalSize != null) 'totalSize': totalSize!,
  };
}

/// The response from `ListEvaluations`.
class GoogleCloudDocumentaiV1beta3ListEvaluationsResponse {
  /// The evaluations requested.
  core.List<GoogleCloudDocumentaiV1beta3Evaluation>? evaluations;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudDocumentaiV1beta3ListEvaluationsResponse({
    this.evaluations,
    this.nextPageToken,
  });

  GoogleCloudDocumentaiV1beta3ListEvaluationsResponse.fromJson(core.Map json_)
    : this(
        evaluations:
            (json_['evaluations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3Evaluation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (evaluations != null) 'evaluations': evaluations!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for the ListProcessorTypes method.
class GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse {
  /// Points to the next page, otherwise empty.
  core.String? nextPageToken;

  /// The processor types.
  core.List<GoogleCloudDocumentaiV1beta3ProcessorType>? processorTypes;

  GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse({
    this.nextPageToken,
    this.processorTypes,
  });

  GoogleCloudDocumentaiV1beta3ListProcessorTypesResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        processorTypes:
            (json_['processorTypes'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (processorTypes != null) 'processorTypes': processorTypes!,
  };
}

/// Response message for the ListProcessorVersions method.
class GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse {
  /// Points to the next processor, otherwise empty.
  core.String? nextPageToken;

  /// The list of processors.
  core.List<GoogleCloudDocumentaiV1beta3ProcessorVersion>? processorVersions;

  GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse({
    this.nextPageToken,
    this.processorVersions,
  });

  GoogleCloudDocumentaiV1beta3ListProcessorVersionsResponse.fromJson(
    core.Map json_,
  ) : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        processorVersions:
            (json_['processorVersions'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (processorVersions != null) 'processorVersions': processorVersions!,
  };
}

/// Response message for the ListProcessors method.
class GoogleCloudDocumentaiV1beta3ListProcessorsResponse {
  /// Points to the next processor, otherwise empty.
  core.String? nextPageToken;

  /// The list of processors.
  core.List<GoogleCloudDocumentaiV1beta3Processor>? processors;

  GoogleCloudDocumentaiV1beta3ListProcessorsResponse({
    this.nextPageToken,
    this.processors,
  });

  GoogleCloudDocumentaiV1beta3ListProcessorsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        processors:
            (json_['processors'] as core.List?)
                ?.map(
                  (value) => GoogleCloudDocumentaiV1beta3Processor.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
typedef GoogleCloudDocumentaiV1beta3NormalizedVertex = $NormalizedVertex01;

/// Config for Document OCR.
class GoogleCloudDocumentaiV1beta3OcrConfig {
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
  GoogleCloudDocumentaiV1beta3OcrConfigHints? hints;

  /// Configurations for premium OCR features.
  GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures? premiumFeatures;

  GoogleCloudDocumentaiV1beta3OcrConfig({
    this.advancedOcrOptions,
    this.computeStyleInfo,
    this.disableCharacterBoxesDetection,
    this.enableImageQualityScores,
    this.enableNativePdfParsing,
    this.enableSymbol,
    this.hints,
    this.premiumFeatures,
  });

  GoogleCloudDocumentaiV1beta3OcrConfig.fromJson(core.Map json_)
    : this(
        advancedOcrOptions:
            (json_['advancedOcrOptions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        computeStyleInfo: json_['computeStyleInfo'] as core.bool?,
        disableCharacterBoxesDetection:
            json_['disableCharacterBoxesDetection'] as core.bool?,
        enableImageQualityScores:
            json_['enableImageQualityScores'] as core.bool?,
        enableNativePdfParsing: json_['enableNativePdfParsing'] as core.bool?,
        enableSymbol: json_['enableSymbol'] as core.bool?,
        hints:
            json_.containsKey('hints')
                ? GoogleCloudDocumentaiV1beta3OcrConfigHints.fromJson(
                  json_['hints'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        premiumFeatures:
            json_.containsKey('premiumFeatures')
                ? GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures.fromJson(
                  json_['premiumFeatures']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (advancedOcrOptions != null) 'advancedOcrOptions': advancedOcrOptions!,
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
typedef GoogleCloudDocumentaiV1beta3OcrConfigHints = $OcrConfigHints;

/// Configurations for premium OCR features.
typedef GoogleCloudDocumentaiV1beta3OcrConfigPremiumFeatures =
    $OcrConfigPremiumFeatures;

/// Options for Process API
class GoogleCloudDocumentaiV1beta3ProcessOptions {
  /// Only process certain pages from the end, same as above.
  core.int? fromEnd;

  /// Only process certain pages from the start.
  ///
  /// Process all if the document has fewer pages.
  core.int? fromStart;

  /// Which pages to process (1-indexed).
  GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector?
  individualPageSelector;

  /// Only applicable to `LAYOUT_PARSER_PROCESSOR`.
  ///
  /// Returns error if set on other processor types.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig? layoutConfig;

  /// Only applicable to `OCR_PROCESSOR` and `FORM_PARSER_PROCESSOR`.
  ///
  /// Returns error if set on other processor types.
  GoogleCloudDocumentaiV1beta3OcrConfig? ocrConfig;

  /// Override the schema of the ProcessorVersion.
  ///
  /// Will return an Invalid Argument error if this field is set when the
  /// underlying ProcessorVersion doesn't support schema override.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DocumentSchema? schemaOverride;

  GoogleCloudDocumentaiV1beta3ProcessOptions({
    this.fromEnd,
    this.fromStart,
    this.individualPageSelector,
    this.layoutConfig,
    this.ocrConfig,
    this.schemaOverride,
  });

  GoogleCloudDocumentaiV1beta3ProcessOptions.fromJson(core.Map json_)
    : this(
        fromEnd: json_['fromEnd'] as core.int?,
        fromStart: json_['fromStart'] as core.int?,
        individualPageSelector:
            json_.containsKey('individualPageSelector')
                ? GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector.fromJson(
                  json_['individualPageSelector']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        layoutConfig:
            json_.containsKey('layoutConfig')
                ? GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig.fromJson(
                  json_['layoutConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        ocrConfig:
            json_.containsKey('ocrConfig')
                ? GoogleCloudDocumentaiV1beta3OcrConfig.fromJson(
                  json_['ocrConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        schemaOverride:
            json_.containsKey('schemaOverride')
                ? GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
                  json_['schemaOverride']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fromEnd != null) 'fromEnd': fromEnd!,
    if (fromStart != null) 'fromStart': fromStart!,
    if (individualPageSelector != null)
      'individualPageSelector': individualPageSelector!,
    if (layoutConfig != null) 'layoutConfig': layoutConfig!,
    if (ocrConfig != null) 'ocrConfig': ocrConfig!,
    if (schemaOverride != null) 'schemaOverride': schemaOverride!,
  };
}

/// A list of individual page numbers.
typedef GoogleCloudDocumentaiV1beta3ProcessOptionsIndividualPageSelector =
    $ProcessOptionsIndividualPageSelector;

/// Serving config for layout parser processor.
class GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig {
  /// Config for chunking in layout parser processor.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig?
  chunkingConfig;

  /// Whether to include image annotations in layout parser response.
  ///
  /// Optional.
  core.bool? enableImageAnnotation;

  /// Whether to extract images in layout parser response.
  ///
  /// Optional.
  core.bool? enableImageExtraction;

  /// Whether to refine PDF layout using LLM.
  ///
  /// Optional.
  core.bool? enableLlmLayoutParsing;

  /// Whether to include table annotations in layout parser response.
  ///
  /// Optional.
  core.bool? enableTableAnnotation;

  /// Whether to include bounding boxes in layout parser processor response.
  ///
  /// Optional.
  core.bool? returnBoundingBoxes;

  /// Whether to include images in layout parser processor response.
  ///
  /// Optional.
  core.bool? returnImages;

  GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig({
    this.chunkingConfig,
    this.enableImageAnnotation,
    this.enableImageExtraction,
    this.enableLlmLayoutParsing,
    this.enableTableAnnotation,
    this.returnBoundingBoxes,
    this.returnImages,
  });

  GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfig.fromJson(
    core.Map json_,
  ) : this(
        chunkingConfig:
            json_.containsKey('chunkingConfig')
                ? GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig.fromJson(
                  json_['chunkingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableImageAnnotation: json_['enableImageAnnotation'] as core.bool?,
        enableImageExtraction: json_['enableImageExtraction'] as core.bool?,
        enableLlmLayoutParsing: json_['enableLlmLayoutParsing'] as core.bool?,
        enableTableAnnotation: json_['enableTableAnnotation'] as core.bool?,
        returnBoundingBoxes: json_['returnBoundingBoxes'] as core.bool?,
        returnImages: json_['returnImages'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (chunkingConfig != null) 'chunkingConfig': chunkingConfig!,
    if (enableImageAnnotation != null)
      'enableImageAnnotation': enableImageAnnotation!,
    if (enableImageExtraction != null)
      'enableImageExtraction': enableImageExtraction!,
    if (enableLlmLayoutParsing != null)
      'enableLlmLayoutParsing': enableLlmLayoutParsing!,
    if (enableTableAnnotation != null)
      'enableTableAnnotation': enableTableAnnotation!,
    if (returnBoundingBoxes != null)
      'returnBoundingBoxes': returnBoundingBoxes!,
    if (returnImages != null) 'returnImages': returnImages!,
  };
}

/// Serving config for chunking.
class GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig {
  /// The percentile of cosine dissimilarity that must be exceeded between a
  /// group of tokens and the next.
  ///
  /// The smaller this number is, the more chunks will be generated. THIS FIELD
  /// IS NOT YET USED.
  ///
  /// Optional.
  core.int? breakpointPercentileThreshold;

  /// The chunk sizes to use when splitting documents, in order of level.
  ///
  /// Optional.
  core.int? chunkSize;

  /// Whether or not to include ancestor headings when splitting.
  ///
  /// Optional.
  core.bool? includeAncestorHeadings;

  /// The number of tokens to group together when evaluating semantic
  /// similarity.
  ///
  /// THIS FIELD IS NOT YET USED.
  ///
  /// Optional.
  core.bool? semanticChunkingGroupSize;

  GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig({
    this.breakpointPercentileThreshold,
    this.chunkSize,
    this.includeAncestorHeadings,
    this.semanticChunkingGroupSize,
  });

  GoogleCloudDocumentaiV1beta3ProcessOptionsLayoutConfigChunkingConfig.fromJson(
    core.Map json_,
  ) : this(
        breakpointPercentileThreshold:
            json_['breakpointPercentileThreshold'] as core.int?,
        chunkSize: json_['chunkSize'] as core.int?,
        includeAncestorHeadings: json_['includeAncestorHeadings'] as core.bool?,
        semanticChunkingGroupSize:
            json_['semanticChunkingGroupSize'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (breakpointPercentileThreshold != null)
      'breakpointPercentileThreshold': breakpointPercentileThreshold!,
    if (chunkSize != null) 'chunkSize': chunkSize!,
    if (includeAncestorHeadings != null)
      'includeAncestorHeadings': includeAncestorHeadings!,
    if (semanticChunkingGroupSize != null)
      'semanticChunkingGroupSize': semanticChunkingGroupSize!,
  };
}

/// Request message for the ProcessDocument method.
class GoogleCloudDocumentaiV1beta3ProcessRequest {
  /// The document payload, the content and mime_type fields must be set.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3Document? document;

  /// Specifies which fields to include in the ProcessResponse.document output.
  ///
  /// Only supports top-level document and pages field, so it must be in the
  /// form of `{document_field_name}` or `pages.{page_field_name}`.
  core.String? fieldMask;

  /// A raw document on Google Cloud Storage.
  GoogleCloudDocumentaiV1beta3GcsDocument? gcsDocument;

  /// Option to remove images from the document.
  ///
  /// Optional.
  core.bool? imagelessMode;

  /// An inline document proto.
  GoogleCloudDocumentaiV1beta3Document? inlineDocument;

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
  GoogleCloudDocumentaiV1beta3ProcessOptions? processOptions;

  /// A raw document content (bytes).
  GoogleCloudDocumentaiV1beta3RawDocument? rawDocument;

  /// Whether human review should be skipped for this request.
  ///
  /// Default to `false`.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1beta3ProcessRequest({
    this.document,
    this.fieldMask,
    this.gcsDocument,
    this.imagelessMode,
    this.inlineDocument,
    this.labels,
    this.processOptions,
    this.rawDocument,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        fieldMask: json_['fieldMask'] as core.String?,
        gcsDocument:
            json_.containsKey('gcsDocument')
                ? GoogleCloudDocumentaiV1beta3GcsDocument.fromJson(
                  json_['gcsDocument'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        imagelessMode: json_['imagelessMode'] as core.bool?,
        inlineDocument:
            json_.containsKey('inlineDocument')
                ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['inlineDocument']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        processOptions:
            json_.containsKey('processOptions')
                ? GoogleCloudDocumentaiV1beta3ProcessOptions.fromJson(
                  json_['processOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        rawDocument:
            json_.containsKey('rawDocument')
                ? GoogleCloudDocumentaiV1beta3RawDocument.fromJson(
                  json_['rawDocument'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        skipHumanReview: json_['skipHumanReview'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (fieldMask != null) 'fieldMask': fieldMask!,
    if (gcsDocument != null) 'gcsDocument': gcsDocument!,
    if (imagelessMode != null) 'imagelessMode': imagelessMode!,
    if (inlineDocument != null) 'inlineDocument': inlineDocument!,
    if (labels != null) 'labels': labels!,
    if (processOptions != null) 'processOptions': processOptions!,
    if (rawDocument != null) 'rawDocument': rawDocument!,
    if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
  };
}

/// Response message for the ProcessDocument method.
class GoogleCloudDocumentaiV1beta3ProcessResponse {
  /// The document payload, will populate fields based on the processor's
  /// behavior.
  GoogleCloudDocumentaiV1beta3Document? document;

  /// The name of the operation triggered by the processed document.
  ///
  /// If the human review process isn't triggered, this field is empty. It has
  /// the same response type and metadata as the long-running operation returned
  /// by ReviewDocument.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? humanReviewOperation;

  /// The status of human review on the processed document.
  GoogleCloudDocumentaiV1beta3HumanReviewStatus? humanReviewStatus;

  GoogleCloudDocumentaiV1beta3ProcessResponse({
    this.document,
    this.humanReviewOperation,
    this.humanReviewStatus,
  });

  GoogleCloudDocumentaiV1beta3ProcessResponse.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        humanReviewOperation: json_['humanReviewOperation'] as core.String?,
        humanReviewStatus:
            json_.containsKey('humanReviewStatus')
                ? GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(
                  json_['humanReviewStatus']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (humanReviewOperation != null)
      'humanReviewOperation': humanReviewOperation!,
    if (humanReviewStatus != null) 'humanReviewStatus': humanReviewStatus!,
  };
}

/// The first-class citizen for Document AI.
///
/// Each processor defines how to extract structural information from a
/// document.
class GoogleCloudDocumentaiV1beta3Processor {
  /// The time the processor was created.
  ///
  /// Output only.
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
  core.List<GoogleCloudDocumentaiV1beta3ProcessorVersionAlias>?
  processorVersionAliases;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

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

  GoogleCloudDocumentaiV1beta3Processor({
    this.createTime,
    this.defaultProcessorVersion,
    this.displayName,
    this.kmsKeyName,
    this.name,
    this.processEndpoint,
    this.processorVersionAliases,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3Processor.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        defaultProcessorVersion:
            json_['defaultProcessorVersion'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        kmsKeyName: json_['kmsKeyName'] as core.String?,
        name: json_['name'] as core.String?,
        processEndpoint: json_['processEndpoint'] as core.String?,
        processorVersionAliases:
            (json_['processorVersionAliases'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3ProcessorVersionAlias.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
        type: json_['type'] as core.String?,
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
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (state != null) 'state': state!,
    if (type != null) 'type': type!,
  };
}

/// A processor type is responsible for performing a certain document
/// understanding task on a certain type of document.
class GoogleCloudDocumentaiV1beta3ProcessorType {
  /// Whether the processor type allows creation.
  ///
  /// If true, users can create a processor of this processor type. Otherwise,
  /// users need to request access.
  core.bool? allowCreation;

  /// The locations in which this processor is available.
  core.List<GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo>?
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

  GoogleCloudDocumentaiV1beta3ProcessorType({
    this.allowCreation,
    this.availableLocations,
    this.category,
    this.launchStage,
    this.name,
    this.sampleDocumentUris,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(core.Map json_)
    : this(
        allowCreation: json_['allowCreation'] as core.bool?,
        availableLocations:
            (json_['availableLocations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        category: json_['category'] as core.String?,
        launchStage: json_['launchStage'] as core.String?,
        name: json_['name'] as core.String?,
        sampleDocumentUris:
            (json_['sampleDocumentUris'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowCreation != null) 'allowCreation': allowCreation!,
    if (availableLocations != null) 'availableLocations': availableLocations!,
    if (category != null) 'category': category!,
    if (launchStage != null) 'launchStage': launchStage!,
    if (name != null) 'name': name!,
    if (sampleDocumentUris != null) 'sampleDocumentUris': sampleDocumentUris!,
    if (type != null) 'type': type!,
  };
}

/// The location information about where the processor is available.
typedef GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo =
    $ProcessorTypeLocationInfo;

/// A processor version is an implementation of a processor.
///
/// Each processor can have multiple versions, pretrained by Google internally
/// or uptrained by the customer. A processor can only have one default version
/// at a time. Its document-processing behavior is defined by that version.
class GoogleCloudDocumentaiV1beta3ProcessorVersion {
  /// The time the processor version was created.
  ///
  /// Output only.
  core.String? createTime;

  /// If set, information about the eventual deprecation of this version.
  ///
  /// Output only.
  GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo? deprecationInfo;

  /// The display name of the processor version.
  core.String? displayName;

  /// The schema of the processor version.
  ///
  /// Describes the output.
  ///
  /// Output only.
  GoogleCloudDocumentaiV1beta3DocumentSchema? documentSchema;

  /// Information about Generative AI model-based processor versions.
  ///
  /// Output only.
  GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo? genAiModelInfo;

  /// Denotes that this `ProcessorVersion` is managed by Google.
  ///
  /// Output only.
  core.bool? googleManaged;

  /// The KMS key name used for encryption.
  ///
  /// Output only.
  core.String? kmsKeyName;

  /// The KMS key version with which data is encrypted.
  ///
  /// Output only.
  core.String? kmsKeyVersionName;

  /// The most recently invoked evaluation for the processor version.
  ///
  /// Output only.
  GoogleCloudDocumentaiV1beta3EvaluationReference? latestEvaluation;

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

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

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

  GoogleCloudDocumentaiV1beta3ProcessorVersion({
    this.createTime,
    this.deprecationInfo,
    this.displayName,
    this.documentSchema,
    this.genAiModelInfo,
    this.googleManaged,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.latestEvaluation,
    this.modelType,
    this.name,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
  });

  GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        deprecationInfo:
            json_.containsKey('deprecationInfo')
                ? GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo.fromJson(
                  json_['deprecationInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        displayName: json_['displayName'] as core.String?,
        documentSchema:
            json_.containsKey('documentSchema')
                ? GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        genAiModelInfo:
            json_.containsKey('genAiModelInfo')
                ? GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo.fromJson(
                  json_['genAiModelInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        googleManaged: json_['googleManaged'] as core.bool?,
        kmsKeyName: json_['kmsKeyName'] as core.String?,
        kmsKeyVersionName: json_['kmsKeyVersionName'] as core.String?,
        latestEvaluation:
            json_.containsKey('latestEvaluation')
                ? GoogleCloudDocumentaiV1beta3EvaluationReference.fromJson(
                  json_['latestEvaluation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        modelType: json_['modelType'] as core.String?,
        name: json_['name'] as core.String?,
        satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
        satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (deprecationInfo != null) 'deprecationInfo': deprecationInfo!,
    if (displayName != null) 'displayName': displayName!,
    if (documentSchema != null) 'documentSchema': documentSchema!,
    if (genAiModelInfo != null) 'genAiModelInfo': genAiModelInfo!,
    if (googleManaged != null) 'googleManaged': googleManaged!,
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
    if (kmsKeyVersionName != null) 'kmsKeyVersionName': kmsKeyVersionName!,
    if (latestEvaluation != null) 'latestEvaluation': latestEvaluation!,
    if (modelType != null) 'modelType': modelType!,
    if (name != null) 'name': name!,
    if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
    if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
    if (state != null) 'state': state!,
  };
}

/// Contains the alias and the aliased resource name of processor version.
typedef GoogleCloudDocumentaiV1beta3ProcessorVersionAlias =
    $ProcessorVersionAlias;

/// Information about the upcoming deprecation of this processor version.
typedef GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo =
    $ProcessorVersionDeprecationInfo;

/// Information about Generative AI model-based processor versions.
class GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo {
  /// Information for a custom Generative AI model created by the user.
  GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo?
  customGenAiModelInfo;

  /// Information for a pretrained Google-managed foundation model.
  GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo?
  foundationGenAiModelInfo;

  GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo({
    this.customGenAiModelInfo,
    this.foundationGenAiModelInfo,
  });

  GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfo.fromJson(
    core.Map json_,
  ) : this(
        customGenAiModelInfo:
            json_.containsKey('customGenAiModelInfo')
                ? GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo.fromJson(
                  json_['customGenAiModelInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        foundationGenAiModelInfo:
            json_.containsKey('foundationGenAiModelInfo')
                ? GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo.fromJson(
                  json_['foundationGenAiModelInfo']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customGenAiModelInfo != null)
      'customGenAiModelInfo': customGenAiModelInfo!,
    if (foundationGenAiModelInfo != null)
      'foundationGenAiModelInfo': foundationGenAiModelInfo!,
  };
}

/// Information for a custom Generative AI model created by the user.
///
/// These are created with `Create New Version` in either the `Call foundation
/// model` or `Fine tuning` tabs.
typedef GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoCustomGenAiModelInfo =
    $ProcessorVersionGenAiModelInfoCustomGenAiModelInfo;

/// Information for a pretrained Google-managed foundation model.
typedef GoogleCloudDocumentaiV1beta3ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo =
    $ProcessorVersionGenAiModelInfoFoundationGenAiModelInfo;

/// Metadata about a property.
class GoogleCloudDocumentaiV1beta3PropertyMetadata {
  /// Field extraction metadata on the property.
  GoogleCloudDocumentaiV1beta3FieldExtractionMetadata? fieldExtractionMetadata;

  /// Whether the property should be considered as "inactive".
  core.bool? inactive;

  GoogleCloudDocumentaiV1beta3PropertyMetadata({
    this.fieldExtractionMetadata,
    this.inactive,
  });

  GoogleCloudDocumentaiV1beta3PropertyMetadata.fromJson(core.Map json_)
    : this(
        fieldExtractionMetadata:
            json_.containsKey('fieldExtractionMetadata')
                ? GoogleCloudDocumentaiV1beta3FieldExtractionMetadata.fromJson(
                  json_['fieldExtractionMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inactive: json_['inactive'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldExtractionMetadata != null)
      'fieldExtractionMetadata': fieldExtractionMetadata!,
    if (inactive != null) 'inactive': inactive!,
  };
}

/// Payload message of raw document content (bytes).
typedef GoogleCloudDocumentaiV1beta3RawDocument = $RawDocument;

/// Request message for the ReviewDocument method.
class GoogleCloudDocumentaiV1beta3ReviewDocumentRequest {
  /// The document that needs human review.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1beta3Document? document;

  /// The document schema of the human review task.
  GoogleCloudDocumentaiV1beta3DocumentSchema? documentSchema;

  /// Whether the validation should be performed on the ad-hoc review request.
  core.bool? enableSchemaValidation;

  /// An inline document proto.
  GoogleCloudDocumentaiV1beta3Document? inlineDocument;

  /// The priority of the human review task.
  /// Possible string values are:
  /// - "DEFAULT" : The default priority level.
  /// - "URGENT" : The urgent priority level. The labeling manager should
  /// allocate labeler resource to the urgent task queue to respect this
  /// priority level.
  core.String? priority;

  GoogleCloudDocumentaiV1beta3ReviewDocumentRequest({
    this.document,
    this.documentSchema,
    this.enableSchemaValidation,
    this.inlineDocument,
    this.priority,
  });

  GoogleCloudDocumentaiV1beta3ReviewDocumentRequest.fromJson(core.Map json_)
    : this(
        document:
            json_.containsKey('document')
                ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        documentSchema:
            json_.containsKey('documentSchema')
                ? GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enableSchemaValidation: json_['enableSchemaValidation'] as core.bool?,
        inlineDocument:
            json_.containsKey('inlineDocument')
                ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['inlineDocument']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        priority: json_['priority'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (document != null) 'document': document!,
    if (documentSchema != null) 'documentSchema': documentSchema!,
    if (enableSchemaValidation != null)
      'enableSchemaValidation': enableSchemaValidation!,
    if (inlineDocument != null) 'inlineDocument': inlineDocument!,
    if (priority != null) 'priority': priority!,
  };
}

/// The revision reference specifies which revision on the document to read.
class GoogleCloudDocumentaiV1beta3RevisionRef {
  /// Reads the revision generated by the processor version.
  ///
  /// The format takes the full resource name of processor version.
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  core.String? latestProcessorVersion;

  /// Reads the revision by the predefined case.
  /// Possible string values are:
  /// - "REVISION_CASE_UNSPECIFIED" : Unspecified case, fall back to read the
  /// `LATEST_HUMAN_REVIEW`.
  /// - "LATEST_HUMAN_REVIEW" : The latest revision made by a human.
  /// - "LATEST_TIMESTAMP" : The latest revision based on timestamp.
  /// - "BASE_OCR_REVISION" : The first (OCR) revision.
  core.String? revisionCase;

  /// Reads the revision given by the id.
  core.String? revisionId;

  GoogleCloudDocumentaiV1beta3RevisionRef({
    this.latestProcessorVersion,
    this.revisionCase,
    this.revisionId,
  });

  GoogleCloudDocumentaiV1beta3RevisionRef.fromJson(core.Map json_)
    : this(
        latestProcessorVersion: json_['latestProcessorVersion'] as core.String?,
        revisionCase: json_['revisionCase'] as core.String?,
        revisionId: json_['revisionId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (latestProcessorVersion != null)
      'latestProcessorVersion': latestProcessorVersion!,
    if (revisionCase != null) 'revisionCase': revisionCase!,
    if (revisionId != null) 'revisionId': revisionId!,
  };
}

/// Request message for the SetDefaultProcessorVersion method.
typedef GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest =
    $SetDefaultProcessorVersionRequest;

/// Metadata for document summarization.
class GoogleCloudDocumentaiV1beta3SummaryOptions {
  /// The format the summary should be in.
  /// Possible string values are:
  /// - "FORMAT_UNSPECIFIED" : Default.
  /// - "PARAGRAPH" : Format the output in paragraphs.
  /// - "BULLETS" : Format the output in bullets.
  core.String? format;

  /// How long the summary should be.
  /// Possible string values are:
  /// - "LENGTH_UNSPECIFIED" : Default.
  /// - "BRIEF" : A brief summary of one or two sentences.
  /// - "MODERATE" : A paragraph-length summary.
  /// - "COMPREHENSIVE" : The longest option available.
  core.String? length;

  GoogleCloudDocumentaiV1beta3SummaryOptions({this.format, this.length});

  GoogleCloudDocumentaiV1beta3SummaryOptions.fromJson(core.Map json_)
    : this(
        format: json_['format'] as core.String?,
        length: json_['length'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (format != null) 'format': format!,
    if (length != null) 'length': length!,
  };
}

/// Request message for the TrainProcessorVersion method.
class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest {
  /// The processor version to use as a base for training.
  ///
  /// This processor version must be a child of `parent`. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`.
  ///
  /// Optional.
  core.String? baseProcessorVersion;

  /// Options to control Custom Document Extraction (CDE) Processor.
  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions?
  customDocumentExtractionOptions;

  /// The schema the processor version will be trained with.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DocumentSchema? documentSchema;

  /// Options to control foundation model tuning of a processor.
  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions?
  foundationModelTuningOptions;

  /// The input data used to train the ProcessorVersion.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData? inputData;

  /// The processor version to be created.
  ///
  /// Required.
  GoogleCloudDocumentaiV1beta3ProcessorVersion? processorVersion;

  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest({
    this.baseProcessorVersion,
    this.customDocumentExtractionOptions,
    this.documentSchema,
    this.foundationModelTuningOptions,
    this.inputData,
    this.processorVersion,
  });

  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest.fromJson(
    core.Map json_,
  ) : this(
        baseProcessorVersion: json_['baseProcessorVersion'] as core.String?,
        customDocumentExtractionOptions:
            json_.containsKey('customDocumentExtractionOptions')
                ? GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions.fromJson(
                  json_['customDocumentExtractionOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        documentSchema:
            json_.containsKey('documentSchema')
                ? GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        foundationModelTuningOptions:
            json_.containsKey('foundationModelTuningOptions')
                ? GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions.fromJson(
                  json_['foundationModelTuningOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputData:
            json_.containsKey('inputData')
                ? GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData.fromJson(
                  json_['inputData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        processorVersion:
            json_.containsKey('processorVersion')
                ? GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(
                  json_['processorVersion']
                      as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestCustomDocumentExtractionOptions =
    $TrainProcessorVersionRequestCustomDocumentExtractionOptions;

/// Options to control foundation model tuning of the processor.
typedef GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestFoundationModelTuningOptions =
    $TrainProcessorVersionRequestFoundationModelTuningOptions;

/// The input data used to train a new ProcessorVersion.
class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData {
  /// The documents used for testing the trained version.
  GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig? testDocuments;

  /// The documents used for training the new version.
  GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig? trainingDocuments;

  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData({
    this.testDocuments,
    this.trainingDocuments,
  });

  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData.fromJson(
    core.Map json_,
  ) : this(
        testDocuments:
            json_.containsKey('testDocuments')
                ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
                  json_['testDocuments'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        trainingDocuments:
            json_.containsKey('trainingDocuments')
                ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
                  json_['trainingDocuments']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (testDocuments != null) 'testDocuments': testDocuments!,
    if (trainingDocuments != null) 'trainingDocuments': trainingDocuments!,
  };
}

/// Request message for the UndeployProcessorVersion method.
typedef GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest = $Empty;

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
typedef GoogleCloudDocumentaiV1beta3Vertex = $Vertex01;

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
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudLocationLocation.fromJson(
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
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations:
            (json_['operations'] as core.List?)
                ?.map(
                  (value) => GoogleLongrunningOperation.fromJson(
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
        done: json_['done'] as core.bool?,
        error:
            json_.containsKey('error')
                ? GoogleRpcStatus.fromJson(
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
typedef GoogleRpcStatus = $Status00;

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
        day: json_['day'] as core.int?,
        hours: json_['hours'] as core.int?,
        minutes: json_['minutes'] as core.int?,
        month: json_['month'] as core.int?,
        nanos: json_['nanos'] as core.int?,
        seconds: json_['seconds'] as core.int?,
        timeZone:
            json_.containsKey('timeZone')
                ? GoogleTypeTimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        utcOffset: json_['utcOffset'] as core.String?,
        year: json_['year'] as core.int?,
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

/// Represents a postal address, such as for postal delivery or payments
/// addresses.
///
/// With a postal address, a postal service can deliver items to a premise, P.O.
/// box, or similar. A postal address is not intended to model geographical
/// locations like roads, towns, or mountains. In typical usage, an address
/// would be created by user input or from importing existing data, depending on
/// the type of process. Advice on address input or editing: - Use an
/// internationalization-ready address widget such as
/// https://github.com/google/libaddressinput. - Users should not be presented
/// with UI elements for input or editing of fields outside countries where that
/// field is used. For more guidance on how to use this schema, see:
/// https://support.google.com/business/answer/6397478.
typedef GoogleTypePostalAddress = $PostalAddress00;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef GoogleTypeTimeZone = $TimeZone;
