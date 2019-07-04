// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.texttospeech.v1;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client texttospeech/v1';

/// Synthesizes natural-sounding speech by applying powerful neural network
/// models.
class TexttospeechApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  final commons.ApiRequester _requester;

  TextResourceApi get text => new TextResourceApi(_requester);
  VoicesResourceApi get voices => new VoicesResourceApi(_requester);

  TexttospeechApi(http.Client client,
      {core.String rootUrl = "https://texttospeech.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class TextResourceApi {
  final commons.ApiRequester _requester;

  TextResourceApi(commons.ApiRequester client) : _requester = client;

  /// Synthesizes speech synchronously: receive results after all text input
  /// has been processed.
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
      SynthesizeSpeechRequest request,
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

    _url = 'v1/text:synthesize';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response
        .then((data) => new SynthesizeSpeechResponse.fromJson(data));
  }
}

class VoicesResourceApi {
  final commons.ApiRequester _requester;

  VoicesResourceApi(commons.ApiRequester client) : _requester = client;

  /// Returns a list of Voice supported for synthesis.
  ///
  /// Request parameters:
  ///
  /// [languageCode] - Optional (but recommended)
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. If
  /// specified, the ListVoices call will only return voices that can be used to
  /// synthesize this language_code. E.g. when specifying "en-NZ", you will get
  /// supported "en-*" voices; when specifying "no", you will get supported
  /// "no-*" (Norwegian) and "nb-*" (Norwegian Bokmal) voices; specifying "zh"
  /// will also get supported "cmn-*" voices; specifying "zh-hk" will also get
  /// supported "yue-*" voices.
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
  async.Future<ListVoicesResponse> list(
      {core.String languageCode, core.String $fields}) {
    var _url;
    var _queryParams = new core.Map<core.String, core.List<core.String>>();
    var _uploadMedia;
    var _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    var _body;

    if (languageCode != null) {
      _queryParams["languageCode"] = [languageCode];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v1/voices';

    var _response = _requester.request(_url, "GET",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new ListVoicesResponse.fromJson(data));
  }
}

/// Description of audio data to be synthesized.
class AudioConfig {
  /// Required. The format of the audio byte stream.
  /// Possible string values are:
  /// - "AUDIO_ENCODING_UNSPECIFIED" : Not specified. Will return result
  /// google.rpc.Code.INVALID_ARGUMENT.
  /// - "LINEAR16" : Uncompressed 16-bit signed little-endian samples (Linear
  /// PCM).
  /// Audio content returned as LINEAR16 also contains a WAV header.
  /// - "MP3" : MP3 audio at 32kbps.
  /// - "OGG_OPUS" : Opus encoded audio wrapped in an ogg container. The result
  /// will be a
  /// file which can be played natively on Android, and in browsers (at least
  /// Chrome and Firefox). The quality of the encoding is considerably higher
  /// than MP3 while using approximately the same bitrate.
  core.String audioEncoding;

  /// Optional. Input only. An identifier which selects 'audio effects' profiles
  /// that are applied on (post synthesized) text to speech. Effects are applied
  /// on top of each other in the order they are given. See
  /// [audio
  /// profiles](https://cloud.google.com/text-to-speech/docs/audio-profiles) for
  /// current supported profile ids.
  core.List<core.String> effectsProfileId;

  /// Optional. Input only. Speaking pitch, in the range [-20.0, 20.0]. 20 means
  /// increase 20 semitones from the original pitch. -20 means decrease 20
  /// semitones from the original pitch.
  core.double pitch;

  /// The synthesis sample rate (in hertz) for this audio. Optional. When this
  /// is
  /// specified in SynthesizeSpeechRequest, if this is different from the
  /// voice's
  /// natural sample rate, then the synthesizer will honor this request by
  /// converting to the desired sample rate (which might result in worse audio
  /// quality), unless the specified sample rate is not supported for the
  /// encoding chosen, in which case it will fail the request and return
  /// google.rpc.Code.INVALID_ARGUMENT.
  core.int sampleRateHertz;

  /// Optional. Input only. Speaking rate/speed, in the range [0.25, 4.0]. 1.0
  /// is
  /// the normal native speed supported by the specific voice. 2.0 is twice as
  /// fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0
  /// speed. Any other values < 0.25 or > 4.0 will return an error.
  core.double speakingRate;

