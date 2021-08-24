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
///     - [ProjectsLocationsProcessorsResource]
///       - [ProjectsLocationsProcessorsHumanReviewConfigResource]
///       - [ProjectsLocationsProcessorsProcessorVersionsResource]
///   - [ProjectsOperationsResource]
/// - [Uiv1beta3Resource]
///   - [Uiv1beta3ProjectsResource]
///     - [Uiv1beta3ProjectsLocationsResource]
///       - [Uiv1beta3ProjectsLocationsOperationsResource]
library documentai.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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
  Uiv1beta3Resource get uiv1beta3 => Uiv1beta3Resource(_requester);

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  ProjectsLocationsProcessorsResource get processors =>
      ProjectsLocationsProcessorsResource(_requester);

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationLocation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// Format: projects/{project}/locations/{location}/processors/{processor}, or
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':batchProcess';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// projects/{project}/locations/{location}/processors/{processor}, or
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':process';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1ProcessResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$humanReviewConfig') + ':reviewDocument';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProcessorsProcessorVersionsResource {
  final commons.ApiRequester _requester;

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
  /// Format: projects/{project}/locations/{location}/processors/{processor}, or
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':batchProcess';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// projects/{project}/locations/{location}/processors/{processor}, or
  /// projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':process';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDocumentaiV1ProcessResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class Uiv1beta3Resource {
  final commons.ApiRequester _requester;

  Uiv1beta3ProjectsResource get projects =>
      Uiv1beta3ProjectsResource(_requester);

  Uiv1beta3Resource(commons.ApiRequester client) : _requester = client;
}

class Uiv1beta3ProjectsResource {
  final commons.ApiRequester _requester;

  Uiv1beta3ProjectsLocationsResource get locations =>
      Uiv1beta3ProjectsLocationsResource(_requester);

  Uiv1beta3ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class Uiv1beta3ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  Uiv1beta3ProjectsLocationsOperationsResource get operations =>
      Uiv1beta3ProjectsLocationsOperationsResource(_requester);

  Uiv1beta3ProjectsLocationsResource(commons.ApiRequester client)
      : _requester = client;

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationLocation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like "displayName=tokyo", and is
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudLocationListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class Uiv1beta3ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  Uiv1beta3ProjectsLocationsOperationsResource(commons.ApiRequester client)
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'uiv1beta3/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response of the delete documents operation.
class GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse {
  GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse();

  GoogleCloudDocumentaiUiv1beta3BatchDeleteDocumentsResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response of the batch move documents operation.
class GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse {
  GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse();

