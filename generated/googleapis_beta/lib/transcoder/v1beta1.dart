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

/// Transcoder API - v1beta1
///
/// This API converts video files into formats suitable for consumer
/// distribution.
///
/// For more information, see <https://cloud.google.com/transcoder/docs/>
///
/// Create an instance of [TranscoderApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsJobTemplatesResource]
///     - [ProjectsLocationsJobsResource]
library transcoder.v1beta1;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// This API converts video files into formats suitable for consumer
/// distribution.
class TranscoderApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  TranscoderApi(http.Client client,
      {core.String rootUrl = 'https://transcoder.googleapis.com/',
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

  ProjectsLocationsJobTemplatesResource get jobTemplates =>
      ProjectsLocationsJobTemplatesResource(_requester);
  ProjectsLocationsJobsResource get jobs =>
      ProjectsLocationsJobsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsJobTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a job template in the specified region.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location to create this job template.
  /// Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [jobTemplateId] - Required. The ID to use for the job template, which will
  /// become the final component of the job template's resource name. This value
  /// should be 4-63 characters, and valid characters must match the regular
  /// expression `a-zA-Z*`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobTemplate> create(
    JobTemplate request,
    core.String parent, {
    core.String? jobTemplateId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if (jobTemplateId != null) 'jobTemplateId': [jobTemplateId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/jobTemplates';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return JobTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job template.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the job template to delete.
  /// `projects/{project}/locations/{location}/jobTemplates/{job_template}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobTemplates/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the job template data.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the job template to retrieve. Format:
  /// `projects/{project}/locations/{location}/jobTemplates/{job_template}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobTemplates/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobTemplate].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobTemplate> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return JobTemplate.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists job templates in the specified region.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location from which to retrieve the
  /// collection of job templates. Format:
  /// `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobTemplatesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobTemplatesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/jobTemplates';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobTemplatesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a job in the specified region.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent location to create and process this job.
  /// Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> create(
    Job request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request.toJson());
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the job to delete. Format:
  /// `projects/{project}/locations/{location}/jobs/{job}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the job data.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the job to retrieve. Format:
  /// `projects/{project}/locations/{location}/jobs/{job}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/jobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Job].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Job> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Job.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists jobs in the specified region.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The `next_page_token` value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Ad break.
class AdBreak {
  /// Start time in seconds for the ad break, relative to the output file
  /// timeline.
  ///
  /// The default is `0s`.
  core.String? startTimeOffset;

  AdBreak({
    this.startTimeOffset,
  });

  AdBreak.fromJson(core.Map _json)
      : this(
          startTimeOffset: _json.containsKey('startTimeOffset')
              ? _json['startTimeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
      };
}

/// Configuration for AES-128 encryption.
class Aes128Encryption {
  /// URI of the key delivery service.
  ///
  /// This URI is inserted into the M3U8 header.
  ///
  /// Required.
  core.String? keyUri;

  Aes128Encryption({
    this.keyUri,
  });

  Aes128Encryption.fromJson(core.Map _json)
      : this(
          keyUri: _json.containsKey('keyUri')
              ? _json['keyUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyUri != null) 'keyUri': keyUri!,
      };
}

/// Animation types.
class Animation {
  /// End previous animation.
  AnimationEnd? animationEnd;

  /// Display overlay object with fade animation.
  AnimationFade? animationFade;

  /// Display static overlay object.
  AnimationStatic? animationStatic;

  Animation({
    this.animationEnd,
    this.animationFade,
    this.animationStatic,
  });

  Animation.fromJson(core.Map _json)
      : this(
          animationEnd: _json.containsKey('animationEnd')
              ? AnimationEnd.fromJson(
                  _json['animationEnd'] as core.Map<core.String, core.dynamic>)
              : null,
          animationFade: _json.containsKey('animationFade')
              ? AnimationFade.fromJson(
                  _json['animationFade'] as core.Map<core.String, core.dynamic>)
              : null,
          animationStatic: _json.containsKey('animationStatic')
              ? AnimationStatic.fromJson(_json['animationStatic']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (animationEnd != null) 'animationEnd': animationEnd!.toJson(),
        if (animationFade != null) 'animationFade': animationFade!.toJson(),
        if (animationStatic != null)
          'animationStatic': animationStatic!.toJson(),
      };
}

/// End previous overlay animation from the video.
///
/// Without AnimationEnd, the overlay object will keep the state of previous
/// animation until the end of the video.
class AnimationEnd {
  /// The time to end overlay object, in seconds.
  ///
  /// Default: 0
  core.String? startTimeOffset;

  AnimationEnd({
    this.startTimeOffset,
  });

  AnimationEnd.fromJson(core.Map _json)
      : this(
          startTimeOffset: _json.containsKey('startTimeOffset')
              ? _json['startTimeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
      };
}

/// Display overlay object with fade animation.
class AnimationFade {
  /// The time to end the fade animation, in seconds.
  ///
  /// Default: `start_time_offset` + 1s
  core.String? endTimeOffset;

  /// Type of fade animation: `FADE_IN` or `FADE_OUT`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "FADE_TYPE_UNSPECIFIED" : The fade type is not specified.
  /// - "FADE_IN" : Fade the overlay object into view.
  /// - "FADE_OUT" : Fade the overlay object out of view.
  core.String? fadeType;

  /// The time to start the fade animation, in seconds.
  ///
  /// Default: 0
  core.String? startTimeOffset;

  /// Normalized coordinates based on output video resolution.
  ///
  /// Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the
  /// overlay object. For example, use the x and y coordinates {0,0} to position
  /// the top-left corner of the overlay animation in the top-left corner of the
  /// output video.
  NormalizedCoordinate? xy;

  AnimationFade({
    this.endTimeOffset,
    this.fadeType,
    this.startTimeOffset,
    this.xy,
  });

  AnimationFade.fromJson(core.Map _json)
      : this(
          endTimeOffset: _json.containsKey('endTimeOffset')
              ? _json['endTimeOffset'] as core.String
              : null,
          fadeType: _json.containsKey('fadeType')
              ? _json['fadeType'] as core.String
              : null,
          startTimeOffset: _json.containsKey('startTimeOffset')
              ? _json['startTimeOffset'] as core.String
              : null,
          xy: _json.containsKey('xy')
              ? NormalizedCoordinate.fromJson(
                  _json['xy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTimeOffset != null) 'endTimeOffset': endTimeOffset!,
        if (fadeType != null) 'fadeType': fadeType!,
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
        if (xy != null) 'xy': xy!.toJson(),
      };
}

/// Display static overlay object.
class AnimationStatic {
  /// The time to start displaying the overlay object, in seconds.
  ///
  /// Default: 0
  core.String? startTimeOffset;

  /// Normalized coordinates based on output video resolution.
  ///
  /// Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the
  /// overlay object. For example, use the x and y coordinates {0,0} to position
  /// the top-left corner of the overlay animation in the top-left corner of the
  /// output video.
  NormalizedCoordinate? xy;

  AnimationStatic({
    this.startTimeOffset,
    this.xy,
  });

  AnimationStatic.fromJson(core.Map _json)
      : this(
          startTimeOffset: _json.containsKey('startTimeOffset')
              ? _json['startTimeOffset'] as core.String
              : null,
          xy: _json.containsKey('xy')
              ? NormalizedCoordinate.fromJson(
                  _json['xy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
        if (xy != null) 'xy': xy!.toJson(),
      };
}

/// Audio preprocessing configuration.
class Audio {
  /// Enable boosting high frequency components.
  ///
  /// The default is `false`.
  core.bool? highBoost;

  /// Enable boosting low frequency components.
  ///
  /// The default is `false`.
  core.bool? lowBoost;

  /// Specify audio loudness normalization in loudness units relative to full
  /// scale (LUFS).
  ///
  /// Enter a value between -24 and 0 (the default), where: * -24 is the
  /// Advanced Television Systems Committee (ATSC A/85) standard * -23 is the EU
  /// R128 broadcast standard * -19 is the prior standard for online mono audio
  /// * -18 is the ReplayGain standard * -16 is the prior standard for stereo
  /// audio * -14 is the new online audio standard recommended by Spotify, as
  /// well as Amazon Echo * 0 disables normalization
  core.double? lufs;

  Audio({
    this.highBoost,
    this.lowBoost,
    this.lufs,
  });

  Audio.fromJson(core.Map _json)
      : this(
          highBoost: _json.containsKey('highBoost')
              ? _json['highBoost'] as core.bool
              : null,
          lowBoost: _json.containsKey('lowBoost')
              ? _json['lowBoost'] as core.bool
              : null,
          lufs: _json.containsKey('lufs')
              ? (_json['lufs'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highBoost != null) 'highBoost': highBoost!,
        if (lowBoost != null) 'lowBoost': lowBoost!,
        if (lufs != null) 'lufs': lufs!,
      };
}

/// The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.
class AudioAtom {
  /// List of `Channel`s for this audio stream.
  ///
  /// for in-depth explanation.
  core.List<AudioChannel>? channels;

  /// The `EditAtom.key` that references the atom with audio inputs in the
  /// `Job.edit_list`.
  ///
  /// Required.
  core.String? key;

  AudioAtom({
    this.channels,
    this.key,
  });

  AudioAtom.fromJson(core.Map _json)
      : this(
          channels: _json.containsKey('channels')
              ? (_json['channels'] as core.List)
                  .map<AudioChannel>((value) => AudioChannel.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channels != null)
          'channels': channels!.map((value) => value.toJson()).toList(),
        if (key != null) 'key': key!,
      };
}

/// The audio channel.
class AudioChannel {
  /// List of `Job.inputs` for this audio channel.
  core.List<AudioChannelInput>? inputs;

  AudioChannel({
    this.inputs,
  });

  AudioChannel.fromJson(core.Map _json)
      : this(
          inputs: _json.containsKey('inputs')
              ? (_json['inputs'] as core.List)
                  .map<AudioChannelInput>((value) => AudioChannelInput.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputs != null)
          'inputs': inputs!.map((value) => value.toJson()).toList(),
      };
}

/// Identifies which input file, track, and channel should be used.
class AudioChannelInput {
  /// The zero-based index of the channel in the input file.
  ///
  /// Required.
  core.int? channel;

  /// Audio volume control in dB.
  ///
  /// Negative values decrease volume, positive values increase. The default is
  /// 0.
  core.double? gainDb;

  /// The `Input.key` that identifies the input file.
  ///
  /// Required.
  core.String? key;

  /// The zero-based index of the track in the input file.
  ///
  /// Required.
  core.int? track;

  AudioChannelInput({
    this.channel,
    this.gainDb,
    this.key,
    this.track,
  });

  AudioChannelInput.fromJson(core.Map _json)
      : this(
          channel: _json.containsKey('channel')
              ? _json['channel'] as core.int
              : null,
          gainDb: _json.containsKey('gainDb')
              ? (_json['gainDb'] as core.num).toDouble()
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          track: _json.containsKey('track') ? _json['track'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (channel != null) 'channel': channel!,
        if (gainDb != null) 'gainDb': gainDb!,
        if (key != null) 'key': key!,
        if (track != null) 'track': track!,
      };
}

/// Audio stream resource.
class AudioStream {
  /// Audio bitrate in bits per second.
  ///
  /// Must be between 1 and 10,000,000.
  ///
  /// Required.
  core.int? bitrateBps;

  /// Number of audio channels.
  ///
  /// Must be between 1 and 6. The default is 2.
  core.int? channelCount;

  /// A list of channel names specifying layout of the audio channels.
  ///
  /// This only affects the metadata embedded in the container headers, if
  /// supported by the specified format. The default is `["fl", "fr"]`.
  /// Supported channel names: - 'fl' - Front left channel - 'fr' - Front right
  /// channel - 'sl' - Side left channel - 'sr' - Side right channel - 'fc' -
  /// Front center channel - 'lfe' - Low frequency
  core.List<core.String>? channelLayout;

  /// The codec for this audio stream.
  ///
  /// The default is `"aac"`. Supported audio codecs: - 'aac' - 'aac-he' -
  /// 'aac-he-v2' - 'mp3' - 'ac3' - 'eac3'
  core.String? codec;

  /// The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.
  core.List<AudioAtom>? mapping;

  /// The audio sample rate in Hertz.
  ///
  /// The default is 48000 Hertz.
  core.int? sampleRateHertz;

  AudioStream({
    this.bitrateBps,
    this.channelCount,
    this.channelLayout,
    this.codec,
    this.mapping,
    this.sampleRateHertz,
  });

  AudioStream.fromJson(core.Map _json)
      : this(
          bitrateBps: _json.containsKey('bitrateBps')
              ? _json['bitrateBps'] as core.int
              : null,
          channelCount: _json.containsKey('channelCount')
              ? _json['channelCount'] as core.int
              : null,
          channelLayout: _json.containsKey('channelLayout')
              ? (_json['channelLayout'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          codec:
              _json.containsKey('codec') ? _json['codec'] as core.String : null,
          mapping: _json.containsKey('mapping')
              ? (_json['mapping'] as core.List)
                  .map<AudioAtom>((value) => AudioAtom.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sampleRateHertz: _json.containsKey('sampleRateHertz')
              ? _json['sampleRateHertz'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (channelCount != null) 'channelCount': channelCount!,
        if (channelLayout != null) 'channelLayout': channelLayout!,
        if (codec != null) 'codec': codec!,
        if (mapping != null)
          'mapping': mapping!.map((value) => value.toJson()).toList(),
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
      };
}

/// Color preprocessing configuration.
class Color {
  /// Control brightness of the video.
  ///
  /// Enter a value between -1 and 1, where -1 is minimum brightness and 1 is
  /// maximum brightness. 0 is no change. The default is 0.
  core.double? brightness;

  /// Control black and white contrast of the video.
  ///
  /// Enter a value between -1 and 1, where -1 is minimum contrast and 1 is
  /// maximum contrast. 0 is no change. The default is 0.
  core.double? contrast;

  /// Control color saturation of the video.
  ///
  /// Enter a value between -1 and 1, where -1 is fully desaturated and 1 is
  /// maximum saturation. 0 is no change. The default is 0.
  core.double? saturation;

  Color({
    this.brightness,
    this.contrast,
    this.saturation,
  });

  Color.fromJson(core.Map _json)
      : this(
          brightness: _json.containsKey('brightness')
              ? (_json['brightness'] as core.num).toDouble()
              : null,
          contrast: _json.containsKey('contrast')
              ? (_json['contrast'] as core.num).toDouble()
              : null,
          saturation: _json.containsKey('saturation')
              ? (_json['saturation'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (brightness != null) 'brightness': brightness!,
        if (contrast != null) 'contrast': contrast!,
        if (saturation != null) 'saturation': saturation!,
      };
}

/// Video cropping configuration for the input video.
///
/// The cropped input video is scaled to match the output resolution.
class Crop {
  /// The number of pixels to crop from the bottom.
  ///
  /// The default is 0.
  core.int? bottomPixels;

  /// The number of pixels to crop from the left.
  ///
  /// The default is 0.
  core.int? leftPixels;

  /// The number of pixels to crop from the right.
  ///
  /// The default is 0.
  core.int? rightPixels;

  /// The number of pixels to crop from the top.
  ///
  /// The default is 0.
  core.int? topPixels;

  Crop({
    this.bottomPixels,
    this.leftPixels,
    this.rightPixels,
    this.topPixels,
  });

  Crop.fromJson(core.Map _json)
      : this(
          bottomPixels: _json.containsKey('bottomPixels')
              ? _json['bottomPixels'] as core.int
              : null,
          leftPixels: _json.containsKey('leftPixels')
              ? _json['leftPixels'] as core.int
              : null,
          rightPixels: _json.containsKey('rightPixels')
              ? _json['rightPixels'] as core.int
              : null,
          topPixels: _json.containsKey('topPixels')
              ? _json['topPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottomPixels != null) 'bottomPixels': bottomPixels!,
        if (leftPixels != null) 'leftPixels': leftPixels!,
        if (rightPixels != null) 'rightPixels': rightPixels!,
        if (topPixels != null) 'topPixels': topPixels!,
      };
}

/// Deblock preprocessing configuration.
class Deblock {
  /// Enable deblocker.
  ///
  /// The default is `false`.
  core.bool? enabled;

  /// Set strength of the deblocker.
  ///
  /// Enter a value between 0 and 1. The higher the value, the stronger the
  /// block removal. 0 is no deblocking. The default is 0.
  core.double? strength;

  Deblock({
    this.enabled,
    this.strength,
  });

  Deblock.fromJson(core.Map _json)
      : this(
          enabled: _json.containsKey('enabled')
              ? _json['enabled'] as core.bool
              : null,
          strength: _json.containsKey('strength')
              ? (_json['strength'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (strength != null) 'strength': strength!,
      };
}

/// Denoise preprocessing configuration.
class Denoise {
  /// Set strength of the denoise.
  ///
  /// Enter a value between 0 and 1. The higher the value, the smoother the
  /// image. 0 is no denoising. The default is 0.
  core.double? strength;

  /// Set the denoiser mode.
  ///
  /// The default is `"standard"`. Supported denoiser modes: - 'standard' -
  /// 'grain'
  core.String? tune;

  Denoise({
    this.strength,
    this.tune,
  });

  Denoise.fromJson(core.Map _json)
      : this(
          strength: _json.containsKey('strength')
              ? (_json['strength'] as core.num).toDouble()
              : null,
          tune: _json.containsKey('tune') ? _json['tune'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (strength != null) 'strength': strength!,
        if (tune != null) 'tune': tune!,
      };
}

/// Edit atom.
class EditAtom {
  /// End time in seconds for the atom, relative to the input file timeline.
  ///
  /// When `end_time_offset` is not specified, the `inputs` are used until the
  /// end of the atom.
  core.String? endTimeOffset;

  /// List of `Input.key`s identifying files that should be used in this atom.
  ///
  /// The listed `inputs` must have the same timeline.
  core.List<core.String>? inputs;

  /// A unique key for this atom.
  ///
  /// Must be specified when using advanced mapping.
  core.String? key;

  /// Start time in seconds for the atom, relative to the input file timeline.
  ///
  /// The default is `0s`.
  core.String? startTimeOffset;

  EditAtom({
    this.endTimeOffset,
    this.inputs,
    this.key,
    this.startTimeOffset,
  });

  EditAtom.fromJson(core.Map _json)
      : this(
          endTimeOffset: _json.containsKey('endTimeOffset')
              ? _json['endTimeOffset'] as core.String
              : null,
          inputs: _json.containsKey('inputs')
              ? (_json['inputs'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          startTimeOffset: _json.containsKey('startTimeOffset')
              ? _json['startTimeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTimeOffset != null) 'endTimeOffset': endTimeOffset!,
        if (inputs != null) 'inputs': inputs!,
        if (key != null) 'key': key!,
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
      };
}

/// Encoding of an input file such as an audio, video, or text track.
///
/// Elementary streams must be packaged before mapping and sharing between
/// different output formats.
class ElementaryStream {
  /// Encoding of an audio stream.
  AudioStream? audioStream;

  /// A unique key for this elementary stream.
  core.String? key;

  /// Encoding of a text stream.
  ///
  /// For example, closed captions or subtitles.
  TextStream? textStream;

  /// Encoding of a video stream.
  VideoStream? videoStream;

  ElementaryStream({
    this.audioStream,
    this.key,
    this.textStream,
    this.videoStream,
  });

  ElementaryStream.fromJson(core.Map _json)
      : this(
          audioStream: _json.containsKey('audioStream')
              ? AudioStream.fromJson(
                  _json['audioStream'] as core.Map<core.String, core.dynamic>)
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          textStream: _json.containsKey('textStream')
              ? TextStream.fromJson(
                  _json['textStream'] as core.Map<core.String, core.dynamic>)
              : null,
          videoStream: _json.containsKey('videoStream')
              ? VideoStream.fromJson(
                  _json['videoStream'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioStream != null) 'audioStream': audioStream!.toJson(),
        if (key != null) 'key': key!,
        if (textStream != null) 'textStream': textStream!.toJson(),
        if (videoStream != null) 'videoStream': videoStream!.toJson(),
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.dynamic> toJson() => {};
}

/// Encryption settings.
class Encryption {
  /// Configuration for AES-128 encryption.
  Aes128Encryption? aes128;

  /// 128 bit Initialization Vector (IV) represented as lowercase hexadecimal
  /// digits.
  ///
  /// Required.
  core.String? iv;

  /// 128 bit encryption key represented as lowercase hexadecimal digits.
  ///
  /// Required.
  core.String? key;

  /// Configuration for MPEG Common Encryption (MPEG-CENC).
  MpegCommonEncryption? mpegCenc;

  /// Configuration for SAMPLE-AES encryption.
  SampleAesEncryption? sampleAes;

  Encryption({
    this.aes128,
    this.iv,
    this.key,
    this.mpegCenc,
    this.sampleAes,
  });

  Encryption.fromJson(core.Map _json)
      : this(
          aes128: _json.containsKey('aes128')
              ? Aes128Encryption.fromJson(
                  _json['aes128'] as core.Map<core.String, core.dynamic>)
              : null,
          iv: _json.containsKey('iv') ? _json['iv'] as core.String : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          mpegCenc: _json.containsKey('mpegCenc')
              ? MpegCommonEncryption.fromJson(
                  _json['mpegCenc'] as core.Map<core.String, core.dynamic>)
              : null,
          sampleAes: _json.containsKey('sampleAes')
              ? SampleAesEncryption.fromJson(
                  _json['sampleAes'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aes128 != null) 'aes128': aes128!.toJson(),
        if (iv != null) 'iv': iv!,
        if (key != null) 'key': key!,
        if (mpegCenc != null) 'mpegCenc': mpegCenc!.toJson(),
        if (sampleAes != null) 'sampleAes': sampleAes!.toJson(),
      };
}

/// Additional information about the reasons for the failure.
class FailureDetail {
  /// A description of the failure.
  core.String? description;

  FailureDetail({
    this.description,
  });

  FailureDetail.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
      };
}

/// Overlaid jpeg image.
class Image {
  /// Target image opacity.
  ///
  /// Valid values are from `1.0` (solid, default) to `0.0` (transparent),
  /// exclusive. Set this to a value greater than `0.0`.
  core.double? alpha;

  /// Normalized image resolution, based on output video resolution.
  ///
  /// Valid values: `0.0`–`1.0`. To respect the original image aspect ratio, set
  /// either `x` or `y` to `0.0`. To use the original image resolution, set both
  /// `x` and `y` to `0.0`.
  NormalizedCoordinate? resolution;

  /// URI of the JPEG image in Cloud Storage.
  ///
  /// For example, `gs://bucket/inputs/image.jpeg`. JPEG is the only supported
  /// image type.
  ///
  /// Required.
  core.String? uri;

  Image({
    this.alpha,
    this.resolution,
    this.uri,
  });

  Image.fromJson(core.Map _json)
      : this(
          alpha: _json.containsKey('alpha')
              ? (_json['alpha'] as core.num).toDouble()
              : null,
          resolution: _json.containsKey('resolution')
              ? NormalizedCoordinate.fromJson(
                  _json['resolution'] as core.Map<core.String, core.dynamic>)
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alpha != null) 'alpha': alpha!,
        if (resolution != null) 'resolution': resolution!.toJson(),
        if (uri != null) 'uri': uri!,
      };
}

/// Input asset.
class Input {
  /// A unique key for this input.
  ///
  /// Must be specified when using advanced mapping and edit lists.
  core.String? key;

  /// Preprocessing configurations.
  PreprocessingConfig? preprocessingConfig;

  /// URI of the media.
  ///
  /// Input files must be at least 5 seconds in duration and stored in Cloud
  /// Storage (for example, `gs://bucket/inputs/file.mp4`). If empty, the value
  /// will be populated from `Job.input_uri`.
  core.String? uri;

  Input({
    this.key,
    this.preprocessingConfig,
    this.uri,
  });

  Input.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          preprocessingConfig: _json.containsKey('preprocessingConfig')
              ? PreprocessingConfig.fromJson(_json['preprocessingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (preprocessingConfig != null)
          'preprocessingConfig': preprocessingConfig!.toJson(),
        if (uri != null) 'uri': uri!,
      };
}

/// Transcoding job resource.
class Job {
  /// The configuration for this job.
  JobConfig? config;

  /// The time the job was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time the transcoding finished.
  ///
  /// Output only.
  core.String? endTime;

  /// List of failure details.
  ///
  /// This property may contain additional information about the failure when
  /// `failure_reason` is present. *Note*: This feature is not yet available.
  ///
  /// Output only.
  core.List<FailureDetail>? failureDetails;

  /// A description of the reason for the failure.
  ///
  /// This property is always present when `state` is `FAILED`.
  ///
  /// Output only.
  core.String? failureReason;

  /// Input only.
  ///
  /// Specify the `input_uri` to populate empty `uri` fields in each element of
  /// `Job.config.inputs` or `JobTemplate.config.inputs` when using template.
  /// URI of the media. Input files must be at least 5 seconds in duration and
  /// stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`).
  core.String? inputUri;

  /// The resource name of the job.
  ///
  /// Format: `projects/{project}/locations/{location}/jobs/{job}`
  core.String? name;

  /// The origin URI.
  ///
  /// *Note*: This feature is not yet available.
  ///
  /// Output only.
  OriginUri? originUri;

  /// Input only.
  ///
  /// Specify the `output_uri` to populate an empty `Job.config.output.uri` or
  /// `JobTemplate.config.output.uri` when using template. URI for the output
  /// file(s). For example, `gs://my-bucket/outputs/`.
  core.String? outputUri;

  /// Specify the priority of the job.
  ///
  /// Enter a value between 0 and 100, where 0 is the lowest priority and 100 is
  /// the highest priority. The default is 0.
  core.int? priority;

  /// Estimated fractional progress, from `0` to `1` for each step.
  ///
  /// *Note*: This feature is not yet available.
  ///
  /// Output only.
  Progress? progress;

  /// The time the transcoding started.
  ///
  /// Output only.
  core.String? startTime;

  /// The current state of the job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROCESSING_STATE_UNSPECIFIED" : The processing state is not specified.
  /// - "PENDING" : The job is enqueued and will be picked up for processing
  /// soon.
  /// - "RUNNING" : The job is being processed.
  /// - "SUCCEEDED" : The job has been completed successfully.
  /// - "FAILED" : The job has failed. For additional information, see
  /// `failure_reason` and `failure_details`
  core.String? state;

  /// Input only.
  ///
  /// Specify the `template_id` to use for populating `Job.config`. The default
  /// is `preset/web-hd`. Preset Transcoder templates: - `preset/{preset_id}` -
  /// User defined JobTemplate: `{job_template_id}`
  core.String? templateId;

  /// Job time to live value in days, which will be effective after job
  /// completion.
  ///
  /// Job should be deleted automatically after the given TTL. Enter a value
  /// between 1 and 90. The default is 30.
  core.int? ttlAfterCompletionDays;

  Job({
    this.config,
    this.createTime,
    this.endTime,
    this.failureDetails,
    this.failureReason,
    this.inputUri,
    this.name,
    this.originUri,
    this.outputUri,
    this.priority,
    this.progress,
    this.startTime,
    this.state,
    this.templateId,
    this.ttlAfterCompletionDays,
  });

  Job.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? JobConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          failureDetails: _json.containsKey('failureDetails')
              ? (_json['failureDetails'] as core.List)
                  .map<FailureDetail>((value) => FailureDetail.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          failureReason: _json.containsKey('failureReason')
              ? _json['failureReason'] as core.String
              : null,
          inputUri: _json.containsKey('inputUri')
              ? _json['inputUri'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          originUri: _json.containsKey('originUri')
              ? OriginUri.fromJson(
                  _json['originUri'] as core.Map<core.String, core.dynamic>)
              : null,
          outputUri: _json.containsKey('outputUri')
              ? _json['outputUri'] as core.String
              : null,
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.int
              : null,
          progress: _json.containsKey('progress')
              ? Progress.fromJson(
                  _json['progress'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          templateId: _json.containsKey('templateId')
              ? _json['templateId'] as core.String
              : null,
          ttlAfterCompletionDays: _json.containsKey('ttlAfterCompletionDays')
              ? _json['ttlAfterCompletionDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!.toJson(),
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (failureDetails != null)
          'failureDetails':
              failureDetails!.map((value) => value.toJson()).toList(),
        if (failureReason != null) 'failureReason': failureReason!,
        if (inputUri != null) 'inputUri': inputUri!,
        if (name != null) 'name': name!,
        if (originUri != null) 'originUri': originUri!.toJson(),
        if (outputUri != null) 'outputUri': outputUri!,
        if (priority != null) 'priority': priority!,
        if (progress != null) 'progress': progress!.toJson(),
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (templateId != null) 'templateId': templateId!,
        if (ttlAfterCompletionDays != null)
          'ttlAfterCompletionDays': ttlAfterCompletionDays!,
      };
}

/// Job configuration
class JobConfig {
  /// List of ad breaks.
  ///
  /// Specifies where to insert ad break tags in the output manifests.
  core.List<AdBreak>? adBreaks;

  /// List of `Edit atom`s.
  ///
  /// Defines the ultimate timeline of the resulting file or manifest.
  core.List<EditAtom>? editList;

  /// List of elementary streams.
  core.List<ElementaryStream>? elementaryStreams;

  /// List of input assets stored in Cloud Storage.
  core.List<Input>? inputs;

  /// List of output manifests.
  core.List<Manifest>? manifests;

  /// List of multiplexing settings for output streams.
  core.List<MuxStream>? muxStreams;

  /// Output configuration.
  Output? output;

  /// List of overlays on the output video, in descending Z-order.
  core.List<Overlay>? overlays;

  /// Destination on Pub/Sub.
  PubsubDestination? pubsubDestination;

  /// List of output sprite sheets.
  core.List<SpriteSheet>? spriteSheets;

  JobConfig({
    this.adBreaks,
    this.editList,
    this.elementaryStreams,
    this.inputs,
    this.manifests,
    this.muxStreams,
    this.output,
    this.overlays,
    this.pubsubDestination,
    this.spriteSheets,
  });

  JobConfig.fromJson(core.Map _json)
      : this(
          adBreaks: _json.containsKey('adBreaks')
              ? (_json['adBreaks'] as core.List)
                  .map<AdBreak>((value) => AdBreak.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          editList: _json.containsKey('editList')
              ? (_json['editList'] as core.List)
                  .map<EditAtom>((value) => EditAtom.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          elementaryStreams: _json.containsKey('elementaryStreams')
              ? (_json['elementaryStreams'] as core.List)
                  .map<ElementaryStream>((value) => ElementaryStream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inputs: _json.containsKey('inputs')
              ? (_json['inputs'] as core.List)
                  .map<Input>((value) => Input.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          manifests: _json.containsKey('manifests')
              ? (_json['manifests'] as core.List)
                  .map<Manifest>((value) => Manifest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          muxStreams: _json.containsKey('muxStreams')
              ? (_json['muxStreams'] as core.List)
                  .map<MuxStream>((value) => MuxStream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          output: _json.containsKey('output')
              ? Output.fromJson(
                  _json['output'] as core.Map<core.String, core.dynamic>)
              : null,
          overlays: _json.containsKey('overlays')
              ? (_json['overlays'] as core.List)
                  .map<Overlay>((value) => Overlay.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pubsubDestination: _json.containsKey('pubsubDestination')
              ? PubsubDestination.fromJson(_json['pubsubDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spriteSheets: _json.containsKey('spriteSheets')
              ? (_json['spriteSheets'] as core.List)
                  .map<SpriteSheet>((value) => SpriteSheet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adBreaks != null)
          'adBreaks': adBreaks!.map((value) => value.toJson()).toList(),
        if (editList != null)
          'editList': editList!.map((value) => value.toJson()).toList(),
        if (elementaryStreams != null)
          'elementaryStreams':
              elementaryStreams!.map((value) => value.toJson()).toList(),
        if (inputs != null)
          'inputs': inputs!.map((value) => value.toJson()).toList(),
        if (manifests != null)
          'manifests': manifests!.map((value) => value.toJson()).toList(),
        if (muxStreams != null)
          'muxStreams': muxStreams!.map((value) => value.toJson()).toList(),
        if (output != null) 'output': output!.toJson(),
        if (overlays != null)
          'overlays': overlays!.map((value) => value.toJson()).toList(),
        if (pubsubDestination != null)
          'pubsubDestination': pubsubDestination!.toJson(),
        if (spriteSheets != null)
          'spriteSheets': spriteSheets!.map((value) => value.toJson()).toList(),
      };
}

/// Transcoding job template resource.
class JobTemplate {
  /// The configuration for this template.
  JobConfig? config;

  /// The resource name of the job template.
  ///
  /// Format:
  /// `projects/{project}/locations/{location}/jobTemplates/{job_template}`
  core.String? name;

  JobTemplate({
    this.config,
    this.name,
  });

  JobTemplate.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? JobConfig.fromJson(
                  _json['config'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!.toJson(),
        if (name != null) 'name': name!,
      };
}

/// Response message for `TranscoderService.ListJobTemplates`.
class ListJobTemplatesResponse {
  /// List of job templates in the specified region.
  core.List<JobTemplate>? jobTemplates;

  /// The pagination token.
  core.String? nextPageToken;

  ListJobTemplatesResponse({
    this.jobTemplates,
    this.nextPageToken,
  });

  ListJobTemplatesResponse.fromJson(core.Map _json)
      : this(
          jobTemplates: _json.containsKey('jobTemplates')
              ? (_json['jobTemplates'] as core.List)
                  .map<JobTemplate>((value) => JobTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobTemplates != null)
          'jobTemplates': jobTemplates!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for `TranscoderService.ListJobs`.
class ListJobsResponse {
  /// List of jobs in the specified region.
  core.List<Job>? jobs;

  /// The pagination token.
  core.String? nextPageToken;

  ListJobsResponse({
    this.jobs,
    this.nextPageToken,
  });

  ListJobsResponse.fromJson(core.Map _json)
      : this(
          jobs: _json.containsKey('jobs')
              ? (_json['jobs'] as core.List)
                  .map<Job>((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!.map((value) => value.toJson()).toList(),
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Manifest configuration.
class Manifest {
  /// The name of the generated file.
  ///
  /// The default is `"manifest"` with the extension suffix corresponding to the
  /// `Manifest.type`.
  core.String? fileName;

  /// List of user given `MuxStream.key`s that should appear in this manifest.
  ///
  /// When `Manifest.type` is `HLS`, a media manifest with name `MuxStream.key`
  /// and `.m3u8` extension is generated for each element of the
  /// `Manifest.mux_streams`.
  ///
  /// Required.
  core.List<core.String>? muxStreams;

  /// Type of the manifest, can be "HLS" or "DASH".
  ///
  /// Required.
  /// Possible string values are:
  /// - "MANIFEST_TYPE_UNSPECIFIED" : The manifest type is not specified.
  /// - "HLS" : Create `"HLS"` manifest. The corresponding file extension is
  /// `".m3u8"`.
  /// - "DASH" : Create `"DASH"` manifest. The corresponding file extension is
  /// `".mpd"`.
  core.String? type;

  Manifest({
    this.fileName,
    this.muxStreams,
    this.type,
  });

  Manifest.fromJson(core.Map _json)
      : this(
          fileName: _json.containsKey('fileName')
              ? _json['fileName'] as core.String
              : null,
          muxStreams: _json.containsKey('muxStreams')
              ? (_json['muxStreams'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileName != null) 'fileName': fileName!,
        if (muxStreams != null) 'muxStreams': muxStreams!,
        if (type != null) 'type': type!,
      };
}

/// Configuration for MPEG Common Encryption (MPEG-CENC).
class MpegCommonEncryption {
  /// 128 bit Key ID represented as lowercase hexadecimal digits for use with
  /// common encryption.
  ///
  /// Required.
  core.String? keyId;

  /// Specify the encryption scheme.
  ///
  /// Supported encryption schemes: - 'cenc' - 'cbcs'
  ///
  /// Required.
  core.String? scheme;

  MpegCommonEncryption({
    this.keyId,
    this.scheme,
  });

  MpegCommonEncryption.fromJson(core.Map _json)
      : this(
          keyId:
              _json.containsKey('keyId') ? _json['keyId'] as core.String : null,
          scheme: _json.containsKey('scheme')
              ? _json['scheme'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyId != null) 'keyId': keyId!,
        if (scheme != null) 'scheme': scheme!,
      };
}

/// Multiplexing settings for output stream.
class MuxStream {
  /// The container format.
  ///
  /// The default is `"mp4"` Supported container formats: - 'ts' - 'fmp4'- the
  /// corresponding file extension is `".m4s"` - 'mp4' - 'vtt'
  core.String? container;

  /// List of `ElementaryStream.key`s multiplexed in this stream.
  core.List<core.String>? elementaryStreams;

  /// Encryption settings.
  Encryption? encryption;

  /// The name of the generated file.
  ///
  /// The default is `MuxStream.key` with the extension suffix corresponding to
  /// the `MuxStream.container`. Individual segments also have an incremental
  /// 10-digit zero-padded suffix starting from 0 before the extension, such as
  /// `"mux_stream0000000123.ts"`.
  core.String? fileName;

  /// A unique key for this multiplexed stream.
  ///
  /// HLS media manifests will be named `MuxStream.key` with the `".m3u8"`
  /// extension suffix.
  core.String? key;

  /// Segment settings for `"ts"`, `"fmp4"` and `"vtt"`.
  SegmentSettings? segmentSettings;

  MuxStream({
    this.container,
    this.elementaryStreams,
    this.encryption,
    this.fileName,
    this.key,
    this.segmentSettings,
  });

  MuxStream.fromJson(core.Map _json)
      : this(
          container: _json.containsKey('container')
              ? _json['container'] as core.String
              : null,
          elementaryStreams: _json.containsKey('elementaryStreams')
              ? (_json['elementaryStreams'] as core.List)
                  .map<core.String>((value) => value as core.String)
                  .toList()
              : null,
          encryption: _json.containsKey('encryption')
              ? Encryption.fromJson(
                  _json['encryption'] as core.Map<core.String, core.dynamic>)
              : null,
          fileName: _json.containsKey('fileName')
              ? _json['fileName'] as core.String
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          segmentSettings: _json.containsKey('segmentSettings')
              ? SegmentSettings.fromJson(_json['segmentSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (container != null) 'container': container!,
        if (elementaryStreams != null) 'elementaryStreams': elementaryStreams!,
        if (encryption != null) 'encryption': encryption!.toJson(),
        if (fileName != null) 'fileName': fileName!,
        if (key != null) 'key': key!,
        if (segmentSettings != null)
          'segmentSettings': segmentSettings!.toJson(),
      };
}

/// 2D normalized coordinates.
///
/// Default: `{0.0, 0.0}`
class NormalizedCoordinate {
  /// Normalized x coordinate.
  core.double? x;

  /// Normalized y coordinate.
  core.double? y;

  NormalizedCoordinate({
    this.x,
    this.y,
  });

  NormalizedCoordinate.fromJson(core.Map _json)
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

/// The origin URI.
class OriginUri {
  /// Dash manifest URI.
  ///
  /// If multiple Dash manifests are created, only the first one is listed.
  core.String? dash;

  /// HLS manifest URI per https://tools.ietf.org/html/rfc8216#section-4.3.4.
  ///
  /// If multiple HLS manifests are created, only the first one is listed.
  core.String? hls;

  OriginUri({
    this.dash,
    this.hls,
  });

  OriginUri.fromJson(core.Map _json)
      : this(
          dash: _json.containsKey('dash') ? _json['dash'] as core.String : null,
          hls: _json.containsKey('hls') ? _json['hls'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dash != null) 'dash': dash!,
        if (hls != null) 'hls': hls!,
      };
}

/// Location of output file(s) in a Cloud Storage bucket.
class Output {
  /// URI for the output file(s).
  ///
  /// For example, `gs://my-bucket/outputs/`. If empty the value is populated
  /// from `Job.output_uri`.
  core.String? uri;

  Output({
    this.uri,
  });

  Output.fromJson(core.Map _json)
      : this(
          uri: _json.containsKey('uri') ? _json['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Overlay configuration.
class Overlay {
  /// List of Animations.
  ///
  /// The list should be chronological, without any time overlap.
  core.List<Animation>? animations;

  /// Image overlay.
  Image? image;

  Overlay({
    this.animations,
    this.image,
  });

  Overlay.fromJson(core.Map _json)
      : this(
          animations: _json.containsKey('animations')
              ? (_json['animations'] as core.List)
                  .map<Animation>((value) => Animation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: _json.containsKey('image')
              ? Image.fromJson(
                  _json['image'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (animations != null)
          'animations': animations!.map((value) => value.toJson()).toList(),
        if (image != null) 'image': image!.toJson(),
      };
}

/// Pad filter configuration for the input video.
///
/// The padded input video is scaled after padding with black to match the
/// output resolution.
class Pad {
  /// The number of pixels to add to the bottom.
  ///
  /// The default is 0.
  core.int? bottomPixels;

  /// The number of pixels to add to the left.
  ///
  /// The default is 0.
  core.int? leftPixels;

  /// The number of pixels to add to the right.
  ///
  /// The default is 0.
  core.int? rightPixels;

  /// The number of pixels to add to the top.
  ///
  /// The default is 0.
  core.int? topPixels;

  Pad({
    this.bottomPixels,
    this.leftPixels,
    this.rightPixels,
    this.topPixels,
  });

  Pad.fromJson(core.Map _json)
      : this(
          bottomPixels: _json.containsKey('bottomPixels')
              ? _json['bottomPixels'] as core.int
              : null,
          leftPixels: _json.containsKey('leftPixels')
              ? _json['leftPixels'] as core.int
              : null,
          rightPixels: _json.containsKey('rightPixels')
              ? _json['rightPixels'] as core.int
              : null,
          topPixels: _json.containsKey('topPixels')
              ? _json['topPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottomPixels != null) 'bottomPixels': bottomPixels!,
        if (leftPixels != null) 'leftPixels': leftPixels!,
        if (rightPixels != null) 'rightPixels': rightPixels!,
        if (topPixels != null) 'topPixels': topPixels!,
      };
}

/// Preprocessing configurations.
class PreprocessingConfig {
  /// Audio preprocessing configuration.
  Audio? audio;

  /// Color preprocessing configuration.
  Color? color;

  /// Specify the video cropping configuration.
  Crop? crop;

  /// Deblock preprocessing configuration.
  Deblock? deblock;

  /// Denoise preprocessing configuration.
  Denoise? denoise;

  /// Specify the video pad filter configuration.
  Pad? pad;

  PreprocessingConfig({
    this.audio,
    this.color,
    this.crop,
    this.deblock,
    this.denoise,
    this.pad,
  });

  PreprocessingConfig.fromJson(core.Map _json)
      : this(
          audio: _json.containsKey('audio')
              ? Audio.fromJson(
                  _json['audio'] as core.Map<core.String, core.dynamic>)
              : null,
          color: _json.containsKey('color')
              ? Color.fromJson(
                  _json['color'] as core.Map<core.String, core.dynamic>)
              : null,
          crop: _json.containsKey('crop')
              ? Crop.fromJson(
                  _json['crop'] as core.Map<core.String, core.dynamic>)
              : null,
          deblock: _json.containsKey('deblock')
              ? Deblock.fromJson(
                  _json['deblock'] as core.Map<core.String, core.dynamic>)
              : null,
          denoise: _json.containsKey('denoise')
              ? Denoise.fromJson(
                  _json['denoise'] as core.Map<core.String, core.dynamic>)
              : null,
          pad: _json.containsKey('pad')
              ? Pad.fromJson(
                  _json['pad'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audio != null) 'audio': audio!.toJson(),
        if (color != null) 'color': color!.toJson(),
        if (crop != null) 'crop': crop!.toJson(),
        if (deblock != null) 'deblock': deblock!.toJson(),
        if (denoise != null) 'denoise': denoise!.toJson(),
        if (pad != null) 'pad': pad!.toJson(),
      };
}

/// Estimated fractional progress for each step, from `0` to `1`.
class Progress {
  /// Estimated fractional progress for `analyzing` step.
  core.double? analyzed;

  /// Estimated fractional progress for `encoding` step.
  core.double? encoded;

  /// Estimated fractional progress for `notifying` step.
  core.double? notified;

  /// Estimated fractional progress for `uploading` step.
  core.double? uploaded;

  Progress({
    this.analyzed,
    this.encoded,
    this.notified,
    this.uploaded,
  });

  Progress.fromJson(core.Map _json)
      : this(
          analyzed: _json.containsKey('analyzed')
              ? (_json['analyzed'] as core.num).toDouble()
              : null,
          encoded: _json.containsKey('encoded')
              ? (_json['encoded'] as core.num).toDouble()
              : null,
          notified: _json.containsKey('notified')
              ? (_json['notified'] as core.num).toDouble()
              : null,
          uploaded: _json.containsKey('uploaded')
              ? (_json['uploaded'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (analyzed != null) 'analyzed': analyzed!,
        if (encoded != null) 'encoded': encoded!,
        if (notified != null) 'notified': notified!,
        if (uploaded != null) 'uploaded': uploaded!,
      };
}

/// A Pub/Sub destination.
class PubsubDestination {
  /// The name of the Pub/Sub topic to publish job completion notification to.
  ///
  /// For example: `projects/{project}/topics/{topic}`.
  core.String? topic;

  PubsubDestination({
    this.topic,
  });

  PubsubDestination.fromJson(core.Map _json)
      : this(
          topic:
              _json.containsKey('topic') ? _json['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}

/// Configuration for SAMPLE-AES encryption.
class SampleAesEncryption {
  /// URI of the key delivery service.
  ///
  /// This URI is inserted into the M3U8 header.
  ///
  /// Required.
  core.String? keyUri;

  SampleAesEncryption({
    this.keyUri,
  });

  SampleAesEncryption.fromJson(core.Map _json)
      : this(
          keyUri: _json.containsKey('keyUri')
              ? _json['keyUri'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyUri != null) 'keyUri': keyUri!,
      };
}

/// Segment settings for `"ts"`, `"fmp4"` and `"vtt"`.
class SegmentSettings {
  /// Create an individual segment file.
  ///
  /// The default is `false`.
  ///
  /// Required.
  core.bool? individualSegments;

  /// Duration of the segments in seconds.
  ///
  /// The default is `"6.0s"`. Note that `segmentDuration` must be greater than
  /// or equal to \[`gopDuration`\](#videostream), and `segmentDuration` must be
  /// divisible by \[`gopDuration`\](#videostream).
  core.String? segmentDuration;

  SegmentSettings({
    this.individualSegments,
    this.segmentDuration,
  });

  SegmentSettings.fromJson(core.Map _json)
      : this(
          individualSegments: _json.containsKey('individualSegments')
              ? _json['individualSegments'] as core.bool
              : null,
          segmentDuration: _json.containsKey('segmentDuration')
              ? _json['segmentDuration'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (individualSegments != null)
          'individualSegments': individualSegments!,
        if (segmentDuration != null) 'segmentDuration': segmentDuration!,
      };
}

/// Sprite sheet configuration.
class SpriteSheet {
  /// The maximum number of sprites per row in a sprite sheet.
  ///
  /// The default is 0, which indicates no maximum limit.
  core.int? columnCount;

  /// End time in seconds, relative to the output file timeline.
  ///
  /// When `end_time_offset` is not specified, the sprites are generated until
  /// the end of the output file.
  core.String? endTimeOffset;

  /// File name prefix for the generated sprite sheets.
  ///
  /// Each sprite sheet has an incremental 10-digit zero-padded suffix starting
  /// from 0 before the extension, such as `"sprite_sheet0000000123.jpeg"`.
  ///
  /// Required.
  core.String? filePrefix;

  /// Format type.
  ///
  /// The default is `"jpeg"`. Supported formats: - 'jpeg'
  core.String? format;

  /// Starting from `0s`, create sprites at regular intervals.
  ///
  /// Specify the interval value in seconds.
  core.String? interval;

  /// The quality of the generated sprite sheet.
  ///
  /// Enter a value between 1 and 100, where 1 is the lowest quality and 100 is
  /// the highest quality. The default is 100. A high quality value corresponds
  /// to a low image data compression ratio.
  core.int? quality;

  /// The maximum number of rows per sprite sheet.
  ///
  /// When the sprite sheet is full, a new sprite sheet is created. The default
  /// is 0, which indicates no maximum limit.
  core.int? rowCount;

  /// The height of sprite in pixels.
  ///
  /// Must be an even integer. To preserve the source aspect ratio, set the
  /// SpriteSheet.sprite_height_pixels field or the
  /// SpriteSheet.sprite_width_pixels field, but not both (the API will
  /// automatically calculate the missing field).
  ///
  /// Required.
  core.int? spriteHeightPixels;

  /// The width of sprite in pixels.
  ///
  /// Must be an even integer. To preserve the source aspect ratio, set the
  /// SpriteSheet.sprite_width_pixels field or the
  /// SpriteSheet.sprite_height_pixels field, but not both (the API will
  /// automatically calculate the missing field).
  ///
  /// Required.
  core.int? spriteWidthPixels;

  /// Start time in seconds, relative to the output file timeline.
  ///
  /// Determines the first sprite to pick. The default is `0s`.
  core.String? startTimeOffset;

  /// Total number of sprites.
  ///
  /// Create the specified number of sprites distributed evenly across the
  /// timeline of the output media. The default is 100.
  core.int? totalCount;

  SpriteSheet({
    this.columnCount,
    this.endTimeOffset,
    this.filePrefix,
    this.format,
    this.interval,
    this.quality,
    this.rowCount,
    this.spriteHeightPixels,
    this.spriteWidthPixels,
    this.startTimeOffset,
    this.totalCount,
  });

  SpriteSheet.fromJson(core.Map _json)
      : this(
          columnCount: _json.containsKey('columnCount')
              ? _json['columnCount'] as core.int
              : null,
          endTimeOffset: _json.containsKey('endTimeOffset')
              ? _json['endTimeOffset'] as core.String
              : null,
          filePrefix: _json.containsKey('filePrefix')
              ? _json['filePrefix'] as core.String
              : null,
          format: _json.containsKey('format')
              ? _json['format'] as core.String
              : null,
          interval: _json.containsKey('interval')
              ? _json['interval'] as core.String
              : null,
          quality: _json.containsKey('quality')
              ? _json['quality'] as core.int
              : null,
          rowCount: _json.containsKey('rowCount')
              ? _json['rowCount'] as core.int
              : null,
          spriteHeightPixels: _json.containsKey('spriteHeightPixels')
              ? _json['spriteHeightPixels'] as core.int
              : null,
          spriteWidthPixels: _json.containsKey('spriteWidthPixels')
              ? _json['spriteWidthPixels'] as core.int
              : null,
          startTimeOffset: _json.containsKey('startTimeOffset')
              ? _json['startTimeOffset'] as core.String
              : null,
          totalCount: _json.containsKey('totalCount')
              ? _json['totalCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columnCount != null) 'columnCount': columnCount!,
        if (endTimeOffset != null) 'endTimeOffset': endTimeOffset!,
        if (filePrefix != null) 'filePrefix': filePrefix!,
        if (format != null) 'format': format!,
        if (interval != null) 'interval': interval!,
        if (quality != null) 'quality': quality!,
        if (rowCount != null) 'rowCount': rowCount!,
        if (spriteHeightPixels != null)
          'spriteHeightPixels': spriteHeightPixels!,
        if (spriteWidthPixels != null) 'spriteWidthPixels': spriteWidthPixels!,
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
        if (totalCount != null) 'totalCount': totalCount!,
      };
}

/// The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.
class TextAtom {
  /// List of `Job.inputs` that should be embedded in this atom.
  ///
  /// Only one input is supported.
  core.List<TextInput>? inputs;

  /// The `EditAtom.key` that references atom with text inputs in the
  /// `Job.edit_list`.
  ///
  /// Required.
  core.String? key;

  TextAtom({
    this.inputs,
    this.key,
  });

  TextAtom.fromJson(core.Map _json)
      : this(
          inputs: _json.containsKey('inputs')
              ? (_json['inputs'] as core.List)
                  .map<TextInput>((value) => TextInput.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputs != null)
          'inputs': inputs!.map((value) => value.toJson()).toList(),
        if (key != null) 'key': key!,
      };
}

/// Identifies which input file and track should be used.
class TextInput {
  /// The `Input.key` that identifies the input file.
  ///
  /// Required.
  core.String? key;

  /// The zero-based index of the track in the input file.
  ///
  /// Required.
  core.int? track;

  TextInput({
    this.key,
    this.track,
  });

  TextInput.fromJson(core.Map _json)
      : this(
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          track: _json.containsKey('track') ? _json['track'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (track != null) 'track': track!,
      };
}

/// Encoding of a text stream.
///
/// For example, closed captions or subtitles.
class TextStream {
  /// The codec for this text stream.
  ///
  /// The default is `"webvtt"`. Supported text codecs: - 'srt' - 'ttml' -
  /// 'cea608' - 'cea708' - 'webvtt'
  core.String? codec;

  /// The BCP-47 language code, such as `"en-US"` or `"sr-Latn"`.
  ///
  /// For more information, see
  /// https://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  ///
  /// Required.
  core.String? languageCode;

  /// The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.
  core.List<TextAtom>? mapping;

  TextStream({
    this.codec,
    this.languageCode,
    this.mapping,
  });

  TextStream.fromJson(core.Map _json)
      : this(
          codec:
              _json.containsKey('codec') ? _json['codec'] as core.String : null,
          languageCode: _json.containsKey('languageCode')
              ? _json['languageCode'] as core.String
              : null,
          mapping: _json.containsKey('mapping')
              ? (_json['mapping'] as core.List)
                  .map<TextAtom>((value) => TextAtom.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codec != null) 'codec': codec!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (mapping != null)
          'mapping': mapping!.map((value) => value.toJson()).toList(),
      };
}

/// Video stream resource.
class VideoStream {
  /// Specifies whether an open Group of Pictures (GOP) structure should be
  /// allowed or not.
  ///
  /// The default is `false`.
  core.bool? allowOpenGop;

  /// Specify the intensity of the adaptive quantizer (AQ).
  ///
  /// Must be between 0 and 1, where 0 disables the quantizer and 1 maximizes
  /// the quantizer. A higher value equals a lower bitrate but smoother image.
  /// The default is 0.
  core.double? aqStrength;

  /// The number of consecutive B-frames.
  ///
  /// Must be greater than or equal to zero. Must be less than
  /// `VideoStream.gop_frame_count` if set. The default is 0.
  core.int? bFrameCount;

  /// Allow B-pyramid for reference frame selection.
  ///
  /// This may not be supported on all decoders. The default is `false`.
  core.bool? bPyramid;

  /// The video bitrate in bits per second.
  ///
  /// The minimum value is 1,000. The maximum value for H264/H265 is
  /// 800,000,000. The maximum value for VP9 is 480,000,000.
  ///
  /// Required.
  core.int? bitrateBps;

  /// Codec type.
  ///
  /// The following codecs are supported: * `h264` (default) * `h265` * `vp9`
  core.String? codec;

  /// Target CRF level.
  ///
  /// Must be between 10 and 36, where 10 is the highest quality and 36 is the
  /// most efficient compression. The default is 21.
  core.int? crfLevel;

  /// Use two-pass encoding strategy to achieve better video quality.
  ///
  /// `VideoStream.rate_control_mode` must be `"vbr"`. The default is `false`.
  core.bool? enableTwoPass;

  /// The entropy coder to use.
  ///
  /// The default is `"cabac"`. Supported entropy coders: - 'cavlc' - 'cabac'
  core.String? entropyCoder;

  /// The target video frame rate in frames per second (FPS).
  ///
  /// Must be less than or equal to 120. Will default to the input frame rate if
  /// larger than the input frame rate. The API will generate an output FPS that
  /// is divisible by the input FPS, and smaller or equal to the target FPS. See
  /// [Calculate frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate)
  /// for more information.
  ///
  /// Required.
  core.double? frameRate;

  /// Select the GOP size based on the specified duration.
  ///
  /// The default is `"3s"`. Note that `gopDuration` must be less than or equal
  /// to \[`segmentDuration`\](#SegmentSettings), and
  /// \[`segmentDuration`\](#SegmentSettings) must be divisible by
  /// `gopDuration`.
  core.String? gopDuration;

  /// Select the GOP size based on the specified frame count.
  ///
  /// Must be greater than zero.
  core.int? gopFrameCount;

  /// The height of the video in pixels.
  ///
  /// Must be an even integer. When not specified, the height is adjusted to
  /// match the specified width and input aspect ratio. If both are omitted, the
  /// input height is used.
  core.int? heightPixels;

  /// Pixel format to use.
  ///
  /// The default is `"yuv420p"`. Supported pixel formats: - 'yuv420p' pixel
  /// format. - 'yuv422p' pixel format. - 'yuv444p' pixel format. - 'yuv420p10'
  /// 10-bit HDR pixel format. - 'yuv422p10' 10-bit HDR pixel format. -
  /// 'yuv444p10' 10-bit HDR pixel format. - 'yuv420p12' 12-bit HDR pixel
  /// format. - 'yuv422p12' 12-bit HDR pixel format. - 'yuv444p12' 12-bit HDR
  /// pixel format.
  core.String? pixelFormat;

  /// Enforces the specified codec preset.
  ///
  /// The default is `veryfast`. The available options are FFmpeg-compatible.
  /// Note that certain values for this field may cause the transcoder to
  /// override other fields you set in the `VideoStream` message.
  core.String? preset;

  /// Enforces the specified codec profile.
  ///
  /// The following profiles are supported: * `baseline` * `main` * `high`
  /// (default) The available options are FFmpeg-compatible. Note that certain
  /// values for this field may cause the transcoder to override other fields
  /// you set in the `VideoStream` message.
  core.String? profile;

  /// Specify the `rate_control_mode`.
  ///
  /// The default is `"vbr"`. Supported rate control modes: - 'vbr' - variable
  /// bitrate - 'crf' - constant rate factor
  core.String? rateControlMode;

  /// Enforces the specified codec tune.
  ///
  /// The available options are FFmpeg-compatible. Note that certain values for
  /// this field may cause the transcoder to override other fields you set in
  /// the `VideoStream` message.
  core.String? tune;

  /// Initial fullness of the Video Buffering Verifier (VBV) buffer in bits.
  ///
  /// Must be greater than zero. The default is equal to 90% of
  /// `VideoStream.vbv_size_bits`.
  core.int? vbvFullnessBits;

  /// Size of the Video Buffering Verifier (VBV) buffer in bits.
  ///
  /// Must be greater than zero. The default is equal to
  /// `VideoStream.bitrate_bps`.
  core.int? vbvSizeBits;

  /// The width of the video in pixels.
  ///
  /// Must be an even integer. When not specified, the width is adjusted to
  /// match the specified height and input aspect ratio. If both are omitted,
  /// the input width is used.
  core.int? widthPixels;

  VideoStream({
    this.allowOpenGop,
    this.aqStrength,
    this.bFrameCount,
    this.bPyramid,
    this.bitrateBps,
    this.codec,
    this.crfLevel,
    this.enableTwoPass,
    this.entropyCoder,
    this.frameRate,
    this.gopDuration,
    this.gopFrameCount,
    this.heightPixels,
    this.pixelFormat,
    this.preset,
    this.profile,
    this.rateControlMode,
    this.tune,
    this.vbvFullnessBits,
    this.vbvSizeBits,
    this.widthPixels,
  });

  VideoStream.fromJson(core.Map _json)
      : this(
          allowOpenGop: _json.containsKey('allowOpenGop')
              ? _json['allowOpenGop'] as core.bool
              : null,
          aqStrength: _json.containsKey('aqStrength')
              ? (_json['aqStrength'] as core.num).toDouble()
              : null,
          bFrameCount: _json.containsKey('bFrameCount')
              ? _json['bFrameCount'] as core.int
              : null,
          bPyramid: _json.containsKey('bPyramid')
              ? _json['bPyramid'] as core.bool
              : null,
          bitrateBps: _json.containsKey('bitrateBps')
              ? _json['bitrateBps'] as core.int
              : null,
          codec:
              _json.containsKey('codec') ? _json['codec'] as core.String : null,
          crfLevel: _json.containsKey('crfLevel')
              ? _json['crfLevel'] as core.int
              : null,
          enableTwoPass: _json.containsKey('enableTwoPass')
              ? _json['enableTwoPass'] as core.bool
              : null,
          entropyCoder: _json.containsKey('entropyCoder')
              ? _json['entropyCoder'] as core.String
              : null,
          frameRate: _json.containsKey('frameRate')
              ? (_json['frameRate'] as core.num).toDouble()
              : null,
          gopDuration: _json.containsKey('gopDuration')
              ? _json['gopDuration'] as core.String
              : null,
          gopFrameCount: _json.containsKey('gopFrameCount')
              ? _json['gopFrameCount'] as core.int
              : null,
          heightPixels: _json.containsKey('heightPixels')
              ? _json['heightPixels'] as core.int
              : null,
          pixelFormat: _json.containsKey('pixelFormat')
              ? _json['pixelFormat'] as core.String
              : null,
          preset: _json.containsKey('preset')
              ? _json['preset'] as core.String
              : null,
          profile: _json.containsKey('profile')
              ? _json['profile'] as core.String
              : null,
          rateControlMode: _json.containsKey('rateControlMode')
              ? _json['rateControlMode'] as core.String
              : null,
          tune: _json.containsKey('tune') ? _json['tune'] as core.String : null,
          vbvFullnessBits: _json.containsKey('vbvFullnessBits')
              ? _json['vbvFullnessBits'] as core.int
              : null,
          vbvSizeBits: _json.containsKey('vbvSizeBits')
              ? _json['vbvSizeBits'] as core.int
              : null,
          widthPixels: _json.containsKey('widthPixels')
              ? _json['widthPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowOpenGop != null) 'allowOpenGop': allowOpenGop!,
        if (aqStrength != null) 'aqStrength': aqStrength!,
        if (bFrameCount != null) 'bFrameCount': bFrameCount!,
        if (bPyramid != null) 'bPyramid': bPyramid!,
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (codec != null) 'codec': codec!,
        if (crfLevel != null) 'crfLevel': crfLevel!,
        if (enableTwoPass != null) 'enableTwoPass': enableTwoPass!,
        if (entropyCoder != null) 'entropyCoder': entropyCoder!,
        if (frameRate != null) 'frameRate': frameRate!,
        if (gopDuration != null) 'gopDuration': gopDuration!,
        if (gopFrameCount != null) 'gopFrameCount': gopFrameCount!,
        if (heightPixels != null) 'heightPixels': heightPixels!,
        if (pixelFormat != null) 'pixelFormat': pixelFormat!,
        if (preset != null) 'preset': preset!,
        if (profile != null) 'profile': profile!,
        if (rateControlMode != null) 'rateControlMode': rateControlMode!,
        if (tune != null) 'tune': tune!,
        if (vbvFullnessBits != null) 'vbvFullnessBits': vbvFullnessBits!,
        if (vbvSizeBits != null) 'vbvSizeBits': vbvSizeBits!,
        if (widthPixels != null) 'widthPixels': widthPixels!,
      };
}
