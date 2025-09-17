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

/// Cloud Text-to-Speech API - v1
///
/// Synthesizes natural-sounding speech by applying powerful neural network
/// models.
///
/// For more information, see <https://cloud.google.com/text-to-speech/>
///
/// Create an instance of [TexttospeechApi] to access these resources:
///
/// - [OperationsResource]
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
/// - [TextResource]
/// - [VoicesResource]
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

/// Synthesizes natural-sounding speech by applying powerful neural network
/// models.
class TexttospeechApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  OperationsResource get operations => OperationsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  TextResource get text => TextResource(_requester);
  VoicesResource get voices => VoicesResource(_requester);

  TexttospeechApi(
    http.Client client, {
    core.String rootUrl = 'https://texttospeech.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
         client,
         rootUrl,
         servicePath,
         requestHeaders,
       );
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
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
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

  /// Synthesizes long form text asynchronously.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The resource states of the request in the form of `projects / *
  /// /locations / * `.
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
  async.Future<Operation> synthesizeLongAudio(
    SynthesizeLongAudioRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + ':synthesizeLongAudio';

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

class TextResource {
  final commons.ApiRequester _requester;

  TextResource(commons.ApiRequester client) : _requester = client;

  /// Synthesizes speech synchronously: receive results after all text input has
  /// been processed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SynthesizeSpeechResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SynthesizeSpeechResponse> synthesize(
    SynthesizeSpeechRequest request, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/text:synthesize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SynthesizeSpeechResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class VoicesResource {
  final commons.ApiRequester _requester;

  VoicesResource(commons.ApiRequester client) : _requester = client;

  /// Returns a list of Voice supported for synthesis.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - Optional. Recommended.
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. If
  /// not specified, the API will return all supported voices. If specified, the
  /// ListVoices call will only return voices that can be used to synthesize
  /// this language_code. For example, if you specify `"en-NZ"`, all `"en-NZ"`
  /// voices will be returned. If you specify `"no"`, both `"no-\*"` (Norwegian)
  /// and `"nb-\*"` (Norwegian Bokmal) voices will be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVoicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVoicesResponse> list({
    core.String? languageCode,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    const url_ = 'v1/voices';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVoicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// Used for advanced voice options.
class AdvancedVoiceOptions {
  /// Only for Journey voices.
  ///
  /// If false, the synthesis is context aware and has a higher latency.
  core.bool? lowLatencyJourneySynthesis;

  AdvancedVoiceOptions({this.lowLatencyJourneySynthesis});

  AdvancedVoiceOptions.fromJson(core.Map json_)
    : this(
        lowLatencyJourneySynthesis:
            json_['lowLatencyJourneySynthesis'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (lowLatencyJourneySynthesis != null)
      'lowLatencyJourneySynthesis': lowLatencyJourneySynthesis!,
  };
}

/// Description of audio data to be synthesized.
class AudioConfig {
  /// The format of the audio byte stream.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Not specified. Only used by
  /// GenerateVoiceCloningKey. Otherwise, will return result
  /// google.rpc.Code.INVALID_ARGUMENT.
  /// - "LINEAR16" : Uncompressed 16-bit signed little-endian samples (Linear
  /// PCM). Audio content returned as LINEAR16 also contains a WAV header.
  /// - "MP3" : MP3 audio at 32kbps.
  /// - "OGG_OPUS" : Opus encoded audio wrapped in an ogg container. The result
  /// is a file which can be played natively on Android, and in browsers (at
  /// least Chrome and Firefox). The quality of the encoding is considerably
  /// higher than MP3 while using approximately the same bitrate.
  /// - "MULAW" : 8-bit samples that compand 14-bit audio samples using G.711
  /// PCMU/mu-law. Audio content returned as MULAW also contains a WAV header.
  /// - "ALAW" : 8-bit samples that compand 14-bit audio samples using G.711
  /// PCMU/A-law. Audio content returned as ALAW also contains a WAV header.
  /// - "PCM" : Uncompressed 16-bit signed little-endian samples (Linear PCM).
  /// Note that as opposed to LINEAR16, audio won't be wrapped in a WAV (or any
  /// other) header.
  /// - "M4A" : M4A audio.
  core.String? audioEncoding;

  /// Input only.
  ///
  /// An identifier which selects 'audio effects' profiles that are applied on
  /// (post synthesized) text to speech. Effects are applied on top of each
  /// other in the order they are given. See
  /// [audio profiles](https://cloud.google.com/text-to-speech/docs/audio-profiles)
  /// for current supported profile ids.
  ///
  /// Optional.
  core.List<core.String>? effectsProfileId;

  /// Input only.
  ///
  /// Speaking pitch, in the range \[-20.0, 20.0\]. 20 means increase 20
  /// semitones from the original pitch. -20 means decrease 20 semitones from
  /// the original pitch.
  ///
  /// Optional.
  core.double? pitch;

  /// The synthesis sample rate (in hertz) for this audio.
  ///
  /// When this is specified in SynthesizeSpeechRequest, if this is different
  /// from the voice's natural sample rate, then the synthesizer will honor this
  /// request by converting to the desired sample rate (which might result in
  /// worse audio quality), unless the specified sample rate is not supported
  /// for the encoding chosen, in which case it will fail the request and return
  /// google.rpc.Code.INVALID_ARGUMENT.
  ///
  /// Optional.
  core.int? sampleRateHertz;

  /// Input only.
  ///
  /// Speaking rate/speed, in the range \[0.25, 2.0\]. 1.0 is the normal native
  /// speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is
  /// half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other
  /// values \< 0.25 or \> 2.0 will return an error.
  ///
  /// Optional.
  core.double? speakingRate;

  /// Input only.
  ///
  /// Volume gain (in dB) of the normal native volume supported by the specific
  /// voice, in the range \[-96.0, 16.0\]. If unset, or set to a value of 0.0
  /// (dB), will play at normal native signal amplitude. A value of -6.0 (dB)
  /// will play at approximately half the amplitude of the normal native signal
  /// amplitude. A value of +6.0 (dB) will play at approximately twice the
  /// amplitude of the normal native signal amplitude. Strongly recommend not to
  /// exceed +10 (dB) as there's usually no effective increase in loudness for
  /// any value greater than that.
  ///
  /// Optional.
  core.double? volumeGainDb;

  AudioConfig({
    this.audioEncoding,
    this.effectsProfileId,
    this.pitch,
    this.sampleRateHertz,
    this.speakingRate,
    this.volumeGainDb,
  });

  AudioConfig.fromJson(core.Map json_)
    : this(
        audioEncoding: json_['audioEncoding'] as core.String?,
        effectsProfileId:
            (json_['effectsProfileId'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        pitch: (json_['pitch'] as core.num?)?.toDouble(),
        sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        speakingRate: (json_['speakingRate'] as core.num?)?.toDouble(),
        volumeGainDb: (json_['volumeGainDb'] as core.num?)?.toDouble(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioEncoding != null) 'audioEncoding': audioEncoding!,
    if (effectsProfileId != null) 'effectsProfileId': effectsProfileId!,
    if (pitch != null) 'pitch': pitch!,
    if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
    if (speakingRate != null) 'speakingRate': speakingRate!,
    if (volumeGainDb != null) 'volumeGainDb': volumeGainDb!,
  };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Pronunciation customization for a phrase.
class CustomPronunciationParams {
  /// The phonetic encoding of the phrase.
  /// Possible string values are:
  /// - "PHONETIC_ENCODING_UNSPECIFIED" : Not specified.
  /// - "PHONETIC_ENCODING_IPA" : IPA, such as apple -\> ˈæpəl.
  /// https://en.wikipedia.org/wiki/International_Phonetic_Alphabet
  /// - "PHONETIC_ENCODING_X_SAMPA" : X-SAMPA, such as apple -\> "{p@l".
  /// https://en.wikipedia.org/wiki/X-SAMPA
  /// - "PHONETIC_ENCODING_JAPANESE_YOMIGANA" : For reading-to-pron conversion
  /// to work well, the `pronunciation` field should only contain Kanji,
  /// Hiragana, and Katakana. The pronunciation can also contain pitch accents.
  /// The start of a pitch phrase is specified with `^` and the down-pitch
  /// position is specified with `!`, for example: phrase:端 pronunciation:^はし
  /// phrase:箸 pronunciation:^は!し phrase:橋 pronunciation:^はし! We currently only
  /// support the Tokyo dialect, which allows at most one down-pitch per phrase
  /// (i.e. at most one `!` between `^`).
  /// - "PHONETIC_ENCODING_PINYIN" : Used to specify pronunciations for Mandarin
  /// words. See https://en.wikipedia.org/wiki/Pinyin. For example: 朝阳, the
  /// pronunciation is "chao2 yang2". The number represents the tone, and there
  /// is a space between syllables. Neutral tones are represented by 5, for
  /// example 孩子 "hai2 zi5".
  core.String? phoneticEncoding;

  /// The phrase to which the customization is applied.
  ///
  /// The phrase can be multiple words, such as proper nouns, but shouldn't span
  /// the length of the sentence.
  core.String? phrase;

  /// The pronunciation of the phrase.
  ///
  /// This must be in the phonetic encoding specified above.
  core.String? pronunciation;

  CustomPronunciationParams({
    this.phoneticEncoding,
    this.phrase,
    this.pronunciation,
  });

  CustomPronunciationParams.fromJson(core.Map json_)
    : this(
        phoneticEncoding: json_['phoneticEncoding'] as core.String?,
        phrase: json_['phrase'] as core.String?,
        pronunciation: json_['pronunciation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (phoneticEncoding != null) 'phoneticEncoding': phoneticEncoding!,
    if (phrase != null) 'phrase': phrase!,
    if (pronunciation != null) 'pronunciation': pronunciation!,
  };
}

/// A collection of pronunciation customizations.
class CustomPronunciations {
  /// The pronunciation customizations are applied.
  core.List<CustomPronunciationParams>? pronunciations;

  CustomPronunciations({this.pronunciations});

  CustomPronunciations.fromJson(core.Map json_)
    : this(
        pronunciations:
            (json_['pronunciations'] as core.List?)
                ?.map(
                  (value) => CustomPronunciationParams.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pronunciations != null) 'pronunciations': pronunciations!,
  };
}

/// Description of the custom voice to be synthesized.
class CustomVoiceParams {
  /// The name of the AutoML model that synthesizes the custom voice.
  ///
  /// Required.
  core.String? model;

  /// The usage of the synthesized audio to be reported.
  ///
  /// Optional. Deprecated.
  /// Possible string values are:
  /// - "REPORTED_USAGE_UNSPECIFIED" : Request with reported usage unspecified
  /// will be rejected.
  /// - "REALTIME" : For scenarios where the synthesized audio is not
  /// downloadable and can only be used once. For example, real-time request in
  /// IVR system.
  /// - "OFFLINE" : For scenarios where the synthesized audio is downloadable
  /// and can be reused. For example, the synthesized audio is downloaded,
  /// stored in customer service system and played repeatedly.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? reportedUsage;

  CustomVoiceParams({this.model, this.reportedUsage});

  CustomVoiceParams.fromJson(core.Map json_)
    : this(
        model: json_['model'] as core.String?,
        reportedUsage: json_['reportedUsage'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (model != null) 'model': model!,
    if (reportedUsage != null) 'reportedUsage': reportedUsage!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// The message returned to the client by the `ListVoices` method.
class ListVoicesResponse {
  /// The list of voices.
  core.List<Voice>? voices;

  ListVoicesResponse({this.voices});

  ListVoicesResponse.fromJson(core.Map json_)
    : this(
        voices:
            (json_['voices'] as core.List?)
                ?.map(
                  (value) => Voice.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (voices != null) 'voices': voices!,
  };
}

/// A collection of turns for multi-speaker synthesis.
class MultiSpeakerMarkup {
  /// Speaker turns.
  ///
  /// Required.
  core.List<Turn>? turns;

  MultiSpeakerMarkup({this.turns});

  MultiSpeakerMarkup.fromJson(core.Map json_)
    : this(
        turns:
            (json_['turns'] as core.List?)
                ?.map(
                  (value) => Turn.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (turns != null) 'turns': turns!,
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Contains text input to be synthesized.
///
/// Either `text` or `ssml` must be supplied. Supplying both or neither returns
/// google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000 bytes.
class SynthesisInput {
  /// The pronunciation customizations are applied to the input.
  ///
  /// If this is set, the input is synthesized using the given pronunciation
  /// customizations. The initial support is for en-us, with plans to expand to
  /// other locales in the future. Instant Clone voices aren't supported. In
  /// order to customize the pronunciation of a phrase, there must be an exact
  /// match of the phrase in the input types. If using SSML, the phrase must not
  /// be inside a phoneme tag.
  ///
  /// Optional.
  CustomPronunciations? customPronunciations;

  /// Markup for HD voices specifically.
  ///
  /// This field may not be used with any other voices.
  core.String? markup;

  /// The multi-speaker input to be synthesized.
  ///
  /// Only applicable for multi-speaker synthesis.
  MultiSpeakerMarkup? multiSpeakerMarkup;

  /// This is system instruction supported only for controllable voice models.
  ///
  /// If used, we will pass text to Flash TTS as is. Can only used with Flash
  /// TTS. What AI Studio calls Style Instructions.
  core.String? prompt;

  /// The SSML document to be synthesized.
  ///
  /// The SSML document must be valid and well-formed. Otherwise the RPC will
  /// fail and return google.rpc.Code.INVALID_ARGUMENT. For more information,
  /// see [SSML](https://cloud.google.com/text-to-speech/docs/ssml).
  core.String? ssml;

  /// The raw text to be synthesized.
  core.String? text;

  SynthesisInput({
    this.customPronunciations,
    this.markup,
    this.multiSpeakerMarkup,
    this.prompt,
    this.ssml,
    this.text,
  });

  SynthesisInput.fromJson(core.Map json_)
    : this(
        customPronunciations:
            json_.containsKey('customPronunciations')
                ? CustomPronunciations.fromJson(
                  json_['customPronunciations']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        markup: json_['markup'] as core.String?,
        multiSpeakerMarkup:
            json_.containsKey('multiSpeakerMarkup')
                ? MultiSpeakerMarkup.fromJson(
                  json_['multiSpeakerMarkup']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        prompt: json_['prompt'] as core.String?,
        ssml: json_['ssml'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customPronunciations != null)
      'customPronunciations': customPronunciations!,
    if (markup != null) 'markup': markup!,
    if (multiSpeakerMarkup != null) 'multiSpeakerMarkup': multiSpeakerMarkup!,
    if (prompt != null) 'prompt': prompt!,
    if (ssml != null) 'ssml': ssml!,
    if (text != null) 'text': text!,
  };
}

/// The top-level message sent by the client for the `SynthesizeLongAudio`
/// method.
class SynthesizeLongAudioRequest {
  /// The configuration of the synthesized audio.
  ///
  /// Required.
  AudioConfig? audioConfig;

  /// The Synthesizer requires either plain text or SSML as input.
  ///
  /// Required.
  SynthesisInput? input;

  /// Specifies a Cloud Storage URI for the synthesis results.
  ///
  /// Must be specified in the format: `gs://bucket_name/object_name`, and the
  /// bucket must already exist.
  ///
  /// Required.
  core.String? outputGcsUri;

  /// The desired voice of the synthesized audio.
  ///
  /// Required.
  VoiceSelectionParams? voice;

  SynthesizeLongAudioRequest({
    this.audioConfig,
    this.input,
    this.outputGcsUri,
    this.voice,
  });

  SynthesizeLongAudioRequest.fromJson(core.Map json_)
    : this(
        audioConfig:
            json_.containsKey('audioConfig')
                ? AudioConfig.fromJson(
                  json_['audioConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        input:
            json_.containsKey('input')
                ? SynthesisInput.fromJson(
                  json_['input'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        outputGcsUri: json_['outputGcsUri'] as core.String?,
        voice:
            json_.containsKey('voice')
                ? VoiceSelectionParams.fromJson(
                  json_['voice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioConfig != null) 'audioConfig': audioConfig!,
    if (input != null) 'input': input!,
    if (outputGcsUri != null) 'outputGcsUri': outputGcsUri!,
    if (voice != null) 'voice': voice!,
  };
}

/// The top-level message sent by the client for the `SynthesizeSpeech` method.
class SynthesizeSpeechRequest {
  /// Advanced voice options.
  AdvancedVoiceOptions? advancedVoiceOptions;

  /// The configuration of the synthesized audio.
  ///
  /// Required.
  AudioConfig? audioConfig;

  /// The Synthesizer requires either plain text or SSML as input.
  ///
  /// Required.
  SynthesisInput? input;

  /// The desired voice of the synthesized audio.
  ///
  /// Required.
  VoiceSelectionParams? voice;

  SynthesizeSpeechRequest({
    this.advancedVoiceOptions,
    this.audioConfig,
    this.input,
    this.voice,
  });

  SynthesizeSpeechRequest.fromJson(core.Map json_)
    : this(
        advancedVoiceOptions:
            json_.containsKey('advancedVoiceOptions')
                ? AdvancedVoiceOptions.fromJson(
                  json_['advancedVoiceOptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        audioConfig:
            json_.containsKey('audioConfig')
                ? AudioConfig.fromJson(
                  json_['audioConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        input:
            json_.containsKey('input')
                ? SynthesisInput.fromJson(
                  json_['input'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        voice:
            json_.containsKey('voice')
                ? VoiceSelectionParams.fromJson(
                  json_['voice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (advancedVoiceOptions != null)
      'advancedVoiceOptions': advancedVoiceOptions!,
    if (audioConfig != null) 'audioConfig': audioConfig!,
    if (input != null) 'input': input!,
    if (voice != null) 'voice': voice!,
  };
}

/// The message returned to the client by the `SynthesizeSpeech` method.
class SynthesizeSpeechResponse {
  /// The audio data bytes encoded as specified in the request, including the
  /// header for encodings that are wrapped in containers (e.g. MP3, OGG_OPUS).
  ///
  /// For LINEAR16 audio, we include the WAV header. Note: as with all bytes
  /// fields, protobuffers use a pure binary representation, whereas JSON
  /// representations use base64.
  core.String? audioContent;
  core.List<core.int> get audioContentAsBytes =>
      convert.base64.decode(audioContent!);

  set audioContentAsBytes(core.List<core.int> bytes_) {
    audioContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  SynthesizeSpeechResponse({this.audioContent});

  SynthesizeSpeechResponse.fromJson(core.Map json_)
    : this(audioContent: json_['audioContent'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (audioContent != null) 'audioContent': audioContent!,
  };
}

/// A multi-speaker turn.
class Turn {
  /// The speaker of the turn, for example, 'O' or 'Q'.
  ///
  /// Please refer to documentation for available speakers.
  ///
  /// Required.
  core.String? speaker;

  /// The text to speak.
  ///
  /// Required.
  core.String? text;

  Turn({this.speaker, this.text});

  Turn.fromJson(core.Map json_)
    : this(
        speaker: json_['speaker'] as core.String?,
        text: json_['text'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (speaker != null) 'speaker': speaker!,
    if (text != null) 'text': text!,
  };
}

/// Description of a voice supported by the TTS service.
class Voice {
  /// The languages that this voice supports, expressed as
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags
  /// (e.g. "en-US", "es-419", "cmn-tw").
  core.List<core.String>? languageCodes;

  /// The name of this voice.
  ///
  /// Each distinct voice has a unique name.
  core.String? name;

  /// The natural sample rate (in hertz) for this voice.
  core.int? naturalSampleRateHertz;

  /// The gender of this voice.
  /// Possible string values are:
  /// - "SSML_VOICE_GENDER_UNSPECIFIED" : An unspecified gender. In
  /// VoiceSelectionParams, this means that the client doesn't care which gender
  /// the selected voice will have. In the Voice field of ListVoicesResponse,
  /// this may mean that the voice doesn't fit any of the other categories in
  /// this enum, or that the gender of the voice isn't known.
  /// - "MALE" : A male voice.
  /// - "FEMALE" : A female voice.
  /// - "NEUTRAL" : A gender-neutral voice. This voice is not yet supported.
  core.String? ssmlGender;

  Voice({
    this.languageCodes,
    this.name,
    this.naturalSampleRateHertz,
    this.ssmlGender,
  });

  Voice.fromJson(core.Map json_)
    : this(
        languageCodes:
            (json_['languageCodes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        naturalSampleRateHertz: json_['naturalSampleRateHertz'] as core.int?,
        ssmlGender: json_['ssmlGender'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (languageCodes != null) 'languageCodes': languageCodes!,
    if (name != null) 'name': name!,
    if (naturalSampleRateHertz != null)
      'naturalSampleRateHertz': naturalSampleRateHertz!,
    if (ssmlGender != null) 'ssmlGender': ssmlGender!,
  };
}

/// The configuration of Voice Clone feature.
class VoiceCloneParams {
  /// Created by GenerateVoiceCloningKey.
  ///
  /// Required.
  core.String? voiceCloningKey;

  VoiceCloneParams({this.voiceCloningKey});

  VoiceCloneParams.fromJson(core.Map json_)
    : this(voiceCloningKey: json_['voiceCloningKey'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (voiceCloningKey != null) 'voiceCloningKey': voiceCloningKey!,
  };
}

/// Description of which voice to use for a synthesis request.
class VoiceSelectionParams {
  /// The configuration for a custom voice.
  ///
  /// If \[CustomVoiceParams.model\] is set, the service will choose the custom
  /// voice matching the specified configuration.
  CustomVoiceParams? customVoice;

  /// The language (and potentially also the region) of the voice expressed as a
  /// \[BCP-47\](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag,
  /// e.g. "en-US".
  ///
  /// This should not include a script tag (e.g. use "cmn-cn" rather than
  /// "cmn-Hant-cn"), because the script will be inferred from the input
  /// provided in the SynthesisInput. The TTS service will use this parameter to
  /// help choose an appropriate voice. Note that the TTS service may choose a
  /// voice with a slightly different language code than the one selected; it
  /// may substitute a different region (e.g. using en-US rather than en-CA if
  /// there isn't a Canadian voice available), or even a different language,
  /// e.g. using "nb" (Norwegian Bokmal) instead of "no" (Norwegian)".
  ///
  /// Required.
  core.String? languageCode;

  /// The name of the model.
  ///
  /// If set, the service will choose the model matching the specified
  /// configuration.
  ///
  /// Optional.
  core.String? modelName;

  /// The name of the voice.
  ///
  /// If both the name and the gender are not set, the service will choose a
  /// voice based on the other parameters such as language_code.
  core.String? name;

  /// The preferred gender of the voice.
  ///
  /// If not set, the service will choose a voice based on the other parameters
  /// such as language_code and name. Note that this is only a preference, not
  /// requirement; if a voice of the appropriate gender is not available, the
  /// synthesizer should substitute a voice with a different gender rather than
  /// failing the request.
  /// Possible string values are:
  /// - "SSML_VOICE_GENDER_UNSPECIFIED" : An unspecified gender. In
  /// VoiceSelectionParams, this means that the client doesn't care which gender
  /// the selected voice will have. In the Voice field of ListVoicesResponse,
  /// this may mean that the voice doesn't fit any of the other categories in
  /// this enum, or that the gender of the voice isn't known.
  /// - "MALE" : A male voice.
  /// - "FEMALE" : A female voice.
  /// - "NEUTRAL" : A gender-neutral voice. This voice is not yet supported.
  core.String? ssmlGender;

  /// The configuration for a voice clone.
  ///
  /// If \[VoiceCloneParams.voice_clone_key\] is set, the service chooses the
  /// voice clone matching the specified configuration.
  ///
  /// Optional.
  VoiceCloneParams? voiceClone;

  VoiceSelectionParams({
    this.customVoice,
    this.languageCode,
    this.modelName,
    this.name,
    this.ssmlGender,
    this.voiceClone,
  });

  VoiceSelectionParams.fromJson(core.Map json_)
    : this(
        customVoice:
            json_.containsKey('customVoice')
                ? CustomVoiceParams.fromJson(
                  json_['customVoice'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        languageCode: json_['languageCode'] as core.String?,
        modelName: json_['modelName'] as core.String?,
        name: json_['name'] as core.String?,
        ssmlGender: json_['ssmlGender'] as core.String?,
        voiceClone:
            json_.containsKey('voiceClone')
                ? VoiceCloneParams.fromJson(
                  json_['voiceClone'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customVoice != null) 'customVoice': customVoice!,
    if (languageCode != null) 'languageCode': languageCode!,
    if (modelName != null) 'modelName': modelName!,
    if (name != null) 'name': name!,
    if (ssmlGender != null) 'ssmlGender': ssmlGender!,
    if (voiceClone != null) 'voiceClone': voiceClone!,
  };
}
