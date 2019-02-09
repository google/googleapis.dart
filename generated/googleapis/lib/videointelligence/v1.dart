// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.videointelligence.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client videointelligence/v1';

/// Detects objects, explicit content, and scene changes in videos. It also
/// specifies the region for annotation and transcribes speech to text.
class VideointelligenceApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  OperationsResourceApi get operations => new OperationsResourceApi(_requester);
  VideosResourceApi get videos => new VideosResourceApi(_requester);

  VideointelligenceApi(http.Client client,
      {core.String rootUrl = "https://videointelligence.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class OperationsResourceApi {
  final commons.ApiRequester _requester;

  OperationsResourceApi(commons.ApiRequester client) : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.  The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed.  If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.  Clients can use
  /// Operations.GetOperation or
  /// other methods to check whether the cancellation succeeded or whether the
  /// operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with
  /// an Operation.error value with a google.rpc.Status.code of 1,
  /// corresponding to `Code.CANCELLED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern "^[^/]+$".
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
      GoogleLongrunningCancelOperationRequest request, core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/operations/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        ':cancel';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Deletes a long-running operation. This method indicates that the client is
  /// no longer interested in the operation result. It does not cancel the
  /// operation. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern "^[^/]+$".
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
  async.Future<GoogleProtobufEmpty> delete(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/operations/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "DELETE",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new GoogleProtobufEmpty.fromJson(data));
  }

  /// Gets the latest state of a long-running operation.  Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^[^/]+$".
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
  async.Future<GoogleLongrunningOperation> get(core.String name,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (name == null) {
      throw new core.ArgumentError("Parameter name is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/operations/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }

  /// Lists operations that match the specified filter in the request. If the
  /// server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// NOTE: the `name` binding allows API services to override the binding
  /// to use different resource name schemes, such as `users / * /operations`.
  /// To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration.
  /// For backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding
  /// is the parent resource, without the operations collection id.
  ///
  /// Request parameters:
  ///
  /// [filter] - The standard list filter.
  ///
  /// [name] - The name of the operation's parent resource.
  ///
  /// [pageToken] - The standard list page token.
  ///
  /// [pageSize] - The standard list page size.
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
      {core.String filter,
      core.String name,
      core.String pageToken,
      core.int pageSize,
      core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (filter != null) {
      _queryParams["filter"] = [filter];
    }
    if (name != null) {
      _queryParams["name"] = [name];
    }
    if (pageToken != null) {
      _queryParams["pageToken"] = [pageToken];
    }
    if (pageSize != null) {
      _queryParams["pageSize"] = ["${pageSize}"];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/operations';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then(
        (data) => new GoogleLongrunningListOperationsResponse.fromJson(data));
  }
}

class VideosResourceApi {
  final commons.ApiRequester _requester;

  VideosResourceApi(commons.ApiRequester client) : _requester = client;

  /// Performs asynchronous video annotation. Progress and results can be
  /// retrieved through the `google.longrunning.Operations` interface.
  /// `Operation.metadata` contains `AnnotateVideoProgress` (progress).
  /// `Operation.response` contains `AnnotateVideoResponse` (results).
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
      GoogleCloudVideointelligenceV1AnnotateVideoRequest request,
      {core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (request != null) {
      _body = convert.json.encode((request).toJson());
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/videos:annotate';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new GoogleLongrunningOperation.fromJson(data));
  }
}

/// Video annotation progress. Included in the `metadata`
/// field of the `Operation` returned by the `GetOperation`
/// call of the `google::longrunning::Operations` service.
class GoogleCloudVideointelligenceV1AnnotateVideoProgress {
  /// Progress metadata for all videos specified in `AnnotateVideoRequest`.
  core.List<GoogleCloudVideointelligenceV1VideoAnnotationProgress>
      annotationProgress;

  GoogleCloudVideointelligenceV1AnnotateVideoProgress();

  GoogleCloudVideointelligenceV1AnnotateVideoProgress.fromJson(core.Map _json) {
    if (_json.containsKey("annotationProgress")) {
      annotationProgress = (_json["annotationProgress"] as core.List)
          .map<GoogleCloudVideointelligenceV1VideoAnnotationProgress>((value) =>
              new GoogleCloudVideointelligenceV1VideoAnnotationProgress
                  .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annotationProgress != null) {
      _json["annotationProgress"] =
          annotationProgress.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video annotation request.
class GoogleCloudVideointelligenceV1AnnotateVideoRequest {
  /// Requested video annotation features.
  core.List<core.String> features;

  /// The video data bytes.
  /// If unset, the input video(s) should be specified via `input_uri`.
  /// If set, `input_uri` should be unset.
  core.String inputContent;
  core.List<core.int> get inputContentAsBytes {
    return convert.base64.decode(inputContent);
  }

  set inputContentAsBytes(core.List<core.int> _bytes) {
    inputContent =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Input video location. Currently, only
  /// [Google Cloud Storage](https://cloud.google.com/storage/) URIs are
  /// supported, which must be specified in the following format:
  /// `gs://bucket-id/object-id` (other URI formats return
  /// google.rpc.Code.INVALID_ARGUMENT). For more information, see
  /// [Request URIs](/storage/docs/reference-uris).
  /// A video URI may include wildcards in `object-id`, and thus identify
  /// multiple videos. Supported wildcards: '*' to match 0 or more characters;
  /// '?' to match 1 character. If unset, the input video should be embedded
  /// in the request as `input_content`. If set, `input_content` should be
  /// unset.
  core.String inputUri;

  /// Optional cloud region where annotation should take place. Supported cloud
  /// regions: `us-east1`, `us-west1`, `europe-west1`, `asia-east1`. If no
  /// region
  /// is specified, a region will be determined based on video file location.
  core.String locationId;

  /// Optional location where the output (in JSON format) should be stored.
  /// Currently, only [Google Cloud Storage](https://cloud.google.com/storage/)
  /// URIs are supported, which must be specified in the following format:
  /// `gs://bucket-id/object-id` (other URI formats return
  /// google.rpc.Code.INVALID_ARGUMENT). For more information, see
  /// [Request URIs](/storage/docs/reference-uris).
  core.String outputUri;

  /// Additional video context and/or feature-specific parameters.
  GoogleCloudVideointelligenceV1VideoContext videoContext;

  GoogleCloudVideointelligenceV1AnnotateVideoRequest();

  GoogleCloudVideointelligenceV1AnnotateVideoRequest.fromJson(core.Map _json) {
    if (_json.containsKey("features")) {
      features = (_json["features"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("inputContent")) {
      inputContent = _json["inputContent"];
    }
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("locationId")) {
      locationId = _json["locationId"];
    }
    if (_json.containsKey("outputUri")) {
      outputUri = _json["outputUri"];
    }
    if (_json.containsKey("videoContext")) {
      videoContext = new GoogleCloudVideointelligenceV1VideoContext.fromJson(
          _json["videoContext"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (features != null) {
      _json["features"] = features;
    }
    if (inputContent != null) {
      _json["inputContent"] = inputContent;
    }
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (locationId != null) {
      _json["locationId"] = locationId;
    }
    if (outputUri != null) {
      _json["outputUri"] = outputUri;
    }
    if (videoContext != null) {
      _json["videoContext"] = (videoContext).toJson();
    }
    return _json;
  }
}

/// Video annotation response. Included in the `response`
/// field of the `Operation` returned by the `GetOperation`
/// call of the `google::longrunning::Operations` service.
class GoogleCloudVideointelligenceV1AnnotateVideoResponse {
  /// Annotation results for all videos specified in `AnnotateVideoRequest`.
  core.List<GoogleCloudVideointelligenceV1VideoAnnotationResults>
      annotationResults;

  GoogleCloudVideointelligenceV1AnnotateVideoResponse();

  GoogleCloudVideointelligenceV1AnnotateVideoResponse.fromJson(core.Map _json) {
    if (_json.containsKey("annotationResults")) {
      annotationResults = (_json["annotationResults"] as core.List)
          .map<GoogleCloudVideointelligenceV1VideoAnnotationResults>((value) =>
              new GoogleCloudVideointelligenceV1VideoAnnotationResults.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annotationResults != null) {
      _json["annotationResults"] =
          annotationResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Detected entity from video analysis.
class GoogleCloudVideointelligenceV1Entity {
  /// Textual description, e.g. `Fixed-gear bicycle`.
  core.String description;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String entityId;

  /// Language code for `description` in BCP-47 format.
  core.String languageCode;

  GoogleCloudVideointelligenceV1Entity();

  GoogleCloudVideointelligenceV1Entity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Explicit content annotation (based on per-frame visual signals only).
/// If no explicit content has been detected in a frame, no annotations are
/// present for that frame.
class GoogleCloudVideointelligenceV1ExplicitContentAnnotation {
  /// All video frames where explicit content was detected.
  core.List<GoogleCloudVideointelligenceV1ExplicitContentFrame> frames;

  GoogleCloudVideointelligenceV1ExplicitContentAnnotation();

  GoogleCloudVideointelligenceV1ExplicitContentAnnotation.fromJson(
      core.Map _json) {
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1ExplicitContentFrame>((value) =>
              new GoogleCloudVideointelligenceV1ExplicitContentFrame.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Config for EXPLICIT_CONTENT_DETECTION.
class GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig {
  /// Model to use for explicit content detection.
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String model;

  GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig();

  GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig.fromJson(
      core.Map _json) {
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (model != null) {
      _json["model"] = model;
    }
    return _json;
  }
}

/// Video frame level annotation results for explicit content.
class GoogleCloudVideointelligenceV1ExplicitContentFrame {
  /// Likelihood of the pornography content..
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Unspecified likelihood.
  /// - "VERY_UNLIKELY" : Very unlikely.
  /// - "UNLIKELY" : Unlikely.
  /// - "POSSIBLE" : Possible.
  /// - "LIKELY" : Likely.
  /// - "VERY_LIKELY" : Very likely.
  core.String pornographyLikelihood;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1ExplicitContentFrame();

  GoogleCloudVideointelligenceV1ExplicitContentFrame.fromJson(core.Map _json) {
    if (_json.containsKey("pornographyLikelihood")) {
      pornographyLikelihood = _json["pornographyLikelihood"];
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pornographyLikelihood != null) {
      _json["pornographyLikelihood"] = pornographyLikelihood;
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Label annotation.
class GoogleCloudVideointelligenceV1LabelAnnotation {
  /// Common categories for the detected entity.
  /// E.g. when the label is `Terrier` the category is likely `dog`. And in some
  /// cases there might be more than one categories e.g. `Terrier` could also be
  /// a `pet`.
  core.List<GoogleCloudVideointelligenceV1Entity> categoryEntities;

  /// Detected entity.
  GoogleCloudVideointelligenceV1Entity entity;

  /// All video frames where a label was detected.
  core.List<GoogleCloudVideointelligenceV1LabelFrame> frames;

  /// All video segments where a label was detected.
  core.List<GoogleCloudVideointelligenceV1LabelSegment> segments;

  GoogleCloudVideointelligenceV1LabelAnnotation();

  GoogleCloudVideointelligenceV1LabelAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("categoryEntities")) {
      categoryEntities = (_json["categoryEntities"] as core.List)
          .map<GoogleCloudVideointelligenceV1Entity>((value) =>
              new GoogleCloudVideointelligenceV1Entity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("entity")) {
      entity =
          new GoogleCloudVideointelligenceV1Entity.fromJson(_json["entity"]);
    }
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1LabelFrame>((value) =>
              new GoogleCloudVideointelligenceV1LabelFrame.fromJson(value))
          .toList();
    }
    if (_json.containsKey("segments")) {
      segments = (_json["segments"] as core.List)
          .map<GoogleCloudVideointelligenceV1LabelSegment>((value) =>
              new GoogleCloudVideointelligenceV1LabelSegment.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categoryEntities != null) {
      _json["categoryEntities"] =
          categoryEntities.map((value) => (value).toJson()).toList();
    }
    if (entity != null) {
      _json["entity"] = (entity).toJson();
    }
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    if (segments != null) {
      _json["segments"] = segments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Config for LABEL_DETECTION.
class GoogleCloudVideointelligenceV1LabelDetectionConfig {
  /// What labels should be detected with LABEL_DETECTION, in addition to
  /// video-level labels or segment-level labels.
  /// If unspecified, defaults to `SHOT_MODE`.
  /// Possible string values are:
  /// - "LABEL_DETECTION_MODE_UNSPECIFIED" : Unspecified.
  /// - "SHOT_MODE" : Detect shot-level labels.
  /// - "FRAME_MODE" : Detect frame-level labels.
  /// - "SHOT_AND_FRAME_MODE" : Detect both shot-level and frame-level labels.
  core.String labelDetectionMode;

  /// Model to use for label detection.
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String model;

  /// Whether the video has been shot from a stationary (i.e. non-moving)
  /// camera.
  /// When set to true, might improve detection accuracy for moving objects.
  /// Should be used with `SHOT_AND_FRAME_MODE` enabled.
  core.bool stationaryCamera;

  GoogleCloudVideointelligenceV1LabelDetectionConfig();

  GoogleCloudVideointelligenceV1LabelDetectionConfig.fromJson(core.Map _json) {
    if (_json.containsKey("labelDetectionMode")) {
      labelDetectionMode = _json["labelDetectionMode"];
    }
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
    if (_json.containsKey("stationaryCamera")) {
      stationaryCamera = _json["stationaryCamera"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labelDetectionMode != null) {
      _json["labelDetectionMode"] = labelDetectionMode;
    }
    if (model != null) {
      _json["model"] = model;
    }
    if (stationaryCamera != null) {
      _json["stationaryCamera"] = stationaryCamera;
    }
    return _json;
  }
}

/// Video frame level annotation results for label detection.
class GoogleCloudVideointelligenceV1LabelFrame {
  /// Confidence that the label is accurate. Range: [0, 1].
  core.double confidence;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1LabelFrame();

  GoogleCloudVideointelligenceV1LabelFrame.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Video segment level annotation results for label detection.
class GoogleCloudVideointelligenceV1LabelSegment {
  /// Confidence that the label is accurate. Range: [0, 1].
  core.double confidence;

  /// Video segment where a label was detected.
  GoogleCloudVideointelligenceV1VideoSegment segment;

  GoogleCloudVideointelligenceV1LabelSegment();

  GoogleCloudVideointelligenceV1LabelSegment.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("segment")) {
      segment = new GoogleCloudVideointelligenceV1VideoSegment.fromJson(
          _json["segment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (segment != null) {
      _json["segment"] = (segment).toJson();
    }
    return _json;
  }
}

/// Config for SHOT_CHANGE_DETECTION.
class GoogleCloudVideointelligenceV1ShotChangeDetectionConfig {
  /// Model to use for shot change detection.
  /// Supported values: "builtin/stable" (the default if unset) and
  /// "builtin/latest".
  core.String model;

  GoogleCloudVideointelligenceV1ShotChangeDetectionConfig();

  GoogleCloudVideointelligenceV1ShotChangeDetectionConfig.fromJson(
      core.Map _json) {
    if (_json.containsKey("model")) {
      model = _json["model"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (model != null) {
      _json["model"] = model;
    }
    return _json;
  }
}

/// Provides "hints" to the speech recognizer to favor specific words and
/// phrases
/// in the results.
class GoogleCloudVideointelligenceV1SpeechContext {
  /// *Optional* A list of strings containing words and phrases "hints" so that
  /// the speech recognition is more likely to recognize them. This can be used
  /// to improve the accuracy for specific words and phrases, for example, if
  /// specific commands are typically spoken by the user. This can also be used
  /// to add additional words to the vocabulary of the recognizer. See
  /// [usage limits](https://cloud.google.com/speech/limits#content).
  core.List<core.String> phrases;

  GoogleCloudVideointelligenceV1SpeechContext();

  GoogleCloudVideointelligenceV1SpeechContext.fromJson(core.Map _json) {
    if (_json.containsKey("phrases")) {
      phrases = (_json["phrases"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (phrases != null) {
      _json["phrases"] = phrases;
    }
    return _json;
  }
}

/// Alternative hypotheses (a.k.a. n-best list).
class GoogleCloudVideointelligenceV1SpeechRecognitionAlternative {
  /// The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is typically provided only for the top hypothesis, and
  /// only for `is_final=true` results. Clients should not rely on the
  /// `confidence` field as it is not guaranteed to be accurate or consistent.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not
  /// set.
  core.double confidence;

  /// Transcript text representing the words that the user spoke.
  core.String transcript;

  /// A list of word-specific information for each recognized word.
  core.List<GoogleCloudVideointelligenceV1WordInfo> words;

  GoogleCloudVideointelligenceV1SpeechRecognitionAlternative();

  GoogleCloudVideointelligenceV1SpeechRecognitionAlternative.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("transcript")) {
      transcript = _json["transcript"];
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVideointelligenceV1WordInfo>((value) =>
              new GoogleCloudVideointelligenceV1WordInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (transcript != null) {
      _json["transcript"] = transcript;
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A speech recognition result corresponding to a portion of the audio.
class GoogleCloudVideointelligenceV1SpeechTranscription {
  /// May contain one or more recognition hypotheses (up to the maximum
  /// specified
  /// in `max_alternatives`).  These alternatives are ordered in terms of
  /// accuracy, with the top (first) alternative being the most probable, as
  /// ranked by the recognizer.
  core.List<GoogleCloudVideointelligenceV1SpeechRecognitionAlternative>
      alternatives;

  /// Output only. The
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the
  /// language in this result. This language code was detected to have the most
  /// likelihood of being spoken in the audio.
  core.String languageCode;

  GoogleCloudVideointelligenceV1SpeechTranscription();

  GoogleCloudVideointelligenceV1SpeechTranscription.fromJson(core.Map _json) {
    if (_json.containsKey("alternatives")) {
      alternatives = (_json["alternatives"] as core.List)
          .map<GoogleCloudVideointelligenceV1SpeechRecognitionAlternative>(
              (value) =>
                  new GoogleCloudVideointelligenceV1SpeechRecognitionAlternative
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternatives != null) {
      _json["alternatives"] =
          alternatives.map((value) => (value).toJson()).toList();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Config for SPEECH_TRANSCRIPTION.
class GoogleCloudVideointelligenceV1SpeechTranscriptionConfig {
  /// *Optional* For file formats, such as MXF or MKV, supporting multiple audio
  /// tracks, specify up to two tracks. Default: track 0.
  core.List<core.int> audioTracks;

  /// *Optional*
  /// If set, specifies the estimated number of speakers in the conversation.
  /// If not set, defaults to '2'.
  /// Ignored unless enable_speaker_diarization is set to true.
  core.int diarizationSpeakerCount;

  /// *Optional* If 'true', adds punctuation to recognition result hypotheses.
  /// This feature is only available in select languages. Setting this for
  /// requests in other languages has no effect at all. The default 'false'
  /// value
  /// does not add punctuation to result hypotheses. NOTE: "This is currently
  /// offered as an experimental service, complimentary to all users. In the
  /// future this may be exclusively available as a premium feature."
  core.bool enableAutomaticPunctuation;

  /// *Optional* If 'true', enables speaker detection for each recognized word
  /// in
  /// the top alternative of the recognition result using a speaker_tag provided
  /// in the WordInfo.
  /// Note: When this is true, we send all the words from the beginning of the
  /// audio for the top alternative in every consecutive responses.
  /// This is done in order to improve our speaker tags as our models learn to
  /// identify the speakers in the conversation over time.
  core.bool enableSpeakerDiarization;

  /// *Optional* If `true`, the top result includes a list of words and the
  /// confidence for those words. If `false`, no word-level confidence
  /// information is returned. The default is `false`.
  core.bool enableWordConfidence;

  /// *Optional* If set to `true`, the server will attempt to filter out
  /// profanities, replacing all but the initial character in each filtered word
  /// with asterisks, e.g. "f***". If set to `false` or omitted, profanities
  /// won't be filtered out.
  core.bool filterProfanity;

  /// *Required* The language of the supplied audio as a
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag.
  /// Example: "en-US".
  /// See [Language Support](https://cloud.google.com/speech/docs/languages)
  /// for a list of the currently supported language codes.
  core.String languageCode;

  /// *Optional* Maximum number of recognition hypotheses to be returned.
  /// Specifically, the maximum number of `SpeechRecognitionAlternative`
  /// messages
  /// within each `SpeechTranscription`. The server may return fewer than
  /// `max_alternatives`. Valid values are `0`-`30`. A value of `0` or `1` will
  /// return a maximum of one. If omitted, will return a maximum of one.
  core.int maxAlternatives;

  /// *Optional* A means to provide context to assist the speech recognition.
  core.List<GoogleCloudVideointelligenceV1SpeechContext> speechContexts;

  GoogleCloudVideointelligenceV1SpeechTranscriptionConfig();

  GoogleCloudVideointelligenceV1SpeechTranscriptionConfig.fromJson(
      core.Map _json) {
    if (_json.containsKey("audioTracks")) {
      audioTracks = (_json["audioTracks"] as core.List).cast<core.int>();
    }
    if (_json.containsKey("diarizationSpeakerCount")) {
      diarizationSpeakerCount = _json["diarizationSpeakerCount"];
    }
    if (_json.containsKey("enableAutomaticPunctuation")) {
      enableAutomaticPunctuation = _json["enableAutomaticPunctuation"];
    }
    if (_json.containsKey("enableSpeakerDiarization")) {
      enableSpeakerDiarization = _json["enableSpeakerDiarization"];
    }
    if (_json.containsKey("enableWordConfidence")) {
      enableWordConfidence = _json["enableWordConfidence"];
    }
    if (_json.containsKey("filterProfanity")) {
      filterProfanity = _json["filterProfanity"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("maxAlternatives")) {
      maxAlternatives = _json["maxAlternatives"];
    }
    if (_json.containsKey("speechContexts")) {
      speechContexts = (_json["speechContexts"] as core.List)
          .map<GoogleCloudVideointelligenceV1SpeechContext>((value) =>
              new GoogleCloudVideointelligenceV1SpeechContext.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audioTracks != null) {
      _json["audioTracks"] = audioTracks;
    }
    if (diarizationSpeakerCount != null) {
      _json["diarizationSpeakerCount"] = diarizationSpeakerCount;
    }
    if (enableAutomaticPunctuation != null) {
      _json["enableAutomaticPunctuation"] = enableAutomaticPunctuation;
    }
    if (enableSpeakerDiarization != null) {
      _json["enableSpeakerDiarization"] = enableSpeakerDiarization;
    }
    if (enableWordConfidence != null) {
      _json["enableWordConfidence"] = enableWordConfidence;
    }
    if (filterProfanity != null) {
      _json["filterProfanity"] = filterProfanity;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (maxAlternatives != null) {
      _json["maxAlternatives"] = maxAlternatives;
    }
    if (speechContexts != null) {
      _json["speechContexts"] =
          speechContexts.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Annotation progress for a single video.
class GoogleCloudVideointelligenceV1VideoAnnotationProgress {
  /// Video file location in
  /// [Google Cloud Storage](https://cloud.google.com/storage/).
  core.String inputUri;

  /// Approximate percentage processed thus far. Guaranteed to be
  /// 100 when fully processed.
  core.int progressPercent;

  /// Time when the request was received.
  core.String startTime;

  /// Time of the most recent update.
  core.String updateTime;

  GoogleCloudVideointelligenceV1VideoAnnotationProgress();

  GoogleCloudVideointelligenceV1VideoAnnotationProgress.fromJson(
      core.Map _json) {
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("progressPercent")) {
      progressPercent = _json["progressPercent"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (progressPercent != null) {
      _json["progressPercent"] = progressPercent;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Annotation results for a single video.
class GoogleCloudVideointelligenceV1VideoAnnotationResults {
  /// If set, indicates an error. Note that for a single `AnnotateVideoRequest`
  /// some videos may succeed and some may fail.
  GoogleRpcStatus error;

  /// Explicit content annotation.
  GoogleCloudVideointelligenceV1ExplicitContentAnnotation explicitAnnotation;

  /// Label annotations on frame level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1LabelAnnotation>
      frameLabelAnnotations;

  /// Video file location in
  /// [Google Cloud Storage](https://cloud.google.com/storage/).
  core.String inputUri;

  /// Label annotations on video level or user specified segment level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1LabelAnnotation>
      segmentLabelAnnotations;

  /// Shot annotations. Each shot is represented as a video segment.
  core.List<GoogleCloudVideointelligenceV1VideoSegment> shotAnnotations;

  /// Label annotations on shot level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1LabelAnnotation> shotLabelAnnotations;

  /// Speech transcription.
  core.List<GoogleCloudVideointelligenceV1SpeechTranscription>
      speechTranscriptions;

  GoogleCloudVideointelligenceV1VideoAnnotationResults();

  GoogleCloudVideointelligenceV1VideoAnnotationResults.fromJson(
      core.Map _json) {
    if (_json.containsKey("error")) {
      error = new GoogleRpcStatus.fromJson(_json["error"]);
    }
    if (_json.containsKey("explicitAnnotation")) {
      explicitAnnotation =
          new GoogleCloudVideointelligenceV1ExplicitContentAnnotation.fromJson(
              _json["explicitAnnotation"]);
    }
    if (_json.containsKey("frameLabelAnnotations")) {
      frameLabelAnnotations = (_json["frameLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1LabelAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("segmentLabelAnnotations")) {
      segmentLabelAnnotations = (_json["segmentLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1LabelAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("shotAnnotations")) {
      shotAnnotations = (_json["shotAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1VideoSegment>((value) =>
              new GoogleCloudVideointelligenceV1VideoSegment.fromJson(value))
          .toList();
    }
    if (_json.containsKey("shotLabelAnnotations")) {
      shotLabelAnnotations = (_json["shotLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1LabelAnnotation.fromJson(value))
          .toList();
    }
    if (_json.containsKey("speechTranscriptions")) {
      speechTranscriptions = (_json["speechTranscriptions"] as core.List)
          .map<GoogleCloudVideointelligenceV1SpeechTranscription>((value) =>
              new GoogleCloudVideointelligenceV1SpeechTranscription.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (explicitAnnotation != null) {
      _json["explicitAnnotation"] = (explicitAnnotation).toJson();
    }
    if (frameLabelAnnotations != null) {
      _json["frameLabelAnnotations"] =
          frameLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (segmentLabelAnnotations != null) {
      _json["segmentLabelAnnotations"] =
          segmentLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (shotAnnotations != null) {
      _json["shotAnnotations"] =
          shotAnnotations.map((value) => (value).toJson()).toList();
    }
    if (shotLabelAnnotations != null) {
      _json["shotLabelAnnotations"] =
          shotLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (speechTranscriptions != null) {
      _json["speechTranscriptions"] =
          speechTranscriptions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video context and/or feature-specific parameters.
class GoogleCloudVideointelligenceV1VideoContext {
  /// Config for EXPLICIT_CONTENT_DETECTION.
  GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig
      explicitContentDetectionConfig;

  /// Config for LABEL_DETECTION.
  GoogleCloudVideointelligenceV1LabelDetectionConfig labelDetectionConfig;

  /// Video segments to annotate. The segments may overlap and are not required
  /// to be contiguous or span the whole video. If unspecified, each video is
  /// treated as a single segment.
  core.List<GoogleCloudVideointelligenceV1VideoSegment> segments;

  /// Config for SHOT_CHANGE_DETECTION.
  GoogleCloudVideointelligenceV1ShotChangeDetectionConfig
      shotChangeDetectionConfig;

  /// Config for SPEECH_TRANSCRIPTION.
  GoogleCloudVideointelligenceV1SpeechTranscriptionConfig
      speechTranscriptionConfig;

  GoogleCloudVideointelligenceV1VideoContext();

  GoogleCloudVideointelligenceV1VideoContext.fromJson(core.Map _json) {
    if (_json.containsKey("explicitContentDetectionConfig")) {
      explicitContentDetectionConfig =
          new GoogleCloudVideointelligenceV1ExplicitContentDetectionConfig
              .fromJson(_json["explicitContentDetectionConfig"]);
    }
    if (_json.containsKey("labelDetectionConfig")) {
      labelDetectionConfig =
          new GoogleCloudVideointelligenceV1LabelDetectionConfig.fromJson(
              _json["labelDetectionConfig"]);
    }
    if (_json.containsKey("segments")) {
      segments = (_json["segments"] as core.List)
          .map<GoogleCloudVideointelligenceV1VideoSegment>((value) =>
              new GoogleCloudVideointelligenceV1VideoSegment.fromJson(value))
          .toList();
    }
    if (_json.containsKey("shotChangeDetectionConfig")) {
      shotChangeDetectionConfig =
          new GoogleCloudVideointelligenceV1ShotChangeDetectionConfig.fromJson(
              _json["shotChangeDetectionConfig"]);
    }
    if (_json.containsKey("speechTranscriptionConfig")) {
      speechTranscriptionConfig =
          new GoogleCloudVideointelligenceV1SpeechTranscriptionConfig.fromJson(
              _json["speechTranscriptionConfig"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (explicitContentDetectionConfig != null) {
      _json["explicitContentDetectionConfig"] =
          (explicitContentDetectionConfig).toJson();
    }
    if (labelDetectionConfig != null) {
      _json["labelDetectionConfig"] = (labelDetectionConfig).toJson();
    }
    if (segments != null) {
      _json["segments"] = segments.map((value) => (value).toJson()).toList();
    }
    if (shotChangeDetectionConfig != null) {
      _json["shotChangeDetectionConfig"] = (shotChangeDetectionConfig).toJson();
    }
    if (speechTranscriptionConfig != null) {
      _json["speechTranscriptionConfig"] = (speechTranscriptionConfig).toJson();
    }
    return _json;
  }
}

/// Video segment.
class GoogleCloudVideointelligenceV1VideoSegment {
  /// Time-offset, relative to the beginning of the video,
  /// corresponding to the end of the segment (inclusive).
  core.String endTimeOffset;

  /// Time-offset, relative to the beginning of the video,
  /// corresponding to the start of the segment (inclusive).
  core.String startTimeOffset;

  GoogleCloudVideointelligenceV1VideoSegment();

  GoogleCloudVideointelligenceV1VideoSegment.fromJson(core.Map _json) {
    if (_json.containsKey("endTimeOffset")) {
      endTimeOffset = _json["endTimeOffset"];
    }
    if (_json.containsKey("startTimeOffset")) {
      startTimeOffset = _json["startTimeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTimeOffset != null) {
      _json["endTimeOffset"] = endTimeOffset;
    }
    if (startTimeOffset != null) {
      _json["startTimeOffset"] = startTimeOffset;
    }
    return _json;
  }
}

/// Word-specific information for recognized words. Word information is only
/// included in the response when certain request parameters are set, such
/// as `enable_word_time_offsets`.
class GoogleCloudVideointelligenceV1WordInfo {
  /// Output only. The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is set only for the top alternative.
  /// This field is not guaranteed to be accurate and users should not rely on
  /// it
  /// to be always provided.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not
  /// set.
  core.double confidence;

  /// Time offset relative to the beginning of the audio, and
  /// corresponding to the end of the spoken word. This field is only set if
  /// `enable_word_time_offsets=true` and only in the top hypothesis. This is an
  /// experimental feature and the accuracy of the time offset can vary.
  core.String endTime;

  /// Output only. A distinct integer value is assigned for every speaker within
  /// the audio. This field specifies which one of those speakers was detected
  /// to
  /// have spoken this word. Value ranges from 1 up to
  /// diarization_speaker_count,
  /// and is only set if speaker diarization is enabled.
  core.int speakerTag;

  /// Time offset relative to the beginning of the audio, and
  /// corresponding to the start of the spoken word. This field is only set if
  /// `enable_word_time_offsets=true` and only in the top hypothesis. This is an
  /// experimental feature and the accuracy of the time offset can vary.
  core.String startTime;

  /// The word corresponding to this set of information.
  core.String word;

  GoogleCloudVideointelligenceV1WordInfo();

  GoogleCloudVideointelligenceV1WordInfo.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("speakerTag")) {
      speakerTag = _json["speakerTag"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("word")) {
      word = _json["word"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (speakerTag != null) {
      _json["speakerTag"] = speakerTag;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (word != null) {
      _json["word"] = word;
    }
    return _json;
  }
}

/// Video annotation progress. Included in the `metadata`
/// field of the `Operation` returned by the `GetOperation`
/// call of the `google::longrunning::Operations` service.
class GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress {
  /// Progress metadata for all videos specified in `AnnotateVideoRequest`.
  core.List<GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress>
      annotationProgress;

  GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress();

  GoogleCloudVideointelligenceV1beta2AnnotateVideoProgress.fromJson(
      core.Map _json) {
    if (_json.containsKey("annotationProgress")) {
      annotationProgress = (_json["annotationProgress"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress>(
              (value) =>
                  new GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annotationProgress != null) {
      _json["annotationProgress"] =
          annotationProgress.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video annotation response. Included in the `response`
/// field of the `Operation` returned by the `GetOperation`
/// call of the `google::longrunning::Operations` service.
class GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse {
  /// Annotation results for all videos specified in `AnnotateVideoRequest`.
  core.List<GoogleCloudVideointelligenceV1beta2VideoAnnotationResults>
      annotationResults;

  GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse();

  GoogleCloudVideointelligenceV1beta2AnnotateVideoResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("annotationResults")) {
      annotationResults = (_json["annotationResults"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2VideoAnnotationResults>(
              (value) =>
                  new GoogleCloudVideointelligenceV1beta2VideoAnnotationResults
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annotationResults != null) {
      _json["annotationResults"] =
          annotationResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Detected entity from video analysis.
class GoogleCloudVideointelligenceV1beta2Entity {
  /// Textual description, e.g. `Fixed-gear bicycle`.
  core.String description;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String entityId;

  /// Language code for `description` in BCP-47 format.
  core.String languageCode;

  GoogleCloudVideointelligenceV1beta2Entity();

  GoogleCloudVideointelligenceV1beta2Entity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Explicit content annotation (based on per-frame visual signals only).
/// If no explicit content has been detected in a frame, no annotations are
/// present for that frame.
class GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation {
  /// All video frames where explicit content was detected.
  core.List<GoogleCloudVideointelligenceV1beta2ExplicitContentFrame> frames;

  GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation();

  GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation.fromJson(
      core.Map _json) {
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2ExplicitContentFrame>(
              (value) =>
                  new GoogleCloudVideointelligenceV1beta2ExplicitContentFrame
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video frame level annotation results for explicit content.
class GoogleCloudVideointelligenceV1beta2ExplicitContentFrame {
  /// Likelihood of the pornography content..
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Unspecified likelihood.
  /// - "VERY_UNLIKELY" : Very unlikely.
  /// - "UNLIKELY" : Unlikely.
  /// - "POSSIBLE" : Possible.
  /// - "LIKELY" : Likely.
  /// - "VERY_LIKELY" : Very likely.
  core.String pornographyLikelihood;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1beta2ExplicitContentFrame();

  GoogleCloudVideointelligenceV1beta2ExplicitContentFrame.fromJson(
      core.Map _json) {
    if (_json.containsKey("pornographyLikelihood")) {
      pornographyLikelihood = _json["pornographyLikelihood"];
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pornographyLikelihood != null) {
      _json["pornographyLikelihood"] = pornographyLikelihood;
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Label annotation.
class GoogleCloudVideointelligenceV1beta2LabelAnnotation {
  /// Common categories for the detected entity.
  /// E.g. when the label is `Terrier` the category is likely `dog`. And in some
  /// cases there might be more than one categories e.g. `Terrier` could also be
  /// a `pet`.
  core.List<GoogleCloudVideointelligenceV1beta2Entity> categoryEntities;

  /// Detected entity.
  GoogleCloudVideointelligenceV1beta2Entity entity;

  /// All video frames where a label was detected.
  core.List<GoogleCloudVideointelligenceV1beta2LabelFrame> frames;

  /// All video segments where a label was detected.
  core.List<GoogleCloudVideointelligenceV1beta2LabelSegment> segments;

  GoogleCloudVideointelligenceV1beta2LabelAnnotation();

  GoogleCloudVideointelligenceV1beta2LabelAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("categoryEntities")) {
      categoryEntities = (_json["categoryEntities"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2Entity>((value) =>
              new GoogleCloudVideointelligenceV1beta2Entity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("entity")) {
      entity = new GoogleCloudVideointelligenceV1beta2Entity.fromJson(
          _json["entity"]);
    }
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2LabelFrame>((value) =>
              new GoogleCloudVideointelligenceV1beta2LabelFrame.fromJson(value))
          .toList();
    }
    if (_json.containsKey("segments")) {
      segments = (_json["segments"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2LabelSegment>((value) =>
              new GoogleCloudVideointelligenceV1beta2LabelSegment.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categoryEntities != null) {
      _json["categoryEntities"] =
          categoryEntities.map((value) => (value).toJson()).toList();
    }
    if (entity != null) {
      _json["entity"] = (entity).toJson();
    }
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    if (segments != null) {
      _json["segments"] = segments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video frame level annotation results for label detection.
class GoogleCloudVideointelligenceV1beta2LabelFrame {
  /// Confidence that the label is accurate. Range: [0, 1].
  core.double confidence;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1beta2LabelFrame();

  GoogleCloudVideointelligenceV1beta2LabelFrame.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Video segment level annotation results for label detection.
class GoogleCloudVideointelligenceV1beta2LabelSegment {
  /// Confidence that the label is accurate. Range: [0, 1].
  core.double confidence;

  /// Video segment where a label was detected.
  GoogleCloudVideointelligenceV1beta2VideoSegment segment;

  GoogleCloudVideointelligenceV1beta2LabelSegment();

  GoogleCloudVideointelligenceV1beta2LabelSegment.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("segment")) {
      segment = new GoogleCloudVideointelligenceV1beta2VideoSegment.fromJson(
          _json["segment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (segment != null) {
      _json["segment"] = (segment).toJson();
    }
    return _json;
  }
}

/// Alternative hypotheses (a.k.a. n-best list).
class GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative {
  /// The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is typically provided only for the top hypothesis, and
  /// only for `is_final=true` results. Clients should not rely on the
  /// `confidence` field as it is not guaranteed to be accurate or consistent.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not
  /// set.
  core.double confidence;

  /// Transcript text representing the words that the user spoke.
  core.String transcript;

  /// A list of word-specific information for each recognized word.
  core.List<GoogleCloudVideointelligenceV1beta2WordInfo> words;

  GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative();

  GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("transcript")) {
      transcript = _json["transcript"];
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2WordInfo>((value) =>
              new GoogleCloudVideointelligenceV1beta2WordInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (transcript != null) {
      _json["transcript"] = transcript;
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A speech recognition result corresponding to a portion of the audio.
class GoogleCloudVideointelligenceV1beta2SpeechTranscription {
  /// May contain one or more recognition hypotheses (up to the maximum
  /// specified
  /// in `max_alternatives`).  These alternatives are ordered in terms of
  /// accuracy, with the top (first) alternative being the most probable, as
  /// ranked by the recognizer.
  core.List<GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative>
      alternatives;

  /// Output only. The
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the
  /// language in this result. This language code was detected to have the most
  /// likelihood of being spoken in the audio.
  core.String languageCode;

  GoogleCloudVideointelligenceV1beta2SpeechTranscription();

  GoogleCloudVideointelligenceV1beta2SpeechTranscription.fromJson(
      core.Map _json) {
    if (_json.containsKey("alternatives")) {
      alternatives = (_json["alternatives"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative>(
              (value) =>
                  new GoogleCloudVideointelligenceV1beta2SpeechRecognitionAlternative
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternatives != null) {
      _json["alternatives"] =
          alternatives.map((value) => (value).toJson()).toList();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Annotation progress for a single video.
class GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress {
  /// Video file location in
  /// [Google Cloud Storage](https://cloud.google.com/storage/).
  core.String inputUri;

  /// Approximate percentage processed thus far. Guaranteed to be
  /// 100 when fully processed.
  core.int progressPercent;

  /// Time when the request was received.
  core.String startTime;

  /// Time of the most recent update.
  core.String updateTime;

  GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress();

  GoogleCloudVideointelligenceV1beta2VideoAnnotationProgress.fromJson(
      core.Map _json) {
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("progressPercent")) {
      progressPercent = _json["progressPercent"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (progressPercent != null) {
      _json["progressPercent"] = progressPercent;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Annotation results for a single video.
class GoogleCloudVideointelligenceV1beta2VideoAnnotationResults {
  /// If set, indicates an error. Note that for a single `AnnotateVideoRequest`
  /// some videos may succeed and some may fail.
  GoogleRpcStatus error;

  /// Explicit content annotation.
  GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
      explicitAnnotation;

  /// Label annotations on frame level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1beta2LabelAnnotation>
      frameLabelAnnotations;

  /// Video file location in
  /// [Google Cloud Storage](https://cloud.google.com/storage/).
  core.String inputUri;

  /// Label annotations on video level or user specified segment level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1beta2LabelAnnotation>
      segmentLabelAnnotations;

  /// Shot annotations. Each shot is represented as a video segment.
  core.List<GoogleCloudVideointelligenceV1beta2VideoSegment> shotAnnotations;

  /// Label annotations on shot level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1beta2LabelAnnotation>
      shotLabelAnnotations;

  /// Speech transcription.
  core.List<GoogleCloudVideointelligenceV1beta2SpeechTranscription>
      speechTranscriptions;

  GoogleCloudVideointelligenceV1beta2VideoAnnotationResults();

  GoogleCloudVideointelligenceV1beta2VideoAnnotationResults.fromJson(
      core.Map _json) {
    if (_json.containsKey("error")) {
      error = new GoogleRpcStatus.fromJson(_json["error"]);
    }
    if (_json.containsKey("explicitAnnotation")) {
      explicitAnnotation =
          new GoogleCloudVideointelligenceV1beta2ExplicitContentAnnotation
              .fromJson(_json["explicitAnnotation"]);
    }
    if (_json.containsKey("frameLabelAnnotations")) {
      frameLabelAnnotations = (_json["frameLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1beta2LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("segmentLabelAnnotations")) {
      segmentLabelAnnotations = (_json["segmentLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1beta2LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("shotAnnotations")) {
      shotAnnotations = (_json["shotAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2VideoSegment>((value) =>
              new GoogleCloudVideointelligenceV1beta2VideoSegment.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("shotLabelAnnotations")) {
      shotLabelAnnotations = (_json["shotLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1beta2LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("speechTranscriptions")) {
      speechTranscriptions = (_json["speechTranscriptions"] as core.List)
          .map<GoogleCloudVideointelligenceV1beta2SpeechTranscription>(
              (value) =>
                  new GoogleCloudVideointelligenceV1beta2SpeechTranscription
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (explicitAnnotation != null) {
      _json["explicitAnnotation"] = (explicitAnnotation).toJson();
    }
    if (frameLabelAnnotations != null) {
      _json["frameLabelAnnotations"] =
          frameLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (segmentLabelAnnotations != null) {
      _json["segmentLabelAnnotations"] =
          segmentLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (shotAnnotations != null) {
      _json["shotAnnotations"] =
          shotAnnotations.map((value) => (value).toJson()).toList();
    }
    if (shotLabelAnnotations != null) {
      _json["shotLabelAnnotations"] =
          shotLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (speechTranscriptions != null) {
      _json["speechTranscriptions"] =
          speechTranscriptions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video segment.
class GoogleCloudVideointelligenceV1beta2VideoSegment {
  /// Time-offset, relative to the beginning of the video,
  /// corresponding to the end of the segment (inclusive).
  core.String endTimeOffset;

  /// Time-offset, relative to the beginning of the video,
  /// corresponding to the start of the segment (inclusive).
  core.String startTimeOffset;

  GoogleCloudVideointelligenceV1beta2VideoSegment();

  GoogleCloudVideointelligenceV1beta2VideoSegment.fromJson(core.Map _json) {
    if (_json.containsKey("endTimeOffset")) {
      endTimeOffset = _json["endTimeOffset"];
    }
    if (_json.containsKey("startTimeOffset")) {
      startTimeOffset = _json["startTimeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTimeOffset != null) {
      _json["endTimeOffset"] = endTimeOffset;
    }
    if (startTimeOffset != null) {
      _json["startTimeOffset"] = startTimeOffset;
    }
    return _json;
  }
}

/// Word-specific information for recognized words. Word information is only
/// included in the response when certain request parameters are set, such
/// as `enable_word_time_offsets`.
class GoogleCloudVideointelligenceV1beta2WordInfo {
  /// Output only. The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is set only for the top alternative.
  /// This field is not guaranteed to be accurate and users should not rely on
  /// it
  /// to be always provided.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not
  /// set.
  core.double confidence;

  /// Time offset relative to the beginning of the audio, and
  /// corresponding to the end of the spoken word. This field is only set if
  /// `enable_word_time_offsets=true` and only in the top hypothesis. This is an
  /// experimental feature and the accuracy of the time offset can vary.
  core.String endTime;

  /// Output only. A distinct integer value is assigned for every speaker within
  /// the audio. This field specifies which one of those speakers was detected
  /// to
  /// have spoken this word. Value ranges from 1 up to
  /// diarization_speaker_count,
  /// and is only set if speaker diarization is enabled.
  core.int speakerTag;

  /// Time offset relative to the beginning of the audio, and
  /// corresponding to the start of the spoken word. This field is only set if
  /// `enable_word_time_offsets=true` and only in the top hypothesis. This is an
  /// experimental feature and the accuracy of the time offset can vary.
  core.String startTime;

  /// The word corresponding to this set of information.
  core.String word;

  GoogleCloudVideointelligenceV1beta2WordInfo();

  GoogleCloudVideointelligenceV1beta2WordInfo.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("speakerTag")) {
      speakerTag = _json["speakerTag"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("word")) {
      word = _json["word"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (speakerTag != null) {
      _json["speakerTag"] = speakerTag;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (word != null) {
      _json["word"] = word;
    }
    return _json;
  }
}

/// Video annotation progress. Included in the `metadata`
/// field of the `Operation` returned by the `GetOperation`
/// call of the `google::longrunning::Operations` service.
class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress {
  /// Progress metadata for all videos specified in `AnnotateVideoRequest`.
  core.List<GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress>
      annotationProgress;

  GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress();

  GoogleCloudVideointelligenceV1p1beta1AnnotateVideoProgress.fromJson(
      core.Map _json) {
    if (_json.containsKey("annotationProgress")) {
      annotationProgress = (_json["annotationProgress"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annotationProgress != null) {
      _json["annotationProgress"] =
          annotationProgress.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video annotation response. Included in the `response`
/// field of the `Operation` returned by the `GetOperation`
/// call of the `google::longrunning::Operations` service.
class GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse {
  /// Annotation results for all videos specified in `AnnotateVideoRequest`.
  core.List<GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults>
      annotationResults;

  GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse();

  GoogleCloudVideointelligenceV1p1beta1AnnotateVideoResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("annotationResults")) {
      annotationResults = (_json["annotationResults"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annotationResults != null) {
      _json["annotationResults"] =
          annotationResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Detected entity from video analysis.
class GoogleCloudVideointelligenceV1p1beta1Entity {
  /// Textual description, e.g. `Fixed-gear bicycle`.
  core.String description;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String entityId;

  /// Language code for `description` in BCP-47 format.
  core.String languageCode;

  GoogleCloudVideointelligenceV1p1beta1Entity();

  GoogleCloudVideointelligenceV1p1beta1Entity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Explicit content annotation (based on per-frame visual signals only).
/// If no explicit content has been detected in a frame, no annotations are
/// present for that frame.
class GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation {
  /// All video frames where explicit content was detected.
  core.List<GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame> frames;

  GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation();

  GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation.fromJson(
      core.Map _json) {
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video frame level annotation results for explicit content.
class GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame {
  /// Likelihood of the pornography content..
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Unspecified likelihood.
  /// - "VERY_UNLIKELY" : Very unlikely.
  /// - "UNLIKELY" : Unlikely.
  /// - "POSSIBLE" : Possible.
  /// - "LIKELY" : Likely.
  /// - "VERY_LIKELY" : Very likely.
  core.String pornographyLikelihood;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame();

  GoogleCloudVideointelligenceV1p1beta1ExplicitContentFrame.fromJson(
      core.Map _json) {
    if (_json.containsKey("pornographyLikelihood")) {
      pornographyLikelihood = _json["pornographyLikelihood"];
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pornographyLikelihood != null) {
      _json["pornographyLikelihood"] = pornographyLikelihood;
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Label annotation.
class GoogleCloudVideointelligenceV1p1beta1LabelAnnotation {
  /// Common categories for the detected entity.
  /// E.g. when the label is `Terrier` the category is likely `dog`. And in some
  /// cases there might be more than one categories e.g. `Terrier` could also be
  /// a `pet`.
  core.List<GoogleCloudVideointelligenceV1p1beta1Entity> categoryEntities;

  /// Detected entity.
  GoogleCloudVideointelligenceV1p1beta1Entity entity;

  /// All video frames where a label was detected.
  core.List<GoogleCloudVideointelligenceV1p1beta1LabelFrame> frames;

  /// All video segments where a label was detected.
  core.List<GoogleCloudVideointelligenceV1p1beta1LabelSegment> segments;

  GoogleCloudVideointelligenceV1p1beta1LabelAnnotation();

  GoogleCloudVideointelligenceV1p1beta1LabelAnnotation.fromJson(
      core.Map _json) {
    if (_json.containsKey("categoryEntities")) {
      categoryEntities = (_json["categoryEntities"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1Entity>((value) =>
              new GoogleCloudVideointelligenceV1p1beta1Entity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("entity")) {
      entity = new GoogleCloudVideointelligenceV1p1beta1Entity.fromJson(
          _json["entity"]);
    }
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1LabelFrame>((value) =>
              new GoogleCloudVideointelligenceV1p1beta1LabelFrame.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("segments")) {
      segments = (_json["segments"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1LabelSegment>((value) =>
              new GoogleCloudVideointelligenceV1p1beta1LabelSegment.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categoryEntities != null) {
      _json["categoryEntities"] =
          categoryEntities.map((value) => (value).toJson()).toList();
    }
    if (entity != null) {
      _json["entity"] = (entity).toJson();
    }
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    if (segments != null) {
      _json["segments"] = segments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video frame level annotation results for label detection.
class GoogleCloudVideointelligenceV1p1beta1LabelFrame {
  /// Confidence that the label is accurate. Range: [0, 1].
  core.double confidence;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1p1beta1LabelFrame();

  GoogleCloudVideointelligenceV1p1beta1LabelFrame.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Video segment level annotation results for label detection.
class GoogleCloudVideointelligenceV1p1beta1LabelSegment {
  /// Confidence that the label is accurate. Range: [0, 1].
  core.double confidence;

  /// Video segment where a label was detected.
  GoogleCloudVideointelligenceV1p1beta1VideoSegment segment;

  GoogleCloudVideointelligenceV1p1beta1LabelSegment();

  GoogleCloudVideointelligenceV1p1beta1LabelSegment.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("segment")) {
      segment = new GoogleCloudVideointelligenceV1p1beta1VideoSegment.fromJson(
          _json["segment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (segment != null) {
      _json["segment"] = (segment).toJson();
    }
    return _json;
  }
}

/// Alternative hypotheses (a.k.a. n-best list).
class GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative {
  /// The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is typically provided only for the top hypothesis, and
  /// only for `is_final=true` results. Clients should not rely on the
  /// `confidence` field as it is not guaranteed to be accurate or consistent.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not
  /// set.
  core.double confidence;

  /// Transcript text representing the words that the user spoke.
  core.String transcript;

  /// A list of word-specific information for each recognized word.
  core.List<GoogleCloudVideointelligenceV1p1beta1WordInfo> words;

  GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative();

  GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("transcript")) {
      transcript = _json["transcript"];
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1WordInfo>((value) =>
              new GoogleCloudVideointelligenceV1p1beta1WordInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (transcript != null) {
      _json["transcript"] = transcript;
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A speech recognition result corresponding to a portion of the audio.
class GoogleCloudVideointelligenceV1p1beta1SpeechTranscription {
  /// May contain one or more recognition hypotheses (up to the maximum
  /// specified
  /// in `max_alternatives`).  These alternatives are ordered in terms of
  /// accuracy, with the top (first) alternative being the most probable, as
  /// ranked by the recognizer.
  core.List<GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative>
      alternatives;

  /// Output only. The
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the
  /// language in this result. This language code was detected to have the most
  /// likelihood of being spoken in the audio.
  core.String languageCode;

  GoogleCloudVideointelligenceV1p1beta1SpeechTranscription();

  GoogleCloudVideointelligenceV1p1beta1SpeechTranscription.fromJson(
      core.Map _json) {
    if (_json.containsKey("alternatives")) {
      alternatives = (_json["alternatives"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p1beta1SpeechRecognitionAlternative
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternatives != null) {
      _json["alternatives"] =
          alternatives.map((value) => (value).toJson()).toList();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Annotation progress for a single video.
class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress {
  /// Video file location in
  /// [Google Cloud Storage](https://cloud.google.com/storage/).
  core.String inputUri;

  /// Approximate percentage processed thus far. Guaranteed to be
  /// 100 when fully processed.
  core.int progressPercent;

  /// Time when the request was received.
  core.String startTime;

  /// Time of the most recent update.
  core.String updateTime;

  GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress();

  GoogleCloudVideointelligenceV1p1beta1VideoAnnotationProgress.fromJson(
      core.Map _json) {
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("progressPercent")) {
      progressPercent = _json["progressPercent"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (progressPercent != null) {
      _json["progressPercent"] = progressPercent;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Annotation results for a single video.
class GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults {
  /// If set, indicates an error. Note that for a single `AnnotateVideoRequest`
  /// some videos may succeed and some may fail.
  GoogleRpcStatus error;

  /// Explicit content annotation.
  GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation
      explicitAnnotation;

  /// Label annotations on frame level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>
      frameLabelAnnotations;

  /// Video file location in
  /// [Google Cloud Storage](https://cloud.google.com/storage/).
  core.String inputUri;

  /// Label annotations on video level or user specified segment level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>
      segmentLabelAnnotations;

  /// Shot annotations. Each shot is represented as a video segment.
  core.List<GoogleCloudVideointelligenceV1p1beta1VideoSegment> shotAnnotations;

  /// Label annotations on shot level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>
      shotLabelAnnotations;

  /// Speech transcription.
  core.List<GoogleCloudVideointelligenceV1p1beta1SpeechTranscription>
      speechTranscriptions;

  GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults();

  GoogleCloudVideointelligenceV1p1beta1VideoAnnotationResults.fromJson(
      core.Map _json) {
    if (_json.containsKey("error")) {
      error = new GoogleRpcStatus.fromJson(_json["error"]);
    }
    if (_json.containsKey("explicitAnnotation")) {
      explicitAnnotation =
          new GoogleCloudVideointelligenceV1p1beta1ExplicitContentAnnotation
              .fromJson(_json["explicitAnnotation"]);
    }
    if (_json.containsKey("frameLabelAnnotations")) {
      frameLabelAnnotations = (_json["frameLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1p1beta1LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("segmentLabelAnnotations")) {
      segmentLabelAnnotations = (_json["segmentLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1p1beta1LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("shotAnnotations")) {
      shotAnnotations = (_json["shotAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1VideoSegment>((value) =>
              new GoogleCloudVideointelligenceV1p1beta1VideoSegment.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("shotLabelAnnotations")) {
      shotLabelAnnotations = (_json["shotLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1p1beta1LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("speechTranscriptions")) {
      speechTranscriptions = (_json["speechTranscriptions"] as core.List)
          .map<GoogleCloudVideointelligenceV1p1beta1SpeechTranscription>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p1beta1SpeechTranscription
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (explicitAnnotation != null) {
      _json["explicitAnnotation"] = (explicitAnnotation).toJson();
    }
    if (frameLabelAnnotations != null) {
      _json["frameLabelAnnotations"] =
          frameLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (segmentLabelAnnotations != null) {
      _json["segmentLabelAnnotations"] =
          segmentLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (shotAnnotations != null) {
      _json["shotAnnotations"] =
          shotAnnotations.map((value) => (value).toJson()).toList();
    }
    if (shotLabelAnnotations != null) {
      _json["shotLabelAnnotations"] =
          shotLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (speechTranscriptions != null) {
      _json["speechTranscriptions"] =
          speechTranscriptions.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video segment.
class GoogleCloudVideointelligenceV1p1beta1VideoSegment {
  /// Time-offset, relative to the beginning of the video,
  /// corresponding to the end of the segment (inclusive).
  core.String endTimeOffset;

  /// Time-offset, relative to the beginning of the video,
  /// corresponding to the start of the segment (inclusive).
  core.String startTimeOffset;

  GoogleCloudVideointelligenceV1p1beta1VideoSegment();

  GoogleCloudVideointelligenceV1p1beta1VideoSegment.fromJson(core.Map _json) {
    if (_json.containsKey("endTimeOffset")) {
      endTimeOffset = _json["endTimeOffset"];
    }
    if (_json.containsKey("startTimeOffset")) {
      startTimeOffset = _json["startTimeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTimeOffset != null) {
      _json["endTimeOffset"] = endTimeOffset;
    }
    if (startTimeOffset != null) {
      _json["startTimeOffset"] = startTimeOffset;
    }
    return _json;
  }
}

/// Word-specific information for recognized words. Word information is only
/// included in the response when certain request parameters are set, such
/// as `enable_word_time_offsets`.
class GoogleCloudVideointelligenceV1p1beta1WordInfo {
  /// Output only. The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is set only for the top alternative.
  /// This field is not guaranteed to be accurate and users should not rely on
  /// it
  /// to be always provided.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not
  /// set.
  core.double confidence;

  /// Time offset relative to the beginning of the audio, and
  /// corresponding to the end of the spoken word. This field is only set if
  /// `enable_word_time_offsets=true` and only in the top hypothesis. This is an
  /// experimental feature and the accuracy of the time offset can vary.
  core.String endTime;

  /// Output only. A distinct integer value is assigned for every speaker within
  /// the audio. This field specifies which one of those speakers was detected
  /// to
  /// have spoken this word. Value ranges from 1 up to
  /// diarization_speaker_count,
  /// and is only set if speaker diarization is enabled.
  core.int speakerTag;

  /// Time offset relative to the beginning of the audio, and
  /// corresponding to the start of the spoken word. This field is only set if
  /// `enable_word_time_offsets=true` and only in the top hypothesis. This is an
  /// experimental feature and the accuracy of the time offset can vary.
  core.String startTime;

  /// The word corresponding to this set of information.
  core.String word;

  GoogleCloudVideointelligenceV1p1beta1WordInfo();

  GoogleCloudVideointelligenceV1p1beta1WordInfo.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("speakerTag")) {
      speakerTag = _json["speakerTag"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("word")) {
      word = _json["word"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (speakerTag != null) {
      _json["speakerTag"] = speakerTag;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (word != null) {
      _json["word"] = word;
    }
    return _json;
  }
}

/// Video annotation progress. Included in the `metadata`
/// field of the `Operation` returned by the `GetOperation`
/// call of the `google::longrunning::Operations` service.
class GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress {
  /// Progress metadata for all videos specified in `AnnotateVideoRequest`.
  core.List<GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress>
      annotationProgress;

  GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress();

  GoogleCloudVideointelligenceV1p2beta1AnnotateVideoProgress.fromJson(
      core.Map _json) {
    if (_json.containsKey("annotationProgress")) {
      annotationProgress = (_json["annotationProgress"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annotationProgress != null) {
      _json["annotationProgress"] =
          annotationProgress.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video annotation response. Included in the `response`
/// field of the `Operation` returned by the `GetOperation`
/// call of the `google::longrunning::Operations` service.
class GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse {
  /// Annotation results for all videos specified in `AnnotateVideoRequest`.
  core.List<GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults>
      annotationResults;

  GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse();

  GoogleCloudVideointelligenceV1p2beta1AnnotateVideoResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey("annotationResults")) {
      annotationResults = (_json["annotationResults"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (annotationResults != null) {
      _json["annotationResults"] =
          annotationResults.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Detected entity from video analysis.
class GoogleCloudVideointelligenceV1p2beta1Entity {
  /// Textual description, e.g. `Fixed-gear bicycle`.
  core.String description;

  /// Opaque entity ID. Some IDs may be available in
  /// [Google Knowledge Graph Search
  /// API](https://developers.google.com/knowledge-graph/).
  core.String entityId;

  /// Language code for `description` in BCP-47 format.
  core.String languageCode;

  GoogleCloudVideointelligenceV1p2beta1Entity();

  GoogleCloudVideointelligenceV1p2beta1Entity.fromJson(core.Map _json) {
    if (_json.containsKey("description")) {
      description = _json["description"];
    }
    if (_json.containsKey("entityId")) {
      entityId = _json["entityId"];
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (description != null) {
      _json["description"] = description;
    }
    if (entityId != null) {
      _json["entityId"] = entityId;
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Explicit content annotation (based on per-frame visual signals only).
/// If no explicit content has been detected in a frame, no annotations are
/// present for that frame.
class GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation {
  /// All video frames where explicit content was detected.
  core.List<GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame> frames;

  GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation();

  GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation.fromJson(
      core.Map _json) {
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame
                      .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video frame level annotation results for explicit content.
class GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame {
  /// Likelihood of the pornography content..
  /// Possible string values are:
  /// - "LIKELIHOOD_UNSPECIFIED" : Unspecified likelihood.
  /// - "VERY_UNLIKELY" : Very unlikely.
  /// - "UNLIKELY" : Unlikely.
  /// - "POSSIBLE" : Possible.
  /// - "LIKELY" : Likely.
  /// - "VERY_LIKELY" : Very likely.
  core.String pornographyLikelihood;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame();

  GoogleCloudVideointelligenceV1p2beta1ExplicitContentFrame.fromJson(
      core.Map _json) {
    if (_json.containsKey("pornographyLikelihood")) {
      pornographyLikelihood = _json["pornographyLikelihood"];
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (pornographyLikelihood != null) {
      _json["pornographyLikelihood"] = pornographyLikelihood;
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Label annotation.
class GoogleCloudVideointelligenceV1p2beta1LabelAnnotation {
  /// Common categories for the detected entity.
  /// E.g. when the label is `Terrier` the category is likely `dog`. And in some
  /// cases there might be more than one categories e.g. `Terrier` could also be
  /// a `pet`.
  core.List<GoogleCloudVideointelligenceV1p2beta1Entity> categoryEntities;

  /// Detected entity.
  GoogleCloudVideointelligenceV1p2beta1Entity entity;

  /// All video frames where a label was detected.
  core.List<GoogleCloudVideointelligenceV1p2beta1LabelFrame> frames;

  /// All video segments where a label was detected.
  core.List<GoogleCloudVideointelligenceV1p2beta1LabelSegment> segments;

  GoogleCloudVideointelligenceV1p2beta1LabelAnnotation();

  GoogleCloudVideointelligenceV1p2beta1LabelAnnotation.fromJson(
      core.Map _json) {
    if (_json.containsKey("categoryEntities")) {
      categoryEntities = (_json["categoryEntities"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1Entity>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1Entity.fromJson(value))
          .toList();
    }
    if (_json.containsKey("entity")) {
      entity = new GoogleCloudVideointelligenceV1p2beta1Entity.fromJson(
          _json["entity"]);
    }
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1LabelFrame>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1LabelFrame.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("segments")) {
      segments = (_json["segments"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1LabelSegment>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1LabelSegment.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (categoryEntities != null) {
      _json["categoryEntities"] =
          categoryEntities.map((value) => (value).toJson()).toList();
    }
    if (entity != null) {
      _json["entity"] = (entity).toJson();
    }
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    if (segments != null) {
      _json["segments"] = segments.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video frame level annotation results for label detection.
class GoogleCloudVideointelligenceV1p2beta1LabelFrame {
  /// Confidence that the label is accurate. Range: [0, 1].
  core.double confidence;

  /// Time-offset, relative to the beginning of the video, corresponding to the
  /// video frame for this location.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1p2beta1LabelFrame();

  GoogleCloudVideointelligenceV1p2beta1LabelFrame.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Video segment level annotation results for label detection.
class GoogleCloudVideointelligenceV1p2beta1LabelSegment {
  /// Confidence that the label is accurate. Range: [0, 1].
  core.double confidence;

  /// Video segment where a label was detected.
  GoogleCloudVideointelligenceV1p2beta1VideoSegment segment;

  GoogleCloudVideointelligenceV1p2beta1LabelSegment();

  GoogleCloudVideointelligenceV1p2beta1LabelSegment.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("segment")) {
      segment = new GoogleCloudVideointelligenceV1p2beta1VideoSegment.fromJson(
          _json["segment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (segment != null) {
      _json["segment"] = (segment).toJson();
    }
    return _json;
  }
}

/// Normalized bounding box.
/// The normalized vertex coordinates are relative to the original image.
/// Range: [0, 1].
class GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox {
  /// Bottom Y coordinate.
  core.double bottom;

  /// Left X coordinate.
  core.double left;

  /// Right X coordinate.
  core.double right;

  /// Top Y coordinate.
  core.double top;

  GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox();

  GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox.fromJson(
      core.Map _json) {
    if (_json.containsKey("bottom")) {
      bottom = _json["bottom"].toDouble();
    }
    if (_json.containsKey("left")) {
      left = _json["left"].toDouble();
    }
    if (_json.containsKey("right")) {
      right = _json["right"].toDouble();
    }
    if (_json.containsKey("top")) {
      top = _json["top"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (bottom != null) {
      _json["bottom"] = bottom;
    }
    if (left != null) {
      _json["left"] = left;
    }
    if (right != null) {
      _json["right"] = right;
    }
    if (top != null) {
      _json["top"] = top;
    }
    return _json;
  }
}

/// Normalized bounding polygon for text (that might not be aligned with axis).
/// Contains list of the corner points in clockwise order starting from
/// top-left corner. For example, for a rectangular bounding box:
/// When the text is horizontal it might look like:
///         0----1
///         |    |
///         3----2
///
/// When it's clockwise rotated 180 degrees around the top-left corner it
/// becomes:
///         2----3
///         |    |
///         1----0
///
/// and the vertex order will still be (0, 1, 2, 3). Note that values can be
/// less
/// than 0, or greater than 1 due to trignometric calculations for location of
/// the box.
class GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly {
  /// Normalized vertices of the bounding polygon.
  core.List<GoogleCloudVideointelligenceV1p2beta1NormalizedVertex> vertices;

  GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly();

  GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly.fromJson(
      core.Map _json) {
    if (_json.containsKey("vertices")) {
      vertices = (_json["vertices"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1NormalizedVertex>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1NormalizedVertex
                  .fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (vertices != null) {
      _json["vertices"] = vertices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image.
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
class GoogleCloudVideointelligenceV1p2beta1NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  GoogleCloudVideointelligenceV1p2beta1NormalizedVertex();

  GoogleCloudVideointelligenceV1p2beta1NormalizedVertex.fromJson(
      core.Map _json) {
    if (_json.containsKey("x")) {
      x = _json["x"].toDouble();
    }
    if (_json.containsKey("y")) {
      y = _json["y"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (x != null) {
      _json["x"] = x;
    }
    if (y != null) {
      _json["y"] = y;
    }
    return _json;
  }
}

/// Annotations corresponding to one tracked object.
class GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation {
  /// Object category's labeling confidence of this track.
  core.double confidence;

  /// Entity to specify the object category that this track is labeled as.
  GoogleCloudVideointelligenceV1p2beta1Entity entity;

  /// Information corresponding to all frames where this object track appears.
  /// Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame
  /// messages in frames.
  /// Streaming mode: it can only be one ObjectTrackingFrame message in frames.
  core.List<GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame> frames;

  /// Non-streaming batch mode ONLY.
  /// Each object track corresponds to one video segment where it appears.
  GoogleCloudVideointelligenceV1p2beta1VideoSegment segment;

  /// Streaming mode ONLY.
  /// In streaming mode, we do not know the end time of a tracked object
  /// before it is completed. Hence, there is no VideoSegment info returned.
  /// Instead, we provide a unique identifiable integer track_id so that
  /// the customers can correlate the results of the ongoing
  /// ObjectTrackAnnotation of the same track_id over time.
  core.String trackId;

  GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation();

  GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("entity")) {
      entity = new GoogleCloudVideointelligenceV1p2beta1Entity.fromJson(
          _json["entity"]);
    }
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("segment")) {
      segment = new GoogleCloudVideointelligenceV1p2beta1VideoSegment.fromJson(
          _json["segment"]);
    }
    if (_json.containsKey("trackId")) {
      trackId = _json["trackId"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (entity != null) {
      _json["entity"] = (entity).toJson();
    }
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    if (segment != null) {
      _json["segment"] = (segment).toJson();
    }
    if (trackId != null) {
      _json["trackId"] = trackId;
    }
    return _json;
  }
}

/// Video frame level annotations for object detection and tracking. This field
/// stores per frame location, time offset, and confidence.
class GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame {
  /// The normalized bounding box location of this object track for the frame.
  GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox
      normalizedBoundingBox;

  /// The timestamp of the frame in microseconds.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame();

  GoogleCloudVideointelligenceV1p2beta1ObjectTrackingFrame.fromJson(
      core.Map _json) {
    if (_json.containsKey("normalizedBoundingBox")) {
      normalizedBoundingBox =
          new GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingBox
              .fromJson(_json["normalizedBoundingBox"]);
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (normalizedBoundingBox != null) {
      _json["normalizedBoundingBox"] = (normalizedBoundingBox).toJson();
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Alternative hypotheses (a.k.a. n-best list).
class GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative {
  /// The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is typically provided only for the top hypothesis, and
  /// only for `is_final=true` results. Clients should not rely on the
  /// `confidence` field as it is not guaranteed to be accurate or consistent.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not
  /// set.
  core.double confidence;

  /// Transcript text representing the words that the user spoke.
  core.String transcript;

  /// A list of word-specific information for each recognized word.
  core.List<GoogleCloudVideointelligenceV1p2beta1WordInfo> words;

  GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative();

  GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative.fromJson(
      core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("transcript")) {
      transcript = _json["transcript"];
    }
    if (_json.containsKey("words")) {
      words = (_json["words"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1WordInfo>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1WordInfo.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (transcript != null) {
      _json["transcript"] = transcript;
    }
    if (words != null) {
      _json["words"] = words.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// A speech recognition result corresponding to a portion of the audio.
class GoogleCloudVideointelligenceV1p2beta1SpeechTranscription {
  /// May contain one or more recognition hypotheses (up to the maximum
  /// specified
  /// in `max_alternatives`).  These alternatives are ordered in terms of
  /// accuracy, with the top (first) alternative being the most probable, as
  /// ranked by the recognizer.
  core.List<GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative>
      alternatives;

  /// Output only. The
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the
  /// language in this result. This language code was detected to have the most
  /// likelihood of being spoken in the audio.
  core.String languageCode;

  GoogleCloudVideointelligenceV1p2beta1SpeechTranscription();

  GoogleCloudVideointelligenceV1p2beta1SpeechTranscription.fromJson(
      core.Map _json) {
    if (_json.containsKey("alternatives")) {
      alternatives = (_json["alternatives"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p2beta1SpeechRecognitionAlternative
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (alternatives != null) {
      _json["alternatives"] =
          alternatives.map((value) => (value).toJson()).toList();
    }
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    return _json;
  }
}

/// Annotations related to one detected OCR text snippet. This will contain the
/// corresponding text, confidence value, and frame level information for each
/// detection.
class GoogleCloudVideointelligenceV1p2beta1TextAnnotation {
  /// All video segments where OCR detected text appears.
  core.List<GoogleCloudVideointelligenceV1p2beta1TextSegment> segments;

  /// The detected text.
  core.String text;

  GoogleCloudVideointelligenceV1p2beta1TextAnnotation();

  GoogleCloudVideointelligenceV1p2beta1TextAnnotation.fromJson(core.Map _json) {
    if (_json.containsKey("segments")) {
      segments = (_json["segments"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1TextSegment>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1TextSegment.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (segments != null) {
      _json["segments"] = segments.map((value) => (value).toJson()).toList();
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// Video frame level annotation results for text annotation (OCR).
/// Contains information regarding timestamp and bounding box locations for the
/// frames containing detected OCR text snippets.
class GoogleCloudVideointelligenceV1p2beta1TextFrame {
  /// Bounding polygon of the detected text for this frame.
  GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly
      rotatedBoundingBox;

  /// Timestamp of this frame.
  core.String timeOffset;

  GoogleCloudVideointelligenceV1p2beta1TextFrame();

  GoogleCloudVideointelligenceV1p2beta1TextFrame.fromJson(core.Map _json) {
    if (_json.containsKey("rotatedBoundingBox")) {
      rotatedBoundingBox =
          new GoogleCloudVideointelligenceV1p2beta1NormalizedBoundingPoly
              .fromJson(_json["rotatedBoundingBox"]);
    }
    if (_json.containsKey("timeOffset")) {
      timeOffset = _json["timeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (rotatedBoundingBox != null) {
      _json["rotatedBoundingBox"] = (rotatedBoundingBox).toJson();
    }
    if (timeOffset != null) {
      _json["timeOffset"] = timeOffset;
    }
    return _json;
  }
}

/// Video segment level annotation results for text detection.
class GoogleCloudVideointelligenceV1p2beta1TextSegment {
  /// Confidence for the track of detected text. It is calculated as the highest
  /// over all frames where OCR detected text appears.
  core.double confidence;

  /// Information related to the frames where OCR detected text appears.
  core.List<GoogleCloudVideointelligenceV1p2beta1TextFrame> frames;

  /// Video segment where a text snippet was detected.
  GoogleCloudVideointelligenceV1p2beta1VideoSegment segment;

  GoogleCloudVideointelligenceV1p2beta1TextSegment();

  GoogleCloudVideointelligenceV1p2beta1TextSegment.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("frames")) {
      frames = (_json["frames"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1TextFrame>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1TextFrame.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("segment")) {
      segment = new GoogleCloudVideointelligenceV1p2beta1VideoSegment.fromJson(
          _json["segment"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (frames != null) {
      _json["frames"] = frames.map((value) => (value).toJson()).toList();
    }
    if (segment != null) {
      _json["segment"] = (segment).toJson();
    }
    return _json;
  }
}

/// Annotation progress for a single video.
class GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress {
  /// Video file location in
  /// [Google Cloud Storage](https://cloud.google.com/storage/).
  core.String inputUri;

  /// Approximate percentage processed thus far. Guaranteed to be
  /// 100 when fully processed.
  core.int progressPercent;

  /// Time when the request was received.
  core.String startTime;

  /// Time of the most recent update.
  core.String updateTime;

  GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress();

  GoogleCloudVideointelligenceV1p2beta1VideoAnnotationProgress.fromJson(
      core.Map _json) {
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("progressPercent")) {
      progressPercent = _json["progressPercent"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("updateTime")) {
      updateTime = _json["updateTime"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (progressPercent != null) {
      _json["progressPercent"] = progressPercent;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (updateTime != null) {
      _json["updateTime"] = updateTime;
    }
    return _json;
  }
}

/// Annotation results for a single video.
class GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults {
  /// If set, indicates an error. Note that for a single `AnnotateVideoRequest`
  /// some videos may succeed and some may fail.
  GoogleRpcStatus error;

  /// Explicit content annotation.
  GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation
      explicitAnnotation;

  /// Label annotations on frame level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>
      frameLabelAnnotations;

  /// Video file location in
  /// [Google Cloud Storage](https://cloud.google.com/storage/).
  core.String inputUri;

  /// Annotations for list of objects detected and tracked in video.
  core.List<GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation>
      objectAnnotations;

  /// Label annotations on video level or user specified segment level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>
      segmentLabelAnnotations;

  /// Shot annotations. Each shot is represented as a video segment.
  core.List<GoogleCloudVideointelligenceV1p2beta1VideoSegment> shotAnnotations;

  /// Label annotations on shot level.
  /// There is exactly one element for each unique label.
  core.List<GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>
      shotLabelAnnotations;

  /// Speech transcription.
  core.List<GoogleCloudVideointelligenceV1p2beta1SpeechTranscription>
      speechTranscriptions;

  /// OCR text detection and tracking.
  /// Annotations for list of detected text snippets. Each will have list of
  /// frame information associated with it.
  core.List<GoogleCloudVideointelligenceV1p2beta1TextAnnotation>
      textAnnotations;

  GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults();

  GoogleCloudVideointelligenceV1p2beta1VideoAnnotationResults.fromJson(
      core.Map _json) {
    if (_json.containsKey("error")) {
      error = new GoogleRpcStatus.fromJson(_json["error"]);
    }
    if (_json.containsKey("explicitAnnotation")) {
      explicitAnnotation =
          new GoogleCloudVideointelligenceV1p2beta1ExplicitContentAnnotation
              .fromJson(_json["explicitAnnotation"]);
    }
    if (_json.containsKey("frameLabelAnnotations")) {
      frameLabelAnnotations = (_json["frameLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("inputUri")) {
      inputUri = _json["inputUri"];
    }
    if (_json.containsKey("objectAnnotations")) {
      objectAnnotations = (_json["objectAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p2beta1ObjectTrackingAnnotation
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("segmentLabelAnnotations")) {
      segmentLabelAnnotations = (_json["segmentLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("shotAnnotations")) {
      shotAnnotations = (_json["shotAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1VideoSegment>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1VideoSegment.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("shotLabelAnnotations")) {
      shotLabelAnnotations = (_json["shotLabelAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1LabelAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1LabelAnnotation.fromJson(
                  value))
          .toList();
    }
    if (_json.containsKey("speechTranscriptions")) {
      speechTranscriptions = (_json["speechTranscriptions"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1SpeechTranscription>(
              (value) =>
                  new GoogleCloudVideointelligenceV1p2beta1SpeechTranscription
                      .fromJson(value))
          .toList();
    }
    if (_json.containsKey("textAnnotations")) {
      textAnnotations = (_json["textAnnotations"] as core.List)
          .map<GoogleCloudVideointelligenceV1p2beta1TextAnnotation>((value) =>
              new GoogleCloudVideointelligenceV1p2beta1TextAnnotation.fromJson(
                  value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (explicitAnnotation != null) {
      _json["explicitAnnotation"] = (explicitAnnotation).toJson();
    }
    if (frameLabelAnnotations != null) {
      _json["frameLabelAnnotations"] =
          frameLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (inputUri != null) {
      _json["inputUri"] = inputUri;
    }
    if (objectAnnotations != null) {
      _json["objectAnnotations"] =
          objectAnnotations.map((value) => (value).toJson()).toList();
    }
    if (segmentLabelAnnotations != null) {
      _json["segmentLabelAnnotations"] =
          segmentLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (shotAnnotations != null) {
      _json["shotAnnotations"] =
          shotAnnotations.map((value) => (value).toJson()).toList();
    }
    if (shotLabelAnnotations != null) {
      _json["shotLabelAnnotations"] =
          shotLabelAnnotations.map((value) => (value).toJson()).toList();
    }
    if (speechTranscriptions != null) {
      _json["speechTranscriptions"] =
          speechTranscriptions.map((value) => (value).toJson()).toList();
    }
    if (textAnnotations != null) {
      _json["textAnnotations"] =
          textAnnotations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Video segment.
class GoogleCloudVideointelligenceV1p2beta1VideoSegment {
  /// Time-offset, relative to the beginning of the video,
  /// corresponding to the end of the segment (inclusive).
  core.String endTimeOffset;

  /// Time-offset, relative to the beginning of the video,
  /// corresponding to the start of the segment (inclusive).
  core.String startTimeOffset;

  GoogleCloudVideointelligenceV1p2beta1VideoSegment();

  GoogleCloudVideointelligenceV1p2beta1VideoSegment.fromJson(core.Map _json) {
    if (_json.containsKey("endTimeOffset")) {
      endTimeOffset = _json["endTimeOffset"];
    }
    if (_json.containsKey("startTimeOffset")) {
      startTimeOffset = _json["startTimeOffset"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (endTimeOffset != null) {
      _json["endTimeOffset"] = endTimeOffset;
    }
    if (startTimeOffset != null) {
      _json["startTimeOffset"] = startTimeOffset;
    }
    return _json;
  }
}

/// Word-specific information for recognized words. Word information is only
/// included in the response when certain request parameters are set, such
/// as `enable_word_time_offsets`.
class GoogleCloudVideointelligenceV1p2beta1WordInfo {
  /// Output only. The confidence estimate between 0.0 and 1.0. A higher number
  /// indicates an estimated greater likelihood that the recognized words are
  /// correct. This field is set only for the top alternative.
  /// This field is not guaranteed to be accurate and users should not rely on
  /// it
  /// to be always provided.
  /// The default of 0.0 is a sentinel value indicating `confidence` was not
  /// set.
  core.double confidence;

  /// Time offset relative to the beginning of the audio, and
  /// corresponding to the end of the spoken word. This field is only set if
  /// `enable_word_time_offsets=true` and only in the top hypothesis. This is an
  /// experimental feature and the accuracy of the time offset can vary.
  core.String endTime;

  /// Output only. A distinct integer value is assigned for every speaker within
  /// the audio. This field specifies which one of those speakers was detected
  /// to
  /// have spoken this word. Value ranges from 1 up to
  /// diarization_speaker_count,
  /// and is only set if speaker diarization is enabled.
  core.int speakerTag;

  /// Time offset relative to the beginning of the audio, and
  /// corresponding to the start of the spoken word. This field is only set if
  /// `enable_word_time_offsets=true` and only in the top hypothesis. This is an
  /// experimental feature and the accuracy of the time offset can vary.
  core.String startTime;

  /// The word corresponding to this set of information.
  core.String word;

  GoogleCloudVideointelligenceV1p2beta1WordInfo();

  GoogleCloudVideointelligenceV1p2beta1WordInfo.fromJson(core.Map _json) {
    if (_json.containsKey("confidence")) {
      confidence = _json["confidence"].toDouble();
    }
    if (_json.containsKey("endTime")) {
      endTime = _json["endTime"];
    }
    if (_json.containsKey("speakerTag")) {
      speakerTag = _json["speakerTag"];
    }
    if (_json.containsKey("startTime")) {
      startTime = _json["startTime"];
    }
    if (_json.containsKey("word")) {
      word = _json["word"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (confidence != null) {
      _json["confidence"] = confidence;
    }
    if (endTime != null) {
      _json["endTime"] = endTime;
    }
    if (speakerTag != null) {
      _json["speakerTag"] = speakerTag;
    }
    if (startTime != null) {
      _json["startTime"] = startTime;
    }
    if (word != null) {
      _json["word"] = word;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class GoogleLongrunningCancelOperationRequest {
  GoogleLongrunningCancelOperationRequest();

  GoogleLongrunningCancelOperationRequest.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation> operations;

  GoogleLongrunningListOperationsResponse();

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey("nextPageToken")) {
      nextPageToken = _json["nextPageToken"];
    }
    if (_json.containsKey("operations")) {
      operations = (_json["operations"] as core.List)
          .map<GoogleLongrunningOperation>(
              (value) => new GoogleLongrunningOperation.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (nextPageToken != null) {
      _json["nextPageToken"] = nextPageToken;
    }
    if (operations != null) {
      _json["operations"] =
          operations.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus error;

  /// Service-specific metadata associated with the operation.  It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata.  Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that
  /// originally returns it. If you use the default HTTP mapping, the
  /// `name` should have the format of `operations/some/unique/name`.
  core.String name;

  /// The normal response of the operation in case of success.  If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`.  If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource.  For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx`
  /// is the original method name.  For example, if the original method name
  /// is `TakeSnapshot()`, the inferred response type is
  /// `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  GoogleLongrunningOperation();

  GoogleLongrunningOperation.fromJson(core.Map _json) {
    if (_json.containsKey("done")) {
      done = _json["done"];
    }
    if (_json.containsKey("error")) {
      error = new GoogleRpcStatus.fromJson(_json["error"]);
    }
    if (_json.containsKey("metadata")) {
      metadata =
          (_json["metadata"] as core.Map).cast<core.String, core.Object>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("response")) {
      response =
          (_json["response"] as core.Map).cast<core.String, core.Object>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (done != null) {
      _json["done"] = done;
    }
    if (error != null) {
      _json["error"] = (error).toJson();
    }
    if (metadata != null) {
      _json["metadata"] = metadata;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (response != null) {
      _json["response"] = response;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance:
///
///     service Foo {
///       rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
///     }
///
/// The JSON representation for `Empty` is empty JSON object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(core.Map _json) {}

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different
/// programming environments, including REST APIs and RPC APIs. It is used by
/// [gRPC](https://github.com/grpc). The error model is designed to be:
///
/// - Simple to use and understand for most users
/// - Flexible enough to meet unexpected needs
///
/// # Overview
///
/// The `Status` message contains three pieces of data: error code, error
/// message,
/// and error details. The error code should be an enum value of
/// google.rpc.Code, but it may accept additional error codes if needed.  The
/// error message should be a developer-facing English message that helps
/// developers *understand* and *resolve* the error. If a localized user-facing
/// error message is needed, put the localized message in the error details or
/// localize it in the client. The optional error details may contain arbitrary
/// information about the error. There is a predefined set of error detail types
/// in the package `google.rpc` that can be used for common error conditions.
///
/// # Language mapping
///
/// The `Status` message is the logical representation of the error model, but
/// it
/// is not necessarily the actual wire format. When the `Status` message is
/// exposed in different client libraries and different wire protocols, it can
/// be
/// mapped differently. For example, it will likely be mapped to some exceptions
/// in Java, but more likely mapped to some error codes in C.
///
/// # Other uses
///
/// The error model and the `Status` message can be used in a variety of
/// environments, either with or without APIs, to provide a
/// consistent developer experience across different environments.
///
/// Example uses of this error model include:
///
/// - Partial errors. If a service needs to return partial errors to the client,
/// it may embed the `Status` in the normal response to indicate the partial
///     errors.
///
/// - Workflow errors. A typical workflow has multiple steps. Each step may
///     have a `Status` message for error reporting.
///
/// - Batch operations. If a client uses batch request and batch response, the
///     `Status` message should be used directly inside batch response, one for
///     each error sub-response.
///
/// - Asynchronous operations. If an API call embeds asynchronous operation
///     results in its response, the status of those operations should be
///     represented directly using the `Status` message.
///
/// - Logging. If some API errors are stored in logs, the message `Status` could
/// be used directly after any stripping needed for security/privacy reasons.
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details.  There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  GoogleRpcStatus();

  GoogleRpcStatus.fromJson(core.Map _json) {
    if (_json.containsKey("code")) {
      code = _json["code"];
    }
    if (_json.containsKey("details")) {
      details = (_json["details"] as core.List)
          .map<core.Map<core.String, core.Object>>(
              (value) => (value as core.Map).cast<core.String, core.Object>())
          .toList();
    }
    if (_json.containsKey("message")) {
      message = _json["message"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (code != null) {
      _json["code"] = code;
    }
    if (details != null) {
      _json["details"] = details;
    }
    if (message != null) {
      _json["message"] = message;
    }
    return _json;
  }
}
