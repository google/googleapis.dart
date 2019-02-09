// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: unnecessary_cast

library googleapis.cloudprofiler.v2;

import 'dart:core' as core;
import 'dart:async' as async;
import 'dart:convert' as convert;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

const core.String USER_AGENT = 'dart-api-client cloudprofiler/v2';

/// Manages continuous profiling information.
class CloudprofilerApi {
  /// View and manage your data across Google Cloud Platform services
  static const CloudPlatformScope =
      "https://www.googleapis.com/auth/cloud-platform";

  /// View and write monitoring data for all of your Google and third-party
  /// Cloud and API projects
  static const MonitoringScope = "https://www.googleapis.com/auth/monitoring";

  /// Publish metric data to your Google Cloud projects
  static const MonitoringWriteScope =
      "https://www.googleapis.com/auth/monitoring.write";

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => new ProjectsResourceApi(_requester);

  CloudprofilerApi(http.Client client,
      {core.String rootUrl = "https://cloudprofiler.googleapis.com/",
      core.String servicePath = ""})
      : _requester =
            new commons.ApiRequester(client, rootUrl, servicePath, USER_AGENT);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsProfilesResourceApi get profiles =>
      new ProjectsProfilesResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsProfilesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsProfilesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// CreateProfile creates a new profile resource in the online mode.
  ///
  /// The server ensures that the new profiles are created at a constant rate
  /// per
  /// deployment, so the creation request may hang for some time until the next
  /// profile session is available.
  ///
  /// The request may fail with ABORTED error if the creation is not available
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
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Profile> create(CreateProfileRequest request, core.String parent,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url =
        'v2/' + commons.Escaper.ecapeVariableReserved('$parent') + '/profiles';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Profile.fromJson(data));
  }

  /// CreateOfflineProfile creates a new profile resource in the offline mode.
  /// The client provides the profile to create along with the profile bytes,
  /// the
  /// server records it.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Parent project to create the profile in.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<Profile> createOffline(Profile request, core.String parent,
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
    if (parent == null) {
      throw new core.ArgumentError("Parameter parent is required.");
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/profiles:createOffline';

    var _response = _requester.request(_url, "POST",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Profile.fromJson(data));
  }

  /// UpdateProfile updates the profile bytes and labels on the profile resource
  /// created in the online mode. Updating the bytes for profiles created in the
  /// offline mode is currently not supported: the profile content must be
  /// provided at the time of the profile creation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Opaque, server-assigned, unique ID for this profile.
  /// Value must have pattern "^projects/[^/]+/profiles/[^/]+$".
  ///
  /// [updateMask] - Field mask used to specify the fields to be overwritten.
  /// Currently only
  /// profile_bytes and labels fields are supported by UpdateProfile, so only
  /// those fields can be specified in the mask. When no mask is provided, all
  /// fields are overwritten.
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
  async.Future<Profile> patch(Profile request, core.String name,
      {core.String updateMask, core.String $fields}) {
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
    if (updateMask != null) {
      _queryParams["updateMask"] = [updateMask];
    }
    if ($fields != null) {
      _queryParams["fields"] = [$fields];
    }

    _url = 'v2/' + commons.Escaper.ecapeVariableReserved('$name');

    var _response = _requester.request(_url, "PATCH",
        body: _body,
        queryParams: _queryParams,
        uploadOptions: _uploadOptions,
        uploadMedia: _uploadMedia,
        downloadOptions: _downloadOptions);
    return _response.then((data) => new Profile.fromJson(data));
  }
}

/// CreateProfileRequest describes a profile resource online creation request.
/// The deployment field must be populated. The profile_type specifies the list
/// of profile types supported by the agent. The creation call will hang until a
/// profile of one of these types needs to be collected.
class CreateProfileRequest {
  /// Deployment details.
  Deployment deployment;

  /// One or more profile types that the agent is capable of providing.
  core.List<core.String> profileType;

  CreateProfileRequest();

  CreateProfileRequest.fromJson(core.Map _json) {
    if (_json.containsKey("deployment")) {
      deployment = new Deployment.fromJson(_json["deployment"]);
    }
    if (_json.containsKey("profileType")) {
      profileType = (_json["profileType"] as core.List).cast<core.String>();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deployment != null) {
      _json["deployment"] = (deployment).toJson();
    }
    if (profileType != null) {
      _json["profileType"] = profileType;
    }
    return _json;
  }
}

/// Deployment contains the deployment identification information.
class Deployment {
  /// Labels identify the deployment within the user universe and same target.
  /// Validation regex for label names: `^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$`.
  /// Value for an individual label must be <= 512 bytes, the total
  /// size of all label names and values must be <= 1024 bytes.
  ///
  /// Label named "language" can be used to record the programming language of
  /// the profiled deployment. The standard choices for the value include
  /// "java",
  /// "go", "python", "ruby", "nodejs", "php", "dotnet".
  ///
  /// For deployments running on Google Cloud Platform, "zone" or "region" label
  /// should be present describing the deployment location. An example of a zone
  /// is "us-central1-a", an example of a region is "us-central1" or
  /// "us-central".
  core.Map<core.String, core.String> labels;

