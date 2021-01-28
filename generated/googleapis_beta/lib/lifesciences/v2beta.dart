// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis_beta.lifesciences.v2beta;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Cloud Life Sciences is a suite of services and tools for managing,
/// processing, and transforming life sciences data.
class LifesciencesApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  LifesciencesApi(http.Client client,
      {core.String rootUrl = 'https://lifesciences.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi get operations =>
      ProjectsLocationsOperationsResourceApi(_requester);
  ProjectsLocationsPipelinesResourceApi get pipelines =>
      ProjectsLocationsPipelinesResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Location].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Location> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Location.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern "^projects/[^/]+$".
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
  /// Completes with a [ListLocationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListLocationsResponse> list(
    core.String name, {
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/locations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListLocationsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation. The server
  /// makes a best effort to cancel the operation, but success is not
  /// guaranteed. Clients may use Operations.GetOperation or
  /// Operations.ListOperations to check whether the cancellation succeeded or
  /// the operation completed despite cancellation. Authorization requires the
  /// following [Google IAM](https://cloud.google.com/iam) permission: *
  /// `lifesciences.operations.cancel`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url =
        'v2beta/' + commons.Escaper.ecapeVariableReserved('$name') + ':cancel';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Empty.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service. Authorization requires the following [Google
  /// IAM](https://cloud.google.com/iam) permission: *
  /// `lifesciences.operations.get`
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
  async.Future<Operation> get(
    core.String name, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Lists operations that match the specified filter in the request.
  /// Authorization requires the following [Google
  /// IAM](https://cloud.google.com/iam) permission: *
  /// `lifesciences.operations.list`
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [filter] - A string for filtering Operations. The following filter fields
  /// are supported: * createTime: The time this job was created * events: The
  /// set of event (names) that have occurred while running the pipeline. The :
  /// operator can be used to determine if a particular event has occurred. *
  /// error: If the pipeline is running, this value is NULL. Once the pipeline
  /// finishes, the value is the standard Google error code. * labels.key or
  /// labels."key with space" where key is a label key. * done: If the pipeline
  /// is running, this value is false. Once the pipeline finishes, the value is
  /// true.
  ///
  /// [pageSize] - The maximum number of results to return. The maximum value is
  /// 256.
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
    core.String filter,
    core.int pageSize,
    core.String pageToken,
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if (filter != null) {
      _queryParams['filter'] = [filter];
    }
    if (pageSize != null) {
      _queryParams['pageSize'] = ['${pageSize}'];
    }
    if (pageToken != null) {
      _queryParams['pageToken'] = [pageToken];
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta/' +
        commons.Escaper.ecapeVariableReserved('$name') +
        '/operations';

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => ListOperationsResponse.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsLocationsPipelinesResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsPipelinesResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Runs a pipeline. The returned Operation's metadata field will contain a
  /// google.cloud.lifesciences.v2beta.Metadata object describing the status of
  /// the pipeline execution. The response field will contain a
  /// google.cloud.lifesciences.v2beta.RunPipelineResponse object if the
  /// pipeline completes successfully. **Note:** Before you can use this method,
  /// the *Life Sciences Service Agent* must have access to your project. This
  /// is done automatically when the Cloud Life Sciences API is first enabled,
  /// but if you delete this permission you must disable and re-enable the API
  /// to grant the Life Sciences Service Agent the required permissions.
  /// Authorization requires the following [Google
  /// IAM](https://cloud.google.com/iam/) permission: *
  /// `lifesciences.workflows.run`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and location that this request should be executed
  /// against.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
  async.Future<Operation> run(
    RunPipelineRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v2beta/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/pipelines:run';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => Operation.fromJson(data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// Carries information about an accelerator that can be attached to a VM.
class Accelerator {
  /// How many accelerators of this type to attach.
  core.String count;

  /// The accelerator type string (for example, "nvidia-tesla-k80"). Only NVIDIA
  /// GPU accelerators are currently supported. If an NVIDIA GPU is attached,
  /// the required runtime libraries will be made available to all containers
  /// under `/usr/local/nvidia`. The driver version to install must be specified
  /// using the NVIDIA driver version parameter on the virtual machine
  /// specification. Note that attaching a GPU increases the worker VM startup
  /// time by a few minutes.
  core.String type;

  Accelerator();

  Accelerator.fromJson(core.Map _json) {
    if (_json.containsKey('count')) {
      count = _json['count'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (count != null) {
      _json['count'] = count;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Specifies a single action that runs a Docker container.
class Action {
  /// By default, after an action fails, no further actions are run. This flag
  /// indicates that this action must be run even if the pipeline has already
  /// failed. This is useful for actions that copy output files off of the VM or
  /// for debugging. Note that no actions will be run if image prefetching
  /// fails.
  core.bool alwaysRun;

  /// If specified, overrides the `CMD` specified in the container. If the
  /// container also has an `ENTRYPOINT` the values are used as entrypoint
  /// arguments. Otherwise, they are used as a command and arguments to run
  /// inside the container.
  core.List<core.String> commands;

  /// An optional name for the container. The container hostname will be set to
  /// this name, making it useful for inter-container communication. The name
  /// must contain only upper and lowercase alphanumeric characters and hyphens
  /// and cannot start with a hyphen.
  core.String containerName;

  /// If the specified image is hosted on a private registry other than Google
  /// Container Registry, the credentials required to pull the image must be
  /// specified here as an encrypted secret. The secret must decrypt to a
  /// JSON-encoded dictionary containing both `username` and `password` keys.
  Secret credentials;

  /// All container images are typically downloaded before any actions are
  /// executed. This helps prevent typos in URIs or issues like lack of disk
  /// space from wasting large amounts of compute resources. If set, this flag
  /// prevents the worker from downloading the image until just before the
  /// action is executed.
  core.bool disableImagePrefetch;

  /// A small portion of the container's standard error stream is typically
  /// captured and returned inside the `ContainerStoppedEvent`. Setting this
  /// flag disables this functionality.
  core.bool disableStandardErrorCapture;

  /// Enable access to the FUSE device for this action. Filesystems can then be
  /// mounted into disks shared with other actions. The other actions do not
  /// need the `enable_fuse` flag to access the mounted filesystem. This has the
  /// effect of causing the container to be executed with `CAP_SYS_ADMIN` and
  /// exposes `/dev/fuse` to the container, so use it only for containers you
  /// trust.
  core.bool enableFuse;

  /// If specified, overrides the `ENTRYPOINT` specified in the container.
  core.String entrypoint;

  /// The environment to pass into the container. This environment is merged
  /// with values specified in the google.cloud.lifesciences.v2beta.Pipeline
  /// message, overwriting any duplicate values. In addition to the values
  /// passed here, a few other values are automatically injected into the
  /// environment. These cannot be hidden or overwritten.
  /// `GOOGLE_PIPELINE_FAILED` will be set to "1" if the pipeline failed because
  /// an action has exited with a non-zero status (and did not have the
  /// `IGNORE_EXIT_STATUS` flag set). This can be used to determine if
  /// additional debug or logging actions should execute.
  /// `GOOGLE_LAST_EXIT_STATUS` will be set to the exit status of the last
  /// non-background action that executed. This can be used by workflow engine
  /// authors to determine whether an individual action has succeeded or failed.
  core.Map<core.String, core.String> environment;

  /// Normally, a non-zero exit status causes the pipeline to fail. This flag
  /// allows execution of other actions to continue instead.
  core.bool ignoreExitStatus;

  /// Required. The URI to pull the container image from. Note that all images
  /// referenced by actions in the pipeline are pulled before the first action
  /// runs. If multiple actions reference the same image, it is only pulled
  /// once, ensuring that the same image is used for all actions in a single
  /// pipeline. The image URI can be either a complete host and image
  /// specification (e.g., quay.io/biocontainers/samtools), a library and image
  /// name (e.g., google/cloud-sdk) or a bare image name ('bash') to pull from
  /// the default library. No schema is required in any of these cases. If the
  /// specified image is not public, the service account specified for the
  /// Virtual Machine must have access to pull the images from GCR, or
  /// appropriate credentials must be specified in the
  /// google.cloud.lifesciences.v2beta.Action.credentials field.
  core.String imageUri;

  /// Labels to associate with the action. This field is provided to assist
  /// workflow engine authors in identifying actions (for example, to indicate
  /// what sort of action they perform, such as localization or debugging). They
  /// are returned in the operation metadata, but are otherwise ignored.
  core.Map<core.String, core.String> labels;

  /// A list of mounts to make available to the action. In addition to the
  /// values specified here, every action has a special virtual disk mounted
  /// under `/google` that contains log files and other operational components.
  /// - /google/logs All logs written during the pipeline execution. -
  /// /google/logs/output The combined standard output and standard error of all
  /// actions run as part of the pipeline execution. - /google/logs/action / *
  /// /stdout The complete contents of each individual action's standard output.
  /// - /google/logs/action / * /stderr The complete contents of each individual
  /// action's standard error output.
  core.List<Mount> mounts;

  /// An optional identifier for a PID namespace to run the action inside.
  /// Multiple actions should use the same string to share a namespace. If
  /// unspecified, a separate isolated namespace is used.
  core.String pidNamespace;

  /// A map of containers to host port mappings for this container. If the
  /// container already specifies exposed ports, use the `PUBLISH_EXPOSED_PORTS`
  /// flag instead. The host port number must be less than 65536. If it is zero,
  /// an unused random port is assigned. To determine the resulting port number,
  /// consult the `ContainerStartedEvent` in the operation metadata.
  core.Map<core.String, core.int> portMappings;

  /// Exposes all ports specified by `EXPOSE` statements in the container. To
  /// discover the host side port numbers, consult the `ACTION_STARTED` event in
  /// the operation metadata.
  core.bool publishExposedPorts;

  /// This flag allows an action to continue running in the background while
  /// executing subsequent actions. This is useful to provide services to other
  /// actions (or to provide debugging support tools like SSH servers).
  core.bool runInBackground;

  /// The maximum amount of time to give the action to complete. If the action
  /// fails to complete before the timeout, it will be terminated and the exit
  /// status will be non-zero. The pipeline will continue or terminate based on
  /// the rules defined by the `ALWAYS_RUN` and `IGNORE_EXIT_STATUS` flags.
  core.String timeout;

  Action();

  Action.fromJson(core.Map _json) {
    if (_json.containsKey('alwaysRun')) {
      alwaysRun = _json['alwaysRun'] as core.bool;
    }
    if (_json.containsKey('commands')) {
      commands = (_json['commands'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('containerName')) {
      containerName = _json['containerName'] as core.String;
    }
    if (_json.containsKey('credentials')) {
      credentials = Secret.fromJson(
          _json['credentials'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('disableImagePrefetch')) {
      disableImagePrefetch = _json['disableImagePrefetch'] as core.bool;
    }
    if (_json.containsKey('disableStandardErrorCapture')) {
      disableStandardErrorCapture =
          _json['disableStandardErrorCapture'] as core.bool;
    }
    if (_json.containsKey('enableFuse')) {
      enableFuse = _json['enableFuse'] as core.bool;
    }
    if (_json.containsKey('entrypoint')) {
      entrypoint = _json['entrypoint'] as core.String;
    }
    if (_json.containsKey('environment')) {
      environment = (_json['environment'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('ignoreExitStatus')) {
      ignoreExitStatus = _json['ignoreExitStatus'] as core.bool;
    }
    if (_json.containsKey('imageUri')) {
      imageUri = _json['imageUri'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('mounts')) {
      mounts = (_json['mounts'] as core.List)
          .map<Mount>((value) =>
              Mount.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('pidNamespace')) {
      pidNamespace = _json['pidNamespace'] as core.String;
    }
    if (_json.containsKey('portMappings')) {
      portMappings =
          (_json['portMappings'] as core.Map).cast<core.String, core.int>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.int,
                ),
              );
    }
    if (_json.containsKey('publishExposedPorts')) {
      publishExposedPorts = _json['publishExposedPorts'] as core.bool;
    }
    if (_json.containsKey('runInBackground')) {
      runInBackground = _json['runInBackground'] as core.bool;
    }
    if (_json.containsKey('timeout')) {
      timeout = _json['timeout'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (alwaysRun != null) {
      _json['alwaysRun'] = alwaysRun;
    }
    if (commands != null) {
      _json['commands'] = commands;
    }
    if (containerName != null) {
      _json['containerName'] = containerName;
    }
    if (credentials != null) {
      _json['credentials'] = credentials.toJson();
    }
    if (disableImagePrefetch != null) {
      _json['disableImagePrefetch'] = disableImagePrefetch;
    }
    if (disableStandardErrorCapture != null) {
      _json['disableStandardErrorCapture'] = disableStandardErrorCapture;
    }
    if (enableFuse != null) {
      _json['enableFuse'] = enableFuse;
    }
    if (entrypoint != null) {
      _json['entrypoint'] = entrypoint;
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (ignoreExitStatus != null) {
      _json['ignoreExitStatus'] = ignoreExitStatus;
    }
    if (imageUri != null) {
      _json['imageUri'] = imageUri;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (mounts != null) {
      _json['mounts'] = mounts.map((value) => value.toJson()).toList();
    }
    if (pidNamespace != null) {
      _json['pidNamespace'] = pidNamespace;
    }
    if (portMappings != null) {
      _json['portMappings'] = portMappings;
    }
    if (publishExposedPorts != null) {
      _json['publishExposedPorts'] = publishExposedPorts;
    }
    if (runInBackground != null) {
      _json['runInBackground'] = runInBackground;
    }
    if (timeout != null) {
      _json['timeout'] = timeout;
    }
    return _json;
  }
}

/// The request message for Operations.CancelOperation.
class CancelOperationRequest {
  CancelOperationRequest();

  CancelOperationRequest.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// An event generated when a container is forcibly terminated by the worker.
/// Currently, this only occurs when the container outlives the timeout
/// specified by the user.
class ContainerKilledEvent {
  /// The numeric ID of the action that started the container.
  core.int actionId;

  ContainerKilledEvent();

  ContainerKilledEvent.fromJson(core.Map _json) {
    if (_json.containsKey('actionId')) {
      actionId = _json['actionId'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (actionId != null) {
      _json['actionId'] = actionId;
    }
    return _json;
  }
}

/// An event generated when a container starts.
class ContainerStartedEvent {
  /// The numeric ID of the action that started this container.
  core.int actionId;

  /// The public IP address that can be used to connect to the container. This
  /// field is only populated when at least one port mapping is present. If the
  /// instance was created with a private address, this field will be empty even
  /// if port mappings exist.
  core.String ipAddress;

  /// The container-to-host port mappings installed for this container. This set
  /// will contain any ports exposed using the `PUBLISH_EXPOSED_PORTS` flag as
  /// well as any specified in the `Action` definition.
  core.Map<core.String, core.int> portMappings;

  ContainerStartedEvent();

  ContainerStartedEvent.fromJson(core.Map _json) {
    if (_json.containsKey('actionId')) {
      actionId = _json['actionId'] as core.int;
    }
    if (_json.containsKey('ipAddress')) {
      ipAddress = _json['ipAddress'] as core.String;
    }
    if (_json.containsKey('portMappings')) {
      portMappings =
          (_json['portMappings'] as core.Map).cast<core.String, core.int>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.int,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (actionId != null) {
      _json['actionId'] = actionId;
    }
    if (ipAddress != null) {
      _json['ipAddress'] = ipAddress;
    }
    if (portMappings != null) {
      _json['portMappings'] = portMappings;
    }
    return _json;
  }
}

/// An event generated when a container exits.
class ContainerStoppedEvent {
  /// The numeric ID of the action that started this container.
  core.int actionId;

  /// The exit status of the container.
  core.int exitStatus;

  /// The tail end of any content written to standard error by the container. If
  /// the content emits large amounts of debugging noise or contains sensitive
  /// information, you can prevent the content from being printed by setting the
  /// `DISABLE_STANDARD_ERROR_CAPTURE` flag. Note that only a small amount of
  /// the end of the stream is captured here. The entire stream is stored in the
  /// `/google/logs` directory mounted into each action, and can be copied off
  /// the machine as described elsewhere.
  core.String stderr;

  ContainerStoppedEvent();

  ContainerStoppedEvent.fromJson(core.Map _json) {
    if (_json.containsKey('actionId')) {
      actionId = _json['actionId'] as core.int;
    }
    if (_json.containsKey('exitStatus')) {
      exitStatus = _json['exitStatus'] as core.int;
    }
    if (_json.containsKey('stderr')) {
      stderr = _json['stderr'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (actionId != null) {
      _json['actionId'] = actionId;
    }
    if (exitStatus != null) {
      _json['exitStatus'] = exitStatus;
    }
    if (stderr != null) {
      _json['stderr'] = stderr;
    }
    return _json;
  }
}

/// An event generated whenever a resource limitation or transient error delays
/// execution of a pipeline that was otherwise ready to run.
class DelayedEvent {
  /// A textual description of the cause of the delay. The string can change
  /// without notice because it is often generated by another service (such as
  /// Compute Engine).
  core.String cause;

  /// If the delay was caused by a resource shortage, this field lists the
  /// Compute Engine metrics that are preventing this operation from running
  /// (for example, `CPUS` or `INSTANCES`). If the particular metric is not
  /// known, a single `UNKNOWN` metric will be present.
  core.List<core.String> metrics;

  DelayedEvent();

  DelayedEvent.fromJson(core.Map _json) {
    if (_json.containsKey('cause')) {
      cause = _json['cause'] as core.String;
    }
    if (_json.containsKey('metrics')) {
      metrics = (_json['metrics'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cause != null) {
      _json['cause'] = cause;
    }
    if (metrics != null) {
      _json['metrics'] = metrics;
    }
    return _json;
  }
}

/// Carries information about a disk that can be attached to a VM. See
/// https://cloud.google.com/compute/docs/disks/performance for more information
/// about disk type, size, and performance considerations.
class Disk {
  /// A user-supplied name for the disk. Used when mounting the disk into
  /// actions. The name must contain only upper and lowercase alphanumeric
  /// characters and hyphens and cannot start with a hyphen.
  core.String name;

  /// The size, in GB, of the disk to attach. If the size is not specified, a
  /// default is chosen to ensure reasonable I/O performance. If the disk type
  /// is specified as `local-ssd`, multiple local drives are automatically
  /// combined to provide the requested size. Note, however, that each physical
  /// SSD is 375GB in size, and no more than 8 drives can be attached to a
  /// single instance.
  core.int sizeGb;

  /// An optional image to put on the disk before attaching it to the VM.
  core.String sourceImage;

  /// The Compute Engine disk type. If unspecified, `pd-standard` is used.
  core.String type;

  Disk();

  Disk.fromJson(core.Map _json) {
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('sizeGb')) {
      sizeGb = _json['sizeGb'] as core.int;
    }
    if (_json.containsKey('sourceImage')) {
      sourceImage = _json['sourceImage'] as core.String;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (name != null) {
      _json['name'] = name;
    }
    if (sizeGb != null) {
      _json['sizeGb'] = sizeGb;
    }
    if (sourceImage != null) {
      _json['sourceImage'] = sourceImage;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class Empty {
  Empty();

  Empty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Carries information about events that occur during pipeline execution.
class Event {
  /// See google.cloud.lifesciences.v2beta.ContainerKilledEvent.
  ContainerKilledEvent containerKilled;

  /// See google.cloud.lifesciences.v2beta.ContainerStartedEvent.
  ContainerStartedEvent containerStarted;

  /// See google.cloud.lifesciences.v2beta.ContainerStoppedEvent.
  ContainerStoppedEvent containerStopped;

  /// See google.cloud.lifesciences.v2beta.DelayedEvent.
  DelayedEvent delayed;

  /// A human-readable description of the event. Note that these strings can
  /// change at any time without notice. Any application logic must use the
  /// information in the `details` field.
  core.String description;

  /// See google.cloud.lifesciences.v2beta.FailedEvent.
  FailedEvent failed;

  /// See google.cloud.lifesciences.v2beta.PullStartedEvent.
  PullStartedEvent pullStarted;

  /// See google.cloud.lifesciences.v2beta.PullStoppedEvent.
  PullStoppedEvent pullStopped;

  /// The time at which the event occurred.
  core.String timestamp;

  /// See google.cloud.lifesciences.v2beta.UnexpectedExitStatusEvent.
  UnexpectedExitStatusEvent unexpectedExitStatus;

  /// See google.cloud.lifesciences.v2beta.WorkerAssignedEvent.
  WorkerAssignedEvent workerAssigned;

  /// See google.cloud.lifesciences.v2beta.WorkerReleasedEvent.
  WorkerReleasedEvent workerReleased;

  Event();

  Event.fromJson(core.Map _json) {
    if (_json.containsKey('containerKilled')) {
      containerKilled = ContainerKilledEvent.fromJson(
          _json['containerKilled'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('containerStarted')) {
      containerStarted = ContainerStartedEvent.fromJson(
          _json['containerStarted'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('containerStopped')) {
      containerStopped = ContainerStoppedEvent.fromJson(
          _json['containerStopped'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('delayed')) {
      delayed = DelayedEvent.fromJson(
          _json['delayed'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('description')) {
      description = _json['description'] as core.String;
    }
    if (_json.containsKey('failed')) {
      failed = FailedEvent.fromJson(
          _json['failed'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pullStarted')) {
      pullStarted = PullStartedEvent.fromJson(
          _json['pullStarted'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pullStopped')) {
      pullStopped = PullStoppedEvent.fromJson(
          _json['pullStopped'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('timestamp')) {
      timestamp = _json['timestamp'] as core.String;
    }
    if (_json.containsKey('unexpectedExitStatus')) {
      unexpectedExitStatus = UnexpectedExitStatusEvent.fromJson(
          _json['unexpectedExitStatus'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerAssigned')) {
      workerAssigned = WorkerAssignedEvent.fromJson(
          _json['workerAssigned'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('workerReleased')) {
      workerReleased = WorkerReleasedEvent.fromJson(
          _json['workerReleased'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (containerKilled != null) {
      _json['containerKilled'] = containerKilled.toJson();
    }
    if (containerStarted != null) {
      _json['containerStarted'] = containerStarted.toJson();
    }
    if (containerStopped != null) {
      _json['containerStopped'] = containerStopped.toJson();
    }
    if (delayed != null) {
      _json['delayed'] = delayed.toJson();
    }
    if (description != null) {
      _json['description'] = description;
    }
    if (failed != null) {
      _json['failed'] = failed.toJson();
    }
    if (pullStarted != null) {
      _json['pullStarted'] = pullStarted.toJson();
    }
    if (pullStopped != null) {
      _json['pullStopped'] = pullStopped.toJson();
    }
    if (timestamp != null) {
      _json['timestamp'] = timestamp;
    }
    if (unexpectedExitStatus != null) {
      _json['unexpectedExitStatus'] = unexpectedExitStatus.toJson();
    }
    if (workerAssigned != null) {
      _json['workerAssigned'] = workerAssigned.toJson();
    }
    if (workerReleased != null) {
      _json['workerReleased'] = workerReleased.toJson();
    }
    return _json;
  }
}

/// An event generated when the execution of a pipeline has failed. Note that
/// other events can continue to occur after this event.
class FailedEvent {
  /// The human-readable description of the cause of the failure.
  core.String cause;

  /// The Google standard error code that best describes this failure.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level (e.g., when a
  /// client-specified test-and-set fails, indicating the client should restart
  /// a read-modify-write sequence). (c) Use `FAILED_PRECONDITION` if the client
  /// should not retry until the system state has been explicitly fixed. E.g.,
  /// if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range [0,2^32-1], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String code;

  FailedEvent();

  FailedEvent.fromJson(core.Map _json) {
    if (_json.containsKey('cause')) {
      cause = _json['cause'] as core.String;
    }
    if (_json.containsKey('code')) {
      code = _json['code'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cause != null) {
      _json['cause'] = cause;
    }
    if (code != null) {
      _json['code'] = code;
    }
    return _json;
  }
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location> locations;

  /// The standard List next-page token.
  core.String nextPageToken;

  ListLocationsResponse();

  ListLocationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('locations')) {
      locations = (_json['locations'] as core.List)
          .map<Location>((value) =>
              Location.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (locations != null) {
      _json['locations'] = locations.map((value) => value.toJson()).toList();
    }
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    return _json;
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation> operations;

  ListOperationsResponse();

  ListOperationsResponse.fromJson(core.Map _json) {
    if (_json.containsKey('nextPageToken')) {
      nextPageToken = _json['nextPageToken'] as core.String;
    }
    if (_json.containsKey('operations')) {
      operations = (_json['operations'] as core.List)
          .map<Operation>((value) =>
              Operation.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (nextPageToken != null) {
      _json['nextPageToken'] = nextPageToken;
    }
    if (operations != null) {
      _json['operations'] = operations.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A resource that represents Google Cloud Platform location.
class Location {
  /// The friendly name for this location, typically a nearby city name. For
  /// example, "Tokyo".
  core.String displayName;

  /// Cross-service attributes for the location. For example
  /// {"cloud.googleapis.com/region": "us-east1"}
  core.Map<core.String, core.String> labels;

  /// The canonical id for this location. For example: `"us-east1"`.
  core.String locationId;

  /// Service-specific metadata. For example the available capacity at the given
  /// location.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// Resource name for the location, which may vary between implementations.
  /// For example: `"projects/example-project/locations/us-east1"`
  core.String name;

  Location();

  Location.fromJson(core.Map _json) {
    if (_json.containsKey('displayName')) {
      displayName = _json['displayName'] as core.String;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('locationId')) {
      locationId = _json['locationId'] as core.String;
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (displayName != null) {
      _json['displayName'] = displayName;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (locationId != null) {
      _json['locationId'] = locationId;
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// Carries information about the pipeline execution that is returned in the
/// long running operation's metadata field.
class Metadata {
  /// The time at which the operation was created by the API.
  core.String createTime;

  /// The time at which execution was completed and resources were cleaned up.
  core.String endTime;

  /// The list of events that have happened so far during the execution of this
  /// operation.
  core.List<Event> events;

  /// The user-defined labels associated with this operation.
  core.Map<core.String, core.String> labels;

  /// The pipeline this operation represents.
  Pipeline pipeline;

  /// The first time at which resources were allocated to execute the pipeline.
  core.String startTime;

  Metadata();

  Metadata.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('endTime')) {
      endTime = _json['endTime'] as core.String;
    }
    if (_json.containsKey('events')) {
      events = (_json['events'] as core.List)
          .map<Event>((value) =>
              Event.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('pipeline')) {
      pipeline = Pipeline.fromJson(
          _json['pipeline'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('startTime')) {
      startTime = _json['startTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (endTime != null) {
      _json['endTime'] = endTime;
    }
    if (events != null) {
      _json['events'] = events.map((value) => value.toJson()).toList();
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (pipeline != null) {
      _json['pipeline'] = pipeline.toJson();
    }
    if (startTime != null) {
      _json['startTime'] = startTime;
    }
    return _json;
  }
}

/// Carries information about a particular disk mount inside a container.
class Mount {
  /// The name of the disk to mount, as specified in the resources section.
  core.String disk;

  /// The path to mount the disk inside the container.
  core.String path;

  /// If true, the disk is mounted read-only inside the container.
  core.bool readOnly;

  Mount();

  Mount.fromJson(core.Map _json) {
    if (_json.containsKey('disk')) {
      disk = _json['disk'] as core.String;
    }
    if (_json.containsKey('path')) {
      path = _json['path'] as core.String;
    }
    if (_json.containsKey('readOnly')) {
      readOnly = _json['readOnly'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (disk != null) {
      _json['disk'] = disk;
    }
    if (path != null) {
      _json['path'] = path;
    }
    if (readOnly != null) {
      _json['readOnly'] = readOnly;
    }
    return _json;
  }
}

/// VM networking options.
class Network {
  /// The network name to attach the VM's network interface to. The value will
  /// be prefixed with `global/networks/` unless it contains a `/`, in which
  /// case it is assumed to be a fully specified network resource URL. If
  /// unspecified, the global default network is used.
  core.String network;

  /// If the specified network is configured for custom subnet creation, the
  /// name of the subnetwork to attach the instance to must be specified here.
  /// The value is prefixed with `regions / * /subnetworks/` unless it contains
  /// a `/`, in which case it is assumed to be a fully specified subnetwork
  /// resource URL. If the `*` character appears in the value, it is replaced
  /// with the region that the virtual machine has been allocated in.
  core.String subnetwork;

  /// If set to true, do not attach a public IP address to the VM. Note that
  /// without a public IP address, additional configuration is required to allow
  /// the VM to access Google services. See
  /// https://cloud.google.com/vpc/docs/configure-private-google-access for more
  /// information.
  core.bool usePrivateAddress;

  Network();

  Network.fromJson(core.Map _json) {
    if (_json.containsKey('network')) {
      network = _json['network'] as core.String;
    }
    if (_json.containsKey('subnetwork')) {
      subnetwork = _json['subnetwork'] as core.String;
    }
    if (_json.containsKey('usePrivateAddress')) {
      usePrivateAddress = _json['usePrivateAddress'] as core.bool;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (network != null) {
      _json['network'] = network;
    }
    if (subnetwork != null) {
      _json['subnetwork'] = subnetwork;
    }
    if (usePrivateAddress != null) {
      _json['usePrivateAddress'] = usePrivateAddress;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class Operation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  Status error;

  /// An Metadata object. This will always be returned with the Operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name for the operation. This may be passed to the
  /// other operation methods to retrieve information about the operation's
  /// status.
  core.String name;

  /// An Empty object.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  Operation();

  Operation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = Status.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// Specifies a series of actions to execute, expressed as Docker containers.
class Pipeline {
  /// The list of actions to execute, in the order they are specified.
  core.List<Action> actions;

  /// The environment to pass into every action. Each action can also specify
  /// additional environment variables but cannot delete an entry from this map
  /// (though they can overwrite it with a different value).
  core.Map<core.String, core.String> environment;

  /// The resources required for execution.
  Resources resources;

  /// The maximum amount of time to give the pipeline to complete. This includes
  /// the time spent waiting for a worker to be allocated. If the pipeline fails
  /// to complete before the timeout, it will be cancelled and the error code
  /// will be set to DEADLINE_EXCEEDED. If unspecified, it will default to 7
  /// days.
  core.String timeout;

  Pipeline();

  Pipeline.fromJson(core.Map _json) {
    if (_json.containsKey('actions')) {
      actions = (_json['actions'] as core.List)
          .map<Action>((value) =>
              Action.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('environment')) {
      environment = (_json['environment'] as core.Map)
          .cast<core.String, core.String>()
          .map(
            (key, item) => core.MapEntry(
              key,
              item as core.String,
            ),
          );
    }
    if (_json.containsKey('resources')) {
      resources = Resources.fromJson(
          _json['resources'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('timeout')) {
      timeout = _json['timeout'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (actions != null) {
      _json['actions'] = actions.map((value) => value.toJson()).toList();
    }
    if (environment != null) {
      _json['environment'] = environment;
    }
    if (resources != null) {
      _json['resources'] = resources.toJson();
    }
    if (timeout != null) {
      _json['timeout'] = timeout;
    }
    return _json;
  }
}

/// An event generated when the worker starts pulling an image.
class PullStartedEvent {
  /// The URI of the image that was pulled.
  core.String imageUri;

  PullStartedEvent();

  PullStartedEvent.fromJson(core.Map _json) {
    if (_json.containsKey('imageUri')) {
      imageUri = _json['imageUri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (imageUri != null) {
      _json['imageUri'] = imageUri;
    }
    return _json;
  }
}

/// An event generated when the worker stops pulling an image.
class PullStoppedEvent {
  /// The URI of the image that was pulled.
  core.String imageUri;

  PullStoppedEvent();

  PullStoppedEvent.fromJson(core.Map _json) {
    if (_json.containsKey('imageUri')) {
      imageUri = _json['imageUri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (imageUri != null) {
      _json['imageUri'] = imageUri;
    }
    return _json;
  }
}

/// The system resources for the pipeline run. At least one zone or region must
/// be specified or the pipeline run will fail.
class Resources {
  /// The list of regions allowed for VM allocation. If set, the `zones` field
  /// must not be set.
  core.List<core.String> regions;

  /// The virtual machine specification.
  VirtualMachine virtualMachine;

  /// The list of zones allowed for VM allocation. If set, the `regions` field
  /// must not be set.
  core.List<core.String> zones;

  Resources();

  Resources.fromJson(core.Map _json) {
    if (_json.containsKey('regions')) {
      regions = (_json['regions'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('virtualMachine')) {
      virtualMachine = VirtualMachine.fromJson(
          _json['virtualMachine'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('zones')) {
      zones = (_json['zones'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (regions != null) {
      _json['regions'] = regions;
    }
    if (virtualMachine != null) {
      _json['virtualMachine'] = virtualMachine.toJson();
    }
    if (zones != null) {
      _json['zones'] = zones;
    }
    return _json;
  }
}

/// The arguments to the `RunPipeline` method. The requesting user must have the
/// `iam.serviceAccounts.actAs` permission for the Cloud Life Sciences service
/// account or the request will fail.
class RunPipelineRequest {
  /// User-defined labels to associate with the returned operation. These labels
  /// are not propagated to any Google Cloud Platform resources used by the
  /// operation, and can be modified at any time. To associate labels with
  /// resources created while executing the operation, see the appropriate
  /// resource message (for example, `VirtualMachine`).
  core.Map<core.String, core.String> labels;

  /// Required. The description of the pipeline to run.
  Pipeline pipeline;

  RunPipelineRequest();

  RunPipelineRequest.fromJson(core.Map _json) {
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('pipeline')) {
      pipeline = Pipeline.fromJson(
          _json['pipeline'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (pipeline != null) {
      _json['pipeline'] = pipeline.toJson();
    }
    return _json;
  }
}

/// The response to the RunPipeline method, returned in the operation's result
/// field on success.
class RunPipelineResponse {
  RunPipelineResponse();

  RunPipelineResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// Holds encrypted information that is only decrypted and stored in RAM by the
/// worker VM when running the pipeline.
class Secret {
  /// The value of the cipherText response from the `encrypt` method. This field
  /// is intentionally unaudited.
  core.String cipherText;

  /// The name of the Cloud KMS key that will be used to decrypt the secret
  /// value. The VM service account must have the required permissions and
  /// authentication scopes to invoke the `decrypt` method on the specified key.
  core.String keyName;

  Secret();

  Secret.fromJson(core.Map _json) {
    if (_json.containsKey('cipherText')) {
      cipherText = _json['cipherText'] as core.String;
    }
    if (_json.containsKey('keyName')) {
      keyName = _json['keyName'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cipherText != null) {
      _json['cipherText'] = cipherText;
    }
    if (keyName != null) {
      _json['keyName'] = keyName;
    }
    return _json;
  }
}

/// Carries information about a Google Cloud service account.
class ServiceAccount {
  /// Email address of the service account. If not specified, the default
  /// Compute Engine service account for the project will be used.
  core.String email;

  /// List of scopes to be enabled for this service account on the VM, in
  /// addition to the cloud-platform API scope that will be added by default.
  core.List<core.String> scopes;

  ServiceAccount();

  ServiceAccount.fromJson(core.Map _json) {
    if (_json.containsKey('email')) {
      email = _json['email'] as core.String;
    }
    if (_json.containsKey('scopes')) {
      scopes = (_json['scopes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (email != null) {
      _json['email'] = email;
    }
    if (scopes != null) {
      _json['scopes'] = scopes;
    }
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class Status {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  Status();

  Status.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// An event generated when the execution of a container results in a non-zero
/// exit status that was not otherwise ignored. Execution will continue, but
/// only actions that are flagged as `ALWAYS_RUN` will be executed. Other
/// actions will be skipped.
class UnexpectedExitStatusEvent {
  /// The numeric ID of the action that started the container.
  core.int actionId;

  /// The exit status of the container.
  core.int exitStatus;

  UnexpectedExitStatusEvent();

  UnexpectedExitStatusEvent.fromJson(core.Map _json) {
    if (_json.containsKey('actionId')) {
      actionId = _json['actionId'] as core.int;
    }
    if (_json.containsKey('exitStatus')) {
      exitStatus = _json['exitStatus'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (actionId != null) {
      _json['actionId'] = actionId;
    }
    if (exitStatus != null) {
      _json['exitStatus'] = exitStatus;
    }
    return _json;
  }
}

/// Carries information about a Compute Engine VM resource.
class VirtualMachine {
  /// The list of accelerators to attach to the VM.
  core.List<Accelerator> accelerators;

  /// The size of the boot disk, in GB. The boot disk must be large enough to
  /// accommodate all of the Docker images from each action in the pipeline at
  /// the same time. If not specified, a small but reasonable default value is
  /// used.
  core.int bootDiskSizeGb;

  /// The host operating system image to use. Currently, only
  /// Container-Optimized OS images can be used. The default value is
  /// `projects/cos-cloud/global/images/family/cos-stable`, which selects the
  /// latest stable release of Container-Optimized OS. This option is provided
  /// to allow testing against the beta release of the operating system to
  /// ensure that the new version does not interact negatively with production
  /// pipelines. To test a pipeline against the beta release of
  /// Container-Optimized OS, use the value
  /// `projects/cos-cloud/global/images/family/cos-beta`.
  core.String bootImage;

  /// The CPU platform to request. An instance based on a newer platform can be
  /// allocated, but never one with fewer capabilities. The value of this
  /// parameter must be a valid Compute Engine CPU platform name (such as "Intel
  /// Skylake"). This parameter is only useful for carefully optimized work
  /// loads where the CPU platform has a significant impact. For more
  /// information about the effect of this parameter, see
  /// https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
  core.String cpuPlatform;

  /// The list of disks to create and attach to the VM.
  core.List<Disk> disks;

  /// The Compute Engine Disk Images to use as a Docker cache. The disks will be
  /// mounted into the Docker folder in a way that the images present in the
  /// cache will not need to be pulled. The digests of the cached images must
  /// match those of the tags used or the latest version will still be pulled.
  /// The root directory of the ext4 image must contain `image` and `overlay2`
  /// directories copied from the Docker directory of a VM where the desired
  /// Docker images have already been pulled. Only a single image is supported.
  core.List<core.String> dockerCacheImages;

  /// Whether Stackdriver monitoring should be enabled on the VM.
  core.bool enableStackdriverMonitoring;

  /// Optional set of labels to apply to the VM and any attached disk resources.
  /// These labels must adhere to the [name and value
  /// restrictions](https://cloud.google.com/compute/docs/labeling-resources) on
  /// VM labels imposed by Compute Engine. Labels keys with the prefix 'google-'
  /// are reserved for use by Google. Labels applied at creation time to the VM.
  /// Applied on a best-effort basis to attached disk resources shortly after VM
  /// creation.
  core.Map<core.String, core.String> labels;

  /// Required. The machine type of the virtual machine to create. Must be the
  /// short name of a standard machine type (such as "n1-standard-1") or a
  /// custom machine type (such as "custom-1-4096", where "1" indicates the
  /// number of vCPUs and "4096" indicates the memory in MB). See [Creating an
  /// instance with a custom machine
  /// type](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#create)
  /// for more specifications on creating a custom machine type.
  core.String machineType;

  /// The VM network configuration.
  Network network;

  /// The NVIDIA driver version to use when attaching an NVIDIA GPU accelerator.
  /// The version specified here must be compatible with the GPU libraries
  /// contained in the container being executed, and must be one of the drivers
  /// hosted in the `nvidia-drivers-us-public` bucket on Google Cloud Storage.
  core.String nvidiaDriverVersion;

  /// If true, allocate a preemptible VM.
  core.bool preemptible;

  /// The service account to install on the VM. This account does not need any
  /// permissions other than those required by the pipeline.
  ServiceAccount serviceAccount;

  VirtualMachine();

  VirtualMachine.fromJson(core.Map _json) {
    if (_json.containsKey('accelerators')) {
      accelerators = (_json['accelerators'] as core.List)
          .map<Accelerator>((value) => Accelerator.fromJson(
              value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('bootDiskSizeGb')) {
      bootDiskSizeGb = _json['bootDiskSizeGb'] as core.int;
    }
    if (_json.containsKey('bootImage')) {
      bootImage = _json['bootImage'] as core.String;
    }
    if (_json.containsKey('cpuPlatform')) {
      cpuPlatform = _json['cpuPlatform'] as core.String;
    }
    if (_json.containsKey('disks')) {
      disks = (_json['disks'] as core.List)
          .map<Disk>((value) =>
              Disk.fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dockerCacheImages')) {
      dockerCacheImages = (_json['dockerCacheImages'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('enableStackdriverMonitoring')) {
      enableStackdriverMonitoring =
          _json['enableStackdriverMonitoring'] as core.bool;
    }
    if (_json.containsKey('labels')) {
      labels =
          (_json['labels'] as core.Map).cast<core.String, core.String>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.String,
                ),
              );
    }
    if (_json.containsKey('machineType')) {
      machineType = _json['machineType'] as core.String;
    }
    if (_json.containsKey('network')) {
      network = Network.fromJson(
          _json['network'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('nvidiaDriverVersion')) {
      nvidiaDriverVersion = _json['nvidiaDriverVersion'] as core.String;
    }
    if (_json.containsKey('preemptible')) {
      preemptible = _json['preemptible'] as core.bool;
    }
    if (_json.containsKey('serviceAccount')) {
      serviceAccount = ServiceAccount.fromJson(
          _json['serviceAccount'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (accelerators != null) {
      _json['accelerators'] =
          accelerators.map((value) => value.toJson()).toList();
    }
    if (bootDiskSizeGb != null) {
      _json['bootDiskSizeGb'] = bootDiskSizeGb;
    }
    if (bootImage != null) {
      _json['bootImage'] = bootImage;
    }
    if (cpuPlatform != null) {
      _json['cpuPlatform'] = cpuPlatform;
    }
    if (disks != null) {
      _json['disks'] = disks.map((value) => value.toJson()).toList();
    }
    if (dockerCacheImages != null) {
      _json['dockerCacheImages'] = dockerCacheImages;
    }
    if (enableStackdriverMonitoring != null) {
      _json['enableStackdriverMonitoring'] = enableStackdriverMonitoring;
    }
    if (labels != null) {
      _json['labels'] = labels;
    }
    if (machineType != null) {
      _json['machineType'] = machineType;
    }
    if (network != null) {
      _json['network'] = network.toJson();
    }
    if (nvidiaDriverVersion != null) {
      _json['nvidiaDriverVersion'] = nvidiaDriverVersion;
    }
    if (preemptible != null) {
      _json['preemptible'] = preemptible;
    }
    if (serviceAccount != null) {
      _json['serviceAccount'] = serviceAccount.toJson();
    }
    return _json;
  }
}

/// An event generated after a worker VM has been assigned to run the pipeline.
class WorkerAssignedEvent {
  /// The worker's instance name.
  core.String instance;

  /// The machine type that was assigned for the worker.
  core.String machineType;

  /// The zone the worker is running in.
  core.String zone;

  WorkerAssignedEvent();

  WorkerAssignedEvent.fromJson(core.Map _json) {
    if (_json.containsKey('instance')) {
      instance = _json['instance'] as core.String;
    }
    if (_json.containsKey('machineType')) {
      machineType = _json['machineType'] as core.String;
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instance != null) {
      _json['instance'] = instance;
    }
    if (machineType != null) {
      _json['machineType'] = machineType;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}

/// An event generated when the worker VM that was assigned to the pipeline has
/// been released (deleted).
class WorkerReleasedEvent {
  /// The worker's instance name.
  core.String instance;

  /// The zone the worker was running in.
  core.String zone;

  WorkerReleasedEvent();

  WorkerReleasedEvent.fromJson(core.Map _json) {
    if (_json.containsKey('instance')) {
      instance = _json['instance'] as core.String;
    }
    if (_json.containsKey('zone')) {
      zone = _json['zone'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (instance != null) {
      _json['instance'] = instance;
    }
    if (zone != null) {
      _json['zone'] = zone;
    }
    return _json;
  }
}
