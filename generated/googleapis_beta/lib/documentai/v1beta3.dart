// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
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
///       - [ProjectsLocationsProcessorsHumanReviewConfigResource]
///       - [ProjectsLocationsProcessorsProcessorVersionsResource]
///         - [ProjectsLocationsProcessorsProcessorVersionsEvaluationsResource]
library documentai.v1beta3;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

// ignore: deprecated_member_use_from_same_package
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

  DocumentApi(http.Client client,
      {core.String rootUrl = 'https://documentai.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
  /// Note that we do not use ListProcessorTypes here because it is not
  /// paginated.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project of processor type to list. The available
  /// processor types may depend on the allow-listing on projects. Format:
  /// `projects/{project}/locations/{location}`
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
      fetchProcessorTypes(
    core.String parent, {
    core.String? $fields,
  }) async {
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + '/locations';

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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name') + ':cancel';

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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

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
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProcessorTypesResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the processor types that exist.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location of processor type to list. The available
  /// processor types may depend on the allow-listing on projects. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of processor types to return. If
  /// unspecified, at most 100 processor types will be returned. The maximum
  /// value is 500; values above 500 will be coerced to 500.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a processor from the type processor that the user chose.
  ///
  /// The processor will be at "ENABLED" state by default after its creation.
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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

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
  /// at most 50 processors will be returned. The maximum value is 100; values
  /// above 100 will be coerced to 100.
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
    GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest request,
    core.String processor, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' +
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
    GoogleCloudDocumentaiV1beta3ReviewDocumentRequest request,
    core.String humanReviewConfig, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' +
        core.Uri.encodeFull('$humanReviewConfig') +
        ':reviewDocument';

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

    final url_ = 'v1beta3/' + core.Uri.encodeFull('$name');

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
    GoogleCloudDocumentaiV1beta3EvaluateProcessorVersionRequest request,
    core.String processorVersion, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta3/' +
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
  /// unspecified, at most 10 processor versions will be returned. The maximum
  /// value is 20; values above 20 will be coerced to 20.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Trains a new processor version.
  ///
  /// Operation metadata is returned as
  /// cloud_documentai_core.TrainProcessorVersionMetadata.
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

    final url_ = 'v1beta3/' +
        core.Uri.encodeFull('$parent') +
        '/processorVersions:train';

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
  /// [pageSize] - The standard list page size. If unspecified, at most 5
  /// evaluations will be returned. The maximum value is 100; values above 100
  /// will be coerced to 100.
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Encodes the detailed information of a barcode.
class GoogleCloudDocumentaiV1beta3Barcode {
  /// Format of a barcode.
  ///
  /// The supported formats are: - `CODE_128`: Code 128 type. - `CODE_39`: Code
  /// 39 type. - `CODE_93`: Code 93 type. - `CODABAR`: Codabar type. -
  /// `DATA_MATRIX`: 2D Data Matrix type. - `ITF`: ITF type. - `EAN_13`: EAN-13
  /// type. - `EAN_8`: EAN-8 type. - `QR_CODE`: 2D QR code type. - `UPC_A`:
  /// UPC-A type. - `UPC_E`: UPC-E type. - `PDF417`: PDF417 type. - `AZTEC`: 2D
  /// Aztec code type. - `DATABAR`: GS1 DataBar code type.
  core.String? format;

  /// Raw value encoded in the barcode.
  ///
  /// For example: `'MEBKM:TITLE:Google;URL:https://www.google.com;;'`.
  core.String? rawValue;

  /// Value format describes the format of the value that a barcode encodes.
  ///
  /// The supported formats are: - `CONTACT_INFO`: Contact information. -
  /// `EMAIL`: Email address. - `ISBN`: ISBN identifier. - `PHONE`: Phone
  /// number. - `PRODUCT`: Product. - `SMS`: SMS message. - `TEXT`: Text string.
  /// - `URL`: URL address. - `WIFI`: Wifi information. - `GEO`:
  /// Geo-localization. - `CALENDAR_EVENT`: Calendar event. - `DRIVER_LICENSE`:
  /// Driver's license.
  core.String? valueFormat;

  GoogleCloudDocumentaiV1beta3Barcode({
    this.format,
    this.rawValue,
    this.valueFormat,
  });

  GoogleCloudDocumentaiV1beta3Barcode.fromJson(core.Map json_)
      : this(
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          rawValue: json_.containsKey('rawValue')
              ? json_['rawValue'] as core.String
              : null,
          valueFormat: json_.containsKey('valueFormat')
              ? json_['valueFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (format != null) 'format': format!,
        if (rawValue != null) 'rawValue': rawValue!,
        if (valueFormat != null) 'valueFormat': valueFormat!,
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
          gcsDocuments: json_.containsKey('gcsDocuments')
              ? GoogleCloudDocumentaiV1beta3GcsDocuments.fromJson(
                  json_['gcsDocuments'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsPrefix: json_.containsKey('gcsPrefix')
              ? GoogleCloudDocumentaiV1beta3GcsPrefix.fromJson(
                  json_['gcsPrefix'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDocuments != null) 'gcsDocuments': gcsDocuments!,
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
      };
}

/// Request message for batch process document method.
class GoogleCloudDocumentaiV1beta3BatchProcessRequest {
  /// The overall output config for batch process.
  GoogleCloudDocumentaiV1beta3DocumentOutputConfig? documentOutputConfig;

  /// The input config for each single document in the batch process.
  core.List<GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig>?
      inputConfigs;

  /// The input documents for batch process.
  GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig? inputDocuments;

  /// The overall output config for batch process.
  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig?
      outputConfig;

  /// Whether Human Review feature should be skipped for this request.
  ///
  /// Default to false.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1beta3BatchProcessRequest({
    this.documentOutputConfig,
    this.inputConfigs,
    this.inputDocuments,
    this.outputConfig,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1beta3BatchProcessRequest.fromJson(core.Map json_)
      : this(
          documentOutputConfig: json_.containsKey('documentOutputConfig')
              ? GoogleCloudDocumentaiV1beta3DocumentOutputConfig.fromJson(
                  json_['documentOutputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputConfigs: json_.containsKey('inputConfigs')
              ? (json_['inputConfigs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inputDocuments: json_.containsKey('inputDocuments')
              ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
                  json_['inputDocuments']
                      as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: json_.containsKey('outputConfig')
              ? GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig
                  .fromJson(json_['outputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          skipHumanReview: json_.containsKey('skipHumanReview')
              ? json_['skipHumanReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentOutputConfig != null)
          'documentOutputConfig': documentOutputConfig!,
        if (inputConfigs != null) 'inputConfigs': inputConfigs!,
        if (inputDocuments != null) 'inputDocuments': inputDocuments!,
        if (outputConfig != null) 'outputConfig': outputConfig!,
        if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
      };
}

/// The message for input config in batch process.
class GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig {
  /// The Cloud Storage location as the source of the document.
  core.String? gcsSource;

  /// Mimetype of the input.
  ///
  /// If the input is a raw document, the supported mimetypes are
  /// application/pdf, image/tiff, and image/gif. If the input is a \[Document\]
  /// proto, the type should be application/json.
  core.String? mimeType;

  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig({
    this.gcsSource,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchInputConfig.fromJson(
      core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? json_['gcsSource'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// The message for output config in batch process.
class GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig {
  /// The output Cloud Storage directory to put the processed documents.
  core.String? gcsDestination;

  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig({
    this.gcsDestination,
  });

  GoogleCloudDocumentaiV1beta3BatchProcessRequestBatchOutputConfig.fromJson(
      core.Map json_)
      : this(
          gcsDestination: json_.containsKey('gcsDestination')
              ? json_['gcsDestination'] as core.String
              : null,
        );

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
          normalizedVertices: json_.containsKey('normalizedVertices')
              ? (json_['normalizedVertices'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vertices: json_.containsKey('vertices')
              ? (json_['vertices'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1beta3Vertex.fromJson(
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

/// Request message for the deploy processor version method.
typedef GoogleCloudDocumentaiV1beta3DeployProcessorVersionRequest = $Empty;

/// Request message for the disable processor method.
typedef GoogleCloudDocumentaiV1beta3DisableProcessorRequest = $Empty;

/// Document represents the canonical document resource in Document AI.
///
/// It is an interchange format that provides insights into documents and allows
/// for collaboration between users and Document AI to iterate and optimize for
/// quality.
class GoogleCloudDocumentaiV1beta3Document {
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
  core.List<GoogleCloudDocumentaiV1beta3DocumentEntity>? entities;

  /// Placeholder.
  ///
  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1beta3DocumentEntityRelation>?
      entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus? error;

  /// An IANA published MIME type (also referred to as media type).
  ///
  /// For more information, see
  /// https://www.iana.org/assignments/media-types/media-types.xhtml.
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

  /// Placeholder.
  ///
  /// Styles for the Document.text.
  core.List<GoogleCloudDocumentaiV1beta3DocumentStyle>? textStyles;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. See
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris)
  /// for more info.
  ///
  /// Optional.
  core.String? uri;

  GoogleCloudDocumentaiV1beta3Document({
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

  GoogleCloudDocumentaiV1beta3Document.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityRelations: json_.containsKey('entityRelations')
              ? (json_['entityRelations'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentEntityRelation
                          .fromJson(
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
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisions: json_.containsKey('revisions')
              ? (json_['revisions'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentRevision.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shardInfo: json_.containsKey('shardInfo')
              ? GoogleCloudDocumentaiV1beta3DocumentShardInfo.fromJson(
                  json_['shardInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          textChanges: json_.containsKey('textChanges')
              ? (json_['textChanges'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentTextChange.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textStyles: json_.containsKey('textStyles')
              ? (json_['textStyles'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentStyle.fromJson(
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
              ? GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue
                  .fromJson(json_['normalizedValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pageAnchor: json_.containsKey('pageAnchor')
              ? GoogleCloudDocumentaiV1beta3DocumentPageAnchor.fromJson(
                  json_['pageAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          redacted: json_.containsKey('redacted')
              ? json_['redacted'] as core.bool
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
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

  /// An optional field to store a normalized string.
  ///
  /// For some entity types, one of respective `structured_value` fields may
  /// also be populated. Also not all the types of `structured_value` will be
  /// normalized. For example, some processors may not generate float or int
  /// normalized text by default. Below are sample formats mapped to structured
  /// values. - Money/Currency type (`money_value`) is in the ISO 4217 text
  /// format. - Date type (`date_value`) is in the ISO 8601 text format. -
  /// Datetime type (`datetime_value`) is in the ISO 8601 text format.
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
    this.text,
  });

  GoogleCloudDocumentaiV1beta3DocumentEntityNormalizedValue.fromJson(
      core.Map json_)
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
class GoogleCloudDocumentaiV1beta3DocumentEntityRelation {
  /// Object entity id.
  core.String? objectId;

  /// Relationship description.
  core.String? relation;

  /// Subject entity id.
  core.String? subjectId;

  GoogleCloudDocumentaiV1beta3DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  GoogleCloudDocumentaiV1beta3DocumentEntityRelation.fromJson(core.Map json_)
      : this(
          objectId: json_.containsKey('objectId')
              ? json_['objectId'] as core.String
              : null,
          relation: json_.containsKey('relation')
              ? json_['relation'] as core.String
              : null,
          subjectId: json_.containsKey('subjectId')
              ? json_['subjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
        if (relation != null) 'relation': relation!,
        if (subjectId != null) 'subjectId': subjectId!,
      };
}

/// Config that controls the output of documents.
///
/// All documents will be written as a JSON file.
class GoogleCloudDocumentaiV1beta3DocumentOutputConfig {
  /// Output config to write the results to Cloud Storage.
  GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig?
      gcsOutputConfig;

  GoogleCloudDocumentaiV1beta3DocumentOutputConfig({
    this.gcsOutputConfig,
  });

  GoogleCloudDocumentaiV1beta3DocumentOutputConfig.fromJson(core.Map json_)
      : this(
          gcsOutputConfig: json_.containsKey('gcsOutputConfig')
              ? GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig
                  .fromJson(json_['gcsOutputConfig']
                      as core.Map<core.String, core.dynamic>)
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

  GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig({
    this.fieldMask,
    this.gcsUri,
  });

  GoogleCloudDocumentaiV1beta3DocumentOutputConfigGcsOutputConfig.fromJson(
      core.Map json_)
      : this(
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          gcsUri: json_.containsKey('gcsUri')
              ? json_['gcsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (gcsUri != null) 'gcsUri': gcsUri!,
      };
}

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

  /// Image Quality Scores.
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
          blocks: json_.containsKey('blocks')
              ? (json_['blocks'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageBlock.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedBarcodes: json_.containsKey('detectedBarcodes')
              ? (json_['detectedBarcodes'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedBarcode
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimension: json_.containsKey('dimension')
              ? GoogleCloudDocumentaiV1beta3DocumentPageDimension.fromJson(
                  json_['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          formFields: json_.containsKey('formFields')
              ? (json_['formFields'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageFormField
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: json_.containsKey('image')
              ? GoogleCloudDocumentaiV1beta3DocumentPageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          imageQualityScores: json_.containsKey('imageQualityScores')
              ? GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores
                  .fromJson(json_['imageQualityScores']
                      as core.Map<core.String, core.dynamic>)
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          lines: json_.containsKey('lines')
              ? (json_['lines'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageLine.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageNumber: json_.containsKey('pageNumber')
              ? json_['pageNumber'] as core.int
              : null,
          paragraphs: json_.containsKey('paragraphs')
              ? (json_['paragraphs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageParagraph
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          symbols: json_.containsKey('symbols')
              ? (json_['symbols'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageSymbol.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tables: json_.containsKey('tables')
              ? (json_['tables'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageTable.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: json_.containsKey('tokens')
              ? (json_['tokens'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transforms: json_.containsKey('transforms')
              ? (json_['transforms'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageMatrix.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          visualElements: json_.containsKey('visualElements')
              ? (json_['visualElements'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageVisualElement
                          .fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef>? pageRefs;

  GoogleCloudDocumentaiV1beta3DocumentPageAnchor({
    this.pageRefs,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageAnchor.fromJson(core.Map json_)
      : this(
          pageRefs: json_.containsKey('pageRefs')
              ? (json_['pageRefs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageRefs != null) 'pageRefs': pageRefs!,
      };
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1beta3DocumentPageAnchorPageRef {
  /// Identifies the bounding polygon of a layout element on the page.
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

  /// Index into the Document.pages element, for example using Document.pages to
  /// locate the related page element.
  ///
  /// This field is skipped when its value is the default 0. See
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
          boundingPoly: json_.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta3DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageBlock.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
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
      core.Map json_)
      : this(
          barcode: json_.containsKey('barcode')
              ? GoogleCloudDocumentaiV1beta3Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (barcode != null) 'barcode': barcode!,
        if (layout != null) 'layout': layout!,
      };
}

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage {
  /// Confidence of detected language.
  ///
  /// Range `[0, 1]`.
  core.double? confidence;

  /// The BCP-47 language code, such as `en-US` or `sr-Latn`.
  ///
  /// For more information, see
  /// https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage.fromJson(
      core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Dimension for the page.
class GoogleCloudDocumentaiV1beta3DocumentPageDimension {
  /// Page height.
  core.double? height;

  /// Dimension unit.
  core.String? unit;

  /// Page width.
  core.double? width;

  GoogleCloudDocumentaiV1beta3DocumentPageDimension({
    this.height,
    this.unit,
    this.width,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageDimension.fromJson(core.Map json_)
      : this(
          height: json_.containsKey('height')
              ? (json_['height'] as core.num).toDouble()
              : null,
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
          width: json_.containsKey('width')
              ? (json_['width'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (unit != null) 'unit': unit!,
        if (width != null) 'width': width!,
      };
}

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
  /// Current valid values are: - blank (this indicates the field_value is
  /// normal text) - "unfilled_checkbox" - "filled_checkbox"
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
          correctedKeyText: json_.containsKey('correctedKeyText')
              ? json_['correctedKeyText'] as core.String
              : null,
          correctedValueText: json_.containsKey('correctedValueText')
              ? json_['correctedValueText'] as core.String
              : null,
          fieldName: json_.containsKey('fieldName')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['fieldName'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldValue: json_.containsKey('fieldValue')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['fieldValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nameDetectedLanguages: json_.containsKey('nameDetectedLanguages')
              ? (json_['nameDetectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          valueDetectedLanguages: json_.containsKey('valueDetectedLanguages')
              ? (json_['valueDetectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
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
class GoogleCloudDocumentaiV1beta3DocumentPageImage {
  /// Raw byte content of the image.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int? height;

  /// Encoding mime type for the image.
  core.String? mimeType;

  /// Width of the image in pixels.
  core.int? width;

  GoogleCloudDocumentaiV1beta3DocumentPageImage({
    this.content,
    this.height,
    this.mimeType,
    this.width,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageImage.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (height != null) 'height': height!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (width != null) 'width': width!,
      };
}

/// Image Quality Scores for the page image
class GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores {
  /// A list of detected defects.
  core.List<
          GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect>?
      detectedDefects;

  /// The overall quality score.
  ///
  /// Range `[0, 1]` where 1 is perfect quality.
  core.double? qualityScore;

  GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores({
    this.detectedDefects,
    this.qualityScore,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScores.fromJson(
      core.Map json_)
      : this(
          detectedDefects: json_.containsKey('detectedDefects')
              ? (json_['detectedDefects'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect
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
class GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect {
  /// Confidence of detected defect.
  ///
  /// Range `[0, 1]` where 1 indicates strong confidence of that the defect
  /// exists.
  core.double? confidence;

  /// Name of the defect type.
  ///
  /// Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` -
  /// `quality/defect_dark` - `quality/defect_faint` -
  /// `quality/defect_text_too_small` - `quality/defect_document_cutoff` -
  /// `quality/defect_text_cutoff` - `quality/defect_glare`
  core.String? type;

  GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect({
    this.confidence,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageImageQualityScoresDetectedDefect.fromJson(
      core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (type != null) 'type': type!,
      };
}

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
          boundingPoly: json_.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1beta3BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          orientation: json_.containsKey('orientation')
              ? json_['orientation'] as core.String
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta3DocumentPageLine({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageLine.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int? cols;

  /// The matrix data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int? rows;

  /// This encodes information about what data type the matrix uses.
  ///
  /// For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of
  /// OpenCV primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int? type;

  GoogleCloudDocumentaiV1beta3DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageMatrix.fromJson(core.Map json_)
      : this(
          cols: json_.containsKey('cols') ? json_['cols'] as core.int : null,
          data: json_.containsKey('data') ? json_['data'] as core.String : null,
          rows: json_.containsKey('rows') ? json_['rows'] as core.int : null,
          type: json_.containsKey('type') ? json_['type'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cols != null) 'cols': cols!,
        if (data != null) 'data': data!,
        if (rows != null) 'rows': rows!,
        if (type != null) 'type': type!,
      };
}

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1beta3DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta3DocumentPageParagraph({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageParagraph.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
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
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
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
          bodyRows: json_.containsKey('bodyRows')
              ? (json_['bodyRows'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headerRows: json_.containsKey('headerRows')
              ? (json_['headerRows'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
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
      core.Map json_)
      : this(
          colSpan: json_.containsKey('colSpan')
              ? json_['colSpan'] as core.int
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell>? cells;

  GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow({
    this.cells,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageTableTableRow.fromJson(core.Map json_)
      : this(
          cells: json_.containsKey('cells')
              ? (json_['cells'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageTableTableCell
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
class GoogleCloudDocumentaiV1beta3DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1beta3DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta3DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta3DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageToken.fromJson(core.Map json_)
      : this(
          detectedBreak: json_.containsKey('detectedBreak')
              ? GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak
                  .fromJson(json_['detectedBreak']
                      as core.Map<core.String, core.dynamic>)
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedBreak != null) 'detectedBreak': detectedBreak!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String? type;

  GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak({
    this.type,
  });

  GoogleCloudDocumentaiV1beta3DocumentPageTokenDetectedBreak.fromJson(
      core.Map json_)
      : this(
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
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
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta3DocumentPageLayout.fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentProvenance {
  /// The Id of this operation.
  ///
  /// Needs to be unique within the scope of the revision.
  core.int? id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1beta3DocumentProvenanceParent>? parents;

  /// The index of the revision that produced this element.
  core.int? revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified. If no
  /// operation is specified a provenance entry is simply used to match against
  /// a `parent`.
  /// - "ADD" : Add an element.
  /// - "REMOVE" : Remove an element identified by `parent`.
  /// - "REPLACE" : Replace an element identified by `parent`.
  /// - "EVAL_REQUESTED" : Request human review for the element identified by
  /// `parent`.
  /// - "EVAL_APPROVED" : Element is reviewed and approved at human review,
  /// confidence will be set to 1.0.
  /// - "EVAL_SKIPPED" : Element is skipped in the validation process.
  core.String? type;

  GoogleCloudDocumentaiV1beta3DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.int : null,
          parents: json_.containsKey('parents')
              ? (json_['parents'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentProvenanceParent
                          .fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentProvenanceParent {
  /// The id of the parent provenance.
  core.int? id;

  /// The index of the parent item in the corresponding item list (eg.
  ///
  /// list of entities, properties within entities, etc.) in the parent
  /// revision.
  core.int? index;

  /// The index of the index into current revision's parent_ids list.
  core.int? revision;

  GoogleCloudDocumentaiV1beta3DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  GoogleCloudDocumentaiV1beta3DocumentProvenanceParent.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.int : null,
          index: json_.containsKey('index') ? json_['index'] as core.int : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (index != null) 'index': index!,
        if (revision != null) 'revision': revision!,
      };
}

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1beta3DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String? agent;

  /// The time that the revision was created.
  core.String? createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview? humanReview;

  /// Id of the revision.
  ///
  /// Unique within the context of the document.
  core.String? id;

  /// The revisions that this revision is based on.
  ///
  /// This can include one or more parent (when documents are merged.) This
  /// field represents the index into the `revisions` field.
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
          agent:
              json_.containsKey('agent') ? json_['agent'] as core.String : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          humanReview: json_.containsKey('humanReview')
              ? GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview
                  .fromJson(json_['humanReview']
                      as core.Map<core.String, core.dynamic>)
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
class GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview {
  /// Human review state.
  ///
  /// e.g. `requested`, `succeeded`, `rejected`.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the rejection reason when the state is `rejected`.
  core.String? stateMessage;

  GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  GoogleCloudDocumentaiV1beta3DocumentRevisionHumanReview.fromJson(
      core.Map json_)
      : this(
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          stateMessage: json_.containsKey('stateMessage')
              ? json_['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

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
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityTypes: json_.containsKey('entityTypes')
              ? (json_['entityTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata.fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType {
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
  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues? enumValues;

  /// Name of the type.
  ///
  /// It must be unique within the schema file and cannot be a 'Common Type'.
  /// Besides that we use the following naming conventions: - *use
  /// `snake_casing`* - name matching is case-insensitive - Maximum 64
  /// characters. - Must start with a letter. - Allowed characters: ASCII
  /// letters `[a-z0-9_-]`. (For backward compatibility internal infrastructure
  /// and tooling can handle any ascii character) - The `/` is sometimes used to
  /// denote a property of a type. For example `line_item/amount`. This
  /// convention is deprecated, but will still be honored for backward
  /// compatibility.
  core.String? name;

  /// Describing the nested structure, or composition of an entity.
  core.List<GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty>?
      properties;

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType({
    this.baseTypes,
    this.displayName,
    this.enumValues,
    this.name,
    this.properties,
  });

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityType.fromJson(core.Map json_)
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
              ? GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues
                  .fromJson(json_['enumValues']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty
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
class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues {
  /// The individual values that this enum values type can include.
  core.List<core.String>? values;

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues({
    this.values,
  });

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeEnumValues.fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty {
  /// The name of the property.
  ///
  /// Follows the same guidelines as the EntityType name.
  core.String? name;

  /// Occurrence type limits the number of instances an entity type appears in
  /// the document.
  /// Possible string values are:
  /// - "OCCURRENCE_TYPE_UNSPECIFIED" : Unspecified occurrence type.
  /// - "OPTIONAL_ONCE" : There will be zero or one instance of this entity
  /// type.
  /// - "OPTIONAL_MULTIPLE" : The entity type will appear zero or multiple
  /// times.
  /// - "REQUIRED_ONCE" : The entity type will only appear exactly once.
  /// - "REQUIRED_MULTIPLE" : The entity type will appear once or more times.
  core.String? occurrenceType;

  /// A reference to the value type of the property.
  ///
  /// This type is subject to the same conventions as the `Entity.base_types`
  /// field.
  core.String? valueType;

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty({
    this.name,
    this.occurrenceType,
    this.valueType,
  });

  GoogleCloudDocumentaiV1beta3DocumentSchemaEntityTypeProperty.fromJson(
      core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          occurrenceType: json_.containsKey('occurrenceType')
              ? json_['occurrenceType'] as core.String
              : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (occurrenceType != null) 'occurrenceType': occurrenceType!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Metadata for global schema behavior.
class GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata {
  /// If true, on a given page, there can be multiple `document` annotations
  /// covering it.
  core.bool? documentAllowMultipleLabels;

  /// If true, a `document` entity type can be applied to subdocument (
  /// splitting).
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

  GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata({
    this.documentAllowMultipleLabels,
    this.documentSplitter,
    this.prefixedNamingOnProperties,
    this.skipNamingValidation,
  });

  GoogleCloudDocumentaiV1beta3DocumentSchemaMetadata.fromJson(core.Map json_)
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
class GoogleCloudDocumentaiV1beta3DocumentShardInfo {
  /// Total number of shards.
  core.String? shardCount;

  /// The 0-based index of this shard.
  core.String? shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String? textOffset;

  GoogleCloudDocumentaiV1beta3DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  GoogleCloudDocumentaiV1beta3DocumentShardInfo.fromJson(core.Map json_)
      : this(
          shardCount: json_.containsKey('shardCount')
              ? json_['shardCount'] as core.String
              : null,
          shardIndex: json_.containsKey('shardIndex')
              ? json_['shardIndex'] as core.String
              : null,
          textOffset: json_.containsKey('textOffset')
              ? json_['textOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (shardCount != null) 'shardCount': shardCount!,
        if (shardIndex != null) 'shardIndex': shardIndex!,
        if (textOffset != null) 'textOffset': textOffset!,
      };
}

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

  /// Font weight.
  ///
  /// Possible values are normal, bold, bolder, and lighter.
  /// https://www.w3schools.com/cssref/pr_font_weight.asp
  core.String? fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta3DocumentTextAnchor? textAnchor;

  /// Text decoration.
  ///
  /// Follows CSS standard.
  /// https://www.w3schools.com/cssref/pr_text_text-decoration.asp
  core.String? textDecoration;

  /// Text style.
  ///
  /// Possible values are normal, italic, and oblique.
  /// https://www.w3schools.com/cssref/pr_font_font-style.asp
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
              ? GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.fromJson(
                  json_['fontSize'] as core.Map<core.String, core.dynamic>)
              : null,
          fontWeight: json_.containsKey('fontWeight')
              ? json_['fontWeight'] as core.String
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
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
class GoogleCloudDocumentaiV1beta3DocumentStyleFontSize {
  /// Font size for the text.
  core.double? size;

  /// Unit for the font size.
  ///
  /// Follows CSS naming (in, px, pt, etc.).
  core.String? unit;

  GoogleCloudDocumentaiV1beta3DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  GoogleCloudDocumentaiV1beta3DocumentStyleFontSize.fromJson(core.Map json_)
      : this(
          size: json_.containsKey('size')
              ? (json_['size'] as core.num).toDouble()
              : null,
          unit: json_.containsKey('unit') ? json_['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (unit != null) 'unit': unit!,
      };
}

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
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          textSegments: json_.containsKey('textSegments')
              ? (json_['textSegments'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment
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
class GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String? endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String? startIndex;

  GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  GoogleCloudDocumentaiV1beta3DocumentTextAnchorTextSegment.fromJson(
      core.Map json_)
      : this(
          endIndex: json_.containsKey('endIndex')
              ? json_['endIndex'] as core.String
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endIndex != null) 'endIndex': endIndex!,
        if (startIndex != null) 'startIndex': startIndex!,
      };
}

/// This message is used for text changes aka.
///
/// OCR corrections.
class GoogleCloudDocumentaiV1beta3DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String? changedText;

  /// The history of this annotation.
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
          changedText: json_.containsKey('changedText')
              ? json_['changedText'] as core.String
              : null,
          provenance: json_.containsKey('provenance')
              ? (json_['provenance'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3DocumentProvenance.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta3DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedText != null) 'changedText': changedText!,
        if (provenance != null) 'provenance': provenance!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
      };
}

/// Request message for the enable processor method.
typedef GoogleCloudDocumentaiV1beta3EnableProcessorRequest = $Empty;

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
      core.Map json_)
      : this(
          evaluationDocuments: json_.containsKey('evaluationDocuments')
              ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
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
class GoogleCloudDocumentaiV1beta3Evaluation {
  /// Metrics for all the entities in aggregate.
  GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics?
      allEntitiesMetrics;

  /// The time that the evaluation was created.
  core.String? createTime;

  /// Counters for the documents used in the evaluation.
  GoogleCloudDocumentaiV1beta3EvaluationCounters? documentCounters;

  /// Metrics across confidence levels, for different entities.
  core.Map<core.String,
          GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics>?
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
          allEntitiesMetrics: json_.containsKey('allEntitiesMetrics')
              ? GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics
                  .fromJson(json_['allEntitiesMetrics']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          documentCounters: json_.containsKey('documentCounters')
              ? GoogleCloudDocumentaiV1beta3EvaluationCounters.fromJson(
                  json_['documentCounters']
                      as core.Map<core.String, core.dynamic>)
              : null,
          entityMetrics: json_.containsKey('entityMetrics')
              ? (json_['entityMetrics'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    GoogleCloudDocumentaiV1beta3EvaluationMultiConfidenceMetrics
                        .fromJson(item as core.Map<core.String, core.dynamic>),
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
      core.Map json_)
      : this(
          confidenceLevel: json_.containsKey('confidenceLevel')
              ? (json_['confidenceLevel'] as core.num).toDouble()
              : null,
          metrics: json_.containsKey('metrics')
              ? GoogleCloudDocumentaiV1beta3EvaluationMetrics.fromJson(
                  json_['metrics'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceLevel != null) 'confidenceLevel': confidenceLevel!,
        if (metrics != null) 'metrics': metrics!,
      };
}

/// Evaluation counters for the documents that were used.
class GoogleCloudDocumentaiV1beta3EvaluationCounters {
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

  GoogleCloudDocumentaiV1beta3EvaluationCounters({
    this.evaluatedDocumentsCount,
    this.failedDocumentsCount,
    this.inputDocumentsCount,
    this.invalidDocumentsCount,
  });

  GoogleCloudDocumentaiV1beta3EvaluationCounters.fromJson(core.Map json_)
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
class GoogleCloudDocumentaiV1beta3EvaluationMetrics {
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

  GoogleCloudDocumentaiV1beta3EvaluationMetrics({
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

  GoogleCloudDocumentaiV1beta3EvaluationMetrics.fromJson(core.Map json_)
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
                      GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          confidenceLevelMetricsExact: json_
                  .containsKey('confidenceLevelMetricsExact')
              ? (json_['confidenceLevelMetricsExact'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3EvaluationConfidenceLevelMetrics
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

/// Response message for fetch processor types.
class GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse {
  /// The list of processor types.
  core.List<GoogleCloudDocumentaiV1beta3ProcessorType>? processorTypes;

  GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse({
    this.processorTypes,
  });

  GoogleCloudDocumentaiV1beta3FetchProcessorTypesResponse.fromJson(
      core.Map json_)
      : this(
          processorTypes: json_.containsKey('processorTypes')
              ? (json_['processorTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (processorTypes != null) 'processorTypes': processorTypes!,
      };
}

/// Specifies a document stored on Cloud Storage.
class GoogleCloudDocumentaiV1beta3GcsDocument {
  /// The Cloud Storage object uri.
  core.String? gcsUri;

  /// An IANA MIME type (RFC6838) of the content.
  core.String? mimeType;

  GoogleCloudDocumentaiV1beta3GcsDocument({
    this.gcsUri,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1beta3GcsDocument.fromJson(core.Map json_)
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
class GoogleCloudDocumentaiV1beta3GcsDocuments {
  /// The list of documents.
  core.List<GoogleCloudDocumentaiV1beta3GcsDocument>? documents;

  GoogleCloudDocumentaiV1beta3GcsDocuments({
    this.documents,
  });

  GoogleCloudDocumentaiV1beta3GcsDocuments.fromJson(core.Map json_)
      : this(
          documents: json_.containsKey('documents')
              ? (json_['documents'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3GcsDocument.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
      };
}

/// Specifies all documents on Cloud Storage with a common prefix.
class GoogleCloudDocumentaiV1beta3GcsPrefix {
  /// The URI prefix.
  core.String? gcsUriPrefix;

  GoogleCloudDocumentaiV1beta3GcsPrefix({
    this.gcsUriPrefix,
  });

  GoogleCloudDocumentaiV1beta3GcsPrefix.fromJson(core.Map json_)
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
class GoogleCloudDocumentaiV1beta3HumanReviewStatus {
  /// The name of the operation triggered by the processed document.
  ///
  /// This field is populated only when the \[state\] is
  /// \[HUMAN_REVIEW_IN_PROGRESS\]. It has the same response type and metadata
  /// as the long running operation returned by \[ReviewDocument\] method.
  core.String? humanReviewOperation;

  /// The state of human review on the processing request.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Human review state is unspecified. Most likely due
  /// to an internal error.
  /// - "SKIPPED" : Human review is skipped for the document. This can happen
  /// because human review is not enabled on the processor or the processing
  /// request has been set to skip this document.
  /// - "VALIDATION_PASSED" : Human review validation is triggered and passed,
  /// so no review is needed.
  /// - "IN_PROGRESS" : Human review validation is triggered and the document is
  /// under review.
  /// - "ERROR" : Some error happened during triggering human review, see the
  /// \[state_message\] for details.
  core.String? state;

  /// A message providing more details about the human review state.
  core.String? stateMessage;

  GoogleCloudDocumentaiV1beta3HumanReviewStatus({
    this.humanReviewOperation,
    this.state,
    this.stateMessage,
  });

  GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(core.Map json_)
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

/// The response from ListEvaluations.
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
          evaluations: json_.containsKey('evaluations')
              ? (json_['evaluations'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3Evaluation.fromJson(
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

/// Response message for list processor types.
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
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          processorTypes: json_.containsKey('processorTypes')
              ? (json_['processorTypes'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processorTypes != null) 'processorTypes': processorTypes!,
      };
}

/// Response message for list processors.
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
      core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          processorVersions: json_.containsKey('processorVersions')
              ? (json_['processorVersions'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (processorVersions != null) 'processorVersions': processorVersions!,
      };
}

/// Response message for list processors.
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          processors: json_.containsKey('processors')
              ? (json_['processors'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3Processor.fromJson(
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
class GoogleCloudDocumentaiV1beta3NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate (starts from the top of the image).
  core.double? y;

  GoogleCloudDocumentaiV1beta3NormalizedVertex({
    this.x,
    this.y,
  });

  GoogleCloudDocumentaiV1beta3NormalizedVertex.fromJson(core.Map json_)
      : this(
          x: json_.containsKey('x')
              ? (json_['x'] as core.num).toDouble()
              : null,
          y: json_.containsKey('y')
              ? (json_['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Request message for the process document method.
class GoogleCloudDocumentaiV1beta3ProcessRequest {
  /// The document payload, the \[content\] and \[mime_type\] fields must be
  /// set.
  GoogleCloudDocumentaiV1beta3Document? document;

  /// Specifies which fields to include in ProcessResponse's document.
  ///
  /// Only supports top level document and pages field so it must be in the form
  /// of `{document_field_name}` or `pages.{page_field_name}`.
  core.String? fieldMask;

  /// An inline document proto.
  GoogleCloudDocumentaiV1beta3Document? inlineDocument;

  /// A raw document content (bytes).
  GoogleCloudDocumentaiV1beta3RawDocument? rawDocument;

  /// Whether Human Review feature should be skipped for this request.
  ///
  /// Default to false.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1beta3ProcessRequest({
    this.document,
    this.fieldMask,
    this.inlineDocument,
    this.rawDocument,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1beta3ProcessRequest.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldMask: json_.containsKey('fieldMask')
              ? json_['fieldMask'] as core.String
              : null,
          inlineDocument: json_.containsKey('inlineDocument')
              ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['inlineDocument']
                      as core.Map<core.String, core.dynamic>)
              : null,
          rawDocument: json_.containsKey('rawDocument')
              ? GoogleCloudDocumentaiV1beta3RawDocument.fromJson(
                  json_['rawDocument'] as core.Map<core.String, core.dynamic>)
              : null,
          skipHumanReview: json_.containsKey('skipHumanReview')
              ? json_['skipHumanReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (inlineDocument != null) 'inlineDocument': inlineDocument!,
        if (rawDocument != null) 'rawDocument': rawDocument!,
        if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
      };
}

/// Response message for the process document method.
class GoogleCloudDocumentaiV1beta3ProcessResponse {
  /// The document payload, will populate fields based on the processor's
  /// behavior.
  GoogleCloudDocumentaiV1beta3Document? document;

  /// The name of the operation triggered by the processed document.
  ///
  /// If the human review process is not triggered, this field will be empty. It
  /// has the same response type and metadata as the long running operation
  /// returned by ReviewDocument method.
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
          document: json_.containsKey('document')
              ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          humanReviewOperation: json_.containsKey('humanReviewOperation')
              ? json_['humanReviewOperation'] as core.String
              : null,
          humanReviewStatus: json_.containsKey('humanReviewStatus')
              ? GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(
                  json_['humanReviewStatus']
                      as core.Map<core.String, core.dynamic>)
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
  core.String? createTime;

  /// The default processor version.
  core.String? defaultProcessorVersion;

  /// The display name of the processor.
  core.String? displayName;

  /// The KMS key used for encryption/decryption in CMEK scenarios.
  ///
  /// See https://cloud.google.com/security-key-management.
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

  /// The processor type, e.g., `OCR_PROCESSOR`, `INVOICE_PROCESSOR`, etc.
  ///
  /// To get a list of processors types, see FetchProcessorTypes.
  core.String? type;

  GoogleCloudDocumentaiV1beta3Processor({
    this.createTime,
    this.defaultProcessorVersion,
    this.displayName,
    this.kmsKeyName,
    this.name,
    this.processEndpoint,
    this.state,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3Processor.fromJson(core.Map json_)
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

  /// The processor type, e.g., `OCR_PROCESSOR`, `INVOICE_PROCESSOR`, etc.
  core.String? type;

  GoogleCloudDocumentaiV1beta3ProcessorType({
    this.allowCreation,
    this.availableLocations,
    this.category,
    this.launchStage,
    this.name,
    this.type,
  });

  GoogleCloudDocumentaiV1beta3ProcessorType.fromJson(core.Map json_)
      : this(
          allowCreation: json_.containsKey('allowCreation')
              ? json_['allowCreation'] as core.bool
              : null,
          availableLocations: json_.containsKey('availableLocations')
              ? (json_['availableLocations'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo
                          .fromJson(
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
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowCreation != null) 'allowCreation': allowCreation!,
        if (availableLocations != null)
          'availableLocations': availableLocations!,
        if (category != null) 'category': category!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// The location information about where the processor is available.
class GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo {
  /// The location id, currently must be one of \[us, eu\].
  core.String? locationId;

  GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo({
    this.locationId,
  });

  GoogleCloudDocumentaiV1beta3ProcessorTypeLocationInfo.fromJson(core.Map json_)
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
/// Each processor can have multiple versions, pre-trained by Google internally
/// or up-trained by the customer. At a time, a processor can only have one
/// default version version. So the processor's behavior (when processing
/// documents) is defined by a default version
class GoogleCloudDocumentaiV1beta3ProcessorVersion {
  /// The time the processor version was created.
  core.String? createTime;

  /// If set, information about the eventual deprecation of this version.
  GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo? deprecationInfo;

  /// The display name of the processor version.
  core.String? displayName;

  /// The schema of the processor version.
  ///
  /// Describes the output.
  GoogleCloudDocumentaiV1beta3DocumentSchema? documentSchema;

  /// Denotes that this ProcessorVersion is managed by google.
  core.bool? googleManaged;

  /// The KMS key name used for encryption.
  core.String? kmsKeyName;

  /// The KMS key version with which data is encrypted.
  core.String? kmsKeyVersionName;

  /// The resource name of the processor version.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processor_version}`
  core.String? name;

  /// The state of the processor version.
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
  core.String? state;

  GoogleCloudDocumentaiV1beta3ProcessorVersion({
    this.createTime,
    this.deprecationInfo,
    this.displayName,
    this.documentSchema,
    this.googleManaged,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.name,
    this.state,
  });

  GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deprecationInfo: json_.containsKey('deprecationInfo')
              ? GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo
                  .fromJson(json_['deprecationInfo']
                      as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          documentSchema: json_.containsKey('documentSchema')
              ? GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
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
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// Information about the upcoming deprecation of this processor version.
class GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo {
  /// The time at which this processor version will be deprecated.
  core.String? deprecationTime;

  /// If set, the processor version that will be used as a replacement.
  core.String? replacementProcessorVersion;

  GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo({
    this.deprecationTime,
    this.replacementProcessorVersion,
  });

  GoogleCloudDocumentaiV1beta3ProcessorVersionDeprecationInfo.fromJson(
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
class GoogleCloudDocumentaiV1beta3RawDocument {
  /// Inline document content.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An IANA MIME type (RFC6838) indicating the nature and format of the
  /// content.
  core.String? mimeType;

  GoogleCloudDocumentaiV1beta3RawDocument({
    this.content,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1beta3RawDocument.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// Request message for review document method.
class GoogleCloudDocumentaiV1beta3ReviewDocumentRequest {
  /// The document that needs human review.
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
          document: json_.containsKey('document')
              ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          documentSchema: json_.containsKey('documentSchema')
              ? GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enableSchemaValidation: json_.containsKey('enableSchemaValidation')
              ? json_['enableSchemaValidation'] as core.bool
              : null,
          inlineDocument: json_.containsKey('inlineDocument')
              ? GoogleCloudDocumentaiV1beta3Document.fromJson(
                  json_['inlineDocument']
                      as core.Map<core.String, core.dynamic>)
              : null,
          priority: json_.containsKey('priority')
              ? json_['priority'] as core.String
              : null,
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

/// Request message for the set default processor version method.
class GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest {
  /// The resource name of child ProcessorVersion to use as default.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{version}`
  ///
  /// Required.
  core.String? defaultProcessorVersion;

  GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest({
    this.defaultProcessorVersion,
  });

  GoogleCloudDocumentaiV1beta3SetDefaultProcessorVersionRequest.fromJson(
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

/// Request message for the create processor version method.
class GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest {
  /// The processor version to use as a base for training.
  ///
  /// This processor version must be a child of `parent`. Format:
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`.
  ///
  /// Optional.
  core.String? baseProcessorVersion;

  /// The schema the processor version will be trained with.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3DocumentSchema? documentSchema;

  /// The input data used to train the `ProcessorVersion`.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData? inputData;

  /// The processor version to be created.
  ///
  /// Required.
  GoogleCloudDocumentaiV1beta3ProcessorVersion? processorVersion;

  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest({
    this.baseProcessorVersion,
    this.documentSchema,
    this.inputData,
    this.processorVersion,
  });

  GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequest.fromJson(
      core.Map json_)
      : this(
          baseProcessorVersion: json_.containsKey('baseProcessorVersion')
              ? json_['baseProcessorVersion'] as core.String
              : null,
          documentSchema: json_.containsKey('documentSchema')
              ? GoogleCloudDocumentaiV1beta3DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputData: json_.containsKey('inputData')
              ? GoogleCloudDocumentaiV1beta3TrainProcessorVersionRequestInputData
                  .fromJson(
                      json_['inputData'] as core.Map<core.String, core.dynamic>)
              : null,
          processorVersion: json_.containsKey('processorVersion')
              ? GoogleCloudDocumentaiV1beta3ProcessorVersion.fromJson(
                  json_['processorVersion']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseProcessorVersion != null)
          'baseProcessorVersion': baseProcessorVersion!,
        if (documentSchema != null) 'documentSchema': documentSchema!,
        if (inputData != null) 'inputData': inputData!,
        if (processorVersion != null) 'processorVersion': processorVersion!,
      };
}

/// The input data used to train a new `ProcessorVersion`.
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
      core.Map json_)
      : this(
          testDocuments: json_.containsKey('testDocuments')
              ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
                  json_['testDocuments'] as core.Map<core.String, core.dynamic>)
              : null,
          trainingDocuments: json_.containsKey('trainingDocuments')
              ? GoogleCloudDocumentaiV1beta3BatchDocumentsInputConfig.fromJson(
                  json_['trainingDocuments']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (testDocuments != null) 'testDocuments': testDocuments!,
        if (trainingDocuments != null) 'trainingDocuments': trainingDocuments!,
      };
}

/// Request message for the undeploy processor version method.
typedef GoogleCloudDocumentaiV1beta3UndeployProcessorVersionRequest = $Empty;

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudDocumentaiV1beta3Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate (starts from the top of the image).
  core.int? y;

  GoogleCloudDocumentaiV1beta3Vertex({
    this.x,
    this.y,
  });

  GoogleCloudDocumentaiV1beta3Vertex.fromJson(core.Map json_)
      : this(
          x: json_.containsKey('x') ? json_['x'] as core.int : null,
          y: json_.containsKey('y') ? json_['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

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

/// A resource that represents Google Cloud Platform location.
typedef GoogleCloudLocationLocation = $Location;

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

  /// The normal response of the operation in case of success.
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
/// This representation is designed for simplicity of conversion to/from color
/// representations in various languages over compactness. For example, the
/// fields of this representation can be trivially provided to the constructor
/// of `java.awt.Color` in Java; it can also be trivially provided to UIColor's
/// `+colorWithRed:green:blue:alpha` method in iOS; and, with just a little
/// work, it can be easily formatted into a CSS `rgba()` string in JavaScript.
/// This reference page doesn't carry information about the absolute color space
/// that should be used to interpret the RGB value (e.g. sRGB, Adobe RGB,
/// DCI-P3, BT.2020, etc.). By default, applications should assume the sRGB
/// color space. When color equality needs to be decided, implementations,
/// unless documented otherwise, treat two colors as equal if all their red,
/// green, blue, and alpha values each differ by at most 1e-5. Example (Java):
/// import com.google.type.Color; // ... public static java.awt.Color
/// fromProto(Color protocolor) { float alpha = protocolor.hasAlpha() ?
/// protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color(
/// protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); }
/// public static Color toProto(java.awt.Color color) { float red = (float)
/// color.getRed(); float green = (float) color.getGreen(); float blue = (float)
/// color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder =
/// Color .newBuilder() .setRed(red / denominator) .setGreen(green /
/// denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if
/// (alpha != 255) { result.setAlpha( FloatValue .newBuilder()
/// .setValue(((float) alpha) / denominator) .build()); } return
/// resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static
/// UIColor* fromProto(Color* protocolor) { float red = \[protocolor red\];
/// float green = \[protocolor green\]; float blue = \[protocolor blue\];
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
class GoogleTypeColor {
  /// The fraction of this color that should be applied to the pixel.
  ///
  /// That is, the final pixel color is defined by the equation: `pixel color =
  /// alpha * (this color) + (1.0 - alpha) * (background color)` This means that
  /// a value of 1.0 corresponds to a solid color, whereas a value of 0.0
  /// corresponds to a completely transparent color. This uses a wrapper message
  /// rather than a simple float scalar so that it is possible to distinguish
  /// between a default value and the value being unset. If omitted, this color
  /// object is rendered as a solid color (as if the alpha value had been
  /// explicitly given a value of 1.0).
  core.double? alpha;

  /// The amount of blue in the color as a value in the interval \[0, 1\].
  core.double? blue;

  /// The amount of green in the color as a value in the interval \[0, 1\].
  core.double? green;

  /// The amount of red in the color as a value in the interval \[0, 1\].
  core.double? red;

  GoogleTypeColor({
    this.alpha,
    this.blue,
    this.green,
    this.red,
  });

  GoogleTypeColor.fromJson(core.Map json_)
      : this(
          alpha: json_.containsKey('alpha')
              ? (json_['alpha'] as core.num).toDouble()
              : null,
          blue: json_.containsKey('blue')
              ? (json_['blue'] as core.num).toDouble()
              : null,
          green: json_.containsKey('green')
              ? (json_['green'] as core.num).toDouble()
              : null,
          red: json_.containsKey('red')
              ? (json_['red'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alpha != null) 'alpha': alpha!,
        if (blue != null) 'blue': blue!,
        if (green != null) 'green': green!,
        if (red != null) 'red': red!,
      };
}

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
class GoogleTypeTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  core.String? id;

  /// IANA Time Zone Database version number, e.g. "2019a".
  ///
  /// Optional.
  core.String? version;

  GoogleTypeTimeZone({
    this.id,
    this.version,
  });

  GoogleTypeTimeZone.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (version != null) 'version': version!,
      };
}
