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

/// Transcoder API - v1
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
library transcoder.v1;

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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobTemplateId != null) 'jobTemplateId': [jobTemplateId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobTemplates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return JobTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [allowMissing] - If set to true, and the job template is not found, the
  /// request will succeed but no action will be taken on the server.
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
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return JobTemplate.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [filter] - The filter expression, following the syntax outlined in
  /// https://google.aip.dev/160.
  ///
  /// [orderBy] - One or more fields to compare and use to sort the output. See
  /// https://google.aip.dev/132#ordering.
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
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobTemplates';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobTemplatesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [allowMissing] - If set to true, and the job is not found, the request
  /// will succeed but no action will be taken on the server.
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
    core.bool? allowMissing,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists jobs in the specified region.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Format: `projects/{project}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - The filter expression, following the syntax outlined in
  /// https://google.aip.dev/160.
  ///
  /// [orderBy] - One or more fields to compare and use to sort the output. See
  /// https://google.aip.dev/132#ordering.
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
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

  AdBreak.fromJson(core.Map json_)
      : this(
          startTimeOffset: json_.containsKey('startTimeOffset')
              ? json_['startTimeOffset'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
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

  Animation.fromJson(core.Map json_)
      : this(
          animationEnd: json_.containsKey('animationEnd')
              ? AnimationEnd.fromJson(
                  json_['animationEnd'] as core.Map<core.String, core.dynamic>)
              : null,
          animationFade: json_.containsKey('animationFade')
              ? AnimationFade.fromJson(
                  json_['animationFade'] as core.Map<core.String, core.dynamic>)
              : null,
          animationStatic: json_.containsKey('animationStatic')
              ? AnimationStatic.fromJson(json_['animationStatic']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (animationEnd != null) 'animationEnd': animationEnd!,
        if (animationFade != null) 'animationFade': animationFade!,
        if (animationStatic != null) 'animationStatic': animationStatic!,
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

  AnimationEnd.fromJson(core.Map json_)
      : this(
          startTimeOffset: json_.containsKey('startTimeOffset')
              ? json_['startTimeOffset'] as core.String
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

  AnimationFade.fromJson(core.Map json_)
      : this(
          endTimeOffset: json_.containsKey('endTimeOffset')
              ? json_['endTimeOffset'] as core.String
              : null,
          fadeType: json_.containsKey('fadeType')
              ? json_['fadeType'] as core.String
              : null,
          startTimeOffset: json_.containsKey('startTimeOffset')
              ? json_['startTimeOffset'] as core.String
              : null,
          xy: json_.containsKey('xy')
              ? NormalizedCoordinate.fromJson(
                  json_['xy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTimeOffset != null) 'endTimeOffset': endTimeOffset!,
        if (fadeType != null) 'fadeType': fadeType!,
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
        if (xy != null) 'xy': xy!,
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

  AnimationStatic.fromJson(core.Map json_)
      : this(
          startTimeOffset: json_.containsKey('startTimeOffset')
              ? json_['startTimeOffset'] as core.String
              : null,
          xy: json_.containsKey('xy')
              ? NormalizedCoordinate.fromJson(
                  json_['xy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
        if (xy != null) 'xy': xy!,
      };
}

/// Audio preprocessing configuration.
class Audio {
  /// Enable boosting high frequency components.
  ///
  /// The default is `false`. **Note:** This field is not supported.
  core.bool? highBoost;

  /// Enable boosting low frequency components.
  ///
  /// The default is `false`. **Note:** This field is not supported.
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

  Audio.fromJson(core.Map json_)
      : this(
          highBoost: json_.containsKey('highBoost')
              ? json_['highBoost'] as core.bool
              : null,
          lowBoost: json_.containsKey('lowBoost')
              ? json_['lowBoost'] as core.bool
              : null,
          lufs: json_.containsKey('lufs')
              ? (json_['lufs'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highBoost != null) 'highBoost': highBoost!,
        if (lowBoost != null) 'lowBoost': lowBoost!,
        if (lufs != null) 'lufs': lufs!,
      };
}

/// The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.
class AudioMapping {
  /// The `EditAtom.key` that references the atom with audio inputs in the
  /// `Job.edit_list`.
  ///
  /// Required.
  core.String? atomKey;

  /// Audio volume control in dB.
  ///
  /// Negative values decrease volume, positive values increase. The default is
  /// 0.
  core.double? gainDb;

  /// The zero-based index of the channel in the input audio stream.
  ///
  /// Required.
  core.int? inputChannel;

  /// The `Input.key` that identifies the input file.
  ///
  /// Required.
  core.String? inputKey;

  /// The zero-based index of the track in the input file.
  ///
  /// Required.
  core.int? inputTrack;

  /// The zero-based index of the channel in the output audio stream.
  ///
  /// Required.
  core.int? outputChannel;

  AudioMapping({
    this.atomKey,
    this.gainDb,
    this.inputChannel,
    this.inputKey,
    this.inputTrack,
    this.outputChannel,
  });

  AudioMapping.fromJson(core.Map json_)
      : this(
          atomKey: json_.containsKey('atomKey')
              ? json_['atomKey'] as core.String
              : null,
          gainDb: json_.containsKey('gainDb')
              ? (json_['gainDb'] as core.num).toDouble()
              : null,
          inputChannel: json_.containsKey('inputChannel')
              ? json_['inputChannel'] as core.int
              : null,
          inputKey: json_.containsKey('inputKey')
              ? json_['inputKey'] as core.String
              : null,
          inputTrack: json_.containsKey('inputTrack')
              ? json_['inputTrack'] as core.int
              : null,
          outputChannel: json_.containsKey('outputChannel')
              ? json_['outputChannel'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (atomKey != null) 'atomKey': atomKey!,
        if (gainDb != null) 'gainDb': gainDb!,
        if (inputChannel != null) 'inputChannel': inputChannel!,
        if (inputKey != null) 'inputKey': inputKey!,
        if (inputTrack != null) 'inputTrack': inputTrack!,
        if (outputChannel != null) 'outputChannel': outputChannel!,
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
  /// Supported channel names: - `fl` - Front left channel - `fr` - Front right
  /// channel - `sl` - Side left channel - `sr` - Side right channel - `fc` -
  /// Front center channel - `lfe` - Low frequency
  core.List<core.String>? channelLayout;

  /// The codec for this audio stream.
  ///
  /// The default is `aac`. Supported audio codecs: - `aac` - `aac-he` -
  /// `aac-he-v2` - `mp3` - `ac3` - `eac3`
  core.String? codec;

  /// The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.
  core.List<AudioMapping>? mapping;

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

  AudioStream.fromJson(core.Map json_)
      : this(
          bitrateBps: json_.containsKey('bitrateBps')
              ? json_['bitrateBps'] as core.int
              : null,
          channelCount: json_.containsKey('channelCount')
              ? json_['channelCount'] as core.int
              : null,
          channelLayout: json_.containsKey('channelLayout')
              ? (json_['channelLayout'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          codec:
              json_.containsKey('codec') ? json_['codec'] as core.String : null,
          mapping: json_.containsKey('mapping')
              ? (json_['mapping'] as core.List)
                  .map((value) => AudioMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sampleRateHertz: json_.containsKey('sampleRateHertz')
              ? json_['sampleRateHertz'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (channelCount != null) 'channelCount': channelCount!,
        if (channelLayout != null) 'channelLayout': channelLayout!,
        if (codec != null) 'codec': codec!,
        if (mapping != null) 'mapping': mapping!,
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
      };
}

/// Color preprocessing configuration.
///
/// **Note:** This configuration is not supported.
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

  Color.fromJson(core.Map json_)
      : this(
          brightness: json_.containsKey('brightness')
              ? (json_['brightness'] as core.num).toDouble()
              : null,
          contrast: json_.containsKey('contrast')
              ? (json_['contrast'] as core.num).toDouble()
              : null,
          saturation: json_.containsKey('saturation')
              ? (json_['saturation'] as core.num).toDouble()
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

  Crop.fromJson(core.Map json_)
      : this(
          bottomPixels: json_.containsKey('bottomPixels')
              ? json_['bottomPixels'] as core.int
              : null,
          leftPixels: json_.containsKey('leftPixels')
              ? json_['leftPixels'] as core.int
              : null,
          rightPixels: json_.containsKey('rightPixels')
              ? json_['rightPixels'] as core.int
              : null,
          topPixels: json_.containsKey('topPixels')
              ? json_['topPixels'] as core.int
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
///
/// **Note:** This configuration is not supported.
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

  Deblock.fromJson(core.Map json_)
      : this(
          enabled: json_.containsKey('enabled')
              ? json_['enabled'] as core.bool
              : null,
          strength: json_.containsKey('strength')
              ? (json_['strength'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (strength != null) 'strength': strength!,
      };
}

/// Denoise preprocessing configuration.
///
/// **Note:** This configuration is not supported.
class Denoise {
  /// Set strength of the denoise.
  ///
  /// Enter a value between 0 and 1. The higher the value, the smoother the
  /// image. 0 is no denoising. The default is 0.
  core.double? strength;

  /// Set the denoiser mode.
  ///
  /// The default is `standard`. Supported denoiser modes: - `standard` -
  /// `grain`
  core.String? tune;

  Denoise({
    this.strength,
    this.tune,
  });

  Denoise.fromJson(core.Map json_)
      : this(
          strength: json_.containsKey('strength')
              ? (json_['strength'] as core.num).toDouble()
              : null,
          tune: json_.containsKey('tune') ? json_['tune'] as core.String : null,
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

  EditAtom.fromJson(core.Map json_)
      : this(
          endTimeOffset: json_.containsKey('endTimeOffset')
              ? json_['endTimeOffset'] as core.String
              : null,
          inputs: json_.containsKey('inputs')
              ? (json_['inputs'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          startTimeOffset: json_.containsKey('startTimeOffset')
              ? json_['startTimeOffset'] as core.String
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

  ElementaryStream.fromJson(core.Map json_)
      : this(
          audioStream: json_.containsKey('audioStream')
              ? AudioStream.fromJson(
                  json_['audioStream'] as core.Map<core.String, core.dynamic>)
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          textStream: json_.containsKey('textStream')
              ? TextStream.fromJson(
                  json_['textStream'] as core.Map<core.String, core.dynamic>)
              : null,
          videoStream: json_.containsKey('videoStream')
              ? VideoStream.fromJson(
                  json_['videoStream'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audioStream != null) 'audioStream': audioStream!,
        if (key != null) 'key': key!,
        if (textStream != null) 'textStream': textStream!,
        if (videoStream != null) 'videoStream': videoStream!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// H264 codec settings.
class H264CodecSettings {
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
  /// The minimum value is 1,000. The maximum value is 800,000,000.
  ///
  /// Required.
  core.int? bitrateBps;

  /// Target CRF level.
  ///
  /// Must be between 10 and 36, where 10 is the highest quality and 36 is the
  /// most efficient compression. The default is 21.
  core.int? crfLevel;

  /// Use two-pass encoding strategy to achieve better video quality.
  ///
  /// `VideoStream.rate_control_mode` must be `vbr`. The default is `false`.
  core.bool? enableTwoPass;

  /// The entropy coder to use.
  ///
  /// The default is `cabac`. Supported entropy coders: - `cavlc` - `cabac`
  core.String? entropyCoder;

  /// The target video frame rate in frames per second (FPS).
  ///
  /// Must be less than or equal to 120. Will default to the input frame rate if
  /// larger than the input frame rate. The API will generate an output FPS that
  /// is divisible by the input FPS, and smaller or equal to the target FPS. See
  /// [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate)
  /// for more information.
  ///
  /// Required.
  core.double? frameRate;

  /// Select the GOP size based on the specified duration.
  ///
  /// The default is `3s`. Note that `gopDuration` must be less than or equal to
  /// \[`segmentDuration`\](#SegmentSettings), and
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
  /// The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel
  /// format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10`
  /// 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format -
  /// `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format
  /// - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel
  /// format
  core.String? pixelFormat;

  /// Enforces the specified codec preset.
  ///
  /// The default is `veryfast`. The available options are
  /// \[FFmpeg-compatible\](https://trac.ffmpeg.org/wiki/Encode/H.264#Preset).
  /// Note that certain values for this field may cause the transcoder to
  /// override other fields you set in the `H264CodecSettings` message.
  core.String? preset;

  /// Enforces the specified codec profile.
  ///
  /// The following profiles are supported: * `baseline` * `main` * `high`
  /// (default) The available options are
  /// \[FFmpeg-compatible\](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune).
  /// Note that certain values for this field may cause the transcoder to
  /// override other fields you set in the `H264CodecSettings` message.
  core.String? profile;

  /// Specify the `rate_control_mode`.
  ///
  /// The default is `vbr`. Supported rate control modes: - `vbr` - variable
  /// bitrate - `crf` - constant rate factor
  core.String? rateControlMode;

  /// Enforces the specified codec tune.
  ///
  /// The available options are
  /// \[FFmpeg-compatible\](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune).
  /// Note that certain values for this field may cause the transcoder to
  /// override other fields you set in the `H264CodecSettings` message.
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

  H264CodecSettings({
    this.allowOpenGop,
    this.aqStrength,
    this.bFrameCount,
    this.bPyramid,
    this.bitrateBps,
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

  H264CodecSettings.fromJson(core.Map json_)
      : this(
          allowOpenGop: json_.containsKey('allowOpenGop')
              ? json_['allowOpenGop'] as core.bool
              : null,
          aqStrength: json_.containsKey('aqStrength')
              ? (json_['aqStrength'] as core.num).toDouble()
              : null,
          bFrameCount: json_.containsKey('bFrameCount')
              ? json_['bFrameCount'] as core.int
              : null,
          bPyramid: json_.containsKey('bPyramid')
              ? json_['bPyramid'] as core.bool
              : null,
          bitrateBps: json_.containsKey('bitrateBps')
              ? json_['bitrateBps'] as core.int
              : null,
          crfLevel: json_.containsKey('crfLevel')
              ? json_['crfLevel'] as core.int
              : null,
          enableTwoPass: json_.containsKey('enableTwoPass')
              ? json_['enableTwoPass'] as core.bool
              : null,
          entropyCoder: json_.containsKey('entropyCoder')
              ? json_['entropyCoder'] as core.String
              : null,
          frameRate: json_.containsKey('frameRate')
              ? (json_['frameRate'] as core.num).toDouble()
              : null,
          gopDuration: json_.containsKey('gopDuration')
              ? json_['gopDuration'] as core.String
              : null,
          gopFrameCount: json_.containsKey('gopFrameCount')
              ? json_['gopFrameCount'] as core.int
              : null,
          heightPixels: json_.containsKey('heightPixels')
              ? json_['heightPixels'] as core.int
              : null,
          pixelFormat: json_.containsKey('pixelFormat')
              ? json_['pixelFormat'] as core.String
              : null,
          preset: json_.containsKey('preset')
              ? json_['preset'] as core.String
              : null,
          profile: json_.containsKey('profile')
              ? json_['profile'] as core.String
              : null,
          rateControlMode: json_.containsKey('rateControlMode')
              ? json_['rateControlMode'] as core.String
              : null,
          tune: json_.containsKey('tune') ? json_['tune'] as core.String : null,
          vbvFullnessBits: json_.containsKey('vbvFullnessBits')
              ? json_['vbvFullnessBits'] as core.int
              : null,
          vbvSizeBits: json_.containsKey('vbvSizeBits')
              ? json_['vbvSizeBits'] as core.int
              : null,
          widthPixels: json_.containsKey('widthPixels')
              ? json_['widthPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowOpenGop != null) 'allowOpenGop': allowOpenGop!,
        if (aqStrength != null) 'aqStrength': aqStrength!,
        if (bFrameCount != null) 'bFrameCount': bFrameCount!,
        if (bPyramid != null) 'bPyramid': bPyramid!,
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
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

/// H265 codec settings.
class H265CodecSettings {
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
  /// The minimum value is 1,000. The maximum value is 800,000,000.
  ///
  /// Required.
  core.int? bitrateBps;

  /// Target CRF level.
  ///
  /// Must be between 10 and 36, where 10 is the highest quality and 36 is the
  /// most efficient compression. The default is 21.
  core.int? crfLevel;

  /// Use two-pass encoding strategy to achieve better video quality.
  ///
  /// `VideoStream.rate_control_mode` must be `vbr`. The default is `false`.
  core.bool? enableTwoPass;

  /// The target video frame rate in frames per second (FPS).
  ///
  /// Must be less than or equal to 120. Will default to the input frame rate if
  /// larger than the input frame rate. The API will generate an output FPS that
  /// is divisible by the input FPS, and smaller or equal to the target FPS. See
  /// [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate)
  /// for more information.
  ///
  /// Required.
  core.double? frameRate;

  /// Select the GOP size based on the specified duration.
  ///
  /// The default is `3s`. Note that `gopDuration` must be less than or equal to
  /// \[`segmentDuration`\](#SegmentSettings), and
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
  /// The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel
  /// format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10`
  /// 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format -
  /// `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format
  /// - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel
  /// format
  core.String? pixelFormat;

  /// Enforces the specified codec preset.
  ///
  /// The default is `veryfast`. The available options are
  /// \[FFmpeg-compatible\](https://trac.ffmpeg.org/wiki/Encode/H.265). Note
  /// that certain values for this field may cause the transcoder to override
  /// other fields you set in the `H265CodecSettings` message.
  core.String? preset;

  /// Enforces the specified codec profile.
  ///
  /// The following profiles are supported: * 8-bit profiles * `main` (default)
  /// * `main-intra` * `mainstillpicture` * 10-bit profiles * `main10` (default)
  /// * `main10-intra` * `main422-10` * `main422-10-intra` * `main444-10` *
  /// `main444-10-intra` * 12-bit profiles * `main12` (default) * `main12-intra`
  /// * `main422-12` * `main422-12-intra` * `main444-12` * `main444-12-intra`
  /// The available options are
  /// \[FFmpeg-compatible\](https://x265.readthedocs.io/). Note that certain
  /// values for this field may cause the transcoder to override other fields
  /// you set in the `H265CodecSettings` message.
  core.String? profile;

  /// Specify the `rate_control_mode`.
  ///
  /// The default is `vbr`. Supported rate control modes: - `vbr` - variable
  /// bitrate - `crf` - constant rate factor
  core.String? rateControlMode;

  /// Enforces the specified codec tune.
  ///
  /// The available options are
  /// \[FFmpeg-compatible\](https://trac.ffmpeg.org/wiki/Encode/H.265). Note
  /// that certain values for this field may cause the transcoder to override
  /// other fields you set in the `H265CodecSettings` message.
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

  H265CodecSettings({
    this.allowOpenGop,
    this.aqStrength,
    this.bFrameCount,
    this.bPyramid,
    this.bitrateBps,
    this.crfLevel,
    this.enableTwoPass,
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

  H265CodecSettings.fromJson(core.Map json_)
      : this(
          allowOpenGop: json_.containsKey('allowOpenGop')
              ? json_['allowOpenGop'] as core.bool
              : null,
          aqStrength: json_.containsKey('aqStrength')
              ? (json_['aqStrength'] as core.num).toDouble()
              : null,
          bFrameCount: json_.containsKey('bFrameCount')
              ? json_['bFrameCount'] as core.int
              : null,
          bPyramid: json_.containsKey('bPyramid')
              ? json_['bPyramid'] as core.bool
              : null,
          bitrateBps: json_.containsKey('bitrateBps')
              ? json_['bitrateBps'] as core.int
              : null,
          crfLevel: json_.containsKey('crfLevel')
              ? json_['crfLevel'] as core.int
              : null,
          enableTwoPass: json_.containsKey('enableTwoPass')
              ? json_['enableTwoPass'] as core.bool
              : null,
          frameRate: json_.containsKey('frameRate')
              ? (json_['frameRate'] as core.num).toDouble()
              : null,
          gopDuration: json_.containsKey('gopDuration')
              ? json_['gopDuration'] as core.String
              : null,
          gopFrameCount: json_.containsKey('gopFrameCount')
              ? json_['gopFrameCount'] as core.int
              : null,
          heightPixels: json_.containsKey('heightPixels')
              ? json_['heightPixels'] as core.int
              : null,
          pixelFormat: json_.containsKey('pixelFormat')
              ? json_['pixelFormat'] as core.String
              : null,
          preset: json_.containsKey('preset')
              ? json_['preset'] as core.String
              : null,
          profile: json_.containsKey('profile')
              ? json_['profile'] as core.String
              : null,
          rateControlMode: json_.containsKey('rateControlMode')
              ? json_['rateControlMode'] as core.String
              : null,
          tune: json_.containsKey('tune') ? json_['tune'] as core.String : null,
          vbvFullnessBits: json_.containsKey('vbvFullnessBits')
              ? json_['vbvFullnessBits'] as core.int
              : null,
          vbvSizeBits: json_.containsKey('vbvSizeBits')
              ? json_['vbvSizeBits'] as core.int
              : null,
          widthPixels: json_.containsKey('widthPixels')
              ? json_['widthPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allowOpenGop != null) 'allowOpenGop': allowOpenGop!,
        if (aqStrength != null) 'aqStrength': aqStrength!,
        if (bFrameCount != null) 'bFrameCount': bFrameCount!,
        if (bPyramid != null) 'bPyramid': bPyramid!,
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (crfLevel != null) 'crfLevel': crfLevel!,
        if (enableTwoPass != null) 'enableTwoPass': enableTwoPass!,
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

  Image.fromJson(core.Map json_)
      : this(
          alpha: json_.containsKey('alpha')
              ? (json_['alpha'] as core.num).toDouble()
              : null,
          resolution: json_.containsKey('resolution')
              ? NormalizedCoordinate.fromJson(
                  json_['resolution'] as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alpha != null) 'alpha': alpha!,
        if (resolution != null) 'resolution': resolution!,
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
  /// is populated from `Job.input_uri`. See
  /// [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  core.String? uri;

  Input({
    this.key,
    this.preprocessingConfig,
    this.uri,
  });

  Input.fromJson(core.Map json_)
      : this(
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          preprocessingConfig: json_.containsKey('preprocessingConfig')
              ? PreprocessingConfig.fromJson(json_['preprocessingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (preprocessingConfig != null)
          'preprocessingConfig': preprocessingConfig!,
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

  /// An error object that describes the reason for the failure.
  ///
  /// This property is always present when `state` is `FAILED`.
  ///
  /// Output only.
  Status? error;

  /// Input only.
  ///
  /// Specify the `input_uri` to populate empty `uri` fields in each element of
  /// `Job.config.inputs` or `JobTemplate.config.inputs` when using template.
  /// URI of the media. Input files must be at least 5 seconds in duration and
  /// stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See
  /// [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  core.String? inputUri;

  /// The labels associated with this job.
  ///
  /// You can use these to organize and group your jobs.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the job.
  ///
  /// Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  core.String? name;

  /// Input only.
  ///
  /// Specify the `output_uri` to populate an empty `Job.config.output.uri` or
  /// `JobTemplate.config.output.uri` when using template. URI for the output
  /// file(s). For example, `gs://my-bucket/outputs/`. See
  /// [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  core.String? outputUri;

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
    this.error,
    this.inputUri,
    this.labels,
    this.name,
    this.outputUri,
    this.startTime,
    this.state,
    this.templateId,
    this.ttlAfterCompletionDays,
  });

  Job.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? JobConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          inputUri: json_.containsKey('inputUri')
              ? json_['inputUri'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          outputUri: json_.containsKey('outputUri')
              ? json_['outputUri'] as core.String
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          templateId: json_.containsKey('templateId')
              ? json_['templateId'] as core.String
              : null,
          ttlAfterCompletionDays: json_.containsKey('ttlAfterCompletionDays')
              ? json_['ttlAfterCompletionDays'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (inputUri != null) 'inputUri': inputUri!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (outputUri != null) 'outputUri': outputUri!,
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
  ///
  /// Spritesheets require at least one VideoStream in the Jobconfig.
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

  JobConfig.fromJson(core.Map json_)
      : this(
          adBreaks: json_.containsKey('adBreaks')
              ? (json_['adBreaks'] as core.List)
                  .map((value) => AdBreak.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          editList: json_.containsKey('editList')
              ? (json_['editList'] as core.List)
                  .map((value) => EditAtom.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          elementaryStreams: json_.containsKey('elementaryStreams')
              ? (json_['elementaryStreams'] as core.List)
                  .map((value) => ElementaryStream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inputs: json_.containsKey('inputs')
              ? (json_['inputs'] as core.List)
                  .map((value) => Input.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          manifests: json_.containsKey('manifests')
              ? (json_['manifests'] as core.List)
                  .map((value) => Manifest.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          muxStreams: json_.containsKey('muxStreams')
              ? (json_['muxStreams'] as core.List)
                  .map((value) => MuxStream.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          output: json_.containsKey('output')
              ? Output.fromJson(
                  json_['output'] as core.Map<core.String, core.dynamic>)
              : null,
          overlays: json_.containsKey('overlays')
              ? (json_['overlays'] as core.List)
                  .map((value) => Overlay.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pubsubDestination: json_.containsKey('pubsubDestination')
              ? PubsubDestination.fromJson(json_['pubsubDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spriteSheets: json_.containsKey('spriteSheets')
              ? (json_['spriteSheets'] as core.List)
                  .map((value) => SpriteSheet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adBreaks != null) 'adBreaks': adBreaks!,
        if (editList != null) 'editList': editList!,
        if (elementaryStreams != null) 'elementaryStreams': elementaryStreams!,
        if (inputs != null) 'inputs': inputs!,
        if (manifests != null) 'manifests': manifests!,
        if (muxStreams != null) 'muxStreams': muxStreams!,
        if (output != null) 'output': output!,
        if (overlays != null) 'overlays': overlays!,
        if (pubsubDestination != null) 'pubsubDestination': pubsubDestination!,
        if (spriteSheets != null) 'spriteSheets': spriteSheets!,
      };
}

/// Transcoding job template resource.
class JobTemplate {
  /// The configuration for this template.
  JobConfig? config;

  /// The labels associated with this job template.
  ///
  /// You can use these to organize and group your job templates.
  core.Map<core.String, core.String>? labels;

  /// The resource name of the job template.
  ///
  /// Format:
  /// `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`
  core.String? name;

  JobTemplate({
    this.config,
    this.labels,
    this.name,
  });

  JobTemplate.fromJson(core.Map json_)
      : this(
          config: json_.containsKey('config')
              ? JobConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
      };
}

/// Response message for `TranscoderService.ListJobTemplates`.
class ListJobTemplatesResponse {
  /// List of job templates in the specified region.
  core.List<JobTemplate>? jobTemplates;

  /// The pagination token.
  core.String? nextPageToken;

  /// List of regions that could not be reached.
  core.List<core.String>? unreachable;

  ListJobTemplatesResponse({
    this.jobTemplates,
    this.nextPageToken,
    this.unreachable,
  });

  ListJobTemplatesResponse.fromJson(core.Map json_)
      : this(
          jobTemplates: json_.containsKey('jobTemplates')
              ? (json_['jobTemplates'] as core.List)
                  .map((value) => JobTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobTemplates != null) 'jobTemplates': jobTemplates!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for `TranscoderService.ListJobs`.
class ListJobsResponse {
  /// List of jobs in the specified region.
  core.List<Job>? jobs;

  /// The pagination token.
  core.String? nextPageToken;

  /// List of regions that could not be reached.
  core.List<core.String>? unreachable;

  ListJobsResponse({
    this.jobs,
    this.nextPageToken,
    this.unreachable,
  });

  ListJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => Job.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Manifest configuration.
class Manifest {
  /// The name of the generated file.
  ///
  /// The default is `manifest` with the extension suffix corresponding to the
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

  /// Type of the manifest, can be `HLS` or `DASH`.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MANIFEST_TYPE_UNSPECIFIED" : The manifest type is not specified.
  /// - "HLS" : Create `HLS` manifest. The corresponding file extension is
  /// `.m3u8`.
  /// - "DASH" : Create `DASH` manifest. The corresponding file extension is
  /// `.mpd`.
  core.String? type;

  Manifest({
    this.fileName,
    this.muxStreams,
    this.type,
  });

  Manifest.fromJson(core.Map json_)
      : this(
          fileName: json_.containsKey('fileName')
              ? json_['fileName'] as core.String
              : null,
          muxStreams: json_.containsKey('muxStreams')
              ? (json_['muxStreams'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileName != null) 'fileName': fileName!,
        if (muxStreams != null) 'muxStreams': muxStreams!,
        if (type != null) 'type': type!,
      };
}

/// Multiplexing settings for output stream.
class MuxStream {
  /// The container format.
  ///
  /// The default is `mp4` Supported container formats: - `ts` - `fmp4`- the
  /// corresponding file extension is `.m4s` - `mp4` - `vtt` See also:
  /// [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats)
  core.String? container;

  /// List of `ElementaryStream.key`s multiplexed in this stream.
  core.List<core.String>? elementaryStreams;

  /// The name of the generated file.
  ///
  /// The default is `MuxStream.key` with the extension suffix corresponding to
  /// the `MuxStream.container`. Individual segments also have an incremental
  /// 10-digit zero-padded suffix starting from 0 before the extension, such as
  /// `mux_stream0000000123.ts`.
  core.String? fileName;

  /// A unique key for this multiplexed stream.
  ///
  /// HLS media manifests will be named `MuxStream.key` with the `.m3u8`
  /// extension suffix.
  core.String? key;

  /// Segment settings for `ts`, `fmp4` and `vtt`.
  SegmentSettings? segmentSettings;

  MuxStream({
    this.container,
    this.elementaryStreams,
    this.fileName,
    this.key,
    this.segmentSettings,
  });

  MuxStream.fromJson(core.Map json_)
      : this(
          container: json_.containsKey('container')
              ? json_['container'] as core.String
              : null,
          elementaryStreams: json_.containsKey('elementaryStreams')
              ? (json_['elementaryStreams'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileName: json_.containsKey('fileName')
              ? json_['fileName'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.String : null,
          segmentSettings: json_.containsKey('segmentSettings')
              ? SegmentSettings.fromJson(json_['segmentSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (container != null) 'container': container!,
        if (elementaryStreams != null) 'elementaryStreams': elementaryStreams!,
        if (fileName != null) 'fileName': fileName!,
        if (key != null) 'key': key!,
        if (segmentSettings != null) 'segmentSettings': segmentSettings!,
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

  NormalizedCoordinate.fromJson(core.Map json_)
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

/// Location of output file(s) in a Cloud Storage bucket.
class Output {
  /// URI for the output file(s).
  ///
  /// For example, `gs://my-bucket/outputs/`. If empty, the value is populated
  /// from `Job.output_uri`. See
  /// [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  core.String? uri;

  Output({
    this.uri,
  });

  Output.fromJson(core.Map json_)
      : this(
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
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

  Overlay.fromJson(core.Map json_)
      : this(
          animations: json_.containsKey('animations')
              ? (json_['animations'] as core.List)
                  .map((value) => Animation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: json_.containsKey('image')
              ? Image.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (animations != null) 'animations': animations!,
        if (image != null) 'image': image!,
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

  Pad.fromJson(core.Map json_)
      : this(
          bottomPixels: json_.containsKey('bottomPixels')
              ? json_['bottomPixels'] as core.int
              : null,
          leftPixels: json_.containsKey('leftPixels')
              ? json_['leftPixels'] as core.int
              : null,
          rightPixels: json_.containsKey('rightPixels')
              ? json_['rightPixels'] as core.int
              : null,
          topPixels: json_.containsKey('topPixels')
              ? json_['topPixels'] as core.int
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

  PreprocessingConfig.fromJson(core.Map json_)
      : this(
          audio: json_.containsKey('audio')
              ? Audio.fromJson(
                  json_['audio'] as core.Map<core.String, core.dynamic>)
              : null,
          color: json_.containsKey('color')
              ? Color.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          crop: json_.containsKey('crop')
              ? Crop.fromJson(
                  json_['crop'] as core.Map<core.String, core.dynamic>)
              : null,
          deblock: json_.containsKey('deblock')
              ? Deblock.fromJson(
                  json_['deblock'] as core.Map<core.String, core.dynamic>)
              : null,
          denoise: json_.containsKey('denoise')
              ? Denoise.fromJson(
                  json_['denoise'] as core.Map<core.String, core.dynamic>)
              : null,
          pad: json_.containsKey('pad')
              ? Pad.fromJson(
                  json_['pad'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audio != null) 'audio': audio!,
        if (color != null) 'color': color!,
        if (crop != null) 'crop': crop!,
        if (deblock != null) 'deblock': deblock!,
        if (denoise != null) 'denoise': denoise!,
        if (pad != null) 'pad': pad!,
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

  PubsubDestination.fromJson(core.Map json_)
      : this(
          topic:
              json_.containsKey('topic') ? json_['topic'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}

/// Segment settings for `ts`, `fmp4` and `vtt`.
class SegmentSettings {
  /// Create an individual segment file.
  ///
  /// The default is `false`.
  ///
  /// Required.
  core.bool? individualSegments;

  /// Duration of the segments in seconds.
  ///
  /// The default is `6.0s`. Note that `segmentDuration` must be greater than or
  /// equal to \[`gopDuration`\](#videostream), and `segmentDuration` must be
  /// divisible by \[`gopDuration`\](#videostream).
  core.String? segmentDuration;

  SegmentSettings({
    this.individualSegments,
    this.segmentDuration,
  });

  SegmentSettings.fromJson(core.Map json_)
      : this(
          individualSegments: json_.containsKey('individualSegments')
              ? json_['individualSegments'] as core.bool
              : null,
          segmentDuration: json_.containsKey('segmentDuration')
              ? json_['segmentDuration'] as core.String
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
  /// from 0 before the extension, such as `sprite_sheet0000000123.jpeg`.
  ///
  /// Required.
  core.String? filePrefix;

  /// Format type.
  ///
  /// The default is `jpeg`. Supported formats: - `jpeg`
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

  SpriteSheet.fromJson(core.Map json_)
      : this(
          columnCount: json_.containsKey('columnCount')
              ? json_['columnCount'] as core.int
              : null,
          endTimeOffset: json_.containsKey('endTimeOffset')
              ? json_['endTimeOffset'] as core.String
              : null,
          filePrefix: json_.containsKey('filePrefix')
              ? json_['filePrefix'] as core.String
              : null,
          format: json_.containsKey('format')
              ? json_['format'] as core.String
              : null,
          interval: json_.containsKey('interval')
              ? json_['interval'] as core.String
              : null,
          quality: json_.containsKey('quality')
              ? json_['quality'] as core.int
              : null,
          rowCount: json_.containsKey('rowCount')
              ? json_['rowCount'] as core.int
              : null,
          spriteHeightPixels: json_.containsKey('spriteHeightPixels')
              ? json_['spriteHeightPixels'] as core.int
              : null,
          spriteWidthPixels: json_.containsKey('spriteWidthPixels')
              ? json_['spriteWidthPixels'] as core.int
              : null,
          startTimeOffset: json_.containsKey('startTimeOffset')
              ? json_['startTimeOffset'] as core.String
              : null,
          totalCount: json_.containsKey('totalCount')
              ? json_['totalCount'] as core.int
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.
class TextMapping {
  /// The `EditAtom.key` that references atom with text inputs in the
  /// `Job.edit_list`.
  ///
  /// Required.
  core.String? atomKey;

  /// The `Input.key` that identifies the input file.
  ///
  /// Required.
  core.String? inputKey;

  /// The zero-based index of the track in the input file.
  ///
  /// Required.
  core.int? inputTrack;

  TextMapping({
    this.atomKey,
    this.inputKey,
    this.inputTrack,
  });

  TextMapping.fromJson(core.Map json_)
      : this(
          atomKey: json_.containsKey('atomKey')
              ? json_['atomKey'] as core.String
              : null,
          inputKey: json_.containsKey('inputKey')
              ? json_['inputKey'] as core.String
              : null,
          inputTrack: json_.containsKey('inputTrack')
              ? json_['inputTrack'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (atomKey != null) 'atomKey': atomKey!,
        if (inputKey != null) 'inputKey': inputKey!,
        if (inputTrack != null) 'inputTrack': inputTrack!,
      };
}

/// Encoding of a text stream.
///
/// For example, closed captions or subtitles.
class TextStream {
  /// The codec for this text stream.
  ///
  /// The default is `webvtt`. Supported text codecs: - `srt` - `ttml` -
  /// `cea608` - `cea708` - `webvtt`
  core.String? codec;

  /// The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.
  core.List<TextMapping>? mapping;

  TextStream({
    this.codec,
    this.mapping,
  });

  TextStream.fromJson(core.Map json_)
      : this(
          codec:
              json_.containsKey('codec') ? json_['codec'] as core.String : null,
          mapping: json_.containsKey('mapping')
              ? (json_['mapping'] as core.List)
                  .map((value) => TextMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codec != null) 'codec': codec!,
        if (mapping != null) 'mapping': mapping!,
      };
}

/// Video stream resource.
class VideoStream {
  /// H264 codec settings.
  H264CodecSettings? h264;

  /// H265 codec settings.
  H265CodecSettings? h265;

  /// VP9 codec settings.
  Vp9CodecSettings? vp9;

  VideoStream({
    this.h264,
    this.h265,
    this.vp9,
  });

  VideoStream.fromJson(core.Map json_)
      : this(
          h264: json_.containsKey('h264')
              ? H264CodecSettings.fromJson(
                  json_['h264'] as core.Map<core.String, core.dynamic>)
              : null,
          h265: json_.containsKey('h265')
              ? H265CodecSettings.fromJson(
                  json_['h265'] as core.Map<core.String, core.dynamic>)
              : null,
          vp9: json_.containsKey('vp9')
              ? Vp9CodecSettings.fromJson(
                  json_['vp9'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (h264 != null) 'h264': h264!,
        if (h265 != null) 'h265': h265!,
        if (vp9 != null) 'vp9': vp9!,
      };
}

/// VP9 codec settings.
class Vp9CodecSettings {
  /// The video bitrate in bits per second.
  ///
  /// The minimum value is 1,000. The maximum value is 480,000,000.
  ///
  /// Required.
  core.int? bitrateBps;

  /// Target CRF level.
  ///
  /// Must be between 10 and 36, where 10 is the highest quality and 36 is the
  /// most efficient compression. The default is 21. **Note:** This field is not
  /// supported.
  core.int? crfLevel;

  /// The target video frame rate in frames per second (FPS).
  ///
  /// Must be less than or equal to 120. Will default to the input frame rate if
  /// larger than the input frame rate. The API will generate an output FPS that
  /// is divisible by the input FPS, and smaller or equal to the target FPS. See
  /// [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate)
  /// for more information.
  ///
  /// Required.
  core.double? frameRate;

  /// Select the GOP size based on the specified duration.
  ///
  /// The default is `3s`. Note that `gopDuration` must be less than or equal to
  /// \[`segmentDuration`\](#SegmentSettings), and
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
  /// The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel
  /// format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10`
  /// 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format -
  /// `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format
  /// - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel
  /// format
  core.String? pixelFormat;

  /// Enforces the specified codec profile.
  ///
  /// The following profiles are supported: * `profile0` (default) * `profile1`
  /// * `profile2` * `profile3` The available options are
  /// \[WebM-compatible\](https://www.webmproject.org/vp9/profiles/). Note that
  /// certain values for this field may cause the transcoder to override other
  /// fields you set in the `Vp9CodecSettings` message.
  core.String? profile;

  /// Specify the `rate_control_mode`.
  ///
  /// The default is `vbr`. Supported rate control modes: - `vbr` - variable
  /// bitrate
  core.String? rateControlMode;

  /// The width of the video in pixels.
  ///
  /// Must be an even integer. When not specified, the width is adjusted to
  /// match the specified height and input aspect ratio. If both are omitted,
  /// the input width is used.
  core.int? widthPixels;

  Vp9CodecSettings({
    this.bitrateBps,
    this.crfLevel,
    this.frameRate,
    this.gopDuration,
    this.gopFrameCount,
    this.heightPixels,
    this.pixelFormat,
    this.profile,
    this.rateControlMode,
    this.widthPixels,
  });

  Vp9CodecSettings.fromJson(core.Map json_)
      : this(
          bitrateBps: json_.containsKey('bitrateBps')
              ? json_['bitrateBps'] as core.int
              : null,
          crfLevel: json_.containsKey('crfLevel')
              ? json_['crfLevel'] as core.int
              : null,
          frameRate: json_.containsKey('frameRate')
              ? (json_['frameRate'] as core.num).toDouble()
              : null,
          gopDuration: json_.containsKey('gopDuration')
              ? json_['gopDuration'] as core.String
              : null,
          gopFrameCount: json_.containsKey('gopFrameCount')
              ? json_['gopFrameCount'] as core.int
              : null,
          heightPixels: json_.containsKey('heightPixels')
              ? json_['heightPixels'] as core.int
              : null,
          pixelFormat: json_.containsKey('pixelFormat')
              ? json_['pixelFormat'] as core.String
              : null,
          profile: json_.containsKey('profile')
              ? json_['profile'] as core.String
              : null,
          rateControlMode: json_.containsKey('rateControlMode')
              ? json_['rateControlMode'] as core.String
              : null,
          widthPixels: json_.containsKey('widthPixels')
              ? json_['widthPixels'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (crfLevel != null) 'crfLevel': crfLevel!,
        if (frameRate != null) 'frameRate': frameRate!,
        if (gopDuration != null) 'gopDuration': gopDuration!,
        if (gopFrameCount != null) 'gopFrameCount': gopFrameCount!,
        if (heightPixels != null) 'heightPixels': heightPixels!,
        if (pixelFormat != null) 'pixelFormat': pixelFormat!,
        if (profile != null) 'profile': profile!,
        if (rateControlMode != null) 'rateControlMode': rateControlMode!,
        if (widthPixels != null) 'widthPixels': widthPixels!,
      };
}