  /// Project ID is the ID of a cloud project.
  /// Validation regex: `^a-z{4,61}[a-z0-9]$`.
  core.String projectId;

  /// Target is the service name used to group related deployments:
  /// * Service name for GAE Flex / Standard.
  /// * Cluster and container name for GKE.
  /// * User-specified string for direct GCE profiling (e.g. Java).
  /// * Job name for Dataflow.
  /// Validation regex: `^[a-z]([-a-z0-9_.]{0,253}[a-z0-9])?$`.
  core.String target;

  Deployment();

  Deployment.fromJson(core.Map _json) {
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("projectId")) {
      projectId = _json["projectId"];
    }
    if (_json.containsKey("target")) {
      target = _json["target"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (projectId != null) {
      _json["projectId"] = projectId;
    }
    if (target != null) {
      _json["target"] = target;
    }
    return _json;
  }
}

/// Profile resource.
class Profile {
  /// Deployment this profile corresponds to.
  Deployment deployment;

  /// Duration of the profiling session.
  /// Input (for the offline mode) or output (for the online mode).
  /// The field represents requested profiling duration. It may slightly differ
  /// from the effective profiling duration, which is recorded in the profile
  /// data, in case the profiling can't be stopped immediately (e.g. in case
  /// stopping the profiling is handled asynchronously).
  core.String duration;

  /// Input only. Labels associated to this specific profile. These labels will
  /// get merged with the deployment labels for the final data set.  See
  /// documentation on deployment labels for validation rules and limits.
  core.Map<core.String, core.String> labels;

  /// Output only. Opaque, server-assigned, unique ID for this profile.
  core.String name;

  /// Input only. Profile bytes, as a gzip compressed serialized proto, the
  /// format is https://github.com/google/pprof/blob/master/proto/profile.proto.
  core.String profileBytes;
  core.List<core.int> get profileBytesAsBytes {
    return convert.base64.decode(profileBytes);
  }

  set profileBytesAsBytes(core.List<core.int> _bytes) {
    profileBytes =
        convert.base64.encode(_bytes).replaceAll("/", "_").replaceAll("+", "-");
  }

  /// Type of profile.
  /// For offline mode, this must be specified when creating the profile. For
  /// online mode it is assigned and returned by the server.
  /// Possible string values are:
  /// - "PROFILE_TYPE_UNSPECIFIED" : Unspecified profile type.
  /// - "CPU" : Thread CPU time sampling.
  /// - "WALL" : Wallclock time sampling. More expensive as stops all threads.
  /// - "HEAP" : In-use heap profile. Represents a snapshot of the allocations
  /// that are
  /// live at the time of the profiling.
  /// - "THREADS" : Single-shot collection of all thread stacks.
  /// - "CONTENTION" : Synchronization contention profile.
  /// - "PEAK_HEAP" : Peak heap profile.
  /// - "HEAP_ALLOC" : Heap allocation profile. It represents the aggregation of
  /// all allocations
  /// made over the duration of the profile. All allocations are included,
  /// including those that might have been freed by the end of the profiling
  /// interval. The profile is in particular useful for garbage collecting
  /// languages to understand which parts of the code create most of the garbage
  /// collection pressure to see if those can be optimized.
  core.String profileType;

  Profile();

  Profile.fromJson(core.Map _json) {
    if (_json.containsKey("deployment")) {
      deployment = new Deployment.fromJson(_json["deployment"]);
    }
    if (_json.containsKey("duration")) {
      duration = _json["duration"];
    }
    if (_json.containsKey("labels")) {
      labels = (_json["labels"] as core.Map).cast<core.String, core.String>();
    }
    if (_json.containsKey("name")) {
      name = _json["name"];
    }
    if (_json.containsKey("profileBytes")) {
      profileBytes = _json["profileBytes"];
    }
    if (_json.containsKey("profileType")) {
      profileType = _json["profileType"];
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final core.Map<core.String, core.Object> _json =
        new core.Map<core.String, core.Object>();
    if (deployment != null) {
      _json["deployment"] = (deployment).toJson();
    }
    if (duration != null) {
      _json["duration"] = duration;
    }
    if (labels != null) {
      _json["labels"] = labels;
    }
    if (name != null) {
      _json["name"] = name;
    }
    if (profileBytes != null) {
      _json["profileBytes"] = profileBytes;
    }
    if (profileType != null) {
      _json["profileType"] = profileType;
    }
    return _json;
  }
}
