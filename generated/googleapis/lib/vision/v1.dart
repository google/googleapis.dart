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

/// Cloud Vision API - v1
///
/// Integrates Google Vision features, including image labeling, face, logo, and
/// landmark detection, optical character recognition (OCR), and detection of
/// explicit content, into applications.
///
/// For more information, see <https://cloud.google.com/vision/>
///
/// Create an instance of [VisionApi] to access these resources:
///
/// - [FilesResource]
/// - [ImagesResource]
/// - [LocationsResource]
///   - [LocationsOperationsResource]
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsFilesResource]
///   - [ProjectsImagesResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFilesResource]
///     - [ProjectsLocationsImagesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsProductSetsResource]
///       - [ProjectsLocationsProductSetsProductsResource]
///     - [ProjectsLocationsProductsResource]
///       - [ProjectsLocationsProductsReferenceImagesResource]
///   - [ProjectsOperationsResource]
library vision.v1;

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

/// Integrates Google Vision features, including image labeling, face, logo, and
/// landmark detection, optical character recognition (OCR), and detection of
/// explicit content, into applications.
class VisionApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Apply machine learning models to understand and label images
  static const cloudVisionScope =
      'https://www.googleapis.com/auth/cloud-vision';

  final commons.ApiRequester _requester;

  FilesResource get files => FilesResource(_requester);
  ImagesResource get images => ImagesResource(_requester);
  LocationsResource get locations => LocationsResource(_requester);
  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);

  VisionApi(http.Client client,
      {core.String rootUrl = 'https://vision.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class FilesResource {
  final commons.ApiRequester _requester;

  FilesResource(commons.ApiRequester client) : _requester = client;

  /// Service that performs image detection and annotation for a batch of files.
  ///
  /// Now only "application/pdf", "image/tiff" and "image/gif" are supported.
  /// This service will extract at most 5 (customers can specify which 5 in
  /// AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each
  /// file provided and perform detection and annotation for each image
  /// extracted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAnnotateFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAnnotateFilesResponse> annotate(
    BatchAnnotateFilesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/files:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchAnnotateFilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Run asynchronous image detection and annotation for a list of generic
  /// files, such as PDF files, which may contain multiple pages and multiple
  /// images per page.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface. `Operation.metadata` contains
  /// `OperationMetadata` (metadata). `Operation.response` contains
  /// `AsyncBatchAnnotateFilesResponse` (results).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Operation> asyncBatchAnnotate(
    AsyncBatchAnnotateFilesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/files:asyncBatchAnnotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ImagesResource {
  final commons.ApiRequester _requester;

  ImagesResource(commons.ApiRequester client) : _requester = client;

  /// Run image detection and annotation for a batch of images.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAnnotateImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAnnotateImagesResponse> annotate(
    BatchAnnotateImagesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/images:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchAnnotateImagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Run asynchronous image detection and annotation for a list of images.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface. `Operation.metadata` contains
  /// `OperationMetadata` (metadata). `Operation.response` contains
  /// `AsyncBatchAnnotateImagesResponse` (results). This service will write
  /// image annotation outputs to json files in customer GCS bucket, each json
  /// file containing BatchAnnotateImagesResponse proto.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<Operation> asyncBatchAnnotate(
    AsyncBatchAnnotateImagesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/images:asyncBatchAnnotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class LocationsResource {
  final commons.ApiRequester _requester;

  LocationsOperationsResource get operations =>
      LocationsOperationsResource(_requester);

  LocationsResource(commons.ApiRequester client) : _requester = client;
}

class LocationsOperationsResource {
  final commons.ApiRequester _requester;

  LocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^locations/\[^/\]+/operations/\[^/\]+$`.
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
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsResource(commons.ApiRequester client) : _requester = client;

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
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^operations/.*$`.
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
  /// Value must have pattern `^operations/.*$`.
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
  /// Value must have pattern `^operations/\[^/\]+$`.
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
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// Value must have pattern `^operations$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsFilesResource get files => ProjectsFilesResource(_requester);
  ProjectsImagesResource get images => ProjectsImagesResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsFilesResource {
  final commons.ApiRequester _requester;

  ProjectsFilesResource(commons.ApiRequester client) : _requester = client;

  /// Service that performs image detection and annotation for a batch of files.
  ///
  /// Now only "application/pdf", "image/tiff" and "image/gif" are supported.
  /// This service will extract at most 5 (customers can specify which 5 in
  /// AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each
  /// file provided and perform detection and annotation for each image
  /// extracted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAnnotateFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAnnotateFilesResponse> annotate(
    BatchAnnotateFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/files:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchAnnotateFilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Run asynchronous image detection and annotation for a list of generic
  /// files, such as PDF files, which may contain multiple pages and multiple
  /// images per page.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface. `Operation.metadata` contains
  /// `OperationMetadata` (metadata). `Operation.response` contains
  /// `AsyncBatchAnnotateFilesResponse` (results).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Operation> asyncBatchAnnotate(
    AsyncBatchAnnotateFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/files:asyncBatchAnnotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsImagesResource {
  final commons.ApiRequester _requester;

  ProjectsImagesResource(commons.ApiRequester client) : _requester = client;

  /// Run image detection and annotation for a batch of images.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAnnotateImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAnnotateImagesResponse> annotate(
    BatchAnnotateImagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/images:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchAnnotateImagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Run asynchronous image detection and annotation for a list of images.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface. `Operation.metadata` contains
  /// `OperationMetadata` (metadata). `Operation.response` contains
  /// `AsyncBatchAnnotateImagesResponse` (results). This service will write
  /// image annotation outputs to json files in customer GCS bucket, each json
  /// file containing BatchAnnotateImagesResponse proto.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
  async.Future<Operation> asyncBatchAnnotate(
    AsyncBatchAnnotateImagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/images:asyncBatchAnnotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFilesResource get files =>
      ProjectsLocationsFilesResource(_requester);
  ProjectsLocationsImagesResource get images =>
      ProjectsLocationsImagesResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsProductSetsResource get productSets =>
      ProjectsLocationsProductSetsResource(_requester);
  ProjectsLocationsProductsResource get products =>
      ProjectsLocationsProductsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsFilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Service that performs image detection and annotation for a batch of files.
  ///
  /// Now only "application/pdf", "image/tiff" and "image/gif" are supported.
  /// This service will extract at most 5 (customers can specify which 5 in
  /// AnnotateFileRequest.pages) frames (gif) or pages (pdf or tiff) from each
  /// file provided and perform detection and annotation for each image
  /// extracted.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAnnotateFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAnnotateFilesResponse> annotate(
    BatchAnnotateFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/files:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchAnnotateFilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Run asynchronous image detection and annotation for a list of generic
  /// files, such as PDF files, which may contain multiple pages and multiple
  /// images per page.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface. `Operation.metadata` contains
  /// `OperationMetadata` (metadata). `Operation.response` contains
  /// `AsyncBatchAnnotateFilesResponse` (results).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> asyncBatchAnnotate(
    AsyncBatchAnnotateFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/files:asyncBatchAnnotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsImagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsImagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Run image detection and annotation for a batch of images.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchAnnotateImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchAnnotateImagesResponse> annotate(
    BatchAnnotateImagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/images:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return BatchAnnotateImagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Run asynchronous image detection and annotation for a list of images.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface. `Operation.metadata` contains
  /// `OperationMetadata` (metadata). `Operation.response` contains
  /// `AsyncBatchAnnotateImagesResponse` (results). This service will write
  /// image annotation outputs to json files in customer GCS bucket, each json
  /// file containing BatchAnnotateImagesResponse proto.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Optional. Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> asyncBatchAnnotate(
    AsyncBatchAnnotateImagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/images:asyncBatchAnnotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

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
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProductSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductSetsProductsResource get products =>
      ProjectsLocationsProductSetsProductsResource(_requester);

  ProjectsLocationsProductSetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Adds a Product to the specified ProductSet.
  ///
  /// If the Product is already present, no change is made. One Product can be
  /// added to at most 100 ProductSets. Possible errors: * Returns NOT_FOUND if
  /// the Product or the ProductSet doesn't exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for the ProductSet to modify. Format
  /// is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/productSets/\[^/\]+$`.
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
  async.Future<Empty> addProduct(
    AddProductToProductSetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':addProduct';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates and returns a new ProductSet resource.
  ///
  /// Possible errors: * Returns INVALID_ARGUMENT if display_name is missing, or
  /// is longer than 4096 characters.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which the ProductSet should be
  /// created. Format is `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [productSetId] - A user-supplied resource id for this ProductSet. If set,
  /// the server will attempt to use this value as the resource id. If it is
  /// already in use, an error is returned with code ALREADY_EXISTS. Must be at
  /// most 128 characters long. It cannot contain the character `/`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSet> create(
    ProductSet request,
    core.String parent, {
    core.String? productSetId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (productSetId != null) 'productSetId': [productSetId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/productSets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ProductSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Permanently deletes a ProductSet.
  ///
  /// Products and ReferenceImages in the ProductSet are not deleted. The actual
  /// image files are not deleted from Google Cloud Storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the ProductSet to delete. Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/productSets/\[^/\]+$`.
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information associated with a ProductSet.
  ///
  /// Possible errors: * Returns NOT_FOUND if the ProductSet does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the ProductSet to get. Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/productSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSet> get(
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
    return ProductSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Asynchronous API that imports a list of reference images to specified
  /// product sets based on a list of image information.
  ///
  /// The google.longrunning.Operation API can be used to keep track of the
  /// progress and results of the request. `Operation.metadata` contains
  /// `BatchOperationMetadata`. (progress) `Operation.response` contains
  /// `ImportProductSetsResponse`. (results) The input source of this method is
  /// a csv file on Google Cloud Storage. For the format of the csv file please
  /// see ImportProductSetsGcsSource.csv_file_uri.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which the ProductSets should be
  /// imported. Format is `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> import(
    ImportProductSetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/productSets:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists ProductSets in an unspecified order.
  ///
  /// Possible errors: * Returns INVALID_ARGUMENT if page_size is greater than
  /// 100, or less than 1.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project from which ProductSets should be listed.
  /// Format is `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. Default 10, maximum
  /// 100.
  ///
  /// [pageToken] - The next_page_token returned from a previous List request,
  /// if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductSetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/productSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProductSetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Makes changes to a ProductSet resource.
  ///
  /// Only display_name can be updated currently. Possible errors: * Returns
  /// NOT_FOUND if the ProductSet does not exist. * Returns INVALID_ARGUMENT if
  /// display_name is present in update_mask but missing from the request or
  /// longer than 4096 characters.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the ProductSet. Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This
  /// field is ignored when creating a ProductSet.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/productSets/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask that specifies which fields to update. If
  /// update_mask isn't specified, all mutable fields are to be updated. Valid
  /// mask path is `display_name`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ProductSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ProductSet> patch(
    ProductSet request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return ProductSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Removes a Product from the specified ProductSet.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for the ProductSet to modify. Format
  /// is: `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/productSets/\[^/\]+$`.
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
  async.Future<Empty> removeProduct(
    RemoveProductFromProductSetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':removeProduct';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProductSetsProductsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductSetsProductsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the Products in a ProductSet, in an unspecified order.
  ///
  /// If the ProductSet does not exist, the products field of the response will
  /// be empty. Possible errors: * Returns INVALID_ARGUMENT if page_size is
  /// greater than 100 or less than 1.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The ProductSet resource for which to retrieve Products.
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/productSets/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. Default 10, maximum
  /// 100.
  ///
  /// [pageToken] - The next_page_token returned from a previous List request,
  /// if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductsInProductSetResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductsInProductSetResponse> list(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/products';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProductsInProductSetResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProductsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsReferenceImagesResource get referenceImages =>
      ProjectsLocationsProductsReferenceImagesResource(_requester);

  ProjectsLocationsProductsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates and returns a new product resource.
  ///
  /// Possible errors: * Returns INVALID_ARGUMENT if display_name is missing or
  /// longer than 4096 characters. * Returns INVALID_ARGUMENT if description is
  /// longer than 4096 characters. * Returns INVALID_ARGUMENT if
  /// product_category is missing or invalid.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project in which the Product should be created.
  /// Format is `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [productId] - A user-supplied resource id for this Product. If set, the
  /// server will attempt to use this value as the resource id. If it is already
  /// in use, an error is returned with code ALREADY_EXISTS. Must be at most 128
  /// characters long. It cannot contain the character `/`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> create(
    Product request,
    core.String parent, {
    core.String? productId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (productId != null) 'productId': [productId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/products';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Product.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Permanently deletes a product and its reference images.
  ///
  /// Metadata of the product and all its images will be deleted right away, but
  /// search queries against ProductSets containing the product may still work
  /// until all related caches are refreshed.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of product to delete. Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information associated with a Product.
  ///
  /// Possible errors: * Returns NOT_FOUND if the Product does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Product to get. Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> get(
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
    return Product.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists products in an unspecified order.
  ///
  /// Possible errors: * Returns INVALID_ARGUMENT if page_size is greater than
  /// 100 or less than 1.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project OR ProductSet from which Products should
  /// be listed. Format: `projects/PROJECT_ID/locations/LOC_ID`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. Default 10, maximum
  /// 100.
  ///
  /// [pageToken] - The next_page_token returned from a previous List request,
  /// if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProductsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProductsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/products';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProductsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Makes changes to a Product resource.
  ///
  /// Only the `display_name`, `description`, and `labels` fields can be updated
  /// right now. If labels are updated, the change will not be reflected in
  /// queries until the next index time. Possible errors: * Returns NOT_FOUND if
  /// the Product does not exist. * Returns INVALID_ARGUMENT if display_name is
  /// present in update_mask but is missing from the request or longer than 4096
  /// characters. * Returns INVALID_ARGUMENT if description is present in
  /// update_mask but is longer than 4096 characters. * Returns INVALID_ARGUMENT
  /// if product_category is present in update_mask.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the product. Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`. This field is
  /// ignored when creating a product.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [updateMask] - The FieldMask that specifies which fields to update. If
  /// update_mask isn't specified, all mutable fields are to be updated. Valid
  /// mask paths include `product_labels`, `display_name`, and `description`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Product].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Product> patch(
    Product request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Product.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Asynchronous API to delete all Products in a ProductSet or all Products
  /// that are in no ProductSet.
  ///
  /// If a Product is a member of the specified ProductSet in addition to other
  /// ProductSets, the Product will still be deleted. It is recommended to not
  /// delete the specified ProductSet until after this operation has completed.
  /// It is also recommended to not add any of the Products involved in the
  /// batch delete to a new ProductSet while this operation is running because
  /// those Products may still end up deleted. It's not possible to undo the
  /// PurgeProducts operation. Therefore, it is recommended to keep the csv
  /// files used in ImportProductSets (if that was how you originally built the
  /// Product Set) before starting PurgeProducts, in case you need to re-import
  /// the data after deletion. If the plan is to purge all of the Products from
  /// a ProductSet and then re-use the empty ProductSet to re-import new
  /// Products into the empty ProductSet, you must wait until the PurgeProducts
  /// operation has finished for that ProductSet. The
  /// google.longrunning.Operation API can be used to keep track of the progress
  /// and results of the request. `Operation.metadata` contains
  /// `BatchOperationMetadata`. (progress)
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location in which the Products should
  /// be deleted. Format is `projects/PROJECT_ID/locations/LOC_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Operation> purge(
    PurgeProductsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/products:purge';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProductsReferenceImagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProductsReferenceImagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates and returns a new ReferenceImage resource.
  ///
  /// The `bounding_poly` field is optional. If `bounding_poly` is not
  /// specified, the system will try to detect regions of interest in the image
  /// that are compatible with the product_category on the parent product. If it
  /// is specified, detection is ALWAYS skipped. The system converts polygons
  /// into non-rotated rectangles. Note that the pipeline will resize the image
  /// if the image resolution is too large to process (above 50MP). Possible
  /// errors: * Returns INVALID_ARGUMENT if the image_uri is missing or longer
  /// than 4096 characters. * Returns INVALID_ARGUMENT if the product does not
  /// exist. * Returns INVALID_ARGUMENT if bounding_poly is not provided, and
  /// nothing compatible with the parent product's product_category is detected.
  /// * Returns INVALID_ARGUMENT if bounding_poly contains more than 10
  /// polygons.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the product in which to create the
  /// reference image. Format is
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [referenceImageId] - A user-supplied resource id for the ReferenceImage to
  /// be added. If set, the server will attempt to use this value as the
  /// resource id. If it is already in use, an error is returned with code
  /// ALREADY_EXISTS. Must be at most 128 characters long. It cannot contain the
  /// character `/`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReferenceImage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReferenceImage> create(
    ReferenceImage request,
    core.String parent, {
    core.String? referenceImageId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (referenceImageId != null) 'referenceImageId': [referenceImageId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/referenceImages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReferenceImage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Permanently deletes a reference image.
  ///
  /// The image metadata will be deleted right away, but search queries against
  /// ProductSets containing the image may still work until all related caches
  /// are refreshed. The actual image files are not deleted from Google Cloud
  /// Storage.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the reference image to delete.
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/referenceImages/\[^/\]+$`.
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information associated with a ReferenceImage.
  ///
  /// Possible errors: * Returns NOT_FOUND if the specified image does not
  /// exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the ReferenceImage to get. Format
  /// is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+/referenceImages/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReferenceImage].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReferenceImage> get(
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
    return ReferenceImage.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists reference images.
  ///
  /// Possible errors: * Returns NOT_FOUND if the parent product does not exist.
  /// * Returns INVALID_ARGUMENT if the page_size is greater than 100, or less
  /// than 1.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the product containing the reference
  /// images. Format is
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/products/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return. Default 10, maximum
  /// 100.
  ///
  /// [pageToken] - A token identifying a page of results to be returned. This
  /// is the value of `nextPageToken` returned in a previous reference image
  /// list request. Defaults to the first page if not specified.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReferenceImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReferenceImagesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/referenceImages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReferenceImagesResponse.fromJson(
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
  /// Completes with a [Operation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Operation> get(
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Request message for the `AddProductToProductSet` method.
class AddProductToProductSetRequest {
  /// The resource name for the Product to be added to this ProductSet.
  ///
  /// Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
  ///
  /// Required.
  core.String? product;

  AddProductToProductSetRequest({
    this.product,
  });

  AddProductToProductSetRequest.fromJson(core.Map json_)
      : this(
          product: json_.containsKey('product')
              ? json_['product'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (product != null) 'product': product!,
      };
}

/// A request to annotate one single file, e.g. a PDF, TIFF or GIF file.
class AnnotateFileRequest {
  /// Requested features.
  ///
  /// Required.
  core.List<Feature>? features;

  /// Additional context that may accompany the image(s) in the file.
  ImageContext? imageContext;

  /// Information about the input file.
  ///
  /// Required.
  InputConfig? inputConfig;

  /// Pages of the file to perform image annotation.
  ///
  /// Pages starts from 1, we assume the first page of the file is page 1. At
  /// most 5 pages are supported per request. Pages can be negative. Page 1
  /// means the first page. Page 2 means the second page. Page -1 means the last
  /// page. Page -2 means the second to the last page. If the file is GIF
  /// instead of PDF or TIFF, page refers to GIF frames. If this field is empty,
  /// by default the service performs image annotation for the first 5 pages of
  /// the file.
  core.List<core.int>? pages;

  AnnotateFileRequest({
    this.features,
    this.imageContext,
    this.inputConfig,
    this.pages,
  });

  AnnotateFileRequest.fromJson(core.Map json_)
      : this(
          features: json_.containsKey('features')
              ? (json_['features'] as core.List)
                  .map((value) => Feature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imageContext: json_.containsKey('imageContext')
              ? ImageContext.fromJson(
                  json_['imageContext'] as core.Map<core.String, core.dynamic>)
              : null,
          inputConfig: json_.containsKey('inputConfig')
              ? InputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          pages: json_.containsKey('pages')
              ? (json_['pages'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (features != null) 'features': features!,
        if (imageContext != null) 'imageContext': imageContext!,
        if (inputConfig != null) 'inputConfig': inputConfig!,
        if (pages != null) 'pages': pages!,
      };
}

/// Response to a single file annotation request.
///
/// A file may contain one or more images, which individually have their own
/// responses.
class AnnotateFileResponse {
  /// If set, represents the error message for the failed request.
  ///
  /// The `responses` field will not be set in this case.
  Status? error;

  /// Information about the file for which this response is generated.
  InputConfig? inputConfig;

  /// Individual responses to images found within the file.
  ///
  /// This field will be empty if the `error` field is set.
  core.List<AnnotateImageResponse>? responses;

  /// This field gives the total number of pages in the file.
  core.int? totalPages;

  AnnotateFileResponse({
    this.error,
    this.inputConfig,
    this.responses,
    this.totalPages,
  });

  AnnotateFileResponse.fromJson(core.Map json_)
      : this(
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          inputConfig: json_.containsKey('inputConfig')
              ? InputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) => AnnotateImageResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalPages: json_.containsKey('totalPages')
              ? json_['totalPages'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (inputConfig != null) 'inputConfig': inputConfig!,
        if (responses != null) 'responses': responses!,
        if (totalPages != null) 'totalPages': totalPages!,
      };
}

/// Request for performing Google Cloud Vision API tasks over a user-provided
/// image, with user-requested features, and with context information.
class AnnotateImageRequest {
  /// Requested features.
  core.List<Feature>? features;

  /// The image to be processed.
  Image? image;

  /// Additional context that may accompany the image.
  ImageContext? imageContext;

  AnnotateImageRequest({
    this.features,
    this.image,
    this.imageContext,
  });

  AnnotateImageRequest.fromJson(core.Map json_)
      : this(
          features: json_.containsKey('features')
              ? (json_['features'] as core.List)
                  .map((value) => Feature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          imageContext: json_.containsKey('imageContext')
              ? ImageContext.fromJson(
                  json_['imageContext'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (features != null) 'features': features!,
        if (image != null) 'image': image!,
        if (imageContext != null) 'imageContext': imageContext!,
      };
}

/// Response to an image annotation request.
class AnnotateImageResponse {
  /// If present, contextual information is needed to understand where this
  /// image comes from.
  ImageAnnotationContext? context;

  /// If present, crop hints have completed successfully.
  CropHintsAnnotation? cropHintsAnnotation;

  /// If set, represents the error message for the operation.
  ///
  /// Note that filled-in image annotations are guaranteed to be correct, even
  /// when `error` is set.
  Status? error;

  /// If present, face detection has completed successfully.
  core.List<FaceAnnotation>? faceAnnotations;

  /// If present, text (OCR) detection or document (OCR) text detection has
  /// completed successfully.
  ///
  /// This annotation provides the structural hierarchy for the OCR detected
  /// text.
  TextAnnotation? fullTextAnnotation;

  /// If present, image properties were extracted successfully.
  ImageProperties? imagePropertiesAnnotation;

  /// If present, label detection has completed successfully.
  core.List<EntityAnnotation>? labelAnnotations;

  /// If present, landmark detection has completed successfully.
  core.List<EntityAnnotation>? landmarkAnnotations;

  /// If present, localized object detection has completed successfully.
  ///
  /// This will be sorted descending by confidence score.
  core.List<LocalizedObjectAnnotation>? localizedObjectAnnotations;

  /// If present, logo detection has completed successfully.
  core.List<EntityAnnotation>? logoAnnotations;

  /// If present, product search has completed successfully.
  ProductSearchResults? productSearchResults;

  /// If present, safe-search annotation has completed successfully.
  SafeSearchAnnotation? safeSearchAnnotation;

  /// If present, text (OCR) detection has completed successfully.
  core.List<EntityAnnotation>? textAnnotations;

  /// If present, web detection has completed successfully.
  WebDetection? webDetection;

  AnnotateImageResponse({
    this.context,
    this.cropHintsAnnotation,
    this.error,
    this.faceAnnotations,
    this.fullTextAnnotation,
    this.imagePropertiesAnnotation,
    this.labelAnnotations,
    this.landmarkAnnotations,
    this.localizedObjectAnnotations,
    this.logoAnnotations,
    this.productSearchResults,
    this.safeSearchAnnotation,
    this.textAnnotations,
    this.webDetection,
  });

  AnnotateImageResponse.fromJson(core.Map json_)
      : this(
          context: json_.containsKey('context')
              ? ImageAnnotationContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>)
              : null,
          cropHintsAnnotation: json_.containsKey('cropHintsAnnotation')
              ? CropHintsAnnotation.fromJson(json_['cropHintsAnnotation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          faceAnnotations: json_.containsKey('faceAnnotations')
              ? (json_['faceAnnotations'] as core.List)
                  .map((value) => FaceAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fullTextAnnotation: json_.containsKey('fullTextAnnotation')
              ? TextAnnotation.fromJson(json_['fullTextAnnotation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          imagePropertiesAnnotation:
              json_.containsKey('imagePropertiesAnnotation')
                  ? ImageProperties.fromJson(json_['imagePropertiesAnnotation']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          labelAnnotations: json_.containsKey('labelAnnotations')
              ? (json_['labelAnnotations'] as core.List)
                  .map((value) => EntityAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          landmarkAnnotations: json_.containsKey('landmarkAnnotations')
              ? (json_['landmarkAnnotations'] as core.List)
                  .map((value) => EntityAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          localizedObjectAnnotations:
              json_.containsKey('localizedObjectAnnotations')
                  ? (json_['localizedObjectAnnotations'] as core.List)
                      .map((value) => LocalizedObjectAnnotation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                      .toList()
                  : null,
          logoAnnotations: json_.containsKey('logoAnnotations')
              ? (json_['logoAnnotations'] as core.List)
                  .map((value) => EntityAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          productSearchResults: json_.containsKey('productSearchResults')
              ? ProductSearchResults.fromJson(json_['productSearchResults']
                  as core.Map<core.String, core.dynamic>)
              : null,
          safeSearchAnnotation: json_.containsKey('safeSearchAnnotation')
              ? SafeSearchAnnotation.fromJson(json_['safeSearchAnnotation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textAnnotations: json_.containsKey('textAnnotations')
              ? (json_['textAnnotations'] as core.List)
                  .map((value) => EntityAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          webDetection: json_.containsKey('webDetection')
              ? WebDetection.fromJson(
                  json_['webDetection'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (cropHintsAnnotation != null)
          'cropHintsAnnotation': cropHintsAnnotation!,
        if (error != null) 'error': error!,
        if (faceAnnotations != null) 'faceAnnotations': faceAnnotations!,
        if (fullTextAnnotation != null)
          'fullTextAnnotation': fullTextAnnotation!,
        if (imagePropertiesAnnotation != null)
          'imagePropertiesAnnotation': imagePropertiesAnnotation!,
        if (labelAnnotations != null) 'labelAnnotations': labelAnnotations!,
        if (landmarkAnnotations != null)
          'landmarkAnnotations': landmarkAnnotations!,
        if (localizedObjectAnnotations != null)
          'localizedObjectAnnotations': localizedObjectAnnotations!,
        if (logoAnnotations != null) 'logoAnnotations': logoAnnotations!,
        if (productSearchResults != null)
          'productSearchResults': productSearchResults!,
        if (safeSearchAnnotation != null)
          'safeSearchAnnotation': safeSearchAnnotation!,
        if (textAnnotations != null) 'textAnnotations': textAnnotations!,
        if (webDetection != null) 'webDetection': webDetection!,
      };
}

/// An offline file annotation request.
class AsyncAnnotateFileRequest {
  /// Requested features.
  ///
  /// Required.
  core.List<Feature>? features;

  /// Additional context that may accompany the image(s) in the file.
  ImageContext? imageContext;

  /// Information about the input file.
  ///
  /// Required.
  InputConfig? inputConfig;

  /// The desired output location and metadata (e.g. format).
  ///
  /// Required.
  OutputConfig? outputConfig;

  AsyncAnnotateFileRequest({
    this.features,
    this.imageContext,
    this.inputConfig,
    this.outputConfig,
  });

  AsyncAnnotateFileRequest.fromJson(core.Map json_)
      : this(
          features: json_.containsKey('features')
              ? (json_['features'] as core.List)
                  .map((value) => Feature.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          imageContext: json_.containsKey('imageContext')
              ? ImageContext.fromJson(
                  json_['imageContext'] as core.Map<core.String, core.dynamic>)
              : null,
          inputConfig: json_.containsKey('inputConfig')
              ? InputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          outputConfig: json_.containsKey('outputConfig')
              ? OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (features != null) 'features': features!,
        if (imageContext != null) 'imageContext': imageContext!,
        if (inputConfig != null) 'inputConfig': inputConfig!,
        if (outputConfig != null) 'outputConfig': outputConfig!,
      };
}

/// Multiple async file annotation requests are batched into a single service
/// call.
class AsyncBatchAnnotateFilesRequest {
  /// Target project and location to make a call.
  ///
  /// Format: `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  ///
  /// Optional.
  core.String? parent;

  /// Individual async file annotation requests for this batch.
  ///
  /// Required.
  core.List<AsyncAnnotateFileRequest>? requests;

  AsyncBatchAnnotateFilesRequest({
    this.parent,
    this.requests,
  });

  AsyncBatchAnnotateFilesRequest.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => AsyncAnnotateFileRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (requests != null) 'requests': requests!,
      };
}

/// Request for async image annotation for a list of images.
class AsyncBatchAnnotateImagesRequest {
  /// The desired output location and metadata (e.g. format).
  ///
  /// Required.
  OutputConfig? outputConfig;

  /// Target project and location to make a call.
  ///
  /// Format: `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  ///
  /// Optional.
  core.String? parent;

  /// Individual image annotation requests for this batch.
  ///
  /// Required.
  core.List<AnnotateImageRequest>? requests;

  AsyncBatchAnnotateImagesRequest({
    this.outputConfig,
    this.parent,
    this.requests,
  });

  AsyncBatchAnnotateImagesRequest.fromJson(core.Map json_)
      : this(
          outputConfig: json_.containsKey('outputConfig')
              ? OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => AnnotateImageRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputConfig != null) 'outputConfig': outputConfig!,
        if (parent != null) 'parent': parent!,
        if (requests != null) 'requests': requests!,
      };
}

/// A list of requests to annotate files using the BatchAnnotateFiles API.
class BatchAnnotateFilesRequest {
  /// Target project and location to make a call.
  ///
  /// Format: `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  ///
  /// Optional.
  core.String? parent;

  /// The list of file annotation requests.
  ///
  /// Right now we support only one AnnotateFileRequest in
  /// BatchAnnotateFilesRequest.
  ///
  /// Required.
  core.List<AnnotateFileRequest>? requests;

  BatchAnnotateFilesRequest({
    this.parent,
    this.requests,
  });

  BatchAnnotateFilesRequest.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => AnnotateFileRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (requests != null) 'requests': requests!,
      };
}

/// A list of file annotation responses.
class BatchAnnotateFilesResponse {
  /// The list of file annotation responses, each response corresponding to each
  /// AnnotateFileRequest in BatchAnnotateFilesRequest.
  core.List<AnnotateFileResponse>? responses;

  BatchAnnotateFilesResponse({
    this.responses,
  });

  BatchAnnotateFilesResponse.fromJson(core.Map json_)
      : this(
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) => AnnotateFileResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null) 'responses': responses!,
      };
}

/// Multiple image annotation requests are batched into a single service call.
class BatchAnnotateImagesRequest {
  /// Target project and location to make a call.
  ///
  /// Format: `projects/{project-id}/locations/{location-id}`. If no parent is
  /// specified, a region will be chosen automatically. Supported location-ids:
  /// `us`: USA country only, `asia`: East asia areas, like Japan, Taiwan, `eu`:
  /// The European Union. Example: `projects/project-A/locations/eu`.
  ///
  /// Optional.
  core.String? parent;

  /// Individual image annotation requests for this batch.
  ///
  /// Required.
  core.List<AnnotateImageRequest>? requests;

  BatchAnnotateImagesRequest({
    this.parent,
    this.requests,
  });

  BatchAnnotateImagesRequest.fromJson(core.Map json_)
      : this(
          parent: json_.containsKey('parent')
              ? json_['parent'] as core.String
              : null,
          requests: json_.containsKey('requests')
              ? (json_['requests'] as core.List)
                  .map((value) => AnnotateImageRequest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parent != null) 'parent': parent!,
        if (requests != null) 'requests': requests!,
      };
}

/// Response to a batch image annotation request.
class BatchAnnotateImagesResponse {
  /// Individual responses to image annotation requests within the batch.
  core.List<AnnotateImageResponse>? responses;

  BatchAnnotateImagesResponse({
    this.responses,
  });

  BatchAnnotateImagesResponse.fromJson(core.Map json_)
      : this(
          responses: json_.containsKey('responses')
              ? (json_['responses'] as core.List)
                  .map((value) => AnnotateImageResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (responses != null) 'responses': responses!,
      };
}

/// Logical element on the page.
class Block {
  /// Detected block type (text, image etc) for this block.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown block type.
  /// - "TEXT" : Regular text block.
  /// - "TABLE" : Table block.
  /// - "PICTURE" : Image block.
  /// - "RULER" : Horizontal/vertical line box.
  /// - "BARCODE" : Barcode block.
  core.String? blockType;

  /// The bounding box for the block.
  ///
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation. For example: * when the text is
  /// horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180
  /// degrees around the top-left corner it becomes: 2----3 | | 1----0 and the
  /// vertex order will still be (0, 1, 2, 3).
  BoundingPoly? boundingBox;

  /// Confidence of the OCR results on the block.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// List of paragraphs in this block (if this blocks is of type text).
  core.List<Paragraph>? paragraphs;

  /// Additional information detected for the block.
  TextProperty? property;

  Block({
    this.blockType,
    this.boundingBox,
    this.confidence,
    this.paragraphs,
    this.property,
  });

  Block.fromJson(core.Map json_)
      : this(
          blockType: json_.containsKey('blockType')
              ? json_['blockType'] as core.String
              : null,
          boundingBox: json_.containsKey('boundingBox')
              ? BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          paragraphs: json_.containsKey('paragraphs')
              ? (json_['paragraphs'] as core.List)
                  .map((value) => Paragraph.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          property: json_.containsKey('property')
              ? TextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blockType != null) 'blockType': blockType!,
        if (boundingBox != null) 'boundingBox': boundingBox!,
        if (confidence != null) 'confidence': confidence!,
        if (paragraphs != null) 'paragraphs': paragraphs!,
        if (property != null) 'property': property!,
      };
}

/// A bounding polygon for the detected image annotation.
class BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  core.List<Vertex>? vertices;

  BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  BoundingPoly.fromJson(core.Map json_)
      : this(
          normalizedVertices: json_.containsKey('normalizedVertices')
              ? (json_['normalizedVertices'] as core.List)
                  .map((value) => NormalizedVertex.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vertices: json_.containsKey('vertices')
              ? (json_['vertices'] as core.List)
                  .map((value) => Vertex.fromJson(
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

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
typedef Color = $Color;

/// Color information consists of RGB channels, score, and the fraction of the
/// image that the color occupies in the image.
class ColorInfo {
  /// RGB components of the color.
  Color? color;

  /// The fraction of pixels the color occupies in the image.
  ///
  /// Value in range \[0, 1\].
  core.double? pixelFraction;

  /// Image-specific score for this color.
  ///
  /// Value in range \[0, 1\].
  core.double? score;

  ColorInfo({
    this.color,
    this.pixelFraction,
    this.score,
  });

  ColorInfo.fromJson(core.Map json_)
      : this(
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          pixelFraction: json_.containsKey('pixelFraction')
              ? (json_['pixelFraction'] as core.num).toDouble()
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (color != null) 'color': color!,
        if (pixelFraction != null) 'pixelFraction': pixelFraction!,
        if (score != null) 'score': score!,
      };
}

/// Single crop hint that is used to generate a new crop when serving an image.
class CropHint {
  /// The bounding polygon for the crop region.
  ///
  /// The coordinates of the bounding box are in the original image's scale.
  BoundingPoly? boundingPoly;

  /// Confidence of this being a salient region.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Fraction of importance of this salient region with respect to the original
  /// image.
  core.double? importanceFraction;

  CropHint({
    this.boundingPoly,
    this.confidence,
    this.importanceFraction,
  });

  CropHint.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          importanceFraction: json_.containsKey('importanceFraction')
              ? (json_['importanceFraction'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (confidence != null) 'confidence': confidence!,
        if (importanceFraction != null)
          'importanceFraction': importanceFraction!,
      };
}

/// Set of crop hints that are used to generate new crops when serving images.
class CropHintsAnnotation {
  /// Crop hint results.
  core.List<CropHint>? cropHints;

  CropHintsAnnotation({
    this.cropHints,
  });

  CropHintsAnnotation.fromJson(core.Map json_)
      : this(
          cropHints: json_.containsKey('cropHints')
              ? (json_['cropHints'] as core.List)
                  .map((value) => CropHint.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cropHints != null) 'cropHints': cropHints!,
      };
}

/// Parameters for crop hints annotation request.
class CropHintsParams {
  /// Aspect ratios in floats, representing the ratio of the width to the height
  /// of the image.
  ///
  /// For example, if the desired aspect ratio is 4/3, the corresponding float
  /// value should be 1.33333. If not specified, the best possible crop is
  /// returned. The number of provided aspect ratios is limited to a maximum of
  /// 16; any aspect ratios provided after the 16th are ignored.
  core.List<core.double>? aspectRatios;

  CropHintsParams({
    this.aspectRatios,
  });

  CropHintsParams.fromJson(core.Map json_)
      : this(
          aspectRatios: json_.containsKey('aspectRatios')
              ? (json_['aspectRatios'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aspectRatios != null) 'aspectRatios': aspectRatios!,
      };
}

/// Detected start or end of a structural component.
class DetectedBreak {
  /// True if break prepends the element.
  core.bool? isPrefix;

  /// Detected break type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown break label type.
  /// - "SPACE" : Regular space.
  /// - "SURE_SPACE" : Sure space (very wide).
  /// - "EOL_SURE_SPACE" : Line-wrapping break.
  /// - "HYPHEN" : End-line hyphen that is not present in text; does not
  /// co-occur with `SPACE`, `LEADER_SPACE`, or `LINE_BREAK`.
  /// - "LINE_BREAK" : Line break that ends a paragraph.
  core.String? type;

  DetectedBreak({
    this.isPrefix,
    this.type,
  });

  DetectedBreak.fromJson(core.Map json_)
      : this(
          isPrefix: json_.containsKey('isPrefix')
              ? json_['isPrefix'] as core.bool
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isPrefix != null) 'isPrefix': isPrefix!,
        if (type != null) 'type': type!,
      };
}

/// Detected language for a structural component.
class DetectedLanguage {
  /// Confidence of detected language.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  DetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  DetectedLanguage.fromJson(core.Map json_)
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

/// Set of dominant colors and their corresponding scores.
class DominantColorsAnnotation {
  /// RGB color values with their score and pixel fraction.
  core.List<ColorInfo>? colors;

  DominantColorsAnnotation({
    this.colors,
  });

  DominantColorsAnnotation.fromJson(core.Map json_)
      : this(
          colors: json_.containsKey('colors')
              ? (json_['colors'] as core.List)
                  .map((value) => ColorInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colors != null) 'colors': colors!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Set of detected entity features.
class EntityAnnotation {
  /// Image region to which this entity belongs.
  ///
  /// Not produced for `LABEL_DETECTION` features.
  BoundingPoly? boundingPoly;

  /// **Deprecated.
  ///
  /// Use `score` instead.** The accuracy of the entity detection in an image.
  /// For example, for an image in which the "Eiffel Tower" entity is detected,
  /// this field represents the confidence that there is a tower in the query
  /// image. Range \[0, 1\].
  core.double? confidence;

  /// Entity textual description, expressed in its `locale` language.
  core.String? description;

  /// The language code for the locale in which the entity textual `description`
  /// is expressed.
  core.String? locale;

  /// The location information for the detected entity.
  ///
  /// Multiple `LocationInfo` elements can be present because one location may
  /// indicate the location of the scene in the image, and another location may
  /// indicate the location of the place where the image was taken. Location
  /// information is usually present for landmarks.
  core.List<LocationInfo>? locations;

  /// Opaque entity ID.
  ///
  /// Some IDs may be available in
  /// [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).
  core.String? mid;

  /// Some entities may have optional user-supplied `Property` (name/value)
  /// fields, such a score or string that qualifies the entity.
  core.List<Property>? properties;

  /// Overall score of the result.
  ///
  /// Range \[0, 1\].
  core.double? score;

  /// The relevancy of the ICA (Image Content Annotation) label to the image.
  ///
  /// For example, the relevancy of "tower" is likely higher to an image
  /// containing the detected "Eiffel Tower" than to an image containing a
  /// detected distant towering building, even though the confidence that there
  /// is a tower in each image may be the same. Range \[0, 1\].
  core.double? topicality;

  EntityAnnotation({
    this.boundingPoly,
    this.confidence,
    this.description,
    this.locale,
    this.locations,
    this.mid,
    this.properties,
    this.score,
    this.topicality,
  });

  EntityAnnotation.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          locale: json_.containsKey('locale')
              ? json_['locale'] as core.String
              : null,
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => LocationInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mid: json_.containsKey('mid') ? json_['mid'] as core.String : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) => Property.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
          topicality: json_.containsKey('topicality')
              ? (json_['topicality'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (confidence != null) 'confidence': confidence!,
        if (description != null) 'description': description!,
        if (locale != null) 'locale': locale!,
        if (locations != null) 'locations': locations!,
        if (mid != null) 'mid': mid!,
        if (properties != null) 'properties': properties!,
        if (score != null) 'score': score!,
        if (topicality != null) 'topicality': topicality!,
      };
}

/// A face annotation object contains the results of face detection.
class FaceAnnotation {
  /// Anger likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? angerLikelihood;

  /// Blurred likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? blurredLikelihood;

  /// The bounding polygon around the face.
  ///
  /// The coordinates of the bounding box are in the original image's scale. The
  /// bounding box is computed to "frame" the face in accordance with human
  /// expectations. It is based on the landmarker results. Note that one or more
  /// x and/or y coordinates may not be generated in the `BoundingPoly` (the
  /// polygon will be unbounded) if only a partial face appears in the image to
  /// be annotated.
  BoundingPoly? boundingPoly;

  /// Detection confidence.
  ///
  /// Range \[0, 1\].
  core.double? detectionConfidence;

  /// The `fd_bounding_poly` bounding polygon is tighter than the
  /// `boundingPoly`, and encloses only the skin part of the face.
  ///
  /// Typically, it is used to eliminate the face from any image analysis that
  /// detects the "amount of skin" visible in an image. It is not based on the
  /// landmarker results, only on the initial face detection, hence the fd (face
  /// detection) prefix.
  BoundingPoly? fdBoundingPoly;

  /// Headwear likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? headwearLikelihood;

  /// Joy likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? joyLikelihood;

  /// Face landmarking confidence.
  ///
  /// Range \[0, 1\].
  core.double? landmarkingConfidence;

  /// Detected face landmarks.
  core.List<Landmark>? landmarks;

  /// Yaw angle, which indicates the leftward/rightward angle that the face is
  /// pointing relative to the vertical plane perpendicular to the image.
  ///
  /// Range \[-180,180\].
  core.double? panAngle;

  /// Roll angle, which indicates the amount of clockwise/anti-clockwise
  /// rotation of the face relative to the image vertical about the axis
  /// perpendicular to the face.
  ///
  /// Range \[-180,180\].
  core.double? rollAngle;

  /// Sorrow likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? sorrowLikelihood;

  /// Surprise likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? surpriseLikelihood;

  /// Pitch angle, which indicates the upwards/downwards angle that the face is
  /// pointing relative to the image's horizontal plane.
  ///
  /// Range \[-180,180\].
  core.double? tiltAngle;

  /// Under-exposed likelihood.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? underExposedLikelihood;

  FaceAnnotation({
    this.angerLikelihood,
    this.blurredLikelihood,
    this.boundingPoly,
    this.detectionConfidence,
    this.fdBoundingPoly,
    this.headwearLikelihood,
    this.joyLikelihood,
    this.landmarkingConfidence,
    this.landmarks,
    this.panAngle,
    this.rollAngle,
    this.sorrowLikelihood,
    this.surpriseLikelihood,
    this.tiltAngle,
    this.underExposedLikelihood,
  });

  FaceAnnotation.fromJson(core.Map json_)
      : this(
          angerLikelihood: json_.containsKey('angerLikelihood')
              ? json_['angerLikelihood'] as core.String
              : null,
          blurredLikelihood: json_.containsKey('blurredLikelihood')
              ? json_['blurredLikelihood'] as core.String
              : null,
          boundingPoly: json_.containsKey('boundingPoly')
              ? BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          detectionConfidence: json_.containsKey('detectionConfidence')
              ? (json_['detectionConfidence'] as core.num).toDouble()
              : null,
          fdBoundingPoly: json_.containsKey('fdBoundingPoly')
              ? BoundingPoly.fromJson(json_['fdBoundingPoly']
                  as core.Map<core.String, core.dynamic>)
              : null,
          headwearLikelihood: json_.containsKey('headwearLikelihood')
              ? json_['headwearLikelihood'] as core.String
              : null,
          joyLikelihood: json_.containsKey('joyLikelihood')
              ? json_['joyLikelihood'] as core.String
              : null,
          landmarkingConfidence: json_.containsKey('landmarkingConfidence')
              ? (json_['landmarkingConfidence'] as core.num).toDouble()
              : null,
          landmarks: json_.containsKey('landmarks')
              ? (json_['landmarks'] as core.List)
                  .map((value) => Landmark.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          panAngle: json_.containsKey('panAngle')
              ? (json_['panAngle'] as core.num).toDouble()
              : null,
          rollAngle: json_.containsKey('rollAngle')
              ? (json_['rollAngle'] as core.num).toDouble()
              : null,
          sorrowLikelihood: json_.containsKey('sorrowLikelihood')
              ? json_['sorrowLikelihood'] as core.String
              : null,
          surpriseLikelihood: json_.containsKey('surpriseLikelihood')
              ? json_['surpriseLikelihood'] as core.String
              : null,
          tiltAngle: json_.containsKey('tiltAngle')
              ? (json_['tiltAngle'] as core.num).toDouble()
              : null,
          underExposedLikelihood: json_.containsKey('underExposedLikelihood')
              ? json_['underExposedLikelihood'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (angerLikelihood != null) 'angerLikelihood': angerLikelihood!,
        if (blurredLikelihood != null) 'blurredLikelihood': blurredLikelihood!,
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (detectionConfidence != null)
          'detectionConfidence': detectionConfidence!,
        if (fdBoundingPoly != null) 'fdBoundingPoly': fdBoundingPoly!,
        if (headwearLikelihood != null)
          'headwearLikelihood': headwearLikelihood!,
        if (joyLikelihood != null) 'joyLikelihood': joyLikelihood!,
        if (landmarkingConfidence != null)
          'landmarkingConfidence': landmarkingConfidence!,
        if (landmarks != null) 'landmarks': landmarks!,
        if (panAngle != null) 'panAngle': panAngle!,
        if (rollAngle != null) 'rollAngle': rollAngle!,
        if (sorrowLikelihood != null) 'sorrowLikelihood': sorrowLikelihood!,
        if (surpriseLikelihood != null)
          'surpriseLikelihood': surpriseLikelihood!,
        if (tiltAngle != null) 'tiltAngle': tiltAngle!,
        if (underExposedLikelihood != null)
          'underExposedLikelihood': underExposedLikelihood!,
      };
}

/// The type of Google Cloud Vision API detection to perform, and the maximum
/// number of results to return for that type.
///
/// Multiple `Feature` objects can be specified in the `features` list.
class Feature {
  /// Maximum number of results of this type.
  ///
  /// Does not apply to `TEXT_DETECTION`, `DOCUMENT_TEXT_DETECTION`, or
  /// `CROP_HINTS`.
  core.int? maxResults;

  /// Model to use for the feature.
  ///
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest". `DOCUMENT_TEXT_DETECTION` and `TEXT_DETECTION` also
  /// support "builtin/weekly" for the bleeding edge release updated weekly.
  core.String? model;

  /// The feature type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified feature type.
  /// - "FACE_DETECTION" : Run face detection.
  /// - "LANDMARK_DETECTION" : Run landmark detection.
  /// - "LOGO_DETECTION" : Run logo detection.
  /// - "LABEL_DETECTION" : Run label detection.
  /// - "TEXT_DETECTION" : Run text detection / optical character recognition
  /// (OCR). Text detection is optimized for areas of text within a larger
  /// image; if the image is a document, use `DOCUMENT_TEXT_DETECTION` instead.
  /// - "DOCUMENT_TEXT_DETECTION" : Run dense text document OCR. Takes
  /// precedence when both `DOCUMENT_TEXT_DETECTION` and `TEXT_DETECTION` are
  /// present.
  /// - "SAFE_SEARCH_DETECTION" : Run Safe Search to detect potentially unsafe
  /// or undesirable content.
  /// - "IMAGE_PROPERTIES" : Compute a set of image properties, such as the
  /// image's dominant colors.
  /// - "CROP_HINTS" : Run crop hints.
  /// - "WEB_DETECTION" : Run web detection.
  /// - "PRODUCT_SEARCH" : Run Product Search.
  /// - "OBJECT_LOCALIZATION" : Run localizer for object detection.
  core.String? type;

  Feature({
    this.maxResults,
    this.model,
    this.type,
  });

  Feature.fromJson(core.Map json_)
      : this(
          maxResults: json_.containsKey('maxResults')
              ? json_['maxResults'] as core.int
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxResults != null) 'maxResults': maxResults!,
        if (model != null) 'model': model!,
        if (type != null) 'type': type!,
      };
}

/// The Google Cloud Storage location where the output will be written to.
class GcsDestination {
  /// Google Cloud Storage URI prefix where the results will be stored.
  ///
  /// Results will be in JSON format and preceded by its corresponding input URI
  /// prefix. This field can either represent a gcs file prefix or gcs
  /// directory. In either case, the uri should be unique because in order to
  /// get all of the output files, you will need to do a wildcard gcs search on
  /// the uri prefix you provide. Examples: * File Prefix:
  /// gs://bucket-name/here/filenameprefix The output files will be created in
  /// gs://bucket-name/here/ and the names of the output files will begin with
  /// "filenameprefix". * Directory Prefix: gs://bucket-name/some/location/ The
  /// output files will be created in gs://bucket-name/some/location/ and the
  /// names of the output files could be anything because there was no filename
  /// prefix specified. If multiple outputs, each response is still
  /// AnnotateFileResponse, each of which contains some subset of the full list
  /// of AnnotateImageResponse. Multiple outputs can happen if, for example, the
  /// output JSON is too large and overflows into multiple sharded files.
  core.String? uri;

  GcsDestination({
    this.uri,
  });

  GcsDestination.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// The Google Cloud Storage location where the input will be read from.
class GcsSource {
  /// Google Cloud Storage URI for the input file.
  ///
  /// This must only be a Google Cloud Storage object. Wildcards are not
  /// currently supported.
  core.String? uri;

  GcsSource({
    this.uri,
  });

  GcsSource.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Information about the products similar to a single product in a query image.
class GroupedResult {
  /// The bounding polygon around the product detected in the query image.
  BoundingPoly? boundingPoly;

  /// List of generic predictions for the object in the bounding box.
  core.List<ObjectAnnotation>? objectAnnotations;

  /// List of results, one for each product match.
  core.List<Result>? results;

  GroupedResult({
    this.boundingPoly,
    this.objectAnnotations,
    this.results,
  });

  GroupedResult.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          objectAnnotations: json_.containsKey('objectAnnotations')
              ? (json_['objectAnnotations'] as core.List)
                  .map((value) => ObjectAnnotation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => Result.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (objectAnnotations != null) 'objectAnnotations': objectAnnotations!,
        if (results != null) 'results': results!,
      };
}

/// Client image to perform Google Cloud Vision API tasks over.
class Image {
  /// Image content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64. Currently, this
  /// field only works for BatchAnnotateImages requests. It does not work for
  /// AsyncBatchAnnotateImages requests.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Google Cloud Storage image location, or publicly-accessible image URL.
  ///
  /// If both `content` and `source` are provided for an image, `content` takes
  /// precedence and is used to perform the image annotation request.
  ImageSource? source;

  Image({
    this.content,
    this.source,
  });

  Image.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          source: json_.containsKey('source')
              ? ImageSource.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (source != null) 'source': source!,
      };
}

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
class ImageAnnotationContext {
  /// If the file was a PDF or TIFF, this field gives the page number within the
  /// file used to produce the image.
  core.int? pageNumber;

  /// The URI of the file used to produce the image.
  core.String? uri;

  ImageAnnotationContext({
    this.pageNumber,
    this.uri,
  });

  ImageAnnotationContext.fromJson(core.Map json_)
      : this(
          pageNumber: json_.containsKey('pageNumber')
              ? json_['pageNumber'] as core.int
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageNumber != null) 'pageNumber': pageNumber!,
        if (uri != null) 'uri': uri!,
      };
}

/// Image context and/or feature-specific parameters.
class ImageContext {
  /// Parameters for crop hints annotation request.
  CropHintsParams? cropHintsParams;

  /// List of languages to use for TEXT_DETECTION.
  ///
  /// In most cases, an empty value yields the best results since it enables
  /// automatic language detection. For languages based on the Latin alphabet,
  /// setting `language_hints` is not needed. In rare cases, when the language
  /// of the text in the image is known, setting a hint will help get better
  /// results (although it will be a significant hindrance if the hint is
  /// wrong). Text detection returns an error if one or more of the specified
  /// languages is not one of the
  /// [supported languages](https://cloud.google.com/vision/docs/languages).
  core.List<core.String>? languageHints;

  /// Not used.
  LatLongRect? latLongRect;

  /// Parameters for product search.
  ProductSearchParams? productSearchParams;

  /// Parameters for text detection and document text detection.
  TextDetectionParams? textDetectionParams;

  /// Parameters for web detection.
  WebDetectionParams? webDetectionParams;

  ImageContext({
    this.cropHintsParams,
    this.languageHints,
    this.latLongRect,
    this.productSearchParams,
    this.textDetectionParams,
    this.webDetectionParams,
  });

  ImageContext.fromJson(core.Map json_)
      : this(
          cropHintsParams: json_.containsKey('cropHintsParams')
              ? CropHintsParams.fromJson(json_['cropHintsParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          languageHints: json_.containsKey('languageHints')
              ? (json_['languageHints'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          latLongRect: json_.containsKey('latLongRect')
              ? LatLongRect.fromJson(
                  json_['latLongRect'] as core.Map<core.String, core.dynamic>)
              : null,
          productSearchParams: json_.containsKey('productSearchParams')
              ? ProductSearchParams.fromJson(json_['productSearchParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          textDetectionParams: json_.containsKey('textDetectionParams')
              ? TextDetectionParams.fromJson(json_['textDetectionParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          webDetectionParams: json_.containsKey('webDetectionParams')
              ? WebDetectionParams.fromJson(json_['webDetectionParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cropHintsParams != null) 'cropHintsParams': cropHintsParams!,
        if (languageHints != null) 'languageHints': languageHints!,
        if (latLongRect != null) 'latLongRect': latLongRect!,
        if (productSearchParams != null)
          'productSearchParams': productSearchParams!,
        if (textDetectionParams != null)
          'textDetectionParams': textDetectionParams!,
        if (webDetectionParams != null)
          'webDetectionParams': webDetectionParams!,
      };
}

/// Stores image properties, such as dominant colors.
class ImageProperties {
  /// If present, dominant colors completed successfully.
  DominantColorsAnnotation? dominantColors;

  ImageProperties({
    this.dominantColors,
  });

  ImageProperties.fromJson(core.Map json_)
      : this(
          dominantColors: json_.containsKey('dominantColors')
              ? DominantColorsAnnotation.fromJson(json_['dominantColors']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dominantColors != null) 'dominantColors': dominantColors!,
      };
}

/// External image source (Google Cloud Storage or web URL image location).
class ImageSource {
  /// **Use `image_uri` instead.** The Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. See
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris)
  /// for more info.
  core.String? gcsImageUri;

  /// The URI of the source image.
  ///
  /// Can be either: 1. A Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`. Object versioning is not supported. See
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris)
  /// for more info. 2. A publicly-accessible image HTTP/HTTPS URL. When
  /// fetching images from HTTP/HTTPS URLs, Google cannot guarantee that the
  /// request will be completed. Your request may fail if the specified host
  /// denies the request (e.g. due to request throttling or DOS prevention), or
  /// if Google throttles requests to the site for abuse prevention. You should
  /// not depend on externally-hosted images for production applications. When
  /// both `gcs_image_uri` and `image_uri` are specified, `image_uri` takes
  /// precedence.
  core.String? imageUri;

  ImageSource({
    this.gcsImageUri,
    this.imageUri,
  });

  ImageSource.fromJson(core.Map json_)
      : this(
          gcsImageUri: json_.containsKey('gcsImageUri')
              ? json_['gcsImageUri'] as core.String
              : null,
          imageUri: json_.containsKey('imageUri')
              ? json_['imageUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsImageUri != null) 'gcsImageUri': gcsImageUri!,
        if (imageUri != null) 'imageUri': imageUri!,
      };
}

/// The Google Cloud Storage location for a csv file which preserves a list of
/// ImportProductSetRequests in each line.
class ImportProductSetsGcsSource {
  /// The Google Cloud Storage URI of the input csv file.
  ///
  /// The URI must start with `gs://`. The format of the input csv file should
  /// be one image per line. In each line, there are 8 columns. 1. image-uri 2.
  /// image-id 3. product-set-id 4. product-id 5. product-category 6.
  /// product-display-name 7. labels 8. bounding-poly The `image-uri`,
  /// `product-set-id`, `product-id`, and `product-category` columns are
  /// required. All other columns are optional. If the `ProductSet` or `Product`
  /// specified by the `product-set-id` and `product-id` values does not exist,
  /// then the system will create a new `ProductSet` or `Product` for the image.
  /// In this case, the `product-display-name` column refers to display_name,
  /// the `product-category` column refers to product_category, and the `labels`
  /// column refers to product_labels. The `image-id` column is optional but
  /// must be unique if provided. If it is empty, the system will automatically
  /// assign a unique id to the image. The `product-display-name` column is
  /// optional. If it is empty, the system sets the display_name field for the
  /// product to a space (" "). You can update the `display_name` later by using
  /// the API. If a `Product` with the specified `product-id` already exists,
  /// then the system ignores the `product-display-name`, `product-category`,
  /// and `labels` columns. The `labels` column (optional) is a line containing
  /// a list of comma-separated key-value pairs, in the following format:
  /// "key_1=value_1,key_2=value_2,...,key_n=value_n" The `bounding-poly` column
  /// (optional) identifies one region of interest from the image in the same
  /// manner as `CreateReferenceImage`. If you do not specify the
  /// `bounding-poly` column, then the system will try to detect regions of
  /// interest automatically. At most one `bounding-poly` column is allowed per
  /// line. If the image contains multiple regions of interest, add a line to
  /// the CSV file that includes the same product information, and the
  /// `bounding-poly` values for each region of interest. The `bounding-poly`
  /// column must contain an even number of comma-separated numbers, in the
  /// format "p1_x,p1_y,p2_x,p2_y,...,pn_x,pn_y". Use non-negative integers for
  /// absolute bounding polygons, and float values in \[0, 1\] for normalized
  /// bounding polygons. The system will resize the image if the image
  /// resolution is too large to process (larger than 20MP).
  core.String? csvFileUri;

  ImportProductSetsGcsSource({
    this.csvFileUri,
  });

  ImportProductSetsGcsSource.fromJson(core.Map json_)
      : this(
          csvFileUri: json_.containsKey('csvFileUri')
              ? json_['csvFileUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (csvFileUri != null) 'csvFileUri': csvFileUri!,
      };
}

/// The input content for the `ImportProductSets` method.
class ImportProductSetsInputConfig {
  /// The Google Cloud Storage location for a csv file which preserves a list of
  /// ImportProductSetRequests in each line.
  ImportProductSetsGcsSource? gcsSource;

  ImportProductSetsInputConfig({
    this.gcsSource,
  });

  ImportProductSetsInputConfig.fromJson(core.Map json_)
      : this(
          gcsSource: json_.containsKey('gcsSource')
              ? ImportProductSetsGcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsSource != null) 'gcsSource': gcsSource!,
      };
}

/// Request message for the `ImportProductSets` method.
class ImportProductSetsRequest {
  /// The input content for the list of requests.
  ///
  /// Required.
  ImportProductSetsInputConfig? inputConfig;

  ImportProductSetsRequest({
    this.inputConfig,
  });

  ImportProductSetsRequest.fromJson(core.Map json_)
      : this(
          inputConfig: json_.containsKey('inputConfig')
              ? ImportProductSetsInputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputConfig != null) 'inputConfig': inputConfig!,
      };
}

/// The desired input location and metadata.
class InputConfig {
  /// File content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64. Currently, this
  /// field only works for BatchAnnotateFiles requests. It does not work for
  /// AsyncBatchAnnotateFiles requests.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The Google Cloud Storage location to read the input from.
  GcsSource? gcsSource;

  /// The type of the file.
  ///
  /// Currently only "application/pdf", "image/tiff" and "image/gif" are
  /// supported. Wildcards are not supported.
  core.String? mimeType;

  InputConfig({
    this.content,
    this.gcsSource,
    this.mimeType,
  });

  InputConfig.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          gcsSource: json_.containsKey('gcsSource')
              ? GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (gcsSource != null) 'gcsSource': gcsSource!,
        if (mimeType != null) 'mimeType': mimeType!,
      };
}

/// A product label represented as a key-value pair.
class KeyValue {
  /// The key of the label attached to the product.
  ///
  /// Cannot be empty and cannot exceed 128 bytes.
  core.String? key;

  /// The value of the label attached to the product.
  ///
  /// Cannot be empty and cannot exceed 128 bytes.
  core.String? value;

  KeyValue({
    this.key,
    this.value,
  });

  KeyValue.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// A face-specific landmark (for example, a face feature).
class Landmark {
  /// Face landmark position.
  Position? position;

  /// Face landmark type.
  /// Possible string values are:
  /// - "UNKNOWN_LANDMARK" : Unknown face landmark detected. Should not be
  /// filled.
  /// - "LEFT_EYE" : Left eye.
  /// - "RIGHT_EYE" : Right eye.
  /// - "LEFT_OF_LEFT_EYEBROW" : Left of left eyebrow.
  /// - "RIGHT_OF_LEFT_EYEBROW" : Right of left eyebrow.
  /// - "LEFT_OF_RIGHT_EYEBROW" : Left of right eyebrow.
  /// - "RIGHT_OF_RIGHT_EYEBROW" : Right of right eyebrow.
  /// - "MIDPOINT_BETWEEN_EYES" : Midpoint between eyes.
  /// - "NOSE_TIP" : Nose tip.
  /// - "UPPER_LIP" : Upper lip.
  /// - "LOWER_LIP" : Lower lip.
  /// - "MOUTH_LEFT" : Mouth left.
  /// - "MOUTH_RIGHT" : Mouth right.
  /// - "MOUTH_CENTER" : Mouth center.
  /// - "NOSE_BOTTOM_RIGHT" : Nose, bottom right.
  /// - "NOSE_BOTTOM_LEFT" : Nose, bottom left.
  /// - "NOSE_BOTTOM_CENTER" : Nose, bottom center.
  /// - "LEFT_EYE_TOP_BOUNDARY" : Left eye, top boundary.
  /// - "LEFT_EYE_RIGHT_CORNER" : Left eye, right corner.
  /// - "LEFT_EYE_BOTTOM_BOUNDARY" : Left eye, bottom boundary.
  /// - "LEFT_EYE_LEFT_CORNER" : Left eye, left corner.
  /// - "RIGHT_EYE_TOP_BOUNDARY" : Right eye, top boundary.
  /// - "RIGHT_EYE_RIGHT_CORNER" : Right eye, right corner.
  /// - "RIGHT_EYE_BOTTOM_BOUNDARY" : Right eye, bottom boundary.
  /// - "RIGHT_EYE_LEFT_CORNER" : Right eye, left corner.
  /// - "LEFT_EYEBROW_UPPER_MIDPOINT" : Left eyebrow, upper midpoint.
  /// - "RIGHT_EYEBROW_UPPER_MIDPOINT" : Right eyebrow, upper midpoint.
  /// - "LEFT_EAR_TRAGION" : Left ear tragion.
  /// - "RIGHT_EAR_TRAGION" : Right ear tragion.
  /// - "LEFT_EYE_PUPIL" : Left eye pupil.
  /// - "RIGHT_EYE_PUPIL" : Right eye pupil.
  /// - "FOREHEAD_GLABELLA" : Forehead glabella.
  /// - "CHIN_GNATHION" : Chin gnathion.
  /// - "CHIN_LEFT_GONION" : Chin left gonion.
  /// - "CHIN_RIGHT_GONION" : Chin right gonion.
  /// - "LEFT_CHEEK_CENTER" : Left cheek center.
  /// - "RIGHT_CHEEK_CENTER" : Right cheek center.
  core.String? type;

  Landmark({
    this.position,
    this.type,
  });

  Landmark.fromJson(core.Map json_)
      : this(
          position: json_.containsKey('position')
              ? Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (position != null) 'position': position!,
        if (type != null) 'type': type!,
      };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

/// Rectangle determined by min and max `LatLng` pairs.
class LatLongRect {
  /// Max lat/long pair.
  LatLng? maxLatLng;

  /// Min lat/long pair.
  LatLng? minLatLng;

  LatLongRect({
    this.maxLatLng,
    this.minLatLng,
  });

  LatLongRect.fromJson(core.Map json_)
      : this(
          maxLatLng: json_.containsKey('maxLatLng')
              ? LatLng.fromJson(
                  json_['maxLatLng'] as core.Map<core.String, core.dynamic>)
              : null,
          minLatLng: json_.containsKey('minLatLng')
              ? LatLng.fromJson(
                  json_['minLatLng'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxLatLng != null) 'maxLatLng': maxLatLng!,
        if (minLatLng != null) 'minLatLng': minLatLng!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// Response message for the `ListProductSets` method.
class ListProductSetsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// List of ProductSets.
  core.List<ProductSet>? productSets;

  ListProductSetsResponse({
    this.nextPageToken,
    this.productSets,
  });

  ListProductSetsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          productSets: json_.containsKey('productSets')
              ? (json_['productSets'] as core.List)
                  .map((value) => ProductSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (productSets != null) 'productSets': productSets!,
      };
}

/// Response message for the `ListProductsInProductSet` method.
class ListProductsInProductSetResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// The list of Products.
  core.List<Product>? products;

  ListProductsInProductSetResponse({
    this.nextPageToken,
    this.products,
  });

  ListProductsInProductSetResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          products: json_.containsKey('products')
              ? (json_['products'] as core.List)
                  .map((value) => Product.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (products != null) 'products': products!,
      };
}

/// Response message for the `ListProducts` method.
class ListProductsResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// List of products.
  core.List<Product>? products;

  ListProductsResponse({
    this.nextPageToken,
    this.products,
  });

  ListProductsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          products: json_.containsKey('products')
              ? (json_['products'] as core.List)
                  .map((value) => Product.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (products != null) 'products': products!,
      };
}

/// Response message for the `ListReferenceImages` method.
class ListReferenceImagesResponse {
  /// The next_page_token returned from a previous List request, if any.
  core.String? nextPageToken;

  /// The maximum number of items to return.
  ///
  /// Default 10, maximum 100.
  core.int? pageSize;

  /// The list of reference images.
  core.List<ReferenceImage>? referenceImages;

  ListReferenceImagesResponse({
    this.nextPageToken,
    this.pageSize,
    this.referenceImages,
  });

  ListReferenceImagesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          referenceImages: json_.containsKey('referenceImages')
              ? (json_['referenceImages'] as core.List)
                  .map((value) => ReferenceImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (referenceImages != null) 'referenceImages': referenceImages!,
      };
}

/// Set of detected objects with bounding boxes.
class LocalizedObjectAnnotation {
  /// Image region to which this object belongs.
  ///
  /// This must be populated.
  BoundingPoly? boundingPoly;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String? mid;

  /// Object name, expressed in its `language_code` language.
  core.String? name;

  /// Score of the result.
  ///
  /// Range \[0, 1\].
  core.double? score;

  LocalizedObjectAnnotation({
    this.boundingPoly,
    this.languageCode,
    this.mid,
    this.name,
    this.score,
  });

  LocalizedObjectAnnotation.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          mid: json_.containsKey('mid') ? json_['mid'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (mid != null) 'mid': mid!,
        if (name != null) 'name': name!,
        if (score != null) 'score': score!,
      };
}

/// Detected entity location information.
class LocationInfo {
  /// lat/long location coordinates.
  LatLng? latLng;

  LocationInfo({
    this.latLng,
  });

  LocationInfo.fromJson(core.Map json_)
      : this(
          latLng: json_.containsKey('latLng')
              ? LatLng.fromJson(
                  json_['latLng'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (latLng != null) 'latLng': latLng!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class NormalizedVertex {
  /// X coordinate.
  core.double? x;

  /// Y coordinate.
  core.double? y;

  NormalizedVertex({
    this.x,
    this.y,
  });

  NormalizedVertex.fromJson(core.Map json_)
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

/// Prediction for what the object in the bounding box is.
class ObjectAnnotation {
  /// The BCP-47 language code, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  /// Object ID that should align with EntityAnnotation mid.
  core.String? mid;

  /// Object name, expressed in its `language_code` language.
  core.String? name;

  /// Score of the result.
  ///
  /// Range \[0, 1\].
  core.double? score;

  ObjectAnnotation({
    this.languageCode,
    this.mid,
    this.name,
    this.score,
  });

  ObjectAnnotation.fromJson(core.Map json_)
      : this(
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          mid: json_.containsKey('mid') ? json_['mid'] as core.String : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (mid != null) 'mid': mid!,
        if (name != null) 'name': name!,
        if (score != null) 'score': score!,
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
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

/// The desired output location and metadata.
class OutputConfig {
  /// The max number of response protos to put into each output JSON file on
  /// Google Cloud Storage.
  ///
  /// The valid range is \[1, 100\]. If not specified, the default value is 20.
  /// For example, for one pdf file with 100 pages, 100 response protos will be
  /// generated. If `batch_size` = 20, then 5 json files each containing 20
  /// response protos will be written under the prefix `gcs_destination`.`uri`.
  /// Currently, batch_size only applies to GcsDestination, with potential
  /// future support for other output configurations.
  core.int? batchSize;

  /// The Google Cloud Storage location to write the output(s) to.
  GcsDestination? gcsDestination;

  OutputConfig({
    this.batchSize,
    this.gcsDestination,
  });

  OutputConfig.fromJson(core.Map json_)
      : this(
          batchSize: json_.containsKey('batchSize')
              ? json_['batchSize'] as core.int
              : null,
          gcsDestination: json_.containsKey('gcsDestination')
              ? GcsDestination.fromJson(json_['gcsDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchSize != null) 'batchSize': batchSize!,
        if (gcsDestination != null) 'gcsDestination': gcsDestination!,
      };
}

/// Detected page from OCR.
class Page {
  /// List of blocks of text, images etc on this page.
  core.List<Block>? blocks;

  /// Confidence of the OCR results on the page.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Page height.
  ///
  /// For PDFs the unit is points. For images (including TIFFs) the unit is
  /// pixels.
  core.int? height;

  /// Additional information detected on the page.
  TextProperty? property;

  /// Page width.
  ///
  /// For PDFs the unit is points. For images (including TIFFs) the unit is
  /// pixels.
  core.int? width;

  Page({
    this.blocks,
    this.confidence,
    this.height,
    this.property,
    this.width,
  });

  Page.fromJson(core.Map json_)
      : this(
          blocks: json_.containsKey('blocks')
              ? (json_['blocks'] as core.List)
                  .map((value) => Block.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          height:
              json_.containsKey('height') ? json_['height'] as core.int : null,
          property: json_.containsKey('property')
              ? TextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
          width: json_.containsKey('width') ? json_['width'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blocks != null) 'blocks': blocks!,
        if (confidence != null) 'confidence': confidence!,
        if (height != null) 'height': height!,
        if (property != null) 'property': property!,
        if (width != null) 'width': width!,
      };
}

/// Structural unit of text representing a number of words in certain order.
class Paragraph {
  /// The bounding box for the paragraph.
  ///
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation. For example: * when the text is
  /// horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180
  /// degrees around the top-left corner it becomes: 2----3 | | 1----0 and the
  /// vertex order will still be (0, 1, 2, 3).
  BoundingPoly? boundingBox;

  /// Confidence of the OCR results for the paragraph.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Additional information detected for the paragraph.
  TextProperty? property;

  /// List of all words in this paragraph.
  core.List<Word>? words;

  Paragraph({
    this.boundingBox,
    this.confidence,
    this.property,
    this.words,
  });

  Paragraph.fromJson(core.Map json_)
      : this(
          boundingBox: json_.containsKey('boundingBox')
              ? BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          property: json_.containsKey('property')
              ? TextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
          words: json_.containsKey('words')
              ? (json_['words'] as core.List)
                  .map((value) => Word.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingBox != null) 'boundingBox': boundingBox!,
        if (confidence != null) 'confidence': confidence!,
        if (property != null) 'property': property!,
        if (words != null) 'words': words!,
      };
}

/// A 3D position in the image, used primarily for Face detection landmarks.
///
/// A valid Position must have both x and y coordinates. The position
/// coordinates are in the same scale as the original image.
class Position {
  /// X coordinate.
  core.double? x;

  /// Y coordinate.
  core.double? y;

  /// Z coordinate (or depth).
  core.double? z;

  Position({
    this.x,
    this.y,
    this.z,
  });

  Position.fromJson(core.Map json_)
      : this(
          x: json_.containsKey('x')
              ? (json_['x'] as core.num).toDouble()
              : null,
          y: json_.containsKey('y')
              ? (json_['y'] as core.num).toDouble()
              : null,
          z: json_.containsKey('z')
              ? (json_['z'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
        if (z != null) 'z': z!,
      };
}

/// A Product contains ReferenceImages.
class Product {
  /// User-provided metadata to be stored with this product.
  ///
  /// Must be at most 4096 characters long.
  core.String? description;

  /// The user-provided name for this Product.
  ///
  /// Must not be empty. Must be at most 4096 characters long.
  core.String? displayName;

  /// The resource name of the product.
  ///
  /// Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`.
  /// This field is ignored when creating a product.
  core.String? name;

  /// The category for the product identified by the reference image.
  ///
  /// This should be one of "homegoods-v2", "apparel-v2", "toys-v2",
  /// "packagedgoods-v1" or "general-v1". The legacy categories "homegoods",
  /// "apparel", and "toys" are still supported, but these should not be used
  /// for new products.
  ///
  /// Immutable.
  core.String? productCategory;

  /// Key-value pairs that can be attached to a product.
  ///
  /// At query time, constraints can be specified based on the product_labels.
  /// Note that integer values can be provided as strings, e.g. "1199". Only
  /// strings with integer values can match a range-based restriction which is
  /// to be supported soon. Multiple values can be assigned to the same key. One
  /// product may have up to 500 product_labels. Notice that the total number of
  /// distinct product_labels over all products in one ProductSet cannot exceed
  /// 1M, otherwise the product search pipeline will refuse to work for that
  /// ProductSet.
  core.List<KeyValue>? productLabels;

  Product({
    this.description,
    this.displayName,
    this.name,
    this.productCategory,
    this.productLabels,
  });

  Product.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          productCategory: json_.containsKey('productCategory')
              ? json_['productCategory'] as core.String
              : null,
          productLabels: json_.containsKey('productLabels')
              ? (json_['productLabels'] as core.List)
                  .map((value) => KeyValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (productCategory != null) 'productCategory': productCategory!,
        if (productLabels != null) 'productLabels': productLabels!,
      };
}

/// Parameters for a product search request.
class ProductSearchParams {
  /// The bounding polygon around the area of interest in the image.
  ///
  /// If it is not specified, system discretion will be applied.
  BoundingPoly? boundingPoly;

  /// The filtering expression.
  ///
  /// This can be used to restrict search results based on Product labels. We
  /// currently support an AND of OR of key-value expressions, where each
  /// expression within an OR must have the same key. An '=' should be used to
  /// connect the key and value. For example, "(color = red OR color = blue) AND
  /// brand = Google" is acceptable, but "(color = red OR brand = Google)" is
  /// not acceptable. "color: red" is not acceptable because it uses a ':'
  /// instead of an '='.
  core.String? filter;

  /// The list of product categories to search in.
  ///
  /// Currently, we only consider the first category, and either "homegoods-v2",
  /// "apparel-v2", "toys-v2", "packagedgoods-v1", or "general-v1" should be
  /// specified. The legacy categories "homegoods", "apparel", and "toys" are
  /// still supported but will be deprecated. For new products, please use
  /// "homegoods-v2", "apparel-v2", or "toys-v2" for better product search
  /// accuracy. It is recommended to migrate existing products to these
  /// categories as well.
  core.List<core.String>? productCategories;

  /// The resource name of a ProductSet to be searched for similar images.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`.
  core.String? productSet;

  ProductSearchParams({
    this.boundingPoly,
    this.filter,
    this.productCategories,
    this.productSet,
  });

  ProductSearchParams.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          productCategories: json_.containsKey('productCategories')
              ? (json_['productCategories'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          productSet: json_.containsKey('productSet')
              ? json_['productSet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (filter != null) 'filter': filter!,
        if (productCategories != null) 'productCategories': productCategories!,
        if (productSet != null) 'productSet': productSet!,
      };
}

/// Results for a product search request.
class ProductSearchResults {
  /// Timestamp of the index which provided these results.
  ///
  /// Products added to the product set and products removed from the product
  /// set after this time are not reflected in the current results.
  core.String? indexTime;

  /// List of results grouped by products detected in the query image.
  ///
  /// Each entry corresponds to one bounding polygon in the query image, and
  /// contains the matching products specific to that region. There may be
  /// duplicate product matches in the union of all the per-product results.
  core.List<GroupedResult>? productGroupedResults;

  /// List of results, one for each product match.
  core.List<Result>? results;

  ProductSearchResults({
    this.indexTime,
    this.productGroupedResults,
    this.results,
  });

  ProductSearchResults.fromJson(core.Map json_)
      : this(
          indexTime: json_.containsKey('indexTime')
              ? json_['indexTime'] as core.String
              : null,
          productGroupedResults: json_.containsKey('productGroupedResults')
              ? (json_['productGroupedResults'] as core.List)
                  .map((value) => GroupedResult.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => Result.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (indexTime != null) 'indexTime': indexTime!,
        if (productGroupedResults != null)
          'productGroupedResults': productGroupedResults!,
        if (results != null) 'results': results!,
      };
}

/// A ProductSet contains Products.
///
/// A ProductSet can contain a maximum of 1 million reference images. If the
/// limit is exceeded, periodic indexing will fail.
class ProductSet {
  /// The user-provided name for this ProductSet.
  ///
  /// Must not be empty. Must be at most 4096 characters long.
  core.String? displayName;

  /// If there was an error with indexing the product set, the field is
  /// populated.
  ///
  /// This field is ignored when creating a ProductSet.
  ///
  /// Output only.
  Status? indexError;

  /// The time at which this ProductSet was last indexed.
  ///
  /// Query results will reflect all updates before this time. If this
  /// ProductSet has never been indexed, this timestamp is the default value
  /// "1970-01-01T00:00:00Z". This field is ignored when creating a ProductSet.
  ///
  /// Output only.
  core.String? indexTime;

  /// The resource name of the ProductSet.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/productSets/PRODUCT_SET_ID`. This
  /// field is ignored when creating a ProductSet.
  core.String? name;

  ProductSet({
    this.displayName,
    this.indexError,
    this.indexTime,
    this.name,
  });

  ProductSet.fromJson(core.Map json_)
      : this(
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          indexError: json_.containsKey('indexError')
              ? Status.fromJson(
                  json_['indexError'] as core.Map<core.String, core.dynamic>)
              : null,
          indexTime: json_.containsKey('indexTime')
              ? json_['indexTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (indexError != null) 'indexError': indexError!,
        if (indexTime != null) 'indexTime': indexTime!,
        if (name != null) 'name': name!,
      };
}

/// Config to control which ProductSet contains the Products to be deleted.
class ProductSetPurgeConfig {
  /// The ProductSet that contains the Products to delete.
  ///
  /// If a Product is a member of product_set_id in addition to other
  /// ProductSets, the Product will still be deleted.
  core.String? productSetId;

  ProductSetPurgeConfig({
    this.productSetId,
  });

  ProductSetPurgeConfig.fromJson(core.Map json_)
      : this(
          productSetId: json_.containsKey('productSetId')
              ? json_['productSetId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (productSetId != null) 'productSetId': productSetId!,
      };
}

/// A `Property` consists of a user-supplied name/value pair.
class Property {
  /// Name of the property.
  core.String? name;

  /// Value of numeric properties.
  core.String? uint64Value;

  /// Value of the property.
  core.String? value;

  Property({
    this.name,
    this.uint64Value,
    this.value,
  });

  Property.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          uint64Value: json_.containsKey('uint64Value')
              ? json_['uint64Value'] as core.String
              : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (uint64Value != null) 'uint64Value': uint64Value!,
        if (value != null) 'value': value!,
      };
}

/// Request message for the `PurgeProducts` method.
class PurgeProductsRequest {
  /// If delete_orphan_products is true, all Products that are not in any
  /// ProductSet will be deleted.
  core.bool? deleteOrphanProducts;

  /// The default value is false.
  ///
  /// Override this value to true to actually perform the purge.
  core.bool? force;

  /// Specify which ProductSet contains the Products to be deleted.
  ProductSetPurgeConfig? productSetPurgeConfig;

  PurgeProductsRequest({
    this.deleteOrphanProducts,
    this.force,
    this.productSetPurgeConfig,
  });

  PurgeProductsRequest.fromJson(core.Map json_)
      : this(
          deleteOrphanProducts: json_.containsKey('deleteOrphanProducts')
              ? json_['deleteOrphanProducts'] as core.bool
              : null,
          force:
              json_.containsKey('force') ? json_['force'] as core.bool : null,
          productSetPurgeConfig: json_.containsKey('productSetPurgeConfig')
              ? ProductSetPurgeConfig.fromJson(json_['productSetPurgeConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleteOrphanProducts != null)
          'deleteOrphanProducts': deleteOrphanProducts!,
        if (force != null) 'force': force!,
        if (productSetPurgeConfig != null)
          'productSetPurgeConfig': productSetPurgeConfig!,
      };
}

/// A `ReferenceImage` represents a product image and its associated metadata,
/// such as bounding boxes.
class ReferenceImage {
  /// Bounding polygons around the areas of interest in the reference image.
  ///
  /// If this field is empty, the system will try to detect regions of interest.
  /// At most 10 bounding polygons will be used. The provided shape is converted
  /// into a non-rotated rectangle. Once converted, the small edge of the
  /// rectangle must be greater than or equal to 300 pixels. The aspect ratio
  /// must be 1:4 or less (i.e. 1:3 is ok; 1:5 is not).
  ///
  /// Optional.
  core.List<BoundingPoly>? boundingPolys;

  /// The resource name of the reference image.
  ///
  /// Format is:
  /// `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID/referenceImages/IMAGE_ID`.
  /// This field is ignored when creating a reference image.
  core.String? name;

  /// The Google Cloud Storage URI of the reference image.
  ///
  /// The URI must start with `gs://`.
  ///
  /// Required.
  core.String? uri;

  ReferenceImage({
    this.boundingPolys,
    this.name,
    this.uri,
  });

  ReferenceImage.fromJson(core.Map json_)
      : this(
          boundingPolys: json_.containsKey('boundingPolys')
              ? (json_['boundingPolys'] as core.List)
                  .map((value) => BoundingPoly.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPolys != null) 'boundingPolys': boundingPolys!,
        if (name != null) 'name': name!,
        if (uri != null) 'uri': uri!,
      };
}

/// Request message for the `RemoveProductFromProductSet` method.
class RemoveProductFromProductSetRequest {
  /// The resource name for the Product to be removed from this ProductSet.
  ///
  /// Format is: `projects/PROJECT_ID/locations/LOC_ID/products/PRODUCT_ID`
  ///
  /// Required.
  core.String? product;

  RemoveProductFromProductSetRequest({
    this.product,
  });

  RemoveProductFromProductSetRequest.fromJson(core.Map json_)
      : this(
          product: json_.containsKey('product')
              ? json_['product'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (product != null) 'product': product!,
      };
}

/// Information about a product.
class Result {
  /// The resource name of the image from the product that is the closest match
  /// to the query.
  core.String? image;

  /// The Product.
  Product? product;

  /// A confidence level on the match, ranging from 0 (no confidence) to 1 (full
  /// confidence).
  core.double? score;

  Result({
    this.image,
    this.product,
    this.score,
  });

  Result.fromJson(core.Map json_)
      : this(
          image:
              json_.containsKey('image') ? json_['image'] as core.String : null,
          product: json_.containsKey('product')
              ? Product.fromJson(
                  json_['product'] as core.Map<core.String, core.dynamic>)
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (image != null) 'image': image!,
        if (product != null) 'product': product!,
        if (score != null) 'score': score!,
      };
}

/// Set of features pertaining to the image, computed by computer vision methods
/// over safe-search verticals (for example, adult, spoof, medical, violence).
class SafeSearchAnnotation {
  /// Represents the adult content likelihood for the image.
  ///
  /// Adult content may contain elements such as nudity, pornographic images or
  /// cartoons, or sexual activities.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? adult;

  /// Likelihood that this is a medical image.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? medical;

  /// Likelihood that the request image contains racy content.
  ///
  /// Racy content may include (but is not limited to) skimpy or sheer clothing,
  /// strategically covered nudity, lewd or provocative poses, or close-ups of
  /// sensitive body areas.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? racy;

  /// Spoof likelihood.
  ///
  /// The likelihood that an modification was made to the image's canonical
  /// version to make it appear funny or offensive.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? spoof;

  /// Likelihood that this image contains violent content.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown likelihood.
  /// - "VERY_UNLIKELY" : It is very unlikely.
  /// - "UNLIKELY" : It is unlikely.
  /// - "POSSIBLE" : It is possible.
  /// - "LIKELY" : It is likely.
  /// - "VERY_LIKELY" : It is very likely.
  core.String? violence;

  SafeSearchAnnotation({
    this.adult,
    this.medical,
    this.racy,
    this.spoof,
    this.violence,
  });

  SafeSearchAnnotation.fromJson(core.Map json_)
      : this(
          adult:
              json_.containsKey('adult') ? json_['adult'] as core.String : null,
          medical: json_.containsKey('medical')
              ? json_['medical'] as core.String
              : null,
          racy: json_.containsKey('racy') ? json_['racy'] as core.String : null,
          spoof:
              json_.containsKey('spoof') ? json_['spoof'] as core.String : null,
          violence: json_.containsKey('violence')
              ? json_['violence'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adult != null) 'adult': adult!,
        if (medical != null) 'medical': medical!,
        if (racy != null) 'racy': racy!,
        if (spoof != null) 'spoof': spoof!,
        if (violence != null) 'violence': violence!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// A single symbol representation.
class Symbol {
  /// The bounding box for the symbol.
  ///
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation. For example: * when the text is
  /// horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180
  /// degrees around the top-left corner it becomes: 2----3 | | 1----0 and the
  /// vertex order will still be (0, 1, 2, 3).
  BoundingPoly? boundingBox;

  /// Confidence of the OCR results for the symbol.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Additional information detected for the symbol.
  TextProperty? property;

  /// The actual UTF-8 representation of the symbol.
  core.String? text;

  Symbol({
    this.boundingBox,
    this.confidence,
    this.property,
    this.text,
  });

  Symbol.fromJson(core.Map json_)
      : this(
          boundingBox: json_.containsKey('boundingBox')
              ? BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          property: json_.containsKey('property')
              ? TextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingBox != null) 'boundingBox': boundingBox!,
        if (confidence != null) 'confidence': confidence!,
        if (property != null) 'property': property!,
        if (text != null) 'text': text!,
      };
}

/// TextAnnotation contains a structured representation of OCR extracted text.
///
/// The hierarchy of an OCR extracted text structure is like this:
/// TextAnnotation -\> Page -\> Block -\> Paragraph -\> Word -\> Symbol Each
/// structural component, starting from Page, may further have their own
/// properties. Properties describe detected languages, breaks etc.. Please
/// refer to the TextAnnotation.TextProperty message definition below for more
/// detail.
class TextAnnotation {
  /// List of pages detected by OCR.
  core.List<Page>? pages;

  /// UTF-8 text detected on the pages.
  core.String? text;

  TextAnnotation({
    this.pages,
    this.text,
  });

  TextAnnotation.fromJson(core.Map json_)
      : this(
          pages: json_.containsKey('pages')
              ? (json_['pages'] as core.List)
                  .map((value) => Page.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pages != null) 'pages': pages!,
        if (text != null) 'text': text!,
      };
}

/// Parameters for text detections.
///
/// This is used to control TEXT_DETECTION and DOCUMENT_TEXT_DETECTION features.
class TextDetectionParams {
  /// A list of advanced OCR options to fine-tune OCR behavior.
  core.List<core.String>? advancedOcrOptions;

  /// By default, Cloud Vision API only includes confidence score for
  /// DOCUMENT_TEXT_DETECTION result.
  ///
  /// Set the flag to true to include confidence score for TEXT_DETECTION as
  /// well.
  core.bool? enableTextDetectionConfidenceScore;

  TextDetectionParams({
    this.advancedOcrOptions,
    this.enableTextDetectionConfidenceScore,
  });

  TextDetectionParams.fromJson(core.Map json_)
      : this(
          advancedOcrOptions: json_.containsKey('advancedOcrOptions')
              ? (json_['advancedOcrOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enableTextDetectionConfidenceScore:
              json_.containsKey('enableTextDetectionConfidenceScore')
                  ? json_['enableTextDetectionConfidenceScore'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedOcrOptions != null)
          'advancedOcrOptions': advancedOcrOptions!,
        if (enableTextDetectionConfidenceScore != null)
          'enableTextDetectionConfidenceScore':
              enableTextDetectionConfidenceScore!,
      };
}

/// Additional information detected on the structural component.
class TextProperty {
  /// Detected start or end of a text segment.
  DetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<DetectedLanguage>? detectedLanguages;

  TextProperty({
    this.detectedBreak,
    this.detectedLanguages,
  });

  TextProperty.fromJson(core.Map json_)
      : this(
          detectedBreak: json_.containsKey('detectedBreak')
              ? DetectedBreak.fromJson(
                  json_['detectedBreak'] as core.Map<core.String, core.dynamic>)
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) => DetectedLanguage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedBreak != null) 'detectedBreak': detectedBreak!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
class Vertex {
  /// X coordinate.
  core.int? x;

  /// Y coordinate.
  core.int? y;

  Vertex({
    this.x,
    this.y,
  });

  Vertex.fromJson(core.Map json_)
      : this(
          x: json_.containsKey('x') ? json_['x'] as core.int : null,
          y: json_.containsKey('y') ? json_['y'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (x != null) 'x': x!,
        if (y != null) 'y': y!,
      };
}

/// Relevant information for the image from the Internet.
class WebDetection {
  /// The service's best guess as to the topic of the request image.
  ///
  /// Inferred from similar images on the open web.
  core.List<WebLabel>? bestGuessLabels;

  /// Fully matching images from the Internet.
  ///
  /// Can include resized copies of the query image.
  core.List<WebImage>? fullMatchingImages;

  /// Web pages containing the matching images from the Internet.
  core.List<WebPage>? pagesWithMatchingImages;

  /// Partial matching images from the Internet.
  ///
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<WebImage>? partialMatchingImages;

  /// The visually similar image results.
  core.List<WebImage>? visuallySimilarImages;

  /// Deduced entities from similar images on the Internet.
  core.List<WebEntity>? webEntities;

  WebDetection({
    this.bestGuessLabels,
    this.fullMatchingImages,
    this.pagesWithMatchingImages,
    this.partialMatchingImages,
    this.visuallySimilarImages,
    this.webEntities,
  });

  WebDetection.fromJson(core.Map json_)
      : this(
          bestGuessLabels: json_.containsKey('bestGuessLabels')
              ? (json_['bestGuessLabels'] as core.List)
                  .map((value) => WebLabel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          fullMatchingImages: json_.containsKey('fullMatchingImages')
              ? (json_['fullMatchingImages'] as core.List)
                  .map((value) => WebImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pagesWithMatchingImages: json_.containsKey('pagesWithMatchingImages')
              ? (json_['pagesWithMatchingImages'] as core.List)
                  .map((value) => WebPage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          partialMatchingImages: json_.containsKey('partialMatchingImages')
              ? (json_['partialMatchingImages'] as core.List)
                  .map((value) => WebImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          visuallySimilarImages: json_.containsKey('visuallySimilarImages')
              ? (json_['visuallySimilarImages'] as core.List)
                  .map((value) => WebImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          webEntities: json_.containsKey('webEntities')
              ? (json_['webEntities'] as core.List)
                  .map((value) => WebEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bestGuessLabels != null) 'bestGuessLabels': bestGuessLabels!,
        if (fullMatchingImages != null)
          'fullMatchingImages': fullMatchingImages!,
        if (pagesWithMatchingImages != null)
          'pagesWithMatchingImages': pagesWithMatchingImages!,
        if (partialMatchingImages != null)
          'partialMatchingImages': partialMatchingImages!,
        if (visuallySimilarImages != null)
          'visuallySimilarImages': visuallySimilarImages!,
        if (webEntities != null) 'webEntities': webEntities!,
      };
}

/// Parameters for web detection request.
class WebDetectionParams {
  /// Whether to include results derived from the geo information in the image.
  core.bool? includeGeoResults;

  WebDetectionParams({
    this.includeGeoResults,
  });

  WebDetectionParams.fromJson(core.Map json_)
      : this(
          includeGeoResults: json_.containsKey('includeGeoResults')
              ? json_['includeGeoResults'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeGeoResults != null) 'includeGeoResults': includeGeoResults!,
      };
}

/// Entity deduced from similar images on the Internet.
class WebEntity {
  /// Canonical description of the entity, in English.
  core.String? description;

  /// Opaque entity ID.
  core.String? entityId;

  /// Overall relevancy score for the entity.
  ///
  /// Not normalized and not comparable across different image queries.
  core.double? score;

  WebEntity({
    this.description,
    this.entityId,
    this.score,
  });

  WebEntity.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          entityId: json_.containsKey('entityId')
              ? json_['entityId'] as core.String
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (entityId != null) 'entityId': entityId!,
        if (score != null) 'score': score!,
      };
}

/// Metadata for online images.
class WebImage {
  /// (Deprecated) Overall relevancy score for the image.
  core.double? score;

  /// The result image URL.
  core.String? url;

  WebImage({
    this.score,
    this.url,
  });

  WebImage.fromJson(core.Map json_)
      : this(
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (score != null) 'score': score!,
        if (url != null) 'url': url!,
      };
}

/// Label to provide extra metadata for the web detection.
class WebLabel {
  /// Label for extra metadata.
  core.String? label;

  /// The BCP-47 language code for `label`, such as "en-US" or "sr-Latn".
  ///
  /// For more information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String? languageCode;

  WebLabel({
    this.label,
    this.languageCode,
  });

  WebLabel.fromJson(core.Map json_)
      : this(
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (languageCode != null) 'languageCode': languageCode!,
      };
}

/// Metadata for web pages.
class WebPage {
  /// Fully matching images on the page.
  ///
  /// Can include resized copies of the query image.
  core.List<WebImage>? fullMatchingImages;

  /// Title for the web page, may contain HTML markups.
  core.String? pageTitle;

  /// Partial matching images on the page.
  ///
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<WebImage>? partialMatchingImages;

  /// (Deprecated) Overall relevancy score for the web page.
  core.double? score;

  /// The result web page URL.
  core.String? url;

  WebPage({
    this.fullMatchingImages,
    this.pageTitle,
    this.partialMatchingImages,
    this.score,
    this.url,
  });

  WebPage.fromJson(core.Map json_)
      : this(
          fullMatchingImages: json_.containsKey('fullMatchingImages')
              ? (json_['fullMatchingImages'] as core.List)
                  .map((value) => WebImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageTitle: json_.containsKey('pageTitle')
              ? json_['pageTitle'] as core.String
              : null,
          partialMatchingImages: json_.containsKey('partialMatchingImages')
              ? (json_['partialMatchingImages'] as core.List)
                  .map((value) => WebImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          score: json_.containsKey('score')
              ? (json_['score'] as core.num).toDouble()
              : null,
          url: json_.containsKey('url') ? json_['url'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fullMatchingImages != null)
          'fullMatchingImages': fullMatchingImages!,
        if (pageTitle != null) 'pageTitle': pageTitle!,
        if (partialMatchingImages != null)
          'partialMatchingImages': partialMatchingImages!,
        if (score != null) 'score': score!,
        if (url != null) 'url': url!,
      };
}

/// A word representation.
class Word {
  /// The bounding box for the word.
  ///
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation. For example: * when the text is
  /// horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180
  /// degrees around the top-left corner it becomes: 2----3 | | 1----0 and the
  /// vertex order will still be (0, 1, 2, 3).
  BoundingPoly? boundingBox;

  /// Confidence of the OCR results for the word.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Additional information detected for the word.
  TextProperty? property;

  /// List of symbols in the word.
  ///
  /// The order of the symbols follows the natural reading order.
  core.List<Symbol>? symbols;

  Word({
    this.boundingBox,
    this.confidence,
    this.property,
    this.symbols,
  });

  Word.fromJson(core.Map json_)
      : this(
          boundingBox: json_.containsKey('boundingBox')
              ? BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          property: json_.containsKey('property')
              ? TextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>)
              : null,
          symbols: json_.containsKey('symbols')
              ? (json_['symbols'] as core.List)
                  .map((value) => Symbol.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingBox != null) 'boundingBox': boundingBox!,
        if (confidence != null) 'confidence': confidence!,
        if (property != null) 'property': property!,
        if (symbols != null) 'symbols': symbols!,
      };
}
