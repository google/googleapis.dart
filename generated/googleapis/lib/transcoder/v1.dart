// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations

/// Transcoder API - v1
///
/// This API converts video files into formats suitable for consumer
/// distribution. For more information, see the Transcoder API overview.
///
/// For more information, see <https://cloud.google.com/transcoder/docs/>
///
/// Create an instance of [TranscoderApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsJobTemplatesResource]
///     - [ProjectsLocationsJobsResource]
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

/// This API converts video files into formats suitable for consumer
/// distribution.
///
/// For more information, see the Transcoder API overview.
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
          startTimeOffset: json_['startTimeOffset'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (startTimeOffset != null) 'startTimeOffset': startTimeOffset!,
      };
}

/// Configuration for AES-128 encryption.
typedef Aes128Encryption = $Empty;

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
/// Without `AnimationEnd`, the overlay object will keep the state of previous
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
          startTimeOffset: json_['startTimeOffset'] as core.String?,
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
          endTimeOffset: json_['endTimeOffset'] as core.String?,
          fadeType: json_['fadeType'] as core.String?,
          startTimeOffset: json_['startTimeOffset'] as core.String?,
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
          startTimeOffset: json_['startTimeOffset'] as core.String?,
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
          highBoost: json_['highBoost'] as core.bool?,
          lowBoost: json_['lowBoost'] as core.bool?,
          lufs: (json_['lufs'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highBoost != null) 'highBoost': highBoost!,
        if (lowBoost != null) 'lowBoost': lowBoost!,
        if (lufs != null) 'lufs': lufs!,
      };
}

/// The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
class AudioMapping {
  /// The EditAtom.key that references the atom with audio inputs in the
  /// JobConfig.edit_list.
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

  /// The Input.key that identifies the input file.
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
          atomKey: json_['atomKey'] as core.String?,
          gainDb: (json_['gainDb'] as core.num?)?.toDouble(),
          inputChannel: json_['inputChannel'] as core.int?,
          inputKey: json_['inputKey'] as core.String?,
          inputTrack: json_['inputTrack'] as core.int?,
          outputChannel: json_['outputChannel'] as core.int?,
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

  /// The name for this particular audio stream that will be added to the
  /// HLS/DASH manifest.
  ///
  /// Not supported in MP4 files.
  core.String? displayName;

  /// The BCP-47 language code, such as `en-US` or `sr-Latn`.
  ///
  /// For more information, see
  /// https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not
  /// supported in MP4 files.
  core.String? languageCode;

