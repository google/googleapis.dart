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

/// Cloud Vision API - v1p2beta1
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
/// - [ProjectsResource]
///   - [ProjectsFilesResource]
///   - [ProjectsImagesResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFilesResource]
///     - [ProjectsLocationsImagesResource]
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
  ProjectsResource get projects => ProjectsResource(_requester);

  VisionApi(
    http.Client client, {
    core.String rootUrl = 'https://vision.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
  /// Completes with a [GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse> annotate(
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1p2beta1/files:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1p2beta1/files:asyncBatchAnnotate';

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
  /// Completes with a [GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse> annotate(
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1p2beta1/images:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1p2beta1/images:asyncBatchAnnotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsFilesResource get files => ProjectsFilesResource(_requester);
  ProjectsImagesResource get images => ProjectsImagesResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

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
  /// Completes with a [GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse> annotate(
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p2beta1/' + core.Uri.encodeFull('$parent') + '/files:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/files:asyncBatchAnnotate';

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
  /// Completes with a [GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse> annotate(
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p2beta1/' + core.Uri.encodeFull('$parent') + '/images:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/images:asyncBatchAnnotate';

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
  /// Completes with a [GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse> annotate(
    GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p2beta1/' + core.Uri.encodeFull('$parent') + '/files:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/files:asyncBatchAnnotate';

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
  /// Completes with a [GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse> annotate(
    GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p2beta1/' + core.Uri.encodeFull('$parent') + '/images:annotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1p2beta1/' +
        core.Uri.encodeFull('$parent') +
        '/images:asyncBatchAnnotate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

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
typedef Color = $Color;

/// A request to annotate one single file, e.g. a PDF, TIFF or GIF file.
class GoogleCloudVisionV1p2beta1AnnotateFileRequest {
  /// Requested features.
  ///
  /// Required.
  core.List<GoogleCloudVisionV1p2beta1Feature>? features;

  /// Additional context that may accompany the image(s) in the file.
  GoogleCloudVisionV1p2beta1ImageContext? imageContext;

  /// Information about the input file.
  ///
  /// Required.
  GoogleCloudVisionV1p2beta1InputConfig? inputConfig;

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

  GoogleCloudVisionV1p2beta1AnnotateFileRequest({
    this.features,
    this.imageContext,
    this.inputConfig,
    this.pages,
  });

  GoogleCloudVisionV1p2beta1AnnotateFileRequest.fromJson(core.Map json_)
    : this(
        features:
            (json_['features'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Feature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        imageContext:
            json_.containsKey('imageContext')
                ? GoogleCloudVisionV1p2beta1ImageContext.fromJson(
                  json_['imageContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputConfig:
            json_.containsKey('inputConfig')
                ? GoogleCloudVisionV1p2beta1InputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pages:
            (json_['pages'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
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
class GoogleCloudVisionV1p2beta1AnnotateFileResponse {
  /// If set, represents the error message for the failed request.
  ///
  /// The `responses` field will not be set in this case.
  Status? error;

  /// Information about the file for which this response is generated.
  GoogleCloudVisionV1p2beta1InputConfig? inputConfig;

  /// Individual responses to images found within the file.
  ///
  /// This field will be empty if the `error` field is set.
  core.List<GoogleCloudVisionV1p2beta1AnnotateImageResponse>? responses;

  /// This field gives the total number of pages in the file.
  core.int? totalPages;

  GoogleCloudVisionV1p2beta1AnnotateFileResponse({
    this.error,
    this.inputConfig,
    this.responses,
    this.totalPages,
  });

  GoogleCloudVisionV1p2beta1AnnotateFileResponse.fromJson(core.Map json_)
    : this(
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputConfig:
            json_.containsKey('inputConfig')
                ? GoogleCloudVisionV1p2beta1InputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        responses:
            (json_['responses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1AnnotateImageResponse.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        totalPages: json_['totalPages'] as core.int?,
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
class GoogleCloudVisionV1p2beta1AnnotateImageRequest {
  /// Requested features.
  core.List<GoogleCloudVisionV1p2beta1Feature>? features;

  /// The image to be processed.
  GoogleCloudVisionV1p2beta1Image? image;

  /// Additional context that may accompany the image.
  GoogleCloudVisionV1p2beta1ImageContext? imageContext;

  GoogleCloudVisionV1p2beta1AnnotateImageRequest({
    this.features,
    this.image,
    this.imageContext,
  });

  GoogleCloudVisionV1p2beta1AnnotateImageRequest.fromJson(core.Map json_)
    : this(
        features:
            (json_['features'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Feature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        image:
            json_.containsKey('image')
                ? GoogleCloudVisionV1p2beta1Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        imageContext:
            json_.containsKey('imageContext')
                ? GoogleCloudVisionV1p2beta1ImageContext.fromJson(
                  json_['imageContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (features != null) 'features': features!,
    if (image != null) 'image': image!,
    if (imageContext != null) 'imageContext': imageContext!,
  };
}

/// Response to an image annotation request.
class GoogleCloudVisionV1p2beta1AnnotateImageResponse {
  /// If present, contextual information is needed to understand where this
  /// image comes from.
  GoogleCloudVisionV1p2beta1ImageAnnotationContext? context;

  /// If present, crop hints have completed successfully.
  GoogleCloudVisionV1p2beta1CropHintsAnnotation? cropHintsAnnotation;

  /// If set, represents the error message for the operation.
  ///
  /// Note that filled-in image annotations are guaranteed to be correct, even
  /// when `error` is set.
  Status? error;

  /// If present, face detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1FaceAnnotation>? faceAnnotations;

  /// If present, text (OCR) detection or document (OCR) text detection has
  /// completed successfully.
  ///
  /// This annotation provides the structural hierarchy for the OCR detected
  /// text.
  GoogleCloudVisionV1p2beta1TextAnnotation? fullTextAnnotation;

  /// If present, image properties were extracted successfully.
  GoogleCloudVisionV1p2beta1ImageProperties? imagePropertiesAnnotation;

  /// If present, label detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1EntityAnnotation>? labelAnnotations;

  /// If present, landmark detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1EntityAnnotation>? landmarkAnnotations;

  /// If present, localized object detection has completed successfully.
  ///
  /// This will be sorted descending by confidence score.
  core.List<GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation>?
  localizedObjectAnnotations;

  /// If present, logo detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1EntityAnnotation>? logoAnnotations;

  /// If present, product search has completed successfully.
  GoogleCloudVisionV1p2beta1ProductSearchResults? productSearchResults;

  /// If present, safe-search annotation has completed successfully.
  GoogleCloudVisionV1p2beta1SafeSearchAnnotation? safeSearchAnnotation;

  /// If present, text (OCR) detection has completed successfully.
  core.List<GoogleCloudVisionV1p2beta1EntityAnnotation>? textAnnotations;

  /// If present, web detection has completed successfully.
  GoogleCloudVisionV1p2beta1WebDetection? webDetection;

  GoogleCloudVisionV1p2beta1AnnotateImageResponse({
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

  GoogleCloudVisionV1p2beta1AnnotateImageResponse.fromJson(core.Map json_)
    : this(
        context:
            json_.containsKey('context')
                ? GoogleCloudVisionV1p2beta1ImageAnnotationContext.fromJson(
                  json_['context'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        cropHintsAnnotation:
            json_.containsKey('cropHintsAnnotation')
                ? GoogleCloudVisionV1p2beta1CropHintsAnnotation.fromJson(
                  json_['cropHintsAnnotation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        faceAnnotations:
            (json_['faceAnnotations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1FaceAnnotation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        fullTextAnnotation:
            json_.containsKey('fullTextAnnotation')
                ? GoogleCloudVisionV1p2beta1TextAnnotation.fromJson(
                  json_['fullTextAnnotation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        imagePropertiesAnnotation:
            json_.containsKey('imagePropertiesAnnotation')
                ? GoogleCloudVisionV1p2beta1ImageProperties.fromJson(
                  json_['imagePropertiesAnnotation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labelAnnotations:
            (json_['labelAnnotations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        landmarkAnnotations:
            (json_['landmarkAnnotations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        localizedObjectAnnotations:
            (json_['localizedObjectAnnotations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        logoAnnotations:
            (json_['logoAnnotations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        productSearchResults:
            json_.containsKey('productSearchResults')
                ? GoogleCloudVisionV1p2beta1ProductSearchResults.fromJson(
                  json_['productSearchResults']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        safeSearchAnnotation:
            json_.containsKey('safeSearchAnnotation')
                ? GoogleCloudVisionV1p2beta1SafeSearchAnnotation.fromJson(
                  json_['safeSearchAnnotation']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textAnnotations:
            (json_['textAnnotations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        webDetection:
            json_.containsKey('webDetection')
                ? GoogleCloudVisionV1p2beta1WebDetection.fromJson(
                  json_['webDetection'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (context != null) 'context': context!,
    if (cropHintsAnnotation != null)
      'cropHintsAnnotation': cropHintsAnnotation!,
    if (error != null) 'error': error!,
    if (faceAnnotations != null) 'faceAnnotations': faceAnnotations!,
    if (fullTextAnnotation != null) 'fullTextAnnotation': fullTextAnnotation!,
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
class GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest {
  /// Requested features.
  ///
  /// Required.
  core.List<GoogleCloudVisionV1p2beta1Feature>? features;

  /// Additional context that may accompany the image(s) in the file.
  GoogleCloudVisionV1p2beta1ImageContext? imageContext;

  /// Information about the input file.
  ///
  /// Required.
  GoogleCloudVisionV1p2beta1InputConfig? inputConfig;

  /// The desired output location and metadata (e.g. format).
  ///
  /// Required.
  GoogleCloudVisionV1p2beta1OutputConfig? outputConfig;

  GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest({
    this.features,
    this.imageContext,
    this.inputConfig,
    this.outputConfig,
  });

  GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest.fromJson(core.Map json_)
    : this(
        features:
            (json_['features'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Feature.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        imageContext:
            json_.containsKey('imageContext')
                ? GoogleCloudVisionV1p2beta1ImageContext.fromJson(
                  json_['imageContext'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputConfig:
            json_.containsKey('inputConfig')
                ? GoogleCloudVisionV1p2beta1InputConfig.fromJson(
                  json_['inputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputConfig:
            json_.containsKey('outputConfig')
                ? GoogleCloudVisionV1p2beta1OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest {
  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints), can only contain lowercase letters, numeric characters,
  /// underscores and dashes. International characters are allowed. Label values
  /// are optional. Label keys must start with a letter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

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
  core.List<GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest>? requests;

  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest({
    this.labels,
    this.parent,
    this.requests,
  });

  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest.fromJson(
    core.Map json_,
  ) : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        parent: json_['parent'] as core.String?,
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1AsyncAnnotateFileRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (parent != null) 'parent': parent!,
    if (requests != null) 'requests': requests!,
  };
}

/// Request for async image annotation for a list of images.
class GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest {
  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints), can only contain lowercase letters, numeric characters,
  /// underscores and dashes. International characters are allowed. Label values
  /// are optional. Label keys must start with a letter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The desired output location and metadata (e.g. format).
  ///
  /// Required.
  GoogleCloudVisionV1p2beta1OutputConfig? outputConfig;

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
  core.List<GoogleCloudVisionV1p2beta1AnnotateImageRequest>? requests;

  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest({
    this.labels,
    this.outputConfig,
    this.parent,
    this.requests,
  });

  GoogleCloudVisionV1p2beta1AsyncBatchAnnotateImagesRequest.fromJson(
    core.Map json_,
  ) : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        outputConfig:
            json_.containsKey('outputConfig')
                ? GoogleCloudVisionV1p2beta1OutputConfig.fromJson(
                  json_['outputConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        parent: json_['parent'] as core.String?,
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1AnnotateImageRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (outputConfig != null) 'outputConfig': outputConfig!,
    if (parent != null) 'parent': parent!,
    if (requests != null) 'requests': requests!,
  };
}

/// A list of requests to annotate files using the BatchAnnotateFiles API.
class GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest {
  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints), can only contain lowercase letters, numeric characters,
  /// underscores and dashes. International characters are allowed. Label values
  /// are optional. Label keys must start with a letter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

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
  core.List<GoogleCloudVisionV1p2beta1AnnotateFileRequest>? requests;

  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest({
    this.labels,
    this.parent,
    this.requests,
  });

  GoogleCloudVisionV1p2beta1BatchAnnotateFilesRequest.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        parent: json_['parent'] as core.String?,
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1AnnotateFileRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (parent != null) 'parent': parent!,
    if (requests != null) 'requests': requests!,
  };
}

/// A list of file annotation responses.
class GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse {
  /// The list of file annotation responses, each response corresponding to each
  /// AnnotateFileRequest in BatchAnnotateFilesRequest.
  core.List<GoogleCloudVisionV1p2beta1AnnotateFileResponse>? responses;

  GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse({this.responses});

  GoogleCloudVisionV1p2beta1BatchAnnotateFilesResponse.fromJson(core.Map json_)
    : this(
        responses:
            (json_['responses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1AnnotateFileResponse.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (responses != null) 'responses': responses!,
  };
}

/// Multiple image annotation requests are batched into a single service call.
class GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest {
  /// The labels with user-defined metadata for the request.
  ///
  /// Label keys and values can be no longer than 63 characters (Unicode
  /// codepoints), can only contain lowercase letters, numeric characters,
  /// underscores and dashes. International characters are allowed. Label values
  /// are optional. Label keys must start with a letter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

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
  core.List<GoogleCloudVisionV1p2beta1AnnotateImageRequest>? requests;

  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest({
    this.labels,
    this.parent,
    this.requests,
  });

  GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest.fromJson(core.Map json_)
    : this(
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        parent: json_['parent'] as core.String?,
        requests:
            (json_['requests'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1AnnotateImageRequest.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (labels != null) 'labels': labels!,
    if (parent != null) 'parent': parent!,
    if (requests != null) 'requests': requests!,
  };
}

/// Response to a batch image annotation request.
class GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse {
  /// Individual responses to image annotation requests within the batch.
  core.List<GoogleCloudVisionV1p2beta1AnnotateImageResponse>? responses;

  GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse({this.responses});

  GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse.fromJson(core.Map json_)
    : this(
        responses:
            (json_['responses'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1AnnotateImageResponse.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (responses != null) 'responses': responses!,
  };
}

/// Logical element on the page.
class GoogleCloudVisionV1p2beta1Block {
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
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingBox;

  /// Confidence of the OCR results on the block.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// List of paragraphs in this block (if this blocks is of type text).
  core.List<GoogleCloudVisionV1p2beta1Paragraph>? paragraphs;

  /// Additional information detected for the block.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty? property;

  GoogleCloudVisionV1p2beta1Block({
    this.blockType,
    this.boundingBox,
    this.confidence,
    this.paragraphs,
    this.property,
  });

  GoogleCloudVisionV1p2beta1Block.fromJson(core.Map json_)
    : this(
        blockType: json_['blockType'] as core.String?,
        boundingBox:
            json_.containsKey('boundingBox')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        paragraphs:
            (json_['paragraphs'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Paragraph.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        property:
            json_.containsKey('property')
                ? GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
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
class GoogleCloudVisionV1p2beta1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudVisionV1p2beta1NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudVisionV1p2beta1Vertex>? vertices;

  GoogleCloudVisionV1p2beta1BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(core.Map json_)
    : this(
        normalizedVertices:
            (json_['normalizedVertices'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1NormalizedVertex.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        vertices:
            (json_['vertices'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Vertex.fromJson(
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

/// Color information consists of RGB channels, score, and the fraction of the
/// image that the color occupies in the image.
class GoogleCloudVisionV1p2beta1ColorInfo {
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

  GoogleCloudVisionV1p2beta1ColorInfo({
    this.color,
    this.pixelFraction,
    this.score,
  });

  GoogleCloudVisionV1p2beta1ColorInfo.fromJson(core.Map json_)
    : this(
        color:
            json_.containsKey('color')
                ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pixelFraction: (json_['pixelFraction'] as core.num?)?.toDouble(),
        score: (json_['score'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (color != null) 'color': color!,
    if (pixelFraction != null) 'pixelFraction': pixelFraction!,
    if (score != null) 'score': score!,
  };
}

/// Single crop hint that is used to generate a new crop when serving an image.
class GoogleCloudVisionV1p2beta1CropHint {
  /// The bounding polygon for the crop region.
  ///
  /// The coordinates of the bounding box are in the original image's scale.
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingPoly;

  /// Confidence of this being a salient region.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Fraction of importance of this salient region with respect to the original
  /// image.
  core.double? importanceFraction;

  GoogleCloudVisionV1p2beta1CropHint({
    this.boundingPoly,
    this.confidence,
    this.importanceFraction,
  });

  GoogleCloudVisionV1p2beta1CropHint.fromJson(core.Map json_)
    : this(
        boundingPoly:
            json_.containsKey('boundingPoly')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        importanceFraction:
            (json_['importanceFraction'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boundingPoly != null) 'boundingPoly': boundingPoly!,
    if (confidence != null) 'confidence': confidence!,
    if (importanceFraction != null) 'importanceFraction': importanceFraction!,
  };
}

/// Set of crop hints that are used to generate new crops when serving images.
class GoogleCloudVisionV1p2beta1CropHintsAnnotation {
  /// Crop hint results.
  core.List<GoogleCloudVisionV1p2beta1CropHint>? cropHints;

  GoogleCloudVisionV1p2beta1CropHintsAnnotation({this.cropHints});

  GoogleCloudVisionV1p2beta1CropHintsAnnotation.fromJson(core.Map json_)
    : this(
        cropHints:
            (json_['cropHints'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1CropHint.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (cropHints != null) 'cropHints': cropHints!,
  };
}

/// Parameters for crop hints annotation request.
typedef GoogleCloudVisionV1p2beta1CropHintsParams = $CropHintsParams;

/// Set of dominant colors and their corresponding scores.
class GoogleCloudVisionV1p2beta1DominantColorsAnnotation {
  /// RGB color values with their score and pixel fraction.
  core.List<GoogleCloudVisionV1p2beta1ColorInfo>? colors;

  GoogleCloudVisionV1p2beta1DominantColorsAnnotation({this.colors});

  GoogleCloudVisionV1p2beta1DominantColorsAnnotation.fromJson(core.Map json_)
    : this(
        colors:
            (json_['colors'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1ColorInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (colors != null) 'colors': colors!,
  };
}

/// Set of detected entity features.
class GoogleCloudVisionV1p2beta1EntityAnnotation {
  /// Image region to which this entity belongs.
  ///
  /// Not produced for `LABEL_DETECTION` features.
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingPoly;

  /// **Deprecated.
  ///
  /// Use `score` instead.** The accuracy of the entity detection in an image.
  /// For example, for an image in which the "Eiffel Tower" entity is detected,
  /// this field represents the confidence that there is a tower in the query
  /// image. Range \[0, 1\].
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
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
  core.List<GoogleCloudVisionV1p2beta1LocationInfo>? locations;

  /// Opaque entity ID.
  ///
  /// Some IDs may be available in
  /// [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).
  core.String? mid;

  /// Some entities may have optional user-supplied `Property` (name/value)
  /// fields, such a score or string that qualifies the entity.
  core.List<GoogleCloudVisionV1p2beta1Property>? properties;

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

  GoogleCloudVisionV1p2beta1EntityAnnotation({
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

  GoogleCloudVisionV1p2beta1EntityAnnotation.fromJson(core.Map json_)
    : this(
        boundingPoly:
            json_.containsKey('boundingPoly')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        description: json_['description'] as core.String?,
        locale: json_['locale'] as core.String?,
        locations:
            (json_['locations'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1LocationInfo.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        mid: json_['mid'] as core.String?,
        properties:
            (json_['properties'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Property.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        score: (json_['score'] as core.num?)?.toDouble(),
        topicality: (json_['topicality'] as core.num?)?.toDouble(),
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
class GoogleCloudVisionV1p2beta1FaceAnnotation {
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
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingPoly;

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
  GoogleCloudVisionV1p2beta1BoundingPoly? fdBoundingPoly;

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
  core.List<GoogleCloudVisionV1p2beta1FaceAnnotationLandmark>? landmarks;

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

  GoogleCloudVisionV1p2beta1FaceAnnotation({
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

  GoogleCloudVisionV1p2beta1FaceAnnotation.fromJson(core.Map json_)
    : this(
        angerLikelihood: json_['angerLikelihood'] as core.String?,
        blurredLikelihood: json_['blurredLikelihood'] as core.String?,
        boundingPoly:
            json_.containsKey('boundingPoly')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        detectionConfidence:
            (json_['detectionConfidence'] as core.num?)?.toDouble(),
        fdBoundingPoly:
            json_.containsKey('fdBoundingPoly')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['fdBoundingPoly']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        headwearLikelihood: json_['headwearLikelihood'] as core.String?,
        joyLikelihood: json_['joyLikelihood'] as core.String?,
        landmarkingConfidence:
            (json_['landmarkingConfidence'] as core.num?)?.toDouble(),
        landmarks:
            (json_['landmarks'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1FaceAnnotationLandmark.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        panAngle: (json_['panAngle'] as core.num?)?.toDouble(),
        rollAngle: (json_['rollAngle'] as core.num?)?.toDouble(),
        sorrowLikelihood: json_['sorrowLikelihood'] as core.String?,
        surpriseLikelihood: json_['surpriseLikelihood'] as core.String?,
        tiltAngle: (json_['tiltAngle'] as core.num?)?.toDouble(),
        underExposedLikelihood: json_['underExposedLikelihood'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (angerLikelihood != null) 'angerLikelihood': angerLikelihood!,
    if (blurredLikelihood != null) 'blurredLikelihood': blurredLikelihood!,
    if (boundingPoly != null) 'boundingPoly': boundingPoly!,
    if (detectionConfidence != null)
      'detectionConfidence': detectionConfidence!,
    if (fdBoundingPoly != null) 'fdBoundingPoly': fdBoundingPoly!,
    if (headwearLikelihood != null) 'headwearLikelihood': headwearLikelihood!,
    if (joyLikelihood != null) 'joyLikelihood': joyLikelihood!,
    if (landmarkingConfidence != null)
      'landmarkingConfidence': landmarkingConfidence!,
    if (landmarks != null) 'landmarks': landmarks!,
    if (panAngle != null) 'panAngle': panAngle!,
    if (rollAngle != null) 'rollAngle': rollAngle!,
    if (sorrowLikelihood != null) 'sorrowLikelihood': sorrowLikelihood!,
    if (surpriseLikelihood != null) 'surpriseLikelihood': surpriseLikelihood!,
    if (tiltAngle != null) 'tiltAngle': tiltAngle!,
    if (underExposedLikelihood != null)
      'underExposedLikelihood': underExposedLikelihood!,
  };
}

/// A face-specific landmark (for example, a face feature).
///
/// Landmark positions may fall outside the bounds of the image if the face is
/// near one or more edges of the image. Therefore it is NOT guaranteed that `0
/// <= x < width` or `0 <= y < height`.
class GoogleCloudVisionV1p2beta1FaceAnnotationLandmark {
  /// Face landmark position.
  GoogleCloudVisionV1p2beta1Position? position;

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

  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark({this.position, this.type});

  GoogleCloudVisionV1p2beta1FaceAnnotationLandmark.fromJson(core.Map json_)
    : this(
        position:
            json_.containsKey('position')
                ? GoogleCloudVisionV1p2beta1Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (position != null) 'position': position!,
    if (type != null) 'type': type!,
  };
}

/// The type of Google Cloud Vision API detection to perform, and the maximum
/// number of results to return for that type.
///
/// Multiple `Feature` objects can be specified in the `features` list.
typedef GoogleCloudVisionV1p2beta1Feature = $Feature00;

/// The Google Cloud Storage location where the output will be written to.
typedef GoogleCloudVisionV1p2beta1GcsDestination = $GcsDestination01;

/// The Google Cloud Storage location where the input will be read from.
typedef GoogleCloudVisionV1p2beta1GcsSource = $GcsSource03;

/// Client image to perform Google Cloud Vision API tasks over.
class GoogleCloudVisionV1p2beta1Image {
  /// Image content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64. Currently, this
  /// field only works for BatchAnnotateImages requests. It does not work for
  /// AsyncBatchAnnotateImages requests.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Google Cloud Storage image location, or publicly-accessible image URL.
  ///
  /// If both `content` and `source` are provided for an image, `content` takes
  /// precedence and is used to perform the image annotation request.
  GoogleCloudVisionV1p2beta1ImageSource? source;

  GoogleCloudVisionV1p2beta1Image({this.content, this.source});

  GoogleCloudVisionV1p2beta1Image.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        source:
            json_.containsKey('source')
                ? GoogleCloudVisionV1p2beta1ImageSource.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (source != null) 'source': source!,
  };
}

/// If an image was produced from a file (e.g. a PDF), this message gives
/// information about the source of that image.
typedef GoogleCloudVisionV1p2beta1ImageAnnotationContext =
    $ImageAnnotationContext;

/// Image context and/or feature-specific parameters.
class GoogleCloudVisionV1p2beta1ImageContext {
  /// Parameters for crop hints annotation request.
  GoogleCloudVisionV1p2beta1CropHintsParams? cropHintsParams;

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
  GoogleCloudVisionV1p2beta1LatLongRect? latLongRect;

  /// Parameters for product search.
  GoogleCloudVisionV1p2beta1ProductSearchParams? productSearchParams;

  /// Parameters for text detection and document text detection.
  GoogleCloudVisionV1p2beta1TextDetectionParams? textDetectionParams;

  /// Parameters for web detection.
  GoogleCloudVisionV1p2beta1WebDetectionParams? webDetectionParams;

  GoogleCloudVisionV1p2beta1ImageContext({
    this.cropHintsParams,
    this.languageHints,
    this.latLongRect,
    this.productSearchParams,
    this.textDetectionParams,
    this.webDetectionParams,
  });

  GoogleCloudVisionV1p2beta1ImageContext.fromJson(core.Map json_)
    : this(
        cropHintsParams:
            json_.containsKey('cropHintsParams')
                ? GoogleCloudVisionV1p2beta1CropHintsParams.fromJson(
                  json_['cropHintsParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageHints:
            (json_['languageHints'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        latLongRect:
            json_.containsKey('latLongRect')
                ? GoogleCloudVisionV1p2beta1LatLongRect.fromJson(
                  json_['latLongRect'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        productSearchParams:
            json_.containsKey('productSearchParams')
                ? GoogleCloudVisionV1p2beta1ProductSearchParams.fromJson(
                  json_['productSearchParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textDetectionParams:
            json_.containsKey('textDetectionParams')
                ? GoogleCloudVisionV1p2beta1TextDetectionParams.fromJson(
                  json_['textDetectionParams']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        webDetectionParams:
            json_.containsKey('webDetectionParams')
                ? GoogleCloudVisionV1p2beta1WebDetectionParams.fromJson(
                  json_['webDetectionParams']
                      as core.Map<core.String, core.dynamic>,
                )
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
    if (webDetectionParams != null) 'webDetectionParams': webDetectionParams!,
  };
}

/// Stores image properties, such as dominant colors.
class GoogleCloudVisionV1p2beta1ImageProperties {
  /// If present, dominant colors completed successfully.
  GoogleCloudVisionV1p2beta1DominantColorsAnnotation? dominantColors;

  GoogleCloudVisionV1p2beta1ImageProperties({this.dominantColors});

  GoogleCloudVisionV1p2beta1ImageProperties.fromJson(core.Map json_)
    : this(
        dominantColors:
            json_.containsKey('dominantColors')
                ? GoogleCloudVisionV1p2beta1DominantColorsAnnotation.fromJson(
                  json_['dominantColors']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dominantColors != null) 'dominantColors': dominantColors!,
  };
}

/// External image source (Google Cloud Storage or web URL image location).
typedef GoogleCloudVisionV1p2beta1ImageSource = $ImageSource;

/// The desired input location and metadata.
class GoogleCloudVisionV1p2beta1InputConfig {
  /// File content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64. Currently, this
  /// field only works for BatchAnnotateFiles requests. It does not work for
  /// AsyncBatchAnnotateFiles requests.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// The Google Cloud Storage location to read the input from.
  GoogleCloudVisionV1p2beta1GcsSource? gcsSource;

  /// The type of the file.
  ///
  /// Currently only "application/pdf", "image/tiff" and "image/gif" are
  /// supported. Wildcards are not supported.
  core.String? mimeType;

  GoogleCloudVisionV1p2beta1InputConfig({
    this.content,
    this.gcsSource,
    this.mimeType,
  });

  GoogleCloudVisionV1p2beta1InputConfig.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        gcsSource:
            json_.containsKey('gcsSource')
                ? GoogleCloudVisionV1p2beta1GcsSource.fromJson(
                  json_['gcsSource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (content != null) 'content': content!,
    if (gcsSource != null) 'gcsSource': gcsSource!,
    if (mimeType != null) 'mimeType': mimeType!,
  };
}

/// Rectangle determined by min and max `LatLng` pairs.
class GoogleCloudVisionV1p2beta1LatLongRect {
  /// Max lat/long pair.
  LatLng? maxLatLng;

  /// Min lat/long pair.
  LatLng? minLatLng;

  GoogleCloudVisionV1p2beta1LatLongRect({this.maxLatLng, this.minLatLng});

  GoogleCloudVisionV1p2beta1LatLongRect.fromJson(core.Map json_)
    : this(
        maxLatLng:
            json_.containsKey('maxLatLng')
                ? LatLng.fromJson(
                  json_['maxLatLng'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        minLatLng:
            json_.containsKey('minLatLng')
                ? LatLng.fromJson(
                  json_['minLatLng'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (maxLatLng != null) 'maxLatLng': maxLatLng!,
    if (minLatLng != null) 'minLatLng': minLatLng!,
  };
}

/// Set of detected objects with bounding boxes.
class GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation {
  /// Image region to which this object belongs.
  ///
  /// This must be populated.
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingPoly;

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

  GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation({
    this.boundingPoly,
    this.languageCode,
    this.mid,
    this.name,
    this.score,
  });

  GoogleCloudVisionV1p2beta1LocalizedObjectAnnotation.fromJson(core.Map json_)
    : this(
        boundingPoly:
            json_.containsKey('boundingPoly')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        mid: json_['mid'] as core.String?,
        name: json_['name'] as core.String?,
        score: (json_['score'] as core.num?)?.toDouble(),
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
class GoogleCloudVisionV1p2beta1LocationInfo {
  /// lat/long location coordinates.
  LatLng? latLng;

  GoogleCloudVisionV1p2beta1LocationInfo({this.latLng});

  GoogleCloudVisionV1p2beta1LocationInfo.fromJson(core.Map json_)
    : this(
        latLng:
            json_.containsKey('latLng')
                ? LatLng.fromJson(
                  json_['latLng'] as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudVisionV1p2beta1NormalizedVertex = $NormalizedVertex00;

/// The desired output location and metadata.
class GoogleCloudVisionV1p2beta1OutputConfig {
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
  GoogleCloudVisionV1p2beta1GcsDestination? gcsDestination;

  GoogleCloudVisionV1p2beta1OutputConfig({this.batchSize, this.gcsDestination});

  GoogleCloudVisionV1p2beta1OutputConfig.fromJson(core.Map json_)
    : this(
        batchSize: json_['batchSize'] as core.int?,
        gcsDestination:
            json_.containsKey('gcsDestination')
                ? GoogleCloudVisionV1p2beta1GcsDestination.fromJson(
                  json_['gcsDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (batchSize != null) 'batchSize': batchSize!,
    if (gcsDestination != null) 'gcsDestination': gcsDestination!,
  };
}

/// Detected page from OCR.
class GoogleCloudVisionV1p2beta1Page {
  /// List of blocks of text, images etc on this page.
  core.List<GoogleCloudVisionV1p2beta1Block>? blocks;

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
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty? property;

  /// Page width.
  ///
  /// For PDFs the unit is points. For images (including TIFFs) the unit is
  /// pixels.
  core.int? width;

  GoogleCloudVisionV1p2beta1Page({
    this.blocks,
    this.confidence,
    this.height,
    this.property,
    this.width,
  });

  GoogleCloudVisionV1p2beta1Page.fromJson(core.Map json_)
    : this(
        blocks:
            (json_['blocks'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Block.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        height: json_['height'] as core.int?,
        property:
            json_.containsKey('property')
                ? GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        width: json_['width'] as core.int?,
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
class GoogleCloudVisionV1p2beta1Paragraph {
  /// The bounding box for the paragraph.
  ///
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation. For example: * when the text is
  /// horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180
  /// degrees around the top-left corner it becomes: 2----3 | | 1----0 and the
  /// vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingBox;

  /// Confidence of the OCR results for the paragraph.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Additional information detected for the paragraph.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty? property;

  /// List of all words in this paragraph.
  core.List<GoogleCloudVisionV1p2beta1Word>? words;

  GoogleCloudVisionV1p2beta1Paragraph({
    this.boundingBox,
    this.confidence,
    this.property,
    this.words,
  });

  GoogleCloudVisionV1p2beta1Paragraph.fromJson(core.Map json_)
    : this(
        boundingBox:
            json_.containsKey('boundingBox')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        property:
            json_.containsKey('property')
                ? GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        words:
            (json_['words'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Word.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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
typedef GoogleCloudVisionV1p2beta1Position = $Position00;

/// A Product contains ReferenceImages.
class GoogleCloudVisionV1p2beta1Product {
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
  core.List<GoogleCloudVisionV1p2beta1ProductKeyValue>? productLabels;

  GoogleCloudVisionV1p2beta1Product({
    this.description,
    this.displayName,
    this.name,
    this.productCategory,
    this.productLabels,
  });

  GoogleCloudVisionV1p2beta1Product.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        productCategory: json_['productCategory'] as core.String?,
        productLabels:
            (json_['productLabels'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1ProductKeyValue.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (name != null) 'name': name!,
    if (productCategory != null) 'productCategory': productCategory!,
    if (productLabels != null) 'productLabels': productLabels!,
  };
}

/// A product label represented as a key-value pair.
typedef GoogleCloudVisionV1p2beta1ProductKeyValue = $KeyValue;

/// Parameters for a product search request.
class GoogleCloudVisionV1p2beta1ProductSearchParams {
  /// The bounding polygon around the area of interest in the image.
  ///
  /// If it is not specified, system discretion will be applied.
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingPoly;

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

  GoogleCloudVisionV1p2beta1ProductSearchParams({
    this.boundingPoly,
    this.filter,
    this.productCategories,
    this.productSet,
  });

  GoogleCloudVisionV1p2beta1ProductSearchParams.fromJson(core.Map json_)
    : this(
        boundingPoly:
            json_.containsKey('boundingPoly')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        filter: json_['filter'] as core.String?,
        productCategories:
            (json_['productCategories'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        productSet: json_['productSet'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boundingPoly != null) 'boundingPoly': boundingPoly!,
    if (filter != null) 'filter': filter!,
    if (productCategories != null) 'productCategories': productCategories!,
    if (productSet != null) 'productSet': productSet!,
  };
}

/// Results for a product search request.
class GoogleCloudVisionV1p2beta1ProductSearchResults {
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
  core.List<GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult>?
  productGroupedResults;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p2beta1ProductSearchResultsResult>? results;

  GoogleCloudVisionV1p2beta1ProductSearchResults({
    this.indexTime,
    this.productGroupedResults,
    this.results,
  });

  GoogleCloudVisionV1p2beta1ProductSearchResults.fromJson(core.Map json_)
    : this(
        indexTime: json_['indexTime'] as core.String?,
        productGroupedResults:
            (json_['productGroupedResults'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (indexTime != null) 'indexTime': indexTime!,
    if (productGroupedResults != null)
      'productGroupedResults': productGroupedResults!,
    if (results != null) 'results': results!,
  };
}

/// Information about the products similar to a single product in a query image.
class GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult {
  /// The bounding polygon around the product detected in the query image.
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingPoly;

  /// List of generic predictions for the object in the bounding box.
  core.List<GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation>?
  objectAnnotations;

  /// List of results, one for each product match.
  core.List<GoogleCloudVisionV1p2beta1ProductSearchResultsResult>? results;

  GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult({
    this.boundingPoly,
    this.objectAnnotations,
    this.results,
  });

  GoogleCloudVisionV1p2beta1ProductSearchResultsGroupedResult.fromJson(
    core.Map json_,
  ) : this(
        boundingPoly:
            json_.containsKey('boundingPoly')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        objectAnnotations:
            (json_['objectAnnotations'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        results:
            (json_['results'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boundingPoly != null) 'boundingPoly': boundingPoly!,
    if (objectAnnotations != null) 'objectAnnotations': objectAnnotations!,
    if (results != null) 'results': results!,
  };
}

/// Prediction for what the object in the bounding box is.
typedef GoogleCloudVisionV1p2beta1ProductSearchResultsObjectAnnotation =
    $ObjectAnnotation;

/// Information about a product.
class GoogleCloudVisionV1p2beta1ProductSearchResultsResult {
  /// The resource name of the image from the product that is the closest match
  /// to the query.
  core.String? image;

  /// The Product.
  GoogleCloudVisionV1p2beta1Product? product;

  /// A confidence level on the match, ranging from 0 (no confidence) to 1 (full
  /// confidence).
  core.double? score;

  GoogleCloudVisionV1p2beta1ProductSearchResultsResult({
    this.image,
    this.product,
    this.score,
  });

  GoogleCloudVisionV1p2beta1ProductSearchResultsResult.fromJson(core.Map json_)
    : this(
        image: json_['image'] as core.String?,
        product:
            json_.containsKey('product')
                ? GoogleCloudVisionV1p2beta1Product.fromJson(
                  json_['product'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        score: (json_['score'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (image != null) 'image': image!,
    if (product != null) 'product': product!,
    if (score != null) 'score': score!,
  };
}

/// A `Property` consists of a user-supplied name/value pair.
typedef GoogleCloudVisionV1p2beta1Property = $Property00;

/// Set of features pertaining to the image, computed by computer vision methods
/// over safe-search verticals (for example, adult, spoof, medical, violence).
typedef GoogleCloudVisionV1p2beta1SafeSearchAnnotation = $SafeSearchAnnotation;

/// A single symbol representation.
class GoogleCloudVisionV1p2beta1Symbol {
  /// The bounding box for the symbol.
  ///
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation. For example: * when the text is
  /// horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180
  /// degrees around the top-left corner it becomes: 2----3 | | 1----0 and the
  /// vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingBox;

  /// Confidence of the OCR results for the symbol.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Additional information detected for the symbol.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty? property;

  /// The actual UTF-8 representation of the symbol.
  core.String? text;

  GoogleCloudVisionV1p2beta1Symbol({
    this.boundingBox,
    this.confidence,
    this.property,
    this.text,
  });

  GoogleCloudVisionV1p2beta1Symbol.fromJson(core.Map json_)
    : this(
        boundingBox:
            json_.containsKey('boundingBox')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        property:
            json_.containsKey('property')
                ? GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        text: json_['text'] as core.String?,
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
class GoogleCloudVisionV1p2beta1TextAnnotation {
  /// List of pages detected by OCR.
  core.List<GoogleCloudVisionV1p2beta1Page>? pages;

  /// UTF-8 text detected on the pages.
  core.String? text;

  GoogleCloudVisionV1p2beta1TextAnnotation({this.pages, this.text});

  GoogleCloudVisionV1p2beta1TextAnnotation.fromJson(core.Map json_)
    : this(
        pages:
            (json_['pages'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Page.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pages != null) 'pages': pages!,
    if (text != null) 'text': text!,
  };
}

/// Detected start or end of a structural component.
typedef GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak = $DetectedBreak;

/// Detected language for a structural component.
typedef GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage =
    $DetectedLanguage;

/// Additional information detected on the structural component.
class GoogleCloudVisionV1p2beta1TextAnnotationTextProperty {
  /// Detected start or end of a text segment.
  GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage>?
  detectedLanguages;

  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty({
    this.detectedBreak,
    this.detectedLanguages,
  });

  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(core.Map json_)
    : this(
        detectedBreak:
            json_.containsKey('detectedBreak')
                ? GoogleCloudVisionV1p2beta1TextAnnotationDetectedBreak.fromJson(
                  json_['detectedBreak'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        detectedLanguages:
            (json_['detectedLanguages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1TextAnnotationDetectedLanguage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (detectedBreak != null) 'detectedBreak': detectedBreak!,
    if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
  };
}

/// Parameters for text detections.
///
/// This is used to control TEXT_DETECTION and DOCUMENT_TEXT_DETECTION features.
typedef GoogleCloudVisionV1p2beta1TextDetectionParams = $TextDetectionParams;

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
typedef GoogleCloudVisionV1p2beta1Vertex = $Vertex00;

/// Relevant information for the image from the Internet.
class GoogleCloudVisionV1p2beta1WebDetection {
  /// The service's best guess as to the topic of the request image.
  ///
  /// Inferred from similar images on the open web.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebLabel>? bestGuessLabels;

  /// Fully matching images from the Internet.
  ///
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage>? fullMatchingImages;

  /// Web pages containing the matching images from the Internet.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebPage>?
  pagesWithMatchingImages;

  /// Partial matching images from the Internet.
  ///
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage>?
  partialMatchingImages;

  /// The visually similar image results.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage>?
  visuallySimilarImages;

  /// Deduced entities from similar images on the Internet.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebEntity>? webEntities;

  GoogleCloudVisionV1p2beta1WebDetection({
    this.bestGuessLabels,
    this.fullMatchingImages,
    this.pagesWithMatchingImages,
    this.partialMatchingImages,
    this.visuallySimilarImages,
    this.webEntities,
  });

  GoogleCloudVisionV1p2beta1WebDetection.fromJson(core.Map json_)
    : this(
        bestGuessLabels:
            (json_['bestGuessLabels'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1WebDetectionWebLabel.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        fullMatchingImages:
            (json_['fullMatchingImages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        pagesWithMatchingImages:
            (json_['pagesWithMatchingImages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1WebDetectionWebPage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        partialMatchingImages:
            (json_['partialMatchingImages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        visuallySimilarImages:
            (json_['visuallySimilarImages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        webEntities:
            (json_['webEntities'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1WebDetectionWebEntity.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (bestGuessLabels != null) 'bestGuessLabels': bestGuessLabels!,
    if (fullMatchingImages != null) 'fullMatchingImages': fullMatchingImages!,
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
typedef GoogleCloudVisionV1p2beta1WebDetectionParams = $WebDetectionParams;

/// Entity deduced from similar images on the Internet.
typedef GoogleCloudVisionV1p2beta1WebDetectionWebEntity = $WebEntity;

/// Metadata for online images.
typedef GoogleCloudVisionV1p2beta1WebDetectionWebImage = $WebImage;

/// Label to provide extra metadata for the web detection.
typedef GoogleCloudVisionV1p2beta1WebDetectionWebLabel = $WebLabel;

/// Metadata for web pages.
class GoogleCloudVisionV1p2beta1WebDetectionWebPage {
  /// Fully matching images on the page.
  ///
  /// Can include resized copies of the query image.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage>? fullMatchingImages;

  /// Title for the web page, may contain HTML markups.
  core.String? pageTitle;

  /// Partial matching images on the page.
  ///
  /// Those images are similar enough to share some key-point features. For
  /// example an original image will likely have partial matching for its crops.
  core.List<GoogleCloudVisionV1p2beta1WebDetectionWebImage>?
  partialMatchingImages;

  /// (Deprecated) Overall relevancy score for the web page.
  core.double? score;

  /// The result web page URL.
  core.String? url;

  GoogleCloudVisionV1p2beta1WebDetectionWebPage({
    this.fullMatchingImages,
    this.pageTitle,
    this.partialMatchingImages,
    this.score,
    this.url,
  });

  GoogleCloudVisionV1p2beta1WebDetectionWebPage.fromJson(core.Map json_)
    : this(
        fullMatchingImages:
            (json_['fullMatchingImages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        pageTitle: json_['pageTitle'] as core.String?,
        partialMatchingImages:
            (json_['partialMatchingImages'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVisionV1p2beta1WebDetectionWebImage.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        score: (json_['score'] as core.num?)?.toDouble(),
        url: json_['url'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fullMatchingImages != null) 'fullMatchingImages': fullMatchingImages!,
    if (pageTitle != null) 'pageTitle': pageTitle!,
    if (partialMatchingImages != null)
      'partialMatchingImages': partialMatchingImages!,
    if (score != null) 'score': score!,
    if (url != null) 'url': url!,
  };
}

/// A word representation.
class GoogleCloudVisionV1p2beta1Word {
  /// The bounding box for the word.
  ///
  /// The vertices are in the order of top-left, top-right, bottom-right,
  /// bottom-left. When a rotation of the bounding box is detected the rotation
  /// is represented as around the top-left corner as defined when the text is
  /// read in the 'natural' orientation. For example: * when the text is
  /// horizontal it might look like: 0----1 | | 3----2 * when it's rotated 180
  /// degrees around the top-left corner it becomes: 2----3 | | 1----0 and the
  /// vertex order will still be (0, 1, 2, 3).
  GoogleCloudVisionV1p2beta1BoundingPoly? boundingBox;

  /// Confidence of the OCR results for the word.
  ///
  /// Range \[0, 1\].
  core.double? confidence;

  /// Additional information detected for the word.
  GoogleCloudVisionV1p2beta1TextAnnotationTextProperty? property;

  /// List of symbols in the word.
  ///
  /// The order of the symbols follows the natural reading order.
  core.List<GoogleCloudVisionV1p2beta1Symbol>? symbols;

  GoogleCloudVisionV1p2beta1Word({
    this.boundingBox,
    this.confidence,
    this.property,
    this.symbols,
  });

  GoogleCloudVisionV1p2beta1Word.fromJson(core.Map json_)
    : this(
        boundingBox:
            json_.containsKey('boundingBox')
                ? GoogleCloudVisionV1p2beta1BoundingPoly.fromJson(
                  json_['boundingBox'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        confidence: (json_['confidence'] as core.num?)?.toDouble(),
        property:
            json_.containsKey('property')
                ? GoogleCloudVisionV1p2beta1TextAnnotationTextProperty.fromJson(
                  json_['property'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        symbols:
            (json_['symbols'] as core.List?)
                ?.map(
                  (value) => GoogleCloudVisionV1p2beta1Symbol.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boundingBox != null) 'boundingBox': boundingBox!,
    if (confidence != null) 'confidence': confidence!,
    if (property != null) 'property': property!,
    if (symbols != null) 'symbols': symbols!,
  };
}

/// An object that represents a latitude/longitude pair.
///
/// This is expressed as a pair of doubles to represent degrees latitude and
/// degrees longitude. Unless specified otherwise, this object must conform to
/// the WGS84 standard. Values must be within normalized ranges.
typedef LatLng = $LatLng;

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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;
