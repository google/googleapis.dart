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

/// Cloud Text-to-Speech API - v1
///
/// Synthesizes natural-sounding speech by applying powerful neural network
/// models.
///
/// For more information, see <https://cloud.google.com/text-to-speech/>
///
/// Create an instance of [TexttospeechApi] to access these resources:
///
/// - [TextResource]
/// - [VoicesResource]
library texttospeech.v1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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

  TextResource get text => TextResource(_requester);
  VoicesResource get voices => VoicesResource(_requester);

  TexttospeechApi(http.Client client,
      {core.String rootUrl = 'https://texttospeech.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
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
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/text:synthesize';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return SynthesizeSpeechResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// this language_code. E.g. when specifying "en-NZ", you will get supported
  /// "en-NZ" voices; when specifying "no", you will get supported "no-\*"
  /// (Norwegian) and "nb-\*" (Norwegian Bokmal) voices; specifying "zh" will
  /// also get supported "cmn-\*" voices; specifying "zh-hk" will also get
  /// supported "yue-hk" voices.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (languageCode != null) 'languageCode': [languageCode],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/voices';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVoicesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Description of audio data to be synthesized.
class AudioConfig {
  /// The format of the audio byte stream.
  ///
  /// Required.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Not specified. Will return result
  /// google.rpc.Code.INVALID_ARGUMENT.
  /// - "LINEAR16" : Uncompressed 16-bit signed little-endian samples (Linear
  /// PCM). Audio content returned as LINEAR16 also contains a WAV header.
  /// - "MP3" : MP3 audio at 32kbps.
  /// - "OGG_OPUS" : Opus encoded audio wrapped in an ogg container. The result
  /// will be a file which can be played natively on Android, and in browsers
  /// (at least Chrome and Firefox). The quality of the encoding is considerably
  /// higher than MP3 while using approximately the same bitrate.
  /// - "MULAW" : 8-bit samples that compand 14-bit audio samples using G.711
  /// PCMU/mu-law. Audio content returned as MULAW also contains a WAV header.
  /// - "ALAW" : 8-bit samples that compand 14-bit audio samples using G.711
  /// PCMU/A-law. Audio content returned as ALAW also contains a WAV header.
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
  /// Speaking rate/speed, in the range \[0.25, 4.0\]. 1.0 is the normal native
  /// speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is
  /// half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other
  /// values < 0.25 or > 4.0 will return an error.
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

  AudioConfig.fromJson(core.Map _json)
      : this(
          audioEncoding: _json.containsKey('audioEncoding')
              ? _json['audioEncoding'] as core.String
              : null,
          effectsProfileId: _json.containsKey('effectsProfileId')
              ? (_json['effectsProfileId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          pitch: _json.containsKey('pitch')
              ? (_json['pitch'] as core.num).toDouble()
              : null,
          sampleRateHertz: _json.containsKey('sampleRateHertz')
              ? _json['sampleRateHertz'] as core.int
              : null,
          speakingRate: _json.containsKey('speakingRate')
              ? (_json['speakingRate'] as core.num).toDouble()
              : null,
          volumeGainDb: _json.containsKey('volumeGainDb')
              ? (_json['volumeGainDb'] as core.num).toDouble()
              : null,
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

/// The message returned to the client by the `ListVoices` method.
class ListVoicesResponse {
  /// The list of voices.
  core.List<Voice>? voices;

  ListVoicesResponse({
    this.voices,
  });

  ListVoicesResponse.fromJson(core.Map _json)
      : this(
          voices: _json.containsKey('voices')
              ? (_json['voices'] as core.List)
                  .map((value) => Voice.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (voices != null)
          'voices': voices!.map((value) => value.toJson()).toList(),
      };
}

/// Contains text input to be synthesized.
///
/// Either `text` or `ssml` must be supplied. Supplying both or neither returns
/// google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000
/// characters.
class SynthesisInput {
  /// The SSML document to be synthesized.
  ///
  /// The SSML document must be valid and well-formed. Otherwise the RPC will
  /// fail and return google.rpc.Code.INVALID_ARGUMENT. For more information,
  /// see [SSML](https://cloud.google.com/text-to-speech/docs/ssml).
  core.String? ssml;

  /// The raw text to be synthesized.
  core.String? text;

  SynthesisInput({
    this.ssml,
    this.text,
  });

  SynthesisInput.fromJson(core.Map _json)
      : this(
          ssml: _json.containsKey('ssml') ? _json['ssml'] as core.String : null,
          text: _json.containsKey('text') ? _json['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ssml != null) 'ssml': ssml!,
        if (text != null) 'text': text!,
      };
}

/// The top-level message sent by the client for the `SynthesizeSpeech` method.
class SynthesizeSpeechRequest {
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
    this.audioConfig,
    this.input,
    this.voice,
  });

  SynthesizeSpeechRequest.fromJson(core.Map _json)
      : this(
          audioConfig: _json.containsKey('audioConfig')
              ? AudioConfig.fromJson(
                  _json['audioConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          input: _json.containsKey('input')
              ? SynthesisInput.fromJson(
                  _json['input'] as core.Map<core.String, core.dynamic>)
              : null,
          voice: _json.containsKey('voice')
              ? VoiceSelectionParams.fromJson(
                  _json['voice'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioConfig != null) 'audioConfig': audioConfig!.toJson(),
        if (input != null) 'input': input!.toJson(),
        if (voice != null) 'voice': voice!.toJson(),
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

  set audioContentAsBytes(core.List<core.int> _bytes) {
    audioContent =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  SynthesizeSpeechResponse({
    this.audioContent,
  });

  SynthesizeSpeechResponse.fromJson(core.Map _json)
      : this(
          audioContent: _json.containsKey('audioContent')
              ? _json['audioContent'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioContent != null) 'audioContent': audioContent!,
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

  Voice.fromJson(core.Map _json)
      : this(
          languageCodes: _json.containsKey('languageCodes')
              ? (_json['languageCodes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          naturalSampleRateHertz: _json.containsKey('naturalSampleRateHertz')
              ? _json['naturalSampleRateHertz'] as core.int
              : null,
          ssmlGender: _json.containsKey('ssmlGender')
              ? _json['ssmlGender'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCodes != null) 'languageCodes': languageCodes!,
        if (name != null) 'name': name!,
        if (naturalSampleRateHertz != null)
          'naturalSampleRateHertz': naturalSampleRateHertz!,
        if (ssmlGender != null) 'ssmlGender': ssmlGender!,
      };
}

/// Description of which voice to use for a synthesis request.
class VoiceSelectionParams {
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

  /// The name of the voice.
  ///
  /// If not set, the service will choose a voice based on the other parameters
  /// such as language_code and gender.
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

  VoiceSelectionParams({
    this.languageCode,
    this.name,
    this.ssmlGender,
  });

  VoiceSelectionParams.fromJson(core.Map _json)
      : this(
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          ssmlGender: _json.containsKey('ssmlGender')
              ? _json['ssmlGender'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (languageCode != null) 'languageCode': languageCode!,
        if (name != null) 'name': name!,
        if (ssmlGender != null) 'ssmlGender': ssmlGender!,
      };
}