  /// The mapping for the JobConfig.edit_list atoms with audio EditAtom.inputs.
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
    this.displayName,
    this.languageCode,
    this.mapping,
    this.sampleRateHertz,
  });

  AudioStream.fromJson(core.Map json_)
      : this(
          bitrateBps: json_['bitrateBps'] as core.int?,
          channelCount: json_['channelCount'] as core.int?,
          channelLayout: (json_['channelLayout'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          codec: json_['codec'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          languageCode: json_['languageCode'] as core.String?,
          mapping: (json_['mapping'] as core.List?)
              ?.map((value) => AudioMapping.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          sampleRateHertz: json_['sampleRateHertz'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (channelCount != null) 'channelCount': channelCount!,
        if (channelLayout != null) 'channelLayout': channelLayout!,
        if (codec != null) 'codec': codec!,
        if (displayName != null) 'displayName': displayName!,
        if (languageCode != null) 'languageCode': languageCode!,
        if (mapping != null) 'mapping': mapping!,
        if (sampleRateHertz != null) 'sampleRateHertz': sampleRateHertz!,
      };
}

/// Bob Weaver Deinterlacing Filter Configuration.
class BwdifConfig {
  /// Deinterlace all frames rather than just the frames identified as
  /// interlaced.
  ///
  /// The default is `false`.
  core.bool? deinterlaceAllFrames;

  /// Specifies the deinterlacing mode to adopt.
  ///
  /// The default is `send_frame`. Supported values: - `send_frame`: Output one
  /// frame for each frame - `send_field`: Output one frame for each field
  core.String? mode;

  /// The picture field parity assumed for the input interlaced video.
  ///
  /// The default is `auto`. Supported values: - `tff`: Assume the top field is
  /// first - `bff`: Assume the bottom field is first - `auto`: Enable automatic
  /// detection of field parity
  core.String? parity;

  BwdifConfig({
    this.deinterlaceAllFrames,
    this.mode,
    this.parity,
  });

  BwdifConfig.fromJson(core.Map json_)
      : this(
          deinterlaceAllFrames: json_['deinterlaceAllFrames'] as core.bool?,
          mode: json_['mode'] as core.String?,
          parity: json_['parity'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deinterlaceAllFrames != null)
          'deinterlaceAllFrames': deinterlaceAllFrames!,
        if (mode != null) 'mode': mode!,
        if (parity != null) 'parity': parity!,
      };
}

/// Clearkey configuration.
typedef Clearkey = $Empty;

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
          brightness: (json_['brightness'] as core.num?)?.toDouble(),
          contrast: (json_['contrast'] as core.num?)?.toDouble(),
          saturation: (json_['saturation'] as core.num?)?.toDouble(),
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
          bottomPixels: json_['bottomPixels'] as core.int?,
          leftPixels: json_['leftPixels'] as core.int?,
          rightPixels: json_['rightPixels'] as core.int?,
          topPixels: json_['topPixels'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottomPixels != null) 'bottomPixels': bottomPixels!,
        if (leftPixels != null) 'leftPixels': leftPixels!,
        if (rightPixels != null) 'rightPixels': rightPixels!,
        if (topPixels != null) 'topPixels': topPixels!,
      };
}

/// `DASH` manifest configuration.
class DashConfig {
  /// The segment reference scheme for a `DASH` manifest.
  ///
  /// The default is `SEGMENT_LIST`.
  /// Possible string values are:
  /// - "SEGMENT_REFERENCE_SCHEME_UNSPECIFIED" : The segment reference scheme is
  /// not specified.
  /// - "SEGMENT_LIST" : Explicitly lists the URLs of media files for each
  /// segment. For example, if SegmentSettings.individual_segments is `true`,
  /// then the manifest contains fields similar to the following: ```xml ... ```
  /// - "SEGMENT_TEMPLATE_NUMBER" : SegmentSettings.individual_segments must be
  /// set to `true` to use this segment reference scheme. Uses the DASH
  /// specification `` tag to determine the URLs of media files for each
  /// segment. For example: ```xml ... ```
  core.String? segmentReferenceScheme;

  DashConfig({
    this.segmentReferenceScheme,
  });

  DashConfig.fromJson(core.Map json_)
      : this(
          segmentReferenceScheme:
              json_['segmentReferenceScheme'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (segmentReferenceScheme != null)
          'segmentReferenceScheme': segmentReferenceScheme!,
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
          enabled: json_['enabled'] as core.bool?,
          strength: (json_['strength'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enabled != null) 'enabled': enabled!,
        if (strength != null) 'strength': strength!,
      };
}

/// Deinterlace configuration for input video.
class Deinterlace {
  /// Specifies the Bob Weaver Deinterlacing Filter Configuration.
  BwdifConfig? bwdif;

  /// Specifies the Yet Another Deinterlacing Filter Configuration.
  YadifConfig? yadif;

  Deinterlace({
    this.bwdif,
    this.yadif,
  });

  Deinterlace.fromJson(core.Map json_)
      : this(
          bwdif: json_.containsKey('bwdif')
              ? BwdifConfig.fromJson(
                  json_['bwdif'] as core.Map<core.String, core.dynamic>)
              : null,
          yadif: json_.containsKey('yadif')
              ? YadifConfig.fromJson(
                  json_['yadif'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bwdif != null) 'bwdif': bwdif!,
        if (yadif != null) 'yadif': yadif!,
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
          strength: (json_['strength'] as core.num?)?.toDouble(),
          tune: json_['tune'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (strength != null) 'strength': strength!,
        if (tune != null) 'tune': tune!,
      };
}

/// Defines configuration for DRM systems in use.
class DrmSystems {
  /// Clearkey configuration.
  Clearkey? clearkey;

  /// Fairplay configuration.
  Fairplay? fairplay;

  /// Playready configuration.
  Playready? playready;

  /// Widevine configuration.
  Widevine? widevine;

  DrmSystems({
    this.clearkey,
    this.fairplay,
    this.playready,
    this.widevine,
  });

  DrmSystems.fromJson(core.Map json_)
      : this(
          clearkey: json_.containsKey('clearkey')
              ? Clearkey.fromJson(
                  json_['clearkey'] as core.Map<core.String, core.dynamic>)
              : null,
          fairplay: json_.containsKey('fairplay')
              ? Fairplay.fromJson(
                  json_['fairplay'] as core.Map<core.String, core.dynamic>)
              : null,
          playready: json_.containsKey('playready')
              ? Playready.fromJson(
                  json_['playready'] as core.Map<core.String, core.dynamic>)
              : null,
          widevine: json_.containsKey('widevine')
              ? Widevine.fromJson(
                  json_['widevine'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clearkey != null) 'clearkey': clearkey!,
        if (fairplay != null) 'fairplay': fairplay!,
        if (playready != null) 'playready': playready!,
        if (widevine != null) 'widevine': widevine!,
      };
}

/// Edit atom.
class EditAtom {
  /// End time in seconds for the atom, relative to the input file timeline.
  ///
  /// When `end_time_offset` is not specified, the `inputs` are used until the
  /// end of the atom.
  core.String? endTimeOffset;

  /// List of Input.key values identifying files that should be used in this
  /// atom.
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
          endTimeOffset: json_['endTimeOffset'] as core.String?,
          inputs: (json_['inputs'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          key: json_['key'] as core.String?,
          startTimeOffset: json_['startTimeOffset'] as core.String?,
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
          key: json_['key'] as core.String?,
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

/// Encryption settings.
class Encryption {
  /// Configuration for AES-128 encryption.
  Aes128Encryption? aes128;

  /// DRM system(s) to use; at least one must be specified.
  ///
  /// If a DRM system is omitted, it is considered disabled.
  ///
  /// Required.
  DrmSystems? drmSystems;

  /// Identifier for this set of encryption options.
  ///
  /// Required.
  core.String? id;

  /// Configuration for MPEG Common Encryption (MPEG-CENC).
  MpegCommonEncryption? mpegCenc;

  /// Configuration for SAMPLE-AES encryption.
  SampleAesEncryption? sampleAes;

  /// Keys are stored in Google Secret Manager.
  SecretManagerSource? secretManagerKeySource;

  Encryption({
    this.aes128,
    this.drmSystems,
    this.id,
    this.mpegCenc,
    this.sampleAes,
    this.secretManagerKeySource,
  });

  Encryption.fromJson(core.Map json_)
      : this(
          aes128: json_.containsKey('aes128')
              ? Aes128Encryption.fromJson(
                  json_['aes128'] as core.Map<core.String, core.dynamic>)
              : null,
          drmSystems: json_.containsKey('drmSystems')
              ? DrmSystems.fromJson(
                  json_['drmSystems'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          mpegCenc: json_.containsKey('mpegCenc')
              ? MpegCommonEncryption.fromJson(
                  json_['mpegCenc'] as core.Map<core.String, core.dynamic>)
              : null,
          sampleAes: json_.containsKey('sampleAes')
              ? SampleAesEncryption.fromJson(
                  json_['sampleAes'] as core.Map<core.String, core.dynamic>)
              : null,
          secretManagerKeySource: json_.containsKey('secretManagerKeySource')
              ? SecretManagerSource.fromJson(json_['secretManagerKeySource']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aes128 != null) 'aes128': aes128!,
        if (drmSystems != null) 'drmSystems': drmSystems!,
        if (id != null) 'id': id!,
        if (mpegCenc != null) 'mpegCenc': mpegCenc!,
        if (sampleAes != null) 'sampleAes': sampleAes!,
        if (secretManagerKeySource != null)
          'secretManagerKeySource': secretManagerKeySource!,
      };
}

/// Fairplay configuration.
typedef Fairplay = $Empty;

/// `fmp4` container configuration.
class Fmp4Config {
  /// Specify the codec tag string that will be used in the media bitstream.
  ///
  /// When not specified, the codec appropriate value is used. Supported H265
  /// codec tags: - `hvc1` (default) - `hev1`
  ///
  /// Optional.
  core.String? codecTag;

  Fmp4Config({
    this.codecTag,
  });

  Fmp4Config.fromJson(core.Map json_)
      : this(
          codecTag: json_['codecTag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codecTag != null) 'codecTag': codecTag!,
      };
}

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
  /// H264CodecSettings.gop_frame_count if set. The default is 0.
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
  /// H264CodecSettings.rate_control_mode must be `vbr`. The default is `false`.
  core.bool? enableTwoPass;

  /// The entropy coder to use.
  ///
  /// The default is `cabac`. Supported entropy coders: - `cavlc` - `cabac`
  core.String? entropyCoder;

  /// The target video frame rate in frames per second (FPS).
  ///
  /// Must be less than or equal to 120.
  ///
  /// Required.
  core.double? frameRate;

  /// Frame rate conversion strategy for desired frame rate.
  ///
  /// The default is `DOWNSAMPLE`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FRAME_RATE_CONVERSION_STRATEGY_UNSPECIFIED" : Unspecified frame rate
  /// conversion strategy.
  /// - "DOWNSAMPLE" : Selectively retain frames to reduce the output frame
  /// rate. Every _n_ th frame is kept, where `n = ceil(input frame rate /
  /// target frame rate)`. When _n_ = 1 (that is, the target frame rate is
  /// greater than the input frame rate), the output frame rate matches the
  /// input frame rate. When _n_ \> 1, frames are dropped and the output frame
  /// rate is equal to `(input frame rate / n)`. For more information, see
  /// [Calculate frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate).
  /// - "DROP_DUPLICATE" : Drop or duplicate frames to match the specified frame
  /// rate.
  core.String? frameRateConversionStrategy;

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
  /// input height is used. For portrait videos that contain horizontal ASR and
  /// rotation metadata, provide the height, in pixels, per the horizontal ASR.
  /// The API calculates the width per the horizontal ASR. The API detects any
  /// rotation metadata and swaps the requested height and width for the output.
  core.int? heightPixels;

  /// HLG color format setting for H264.
  ///
  /// Optional.
  H264ColorFormatHLG? hlg;

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

  /// Specify the mode.
  ///
  /// The default is `vbr`. Supported rate control modes: - `vbr` - variable
  /// bitrate - `crf` - constant rate factor
  core.String? rateControlMode;

  /// SDR color format setting for H264.
  ///
  /// Optional.
  H264ColorFormatSDR? sdr;

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
  /// H264CodecSettings.vbv_size_bits.
  core.int? vbvFullnessBits;

  /// Size of the Video Buffering Verifier (VBV) buffer in bits.
  ///
  /// Must be greater than zero. The default is equal to
  /// H264CodecSettings.bitrate_bps.
  core.int? vbvSizeBits;

  /// The width of the video in pixels.
  ///
  /// Must be an even integer. When not specified, the width is adjusted to
  /// match the specified height and input aspect ratio. If both are omitted,
  /// the input width is used. For portrait videos that contain horizontal ASR
  /// and rotation metadata, provide the width, in pixels, per the horizontal
  /// ASR. The API calculates the height per the horizontal ASR. The API detects
  /// any rotation metadata and swaps the requested height and width for the
  /// output.
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
    this.frameRateConversionStrategy,
    this.gopDuration,
    this.gopFrameCount,
    this.heightPixels,
    this.hlg,
    this.pixelFormat,
    this.preset,
    this.profile,
    this.rateControlMode,
    this.sdr,
    this.tune,
    this.vbvFullnessBits,
    this.vbvSizeBits,
    this.widthPixels,
  });

  H264CodecSettings.fromJson(core.Map json_)
      : this(
          allowOpenGop: json_['allowOpenGop'] as core.bool?,
          aqStrength: (json_['aqStrength'] as core.num?)?.toDouble(),
          bFrameCount: json_['bFrameCount'] as core.int?,
          bPyramid: json_['bPyramid'] as core.bool?,
          bitrateBps: json_['bitrateBps'] as core.int?,
          crfLevel: json_['crfLevel'] as core.int?,
          enableTwoPass: json_['enableTwoPass'] as core.bool?,
          entropyCoder: json_['entropyCoder'] as core.String?,
          frameRate: (json_['frameRate'] as core.num?)?.toDouble(),
          frameRateConversionStrategy:
              json_['frameRateConversionStrategy'] as core.String?,
          gopDuration: json_['gopDuration'] as core.String?,
          gopFrameCount: json_['gopFrameCount'] as core.int?,
          heightPixels: json_['heightPixels'] as core.int?,
          hlg: json_.containsKey('hlg')
              ? H264ColorFormatHLG.fromJson(
                  json_['hlg'] as core.Map<core.String, core.dynamic>)
              : null,
          pixelFormat: json_['pixelFormat'] as core.String?,
          preset: json_['preset'] as core.String?,
          profile: json_['profile'] as core.String?,
          rateControlMode: json_['rateControlMode'] as core.String?,
          sdr: json_.containsKey('sdr')
              ? H264ColorFormatSDR.fromJson(
                  json_['sdr'] as core.Map<core.String, core.dynamic>)
              : null,
          tune: json_['tune'] as core.String?,
          vbvFullnessBits: json_['vbvFullnessBits'] as core.int?,
          vbvSizeBits: json_['vbvSizeBits'] as core.int?,
          widthPixels: json_['widthPixels'] as core.int?,
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
        if (frameRateConversionStrategy != null)
          'frameRateConversionStrategy': frameRateConversionStrategy!,
        if (gopDuration != null) 'gopDuration': gopDuration!,
        if (gopFrameCount != null) 'gopFrameCount': gopFrameCount!,
        if (heightPixels != null) 'heightPixels': heightPixels!,
        if (hlg != null) 'hlg': hlg!,
        if (pixelFormat != null) 'pixelFormat': pixelFormat!,
        if (preset != null) 'preset': preset!,
        if (profile != null) 'profile': profile!,
        if (rateControlMode != null) 'rateControlMode': rateControlMode!,
        if (sdr != null) 'sdr': sdr!,
        if (tune != null) 'tune': tune!,
        if (vbvFullnessBits != null) 'vbvFullnessBits': vbvFullnessBits!,
        if (vbvSizeBits != null) 'vbvSizeBits': vbvSizeBits!,
        if (widthPixels != null) 'widthPixels': widthPixels!,
      };
}

/// Convert the input video to a Hybrid Log Gamma (HLG) video.
typedef H264ColorFormatHLG = $Empty;

/// Convert the input video to a Standard Dynamic Range (SDR) video.
typedef H264ColorFormatSDR = $Empty;

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
  /// H265CodecSettings.gop_frame_count if set. The default is 0.
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
  /// H265CodecSettings.rate_control_mode must be `vbr`. The default is `false`.
  core.bool? enableTwoPass;

  /// The target video frame rate in frames per second (FPS).
  ///
  /// Must be less than or equal to 120.
  ///
  /// Required.
  core.double? frameRate;

  /// Frame rate conversion strategy for desired frame rate.
  ///
  /// The default is `DOWNSAMPLE`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FRAME_RATE_CONVERSION_STRATEGY_UNSPECIFIED" : Unspecified frame rate
  /// conversion strategy.
  /// - "DOWNSAMPLE" : Selectively retain frames to reduce the output frame
  /// rate. Every _n_ th frame is kept, where `n = ceil(input frame rate /
  /// target frame rate)`. When _n_ = 1 (that is, the target frame rate is
  /// greater than the input frame rate), the output frame rate matches the
  /// input frame rate. When _n_ \> 1, frames are dropped and the output frame
  /// rate is equal to `(input frame rate / n)`. For more information, see
  /// [Calculate frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate).
  /// - "DROP_DUPLICATE" : Drop or duplicate frames to match the specified frame
  /// rate.
  core.String? frameRateConversionStrategy;

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

  /// HDR10 color format setting for H265.
  ///
  /// Optional.
  H265ColorFormatHDR10? hdr10;

  /// The height of the video in pixels.
  ///
  /// Must be an even integer. When not specified, the height is adjusted to
  /// match the specified width and input aspect ratio. If both are omitted, the
  /// input height is used. For portrait videos that contain horizontal ASR and
  /// rotation metadata, provide the height, in pixels, per the horizontal ASR.
  /// The API calculates the width per the horizontal ASR. The API detects any
  /// rotation metadata and swaps the requested height and width for the output.
  core.int? heightPixels;

  /// HLG color format setting for H265.
  ///
  /// Optional.
  H265ColorFormatHLG? hlg;

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

  /// Specify the mode.
  ///
  /// The default is `vbr`. Supported rate control modes: - `vbr` - variable
  /// bitrate - `crf` - constant rate factor
  core.String? rateControlMode;

  /// SDR color format setting for H265.
  ///
  /// Optional.
  H265ColorFormatSDR? sdr;

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
  /// H265CodecSettings.vbv_size_bits.
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
  /// the input width is used. For portrait videos that contain horizontal ASR
  /// and rotation metadata, provide the width, in pixels, per the horizontal
  /// ASR. The API calculates the height per the horizontal ASR. The API detects
  /// any rotation metadata and swaps the requested height and width for the
  /// output.
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
    this.frameRateConversionStrategy,
    this.gopDuration,
    this.gopFrameCount,
    this.hdr10,
    this.heightPixels,
    this.hlg,
    this.pixelFormat,
    this.preset,
    this.profile,
    this.rateControlMode,
    this.sdr,
    this.tune,
    this.vbvFullnessBits,
    this.vbvSizeBits,
    this.widthPixels,
  });

  H265CodecSettings.fromJson(core.Map json_)
      : this(
          allowOpenGop: json_['allowOpenGop'] as core.bool?,
          aqStrength: (json_['aqStrength'] as core.num?)?.toDouble(),
          bFrameCount: json_['bFrameCount'] as core.int?,
          bPyramid: json_['bPyramid'] as core.bool?,
          bitrateBps: json_['bitrateBps'] as core.int?,
          crfLevel: json_['crfLevel'] as core.int?,
          enableTwoPass: json_['enableTwoPass'] as core.bool?,
          frameRate: (json_['frameRate'] as core.num?)?.toDouble(),
          frameRateConversionStrategy:
              json_['frameRateConversionStrategy'] as core.String?,
          gopDuration: json_['gopDuration'] as core.String?,
          gopFrameCount: json_['gopFrameCount'] as core.int?,
          hdr10: json_.containsKey('hdr10')
              ? H265ColorFormatHDR10.fromJson(
                  json_['hdr10'] as core.Map<core.String, core.dynamic>)
              : null,
          heightPixels: json_['heightPixels'] as core.int?,
          hlg: json_.containsKey('hlg')
              ? H265ColorFormatHLG.fromJson(
                  json_['hlg'] as core.Map<core.String, core.dynamic>)
              : null,
          pixelFormat: json_['pixelFormat'] as core.String?,
          preset: json_['preset'] as core.String?,
          profile: json_['profile'] as core.String?,
          rateControlMode: json_['rateControlMode'] as core.String?,
          sdr: json_.containsKey('sdr')
              ? H265ColorFormatSDR.fromJson(
                  json_['sdr'] as core.Map<core.String, core.dynamic>)
              : null,
          tune: json_['tune'] as core.String?,
          vbvFullnessBits: json_['vbvFullnessBits'] as core.int?,
          vbvSizeBits: json_['vbvSizeBits'] as core.int?,
          widthPixels: json_['widthPixels'] as core.int?,
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
        if (frameRateConversionStrategy != null)
          'frameRateConversionStrategy': frameRateConversionStrategy!,
        if (gopDuration != null) 'gopDuration': gopDuration!,
        if (gopFrameCount != null) 'gopFrameCount': gopFrameCount!,
        if (hdr10 != null) 'hdr10': hdr10!,
        if (heightPixels != null) 'heightPixels': heightPixels!,
        if (hlg != null) 'hlg': hlg!,
        if (pixelFormat != null) 'pixelFormat': pixelFormat!,
        if (preset != null) 'preset': preset!,
        if (profile != null) 'profile': profile!,
        if (rateControlMode != null) 'rateControlMode': rateControlMode!,
        if (sdr != null) 'sdr': sdr!,
        if (tune != null) 'tune': tune!,
        if (vbvFullnessBits != null) 'vbvFullnessBits': vbvFullnessBits!,
        if (vbvSizeBits != null) 'vbvSizeBits': vbvSizeBits!,
        if (widthPixels != null) 'widthPixels': widthPixels!,
      };
}

/// Convert the input video to a High Dynamic Range 10 (HDR10) video.
typedef H265ColorFormatHDR10 = $Empty;

/// Convert the input video to a Hybrid Log Gamma (HLG) video.
typedef H265ColorFormatHLG = $Empty;

/// Convert the input video to a Standard Dynamic Range (SDR) video.
typedef H265ColorFormatSDR = $Empty;

/// Overlaid image.
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

  /// URI of the image in Cloud Storage.
  ///
  /// For example, `gs://bucket/inputs/image.png`. Only PNG and JPEG images are
  /// supported.
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
          alpha: (json_['alpha'] as core.num?)?.toDouble(),
          resolution: json_.containsKey('resolution')
              ? NormalizedCoordinate.fromJson(
                  json_['resolution'] as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_['uri'] as core.String?,
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
  /// is populated from Job.input_uri. See
  /// [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  core.String? uri;

  Input({
    this.key,
    this.preprocessingConfig,
    this.uri,
  });

  Input.fromJson(core.Map json_)
      : this(
          key: json_['key'] as core.String?,
          preprocessingConfig: json_.containsKey('preprocessingConfig')
              ? PreprocessingConfig.fromJson(json_['preprocessingConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uri: json_['uri'] as core.String?,
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
  /// The processing priority of a batch job.
  ///
  /// This field can only be set for batch mode jobs. The default value is 0.
  /// This value cannot be negative. Higher values correspond to higher
  /// priorities for the job.
  core.int? batchModePriority;

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
  /// This property is always present when ProcessingState is `FAILED`.
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

  /// The processing mode of the job.
  ///
  /// The default is `PROCESSING_MODE_INTERACTIVE`.
  /// Possible string values are:
  /// - "PROCESSING_MODE_UNSPECIFIED" : The job processing mode is not
  /// specified.
  /// - "PROCESSING_MODE_INTERACTIVE" : The job processing mode is interactive
  /// mode. Interactive job will either be ran or rejected if quota does not
  /// allow for it.
  /// - "PROCESSING_MODE_BATCH" : The job processing mode is batch mode. Batch
  /// mode allows queuing of jobs.
  core.String? mode;

  /// The resource name of the job.
  ///
  /// Format: `projects/{project_number}/locations/{location}/jobs/{job}`
  core.String? name;

  /// The optimization strategy of the job.
  ///
  /// The default is `AUTODETECT`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OPTIMIZATION_STRATEGY_UNSPECIFIED" : The optimization strategy is not
  /// specified.
  /// - "AUTODETECT" : Prioritize job processing speed.
  /// - "DISABLED" : Disable all optimizations.
  core.String? optimization;

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
  /// [Troubleshooting](https://cloud.google.com/transcoder/docs/troubleshooting).
  core.String? state;

  /// Input only.
  ///
  /// Specify the `template_id` to use for populating `Job.config`. The default
  /// is `preset/web-hd`, which is the only supported preset. User defined
  /// JobTemplate: `{job_template_id}`
  core.String? templateId;

  /// Job time to live value in days, which will be effective after job
  /// completion.
  ///
  /// Job should be deleted automatically after the given TTL. Enter a value
  /// between 1 and 90. The default is 30.
  core.int? ttlAfterCompletionDays;

  Job({
    this.batchModePriority,
    this.config,
    this.createTime,
    this.endTime,
    this.error,
    this.inputUri,
    this.labels,
    this.mode,
    this.name,
    this.optimization,
    this.outputUri,
    this.startTime,
    this.state,
    this.templateId,
    this.ttlAfterCompletionDays,
  });

  Job.fromJson(core.Map json_)
      : this(
          batchModePriority: json_['batchModePriority'] as core.int?,
          config: json_.containsKey('config')
              ? JobConfig.fromJson(
                  json_['config'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_['createTime'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          inputUri: json_['inputUri'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          mode: json_['mode'] as core.String?,
          name: json_['name'] as core.String?,
          optimization: json_['optimization'] as core.String?,
          outputUri: json_['outputUri'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
          templateId: json_['templateId'] as core.String?,
          ttlAfterCompletionDays: json_['ttlAfterCompletionDays'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchModePriority != null) 'batchModePriority': batchModePriority!,
        if (config != null) 'config': config!,
        if (createTime != null) 'createTime': createTime!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (inputUri != null) 'inputUri': inputUri!,
        if (labels != null) 'labels': labels!,
        if (mode != null) 'mode': mode!,
        if (name != null) 'name': name!,
        if (optimization != null) 'optimization': optimization!,
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

  /// List of edit atoms.
  ///
  /// Defines the ultimate timeline of the resulting file or manifest.
  core.List<EditAtom>? editList;

  /// List of elementary streams.
  core.List<ElementaryStream>? elementaryStreams;

  /// List of encryption configurations for the content.
  ///
  /// Each configuration has an ID. Specify this ID in the
  /// MuxStream.encryption_id field to indicate the configuration to use for
  /// that `MuxStream` output.
  core.List<Encryption>? encryptions;

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
    this.encryptions,
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
          adBreaks: (json_['adBreaks'] as core.List?)
              ?.map((value) => AdBreak.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          editList: (json_['editList'] as core.List?)
              ?.map((value) => EditAtom.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          elementaryStreams: (json_['elementaryStreams'] as core.List?)
              ?.map((value) => ElementaryStream.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          encryptions: (json_['encryptions'] as core.List?)
              ?.map((value) => Encryption.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          inputs: (json_['inputs'] as core.List?)
              ?.map((value) =>
                  Input.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          manifests: (json_['manifests'] as core.List?)
              ?.map((value) => Manifest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          muxStreams: (json_['muxStreams'] as core.List?)
              ?.map((value) => MuxStream.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          output: json_.containsKey('output')
              ? Output.fromJson(
                  json_['output'] as core.Map<core.String, core.dynamic>)
              : null,
          overlays: (json_['overlays'] as core.List?)
              ?.map((value) => Overlay.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          pubsubDestination: json_.containsKey('pubsubDestination')
              ? PubsubDestination.fromJson(json_['pubsubDestination']
                  as core.Map<core.String, core.dynamic>)
              : null,
          spriteSheets: (json_['spriteSheets'] as core.List?)
              ?.map((value) => SpriteSheet.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adBreaks != null) 'adBreaks': adBreaks!,
        if (editList != null) 'editList': editList!,
        if (elementaryStreams != null) 'elementaryStreams': elementaryStreams!,
        if (encryptions != null) 'encryptions': encryptions!,
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
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
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
          jobTemplates: (json_['jobTemplates'] as core.List?)
              ?.map((value) => JobTemplate.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
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
          jobs: (json_['jobs'] as core.List?)
              ?.map((value) =>
                  Job.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Manifest configuration.
class Manifest {
  /// `DASH` manifest configuration.
  DashConfig? dash;

  /// The name of the generated file.
  ///
  /// The default is `manifest` with the extension suffix corresponding to the
  /// Manifest.type.
  core.String? fileName;

  /// List of user supplied MuxStream.key values that should appear in this
  /// manifest.
  ///
  /// When Manifest.type is `HLS`, a media manifest with name MuxStream.key and
  /// `.m3u8` extension is generated for each element in this list.
  ///
  /// Required.
  core.List<core.String>? muxStreams;

  /// Type of the manifest.
  ///
  /// Required.
  /// Possible string values are:
  /// - "MANIFEST_TYPE_UNSPECIFIED" : The manifest type is not specified.
  /// - "HLS" : Create an HLS manifest. The corresponding file extension is
  /// `.m3u8`.
  /// - "DASH" : Create an MPEG-DASH manifest. The corresponding file extension
  /// is `.mpd`.
  core.String? type;

  Manifest({
    this.dash,
    this.fileName,
    this.muxStreams,
    this.type,
  });

  Manifest.fromJson(core.Map json_)
      : this(
          dash: json_.containsKey('dash')
              ? DashConfig.fromJson(
                  json_['dash'] as core.Map<core.String, core.dynamic>)
              : null,
          fileName: json_['fileName'] as core.String?,
          muxStreams: (json_['muxStreams'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dash != null) 'dash': dash!,
        if (fileName != null) 'fileName': fileName!,
        if (muxStreams != null) 'muxStreams': muxStreams!,
        if (type != null) 'type': type!,
      };
}

/// Configuration for MPEG Common Encryption (MPEG-CENC).
class MpegCommonEncryption {
  /// Specify the encryption scheme.
  ///
  /// Supported encryption schemes: - `cenc` - `cbcs`
  ///
  /// Required.
  core.String? scheme;

  MpegCommonEncryption({
    this.scheme,
  });

  MpegCommonEncryption.fromJson(core.Map json_)
      : this(
          scheme: json_['scheme'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scheme != null) 'scheme': scheme!,
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

  /// List of ElementaryStream.key values multiplexed in this stream.
  core.List<core.String>? elementaryStreams;

  /// Identifier of the encryption configuration to use.
  ///
  /// If omitted, output will be unencrypted.
  core.String? encryptionId;

  /// The name of the generated file.
  ///
  /// The default is MuxStream.key with the extension suffix corresponding to
  /// the MuxStream.container. Individual segments also have an incremental
  /// 10-digit zero-padded suffix starting from 0 before the extension, such as
  /// `mux_stream0000000123.ts`.
  core.String? fileName;

  /// `fmp4` container configuration.
  ///
  /// Optional.
  Fmp4Config? fmp4;

  /// A unique key for this multiplexed stream.
  core.String? key;

  /// Segment settings for `ts`, `fmp4` and `vtt`.
  SegmentSettings? segmentSettings;

  MuxStream({
    this.container,
    this.elementaryStreams,
    this.encryptionId,
    this.fileName,
    this.fmp4,
    this.key,
    this.segmentSettings,
  });

  MuxStream.fromJson(core.Map json_)
      : this(
          container: json_['container'] as core.String?,
          elementaryStreams: (json_['elementaryStreams'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          encryptionId: json_['encryptionId'] as core.String?,
          fileName: json_['fileName'] as core.String?,
          fmp4: json_.containsKey('fmp4')
              ? Fmp4Config.fromJson(
                  json_['fmp4'] as core.Map<core.String, core.dynamic>)
              : null,
          key: json_['key'] as core.String?,
          segmentSettings: json_.containsKey('segmentSettings')
              ? SegmentSettings.fromJson(json_['segmentSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (container != null) 'container': container!,
        if (elementaryStreams != null) 'elementaryStreams': elementaryStreams!,
        if (encryptionId != null) 'encryptionId': encryptionId!,
        if (fileName != null) 'fileName': fileName!,
        if (fmp4 != null) 'fmp4': fmp4!,
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
          x: (json_['x'] as core.num?)?.toDouble(),
          y: (json_['y'] as core.num?)?.toDouble(),
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
  /// from Job.output_uri. See
  /// [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).
  core.String? uri;

  Output({
    this.uri,
  });

  Output.fromJson(core.Map json_)
      : this(
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uri != null) 'uri': uri!,
      };
}

/// Overlay configuration.
class Overlay {
  /// List of animations.
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
          animations: (json_['animations'] as core.List?)
              ?.map((value) => Animation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
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
          bottomPixels: json_['bottomPixels'] as core.int?,
          leftPixels: json_['leftPixels'] as core.int?,
          rightPixels: json_['rightPixels'] as core.int?,
          topPixels: json_['topPixels'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bottomPixels != null) 'bottomPixels': bottomPixels!,
        if (leftPixels != null) 'leftPixels': leftPixels!,
        if (rightPixels != null) 'rightPixels': rightPixels!,
        if (topPixels != null) 'topPixels': topPixels!,
      };
}

/// Playready configuration.
typedef Playready = $Empty;

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

  /// Specify the video deinterlace configuration.
  Deinterlace? deinterlace;

  /// Denoise preprocessing configuration.
  Denoise? denoise;

  /// Specify the video pad filter configuration.
  Pad? pad;

  PreprocessingConfig({
    this.audio,
    this.color,
    this.crop,
    this.deblock,
    this.deinterlace,
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
          deinterlace: json_.containsKey('deinterlace')
              ? Deinterlace.fromJson(
                  json_['deinterlace'] as core.Map<core.String, core.dynamic>)
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
        if (deinterlace != null) 'deinterlace': deinterlace!,
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
          topic: json_['topic'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (topic != null) 'topic': topic!,
      };
}

/// Configuration for SAMPLE-AES encryption.
typedef SampleAesEncryption = $Empty;

/// Configuration for secrets stored in Google Secret Manager.
class SecretManagerSource {
  /// The name of the Secret Version containing the encryption key in the
  /// following format:
  /// `projects/{project}/secrets/{secret_id}/versions/{version_number}` Note
  /// that only numbered versions are supported.
  ///
  /// Aliases like "latest" are not supported.
  ///
  /// Required.
  core.String? secretVersion;

  SecretManagerSource({
    this.secretVersion,
  });

  SecretManagerSource.fromJson(core.Map json_)
      : this(
          secretVersion: json_['secretVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secretVersion != null) 'secretVersion': secretVersion!,
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
          individualSegments: json_['individualSegments'] as core.bool?,
          segmentDuration: json_['segmentDuration'] as core.String?,
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
  /// automatically calculate the missing field). For portrait videos that
  /// contain horizontal ASR and rotation metadata, provide the height, in
  /// pixels, per the horizontal ASR. The API calculates the width per the
  /// horizontal ASR. The API detects any rotation metadata and swaps the
  /// requested height and width for the output.
  ///
  /// Required.
  core.int? spriteHeightPixels;

  /// The width of sprite in pixels.
  ///
  /// Must be an even integer. To preserve the source aspect ratio, set the
  /// SpriteSheet.sprite_width_pixels field or the
  /// SpriteSheet.sprite_height_pixels field, but not both (the API will
  /// automatically calculate the missing field). For portrait videos that
  /// contain horizontal ASR and rotation metadata, provide the width, in
  /// pixels, per the horizontal ASR. The API calculates the height per the
  /// horizontal ASR. The API detects any rotation metadata and swaps the
  /// requested height and width for the output.
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
          columnCount: json_['columnCount'] as core.int?,
          endTimeOffset: json_['endTimeOffset'] as core.String?,
          filePrefix: json_['filePrefix'] as core.String?,
          format: json_['format'] as core.String?,
          interval: json_['interval'] as core.String?,
          quality: json_['quality'] as core.int?,
          rowCount: json_['rowCount'] as core.int?,
          spriteHeightPixels: json_['spriteHeightPixels'] as core.int?,
          spriteWidthPixels: json_['spriteWidthPixels'] as core.int?,
          startTimeOffset: json_['startTimeOffset'] as core.String?,
          totalCount: json_['totalCount'] as core.int?,
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

/// The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
class TextMapping {
  /// The EditAtom.key that references atom with text inputs in the
  /// JobConfig.edit_list.
  ///
  /// Required.
  core.String? atomKey;

  /// The Input.key that identifies the input file.
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
          atomKey: json_['atomKey'] as core.String?,
          inputKey: json_['inputKey'] as core.String?,
          inputTrack: json_['inputTrack'] as core.int?,
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

  /// The name for this particular text stream that will be added to the
  /// HLS/DASH manifest.
  ///
  /// Not supported in MP4 files.
  core.String? displayName;

  /// The BCP-47 language code, such as `en-US` or `sr-Latn`.
  ///
  /// For more information, see
  /// https://www.unicode.org/reports/tr35/#Unicode_locale_identifier. Not
  /// supported in MP4 files.
  core.String? languageCode;

  /// The mapping for the JobConfig.edit_list atoms with text EditAtom.inputs.
  core.List<TextMapping>? mapping;

  TextStream({
    this.codec,
    this.displayName,
    this.languageCode,
    this.mapping,
  });

  TextStream.fromJson(core.Map json_)
      : this(
          codec: json_['codec'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          languageCode: json_['languageCode'] as core.String?,
          mapping: (json_['mapping'] as core.List?)
              ?.map((value) => TextMapping.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codec != null) 'codec': codec!,
        if (displayName != null) 'displayName': displayName!,
        if (languageCode != null) 'languageCode': languageCode!,
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
  /// Must be less than or equal to 120.
  ///
  /// Required.
  core.double? frameRate;

  /// Frame rate conversion strategy for desired frame rate.
  ///
  /// The default is `DOWNSAMPLE`.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FRAME_RATE_CONVERSION_STRATEGY_UNSPECIFIED" : Unspecified frame rate
  /// conversion strategy.
  /// - "DOWNSAMPLE" : Selectively retain frames to reduce the output frame
  /// rate. Every _n_ th frame is kept, where `n = ceil(input frame rate /
  /// target frame rate)`. When _n_ = 1 (that is, the target frame rate is
  /// greater than the input frame rate), the output frame rate matches the
  /// input frame rate. When _n_ \> 1, frames are dropped and the output frame
  /// rate is equal to `(input frame rate / n)`. For more information, see
  /// [Calculate frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate).
  /// - "DROP_DUPLICATE" : Drop or duplicate frames to match the specified frame
  /// rate.
  core.String? frameRateConversionStrategy;

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
  /// input height is used. For portrait videos that contain horizontal ASR and
  /// rotation metadata, provide the height, in pixels, per the horizontal ASR.
  /// The API calculates the width per the horizontal ASR. The API detects any
  /// rotation metadata and swaps the requested height and width for the output.
  core.int? heightPixels;

  /// HLG color format setting for VP9.
  ///
  /// Optional.
  Vp9ColorFormatHLG? hlg;

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

  /// Specify the mode.
  ///
  /// The default is `vbr`. Supported rate control modes: - `vbr` - variable
  /// bitrate
  core.String? rateControlMode;

  /// SDR color format setting for VP9.
  ///
  /// Optional.
  Vp9ColorFormatSDR? sdr;

  /// The width of the video in pixels.
  ///
  /// Must be an even integer. When not specified, the width is adjusted to
  /// match the specified height and input aspect ratio. If both are omitted,
  /// the input width is used. For portrait videos that contain horizontal ASR
  /// and rotation metadata, provide the width, in pixels, per the horizontal
  /// ASR. The API calculates the height per the horizontal ASR. The API detects
  /// any rotation metadata and swaps the requested height and width for the
  /// output.
  core.int? widthPixels;

  Vp9CodecSettings({
    this.bitrateBps,
    this.crfLevel,
    this.frameRate,
    this.frameRateConversionStrategy,
    this.gopDuration,
    this.gopFrameCount,
    this.heightPixels,
    this.hlg,
    this.pixelFormat,
    this.profile,
    this.rateControlMode,
    this.sdr,
    this.widthPixels,
  });

  Vp9CodecSettings.fromJson(core.Map json_)
      : this(
          bitrateBps: json_['bitrateBps'] as core.int?,
          crfLevel: json_['crfLevel'] as core.int?,
          frameRate: (json_['frameRate'] as core.num?)?.toDouble(),
          frameRateConversionStrategy:
              json_['frameRateConversionStrategy'] as core.String?,
          gopDuration: json_['gopDuration'] as core.String?,
          gopFrameCount: json_['gopFrameCount'] as core.int?,
          heightPixels: json_['heightPixels'] as core.int?,
          hlg: json_.containsKey('hlg')
              ? Vp9ColorFormatHLG.fromJson(
                  json_['hlg'] as core.Map<core.String, core.dynamic>)
              : null,
          pixelFormat: json_['pixelFormat'] as core.String?,
          profile: json_['profile'] as core.String?,
          rateControlMode: json_['rateControlMode'] as core.String?,
          sdr: json_.containsKey('sdr')
              ? Vp9ColorFormatSDR.fromJson(
                  json_['sdr'] as core.Map<core.String, core.dynamic>)
              : null,
          widthPixels: json_['widthPixels'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bitrateBps != null) 'bitrateBps': bitrateBps!,
        if (crfLevel != null) 'crfLevel': crfLevel!,
        if (frameRate != null) 'frameRate': frameRate!,
        if (frameRateConversionStrategy != null)
          'frameRateConversionStrategy': frameRateConversionStrategy!,
        if (gopDuration != null) 'gopDuration': gopDuration!,
        if (gopFrameCount != null) 'gopFrameCount': gopFrameCount!,
        if (heightPixels != null) 'heightPixels': heightPixels!,
        if (hlg != null) 'hlg': hlg!,
        if (pixelFormat != null) 'pixelFormat': pixelFormat!,
        if (profile != null) 'profile': profile!,
        if (rateControlMode != null) 'rateControlMode': rateControlMode!,
        if (sdr != null) 'sdr': sdr!,
        if (widthPixels != null) 'widthPixels': widthPixels!,
      };
}

/// Convert the input video to a Hybrid Log Gamma (HLG) video.
typedef Vp9ColorFormatHLG = $Empty;

/// Convert the input video to a Standard Dynamic Range (SDR) video.
typedef Vp9ColorFormatSDR = $Empty;

/// Widevine configuration.
typedef Widevine = $Empty;

/// Yet Another Deinterlacing Filter Configuration.
class YadifConfig {
  /// Deinterlace all frames rather than just the frames identified as
  /// interlaced.
  ///
  /// The default is `false`.
  core.bool? deinterlaceAllFrames;

  /// Disable spacial interlacing.
  ///
  /// The default is `false`.
  core.bool? disableSpatialInterlacing;

  /// Specifies the deinterlacing mode to adopt.
  ///
  /// The default is `send_frame`. Supported values: - `send_frame`: Output one
  /// frame for each frame - `send_field`: Output one frame for each field
  core.String? mode;

  /// The picture field parity assumed for the input interlaced video.
  ///
  /// The default is `auto`. Supported values: - `tff`: Assume the top field is
  /// first - `bff`: Assume the bottom field is first - `auto`: Enable automatic
  /// detection of field parity
  core.String? parity;

  YadifConfig({
    this.deinterlaceAllFrames,
    this.disableSpatialInterlacing,
    this.mode,
    this.parity,
  });

  YadifConfig.fromJson(core.Map json_)
      : this(
          deinterlaceAllFrames: json_['deinterlaceAllFrames'] as core.bool?,
          disableSpatialInterlacing:
              json_['disableSpatialInterlacing'] as core.bool?,
          mode: json_['mode'] as core.String?,
          parity: json_['parity'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deinterlaceAllFrames != null)
          'deinterlaceAllFrames': deinterlaceAllFrames!,
        if (disableSpatialInterlacing != null)
          'disableSpatialInterlacing': disableSpatialInterlacing!,
        if (mode != null) 'mode': mode!,
        if (parity != null) 'parity': parity!,
      };
}