  GoogleCloudDocumentaiUiv1beta3BatchMoveDocumentsResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The common metadata for long running operations.
class GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The long running operation metadata for CreateLabelerPool.
class GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// The long running operation metadata for DeleteLabelerPool.
class GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// The long running operation metadata for delete processor method.
class GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata.fromJson(core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// The long running operation metadata for delete processor version method.
class GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3DeleteProcessorVersionMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// The long running operation metadata for deploy processor version method.
class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response message for the deploy processor version method.
class GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse {
  GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse();

  GoogleCloudDocumentaiUiv1beta3DeployProcessorVersionResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The long running operation metadata for disable processor method.
class GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response message for the disable processor method.
///
/// Intentionally empty proto for adding fields in future.
class GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse {
  GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();

  GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The long running operation metadata for enable processor method.
class GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata.fromJson(core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response message for the enable processor method.
///
/// Intentionally empty proto for adding fields in future.
class GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse {
  GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();

  GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Metadata of the EvaluateProcessorVersion method.
class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Metadata of the EvaluateProcessorVersion method.
class GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse {
  /// The resource name of the created evaluation.
  core.String? evaluation;

  GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse({
    this.evaluation,
  });

  GoogleCloudDocumentaiUiv1beta3EvaluateProcessorVersionResponse.fromJson(
      core.Map _json)
      : this(
          evaluation: _json.containsKey('evaluation')
              ? _json['evaluation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (evaluation != null) 'evaluation': evaluation!,
      };
}

/// Metadata message associated with the ExportProcessorVersion operation.
class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata {
  /// The common metadata about the operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response message associated with the ExportProcessorVersion operation.
class GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse {
  /// The Cloud Storage URI containing the output artifacts.
  core.String? gcsUri;

  GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse({
    this.gcsUri,
  });

  GoogleCloudDocumentaiUiv1beta3ExportProcessorVersionResponse.fromJson(
      core.Map _json)
      : this(
          gcsUri: _json.containsKey('gcsUri')
              ? _json['gcsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUri != null) 'gcsUri': gcsUri!,
      };
}

/// Metadata of the import document operation.
class GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3ImportDocumentsMetadata.fromJson(core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response of the import document operation.
class GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse {
  GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse();

  GoogleCloudDocumentaiUiv1beta3ImportDocumentsResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The long running operation metadata for set default processor version
/// method.
class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response message for set default processor version method.
class GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse {
  GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse();

  GoogleCloudDocumentaiUiv1beta3SetDefaultProcessorVersionResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The metadata that represents a processor version being created.
class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  /// The test dataset validation information.
  GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation?
      testDatasetValidation;

  /// The training dataset validation information.
  GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation?
      trainingDatasetValidation;

  GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata({
    this.commonMetadata,
    this.testDatasetValidation,
    this.trainingDatasetValidation,
  });

  GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          testDatasetValidation: _json.containsKey('testDatasetValidation')
              ? GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
                  .fromJson(_json['testDatasetValidation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          trainingDatasetValidation: _json
                  .containsKey('trainingDatasetValidation')
              ? GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation
                  .fromJson(_json['trainingDatasetValidation']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
        if (testDatasetValidation != null)
          'testDatasetValidation': testDatasetValidation!.toJson(),
        if (trainingDatasetValidation != null)
          'trainingDatasetValidation': trainingDatasetValidation!.toJson(),
      };
}

/// The dataset validation information.
///
/// This includes any and all errors with documents and the dataset.
class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation {
  /// The total number of dataset errors.
  core.int? datasetErrorCount;

  /// Error information for the dataset as a whole.
  ///
  /// A maximum of 10 dataset errors will be returned. A single dataset error is
  /// terminal for training.
  core.List<GoogleRpcStatus>? datasetErrors;

  /// The total number of document errors.
  core.int? documentErrorCount;

  /// Error information pertaining to specific documents.
  ///
  /// A maximum of 10 document errors will be returned. Any document with errors
  /// will not be used throughout training.
  core.List<GoogleRpcStatus>? documentErrors;

  GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation({
    this.datasetErrorCount,
    this.datasetErrors,
    this.documentErrorCount,
    this.documentErrors,
  });

  GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation.fromJson(
      core.Map _json)
      : this(
          datasetErrorCount: _json.containsKey('datasetErrorCount')
              ? _json['datasetErrorCount'] as core.int
              : null,
          datasetErrors: _json.containsKey('datasetErrors')
              ? (_json['datasetErrors'] as core.List)
                  .map<GoogleRpcStatus>((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          documentErrorCount: _json.containsKey('documentErrorCount')
              ? _json['documentErrorCount'] as core.int
              : null,
          documentErrors: _json.containsKey('documentErrors')
              ? (_json['documentErrors'] as core.List)
                  .map<GoogleRpcStatus>((value) => GoogleRpcStatus.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (datasetErrorCount != null) 'datasetErrorCount': datasetErrorCount!,
        if (datasetErrors != null)
          'datasetErrors':
              datasetErrors!.map((value) => value.toJson()).toList(),
        if (documentErrorCount != null)
          'documentErrorCount': documentErrorCount!,
        if (documentErrors != null)
          'documentErrors':
              documentErrors!.map((value) => value.toJson()).toList(),
      };
}

/// The response for the TrainProcessorVersion method.
class GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse {
  /// The resource name of the processor version produced by training.
  core.String? processorVersion;

  GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse({
    this.processorVersion,
  });

  GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionResponse.fromJson(
      core.Map _json)
      : this(
          processorVersion: _json.containsKey('processorVersion')
              ? _json['processorVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (processorVersion != null) 'processorVersion': processorVersion!,
      };
}

/// The long running operation metadata for the undeploy processor version
/// method.
class GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response message for the undeploy processor version method.
class GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse {
  GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse();

  GoogleCloudDocumentaiUiv1beta3UndeployProcessorVersionResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

class GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3UpdateDatasetOperationMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// The long running operation metadata for updating the human review
/// configuration.
class GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3UpdateHumanReviewConfigMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// The long running operation metadata for UpdateLabelerPool.
class GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiUiv1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// The common config to specify a set of documents used as input.
class GoogleCloudDocumentaiV1BatchDocumentsInputConfig {
  /// The set of documents individually specified on Cloud Storage.
  GoogleCloudDocumentaiV1GcsDocuments? gcsDocuments;

  /// The set of documents that match the specified Cloud Storage
  /// \[gcs_prefix\].
  GoogleCloudDocumentaiV1GcsPrefix? gcsPrefix;

  GoogleCloudDocumentaiV1BatchDocumentsInputConfig({
    this.gcsDocuments,
    this.gcsPrefix,
  });

  GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(core.Map _json)
      : this(
          gcsDocuments: _json.containsKey('gcsDocuments')
              ? GoogleCloudDocumentaiV1GcsDocuments.fromJson(
                  _json['gcsDocuments'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsPrefix: _json.containsKey('gcsPrefix')
              ? GoogleCloudDocumentaiV1GcsPrefix.fromJson(
                  _json['gcsPrefix'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDocuments != null) 'gcsDocuments': gcsDocuments!.toJson(),
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!.toJson(),
      };
}

/// The long running operation metadata for batch process method.
class GoogleCloudDocumentaiV1BatchProcessMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The list of response details of each document.
  core.List<GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>?
      individualProcessStatuses;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLING" : The batch processing was being cancelled.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the error message if the operation is failed.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  GoogleCloudDocumentaiV1BatchProcessMetadata({
    this.createTime,
    this.individualProcessStatuses,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudDocumentaiV1BatchProcessMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          individualProcessStatuses: _json
                  .containsKey('individualProcessStatuses')
              ? (_json['individualProcessStatuses'] as core.List)
                  .map<GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus>(
                      (value) =>
                          GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (individualProcessStatuses != null)
          'individualProcessStatuses': individualProcessStatuses!
              .map((value) => value.toJson())
              .toList(),
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The status of a each individual document in the batch process.
class GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus {
  /// The status of human review on the processed document.
  GoogleCloudDocumentaiV1HumanReviewStatus? humanReviewStatus;

  /// The source of the document, same as the \[input_gcs_source\] field in the
  /// request when the batch process started.
  ///
  /// The batch process is started by take snapshot of that document, since a
  /// user can move or change that document during the process.
  core.String? inputGcsSource;

  /// The output_gcs_destination (in the request as 'output_gcs_destination') of
  /// the processed document if it was successful, otherwise empty.
  core.String? outputGcsDestination;

  /// The status of the processing of the document.
  GoogleRpcStatus? status;

  GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus({
    this.humanReviewStatus,
    this.inputGcsSource,
    this.outputGcsDestination,
    this.status,
  });

  GoogleCloudDocumentaiV1BatchProcessMetadataIndividualProcessStatus.fromJson(
      core.Map _json)
      : this(
          humanReviewStatus: _json.containsKey('humanReviewStatus')
              ? GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(
                  _json['humanReviewStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputGcsSource: _json.containsKey('inputGcsSource')
              ? _json['inputGcsSource'] as core.String
              : null,
          outputGcsDestination: _json.containsKey('outputGcsDestination')
              ? _json['outputGcsDestination'] as core.String
              : null,
          status: _json.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReviewStatus != null)
          'humanReviewStatus': humanReviewStatus!.toJson(),
        if (inputGcsSource != null) 'inputGcsSource': inputGcsSource!,
        if (outputGcsDestination != null)
          'outputGcsDestination': outputGcsDestination!,
        if (status != null) 'status': status!.toJson(),
      };
}

/// Request message for batch process document method.
class GoogleCloudDocumentaiV1BatchProcessRequest {
  /// The overall output config for batch process.
  GoogleCloudDocumentaiV1DocumentOutputConfig? documentOutputConfig;

  /// The input documents for batch process.
  GoogleCloudDocumentaiV1BatchDocumentsInputConfig? inputDocuments;

  /// Whether Human Review feature should be skipped for this request.
  ///
  /// Default to false.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1BatchProcessRequest({
    this.documentOutputConfig,
    this.inputDocuments,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1BatchProcessRequest.fromJson(core.Map _json)
      : this(
          documentOutputConfig: _json.containsKey('documentOutputConfig')
              ? GoogleCloudDocumentaiV1DocumentOutputConfig.fromJson(
                  _json['documentOutputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputDocuments: _json.containsKey('inputDocuments')
              ? GoogleCloudDocumentaiV1BatchDocumentsInputConfig.fromJson(
                  _json['inputDocuments']
                      as core.Map<core.String, core.dynamic>)
              : null,
          skipHumanReview: _json.containsKey('skipHumanReview')
              ? _json['skipHumanReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentOutputConfig != null)
          'documentOutputConfig': documentOutputConfig!.toJson(),
        if (inputDocuments != null) 'inputDocuments': inputDocuments!.toJson(),
        if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
      };
}

/// Response message for batch process document method.
class GoogleCloudDocumentaiV1BatchProcessResponse {
  GoogleCloudDocumentaiV1BatchProcessResponse();

  GoogleCloudDocumentaiV1BatchProcessResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
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

  GoogleCloudDocumentaiV1BoundingPoly.fromJson(core.Map _json)
      : this(
          normalizedVertices: _json.containsKey('normalizedVertices')
              ? (_json['normalizedVertices'] as core.List)
                  .map<GoogleCloudDocumentaiV1NormalizedVertex>((value) =>
                      GoogleCloudDocumentaiV1NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vertices: _json.containsKey('vertices')
              ? (_json['vertices'] as core.List)
                  .map<GoogleCloudDocumentaiV1Vertex>((value) =>
                      GoogleCloudDocumentaiV1Vertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedVertices != null)
          'normalizedVertices':
              normalizedVertices!.map((value) => value.toJson()).toList(),
        if (vertices != null)
          'vertices': vertices!.map((value) => value.toJson()).toList(),
      };
}

/// The common metadata for long running operations.
class GoogleCloudDocumentaiV1CommonOperationMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  GoogleCloudDocumentaiV1CommonOperationMetadata({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudDocumentaiV1CommonOperationMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Document represents the canonical document resource in Document
/// Understanding AI.
///
/// It is an interchange format that provides insights into documents and allows
/// for collaboration between users and Document Understanding AI to iterate and
/// optimize for quality.
class GoogleCloudDocumentaiV1Document {
  /// Inline document content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Optional.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A list of entities detected on Document.text.
  ///
  /// For document shards, entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1DocumentEntity>? entities;

  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1DocumentEntityRelation>? entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus? error;

  /// An IANA published MIME type (also referred to as media type).
  ///
  /// For more information, see
  /// https://www.iana.org/assignments/media-types/media-types.xhtml.
  core.String? mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1DocumentPage>? pages;

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

  /// A list of text corrections made to \[Document.text\].
  ///
  /// This is usually used for annotating corrections to OCR mistakes. Text
  /// changes for a given revision may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1DocumentTextChange>? textChanges;

  /// Styles for the Document.text.
  core.List<GoogleCloudDocumentaiV1DocumentStyle>? textStyles;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. See
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris)
  /// for more info.
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

  GoogleCloudDocumentaiV1Document.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentEntity>((value) =>
                      GoogleCloudDocumentaiV1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityRelations: _json.containsKey('entityRelations')
              ? (_json['entityRelations'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentEntityRelation>((value) =>
                      GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          pages: _json.containsKey('pages')
              ? (_json['pages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPage>((value) =>
                      GoogleCloudDocumentaiV1DocumentPage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisions: _json.containsKey('revisions')
              ? (_json['revisions'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentRevision>((value) =>
                      GoogleCloudDocumentaiV1DocumentRevision.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shardInfo: _json.containsKey('shardInfo')
              ? GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(
                  _json['shardInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          textChanges: _json.containsKey('textChanges')
              ? (_json['textChanges'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentTextChange>((value) =>
                      GoogleCloudDocumentaiV1DocumentTextChange.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textStyles: _json.containsKey('textStyles')
              ? (_json['textStyles'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentStyle>((value) =>
                      GoogleCloudDocumentaiV1DocumentStyle.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (entities != null)
          'entities': entities!.map((value) => value.toJson()).toList(),
        if (entityRelations != null)
          'entityRelations':
              entityRelations!.map((value) => value.toJson()).toList(),
        if (error != null) 'error': error!.toJson(),
        if (mimeType != null) 'mimeType': mimeType!,
        if (pages != null)
          'pages': pages!.map((value) => value.toJson()).toList(),
        if (revisions != null)
          'revisions': revisions!.map((value) => value.toJson()).toList(),
        if (shardInfo != null) 'shardInfo': shardInfo!.toJson(),
        if (text != null) 'text': text!,
        if (textChanges != null)
          'textChanges': textChanges!.map((value) => value.toJson()).toList(),
        if (textStyles != null)
          'textStyles': textStyles!.map((value) => value.toJson()).toList(),
        if (uri != null) 'uri': uri!,
      };
}

/// An entity that could be a phrase in the text or a property belongs to the
/// document.
///
/// It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1DocumentEntity {
  /// Confidence of detected Schema entity.
  ///
  /// Range \[0, 1\].
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

  /// Text value in the document e.g. `1600 Amphitheatre Pkwy`.
  ///
  /// If the entity is not present in the document, this field will be empty.
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

  GoogleCloudDocumentaiV1DocumentEntity.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          mentionId: _json.containsKey('mentionId')
              ? _json['mentionId'] as core.String
              : null,
          mentionText: _json.containsKey('mentionText')
              ? _json['mentionText'] as core.String
              : null,
          normalizedValue: _json.containsKey('normalizedValue')
              ? GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(
                  _json['normalizedValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pageAnchor: _json.containsKey('pageAnchor')
              ? GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(
                  _json['pageAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentEntity>((value) =>
                      GoogleCloudDocumentaiV1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          redacted: _json.containsKey('redacted')
              ? _json['redacted'] as core.bool
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (id != null) 'id': id!,
        if (mentionId != null) 'mentionId': mentionId!,
        if (mentionText != null) 'mentionText': mentionText!,
        if (normalizedValue != null)
          'normalizedValue': normalizedValue!.toJson(),
        if (pageAnchor != null) 'pageAnchor': pageAnchor!.toJson(),
        if (properties != null)
          'properties': properties!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (redacted != null) 'redacted': redacted!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
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
  /// For some entity types, one of respective 'structured_value' fields may
  /// also be populated. Also not all the types of 'structured_value' will be
  /// normalized. For example, some processors may not generate float or int
  /// normalized text by default. Below are sample formats mapped to structured
  /// values. - Money/Currency type (`money_value`) is in the ISO 4217 text
  /// format. - Date type (`date_value`) is in the ISO 8601 text format. -
  /// Datetime type (`datetime_value`) is in the ISO 8601 text format.
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

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(core.Map _json)
      : this(
          addressValue: _json.containsKey('addressValue')
              ? GoogleTypePostalAddress.fromJson(
                  _json['addressValue'] as core.Map<core.String, core.dynamic>)
              : null,
          booleanValue: _json.containsKey('booleanValue')
              ? _json['booleanValue'] as core.bool
              : null,
          dateValue: _json.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  _json['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          datetimeValue: _json.containsKey('datetimeValue')
              ? GoogleTypeDateTime.fromJson(
                  _json['datetimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          floatValue: _json.containsKey('floatValue')
              ? (_json['floatValue'] as core.num).toDouble()
              : null,
          integerValue: _json.containsKey('integerValue')
              ? _json['integerValue'] as core.int
              : null,
          moneyValue: _json.containsKey('moneyValue')
              ? GoogleTypeMoney.fromJson(
                  _json['moneyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressValue != null) 'addressValue': addressValue!.toJson(),
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValue != null) 'dateValue': dateValue!.toJson(),
        if (datetimeValue != null) 'datetimeValue': datetimeValue!.toJson(),
        if (floatValue != null) 'floatValue': floatValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (moneyValue != null) 'moneyValue': moneyValue!.toJson(),
        if (text != null) 'text': text!,
      };
}

/// Relationship between Entities.
class GoogleCloudDocumentaiV1DocumentEntityRelation {
  /// Object entity id.
  core.String? objectId;

  /// Relationship description.
  core.String? relation;

  /// Subject entity id.
  core.String? subjectId;

  GoogleCloudDocumentaiV1DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(core.Map _json)
      : this(
          objectId: _json.containsKey('objectId')
              ? _json['objectId'] as core.String
              : null,
          relation: _json.containsKey('relation')
              ? _json['relation'] as core.String
              : null,
          subjectId: _json.containsKey('subjectId')
              ? _json['subjectId'] as core.String
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
class GoogleCloudDocumentaiV1DocumentOutputConfig {
  /// Output config to write the results to Cloud Storage.
  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig? gcsOutputConfig;

  GoogleCloudDocumentaiV1DocumentOutputConfig({
    this.gcsOutputConfig,
  });

  GoogleCloudDocumentaiV1DocumentOutputConfig.fromJson(core.Map _json)
      : this(
          gcsOutputConfig: _json.containsKey('gcsOutputConfig')
              ? GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig
                  .fromJson(_json['gcsOutputConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsOutputConfig != null)
          'gcsOutputConfig': gcsOutputConfig!.toJson(),
      };
}

/// The configuration used when outputting documents.
class GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig {
  /// The Cloud Storage uri (a directory) of the output.
  core.String? gcsUri;

  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig({
    this.gcsUri,
  });

  GoogleCloudDocumentaiV1DocumentOutputConfigGcsOutputConfig.fromJson(
      core.Map _json)
      : this(
          gcsUri: _json.containsKey('gcsUri')
              ? _json['gcsUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsUri != null) 'gcsUri': gcsUri!,
      };
}

/// A page in a Document.
class GoogleCloudDocumentaiV1DocumentPage {
  /// A list of visually detected text blocks on the page.
  ///
  /// A block has a set of lines (collected into paragraphs) that have a common
  /// line-spacing and orientation.
  core.List<GoogleCloudDocumentaiV1DocumentPageBlock>? blocks;

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
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

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
    this.detectedLanguages,
    this.dimension,
    this.formFields,
    this.image,
    this.layout,
    this.lines,
    this.pageNumber,
    this.paragraphs,
    this.provenance,
    this.tables,
    this.tokens,
    this.transforms,
    this.visualElements,
  });

  GoogleCloudDocumentaiV1DocumentPage.fromJson(core.Map _json)
      : this(
          blocks: _json.containsKey('blocks')
              ? (_json['blocks'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageBlock>((value) =>
                      GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimension: _json.containsKey('dimension')
              ? GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(
                  _json['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          formFields: _json.containsKey('formFields')
              ? (_json['formFields'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageFormField>((value) =>
                      GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDocumentaiV1DocumentPageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          lines: _json.containsKey('lines')
              ? (_json['lines'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageLine>((value) =>
                      GoogleCloudDocumentaiV1DocumentPageLine.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageNumber: _json.containsKey('pageNumber')
              ? _json['pageNumber'] as core.int
              : null,
          paragraphs: _json.containsKey('paragraphs')
              ? (_json['paragraphs'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageParagraph>((value) =>
                      GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          tables: _json.containsKey('tables')
              ? (_json['tables'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageTable>((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTable.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: _json.containsKey('tokens')
              ? (_json['tokens'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageToken>((value) =>
                      GoogleCloudDocumentaiV1DocumentPageToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transforms: _json.containsKey('transforms')
              ? (_json['transforms'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageMatrix>((value) =>
                      GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          visualElements: _json.containsKey('visualElements')
              ? (_json['visualElements'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageVisualElement>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageVisualElement
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blocks != null)
          'blocks': blocks!.map((value) => value.toJson()).toList(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (dimension != null) 'dimension': dimension!.toJson(),
        if (formFields != null)
          'formFields': formFields!.map((value) => value.toJson()).toList(),
        if (image != null) 'image': image!.toJson(),
        if (layout != null) 'layout': layout!.toJson(),
        if (lines != null)
          'lines': lines!.map((value) => value.toJson()).toList(),
        if (pageNumber != null) 'pageNumber': pageNumber!,
        if (paragraphs != null)
          'paragraphs': paragraphs!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (tables != null)
          'tables': tables!.map((value) => value.toJson()).toList(),
        if (tokens != null)
          'tokens': tokens!.map((value) => value.toJson()).toList(),
        if (transforms != null)
          'transforms': transforms!.map((value) => value.toJson()).toList(),
        if (visualElements != null)
          'visualElements':
              visualElements!.map((value) => value.toJson()).toList(),
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

  GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(core.Map _json)
      : this(
          pageRefs: _json.containsKey('pageRefs')
              ? (_json['pageRefs'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageAnchorPageRef
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageRefs != null)
          'pageRefs': pageRefs!.map((value) => value.toJson()).toList(),
      };
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef {
  /// Identifies the bounding polygon of a layout element on the page.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of detected page element, if applicable.
  ///
  /// Range \[0, 1\].
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

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    this.page,
  });

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          layoutId: _json.containsKey('layoutId')
              ? _json['layoutId'] as core.String
              : null,
          layoutType: _json.containsKey('layoutType')
              ? _json['layoutType'] as core.String
              : null,
          page: _json.containsKey('page') ? _json['page'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!.toJson(),
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
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1DocumentPageDetectedLanguage {
  /// Confidence of detected language.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Dimension for the page.
class GoogleCloudDocumentaiV1DocumentPageDimension {
  /// Page height.
  core.double? height;

  /// Dimension unit.
  core.String? unit;

  /// Page width.
  core.double? width;

  GoogleCloudDocumentaiV1DocumentPageDimension({
    this.height,
    this.unit,
    this.width,
  });

  GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(core.Map _json)
      : this(
          height: _json.containsKey('height')
              ? (_json['height'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          width: _json.containsKey('width')
              ? (_json['width'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (unit != null) 'unit': unit!,
        if (width != null) 'width': width!,
      };
}

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
  /// Current valid values are: - blank (this indicates the field_value is
  /// normal text) - "unfilled_checkbox" - "filled_checkbox"
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

  GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(core.Map _json)
      : this(
          correctedKeyText: _json.containsKey('correctedKeyText')
              ? _json['correctedKeyText'] as core.String
              : null,
          correctedValueText: _json.containsKey('correctedValueText')
              ? _json['correctedValueText'] as core.String
              : null,
          fieldName: _json.containsKey('fieldName')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['fieldName'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldValue: _json.containsKey('fieldValue')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['fieldValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nameDetectedLanguages: _json.containsKey('nameDetectedLanguages')
              ? (_json['nameDetectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          valueDetectedLanguages: _json.containsKey('valueDetectedLanguages')
              ? (_json['valueDetectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correctedKeyText != null) 'correctedKeyText': correctedKeyText!,
        if (correctedValueText != null)
          'correctedValueText': correctedValueText!,
        if (fieldName != null) 'fieldName': fieldName!.toJson(),
        if (fieldValue != null) 'fieldValue': fieldValue!.toJson(),
        if (nameDetectedLanguages != null)
          'nameDetectedLanguages':
              nameDetectedLanguages!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (valueDetectedLanguages != null)
          'valueDetectedLanguages':
              valueDetectedLanguages!.map((value) => value.toJson()).toList(),
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1DocumentPageImage {
  /// Raw byte content of the image.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int? height;

  /// Encoding mime type for the image.
  core.String? mimeType;

  /// Width of the image in pixels.
  core.int? width;

  GoogleCloudDocumentaiV1DocumentPageImage({
    this.content,
    this.height,
    this.mimeType,
    this.width,
  });

  GoogleCloudDocumentaiV1DocumentPageImage.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (height != null) 'height': height!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (width != null) 'width': width!,
      };
}

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of the current Layout within context of the object this layout
  /// is for.
  ///
  /// e.g. confidence can be for a single token, a table, a visual element, etc.
  /// depending on context. Range \[0, 1\].
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

  GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          orientation: _json.containsKey('orientation')
              ? _json['orientation'] as core.String
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!.toJson(),
        if (confidence != null) 'confidence': confidence!,
        if (orientation != null) 'orientation': orientation!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
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
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageLine({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageLine.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Representation for transformation matrix, intended to be compatible and used
/// with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int? cols;

  /// The matrix data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int? rows;

  /// This encodes information about what data type the matrix uses.
  ///
  /// For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of
  /// OpenCV primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int? type;

  GoogleCloudDocumentaiV1DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(core.Map _json)
      : this(
          cols: _json.containsKey('cols') ? _json['cols'] as core.int : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          rows: _json.containsKey('rows') ? _json['rows'] as core.int : null,
          type: _json.containsKey('type') ? _json['type'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cols != null) 'cols': cols!,
        if (data != null) 'data': data!,
        if (rows != null) 'rows': rows!,
        if (type != null) 'type': type!,
      };
}

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageParagraph({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
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

  GoogleCloudDocumentaiV1DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
  });

  GoogleCloudDocumentaiV1DocumentPageTable.fromJson(core.Map _json)
      : this(
          bodyRows: _json.containsKey('bodyRows')
              ? (_json['bodyRows'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageTableTableRow>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageTableTableRow
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headerRows: _json.containsKey('headerRows')
              ? (_json['headerRows'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageTableTableRow>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageTableTableRow
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bodyRows != null)
          'bodyRows': bodyRows!.map((value) => value.toJson()).toList(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (headerRows != null)
          'headerRows': headerRows!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
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

  GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromJson(core.Map _json)
      : this(
          colSpan: _json.containsKey('colSpan')
              ? _json['colSpan'] as core.int
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          rowSpan: _json.containsKey('rowSpan')
              ? _json['rowSpan'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colSpan != null) 'colSpan': colSpan!,
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
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

  GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(core.Map _json)
      : this(
          cells: _json.containsKey('cells')
              ? (_json['cells'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageTableTableCell>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageTableTableCell
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null)
          'cells': cells!.map((value) => value.toJson()).toList(),
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
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageToken.fromJson(core.Map _json)
      : this(
          detectedBreak: _json.containsKey('detectedBreak')
              ? GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
                  _json['detectedBreak'] as core.Map<core.String, core.dynamic>)
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedBreak != null) 'detectedBreak': detectedBreak!.toJson(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak({
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
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

  GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (type != null) 'type': type!,
      };
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1DocumentProvenance {
  /// The Id of this operation.
  ///
  /// Needs to be unique within the scope of the revision.
  core.int? id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1DocumentProvenanceParent>? parents;

  /// The index of the revision that produced this element.
  core.int? revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified.
  /// - "ADD" : Add an element. Implicit if no `parents` are set for the
  /// provenance.
  /// - "REMOVE" : The element is removed. No `parents` should be set.
  /// - "REPLACE" : Explicitly replaces the element(s) identified by `parents`.
  /// - "EVAL_REQUESTED" : Element is requested for human review.
  /// - "EVAL_APPROVED" : Element is reviewed and approved at human review,
  /// confidence will be set to 1.0.
  /// - "EVAL_SKIPPED" : Element is skipped in the validation process.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentProvenance.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          parents: _json.containsKey('parents')
              ? (_json['parents'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentProvenanceParent>(
                      (value) => GoogleCloudDocumentaiV1DocumentProvenanceParent
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (parents != null)
          'parents': parents!.map((value) => value.toJson()).toList(),
        if (revision != null) 'revision': revision!,
        if (type != null) 'type': type!,
      };
}

/// Structure for referencing parent provenances.
///
/// When an element replaces one of more other elements parent references
/// identify the elements that are replaced.
class GoogleCloudDocumentaiV1DocumentProvenanceParent {
  /// The id of the parent provenance.
  core.int? id;

  /// The index of the parent item in the corresponding item list (eg.
  ///
  /// list of entities, properties within entities, etc.) on parent revision.
  core.int? index;

  /// The index of the \[Document.revisions\] identifying the parent revision.
  core.int? revision;

  GoogleCloudDocumentaiV1DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  GoogleCloudDocumentaiV1DocumentProvenanceParent.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (index != null) 'index': index!,
        if (revision != null) 'revision': revision!,
      };
}

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String? agent;

  /// The time that the revision was created.
  core.String? createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1DocumentRevisionHumanReview? humanReview;

  /// Id of the revision.
  ///
  /// Unique within the context of the document.
  core.String? id;

  /// The revisions that this revision is based on.
  ///
  /// This can include one or more parent (when documents are merged.) This
  /// field represents the index into the `revisions` field.
  core.List<core.int>? parent;

  /// If the annotation was made by processor identify the processor by its
  /// resource name.
  core.String? processor;

  GoogleCloudDocumentaiV1DocumentRevision({
    this.agent,
    this.createTime,
    this.humanReview,
    this.id,
    this.parent,
    this.processor,
  });

  GoogleCloudDocumentaiV1DocumentRevision.fromJson(core.Map _json)
      : this(
          agent:
              _json.containsKey('agent') ? _json['agent'] as core.String : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          humanReview: _json.containsKey('humanReview')
              ? GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(
                  _json['humanReview'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          parent: _json.containsKey('parent')
              ? (_json['parent'] as core.List)
                  .map<core.int>((value) => value as core.int)
                  .toList()
              : null,
          processor: _json.containsKey('processor')
              ? _json['processor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
        if (createTime != null) 'createTime': createTime!,
        if (humanReview != null) 'humanReview': humanReview!.toJson(),
        if (id != null) 'id': id!,
        if (parent != null) 'parent': parent!,
        if (processor != null) 'processor': processor!,
      };
}

/// Human Review information of the document.
class GoogleCloudDocumentaiV1DocumentRevisionHumanReview {
  /// Human review state.
  ///
  /// e.g. `requested`, `succeeded`, `rejected`.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the rejection reason when the state is `rejected`.
  core.String? stateMessage;

  GoogleCloudDocumentaiV1DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// For a large document, sharding may be performed to produce several document
/// shards.
///
/// Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1DocumentShardInfo {
  /// Total number of shards.
  core.String? shardCount;

  /// The 0-based index of this shard.
  core.String? shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String? textOffset;

  GoogleCloudDocumentaiV1DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(core.Map _json)
      : this(
          shardCount: _json.containsKey('shardCount')
              ? _json['shardCount'] as core.String
              : null,
          shardIndex: _json.containsKey('shardIndex')
              ? _json['shardIndex'] as core.String
              : null,
          textOffset: _json.containsKey('textOffset')
              ? _json['textOffset'] as core.String
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
class GoogleCloudDocumentaiV1DocumentStyle {
  /// Text background color.
  GoogleTypeColor? backgroundColor;

  /// Text color.
  GoogleTypeColor? color;

  /// Font size.
  GoogleCloudDocumentaiV1DocumentStyleFontSize? fontSize;

  /// Font weight.
  ///
  /// Possible values are normal, bold, bolder, and lighter.
  /// https://www.w3schools.com/cssref/pr_font_weight.asp
  core.String? fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

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

  GoogleCloudDocumentaiV1DocumentStyle({
    this.backgroundColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAnchor,
    this.textDecoration,
    this.textStyle,
  });

  GoogleCloudDocumentaiV1DocumentStyle.fromJson(core.Map _json)
      : this(
          backgroundColor: _json.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(_json['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          color: _json.containsKey('color')
              ? GoogleTypeColor.fromJson(
                  _json['color'] as core.Map<core.String, core.dynamic>)
              : null,
          fontSize: _json.containsKey('fontSize')
              ? GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(
                  _json['fontSize'] as core.Map<core.String, core.dynamic>)
              : null,
          fontWeight: _json.containsKey('fontWeight')
              ? _json['fontWeight'] as core.String
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          textDecoration: _json.containsKey('textDecoration')
              ? _json['textDecoration'] as core.String
              : null,
          textStyle: _json.containsKey('textStyle')
              ? _json['textStyle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null)
          'backgroundColor': backgroundColor!.toJson(),
        if (color != null) 'color': color!.toJson(),
        if (fontSize != null) 'fontSize': fontSize!.toJson(),
        if (fontWeight != null) 'fontWeight': fontWeight!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
        if (textDecoration != null) 'textDecoration': textDecoration!,
        if (textStyle != null) 'textStyle': textStyle!,
      };
}

/// Font size with unit.
class GoogleCloudDocumentaiV1DocumentStyleFontSize {
  /// Font size for the text.
  core.double? size;

  /// Unit for the font size.
  ///
  /// Follows CSS naming (in, px, pt, etc.).
  core.String? unit;

  GoogleCloudDocumentaiV1DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(core.Map _json)
      : this(
          size: _json.containsKey('size')
              ? (_json['size'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (unit != null) 'unit': unit!,
      };
}

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  core.String? content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>? textSegments;

  GoogleCloudDocumentaiV1DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          textSegments: _json.containsKey('textSegments')
              ? (_json['textSegments'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>(
                      (value) =>
                          GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (textSegments != null)
          'textSegments': textSegments!.map((value) => value.toJson()).toList(),
      };
}

/// A text segment in the Document.text.
///
/// The indices may be out of bounds which indicate that the text extends into
/// another document shard for large sharded documents. See
/// ShardInfo.text_offset
class GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String? endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String? startIndex;

  GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment.fromJson(core.Map _json)
      : this(
          endIndex: _json.containsKey('endIndex')
              ? _json['endIndex'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.String
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
class GoogleCloudDocumentaiV1DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String? changedText;

  /// The history of this annotation.
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

  GoogleCloudDocumentaiV1DocumentTextChange.fromJson(core.Map _json)
      : this(
          changedText: _json.containsKey('changedText')
              ? _json['changedText'] as core.String
              : null,
          provenance: _json.containsKey('provenance')
              ? (_json['provenance'] as core.List)
                  .map<GoogleCloudDocumentaiV1DocumentProvenance>((value) =>
                      GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedText != null) 'changedText': changedText!,
        if (provenance != null)
          'provenance': provenance!.map((value) => value.toJson()).toList(),
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
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

  GoogleCloudDocumentaiV1GcsDocument.fromJson(core.Map _json)
      : this(
          gcsUri: _json.containsKey('gcsUri')
              ? _json['gcsUri'] as core.String
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
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

  GoogleCloudDocumentaiV1GcsDocuments.fromJson(core.Map _json)
      : this(
          documents: _json.containsKey('documents')
              ? (_json['documents'] as core.List)
                  .map<GoogleCloudDocumentaiV1GcsDocument>((value) =>
                      GoogleCloudDocumentaiV1GcsDocument.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null)
          'documents': documents!.map((value) => value.toJson()).toList(),
      };
}

/// Specifies all documents on Cloud Storage with a common prefix.
class GoogleCloudDocumentaiV1GcsPrefix {
  /// The URI prefix.
  core.String? gcsUriPrefix;

  GoogleCloudDocumentaiV1GcsPrefix({
    this.gcsUriPrefix,
  });

  GoogleCloudDocumentaiV1GcsPrefix.fromJson(core.Map _json)
      : this(
          gcsUriPrefix: _json.containsKey('gcsUriPrefix')
              ? _json['gcsUriPrefix'] as core.String
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

  GoogleCloudDocumentaiV1HumanReviewStatus({
    this.humanReviewOperation,
    this.state,
    this.stateMessage,
  });

  GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(core.Map _json)
      : this(
          humanReviewOperation: _json.containsKey('humanReviewOperation')
              ? _json['humanReviewOperation'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReviewOperation != null)
          'humanReviewOperation': humanReviewOperation!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudDocumentaiV1NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate (starts from the top of the image).
  core.double? y;

  GoogleCloudDocumentaiV1NormalizedVertex({
    this.x,
    this.y,
  });

  GoogleCloudDocumentaiV1NormalizedVertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Request message for the process document method.
class GoogleCloudDocumentaiV1ProcessRequest {
  /// An inline document proto.
  GoogleCloudDocumentaiV1Document? inlineDocument;

  /// A raw document content (bytes).
  GoogleCloudDocumentaiV1RawDocument? rawDocument;

  /// Whether Human Review feature should be skipped for this request.
  ///
  /// Default to false.
  core.bool? skipHumanReview;

  GoogleCloudDocumentaiV1ProcessRequest({
    this.inlineDocument,
    this.rawDocument,
    this.skipHumanReview,
  });

  GoogleCloudDocumentaiV1ProcessRequest.fromJson(core.Map _json)
      : this(
          inlineDocument: _json.containsKey('inlineDocument')
              ? GoogleCloudDocumentaiV1Document.fromJson(_json['inlineDocument']
                  as core.Map<core.String, core.dynamic>)
              : null,
          rawDocument: _json.containsKey('rawDocument')
              ? GoogleCloudDocumentaiV1RawDocument.fromJson(
                  _json['rawDocument'] as core.Map<core.String, core.dynamic>)
              : null,
          skipHumanReview: _json.containsKey('skipHumanReview')
              ? _json['skipHumanReview'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inlineDocument != null) 'inlineDocument': inlineDocument!.toJson(),
        if (rawDocument != null) 'rawDocument': rawDocument!.toJson(),
        if (skipHumanReview != null) 'skipHumanReview': skipHumanReview!,
      };
}

/// Response message for the process document method.
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

  GoogleCloudDocumentaiV1ProcessResponse.fromJson(core.Map _json)
      : this(
          document: _json.containsKey('document')
              ? GoogleCloudDocumentaiV1Document.fromJson(
                  _json['document'] as core.Map<core.String, core.dynamic>)
              : null,
          humanReviewStatus: _json.containsKey('humanReviewStatus')
              ? GoogleCloudDocumentaiV1HumanReviewStatus.fromJson(
                  _json['humanReviewStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!.toJson(),
        if (humanReviewStatus != null)
          'humanReviewStatus': humanReviewStatus!.toJson(),
      };
}

/// Payload message of raw document content (bytes).
class GoogleCloudDocumentaiV1RawDocument {
  /// Inline document content.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// An IANA MIME type (RFC6838) indicating the nature and format of the
  /// \[content\].
  core.String? mimeType;

  GoogleCloudDocumentaiV1RawDocument({
    this.content,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1RawDocument.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// The long running operation metadata for review document method.
class GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiV1CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiV1ReviewDocumentOperationMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiV1CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Request message for review document method.
///
/// Next Id: 6.
class GoogleCloudDocumentaiV1ReviewDocumentRequest {
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
    this.enableSchemaValidation,
    this.inlineDocument,
    this.priority,
  });

  GoogleCloudDocumentaiV1ReviewDocumentRequest.fromJson(core.Map _json)
      : this(
          enableSchemaValidation: _json.containsKey('enableSchemaValidation')
              ? _json['enableSchemaValidation'] as core.bool
              : null,
          inlineDocument: _json.containsKey('inlineDocument')
              ? GoogleCloudDocumentaiV1Document.fromJson(_json['inlineDocument']
                  as core.Map<core.String, core.dynamic>)
              : null,
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableSchemaValidation != null)
          'enableSchemaValidation': enableSchemaValidation!,
        if (inlineDocument != null) 'inlineDocument': inlineDocument!.toJson(),
        if (priority != null) 'priority': priority!,
      };
}

/// Response message for review document method.
class GoogleCloudDocumentaiV1ReviewDocumentResponse {
  /// The Cloud Storage uri for the human reviewed document.
  core.String? gcsDestination;

  GoogleCloudDocumentaiV1ReviewDocumentResponse({
    this.gcsDestination,
  });

  GoogleCloudDocumentaiV1ReviewDocumentResponse.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? _json['gcsDestination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudDocumentaiV1Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate (starts from the top of the image).
  core.int? y;

  GoogleCloudDocumentaiV1Vertex({
    this.x,
    this.y,
  });

  GoogleCloudDocumentaiV1Vertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x') ? _json['x'] as core.int : null,
          y: _json.containsKey('y') ? _json['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Response to an batch document processing request.
///
/// This is returned in the LRO Operation after the operation is complete.
class GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse {
  /// Responses for each individual document.
  core.List<GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>? responses;

  GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse({
    this.responses,
  });

  GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse.fromJson(
      core.Map _json)
      : this(
          responses: _json.containsKey('responses')
              ? (_json['responses'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1ProcessDocumentResponse
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null)
          'responses': responses!.map((value) => value.toJson()).toList(),
      };
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1beta1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDocumentaiV1beta1NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudDocumentaiV1beta1Vertex>? vertices;

  GoogleCloudDocumentaiV1beta1BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(core.Map _json)
      : this(
          normalizedVertices: _json.containsKey('normalizedVertices')
              ? (_json['normalizedVertices'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1NormalizedVertex>((value) =>
                      GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vertices: _json.containsKey('vertices')
              ? (_json['vertices'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1Vertex>((value) =>
                      GoogleCloudDocumentaiV1beta1Vertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedVertices != null)
          'normalizedVertices':
              normalizedVertices!.map((value) => value.toJson()).toList(),
        if (vertices != null)
          'vertices': vertices!.map((value) => value.toJson()).toList(),
      };
}

/// Document represents the canonical document resource in Document
/// Understanding AI.
///
/// It is an interchange format that provides insights into documents and allows
/// for collaboration between users and Document Understanding AI to iterate and
/// optimize for quality.
class GoogleCloudDocumentaiV1beta1Document {
  /// Inline document content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Optional.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A list of entities detected on Document.text.
  ///
  /// For document shards, entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1beta1DocumentEntity>? entities;

  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1beta1DocumentEntityRelation>?
      entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus? error;

  /// An IANA published MIME type (also referred to as media type).
  ///
  /// For more information, see
  /// https://www.iana.org/assignments/media-types/media-types.xhtml.
  core.String? mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPage>? pages;

  /// Revision history of this document.
  core.List<GoogleCloudDocumentaiV1beta1DocumentRevision>? revisions;

  /// Information about the sharding if this document is sharded part of a
  /// larger document.
  ///
  /// If the document is not sharded, this message is not specified.
  GoogleCloudDocumentaiV1beta1DocumentShardInfo? shardInfo;

  /// UTF-8 encoded text in reading order from the document.
  ///
  /// Optional.
  core.String? text;

  /// A list of text corrections made to \[Document.text\].
  ///
  /// This is usually used for annotating corrections to OCR mistakes. Text
  /// changes for a given revision may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1beta1DocumentTextChange>? textChanges;

  /// Styles for the Document.text.
  core.List<GoogleCloudDocumentaiV1beta1DocumentStyle>? textStyles;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. See
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris)
  /// for more info.
  ///
  /// Optional.
  core.String? uri;

  GoogleCloudDocumentaiV1beta1Document({
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

  GoogleCloudDocumentaiV1beta1Document.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentEntity>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityRelations: _json.containsKey('entityRelations')
              ? (_json['entityRelations'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentEntityRelation>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentEntityRelation
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          pages: _json.containsKey('pages')
              ? (_json['pages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPage>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisions: _json.containsKey('revisions')
              ? (_json['revisions'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentRevision>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shardInfo: _json.containsKey('shardInfo')
              ? GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(
                  _json['shardInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          textChanges: _json.containsKey('textChanges')
              ? (_json['textChanges'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentTextChange>(
                      (value) => GoogleCloudDocumentaiV1beta1DocumentTextChange
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textStyles: _json.containsKey('textStyles')
              ? (_json['textStyles'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentStyle>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (entities != null)
          'entities': entities!.map((value) => value.toJson()).toList(),
        if (entityRelations != null)
          'entityRelations':
              entityRelations!.map((value) => value.toJson()).toList(),
        if (error != null) 'error': error!.toJson(),
        if (mimeType != null) 'mimeType': mimeType!,
        if (pages != null)
          'pages': pages!.map((value) => value.toJson()).toList(),
        if (revisions != null)
          'revisions': revisions!.map((value) => value.toJson()).toList(),
        if (shardInfo != null) 'shardInfo': shardInfo!.toJson(),
        if (text != null) 'text': text!,
        if (textChanges != null)
          'textChanges': textChanges!.map((value) => value.toJson()).toList(),
        if (textStyles != null)
          'textStyles': textStyles!.map((value) => value.toJson()).toList(),
        if (uri != null) 'uri': uri!,
      };
}

/// An entity that could be a phrase in the text or a property belongs to the
/// document.
///
/// It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1beta1DocumentEntity {
  /// Confidence of detected Schema entity.
  ///
  /// Range \[0, 1\].
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

  /// Text value in the document e.g. `1600 Amphitheatre Pkwy`.
  ///
  /// If the entity is not present in the document, this field will be empty.
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
  GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue? normalizedValue;

  /// Represents the provenance of this entity wrt.
  ///
  /// the location on the page where it was found.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta1DocumentPageAnchor? pageAnchor;

  /// Entities can be nested to form a hierarchical data structure representing
  /// the content in the document.
  ///
  /// Optional.
  core.List<GoogleCloudDocumentaiV1beta1DocumentEntity>? properties;

  /// The history of this annotation.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta1DocumentProvenance? provenance;

  /// Whether the entity will be redacted for de-identification purposes.
  ///
  /// Optional.
  core.bool? redacted;

  /// Provenance of the entity.
  ///
  /// Text anchor indexing into the Document.text.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor? textAnchor;

  /// Entity type from a schema e.g. `Address`.
  core.String? type;

  GoogleCloudDocumentaiV1beta1DocumentEntity({
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

  GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          mentionId: _json.containsKey('mentionId')
              ? _json['mentionId'] as core.String
              : null,
          mentionText: _json.containsKey('mentionText')
              ? _json['mentionText'] as core.String
              : null,
          normalizedValue: _json.containsKey('normalizedValue')
              ? GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue
                  .fromJson(_json['normalizedValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pageAnchor: _json.containsKey('pageAnchor')
              ? GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(
                  _json['pageAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentEntity>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          redacted: _json.containsKey('redacted')
              ? _json['redacted'] as core.bool
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (id != null) 'id': id!,
        if (mentionId != null) 'mentionId': mentionId!,
        if (mentionText != null) 'mentionText': mentionText!,
        if (normalizedValue != null)
          'normalizedValue': normalizedValue!.toJson(),
        if (pageAnchor != null) 'pageAnchor': pageAnchor!.toJson(),
        if (properties != null)
          'properties': properties!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (redacted != null) 'redacted': redacted!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
        if (type != null) 'type': type!,
      };
}

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue {
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
  /// For some entity types, one of respective 'structured_value' fields may
  /// also be populated. Also not all the types of 'structured_value' will be
  /// normalized. For example, some processors may not generate float or int
  /// normalized text by default. Below are sample formats mapped to structured
  /// values. - Money/Currency type (`money_value`) is in the ISO 4217 text
  /// format. - Date type (`date_value`) is in the ISO 8601 text format. -
  /// Datetime type (`datetime_value`) is in the ISO 8601 text format.
  ///
  /// Optional.
  core.String? text;

  GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue({
    this.addressValue,
    this.booleanValue,
    this.dateValue,
    this.datetimeValue,
    this.floatValue,
    this.integerValue,
    this.moneyValue,
    this.text,
  });

  GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue.fromJson(
      core.Map _json)
      : this(
          addressValue: _json.containsKey('addressValue')
              ? GoogleTypePostalAddress.fromJson(
                  _json['addressValue'] as core.Map<core.String, core.dynamic>)
              : null,
          booleanValue: _json.containsKey('booleanValue')
              ? _json['booleanValue'] as core.bool
              : null,
          dateValue: _json.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  _json['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          datetimeValue: _json.containsKey('datetimeValue')
              ? GoogleTypeDateTime.fromJson(
                  _json['datetimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          floatValue: _json.containsKey('floatValue')
              ? (_json['floatValue'] as core.num).toDouble()
              : null,
          integerValue: _json.containsKey('integerValue')
              ? _json['integerValue'] as core.int
              : null,
          moneyValue: _json.containsKey('moneyValue')
              ? GoogleTypeMoney.fromJson(
                  _json['moneyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressValue != null) 'addressValue': addressValue!.toJson(),
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValue != null) 'dateValue': dateValue!.toJson(),
        if (datetimeValue != null) 'datetimeValue': datetimeValue!.toJson(),
        if (floatValue != null) 'floatValue': floatValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (moneyValue != null) 'moneyValue': moneyValue!.toJson(),
        if (text != null) 'text': text!,
      };
}

/// Relationship between Entities.
class GoogleCloudDocumentaiV1beta1DocumentEntityRelation {
  /// Object entity id.
  core.String? objectId;

  /// Relationship description.
  core.String? relation;

  /// Subject entity id.
  core.String? subjectId;

  GoogleCloudDocumentaiV1beta1DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  GoogleCloudDocumentaiV1beta1DocumentEntityRelation.fromJson(core.Map _json)
      : this(
          objectId: _json.containsKey('objectId')
              ? _json['objectId'] as core.String
              : null,
          relation: _json.containsKey('relation')
              ? _json['relation'] as core.String
              : null,
          subjectId: _json.containsKey('subjectId')
              ? _json['subjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
        if (relation != null) 'relation': relation!,
        if (subjectId != null) 'subjectId': subjectId!,
      };
}

/// A page in a Document.
class GoogleCloudDocumentaiV1beta1DocumentPage {
  /// A list of visually detected text blocks on the page.
  ///
  /// A block has a set of lines (collected into paragraphs) that have a common
  /// line-spacing and orientation.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageBlock>? blocks;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Physical dimension of the page.
  GoogleCloudDocumentaiV1beta1DocumentPageDimension? dimension;

  /// A list of visually detected form fields on the page.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageFormField>? formFields;

  /// Rendered image for this page.
  ///
  /// This image is preprocessed to remove any skew, rotation, and distortions
  /// such that the annotation bounding boxes can be upright and axis-aligned.
  GoogleCloudDocumentaiV1beta1DocumentPageImage? image;

  /// Layout for the page.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? layout;

  /// A list of visually detected text lines on the page.
  ///
  /// A collection of tokens that a human would perceive as a line.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageLine>? lines;

  /// 1-based index for current Page in a parent Document.
  ///
  /// Useful when a page is taken out of a Document for individual processing.
  core.int? pageNumber;

  /// A list of visually detected text paragraphs on the page.
  ///
  /// A collection of lines that a human would perceive as a paragraph.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageParagraph>? paragraphs;

  /// The history of this page.
  GoogleCloudDocumentaiV1beta1DocumentProvenance? provenance;

  /// A list of visually detected tables on the page.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageTable>? tables;

  /// A list of visually detected tokens on the page.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageToken>? tokens;

  /// Transformation matrices that were applied to the original document image
  /// to produce Page.image.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageMatrix>? transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc.
  ///
  /// on the page.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>?
      visualElements;

  GoogleCloudDocumentaiV1beta1DocumentPage({
    this.blocks,
    this.detectedLanguages,
    this.dimension,
    this.formFields,
    this.image,
    this.layout,
    this.lines,
    this.pageNumber,
    this.paragraphs,
    this.provenance,
    this.tables,
    this.tokens,
    this.transforms,
    this.visualElements,
  });

  GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(core.Map _json)
      : this(
          blocks: _json.containsKey('blocks')
              ? (_json['blocks'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageBlock>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimension: _json.containsKey('dimension')
              ? GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(
                  _json['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          formFields: _json.containsKey('formFields')
              ? (_json['formFields'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageFormField>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageFormField
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          lines: _json.containsKey('lines')
              ? (_json['lines'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageLine>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageNumber: _json.containsKey('pageNumber')
              ? _json['pageNumber'] as core.int
              : null,
          paragraphs: _json.containsKey('paragraphs')
              ? (_json['paragraphs'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageParagraph>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageParagraph
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          tables: _json.containsKey('tables')
              ? (_json['tables'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageTable>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: _json.containsKey('tokens')
              ? (_json['tokens'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageToken>((value) =>
                      GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transforms: _json.containsKey('transforms')
              ? (_json['transforms'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageMatrix>(
                      (value) => GoogleCloudDocumentaiV1beta1DocumentPageMatrix
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          visualElements: _json.containsKey('visualElements')
              ? (_json['visualElements'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageVisualElement
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blocks != null)
          'blocks': blocks!.map((value) => value.toJson()).toList(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (dimension != null) 'dimension': dimension!.toJson(),
        if (formFields != null)
          'formFields': formFields!.map((value) => value.toJson()).toList(),
        if (image != null) 'image': image!.toJson(),
        if (layout != null) 'layout': layout!.toJson(),
        if (lines != null)
          'lines': lines!.map((value) => value.toJson()).toList(),
        if (pageNumber != null) 'pageNumber': pageNumber!,
        if (paragraphs != null)
          'paragraphs': paragraphs!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (tables != null)
          'tables': tables!.map((value) => value.toJson()).toList(),
        if (tokens != null)
          'tokens': tokens!.map((value) => value.toJson()).toList(),
        if (transforms != null)
          'transforms': transforms!.map((value) => value.toJson()).toList(),
        if (visualElements != null)
          'visualElements':
              visualElements!.map((value) => value.toJson()).toList(),
      };
}

/// Referencing the visual context of the entity in the Document.pages.
///
/// Page anchors can be cross-page, consist of multiple bounding polygons and
/// optionally reference specific layout element types.
class GoogleCloudDocumentaiV1beta1DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>? pageRefs;

  GoogleCloudDocumentaiV1beta1DocumentPageAnchor({
    this.pageRefs,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(core.Map _json)
      : this(
          pageRefs: _json.containsKey('pageRefs')
              ? (_json['pageRefs'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageRefs != null)
          'pageRefs': pageRefs!.map((value) => value.toJson()).toList(),
      };
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef {
  /// Identifies the bounding polygon of a layout element on the page.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta1BoundingPoly? boundingPoly;

  /// Confidence of detected page element, if applicable.
  ///
  /// Range \[0, 1\].
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

  GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    this.page,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          layoutId: _json.containsKey('layoutId')
              ? _json['layoutId'] as core.String
              : null,
          layoutType: _json.containsKey('layoutType')
              ? _json['layoutType'] as core.String
              : null,
          page: _json.containsKey('page') ? _json['page'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!.toJson(),
        if (confidence != null) 'confidence': confidence!,
        if (layoutId != null) 'layoutId': layoutId!,
        if (layoutType != null) 'layoutType': layoutType!,
        if (page != null) 'page': page!,
      };
}

/// A block has a set of lines (collected into paragraphs) that have a common
/// line-spacing and orientation.
class GoogleCloudDocumentaiV1beta1DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta1DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage {
  /// Confidence of detected language.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.fromJson(
      core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Dimension for the page.
class GoogleCloudDocumentaiV1beta1DocumentPageDimension {
  /// Page height.
  core.double? height;

  /// Dimension unit.
  core.String? unit;

  /// Page width.
  core.double? width;

  GoogleCloudDocumentaiV1beta1DocumentPageDimension({
    this.height,
    this.unit,
    this.width,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(core.Map _json)
      : this(
          height: _json.containsKey('height')
              ? (_json['height'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          width: _json.containsKey('width')
              ? (_json['width'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (unit != null) 'unit': unit!,
        if (width != null) 'width': width!,
      };
}

/// A form field detected on the page.
class GoogleCloudDocumentaiV1beta1DocumentPageFormField {
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
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? fieldName;

  /// Layout for the FormField value.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? fieldValue;

  /// A list of detected languages for name together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      nameDetectedLanguages;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance? provenance;

  /// A list of detected languages for value together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type.
  ///
  /// Current valid values are: - blank (this indicates the field_value is
  /// normal text) - "unfilled_checkbox" - "filled_checkbox"
  core.String? valueType;

  GoogleCloudDocumentaiV1beta1DocumentPageFormField({
    this.correctedKeyText,
    this.correctedValueText,
    this.fieldName,
    this.fieldValue,
    this.nameDetectedLanguages,
    this.provenance,
    this.valueDetectedLanguages,
    this.valueType,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageFormField.fromJson(core.Map _json)
      : this(
          correctedKeyText: _json.containsKey('correctedKeyText')
              ? _json['correctedKeyText'] as core.String
              : null,
          correctedValueText: _json.containsKey('correctedValueText')
              ? _json['correctedValueText'] as core.String
              : null,
          fieldName: _json.containsKey('fieldName')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['fieldName'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldValue: _json.containsKey('fieldValue')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['fieldValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nameDetectedLanguages: _json.containsKey('nameDetectedLanguages')
              ? (_json['nameDetectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          valueDetectedLanguages: _json.containsKey('valueDetectedLanguages')
              ? (_json['valueDetectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correctedKeyText != null) 'correctedKeyText': correctedKeyText!,
        if (correctedValueText != null)
          'correctedValueText': correctedValueText!,
        if (fieldName != null) 'fieldName': fieldName!.toJson(),
        if (fieldValue != null) 'fieldValue': fieldValue!.toJson(),
        if (nameDetectedLanguages != null)
          'nameDetectedLanguages':
              nameDetectedLanguages!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (valueDetectedLanguages != null)
          'valueDetectedLanguages':
              valueDetectedLanguages!.map((value) => value.toJson()).toList(),
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1beta1DocumentPageImage {
  /// Raw byte content of the image.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int? height;

  /// Encoding mime type for the image.
  core.String? mimeType;

  /// Width of the image in pixels.
  core.int? width;

  GoogleCloudDocumentaiV1beta1DocumentPageImage({
    this.content,
    this.height,
    this.mimeType,
    this.width,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (height != null) 'height': height!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (width != null) 'width': width!,
      };
}

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1beta1DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1beta1BoundingPoly? boundingPoly;

  /// Confidence of the current Layout within context of the object this layout
  /// is for.
  ///
  /// e.g. confidence can be for a single token, a table, a visual element, etc.
  /// depending on context. Range \[0, 1\].
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
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1beta1DocumentPageLayout({
    this.boundingPoly,
    this.confidence,
    this.orientation,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          orientation: _json.containsKey('orientation')
              ? _json['orientation'] as core.String
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!.toJson(),
        if (confidence != null) 'confidence': confidence!,
        if (orientation != null) 'orientation': orientation!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
      };
}

/// A collection of tokens that a human would perceive as a line.
///
/// Does not cross column boundaries, can be horizontal, vertical, etc.
class GoogleCloudDocumentaiV1beta1DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta1DocumentPageLine({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Representation for transformation matrix, intended to be compatible and used
/// with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1beta1DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int? cols;

  /// The matrix data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int? rows;

  /// This encodes information about what data type the matrix uses.
  ///
  /// For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of
  /// OpenCV primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int? type;

  GoogleCloudDocumentaiV1beta1DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageMatrix.fromJson(core.Map _json)
      : this(
          cols: _json.containsKey('cols') ? _json['cols'] as core.int : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          rows: _json.containsKey('rows') ? _json['rows'] as core.int : null,
          type: _json.containsKey('type') ? _json['type'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cols != null) 'cols': cols!,
        if (data != null) 'data': data!,
        if (rows != null) 'rows': rows!,
        if (type != null) 'type': type!,
      };
}

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1beta1DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta1DocumentPageParagraph({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageParagraph.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1beta1DocumentPageTable {
  /// Body rows of the table.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>? bodyRows;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Header rows of the table.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>? headerRows;

  /// Layout for Table.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1beta1DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(core.Map _json)
      : this(
          bodyRows: _json.containsKey('bodyRows')
              ? (_json['bodyRows'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headerRows: _json.containsKey('headerRows')
              ? (_json['headerRows'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bodyRows != null)
          'bodyRows': bodyRows!.map((value) => value.toJson()).toList(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (headerRows != null)
          'headerRows': headerRows!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
      };
}

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell {
  /// How many columns this cell spans.
  core.int? colSpan;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for TableCell.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? layout;

  /// How many rows this cell spans.
  core.int? rowSpan;

  GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell({
    this.colSpan,
    this.detectedLanguages,
    this.layout,
    this.rowSpan,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell.fromJson(
      core.Map _json)
      : this(
          colSpan: _json.containsKey('colSpan')
              ? _json['colSpan'] as core.int
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          rowSpan: _json.containsKey('rowSpan')
              ? _json['rowSpan'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colSpan != null) 'colSpan': colSpan!,
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (rowSpan != null) 'rowSpan': rowSpan!,
      };
}

/// A row of table cells.
class GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>? cells;

  GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow({
    this.cells,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(core.Map _json)
      : this(
          cells: _json.containsKey('cells')
              ? (_json['cells'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null)
          'cells': cells!.map((value) => value.toJson()).toList(),
      };
}

/// A detected token.
class GoogleCloudDocumentaiV1beta1DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta1DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(core.Map _json)
      : this(
          detectedBreak: _json.containsKey('detectedBreak')
              ? GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak
                  .fromJson(_json['detectedBreak']
                      as core.Map<core.String, core.dynamic>)
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedBreak != null) 'detectedBreak': detectedBreak!.toJson(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String? type;

  GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak({
    this.type,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak.fromJson(
      core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Detected non-text visual elements e.g. checkbox, signature etc.
///
/// on the page.
class GoogleCloudDocumentaiV1beta1DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for VisualElement.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout? layout;

  /// Type of the VisualElement.
  core.String? type;

  GoogleCloudDocumentaiV1beta1DocumentPageVisualElement({
    this.detectedLanguages,
    this.layout,
    this.type,
  });

  GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (type != null) 'type': type!,
      };
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1beta1DocumentProvenance {
  /// The Id of this operation.
  ///
  /// Needs to be unique within the scope of the revision.
  core.int? id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>? parents;

  /// The index of the revision that produced this element.
  core.int? revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified.
  /// - "ADD" : Add an element. Implicit if no `parents` are set for the
  /// provenance.
  /// - "REMOVE" : The element is removed. No `parents` should be set.
  /// - "REPLACE" : Explicitly replaces the element(s) identified by `parents`.
  /// - "EVAL_REQUESTED" : Element is requested for human review.
  /// - "EVAL_APPROVED" : Element is reviewed and approved at human review,
  /// confidence will be set to 1.0.
  /// - "EVAL_SKIPPED" : Element is skipped in the validation process.
  core.String? type;

  GoogleCloudDocumentaiV1beta1DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          parents: _json.containsKey('parents')
              ? (_json['parents'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentProvenanceParent
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (parents != null)
          'parents': parents!.map((value) => value.toJson()).toList(),
        if (revision != null) 'revision': revision!,
        if (type != null) 'type': type!,
      };
}

/// Structure for referencing parent provenances.
///
/// When an element replaces one of more other elements parent references
/// identify the elements that are replaced.
class GoogleCloudDocumentaiV1beta1DocumentProvenanceParent {
  /// The id of the parent provenance.
  core.int? id;

  /// The index of the parent item in the corresponding item list (eg.
  ///
  /// list of entities, properties within entities, etc.) on parent revision.
  core.int? index;

  /// The index of the \[Document.revisions\] identifying the parent revision.
  core.int? revision;

  GoogleCloudDocumentaiV1beta1DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  GoogleCloudDocumentaiV1beta1DocumentProvenanceParent.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (index != null) 'index': index!,
        if (revision != null) 'revision': revision!,
      };
}

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1beta1DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String? agent;

  /// The time that the revision was created.
  core.String? createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview? humanReview;

  /// Id of the revision.
  ///
  /// Unique within the context of the document.
  core.String? id;

  /// The revisions that this revision is based on.
  ///
  /// This can include one or more parent (when documents are merged.) This
  /// field represents the index into the `revisions` field.
  core.List<core.int>? parent;

  /// If the annotation was made by processor identify the processor by its
  /// resource name.
  core.String? processor;

  GoogleCloudDocumentaiV1beta1DocumentRevision({
    this.agent,
    this.createTime,
    this.humanReview,
    this.id,
    this.parent,
    this.processor,
  });

  GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(core.Map _json)
      : this(
          agent:
              _json.containsKey('agent') ? _json['agent'] as core.String : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          humanReview: _json.containsKey('humanReview')
              ? GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview
                  .fromJson(_json['humanReview']
                      as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          parent: _json.containsKey('parent')
              ? (_json['parent'] as core.List)
                  .map<core.int>((value) => value as core.int)
                  .toList()
              : null,
          processor: _json.containsKey('processor')
              ? _json['processor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
        if (createTime != null) 'createTime': createTime!,
        if (humanReview != null) 'humanReview': humanReview!.toJson(),
        if (id != null) 'id': id!,
        if (parent != null) 'parent': parent!,
        if (processor != null) 'processor': processor!,
      };
}

/// Human Review information of the document.
class GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview {
  /// Human review state.
  ///
  /// e.g. `requested`, `succeeded`, `rejected`.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the rejection reason when the state is `rejected`.
  core.String? stateMessage;

  GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.fromJson(
      core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// For a large document, sharding may be performed to produce several document
/// shards.
///
/// Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1beta1DocumentShardInfo {
  /// Total number of shards.
  core.String? shardCount;

  /// The 0-based index of this shard.
  core.String? shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String? textOffset;

  GoogleCloudDocumentaiV1beta1DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(core.Map _json)
      : this(
          shardCount: _json.containsKey('shardCount')
              ? _json['shardCount'] as core.String
              : null,
          shardIndex: _json.containsKey('shardIndex')
              ? _json['shardIndex'] as core.String
              : null,
          textOffset: _json.containsKey('textOffset')
              ? _json['textOffset'] as core.String
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
class GoogleCloudDocumentaiV1beta1DocumentStyle {
  /// Text background color.
  GoogleTypeColor? backgroundColor;

  /// Text color.
  GoogleTypeColor? color;

  /// Font size.
  GoogleCloudDocumentaiV1beta1DocumentStyleFontSize? fontSize;

  /// Font weight.
  ///
  /// Possible values are normal, bold, bolder, and lighter.
  /// https://www.w3schools.com/cssref/pr_font_weight.asp
  core.String? fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor? textAnchor;

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

  GoogleCloudDocumentaiV1beta1DocumentStyle({
    this.backgroundColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAnchor,
    this.textDecoration,
    this.textStyle,
  });

  GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(core.Map _json)
      : this(
          backgroundColor: _json.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(_json['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          color: _json.containsKey('color')
              ? GoogleTypeColor.fromJson(
                  _json['color'] as core.Map<core.String, core.dynamic>)
              : null,
          fontSize: _json.containsKey('fontSize')
              ? GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(
                  _json['fontSize'] as core.Map<core.String, core.dynamic>)
              : null,
          fontWeight: _json.containsKey('fontWeight')
              ? _json['fontWeight'] as core.String
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          textDecoration: _json.containsKey('textDecoration')
              ? _json['textDecoration'] as core.String
              : null,
          textStyle: _json.containsKey('textStyle')
              ? _json['textStyle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null)
          'backgroundColor': backgroundColor!.toJson(),
        if (color != null) 'color': color!.toJson(),
        if (fontSize != null) 'fontSize': fontSize!.toJson(),
        if (fontWeight != null) 'fontWeight': fontWeight!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
        if (textDecoration != null) 'textDecoration': textDecoration!,
        if (textStyle != null) 'textStyle': textStyle!,
      };
}

/// Font size with unit.
class GoogleCloudDocumentaiV1beta1DocumentStyleFontSize {
  /// Font size for the text.
  core.double? size;

  /// Unit for the font size.
  ///
  /// Follows CSS naming (in, px, pt, etc.).
  core.String? unit;

  GoogleCloudDocumentaiV1beta1DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(core.Map _json)
      : this(
          size: _json.containsKey('size')
              ? (_json['size'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (unit != null) 'unit': unit!,
      };
}

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1beta1DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  core.String? content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>?
      textSegments;

  GoogleCloudDocumentaiV1beta1DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          textSegments: _json.containsKey('textSegments')
              ? (_json['textSegments'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (textSegments != null)
          'textSegments': textSegments!.map((value) => value.toJson()).toList(),
      };
}

/// A text segment in the Document.text.
///
/// The indices may be out of bounds which indicate that the text extends into
/// another document shard for large sharded documents. See
/// ShardInfo.text_offset
class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String? endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String? startIndex;

  GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment.fromJson(
      core.Map _json)
      : this(
          endIndex: _json.containsKey('endIndex')
              ? _json['endIndex'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.String
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
class GoogleCloudDocumentaiV1beta1DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String? changedText;

  /// The history of this annotation.
  core.List<GoogleCloudDocumentaiV1beta1DocumentProvenance>? provenance;

  /// Provenance of the correction.
  ///
  /// Text anchor indexing into the Document.text. There can only be a single
  /// `TextAnchor.text_segments` element. If the start and end index of the text
  /// segment are the same, the text change is inserted before that index.
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1beta1DocumentTextChange({
    this.changedText,
    this.provenance,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1beta1DocumentTextChange.fromJson(core.Map _json)
      : this(
          changedText: _json.containsKey('changedText')
              ? _json['changedText'] as core.String
              : null,
          provenance: _json.containsKey('provenance')
              ? (_json['provenance'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta1DocumentProvenance>(
                      (value) => GoogleCloudDocumentaiV1beta1DocumentProvenance
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedText != null) 'changedText': changedText!,
        if (provenance != null)
          'provenance': provenance!.map((value) => value.toJson()).toList(),
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
      };
}

/// The Google Cloud Storage location where the output file will be written to.
class GoogleCloudDocumentaiV1beta1GcsDestination {
  core.String? uri;

  GoogleCloudDocumentaiV1beta1GcsDestination({
    this.uri,
  });

  GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// The Google Cloud Storage location where the input file will be read from.
class GoogleCloudDocumentaiV1beta1GcsSource {
  core.String? uri;

  GoogleCloudDocumentaiV1beta1GcsSource({
    this.uri,
  });

  GoogleCloudDocumentaiV1beta1GcsSource.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// The desired input location and metadata.
class GoogleCloudDocumentaiV1beta1InputConfig {
  /// The Google Cloud Storage location to read the input from.
  ///
  /// This must be a single file.
  GoogleCloudDocumentaiV1beta1GcsSource? gcsSource;

  /// Mimetype of the input.
  ///
  /// Current supported mimetypes are application/pdf, image/tiff, and
  /// image/gif. In addition, application/json type is supported for requests
  /// with ProcessDocumentRequest.automl_params field set. The JSON file needs
  /// to be in Document format.
  ///
  /// Required.
  core.String? mimeType;

  GoogleCloudDocumentaiV1beta1InputConfig({
    this.gcsSource,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1beta1InputConfig.fromJson(core.Map _json)
      : this(
          gcsSource: _json.containsKey('gcsSource')
              ? GoogleCloudDocumentaiV1beta1GcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!.toJson(),
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudDocumentaiV1beta1NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate (starts from the top of the image).
  core.double? y;

  GoogleCloudDocumentaiV1beta1NormalizedVertex({
    this.x,
    this.y,
  });

  GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Contains metadata for the BatchProcessDocuments operation.
class GoogleCloudDocumentaiV1beta1OperationMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACCEPTED" : Request is received.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  GoogleCloudDocumentaiV1beta1OperationMetadata({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudDocumentaiV1beta1OperationMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The desired output location and metadata.
class GoogleCloudDocumentaiV1beta1OutputConfig {
  /// The Google Cloud Storage location to write the output to.
  GoogleCloudDocumentaiV1beta1GcsDestination? gcsDestination;

  /// The max number of pages to include into each output Document shard JSON on
  /// Google Cloud Storage.
  ///
  /// The valid range is \[1, 100\]. If not specified, the default value is 20.
  /// For example, for one pdf file with 100 pages, 100 parsed pages will be
  /// produced. If `pages_per_shard` = 20, then 5 Document shard JSON files each
  /// containing 20 parsed pages will be written under the prefix
  /// OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where x and
  /// y are 1-indexed page numbers. Example GCS outputs with 157 pages and
  /// pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json
  /// pages-101-to-150.json pages-151-to-157.json
  core.int? pagesPerShard;

  GoogleCloudDocumentaiV1beta1OutputConfig({
    this.gcsDestination,
    this.pagesPerShard,
  });

  GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(
                  _json['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pagesPerShard: _json.containsKey('pagesPerShard')
              ? _json['pagesPerShard'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!.toJson(),
        if (pagesPerShard != null) 'pagesPerShard': pagesPerShard!,
      };
}

/// Response to a single document processing request.
class GoogleCloudDocumentaiV1beta1ProcessDocumentResponse {
  /// Information about the input file.
  ///
  /// This is the same as the corresponding input config in the request.
  GoogleCloudDocumentaiV1beta1InputConfig? inputConfig;

  /// The output location of the parsed responses.
  ///
  /// The responses are written to this location as JSON-serialized `Document`
  /// objects.
  GoogleCloudDocumentaiV1beta1OutputConfig? outputConfig;

  GoogleCloudDocumentaiV1beta1ProcessDocumentResponse({
    this.inputConfig,
    this.outputConfig,
  });

  GoogleCloudDocumentaiV1beta1ProcessDocumentResponse.fromJson(core.Map _json)
      : this(
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudDocumentaiV1beta1InputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: _json.containsKey('outputConfig')
              ? GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputConfig != null) 'inputConfig': inputConfig!.toJson(),
        if (outputConfig != null) 'outputConfig': outputConfig!.toJson(),
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudDocumentaiV1beta1Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate (starts from the top of the image).
  core.int? y;

  GoogleCloudDocumentaiV1beta1Vertex({
    this.x,
    this.y,
  });

  GoogleCloudDocumentaiV1beta1Vertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x') ? _json['x'] as core.int : null,
          y: _json.containsKey('y') ? _json['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Response to an batch document processing request.
///
/// This is returned in the LRO Operation after the operation is complete.
class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse {
  /// Responses for each individual document.
  core.List<GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>? responses;

  GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse({
    this.responses,
  });

  GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse.fromJson(
      core.Map _json)
      : this(
          responses: _json.containsKey('responses')
              ? (_json['responses'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2ProcessDocumentResponse
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null)
          'responses': responses!.map((value) => value.toJson()).toList(),
      };
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1beta2BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDocumentaiV1beta2NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudDocumentaiV1beta2Vertex>? vertices;

  GoogleCloudDocumentaiV1beta2BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(core.Map _json)
      : this(
          normalizedVertices: _json.containsKey('normalizedVertices')
              ? (_json['normalizedVertices'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2NormalizedVertex>((value) =>
                      GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vertices: _json.containsKey('vertices')
              ? (_json['vertices'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2Vertex>((value) =>
                      GoogleCloudDocumentaiV1beta2Vertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedVertices != null)
          'normalizedVertices':
              normalizedVertices!.map((value) => value.toJson()).toList(),
        if (vertices != null)
          'vertices': vertices!.map((value) => value.toJson()).toList(),
      };
}

/// Document represents the canonical document resource in Document
/// Understanding AI.
///
/// It is an interchange format that provides insights into documents and allows
/// for collaboration between users and Document Understanding AI to iterate and
/// optimize for quality.
class GoogleCloudDocumentaiV1beta2Document {
  /// Inline document content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Optional.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A list of entities detected on Document.text.
  ///
  /// For document shards, entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1beta2DocumentEntity>? entities;

  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1beta2DocumentEntityRelation>?
      entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus? error;

  /// Labels for this document.
  core.List<GoogleCloudDocumentaiV1beta2DocumentLabel>? labels;

  /// An IANA published MIME type (also referred to as media type).
  ///
  /// For more information, see
  /// https://www.iana.org/assignments/media-types/media-types.xhtml.
  core.String? mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPage>? pages;

  /// Revision history of this document.
  core.List<GoogleCloudDocumentaiV1beta2DocumentRevision>? revisions;

  /// Information about the sharding if this document is sharded part of a
  /// larger document.
  ///
  /// If the document is not sharded, this message is not specified.
  GoogleCloudDocumentaiV1beta2DocumentShardInfo? shardInfo;

  /// UTF-8 encoded text in reading order from the document.
  ///
  /// Optional.
  core.String? text;

  /// A list of text corrections made to \[Document.text\].
  ///
  /// This is usually used for annotating corrections to OCR mistakes. Text
  /// changes for a given revision may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1beta2DocumentTextChange>? textChanges;

  /// Styles for the Document.text.
  core.List<GoogleCloudDocumentaiV1beta2DocumentStyle>? textStyles;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. See
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris)
  /// for more info.
  ///
  /// Optional.
  core.String? uri;

  GoogleCloudDocumentaiV1beta2Document({
    this.content,
    this.entities,
    this.entityRelations,
    this.error,
    this.labels,
    this.mimeType,
    this.pages,
    this.revisions,
    this.shardInfo,
    this.text,
    this.textChanges,
    this.textStyles,
    this.uri,
  });

  GoogleCloudDocumentaiV1beta2Document.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentEntity>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityRelations: _json.containsKey('entityRelations')
              ? (_json['entityRelations'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentEntityRelation>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentEntityRelation
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentLabel>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          pages: _json.containsKey('pages')
              ? (_json['pages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPage>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisions: _json.containsKey('revisions')
              ? (_json['revisions'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentRevision>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shardInfo: _json.containsKey('shardInfo')
              ? GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(
                  _json['shardInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
          textChanges: _json.containsKey('textChanges')
              ? (_json['textChanges'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentTextChange>(
                      (value) => GoogleCloudDocumentaiV1beta2DocumentTextChange
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textStyles: _json.containsKey('textStyles')
              ? (_json['textStyles'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentStyle>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (entities != null)
          'entities': entities!.map((value) => value.toJson()).toList(),
        if (entityRelations != null)
          'entityRelations':
              entityRelations!.map((value) => value.toJson()).toList(),
        if (error != null) 'error': error!.toJson(),
        if (labels != null)
          'labels': labels!.map((value) => value.toJson()).toList(),
        if (mimeType != null) 'mimeType': mimeType!,
        if (pages != null)
          'pages': pages!.map((value) => value.toJson()).toList(),
        if (revisions != null)
          'revisions': revisions!.map((value) => value.toJson()).toList(),
        if (shardInfo != null) 'shardInfo': shardInfo!.toJson(),
        if (text != null) 'text': text!,
        if (textChanges != null)
          'textChanges': textChanges!.map((value) => value.toJson()).toList(),
        if (textStyles != null)
          'textStyles': textStyles!.map((value) => value.toJson()).toList(),
        if (uri != null) 'uri': uri!,
      };
}

/// An entity that could be a phrase in the text or a property belongs to the
/// document.
///
/// It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1beta2DocumentEntity {
  /// Confidence of detected Schema entity.
  ///
  /// Range \[0, 1\].
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

  /// Text value in the document e.g. `1600 Amphitheatre Pkwy`.
  ///
  /// If the entity is not present in the document, this field will be empty.
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
  GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue? normalizedValue;

  /// Represents the provenance of this entity wrt.
  ///
  /// the location on the page where it was found.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta2DocumentPageAnchor? pageAnchor;

  /// Entities can be nested to form a hierarchical data structure representing
  /// the content in the document.
  ///
  /// Optional.
  core.List<GoogleCloudDocumentaiV1beta2DocumentEntity>? properties;

  /// The history of this annotation.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta2DocumentProvenance? provenance;

  /// Whether the entity will be redacted for de-identification purposes.
  ///
  /// Optional.
  core.bool? redacted;

  /// Provenance of the entity.
  ///
  /// Text anchor indexing into the Document.text.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor? textAnchor;

  /// Entity type from a schema e.g. `Address`.
  core.String? type;

  GoogleCloudDocumentaiV1beta2DocumentEntity({
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

  GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          mentionId: _json.containsKey('mentionId')
              ? _json['mentionId'] as core.String
              : null,
          mentionText: _json.containsKey('mentionText')
              ? _json['mentionText'] as core.String
              : null,
          normalizedValue: _json.containsKey('normalizedValue')
              ? GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue
                  .fromJson(_json['normalizedValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pageAnchor: _json.containsKey('pageAnchor')
              ? GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(
                  _json['pageAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: _json.containsKey('properties')
              ? (_json['properties'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentEntity>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          redacted: _json.containsKey('redacted')
              ? _json['redacted'] as core.bool
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (id != null) 'id': id!,
        if (mentionId != null) 'mentionId': mentionId!,
        if (mentionText != null) 'mentionText': mentionText!,
        if (normalizedValue != null)
          'normalizedValue': normalizedValue!.toJson(),
        if (pageAnchor != null) 'pageAnchor': pageAnchor!.toJson(),
        if (properties != null)
          'properties': properties!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (redacted != null) 'redacted': redacted!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
        if (type != null) 'type': type!,
      };
}

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue {
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
  /// For some entity types, one of respective 'structured_value' fields may
  /// also be populated. Also not all the types of 'structured_value' will be
  /// normalized. For example, some processors may not generate float or int
  /// normalized text by default. Below are sample formats mapped to structured
  /// values. - Money/Currency type (`money_value`) is in the ISO 4217 text
  /// format. - Date type (`date_value`) is in the ISO 8601 text format. -
  /// Datetime type (`datetime_value`) is in the ISO 8601 text format.
  ///
  /// Optional.
  core.String? text;

  GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue({
    this.addressValue,
    this.booleanValue,
    this.dateValue,
    this.datetimeValue,
    this.floatValue,
    this.integerValue,
    this.moneyValue,
    this.text,
  });

  GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue.fromJson(
      core.Map _json)
      : this(
          addressValue: _json.containsKey('addressValue')
              ? GoogleTypePostalAddress.fromJson(
                  _json['addressValue'] as core.Map<core.String, core.dynamic>)
              : null,
          booleanValue: _json.containsKey('booleanValue')
              ? _json['booleanValue'] as core.bool
              : null,
          dateValue: _json.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  _json['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          datetimeValue: _json.containsKey('datetimeValue')
              ? GoogleTypeDateTime.fromJson(
                  _json['datetimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          floatValue: _json.containsKey('floatValue')
              ? (_json['floatValue'] as core.num).toDouble()
              : null,
          integerValue: _json.containsKey('integerValue')
              ? _json['integerValue'] as core.int
              : null,
          moneyValue: _json.containsKey('moneyValue')
              ? GoogleTypeMoney.fromJson(
                  _json['moneyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressValue != null) 'addressValue': addressValue!.toJson(),
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValue != null) 'dateValue': dateValue!.toJson(),
        if (datetimeValue != null) 'datetimeValue': datetimeValue!.toJson(),
        if (floatValue != null) 'floatValue': floatValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (moneyValue != null) 'moneyValue': moneyValue!.toJson(),
        if (text != null) 'text': text!,
      };
}

/// Relationship between Entities.
class GoogleCloudDocumentaiV1beta2DocumentEntityRelation {
  /// Object entity id.
  core.String? objectId;

  /// Relationship description.
  core.String? relation;

  /// Subject entity id.
  core.String? subjectId;

  GoogleCloudDocumentaiV1beta2DocumentEntityRelation({
    this.objectId,
    this.relation,
    this.subjectId,
  });

  GoogleCloudDocumentaiV1beta2DocumentEntityRelation.fromJson(core.Map _json)
      : this(
          objectId: _json.containsKey('objectId')
              ? _json['objectId'] as core.String
              : null,
          relation: _json.containsKey('relation')
              ? _json['relation'] as core.String
              : null,
          subjectId: _json.containsKey('subjectId')
              ? _json['subjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (objectId != null) 'objectId': objectId!,
        if (relation != null) 'relation': relation!,
        if (subjectId != null) 'subjectId': subjectId!,
      };
}

/// Label attaches schema information and/or other metadata to segments within a
/// Document.
///
/// Multiple Labels on a single field can denote either different labels,
/// different instances of the same label created at different times, or some
/// combination of both.
class GoogleCloudDocumentaiV1beta2DocumentLabel {
  /// Label is generated AutoML model.
  ///
  /// This field stores the full resource name of the AutoML model. Format:
  /// `projects/{project-id}/locations/{location-id}/models/{model-id}`
  core.String? automlModel;

  /// Confidence score between 0 and 1 for label assignment.
  core.double? confidence;

  /// Name of the label.
  ///
  /// When the label is generated from AutoML Text Classification model, this
  /// field represents the name of the category.
  core.String? name;

  GoogleCloudDocumentaiV1beta2DocumentLabel({
    this.automlModel,
    this.confidence,
    this.name,
  });

  GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(core.Map _json)
      : this(
          automlModel: _json.containsKey('automlModel')
              ? _json['automlModel'] as core.String
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automlModel != null) 'automlModel': automlModel!,
        if (confidence != null) 'confidence': confidence!,
        if (name != null) 'name': name!,
      };
}

/// A page in a Document.
class GoogleCloudDocumentaiV1beta2DocumentPage {
  /// A list of visually detected text blocks on the page.
  ///
  /// A block has a set of lines (collected into paragraphs) that have a common
  /// line-spacing and orientation.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageBlock>? blocks;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Physical dimension of the page.
  GoogleCloudDocumentaiV1beta2DocumentPageDimension? dimension;

  /// A list of visually detected form fields on the page.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageFormField>? formFields;

  /// Rendered image for this page.
  ///
  /// This image is preprocessed to remove any skew, rotation, and distortions
  /// such that the annotation bounding boxes can be upright and axis-aligned.
  GoogleCloudDocumentaiV1beta2DocumentPageImage? image;

  /// Layout for the page.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? layout;

  /// A list of visually detected text lines on the page.
  ///
  /// A collection of tokens that a human would perceive as a line.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageLine>? lines;

  /// 1-based index for current Page in a parent Document.
  ///
  /// Useful when a page is taken out of a Document for individual processing.
  core.int? pageNumber;

  /// A list of visually detected text paragraphs on the page.
  ///
  /// A collection of lines that a human would perceive as a paragraph.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageParagraph>? paragraphs;

  /// The history of this page.
  GoogleCloudDocumentaiV1beta2DocumentProvenance? provenance;

  /// A list of visually detected tables on the page.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageTable>? tables;

  /// A list of visually detected tokens on the page.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageToken>? tokens;

  /// Transformation matrices that were applied to the original document image
  /// to produce Page.image.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageMatrix>? transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc.
  ///
  /// on the page.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>?
      visualElements;

  GoogleCloudDocumentaiV1beta2DocumentPage({
    this.blocks,
    this.detectedLanguages,
    this.dimension,
    this.formFields,
    this.image,
    this.layout,
    this.lines,
    this.pageNumber,
    this.paragraphs,
    this.provenance,
    this.tables,
    this.tokens,
    this.transforms,
    this.visualElements,
  });

  GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(core.Map _json)
      : this(
          blocks: _json.containsKey('blocks')
              ? (_json['blocks'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageBlock>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimension: _json.containsKey('dimension')
              ? GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(
                  _json['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          formFields: _json.containsKey('formFields')
              ? (_json['formFields'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageFormField>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageFormField
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: _json.containsKey('image')
              ? GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          lines: _json.containsKey('lines')
              ? (_json['lines'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageLine>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageNumber: _json.containsKey('pageNumber')
              ? _json['pageNumber'] as core.int
              : null,
          paragraphs: _json.containsKey('paragraphs')
              ? (_json['paragraphs'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageParagraph>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageParagraph
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          tables: _json.containsKey('tables')
              ? (_json['tables'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageTable>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: _json.containsKey('tokens')
              ? (_json['tokens'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageToken>((value) =>
                      GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transforms: _json.containsKey('transforms')
              ? (_json['transforms'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageMatrix>(
                      (value) => GoogleCloudDocumentaiV1beta2DocumentPageMatrix
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          visualElements: _json.containsKey('visualElements')
              ? (_json['visualElements'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageVisualElement
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blocks != null)
          'blocks': blocks!.map((value) => value.toJson()).toList(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (dimension != null) 'dimension': dimension!.toJson(),
        if (formFields != null)
          'formFields': formFields!.map((value) => value.toJson()).toList(),
        if (image != null) 'image': image!.toJson(),
        if (layout != null) 'layout': layout!.toJson(),
        if (lines != null)
          'lines': lines!.map((value) => value.toJson()).toList(),
        if (pageNumber != null) 'pageNumber': pageNumber!,
        if (paragraphs != null)
          'paragraphs': paragraphs!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (tables != null)
          'tables': tables!.map((value) => value.toJson()).toList(),
        if (tokens != null)
          'tokens': tokens!.map((value) => value.toJson()).toList(),
        if (transforms != null)
          'transforms': transforms!.map((value) => value.toJson()).toList(),
        if (visualElements != null)
          'visualElements':
              visualElements!.map((value) => value.toJson()).toList(),
      };
}

/// Referencing the visual context of the entity in the Document.pages.
///
/// Page anchors can be cross-page, consist of multiple bounding polygons and
/// optionally reference specific layout element types.
class GoogleCloudDocumentaiV1beta2DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>? pageRefs;

  GoogleCloudDocumentaiV1beta2DocumentPageAnchor({
    this.pageRefs,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(core.Map _json)
      : this(
          pageRefs: _json.containsKey('pageRefs')
              ? (_json['pageRefs'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageRefs != null)
          'pageRefs': pageRefs!.map((value) => value.toJson()).toList(),
      };
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef {
  /// Identifies the bounding polygon of a layout element on the page.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1beta2BoundingPoly? boundingPoly;

  /// Confidence of detected page element, if applicable.
  ///
  /// Range \[0, 1\].
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

  GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    this.page,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          layoutId: _json.containsKey('layoutId')
              ? _json['layoutId'] as core.String
              : null,
          layoutType: _json.containsKey('layoutType')
              ? _json['layoutType'] as core.String
              : null,
          page: _json.containsKey('page') ? _json['page'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!.toJson(),
        if (confidence != null) 'confidence': confidence!,
        if (layoutId != null) 'layoutId': layoutId!,
        if (layoutType != null) 'layoutType': layoutType!,
        if (page != null) 'page': page!,
      };
}

/// A block has a set of lines (collected into paragraphs) that have a common
/// line-spacing and orientation.
class GoogleCloudDocumentaiV1beta2DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta2DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage {
  /// Confidence of detected language.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.fromJson(
      core.Map _json)
      : this(
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Dimension for the page.
class GoogleCloudDocumentaiV1beta2DocumentPageDimension {
  /// Page height.
  core.double? height;

  /// Dimension unit.
  core.String? unit;

  /// Page width.
  core.double? width;

  GoogleCloudDocumentaiV1beta2DocumentPageDimension({
    this.height,
    this.unit,
    this.width,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(core.Map _json)
      : this(
          height: _json.containsKey('height')
              ? (_json['height'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          width: _json.containsKey('width')
              ? (_json['width'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (height != null) 'height': height!,
        if (unit != null) 'unit': unit!,
        if (width != null) 'width': width!,
      };
}

/// A form field detected on the page.
class GoogleCloudDocumentaiV1beta2DocumentPageFormField {
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
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? fieldName;

  /// Layout for the FormField value.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? fieldValue;

  /// A list of detected languages for name together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      nameDetectedLanguages;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance? provenance;

  /// A list of detected languages for value together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type.
  ///
  /// Current valid values are: - blank (this indicates the field_value is
  /// normal text) - "unfilled_checkbox" - "filled_checkbox"
  core.String? valueType;

  GoogleCloudDocumentaiV1beta2DocumentPageFormField({
    this.correctedKeyText,
    this.correctedValueText,
    this.fieldName,
    this.fieldValue,
    this.nameDetectedLanguages,
    this.provenance,
    this.valueDetectedLanguages,
    this.valueType,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageFormField.fromJson(core.Map _json)
      : this(
          correctedKeyText: _json.containsKey('correctedKeyText')
              ? _json['correctedKeyText'] as core.String
              : null,
          correctedValueText: _json.containsKey('correctedValueText')
              ? _json['correctedValueText'] as core.String
              : null,
          fieldName: _json.containsKey('fieldName')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['fieldName'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldValue: _json.containsKey('fieldValue')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['fieldValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nameDetectedLanguages: _json.containsKey('nameDetectedLanguages')
              ? (_json['nameDetectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          valueDetectedLanguages: _json.containsKey('valueDetectedLanguages')
              ? (_json['valueDetectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correctedKeyText != null) 'correctedKeyText': correctedKeyText!,
        if (correctedValueText != null)
          'correctedValueText': correctedValueText!,
        if (fieldName != null) 'fieldName': fieldName!.toJson(),
        if (fieldValue != null) 'fieldValue': fieldValue!.toJson(),
        if (nameDetectedLanguages != null)
          'nameDetectedLanguages':
              nameDetectedLanguages!.map((value) => value.toJson()).toList(),
        if (provenance != null) 'provenance': provenance!.toJson(),
        if (valueDetectedLanguages != null)
          'valueDetectedLanguages':
              valueDetectedLanguages!.map((value) => value.toJson()).toList(),
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1beta2DocumentPageImage {
  /// Raw byte content of the image.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int? height;

  /// Encoding mime type for the image.
  core.String? mimeType;

  /// Width of the image in pixels.
  core.int? width;

  GoogleCloudDocumentaiV1beta2DocumentPageImage({
    this.content,
    this.height,
    this.mimeType,
    this.width,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          height:
              _json.containsKey('height') ? _json['height'] as core.int : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
          width: _json.containsKey('width') ? _json['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (height != null) 'height': height!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (width != null) 'width': width!,
      };
}

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1beta2DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1beta2BoundingPoly? boundingPoly;

  /// Confidence of the current Layout within context of the object this layout
  /// is for.
  ///
  /// e.g. confidence can be for a single token, a table, a visual element, etc.
  /// depending on context. Range \[0, 1\].
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
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1beta2DocumentPageLayout({
    this.boundingPoly,
    this.confidence,
    this.orientation,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(core.Map _json)
      : this(
          boundingPoly: _json.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(
                  _json['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: _json.containsKey('confidence')
              ? (_json['confidence'] as core.num).toDouble()
              : null,
          orientation: _json.containsKey('orientation')
              ? _json['orientation'] as core.String
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!.toJson(),
        if (confidence != null) 'confidence': confidence!,
        if (orientation != null) 'orientation': orientation!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
      };
}

/// A collection of tokens that a human would perceive as a line.
///
/// Does not cross column boundaries, can be horizontal, vertical, etc.
class GoogleCloudDocumentaiV1beta2DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta2DocumentPageLine({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Representation for transformation matrix, intended to be compatible and used
/// with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1beta2DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int? cols;

  /// The matrix data.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int? rows;

  /// This encodes information about what data type the matrix uses.
  ///
  /// For example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of
  /// OpenCV primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int? type;

  GoogleCloudDocumentaiV1beta2DocumentPageMatrix({
    this.cols,
    this.data,
    this.rows,
    this.type,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageMatrix.fromJson(core.Map _json)
      : this(
          cols: _json.containsKey('cols') ? _json['cols'] as core.int : null,
          data: _json.containsKey('data') ? _json['data'] as core.String : null,
          rows: _json.containsKey('rows') ? _json['rows'] as core.int : null,
          type: _json.containsKey('type') ? _json['type'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cols != null) 'cols': cols!,
        if (data != null) 'data': data!,
        if (rows != null) 'rows': rows!,
        if (type != null) 'type': type!,
      };
}

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1beta2DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta2DocumentPageParagraph({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageParagraph.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1beta2DocumentPageTable {
  /// Body rows of the table.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>? bodyRows;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Header rows of the table.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>? headerRows;

  /// Layout for Table.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1beta2DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(core.Map _json)
      : this(
          bodyRows: _json.containsKey('bodyRows')
              ? (_json['bodyRows'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headerRows: _json.containsKey('headerRows')
              ? (_json['headerRows'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bodyRows != null)
          'bodyRows': bodyRows!.map((value) => value.toJson()).toList(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (headerRows != null)
          'headerRows': headerRows!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
      };
}

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell {
  /// How many columns this cell spans.
  core.int? colSpan;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for TableCell.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? layout;

  /// How many rows this cell spans.
  core.int? rowSpan;

  GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell({
    this.colSpan,
    this.detectedLanguages,
    this.layout,
    this.rowSpan,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell.fromJson(
      core.Map _json)
      : this(
          colSpan: _json.containsKey('colSpan')
              ? _json['colSpan'] as core.int
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          rowSpan: _json.containsKey('rowSpan')
              ? _json['rowSpan'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colSpan != null) 'colSpan': colSpan!,
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (rowSpan != null) 'rowSpan': rowSpan!,
      };
}

/// A row of table cells.
class GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>? cells;

  GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow({
    this.cells,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(core.Map _json)
      : this(
          cells: _json.containsKey('cells')
              ? (_json['cells'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null)
          'cells': cells!.map((value) => value.toJson()).toList(),
      };
}

/// A detected token.
class GoogleCloudDocumentaiV1beta2DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1beta2DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(core.Map _json)
      : this(
          detectedBreak: _json.containsKey('detectedBreak')
              ? GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak
                  .fromJson(_json['detectedBreak']
                      as core.Map<core.String, core.dynamic>)
              : null,
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: _json.containsKey('provenance')
              ? GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  _json['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedBreak != null) 'detectedBreak': detectedBreak!.toJson(),
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (provenance != null) 'provenance': provenance!.toJson(),
      };
}

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String? type;

  GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak({
    this.type,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak.fromJson(
      core.Map _json)
      : this(
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Detected non-text visual elements e.g. checkbox, signature etc.
///
/// on the page.
class GoogleCloudDocumentaiV1beta2DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for VisualElement.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout? layout;

  /// Type of the VisualElement.
  core.String? type;

  GoogleCloudDocumentaiV1beta2DocumentPageVisualElement({
    this.detectedLanguages,
    this.layout,
    this.type,
  });

  GoogleCloudDocumentaiV1beta2DocumentPageVisualElement.fromJson(core.Map _json)
      : this(
          detectedLanguages: _json.containsKey('detectedLanguages')
              ? (_json['detectedLanguages'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: _json.containsKey('layout')
              ? GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
                  _json['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null)
          'detectedLanguages':
              detectedLanguages!.map((value) => value.toJson()).toList(),
        if (layout != null) 'layout': layout!.toJson(),
        if (type != null) 'type': type!,
      };
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1beta2DocumentProvenance {
  /// The Id of this operation.
  ///
  /// Needs to be unique within the scope of the revision.
  core.int? id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>? parents;

  /// The index of the revision that produced this element.
  core.int? revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified.
  /// - "ADD" : Add an element. Implicit if no `parents` are set for the
  /// provenance.
  /// - "REMOVE" : The element is removed. No `parents` should be set.
  /// - "REPLACE" : Explicitly replaces the element(s) identified by `parents`.
  /// - "EVAL_REQUESTED" : Element is requested for human review.
  /// - "EVAL_APPROVED" : Element is reviewed and approved at human review,
  /// confidence will be set to 1.0.
  /// - "EVAL_SKIPPED" : Element is skipped in the validation process.
  core.String? type;

  GoogleCloudDocumentaiV1beta2DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          parents: _json.containsKey('parents')
              ? (_json['parents'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentProvenanceParent
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (parents != null)
          'parents': parents!.map((value) => value.toJson()).toList(),
        if (revision != null) 'revision': revision!,
        if (type != null) 'type': type!,
      };
}

/// Structure for referencing parent provenances.
///
/// When an element replaces one of more other elements parent references
/// identify the elements that are replaced.
class GoogleCloudDocumentaiV1beta2DocumentProvenanceParent {
  /// The id of the parent provenance.
  core.int? id;

  /// The index of the parent item in the corresponding item list (eg.
  ///
  /// list of entities, properties within entities, etc.) on parent revision.
  core.int? index;

  /// The index of the \[Document.revisions\] identifying the parent revision.
  core.int? revision;

  GoogleCloudDocumentaiV1beta2DocumentProvenanceParent({
    this.id,
    this.index,
    this.revision,
  });

  GoogleCloudDocumentaiV1beta2DocumentProvenanceParent.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.int : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (index != null) 'index': index!,
        if (revision != null) 'revision': revision!,
      };
}

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1beta2DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String? agent;

  /// The time that the revision was created.
  core.String? createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview? humanReview;

  /// Id of the revision.
  ///
  /// Unique within the context of the document.
  core.String? id;

  /// The revisions that this revision is based on.
  ///
  /// This can include one or more parent (when documents are merged.) This
  /// field represents the index into the `revisions` field.
  core.List<core.int>? parent;

  /// If the annotation was made by processor identify the processor by its
  /// resource name.
  core.String? processor;

  GoogleCloudDocumentaiV1beta2DocumentRevision({
    this.agent,
    this.createTime,
    this.humanReview,
    this.id,
    this.parent,
    this.processor,
  });

  GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(core.Map _json)
      : this(
          agent:
              _json.containsKey('agent') ? _json['agent'] as core.String : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          humanReview: _json.containsKey('humanReview')
              ? GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview
                  .fromJson(_json['humanReview']
                      as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          parent: _json.containsKey('parent')
              ? (_json['parent'] as core.List)
                  .map<core.int>((value) => value as core.int)
                  .toList()
              : null,
          processor: _json.containsKey('processor')
              ? _json['processor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
        if (createTime != null) 'createTime': createTime!,
        if (humanReview != null) 'humanReview': humanReview!.toJson(),
        if (id != null) 'id': id!,
        if (parent != null) 'parent': parent!,
        if (processor != null) 'processor': processor!,
      };
}

/// Human Review information of the document.
class GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview {
  /// Human review state.
  ///
  /// e.g. `requested`, `succeeded`, `rejected`.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the rejection reason when the state is `rejected`.
  core.String? stateMessage;

  GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview({
    this.state,
    this.stateMessage,
  });

  GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview.fromJson(
      core.Map _json)
      : this(
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// For a large document, sharding may be performed to produce several document
/// shards.
///
/// Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1beta2DocumentShardInfo {
  /// Total number of shards.
  core.String? shardCount;

  /// The 0-based index of this shard.
  core.String? shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String? textOffset;

  GoogleCloudDocumentaiV1beta2DocumentShardInfo({
    this.shardCount,
    this.shardIndex,
    this.textOffset,
  });

  GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(core.Map _json)
      : this(
          shardCount: _json.containsKey('shardCount')
              ? _json['shardCount'] as core.String
              : null,
          shardIndex: _json.containsKey('shardIndex')
              ? _json['shardIndex'] as core.String
              : null,
          textOffset: _json.containsKey('textOffset')
              ? _json['textOffset'] as core.String
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
class GoogleCloudDocumentaiV1beta2DocumentStyle {
  /// Text background color.
  GoogleTypeColor? backgroundColor;

  /// Text color.
  GoogleTypeColor? color;

  /// Font size.
  GoogleCloudDocumentaiV1beta2DocumentStyleFontSize? fontSize;

  /// Font weight.
  ///
  /// Possible values are normal, bold, bolder, and lighter.
  /// https://www.w3schools.com/cssref/pr_font_weight.asp
  core.String? fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor? textAnchor;

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

  GoogleCloudDocumentaiV1beta2DocumentStyle({
    this.backgroundColor,
    this.color,
    this.fontSize,
    this.fontWeight,
    this.textAnchor,
    this.textDecoration,
    this.textStyle,
  });

  GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(core.Map _json)
      : this(
          backgroundColor: _json.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(_json['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          color: _json.containsKey('color')
              ? GoogleTypeColor.fromJson(
                  _json['color'] as core.Map<core.String, core.dynamic>)
              : null,
          fontSize: _json.containsKey('fontSize')
              ? GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(
                  _json['fontSize'] as core.Map<core.String, core.dynamic>)
              : null,
          fontWeight: _json.containsKey('fontWeight')
              ? _json['fontWeight'] as core.String
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          textDecoration: _json.containsKey('textDecoration')
              ? _json['textDecoration'] as core.String
              : null,
          textStyle: _json.containsKey('textStyle')
              ? _json['textStyle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null)
          'backgroundColor': backgroundColor!.toJson(),
        if (color != null) 'color': color!.toJson(),
        if (fontSize != null) 'fontSize': fontSize!.toJson(),
        if (fontWeight != null) 'fontWeight': fontWeight!,
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
        if (textDecoration != null) 'textDecoration': textDecoration!,
        if (textStyle != null) 'textStyle': textStyle!,
      };
}

/// Font size with unit.
class GoogleCloudDocumentaiV1beta2DocumentStyleFontSize {
  /// Font size for the text.
  core.double? size;

  /// Unit for the font size.
  ///
  /// Follows CSS naming (in, px, pt, etc.).
  core.String? unit;

  GoogleCloudDocumentaiV1beta2DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(core.Map _json)
      : this(
          size: _json.containsKey('size')
              ? (_json['size'] as core.num).toDouble()
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (size != null) 'size': size!,
        if (unit != null) 'unit': unit!,
      };
}

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1beta2DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  core.String? content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>?
      textSegments;

  GoogleCloudDocumentaiV1beta2DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(core.Map _json)
      : this(
          content: _json.containsKey('content')
              ? _json['content'] as core.String
              : null,
          textSegments: _json.containsKey('textSegments')
              ? (_json['textSegments'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (textSegments != null)
          'textSegments': textSegments!.map((value) => value.toJson()).toList(),
      };
}

/// A text segment in the Document.text.
///
/// The indices may be out of bounds which indicate that the text extends into
/// another document shard for large sharded documents. See
/// ShardInfo.text_offset
class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String? endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String? startIndex;

  GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment({
    this.endIndex,
    this.startIndex,
  });

  GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment.fromJson(
      core.Map _json)
      : this(
          endIndex: _json.containsKey('endIndex')
              ? _json['endIndex'] as core.String
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.String
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
class GoogleCloudDocumentaiV1beta2DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String? changedText;

  /// The history of this annotation.
  core.List<GoogleCloudDocumentaiV1beta2DocumentProvenance>? provenance;

  /// Provenance of the correction.
  ///
  /// Text anchor indexing into the Document.text. There can only be a single
  /// `TextAnchor.text_segments` element. If the start and end index of the text
  /// segment are the same, the text change is inserted before that index.
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1beta2DocumentTextChange({
    this.changedText,
    this.provenance,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1beta2DocumentTextChange.fromJson(core.Map _json)
      : this(
          changedText: _json.containsKey('changedText')
              ? _json['changedText'] as core.String
              : null,
          provenance: _json.containsKey('provenance')
              ? (_json['provenance'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta2DocumentProvenance>(
                      (value) => GoogleCloudDocumentaiV1beta2DocumentProvenance
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textAnchor: _json.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
                  _json['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedText != null) 'changedText': changedText!,
        if (provenance != null)
          'provenance': provenance!.map((value) => value.toJson()).toList(),
        if (textAnchor != null) 'textAnchor': textAnchor!.toJson(),
      };
}

/// The Google Cloud Storage location where the output file will be written to.
class GoogleCloudDocumentaiV1beta2GcsDestination {
  core.String? uri;

  GoogleCloudDocumentaiV1beta2GcsDestination({
    this.uri,
  });

  GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// The Google Cloud Storage location where the input file will be read from.
class GoogleCloudDocumentaiV1beta2GcsSource {
  core.String? uri;

  GoogleCloudDocumentaiV1beta2GcsSource({
    this.uri,
  });

  GoogleCloudDocumentaiV1beta2GcsSource.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// The desired input location and metadata.
class GoogleCloudDocumentaiV1beta2InputConfig {
  /// Content in bytes, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, proto buffer messages use a pure binary
  /// representation, whereas JSON representations use base64. This field only
  /// works for synchronous ProcessDocument method.
  core.String? contents;
  core.List<core.int> get contentsAsBytes => convert.base64.decode(contents!);

  set contentsAsBytes(core.List<core.int> _bytes) {
    contents =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The Google Cloud Storage location to read the input from.
  ///
  /// This must be a single file.
  GoogleCloudDocumentaiV1beta2GcsSource? gcsSource;

  /// Mimetype of the input.
  ///
  /// Current supported mimetypes are application/pdf, image/tiff, and
  /// image/gif. In addition, application/json type is supported for requests
  /// with ProcessDocumentRequest.automl_params field set. The JSON file needs
  /// to be in Document format.
  ///
  /// Required.
  core.String? mimeType;

  GoogleCloudDocumentaiV1beta2InputConfig({
    this.contents,
    this.gcsSource,
    this.mimeType,
  });

  GoogleCloudDocumentaiV1beta2InputConfig.fromJson(core.Map _json)
      : this(
          contents: _json.containsKey('contents')
              ? _json['contents'] as core.String
              : null,
          gcsSource: _json.containsKey('gcsSource')
              ? GoogleCloudDocumentaiV1beta2GcsSource.fromJson(
                  _json['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: _json.containsKey('mimeType')
              ? _json['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contents != null) 'contents': contents!,
        if (gcsSource != null) 'gcsSource': gcsSource!.toJson(),
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudDocumentaiV1beta2NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate (starts from the top of the image).
  core.double? y;

  GoogleCloudDocumentaiV1beta2NormalizedVertex({
    this.x,
    this.y,
  });

  GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x')
              ? (_json['x'] as core.num).toDouble()
              : null,
          y: _json.containsKey('y')
              ? (_json['y'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Contains metadata for the BatchProcessDocuments operation.
class GoogleCloudDocumentaiV1beta2OperationMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACCEPTED" : Request is received.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  GoogleCloudDocumentaiV1beta2OperationMetadata({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudDocumentaiV1beta2OperationMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The desired output location and metadata.
class GoogleCloudDocumentaiV1beta2OutputConfig {
  /// The Google Cloud Storage location to write the output to.
  GoogleCloudDocumentaiV1beta2GcsDestination? gcsDestination;

  /// The max number of pages to include into each output Document shard JSON on
  /// Google Cloud Storage.
  ///
  /// The valid range is \[1, 100\]. If not specified, the default value is 20.
  /// For example, for one pdf file with 100 pages, 100 parsed pages will be
  /// produced. If `pages_per_shard` = 20, then 5 Document shard JSON files each
  /// containing 20 parsed pages will be written under the prefix
  /// OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where x and
  /// y are 1-indexed page numbers. Example GCS outputs with 157 pages and
  /// pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json
  /// pages-101-to-150.json pages-151-to-157.json
  core.int? pagesPerShard;

  GoogleCloudDocumentaiV1beta2OutputConfig({
    this.gcsDestination,
    this.pagesPerShard,
  });

  GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(
                  _json['gcsDestination']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pagesPerShard: _json.containsKey('pagesPerShard')
              ? _json['pagesPerShard'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!.toJson(),
        if (pagesPerShard != null) 'pagesPerShard': pagesPerShard!,
      };
}

/// Response to a single document processing request.
class GoogleCloudDocumentaiV1beta2ProcessDocumentResponse {
  /// Information about the input file.
  ///
  /// This is the same as the corresponding input config in the request.
  GoogleCloudDocumentaiV1beta2InputConfig? inputConfig;

  /// The output location of the parsed responses.
  ///
  /// The responses are written to this location as JSON-serialized `Document`
  /// objects.
  GoogleCloudDocumentaiV1beta2OutputConfig? outputConfig;

  GoogleCloudDocumentaiV1beta2ProcessDocumentResponse({
    this.inputConfig,
    this.outputConfig,
  });

  GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.fromJson(core.Map _json)
      : this(
          inputConfig: _json.containsKey('inputConfig')
              ? GoogleCloudDocumentaiV1beta2InputConfig.fromJson(
                  _json['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: _json.containsKey('outputConfig')
              ? GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(
                  _json['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputConfig != null) 'inputConfig': inputConfig!.toJson(),
        if (outputConfig != null) 'outputConfig': outputConfig!.toJson(),
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
class GoogleCloudDocumentaiV1beta2Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate (starts from the top of the image).
  core.int? y;

  GoogleCloudDocumentaiV1beta2Vertex({
    this.x,
    this.y,
  });

  GoogleCloudDocumentaiV1beta2Vertex.fromJson(core.Map _json)
      : this(
          x: _json.containsKey('x') ? _json['x'] as core.int : null,
          y: _json.containsKey('y') ? _json['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// The long running operation metadata for batch process method.
class GoogleCloudDocumentaiV1beta3BatchProcessMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The list of response details of each document.
  core.List<
          GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>?
      individualProcessStatuses;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLING" : The batch processing was being cancelled.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the error message if the operation is failed.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  GoogleCloudDocumentaiV1beta3BatchProcessMetadata({
    this.createTime,
    this.individualProcessStatuses,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudDocumentaiV1beta3BatchProcessMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          individualProcessStatuses: _json
                  .containsKey('individualProcessStatuses')
              ? (_json['individualProcessStatuses'] as core.List)
                  .map<GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>(
                      (value) =>
                          GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
                              .fromJson(
                                  value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (individualProcessStatuses != null)
          'individualProcessStatuses': individualProcessStatuses!
              .map((value) => value.toJson())
              .toList(),
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The status of a each individual document in the batch process.
class GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus {
  /// The name of the operation triggered by the processed document.
  ///
  /// If the human review process is not triggered, this field will be empty. It
  /// has the same response type and metadata as the long running operation
  /// returned by ReviewDocument method.
  core.String? humanReviewOperation;

  /// The status of human review on the processed document.
  GoogleCloudDocumentaiV1beta3HumanReviewStatus? humanReviewStatus;

  /// The source of the document, same as the \[input_gcs_source\] field in the
  /// request when the batch process started.
  ///
  /// The batch process is started by take snapshot of that document, since a
  /// user can move or change that document during the process.
  core.String? inputGcsSource;

  /// The output_gcs_destination (in the request as 'output_gcs_destination') of
  /// the processed document if it was successful, otherwise empty.
  core.String? outputGcsDestination;

  /// The status of the processing of the document.
  GoogleRpcStatus? status;

  GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus({
    this.humanReviewOperation,
    this.humanReviewStatus,
    this.inputGcsSource,
    this.outputGcsDestination,
    this.status,
  });

  GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus.fromJson(
      core.Map _json)
      : this(
          humanReviewOperation: _json.containsKey('humanReviewOperation')
              ? _json['humanReviewOperation'] as core.String
              : null,
          humanReviewStatus: _json.containsKey('humanReviewStatus')
              ? GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(
                  _json['humanReviewStatus']
                      as core.Map<core.String, core.dynamic>)
              : null,
          inputGcsSource: _json.containsKey('inputGcsSource')
              ? _json['inputGcsSource'] as core.String
              : null,
          outputGcsDestination: _json.containsKey('outputGcsDestination')
              ? _json['outputGcsDestination'] as core.String
              : null,
          status: _json.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReviewOperation != null)
          'humanReviewOperation': humanReviewOperation!,
        if (humanReviewStatus != null)
          'humanReviewStatus': humanReviewStatus!.toJson(),
        if (inputGcsSource != null) 'inputGcsSource': inputGcsSource!,
        if (outputGcsDestination != null)
          'outputGcsDestination': outputGcsDestination!,
        if (status != null) 'status': status!.toJson(),
      };
}

/// Response message for batch process document method.
class GoogleCloudDocumentaiV1beta3BatchProcessResponse {
  GoogleCloudDocumentaiV1beta3BatchProcessResponse();

  GoogleCloudDocumentaiV1beta3BatchProcessResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The common metadata for long running operations.
class GoogleCloudDocumentaiV1beta3CommonOperationMetadata {
  /// The creation time of the operation.
  core.String? createTime;

  /// The state of the operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String? state;

  /// A message providing more details about the current state of processing.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  GoogleCloudDocumentaiV1beta3CommonOperationMetadata({
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudDocumentaiV1beta3CommonOperationMetadata.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The long running operation metadata for delete processor method.
class GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiV1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiV1beta3DeleteProcessorMetadata.fromJson(core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiV1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// The long running operation metadata for disable processor method.
class GoogleCloudDocumentaiV1beta3DisableProcessorMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiV1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiV1beta3DisableProcessorMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiV1beta3DisableProcessorMetadata.fromJson(core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiV1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response message for the disable processor method.
///
/// Intentionally empty proto for adding fields in future.
class GoogleCloudDocumentaiV1beta3DisableProcessorResponse {
  GoogleCloudDocumentaiV1beta3DisableProcessorResponse();

  GoogleCloudDocumentaiV1beta3DisableProcessorResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The long running operation metadata for enable processor method.
class GoogleCloudDocumentaiV1beta3EnableProcessorMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiV1beta3CommonOperationMetadata? commonMetadata;

  GoogleCloudDocumentaiV1beta3EnableProcessorMetadata({
    this.commonMetadata,
  });

  GoogleCloudDocumentaiV1beta3EnableProcessorMetadata.fromJson(core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiV1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
      };
}

/// Response message for the enable processor method.
///
/// Intentionally empty proto for adding fields in future.
class GoogleCloudDocumentaiV1beta3EnableProcessorResponse {
  GoogleCloudDocumentaiV1beta3EnableProcessorResponse();

  GoogleCloudDocumentaiV1beta3EnableProcessorResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
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

  GoogleCloudDocumentaiV1beta3HumanReviewStatus.fromJson(core.Map _json)
      : this(
          humanReviewOperation: _json.containsKey('humanReviewOperation')
              ? _json['humanReviewOperation'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (humanReviewOperation != null)
          'humanReviewOperation': humanReviewOperation!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
      };
}

/// The long running operation metadata for review document method.
class GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata {
  /// The basic metadata of the long running operation.
  GoogleCloudDocumentaiV1beta3CommonOperationMetadata? commonMetadata;

  /// The creation time of the operation.
  core.String? createTime;

  /// Used only when Operation.done is false.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String? state;

  /// A message providing more details about the current state of processing.
  ///
  /// For example, the error message if the operation is failed.
  core.String? stateMessage;

  /// The last update time of the operation.
  core.String? updateTime;

  GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata({
    this.commonMetadata,
    this.createTime,
    this.state,
    this.stateMessage,
    this.updateTime,
  });

  GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata.fromJson(
      core.Map _json)
      : this(
          commonMetadata: _json.containsKey('commonMetadata')
              ? GoogleCloudDocumentaiV1beta3CommonOperationMetadata.fromJson(
                  _json['commonMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commonMetadata != null) 'commonMetadata': commonMetadata!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Response message for review document method.
class GoogleCloudDocumentaiV1beta3ReviewDocumentResponse {
  /// The Cloud Storage uri for the human reviewed document.
  core.String? gcsDestination;

  GoogleCloudDocumentaiV1beta3ReviewDocumentResponse({
    this.gcsDestination,
  });

  GoogleCloudDocumentaiV1beta3ReviewDocumentResponse.fromJson(core.Map _json)
      : this(
          gcsDestination: _json.containsKey('gcsDestination')
              ? _json['gcsDestination'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
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

  GoogleCloudLocationListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map<GoogleCloudLocationLocation>((value) =>
                      GoogleCloudLocationLocation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null)
          'locations': locations!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// A resource that represents Google Cloud Platform location.
class GoogleCloudLocationLocation {
  /// The friendly name for this location, typically a nearby city name.
  ///
  /// For example, "Tokyo".
  core.String? displayName;

  /// Cross-service attributes for the location.
  ///
  /// For example {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String>? labels;

  /// The canonical id for this location.
  ///
  /// For example: `"us-east1"`.
  core.String? locationId;

  /// Service-specific metadata.
  ///
  /// For example the available capacity at the given location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object>? metadata;

  /// Resource name for the location, which may vary between implementations.
  ///
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String? name;

  GoogleCloudLocationLocation({
    this.displayName,
    this.labels,
    this.locationId,
    this.metadata,
    this.name,
  });

  GoogleCloudLocationLocation.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (locationId != null) 'locationId': locationId!,
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

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

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map<GoogleLongrunningOperation>((value) =>
                      GoogleLongrunningOperation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null)
          'operations': operations!.map((value) => value.toJson()).toList(),
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
  core.Map<core.String, core.Object>? metadata;

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
  core.Map<core.String, core.Object>? response;

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? (_json['metadata'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? (_json['response'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.Object,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (done != null) 'done': done!,
        if (error != null) 'error': error!.toJson(),
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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int? code;

  /// A list of messages that carry the error details.
  ///
  /// There is a common set of message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>>? details;

  /// A developer-facing error message, which should be in English.
  ///
  /// Any user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String? message;

  GoogleRpcStatus({
    this.code,
    this.details,
    this.message,
  });

  GoogleRpcStatus.fromJson(core.Map _json)
      : this(
          code: _json.containsKey('code') ? _json['code'] as core.int : null,
          details: _json.containsKey('details')
              ? (_json['details'] as core.List)
                  .map<core.Map<core.String, core.Object>>((value) =>
                      (value as core.Map<core.String, core.dynamic>).map(
                        (key, item) => core.MapEntry(
                          key,
                          item as core.Object,
                        ),
                      ))
                  .toList()
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (details != null) 'details': details!,
        if (message != null) 'message': message!,
      };
}

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
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha <= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red << 16) | (green
/// << 8) | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6
/// - hexString.length; var resultBuilder = \['#'\]; for (var i = 0; i <
/// missingZeros; i++) { resultBuilder.push('0'); }
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

  GoogleTypeColor.fromJson(core.Map _json)
      : this(
          alpha: _json.containsKey('alpha')
              ? (_json['alpha'] as core.num).toDouble()
              : null,
          blue: _json.containsKey('blue')
              ? (_json['blue'] as core.num).toDouble()
              : null,
          green: _json.containsKey('green')
              ? (_json['green'] as core.num).toDouble()
              : null,
          red: _json.containsKey('red')
              ? (_json['red'] as core.num).toDouble()
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
/// and day values * A month and day value, with a zero year, such as an
/// anniversary * A year on its own, with zero month and day values * A year and
/// month value, with a zero day, such as a credit card expiration date Related
/// types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
class GoogleTypeDate {
  /// Day of a month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 to specify a
  /// year by itself or a year and month where the day isn't significant.
  core.int? day;

  /// Month of a year.
  ///
  /// Must be from 1 to 12, or 0 to specify a year without a month and day.
  core.int? month;

  /// Year of the date.
  ///
  /// Must be from 1 to 9999, or 0 to specify a date without a year.
  core.int? year;

  GoogleTypeDate({
    this.day,
    this.month,
    this.year,
  });

  GoogleTypeDate.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (month != null) 'month': month!,
        if (year != null) 'year': year!,
      };
}

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year is 0, the DateTime is considered not to have a specific year. month and
/// day must have valid, non-zero values. This type may also be used to
/// represent a physical time if all the date and time fields are set and either
/// case of the `time_offset` oneof is set. Consider using `Timestamp` message
/// for physical time instead. If your use case also would like to store the
/// user's timezone, that can be done in another field. This type is more
/// flexible than some applications may want. Make sure to document and validate
/// your application's limitations.
class GoogleTypeDateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month.
  ///
  /// Required.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23. An API may choose to allow the value "24:00:00"
  /// for scenarios like business closing time.
  ///
  /// Required.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59.
  ///
  /// Required.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12.
  ///
  /// Required.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999.
  ///
  /// Required.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59. An API may allow the value 60 if it allows
  /// leap-seconds.
  ///
  /// Required.
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

  GoogleTypeDateTime.fromJson(core.Map _json)
      : this(
          day: _json.containsKey('day') ? _json['day'] as core.int : null,
          hours: _json.containsKey('hours') ? _json['hours'] as core.int : null,
          minutes: _json.containsKey('minutes')
              ? _json['minutes'] as core.int
              : null,
          month: _json.containsKey('month') ? _json['month'] as core.int : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          seconds: _json.containsKey('seconds')
              ? _json['seconds'] as core.int
              : null,
          timeZone: _json.containsKey('timeZone')
              ? GoogleTypeTimeZone.fromJson(
                  _json['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
          utcOffset: _json.containsKey('utcOffset')
              ? _json['utcOffset'] as core.String
              : null,
          year: _json.containsKey('year') ? _json['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (month != null) 'month': month!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
        if (timeZone != null) 'timeZone': timeZone!.toJson(),
        if (utcOffset != null) 'utcOffset': utcOffset!,
        if (year != null) 'year': year!,
      };
}

/// Represents an amount of money with its currency type.
class GoogleTypeMoney {
  /// The three-letter currency code defined in ISO 4217.
  core.String? currencyCode;

  /// Number of nano (10^-9) units of the amount.
  ///
  /// The value must be between -999,999,999 and +999,999,999 inclusive. If
  /// `units` is positive, `nanos` must be positive or zero. If `units` is zero,
  /// `nanos` can be positive, zero, or negative. If `units` is negative,
  /// `nanos` must be negative or zero. For example $-1.75 is represented as
  /// `units`=-1 and `nanos`=-750,000,000.
  core.int? nanos;

  /// The whole units of the amount.
  ///
  /// For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
  core.String? units;

  GoogleTypeMoney({
    this.currencyCode,
    this.nanos,
    this.units,
  });

  GoogleTypeMoney.fromJson(core.Map _json)
      : this(
          currencyCode: _json.containsKey('currencyCode')
              ? _json['currencyCode'] as core.String
              : null,
          nanos: _json.containsKey('nanos') ? _json['nanos'] as core.int : null,
          units:
              _json.containsKey('units') ? _json['units'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currencyCode != null) 'currencyCode': currencyCode!,
        if (nanos != null) 'nanos': nanos!,
        if (units != null) 'units': units!,
      };
}

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
class GoogleTypePostalAddress {
  /// Unstructured address lines describing the lower levels of an address.
  ///
  /// Because values in address_lines do not have type information and may
  /// sometimes contain multiple values in a single field (e.g. "Austin, TX"),
  /// it is important that the line order is clear. The order of address lines
  /// should be "envelope order" for the country/region of the address. In
  /// places where this can vary (e.g. Japan), address_language is used to make
  /// it explicit (e.g. "ja" for large-to-small ordering and "ja-Latn" or "en"
  /// for small-to-large). This way, the most specific line of an address can be
  /// selected based on the language. The minimum permitted structural
  /// representation of an address consists of a region_code with all remaining
  /// information placed in the address_lines. It would be possible to format
  /// such an address very approximately without geocoding, but no semantic
  /// reasoning could be made about any of the address components until it was
  /// at least partially resolved. Creating an address only containing a
  /// region_code and address_lines, and then geocoding is the recommended way
  /// to handle completely unstructured addresses (as opposed to guessing which
  /// parts of the address should be localities or administrative areas).
  core.List<core.String>? addressLines;

  /// Highest administrative subdivision which is used for postal addresses of a
  /// country or region.
  ///
  /// For example, this can be a state, a province, an oblast, or a prefecture.
  /// Specifically, for Spain this is the province and not the autonomous
  /// community (e.g. "Barcelona" and not "Catalonia"). Many countries don't use
  /// an administrative area in postal addresses. E.g. in Switzerland this
  /// should be left unpopulated.
  ///
  /// Optional.
  core.String? administrativeArea;

  /// BCP-47 language code of the contents of this address (if known).
  ///
  /// This is often the UI language of the input form or is expected to match
  /// one of the languages used in the address' country/region, or their
  /// transliterated equivalents. This can affect formatting in certain
  /// countries, but is not critical to the correctness of the data and will
  /// never affect any validation or other non-formatting related operations. If
  /// this value is not known, it should be omitted (rather than specifying a
  /// possibly incorrect default). Examples: "zh-Hant", "ja", "ja-Latn", "en".
  ///
  /// Optional.
  core.String? languageCode;

  /// Generally refers to the city/town portion of the address.
  ///
  /// Examples: US city, IT comune, UK post town. In regions of the world where
  /// localities are not well defined or do not fit into this structure well,
  /// leave locality empty and use address_lines.
  ///
  /// Optional.
  core.String? locality;

  /// The name of the organization at the address.
  ///
  /// Optional.
  core.String? organization;

  /// Postal code of the address.
  ///
  /// Not all countries use or require postal codes to be present, but where
  /// they are used, they may trigger additional validation with other parts of
  /// the address (e.g. state/zip validation in the U.S.A.).
  ///
  /// Optional.
  core.String? postalCode;

  /// The recipient at the address.
  ///
  /// This field may, under certain circumstances, contain multiline
  /// information. For example, it might contain "care of" information.
  ///
  /// Optional.
  core.List<core.String>? recipients;

  /// CLDR region code of the country/region of the address.
  ///
  /// This is never inferred and it is up to the user to ensure the value is
  /// correct. See http://cldr.unicode.org/ and
  /// http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  ///
  /// Required.
  core.String? regionCode;

  /// The schema revision of the `PostalAddress`.
  ///
  /// This must be set to 0, which is the latest revision. All new revisions
  /// **must** be backward compatible with old revisions.
  core.int? revision;

  /// Additional, country-specific, sorting code.
  ///
  /// This is not used in most regions. Where it is used, the value is either a
  /// string like "CEDEX", optionally followed by a number (e.g. "CEDEX 7"), or
  /// just a number alone, representing the "sector code" (Jamaica), "delivery
  /// area indicator" (Malawi) or "post office indicator" (e.g. Côte d'Ivoire).
  ///
  /// Optional.
  core.String? sortingCode;

  /// Sublocality of the address.
  ///
  /// For example, this can be neighborhoods, boroughs, districts.
  ///
  /// Optional.
  core.String? sublocality;

  GoogleTypePostalAddress({
    this.addressLines,
    this.administrativeArea,
    this.languageCode,
    this.locality,
    this.organization,
    this.postalCode,
    this.recipients,
    this.regionCode,
    this.revision,
    this.sortingCode,
    this.sublocality,
  });

  GoogleTypePostalAddress.fromJson(core.Map _json)
      : this(
          addressLines: _json.containsKey('addressLines')
              ? (_json['addressLines'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          administrativeArea: _json.containsKey('administrativeArea')
              ? _json['administrativeArea'] as core.String
              : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          locality: _json.containsKey('locality')
              ? _json['locality'] as core.String
              : null,
          organization: _json.containsKey('organization')
              ? _json['organization'] as core.String
              : null,
          postalCode: _json.containsKey('postalCode')
              ? _json['postalCode'] as core.String
              : null,
          recipients: _json.containsKey('recipients')
              ? (_json['recipients'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          regionCode: _json.containsKey('regionCode')
              ? _json['regionCode'] as core.String
              : null,
          revision: _json.containsKey('revision')
              ? _json['revision'] as core.int
              : null,
          sortingCode: _json.containsKey('sortingCode')
              ? _json['sortingCode'] as core.String
              : null,
          sublocality: _json.containsKey('sublocality')
              ? _json['sublocality'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressLines != null) 'addressLines': addressLines!,
        if (administrativeArea != null)
          'administrativeArea': administrativeArea!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (locality != null) 'locality': locality!,
        if (organization != null) 'organization': organization!,
        if (postalCode != null) 'postalCode': postalCode!,
        if (recipients != null) 'recipients': recipients!,
        if (regionCode != null) 'regionCode': regionCode!,
        if (revision != null) 'revision': revision!,
        if (sortingCode != null) 'sortingCode': sortingCode!,
        if (sublocality != null) 'sublocality': sublocality!,
      };
}

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

  GoogleTypeTimeZone.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (version != null) 'version': version!,
      };
}
