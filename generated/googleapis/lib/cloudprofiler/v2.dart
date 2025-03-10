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

/// Cloud Profiler API - v2
///
/// Manages continuous profiling information.
///
/// For more information, see <https://cloud.google.com/profiler/>
///
/// Create an instance of [CloudProfilerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsProfilesResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Manages continuous profiling information.
class CloudProfilerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and write monitoring data for all of your Google and third-party
  /// Cloud and API projects
  static const monitoringScope = 'https://www.googleapis.com/auth/monitoring';

  /// Publish metric data to your Google Cloud projects
  static const monitoringWriteScope =
      'https://www.googleapis.com/auth/monitoring.write';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudProfilerApi(http.Client client,
      {core.String rootUrl = 'https://cloudprofiler.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsProfilesResource get profiles => ProjectsProfilesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsProfilesResource(commons.ApiRequester client) : _requester = client;

  /// CreateProfile creates a new profile resource in the online mode.
  ///
  /// _Direct use of this API is discouraged, please use a
  /// [supported profiler agent](https://cloud.google.com/profiler/docs/about-profiler#profiling_agent)
  /// instead for profile collection._ The server ensures that the new profiles
  /// are created at a constant rate per deployment, so the creation request may
  /// hang for some time until the next profile session is available. The
  /// request may fail with ABORTED error if the creation is not available
  /// within ~1m, the response will indicate the duration of the backoff the
  /// client should take before attempting creating a profile again. The backoff
  /// duration is returned in google.rpc.RetryInfo extension on the response
  /// status. To a gRPC client, the extension will be return as a
  /// binary-serialized proto in the trailing metadata item named
  /// "google.rpc.retryinfo-bin".
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent project to create the profile in.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> create(
    CreateProfileRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/profiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Profile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// CreateOfflineProfile creates a new profile resource in the offline mode.
  ///
  /// The client provides the profile to create along with the profile bytes,
  /// the server records it. _Direct use of this API is discouraged, please use
  /// a
  /// [supported profiler agent](https://cloud.google.com/profiler/docs/about-profiler#profiling_agent)
  /// instead for profile collection._
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent project to create the profile in.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> createOffline(
    Profile request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$parent') + '/profiles:createOffline';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Profile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists profiles which have been collected so far and for which the caller
  /// has permission to view.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of profiles.
  /// Format: projects/{user_project_id}
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. Default
  /// page_size is 1000. Max limit is 1000.
  ///
  /// [pageToken] - Optional. The token to continue pagination and get profiles
  /// from a particular page. When paginating, all other parameters provided to
  /// `ListProfiles` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProfilesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/profiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// UpdateProfile updates the profile bytes and labels on the profile resource
  /// created in the online mode.
  ///
  /// Updating the bytes for profiles created in the offline mode is currently
  /// not supported: the profile content must be provided at the time of the
  /// profile creation. _Direct use of this API is discouraged, please use a
  /// [supported profiler agent](https://cloud.google.com/profiler/docs/about-profiler#profiling_agent)
  /// instead for profile collection._
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Opaque, server-assigned, unique ID for this profile.
  /// Value must have pattern `^projects/\[^/\]+/profiles/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask used to specify the fields to be overwritten.
  /// Currently only profile_bytes and labels fields are supported by
  /// UpdateProfile, so only those fields can be specified in the mask. When no
  /// mask is provided, all fields are overwritten.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Profile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Profile> patch(
    Profile request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Profile.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// CreateProfileRequest describes a profile resource online creation request.
///
/// The deployment field must be populated. The profile_type specifies the list
/// of profile types supported by the agent. The creation call will hang until a
/// profile of one of these types needs to be collected.
class CreateProfileRequest {
  /// Deployment details.
  Deployment? deployment;

  /// One or more profile types that the agent is capable of providing.
  core.List<core.String>? profileType;

  CreateProfileRequest({
    this.deployment,
    this.profileType,
  });

  CreateProfileRequest.fromJson(core.Map json_)
      : this(
          deployment: json_.containsKey('deployment')
              ? Deployment.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
          profileType: (json_['profileType'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployment != null) 'deployment': deployment!,
        if (profileType != null) 'profileType': profileType!,
      };
}

/// Deployment contains the deployment identification information.
class Deployment {
  /// Labels identify the deployment within the user universe and same target.
  ///
  /// Validation regex for label names: `^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$`.
  /// Value for an individual label must be \<= 512 bytes, the total size of all
  /// label names and values must be \<= 1024 bytes. Label named "language" can
  /// be used to record the programming language of the profiled deployment. The
  /// standard choices for the value include "java", "go", "python", "ruby",
  /// "nodejs", "php", "dotnet". For deployments running on Google Cloud
  /// Platform, "zone" or "region" label should be present describing the
  /// deployment location. An example of a zone is "us-central1-a", an example
  /// of a region is "us-central1" or "us-central".
  core.Map<core.String, core.String>? labels;

  /// Project ID is the ID of a cloud project.
  ///
  /// Validation regex: `^a-z{4,61}[a-z0-9]$`.
  core.String? projectId;

  /// Target is the service name used to group related deployments: * Service
  /// name for App Engine Flex / Standard.
  ///
  /// * Cluster and container name for GKE. * User-specified string for direct
  /// Compute Engine profiling (e.g. Java). * Job name for Dataflow. Validation
  /// regex: `^[a-z0-9]([-a-z0-9_.]{0,253}[a-z0-9])?$`.
  core.String? target;

  Deployment({
    this.labels,
    this.projectId,
    this.target,
  });

  Deployment.fromJson(core.Map json_)
      : this(
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          projectId: json_['projectId'] as core.String?,
          target: json_['target'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (projectId != null) 'projectId': projectId!,
        if (target != null) 'target': target!,
      };
}

/// ListProfileResponse contains the list of collected profiles for deployments
/// in projects which the user has permissions to view.
class ListProfilesResponse {
  /// Token to receive the next page of results.
  ///
  /// This field maybe empty if there are no more profiles to fetch.
  core.String? nextPageToken;

  /// List of profiles fetched.
  core.List<Profile>? profiles;

  /// Number of profiles that were skipped in the current page since they were
  /// not able to be fetched successfully.
  ///
  /// This should typically be zero. A non-zero value may indicate a transient
  /// failure, in which case if the number is too high for your use case, the
  /// call may be retried.
  core.int? skippedProfiles;

  ListProfilesResponse({
    this.nextPageToken,
    this.profiles,
    this.skippedProfiles,
  });

  ListProfilesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          profiles: (json_['profiles'] as core.List?)
              ?.map((value) => Profile.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          skippedProfiles: json_['skippedProfiles'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (profiles != null) 'profiles': profiles!,
        if (skippedProfiles != null) 'skippedProfiles': skippedProfiles!,
      };
}

/// Profile resource.
class Profile {
  /// Deployment this profile corresponds to.
  Deployment? deployment;

  /// Duration of the profiling session.
  ///
  /// Input (for the offline mode) or output (for the online mode). The field
  /// represents requested profiling duration. It may slightly differ from the
  /// effective profiling duration, which is recorded in the profile data, in
  /// case the profiling can't be stopped immediately (e.g. in case stopping the
  /// profiling is handled asynchronously).
  core.String? duration;

  /// Input only.
  ///
  /// Labels associated to this specific profile. These labels will get merged
  /// with the deployment labels for the final data set. See documentation on
  /// deployment labels for validation rules and limits.
  core.Map<core.String, core.String>? labels;

  /// Opaque, server-assigned, unique ID for this profile.
  ///
  /// Output only.
  core.String? name;

  /// Input only.
  ///
  /// Profile bytes, as a gzip compressed serialized proto, the format is
  /// https://github.com/google/pprof/blob/master/proto/profile.proto.
  core.String? profileBytes;
  core.List<core.int> get profileBytesAsBytes =>
      convert.base64.decode(profileBytes!);

  set profileBytesAsBytes(core.List<core.int> bytes_) {
    profileBytes =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Type of profile.
  ///
  /// For offline mode, this must be specified when creating the profile. For
  /// online mode it is assigned and returned by the server.
  /// Possible string values are:
  /// - "PROFILE_TYPE_UNSPECIFIED" : Unspecified profile type.
  /// - "CPU" : Thread CPU time sampling.
  /// - "WALL" : Wallclock time sampling. More expensive as stops all threads.
  /// - "HEAP" : In-use heap profile. Represents a snapshot of the allocations
  /// that are live at the time of the profiling.
  /// - "THREADS" : Single-shot collection of all thread stacks.
  /// - "CONTENTION" : Synchronization contention profile.
  /// - "PEAK_HEAP" : Peak heap profile.
  /// - "HEAP_ALLOC" : Heap allocation profile. It represents the aggregation of
  /// all allocations made over the duration of the profile. All allocations are
  /// included, including those that might have been freed by the end of the
  /// profiling interval. The profile is in particular useful for garbage
  /// collecting languages to understand which parts of the code create most of
  /// the garbage collection pressure to see if those can be optimized.
  core.String? profileType;

  /// Start time for the profile.
  ///
  /// This output is only present in response from the ListProfiles method.
  ///
  /// Output only.
  core.String? startTime;

  Profile({
    this.deployment,
    this.duration,
    this.labels,
    this.name,
    this.profileBytes,
    this.profileType,
    this.startTime,
  });

  Profile.fromJson(core.Map json_)
      : this(
          deployment: json_.containsKey('deployment')
              ? Deployment.fromJson(
                  json_['deployment'] as core.Map<core.String, core.dynamic>)
              : null,
          duration: json_['duration'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          profileBytes: json_['profileBytes'] as core.String?,
          profileType: json_['profileType'] as core.String?,
          startTime: json_['startTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deployment != null) 'deployment': deployment!,
        if (duration != null) 'duration': duration!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (profileBytes != null) 'profileBytes': profileBytes!,
        if (profileType != null) 'profileType': profileType!,
        if (startTime != null) 'startTime': startTime!,
      };
}
