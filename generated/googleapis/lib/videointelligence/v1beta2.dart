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

/// Cloud Video Intelligence API - v1beta2
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
/// - [VideosResource]
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

  VideosResource get videos => VideosResource(_requester);

  CloudVideoIntelligenceApi(
    http.Client client, {
    core.String rootUrl = 'https://videointelligence.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
    GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1beta2/videos:annotate';

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

/// Video annotation request.
class GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest {
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
    inputContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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
  GoogleCloudVideointelligenceV1beta2VideoContext? videoContext;

  GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest({
    this.features,
    this.inputContent,
    this.inputUri,
    this.locationId,
    this.outputUri,
    this.videoContext,
  });

  GoogleCloudVideointelligenceV1beta2AnnotateVideoRequest.fromJson(
    core.Map json_,
  ) : this(
        features:
            (json_['features'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        inputContent: json_['inputContent'] as core.String?,
        inputUri: json_['inputUri'] as core.String?,
        locationId: json_['locationId'] as core.String?,
        outputUri: json_['outputUri'] as core.String?,
        videoContext:
            json_.containsKey('videoContext')
                ? GoogleCloudVideointelligenceV1beta2VideoContext.fromJson(
                  json_['videoContext'] as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig =
    $ExplicitContentDetectionConfig;

/// Config for FACE_DETECTION.
typedef GoogleCloudVideointelligenceV1beta2FaceDetectionConfig =
    $FaceDetectionConfig;

/// Config for LABEL_DETECTION.
typedef GoogleCloudVideointelligenceV1beta2LabelDetectionConfig =
    $LabelDetectionConfig;

/// Config for OBJECT_TRACKING.
typedef GoogleCloudVideointelligenceV1beta2ObjectTrackingConfig =
    $ObjectTrackingConfig;

/// Config for PERSON_DETECTION.
typedef GoogleCloudVideointelligenceV1beta2PersonDetectionConfig =
    $PersonDetectionConfig;

/// Config for SHOT_CHANGE_DETECTION.
typedef GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig =
    $ShotChangeDetectionConfig;

/// Provides "hints" to the speech recognizer to favor specific words and
/// phrases in the results.
typedef GoogleCloudVideointelligenceV1beta2SpeechContext = $SpeechContext00;

/// Config for SPEECH_TRANSCRIPTION.
class GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig {
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
  core.List<GoogleCloudVideointelligenceV1beta2SpeechContext>? speechContexts;

  GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig({
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

  GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig.fromJson(
    core.Map json_,
  ) : this(
        audioTracks:
            (json_['audioTracks'] as core.List?)
                ?.map((value) => value as core.int)
                .toList(),
        diarizationSpeakerCount: json_['diarizationSpeakerCount'] as core.int?,
        enableAutomaticPunctuation:
            json_['enableAutomaticPunctuation'] as core.bool?,
        enableSpeakerDiarization:
            json_['enableSpeakerDiarization'] as core.bool?,
        enableWordConfidence: json_['enableWordConfidence'] as core.bool?,
        filterProfanity: json_['filterProfanity'] as core.bool?,
        languageCode: json_['languageCode'] as core.String?,
        maxAlternatives: json_['maxAlternatives'] as core.int?,
        speechContexts:
            (json_['speechContexts'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVideointelligenceV1beta2SpeechContext.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
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
typedef GoogleCloudVideointelligenceV1beta2TextDetectionConfig =
    $TextDetectionConfig;

/// Video context and/or feature-specific parameters.
class GoogleCloudVideointelligenceV1beta2VideoContext {
  /// Config for EXPLICIT_CONTENT_DETECTION.
  GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig?
  explicitContentDetectionConfig;

  /// Config for FACE_DETECTION.
  GoogleCloudVideointelligenceV1beta2FaceDetectionConfig? faceDetectionConfig;

  /// Config for LABEL_DETECTION.
  GoogleCloudVideointelligenceV1beta2LabelDetectionConfig? labelDetectionConfig;

  /// Config for OBJECT_TRACKING.
  GoogleCloudVideointelligenceV1beta2ObjectTrackingConfig? objectTrackingConfig;

  /// Config for PERSON_DETECTION.
  GoogleCloudVideointelligenceV1beta2PersonDetectionConfig?
  personDetectionConfig;

  /// Video segments to annotate.
  ///
  /// The segments may overlap and are not required to be contiguous or span the
  /// whole video. If unspecified, each video is treated as a single segment.
  core.List<GoogleCloudVideointelligenceV1beta2VideoSegment>? segments;

  /// Config for SHOT_CHANGE_DETECTION.
  GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig?
  shotChangeDetectionConfig;

  /// Config for SPEECH_TRANSCRIPTION.
  GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig?
  speechTranscriptionConfig;

  /// Config for TEXT_DETECTION.
  GoogleCloudVideointelligenceV1beta2TextDetectionConfig? textDetectionConfig;

  GoogleCloudVideointelligenceV1beta2VideoContext({
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

  GoogleCloudVideointelligenceV1beta2VideoContext.fromJson(core.Map json_)
    : this(
        explicitContentDetectionConfig:
            json_.containsKey('explicitContentDetectionConfig')
                ? GoogleCloudVideointelligenceV1beta2ExplicitContentDetectionConfig.fromJson(
                  json_['explicitContentDetectionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        faceDetectionConfig:
            json_.containsKey('faceDetectionConfig')
                ? GoogleCloudVideointelligenceV1beta2FaceDetectionConfig.fromJson(
                  json_['faceDetectionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labelDetectionConfig:
            json_.containsKey('labelDetectionConfig')
                ? GoogleCloudVideointelligenceV1beta2LabelDetectionConfig.fromJson(
                  json_['labelDetectionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        objectTrackingConfig:
            json_.containsKey('objectTrackingConfig')
                ? GoogleCloudVideointelligenceV1beta2ObjectTrackingConfig.fromJson(
                  json_['objectTrackingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        personDetectionConfig:
            json_.containsKey('personDetectionConfig')
                ? GoogleCloudVideointelligenceV1beta2PersonDetectionConfig.fromJson(
                  json_['personDetectionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        segments:
            (json_['segments'] as core.List?)
                ?.map(
                  (value) =>
                      GoogleCloudVideointelligenceV1beta2VideoSegment.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
        shotChangeDetectionConfig:
            json_.containsKey('shotChangeDetectionConfig')
                ? GoogleCloudVideointelligenceV1beta2ShotChangeDetectionConfig.fromJson(
                  json_['shotChangeDetectionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        speechTranscriptionConfig:
            json_.containsKey('speechTranscriptionConfig')
                ? GoogleCloudVideointelligenceV1beta2SpeechTranscriptionConfig.fromJson(
                  json_['speechTranscriptionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        textDetectionConfig:
            json_.containsKey('textDetectionConfig')
                ? GoogleCloudVideointelligenceV1beta2TextDetectionConfig.fromJson(
                  json_['textDetectionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
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
typedef GoogleCloudVideointelligenceV1beta2VideoSegment = $VideoSegment;

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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status00;