  /// Optional. Input only. Volume gain (in dB) of the normal native volume
  /// supported by the specific voice, in the range [-96.0, 16.0]. If unset, or
  /// set to a value of 0.0 (dB), will play at normal native signal amplitude. A
  /// value of -6.0 (dB) will play at approximately half the amplitude of the
  /// normal native signal amplitude. A value of +6.0 (dB) will play at
  /// approximately twice the amplitude of the normal native signal amplitude.
  /// Strongly recommend not to exceed +10 (dB) as there's usually no effective
  /// increase in loudness for any value greater than that.
  core.double volumeGainDb;

  AudioConfig();

  AudioConfig.fromJson(core.Map _json) {
    if (_json.containsKey("audioEncoding")) {
      audioEncoding = _json["audioEncoding"];
    }
    if (_json.containsKey("effectsProfileId")) {
      effectsProfileId =
          (_json["effectsProfileId"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("pitch")) {
      pitch = _json["pitch"].toDouble();
    }
    if (_json.containsKey("sampleRateHertz")) {
      sampleRateHertz = _json["sampleRateHertz"];
    }
    if (_json.containsKey("speakingRate")) {
      speakingRate = _json["speakingRate"].toDouble();
    }
    if (_json.containsKey("volumeGainDb")) {
      volumeGainDb = _json["volumeGainDb"].toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audioEncoding != null) {
      _json["audioEncoding"] = audioEncoding;
    }
    if (effectsProfileId != null) {
      _json["effectsProfileId"] = effectsProfileId;
    }
    if (pitch != null) {
      _json["pitch"] = pitch;
    }
    if (sampleRateHertz != null) {
      _json["sampleRateHertz"] = sampleRateHertz;
    }
    if (speakingRate != null) {
      _json["speakingRate"] = speakingRate;
    }
    if (volumeGainDb != null) {
      _json["volumeGainDb"] = volumeGainDb;
    }
    return _json;
  }
}

/// The message returned to the client by the `ListVoices` method.
class ListVoicesResponse {
  /// The list of voices.
  core.List<Voice> voices;

  ListVoicesResponse();

  ListVoicesResponse.fromJson(core.Map _json) {
    if (_json.containsKey("voices")) {
      voices = (_json["voices"] as core.List)
          .map<Voice>((value) => new Voice.fromJson(value))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (voices != null) {
      _json["voices"] = voices.map((value) => (value).toJson()).toList();
    }
    return _json;
  }
}

/// Contains text input to be synthesized. Either `text` or `ssml` must be
/// supplied. Supplying both or neither returns
/// google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000
/// characters.
class SynthesisInput {
  /// The SSML document to be synthesized. The SSML document must be valid
  /// and well-formed. Otherwise the RPC will fail and return
  /// google.rpc.Code.INVALID_ARGUMENT. For more information, see
  /// [SSML](/speech/text-to-speech/docs/ssml).
  core.String ssml;

  /// The raw text to be synthesized.
  core.String text;

  SynthesisInput();

  SynthesisInput.fromJson(core.Map _json) {
    if (_json.containsKey("ssml")) {
      ssml = _json["ssml"];
    }
    if (_json.containsKey("text")) {
      text = _json["text"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (ssml != null) {
      _json["ssml"] = ssml;
    }
    if (text != null) {
      _json["text"] = text;
    }
    return _json;
  }
}

/// The top-level message sent by the client for the `SynthesizeSpeech` method.
class SynthesizeSpeechRequest {
  /// Required. The configuration of the synthesized audio.
  AudioConfig audioConfig;

  /// Required. The Synthesizer requires either plain text or SSML as input.
  SynthesisInput input;

  /// Required. The desired voice of the synthesized audio.
  VoiceSelectionParams voice;

  SynthesizeSpeechRequest();

  SynthesizeSpeechRequest.fromJson(core.Map _json) {
    if (_json.containsKey("audioConfig")) {
      audioConfig = new AudioConfig.fromJson(_json["audioConfig"]);
    }
    if (_json.containsKey("input")) {
      input = new SynthesisInput.fromJson(_json["input"]);
    }
    if (_json.containsKey("voice")) {
      voice = new VoiceSelectionParams.fromJson(_json["voice"]);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audioConfig != null) {
      _json["audioConfig"] = (audioConfig).toJson();
    }
    if (input != null) {
      _json["input"] = (input).toJson();
    }
    if (voice != null) {
      _json["voice"] = (voice).toJson();
    }
    return _json;
  }
}

/// The message returned to the client by the `SynthesizeSpeech` method.
class SynthesizeSpeechResponse {
  /// The audio data bytes encoded as specified in the request, including the
  /// header for encodings that are wrapped in containers (e.g. MP3, OGG_OPUS).
  /// For LINEAR16 audio, we include the WAV header. Note: as
  /// with all bytes fields, protobuffers use a pure binary representation,
  /// whereas JSON representations use base64.
  core.String audioContent;
  core.List<core.int> get audioContentAsBytes {
    return convert.base64.decode(audioContent);
  }

  set audioContentAsBytes(core.List<core.int> _bytes) {
    audioContent =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  SynthesizeSpeechResponse();

  SynthesizeSpeechResponse.fromJson(core.Map _json) {
    if (_json.containsKey("audioContent")) {
      audioContent = _json["audioContent"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (audioContent != null) {
      _json["audioContent"] = audioContent;
    }
    return _json;
  }
}

/// Description of a voice supported by the TTS service.
class Voice {
  /// The languages that this voice supports, expressed as
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags (e.g.
  /// "en-US", "es-419", "cmn-tw").
  core.List<core.String> languageCodes;

  /// The name of this voice.  Each distinct voice has a unique name.
  core.String name;

  /// The natural sample rate (in hertz) for this voice.
  core.int naturalSampleRateHertz;

  /// The gender of this voice.
  /// Possible string values are:
  /// - "SSML_VOICE_GENDER_UNSPECIFIED" : An unspecified gender.
  /// In VoiceSelectionParams, this means that the client doesn't care which
  /// gender the selected voice will have. In the Voice field of
  /// ListVoicesResponse, this may mean that the voice doesn't fit any of the
  /// other categories in this enum, or that the gender of the voice isn't
  /// known.
  /// - "MALE" : A male voice.
  /// - "FEMALE" : A female voice.
  /// - "NEUTRAL" : A gender-neutral voice.
  core.String ssmlGender;

  Voice();

  Voice.fromJson(core.Map _json) {
    if (_json.containsKey("languageCodes")) {
      languageCodes = (_json["languageCodes"] as core.List).cast<core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("naturalSampleRateHertz")) {
      naturalSampleRateHertz = _json["naturalSampleRateHertz"];
    }
    if (_json.containsKey("ssmlGender")) {
      ssmlGender = _json["ssmlGender"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (languageCodes != null) {
      _json["languageCodes"] = languageCodes;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (naturalSampleRateHertz != null) {
      _json["naturalSampleRateHertz"] = naturalSampleRateHertz;
    }
    if (ssmlGender != null) {
      _json["ssmlGender"] = ssmlGender;
    }
    return _json;
  }
}

/// Description of which voice to use for a synthesis request.
class VoiceSelectionParams {
  /// The language (and optionally also the region) of the voice expressed as a
  /// [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag, e.g.
  /// "en-US". Required. This should not include a script tag (e.g. use
  /// "cmn-cn" rather than "cmn-Hant-cn"), because the script will be inferred
  /// from the input provided in the SynthesisInput.  The TTS service
  /// will use this parameter to help choose an appropriate voice.  Note that
  /// the TTS service may choose a voice with a slightly different language code
  /// than the one selected; it may substitute a different region
  /// (e.g. using en-US rather than en-CA if there isn't a Canadian voice
  /// available), or even a different language, e.g. using "nb" (Norwegian
  /// Bokmal) instead of "no" (Norwegian)".
  core.String languageCode;

  /// The name of the voice. Optional; if not set, the service will choose a
  /// voice based on the other parameters such as language_code and gender.
  core.String name;

  /// The preferred gender of the voice. Optional; if not set, the service will
  /// choose a voice based on the other parameters such as language_code and
  /// name. Note that this is only a preference, not requirement; if a
  /// voice of the appropriate gender is not available, the synthesizer should
  /// substitute a voice with a different gender rather than failing the
  /// request.
  /// Possible string values are:
  /// - "SSML_VOICE_GENDER_UNSPECIFIED" : An unspecified gender.
  /// In VoiceSelectionParams, this means that the client doesn't care which
  /// gender the selected voice will have. In the Voice field of
  /// ListVoicesResponse, this may mean that the voice doesn't fit any of the
  /// other categories in this enum, or that the gender of the voice isn't
  /// known.
  /// - "MALE" : A male voice.
  /// - "FEMALE" : A female voice.
  /// - "NEUTRAL" : A gender-neutral voice.
  core.String ssmlGender;

  VoiceSelectionParams();

  VoiceSelectionParams.fromJson(core.Map _json) {
    if (_json.containsKey("languageCode")) {
      languageCode = _json["languageCode"];
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("ssmlGender")) {
      ssmlGender = _json["ssmlGender"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (languageCode != null) {
      _json["languageCode"] = languageCode;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (ssmlGender != null) {
      _json["ssmlGender"] = ssmlGender;
    }
    return _json;
  }
}
