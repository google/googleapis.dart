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

/// Cloud Video Intelligence API - v1
///
/// Detects objects, explicit content, and scene changes in videos. It also
/// specifies the region for annotation and transcribes speech to text. Supports
/// both asynchronous API and streaming API.
///
/// For more information, see
/// <https://cloud.google.com/video-intelligence/docs/>
///
/// Create an instance of [CloudVideoIntelligenceApi] to access these resources:
///
/// - [OperationsResource]
///   - [OperationsProjectsResource]
///     - [OperationsProjectsLocationsResource]
///       - [OperationsProjectsLocationsOperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
/// - [VideosResource]
library videointelligence.v1;

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

/// Detects objects, explicit content, and scene changes in videos.
///
/// It also specifies the region for annotation and transcribes speech to text.
/// Supports both asynchronous API and streaming API.
class CloudVideoIntelligenceApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  VideosResource get videos => VideosResource(_requester);

  CloudVideoIntelligenceApi(http.Client client,
      {core.String rootUrl = 'https://videointelligence.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class OperationsResource {
  final commons.ApiRequester _requester;

  OperationsProjectsResource get projects =>
      OperationsProjectsResource(_requester);

  OperationsResource(commons.ApiRequester client) : _requester = client;
}

class OperationsProjectsResource {
  final commons.ApiRequester _requester;

  OperationsProjectsLocationsResource get locations =>
      OperationsProjectsLocationsResource(_requester);

  OperationsProjectsResource(commons.ApiRequester client) : _requester = client;
}

class OperationsProjectsLocationsResource {
  final commons.ApiRequester _requester;

  OperationsProjectsLocationsOperationsResource get operations =>
      OperationsProjectsLocationsOperationsResource(_requester);

  OperationsProjectsLocationsResource(commons.ApiRequester client)
      : _requester = client;
}

class OperationsProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  OperationsProjectsLocationsOperationsResource(commons.ApiRequester client)
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

    final url_ = 'v1/operations/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/operations/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
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

    final url_ = 'v1/operations/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
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

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
    GoogleLongrunningCancelOperationRequest request,
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class VideosResource {
  final commons.ApiRequester _requester;

  VideosResource(commons.ApiRequester client) : _requester = client;

  /// Performs asynchronous video annotation.
  ///
  /// Progress and results can be retrieved through the
  /// `google.longrunning.Operations` interface. `Operation.metadata` contains
  /// `AnnotateVideoProgress` (progress). `Operation.response` contains
  /// `AnnotateVideoResponse` (results).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
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
  async.Future<GoogleLongrunningOperation> annotate(
    GoogleCloudVideointelligenceV1AnnotateVideoRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/videos:annotate';

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

/// Video annotation request.
class GoogleCloudVideointelligenceV1AnnotateVideoRequest {
  /// Requested video annotation features.
  ///
  /// Required.
  core.List<core.String>? features;

  /// The video data bytes.
  ///
  /// If unset, the input video(s) should be specified via the `input_uri`. If
  /// set, `input_uri` must be unset.
  core.String? inputContent;
  core.List<core.int> get inputContentAsBytes =>
      convert.base64.decode(inputContent!);

  set inputContentAsBytes(core.List<core.int> bytes_) {
    inputContent =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Input video location.
  ///
  /// Currently, only [Cloud Storage](https://cloud.google.com/storage/) URIs
  /// are supported. URIs must be specified in the following format:
  /// `gs://bucket-id/object-id` (other URI formats return
  /// google.rpc.Code.INVALID_ARGUMENT). For more information, see
  /// [Request URIs](https://cloud.google.com/storage/docs/request-endpoints).
  /// To identify multiple videos, a video URI may include wildcards in the
  /// `object-id`. Supported wildcards: '*' to match 0 or more characters; '?'
  /// to match 1 character. If unset, the input video should be embedded in the
  /// request as `input_content`. If set, `input_content` must be unset.
  core.String? inputUri;

  /// Cloud region where annotation should take place.
  ///
  /// Supported cloud regions are: `us-east1`, `us-west1`, `europe-west1`,
  /// `asia-east1`. If no region is specified, the region will be determined
  /// based on video file location.
  ///
  /// Optional.
  core.String? locationId;

  /// Location where the output (in JSON format) should be stored.
  ///
  /// Currently, only [Cloud Storage](https://cloud.google.com/storage/) URIs
  /// are supported. These must be specified in the following format:
  /// `gs://bucket-id/object-id` (other URI formats return
  /// google.rpc.Code.INVALID_ARGUMENT). For more information, see
  /// [Request URIs](https://cloud.google.com/storage/docs/request-endpoints).
  ///
  /// Optional.
  core.String? outputUri;

  /// Additional video context and/or feature-specific parameters.
  GoogleCloudVideointelligenceV1VideoContext? videoContext;

  GoogleCloudVideointelligenceV1AnnotateVideoRequest({
    this.features,
    this.inputContent,
    this.inputUri,
    this.locationId,
    this.outputUri,
    this.videoContext,
  });

  GoogleCloudVideointelligenceV1AnnotateVideoRequest.fromJson(core.Map json_)
      : this(
          features: json_.containsKey('features')
              ? (json_['features'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          inputContent: json_.containsKey('inputContent')
              ? json_['inputContent'] as core.String
              : null,
          inputUri: json_.containsKey('inputUri')
              ? json_['inputUri'] as core.String
              : null,
          locationId: json_.containsKey('locationId')
              ? json_['locationId'] as core.String
              : null,
          outputUri: json_.containsKey('outputUri')
              ? json_['outputUri'] as core.String
              : null,
          videoContext: json_.containsKey('videoContext')
              ? GoogleCloudVideointelligenceV1VideoContext.fromJson(
                  json_['videoContext'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (features != null) 'features': features!,
        if (inputContent != null) 'inputContent': inputContent!,
        if (inputUri != null) 'inputUri': inputUri!,
        if (locationId != null) 'locationId': locationId!,
        if (outputUri != null) 'outputUri': outputUri!,
        if (videoContext != null) 'videoContext': videoContext!,
      };
}

/// Config for EXPLICIT_CONTENT_DETECTION.
class GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig {
  /// Model to use for explicit content detection.
  ///
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String? model;

  GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig({
    this.model,
  });

  GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig.fromJson(
      core.Map json_)
      : this(
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (model != null) 'model': model!,
      };
}

/// Config for FACE_DETECTION.
class GoogleCloudVideointelligenceV1FaceDetectionConfig {
  /// Whether to enable face attributes detection, such as glasses,
  /// dark_glasses, mouth_open etc.
  ///
  /// Ignored if 'include_bounding_boxes' is set to false.
  core.bool? includeAttributes;

  /// Whether bounding boxes are included in the face annotation output.
  core.bool? includeBoundingBoxes;

  /// Model to use for face detection.
  ///
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String? model;

  GoogleCloudVideointelligenceV1FaceDetectionConfig({
    this.includeAttributes,
    this.includeBoundingBoxes,
    this.model,
  });

  GoogleCloudVideointelligenceV1FaceDetectionConfig.fromJson(core.Map json_)
      : this(
          includeAttributes: json_.containsKey('includeAttributes')
              ? json_['includeAttributes'] as core.bool
              : null,
          includeBoundingBoxes: json_.containsKey('includeBoundingBoxes')
              ? json_['includeBoundingBoxes'] as core.bool
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeAttributes != null) 'includeAttributes': includeAttributes!,
        if (includeBoundingBoxes != null)
          'includeBoundingBoxes': includeBoundingBoxes!,
        if (model != null) 'model': model!,
      };
}

/// Config for LABEL_DETECTION.
class GoogleCloudVideointelligenceV1LabelDetectionConfig {
  /// The confidence threshold we perform filtering on the labels from
  /// frame-level detection.
  ///
  /// If not set, it is set to 0.4 by default. The valid range for this
  /// threshold is \[0.1, 0.9\]. Any value set outside of this range will be
  /// clipped. Note: For best results, follow the default threshold. We will
  /// update the default threshold everytime when we release a new model.
  core.double? frameConfidenceThreshold;

  /// What labels should be detected with LABEL_DETECTION, in addition to
  /// video-level labels or segment-level labels.
  ///
  /// If unspecified, defaults to `SHOT_MODE`.
  /// Possible string values are:
  /// - "LABEL_DETECTION_MODE_UNSPECIFIED" : Unspecified.
  /// - "SHOT_MODE" : Detect shot-level labels.
  /// - "FRAME_MODE" : Detect frame-level labels.
  /// - "SHOT_AND_FRAME_MODE" : Detect both shot-level and frame-level labels.
  core.String? labelDetectionMode;

  /// Model to use for label detection.
  ///
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String? model;

  /// Whether the video has been shot from a stationary (i.e., non-moving)
  /// camera.
  ///
  /// When set to true, might improve detection accuracy for moving objects.
  /// Should be used with `SHOT_AND_FRAME_MODE` enabled.
  core.bool? stationaryCamera;

  /// The confidence threshold we perform filtering on the labels from
  /// video-level and shot-level detections.
  ///
  /// If not set, it's set to 0.3 by default. The valid range for this threshold
  /// is \[0.1, 0.9\]. Any value set outside of this range will be clipped.
  /// Note: For best results, follow the default threshold. We will update the
  /// default threshold everytime when we release a new model.
  core.double? videoConfidenceThreshold;

  GoogleCloudVideointelligenceV1LabelDetectionConfig({
    this.frameConfidenceThreshold,
    this.labelDetectionMode,
    this.model,
    this.stationaryCamera,
    this.videoConfidenceThreshold,
  });

  GoogleCloudVideointelligenceV1LabelDetectionConfig.fromJson(core.Map json_)
      : this(
          frameConfidenceThreshold:
              json_.containsKey('frameConfidenceThreshold')
                  ? (json_['frameConfidenceThreshold'] as core.num).toDouble()
                  : null,
          labelDetectionMode: json_.containsKey('labelDetectionMode')
              ? json_['labelDetectionMode'] as core.String
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
          stationaryCamera: json_.containsKey('stationaryCamera')
              ? json_['stationaryCamera'] as core.bool
              : null,
          videoConfidenceThreshold:
              json_.containsKey('videoConfidenceThreshold')
                  ? (json_['videoConfidenceThreshold'] as core.num).toDouble()
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (frameConfidenceThreshold != null)
          'frameConfidenceThreshold': frameConfidenceThreshold!,
        if (labelDetectionMode != null)
          'labelDetectionMode': labelDetectionMode!,
        if (model != null) 'model': model!,
        if (stationaryCamera != null) 'stationaryCamera': stationaryCamera!,
        if (videoConfidenceThreshold != null)
          'videoConfidenceThreshold': videoConfidenceThreshold!,
      };
}

/// Config for OBJECT_TRACKING.
class GoogleCloudVideointelligenceV1ObjectTrackingConfig {
  /// Model to use for object tracking.
  ///
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String? model;

  GoogleCloudVideointelligenceV1ObjectTrackingConfig({
    this.model,
  });

  GoogleCloudVideointelligenceV1ObjectTrackingConfig.fromJson(core.Map json_)
      : this(
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (model != null) 'model': model!,
      };
}

/// Config for PERSON_DETECTION.
class GoogleCloudVideointelligenceV1PersonDetectionConfig {
  /// Whether to enable person attributes detection, such as cloth color (black,
  /// blue, etc), type (coat, dress, etc), pattern (plain, floral, etc), hair,
  /// etc.
  ///
  /// Ignored if 'include_bounding_boxes' is set to false.
  core.bool? includeAttributes;

  /// Whether bounding boxes are included in the person detection annotation
  /// output.
  core.bool? includeBoundingBoxes;

  /// Whether to enable pose landmarks detection.
  ///
  /// Ignored if 'include_bounding_boxes' is set to false.
  core.bool? includePoseLandmarks;

  GoogleCloudVideointelligenceV1PersonDetectionConfig({
    this.includeAttributes,
    this.includeBoundingBoxes,
    this.includePoseLandmarks,
  });

  GoogleCloudVideointelligenceV1PersonDetectionConfig.fromJson(core.Map json_)
      : this(
          includeAttributes: json_.containsKey('includeAttributes')
              ? json_['includeAttributes'] as core.bool
              : null,
          includeBoundingBoxes: json_.containsKey('includeBoundingBoxes')
              ? json_['includeBoundingBoxes'] as core.bool
              : null,
          includePoseLandmarks: json_.containsKey('includePoseLandmarks')
              ? json_['includePoseLandmarks'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (includeAttributes != null) 'includeAttributes': includeAttributes!,
        if (includeBoundingBoxes != null)
          'includeBoundingBoxes': includeBoundingBoxes!,
        if (includePoseLandmarks != null)
          'includePoseLandmarks': includePoseLandmarks!,
      };
}

/// Config for SHOT_CHANGE_DETECTION.
class GoogleCloudVideointelligenceV1ShotChangeDetectionConfig {
  /// Model to use for shot change detection.
  ///
  /// Supported values: "builtin/stable" (the default if unset),
  /// "builtin/latest", and "builtin/legacy".
  core.String? model;

  GoogleCloudVideointelligenceV1ShotChangeDetectionConfig({
    this.model,
  });

  GoogleCloudVideointelligenceV1ShotChangeDetectionConfig.fromJson(
      core.Map json_)
      : this(
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (model != null) 'model': model!,
      };
}

/// Provides "hints" to the speech recognizer to favor specific words and
/// phrases in the results.
class GoogleCloudVideointelligenceV1SpeechContext {
  /// A list of strings containing words and phrases "hints" so that the speech
  /// recognition is more likely to recognize them.
  ///
  /// This can be used to improve the accuracy for specific words and phrases,
  /// for example, if specific commands are typically spoken by the user. This
  /// can also be used to add additional words to the vocabulary of the
  /// recognizer. See
  /// [usage limits](https://cloud.google.com/speech/limits#content).
  ///
  /// Optional.
  core.List<core.String>? phrases;

  GoogleCloudVideointelligenceV1SpeechContext({
    this.phrases,
  });

  GoogleCloudVideointelligenceV1SpeechContext.fromJson(core.Map json_)
      : this(
          phrases: json_.containsKey('phrases')
              ? (json_['phrases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (phrases != null) 'phrases': phrases!,
      };
}

/// Config for SPEECH_TRANSCRIPTION.
class GoogleCloudVideointelligenceV1SpeechTranscriptionConfig {
  /// For file formats, such as MXF or MKV, supporting multiple audio tracks,
  /// specify up to two tracks.
  ///
  /// Default: track 0.
  ///
  /// Optional.
  core.List<core.int>? audioTracks;

  /// If set, specifies the estimated number of speakers in the conversation.
  ///
  /// If not set, defaults to '2'. Ignored unless enable_speaker_diarization is
  /// set to true.
  ///
  /// Optional.
  core.int? diarizationSpeakerCount;

  /// If 'true', adds punctuation to recognition result hypotheses.
  ///
  /// This feature is only available in select languages. Setting this for
  /// requests in other languages has no effect at all. The default 'false'
  /// value does not add punctuation to result hypotheses. NOTE: "This is
  /// currently offered as an experimental service, complimentary to all users.
  /// In the future this may be exclusively available as a premium feature."
  ///
  /// Optional.
  core.bool? enableAutomaticPunctuation;

  /// If 'true', enables speaker detection for each recognized word in the top
  /// alternative of the recognition result using a speaker_tag provided in the
  /// WordInfo.
  ///
  /// Note: When this is true, we send all the words from the beginning of the
  /// audio for the top alternative in every consecutive response. This is done
  /// in order to improve our speaker tags as our models learn to identify the
  /// speakers in the conversation over time.
  ///
  /// Optional.
  core.bool? enableSpeakerDiarization;

  /// If `true`, the top result includes a list of words and the confidence for
  /// those words.
  ///
  /// If `false`, no word-level confidence information is returned. The default
  /// is `false`.
  ///
  /// Optional.
  core.bool? enableWordConfidence;

  /// If set to `true`, the server will attempt to filter out profanities,
  /// replacing all but the initial character in each filtered word with
  /// asterisks, e.g. "f***".
  ///
  /// If set to `false` or omitted, profanities won't be filtered out.
  ///
  /// Optional.
  core.bool? filterProfanity;

  /// *Required* The language of the supplied audio as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  ///
  /// Example: "en-US". See
  /// [Language Support](https://cloud.google.com/speech/docs/languages) for a
  /// list of the currently supported language codes.
  ///
  /// Required.
  core.String? languageCode;

  /// Maximum number of recognition hypotheses to be returned.
  ///
  /// Specifically, the maximum number of `SpeechRecognitionAlternative`
  /// messages within each `SpeechTranscription`. The server may return fewer
  /// than `max_alternatives`. Valid values are `0`-`30`. A value of `0` or `1`
  /// will return a maximum of one. If omitted, will return a maximum of one.
  ///
  /// Optional.
  core.int? maxAlternatives;

  /// A means to provide context to assist the speech recognition.
  ///
  /// Optional.
  core.List<GoogleCloudVideointelligenceV1SpeechContext>? speechContexts;

  GoogleCloudVideointelligenceV1SpeechTranscriptionConfig({
    this.audioTracks,
    this.diarizationSpeakerCount,
    this.enableAutomaticPunctuation,
    this.enableSpeakerDiarization,
    this.enableWordConfidence,
    this.filterProfanity,
    this.languageCode,
    this.maxAlternatives,
    this.speechContexts,
  });

  GoogleCloudVideointelligenceV1SpeechTranscriptionConfig.fromJson(
      core.Map json_)
      : this(
          audioTracks: json_.containsKey('audioTracks')
              ? (json_['audioTracks'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          diarizationSpeakerCount: json_.containsKey('diarizationSpeakerCount')
              ? json_['diarizationSpeakerCount'] as core.int
              : null,
          enableAutomaticPunctuation:
              json_.containsKey('enableAutomaticPunctuation')
                  ? json_['enableAutomaticPunctuation'] as core.bool
                  : null,
          enableSpeakerDiarization:
              json_.containsKey('enableSpeakerDiarization')
                  ? json_['enableSpeakerDiarization'] as core.bool
                  : null,
          enableWordConfidence: json_.containsKey('enableWordConfidence')
              ? json_['enableWordConfidence'] as core.bool
              : null,
          filterProfanity: json_.containsKey('filterProfanity')
              ? json_['filterProfanity'] as core.bool
              : null,
          languageCode: json_.containsKey('languageCode')
              ? json_['languageCode'] as core.String
              : null,
          maxAlternatives: json_.containsKey('maxAlternatives')
              ? json_['maxAlternatives'] as core.int
              : null,
          speechContexts: json_.containsKey('speechContexts')
              ? (json_['speechContexts'] as core.List)
                  .map((value) =>
                      GoogleCloudVideointelligenceV1SpeechContext.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioTracks != null) 'audioTracks': audioTracks!,
        if (diarizationSpeakerCount != null)
          'diarizationSpeakerCount': diarizationSpeakerCount!,
        if (enableAutomaticPunctuation != null)
          'enableAutomaticPunctuation': enableAutomaticPunctuation!,
        if (enableSpeakerDiarization != null)
          'enableSpeakerDiarization': enableSpeakerDiarization!,
        if (enableWordConfidence != null)
          'enableWordConfidence': enableWordConfidence!,
        if (filterProfanity != null) 'filterProfanity': filterProfanity!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (maxAlternatives != null) 'maxAlternatives': maxAlternatives!,
        if (speechContexts != null) 'speechContexts': speechContexts!,
      };
}

/// Config for TEXT_DETECTION.
class GoogleCloudVideointelligenceV1TextDetectionConfig {
  /// Language hint can be specified if the language to be detected is known a
  /// priori.
  ///
  /// It can increase the accuracy of the detection. Language hint must be
  /// language code in BCP-47 format. Automatic language detection is performed
  /// if no hint is provided.
  core.List<core.String>? languageHints;

  /// Model to use for text detection.
  ///
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String? model;

  GoogleCloudVideointelligenceV1TextDetectionConfig({
    this.languageHints,
    this.model,
  });

  GoogleCloudVideointelligenceV1TextDetectionConfig.fromJson(core.Map json_)
      : this(
          languageHints: json_.containsKey('languageHints')
              ? (json_['languageHints'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          model:
              json_.containsKey('model') ? json_['model'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageHints != null) 'languageHints': languageHints!,
        if (model != null) 'model': model!,
      };
}

/// Video context and/or feature-specific parameters.
class GoogleCloudVideointelligenceV1VideoContext {
  /// Config for EXPLICIT_CONTENT_DETECTION.
  GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig?
      explicitContentDetectionConfig;

  /// Config for FACE_DETECTION.
  GoogleCloudVideointelligenceV1FaceDetectionConfig? faceDetectionConfig;

  /// Config for LABEL_DETECTION.
  GoogleCloudVideointelligenceV1LabelDetectionConfig? labelDetectionConfig;

  /// Config for OBJECT_TRACKING.
  GoogleCloudVideointelligenceV1ObjectTrackingConfig? objectTrackingConfig;

  /// Config for PERSON_DETECTION.
  GoogleCloudVideointelligenceV1PersonDetectionConfig? personDetectionConfig;

  /// Video segments to annotate.
  ///
  /// The segments may overlap and are not required to be contiguous or span the
  /// whole video. If unspecified, each video is treated as a single segment.
  core.List<GoogleCloudVideointelligenceV1VideoSegment>? segments;

  /// Config for SHOT_CHANGE_DETECTION.
  GoogleCloudVideointelligenceV1ShotChangeDetectionConfig?
      shotChangeDetectionConfig;

  /// Config for SPEECH_TRANSCRIPTION.
  GoogleCloudVideointelligenceV1SpeechTranscriptionConfig?
      speechTranscriptionConfig;

  /// Config for TEXT_DETECTION.
  GoogleCloudVideointelligenceV1TextDetectionConfig? textDetectionConfig;

  GoogleCloudVideointelligenceV1VideoContext({
    this.explicitContentDetectionConfig,
    this.faceDetectionConfig,
    this.labelDetectionConfig,
    this.objectTrackingConfig,
    this.personDetectionConfig,
    this.segments,
    this.shotChangeDetectionConfig,
    this.speechTranscriptionConfig,
    this.textDetectionConfig,
  });

  GoogleCloudVideointelligenceV1VideoContext.fromJson(core.Map json_)
      : this(
          explicitContentDetectionConfig:
              json_.containsKey('explicitContentDetectionConfig')
                  ? GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig
                      .fromJson(json_['explicitContentDetectionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          faceDetectionConfig: json_.containsKey('faceDetectionConfig')
              ? GoogleCloudVideointelligenceV1FaceDetectionConfig.fromJson(
                  json_['faceDetectionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          labelDetectionConfig: json_.containsKey('labelDetectionConfig')
              ? GoogleCloudVideointelligenceV1LabelDetectionConfig.fromJson(
                  json_['labelDetectionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          objectTrackingConfig: json_.containsKey('objectTrackingConfig')
              ? GoogleCloudVideointelligenceV1ObjectTrackingConfig.fromJson(
                  json_['objectTrackingConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          personDetectionConfig: json_.containsKey('personDetectionConfig')
              ? GoogleCloudVideointelligenceV1PersonDetectionConfig.fromJson(
                  json_['personDetectionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          segments: json_.containsKey('segments')
              ? (json_['segments'] as core.List)
                  .map((value) =>
                      GoogleCloudVideointelligenceV1VideoSegment.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shotChangeDetectionConfig:
              json_.containsKey('shotChangeDetectionConfig')
                  ? GoogleCloudVideointelligenceV1ShotChangeDetectionConfig
                      .fromJson(json_['shotChangeDetectionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          speechTranscriptionConfig:
              json_.containsKey('speechTranscriptionConfig')
                  ? GoogleCloudVideointelligenceV1SpeechTranscriptionConfig
                      .fromJson(json_['speechTranscriptionConfig']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          textDetectionConfig: json_.containsKey('textDetectionConfig')
              ? GoogleCloudVideointelligenceV1TextDetectionConfig.fromJson(
                  json_['textDetectionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (explicitContentDetectionConfig != null)
          'explicitContentDetectionConfig': explicitContentDetectionConfig!,
        if (faceDetectionConfig != null)
          'faceDetectionConfig': faceDetectionConfig!,
        if (labelDetectionConfig != null)
          'labelDetectionConfig': labelDetectionConfig!,
        if (objectTrackingConfig != null)
          'objectTrackingConfig': objectTrackingConfig!,
        if (personDetectionConfig != null)
          'personDetectionConfig': personDetectionConfig!,
        if (segments != null) 'segments': segments!,
        if (shotChangeDetectionConfig != null)
          'shotChangeDetectionConfig': shotChangeDetectionConfig!,
        if (speechTranscriptionConfig != null)
          'speechTranscriptionConfig': speechTranscriptionConfig!,
        if (textDetectionConfig != null)
          'textDetectionConfig': textDetectionConfig!,
      };
}

/// Video segment.
class GoogleCloudVideointelligenceV1VideoSegment {
  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// end of the segment (inclusive).
  core.String? endTimeOffset;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// start of the segment (inclusive).
  core.String? startTimeOffset;

  GoogleCloudVideointelligenceV1VideoSegment({
    this.endTimeOffset,
    this.startTimeOffset,
  });

  GoogleCloudVideointelligenceV1VideoSegment.fromJson(core.Map json_)
      : this(
          endTimeOffset: json_.containsKey('endTimeOffset')
              ? json_['endTimeOffset'] as core.String
              : null,
          startTimeOffset: json_.containsKey('startTimeOffset')
              ? json_['startTimeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTimeOffset != null) 'endTimeOffset': endTimeOffset!,
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
      };
}

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

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
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;
