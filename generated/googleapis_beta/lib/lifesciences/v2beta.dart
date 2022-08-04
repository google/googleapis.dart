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

/// Cloud Life Sciences API - v2beta
///
/// Cloud Life Sciences is a suite of services and tools for managing,
/// processing, and transforming life sciences data.
///
/// For more information, see <https://cloud.google.com/life-sciences>
///
/// Create an instance of [CloudLifeSciencesApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPipelinesResource]
library lifesciences.v2beta;

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

/// Cloud Life Sciences is a suite of services and tools for managing,
/// processing, and transforming life sciences data.
class CloudLifeSciencesApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  CloudLifeSciencesApi(http.Client client,
      {core.String rootUrl = 'https://lifesciences.googleapis.com/',
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

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPipelinesResource get pipelines =>
      ProjectsLocationsPipelinesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a location.
  ///
  /// Request parameters:
  ///
  /// [name] - Resource name for the location.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Location.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists information about the supported locations for this service.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter to narrow down results to a preferred subset. The
  /// filtering language accepts strings like `"displayName=tokyo"`, and is
  /// documented in more detail in \[AIP-160\](https://google.aip.dev/160).
  ///
  /// [pageSize] - The maximum number of results to return. If not set, the
  /// service selects a default.
  ///
  /// [pageToken] - A page token received from the `next_page_token` field in
  /// the response. Send that page token to receive the subsequent page.
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

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service. Authorization requires the following
  /// [Google IAM](https://cloud.google.com/iam) permission: *
  /// `lifesciences.operations.get`
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
  async.Future<Operation> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// Authorization requires the following
  /// [Google IAM](https://cloud.google.com/iam) permission: *
  /// `lifesciences.operations.list`
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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

    final url_ = 'v2beta/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPipelinesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPipelinesResource(commons.ApiRequester client)
      : _requester = client;

  /// Runs a pipeline.
  ///
  /// The returned Operation's metadata field will contain a
  /// google.cloud.lifesciences.v2beta.Metadata object describing the status of
  /// the pipeline execution. The response field will contain a
  /// google.cloud.lifesciences.v2beta.RunPipelineResponse object if the
  /// pipeline completes successfully. **Note:** Before you can use this method,
  /// the *Life Sciences Service Agent* must have access to your project. This
  /// is done automatically when the Cloud Life Sciences API is first enabled,
  /// but if you delete this permission you must disable and re-enable the API
  /// to grant the Life Sciences Service Agent the required permissions.
  /// Authorization requires the following
  /// [Google IAM](https://cloud.google.com/iam/) permission: *
  /// `lifesciences.workflows.run`
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The project and location that this request should be executed
  /// against.
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
  async.Future<Operation> run(
    RunPipelineRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2beta/' + core.Uri.encodeFull('$parent') + '/pipelines:run';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Carries information about an accelerator that can be attached to a VM.
class Accelerator {
  /// How many accelerators of this type to attach.
  core.String? count;

  /// The accelerator type string (for example, "nvidia-tesla-k80").
  ///
  /// Only NVIDIA GPU accelerators are currently supported. If an NVIDIA GPU is
  /// attached, the required runtime libraries will be made available to all
  /// containers under `/usr/local/nvidia`. The driver version to install must
  /// be specified using the NVIDIA driver version parameter on the virtual
  /// machine specification. Note that attaching a GPU increases the worker VM
  /// startup time by a few minutes.
  core.String? type;

  Accelerator({
    this.count,
    this.type,
  });

  Accelerator.fromJson(core.Map json_)
      : this(
          count:
              json_.containsKey('count') ? json_['count'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (type != null) 'type': type!,
      };
}

/// Specifies a single action that runs a Docker container.
class Action {
  /// By default, after an action fails, no further actions are run.
  ///
  /// This flag indicates that this action must be run even if the pipeline has
  /// already failed. This is useful for actions that copy output files off of
  /// the VM or for debugging. Note that no actions will be run if image
  /// prefetching fails.
  core.bool? alwaysRun;

  /// Prevents the container from accessing the external network.
  core.bool? blockExternalNetwork;

  /// If specified, overrides the `CMD` specified in the container.
  ///
  /// If the container also has an `ENTRYPOINT` the values are used as
  /// entrypoint arguments. Otherwise, they are used as a command and arguments
  /// to run inside the container.
  core.List<core.String>? commands;

  /// An optional name for the container.
  ///
  /// The container hostname will be set to this name, making it useful for
  /// inter-container communication. The name must contain only upper and
  /// lowercase alphanumeric characters and hyphens and cannot start with a
  /// hyphen.
  core.String? containerName;

  /// If the specified image is hosted on a private registry other than Google
  /// Container Registry, the credentials required to pull the image must be
  /// specified here as an encrypted secret.
  ///
  /// The secret must decrypt to a JSON-encoded dictionary containing both
  /// `username` and `password` keys.
  Secret? credentials;

  /// All container images are typically downloaded before any actions are
  /// executed.
  ///
  /// This helps prevent typos in URIs or issues like lack of disk space from
  /// wasting large amounts of compute resources. If set, this flag prevents the
  /// worker from downloading the image until just before the action is
  /// executed.
  core.bool? disableImagePrefetch;

  /// A small portion of the container's standard error stream is typically
  /// captured and returned inside the `ContainerStoppedEvent`.
  ///
  /// Setting this flag disables this functionality.
  core.bool? disableStandardErrorCapture;

  /// Enable access to the FUSE device for this action.
  ///
  /// Filesystems can then be mounted into disks shared with other actions. The
  /// other actions do not need the `enable_fuse` flag to access the mounted
  /// filesystem. This has the effect of causing the container to be executed
  /// with `CAP_SYS_ADMIN` and exposes `/dev/fuse` to the container, so use it
  /// only for containers you trust.
  core.bool? enableFuse;

  /// The encrypted environment to pass into the container.
  ///
  /// This environment is merged with values specified in the
  /// google.cloud.lifesciences.v2beta.Pipeline message, overwriting any
  /// duplicate values. The secret must decrypt to a JSON-encoded dictionary
  /// where key-value pairs serve as environment variable names and their
  /// values. The decoded environment variables can overwrite the values
  /// specified by the `environment` field.
  Secret? encryptedEnvironment;

  /// If specified, overrides the `ENTRYPOINT` specified in the container.
  core.String? entrypoint;

  /// The environment to pass into the container.
  ///
  /// This environment is merged with values specified in the
  /// google.cloud.lifesciences.v2beta.Pipeline message, overwriting any
  /// duplicate values. In addition to the values passed here, a few other
  /// values are automatically injected into the environment. These cannot be
  /// hidden or overwritten. `GOOGLE_PIPELINE_FAILED` will be set to "1" if the
  /// pipeline failed because an action has exited with a non-zero status (and
  /// did not have the `IGNORE_EXIT_STATUS` flag set). This can be used to
  /// determine if additional debug or logging actions should execute.
  /// `GOOGLE_LAST_EXIT_STATUS` will be set to the exit status of the last
  /// non-background action that executed. This can be used by workflow engine
  /// authors to determine whether an individual action has succeeded or failed.
  core.Map<core.String, core.String>? environment;

  /// Normally, a non-zero exit status causes the pipeline to fail.
  ///
  /// This flag allows execution of other actions to continue instead.
  core.bool? ignoreExitStatus;

  /// The URI to pull the container image from.
  ///
  /// Note that all images referenced by actions in the pipeline are pulled
  /// before the first action runs. If multiple actions reference the same
  /// image, it is only pulled once, ensuring that the same image is used for
  /// all actions in a single pipeline. The image URI can be either a complete
  /// host and image specification (e.g., quay.io/biocontainers/samtools), a
  /// library and image name (e.g., google/cloud-sdk) or a bare image name
  /// ('bash') to pull from the default library. No schema is required in any of
  /// these cases. If the specified image is not public, the service account
  /// specified for the Virtual Machine must have access to pull the images from
  /// GCR, or appropriate credentials must be specified in the
  /// google.cloud.lifesciences.v2beta.Action.credentials field.
  ///
  /// Required.
  core.String? imageUri;

  /// Labels to associate with the action.
  ///
  /// This field is provided to assist workflow engine authors in identifying
  /// actions (for example, to indicate what sort of action they perform, such
  /// as localization or debugging). They are returned in the operation
  /// metadata, but are otherwise ignored.
  core.Map<core.String, core.String>? labels;

  /// A list of mounts to make available to the action.
  ///
  /// In addition to the values specified here, every action has a special
  /// virtual disk mounted under `/google` that contains log files and other
  /// operational components. - /google/logs All logs written during the
  /// pipeline execution. - /google/logs/output The combined standard output and
  /// standard error of all actions run as part of the pipeline execution. -
  /// /google/logs/action / * /stdout The complete contents of each individual
  /// action's standard output. - /google/logs/action / * /stderr The complete
  /// contents of each individual action's standard error output.
  core.List<Mount>? mounts;

  /// An optional identifier for a PID namespace to run the action inside.
  ///
  /// Multiple actions should use the same string to share a namespace. If
  /// unspecified, a separate isolated namespace is used.
  core.String? pidNamespace;

  /// A map of containers to host port mappings for this container.
  ///
  /// If the container already specifies exposed ports, use the
  /// `PUBLISH_EXPOSED_PORTS` flag instead. The host port number must be less
  /// than 65536. If it is zero, an unused random port is assigned. To determine
  /// the resulting port number, consult the `ContainerStartedEvent` in the
  /// operation metadata.
  core.Map<core.String, core.int>? portMappings;

  /// Exposes all ports specified by `EXPOSE` statements in the container.
  ///
  /// To discover the host side port numbers, consult the `ACTION_STARTED` event
  /// in the operation metadata.
  core.bool? publishExposedPorts;

  /// This flag allows an action to continue running in the background while
  /// executing subsequent actions.
  ///
  /// This is useful to provide services to other actions (or to provide
  /// debugging support tools like SSH servers).
  core.bool? runInBackground;

  /// The maximum amount of time to give the action to complete.
  ///
  /// If the action fails to complete before the timeout, it will be terminated
  /// and the exit status will be non-zero. The pipeline will continue or
  /// terminate based on the rules defined by the `ALWAYS_RUN` and
  /// `IGNORE_EXIT_STATUS` flags.
  core.String? timeout;

  Action({
    this.alwaysRun,
    this.blockExternalNetwork,
    this.commands,
    this.containerName,
    this.credentials,
    this.disableImagePrefetch,
    this.disableStandardErrorCapture,
    this.enableFuse,
    this.encryptedEnvironment,
    this.entrypoint,
    this.environment,
    this.ignoreExitStatus,
    this.imageUri,
    this.labels,
    this.mounts,
    this.pidNamespace,
    this.portMappings,
    this.publishExposedPorts,
    this.runInBackground,
    this.timeout,
  });

  Action.fromJson(core.Map json_)
      : this(
          alwaysRun: json_.containsKey('alwaysRun')
              ? json_['alwaysRun'] as core.bool
              : null,
          blockExternalNetwork: json_.containsKey('blockExternalNetwork')
              ? json_['blockExternalNetwork'] as core.bool
              : null,
          commands: json_.containsKey('commands')
              ? (json_['commands'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          containerName: json_.containsKey('containerName')
              ? json_['containerName'] as core.String
              : null,
          credentials: json_.containsKey('credentials')
              ? Secret.fromJson(
                  json_['credentials'] as core.Map<core.String, core.dynamic>)
              : null,
          disableImagePrefetch: json_.containsKey('disableImagePrefetch')
              ? json_['disableImagePrefetch'] as core.bool
              : null,
          disableStandardErrorCapture:
              json_.containsKey('disableStandardErrorCapture')
                  ? json_['disableStandardErrorCapture'] as core.bool
                  : null,
          enableFuse: json_.containsKey('enableFuse')
              ? json_['enableFuse'] as core.bool
              : null,
          encryptedEnvironment: json_.containsKey('encryptedEnvironment')
              ? Secret.fromJson(json_['encryptedEnvironment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          entrypoint: json_.containsKey('entrypoint')
              ? json_['entrypoint'] as core.String
              : null,
          environment: json_.containsKey('environment')
              ? (json_['environment'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          ignoreExitStatus: json_.containsKey('ignoreExitStatus')
              ? json_['ignoreExitStatus'] as core.bool
              : null,
          imageUri: json_.containsKey('imageUri')
              ? json_['imageUri'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          mounts: json_.containsKey('mounts')
              ? (json_['mounts'] as core.List)
                  .map((value) => Mount.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pidNamespace: json_.containsKey('pidNamespace')
              ? json_['pidNamespace'] as core.String
              : null,
          portMappings: json_.containsKey('portMappings')
              ? (json_['portMappings'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.int,
                  ),
                )
              : null,
          publishExposedPorts: json_.containsKey('publishExposedPorts')
              ? json_['publishExposedPorts'] as core.bool
              : null,
          runInBackground: json_.containsKey('runInBackground')
              ? json_['runInBackground'] as core.bool
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alwaysRun != null) 'alwaysRun': alwaysRun!,
        if (blockExternalNetwork != null)
          'blockExternalNetwork': blockExternalNetwork!,
        if (commands != null) 'commands': commands!,
        if (containerName != null) 'containerName': containerName!,
        if (credentials != null) 'credentials': credentials!,
        if (disableImagePrefetch != null)
          'disableImagePrefetch': disableImagePrefetch!,
        if (disableStandardErrorCapture != null)
          'disableStandardErrorCapture': disableStandardErrorCapture!,
        if (enableFuse != null) 'enableFuse': enableFuse!,
        if (encryptedEnvironment != null)
          'encryptedEnvironment': encryptedEnvironment!,
        if (entrypoint != null) 'entrypoint': entrypoint!,
        if (environment != null) 'environment': environment!,
        if (ignoreExitStatus != null) 'ignoreExitStatus': ignoreExitStatus!,
        if (imageUri != null) 'imageUri': imageUri!,
        if (labels != null) 'labels': labels!,
        if (mounts != null) 'mounts': mounts!,
        if (pidNamespace != null) 'pidNamespace': pidNamespace!,
        if (portMappings != null) 'portMappings': portMappings!,
        if (publishExposedPorts != null)
          'publishExposedPorts': publishExposedPorts!,
        if (runInBackground != null) 'runInBackground': runInBackground!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Carries information about a disk that can be attached to a VM.
///
/// See https://cloud.google.com/compute/docs/disks/performance for more
/// information about disk type, size, and performance considerations. Specify
/// either `Volume` or `Disk`, but not both.
class Disk {
  /// A user-supplied name for the disk.
  ///
  /// Used when mounting the disk into actions. The name must contain only upper
  /// and lowercase alphanumeric characters and hyphens and cannot start with a
  /// hyphen.
  core.String? name;

  /// The size, in GB, of the disk to attach.
  ///
  /// If the size is not specified, a default is chosen to ensure reasonable I/O
  /// performance. If the disk type is specified as `local-ssd`, multiple local
  /// drives are automatically combined to provide the requested size. Note,
  /// however, that each physical SSD is 375GB in size, and no more than 8
  /// drives can be attached to a single instance.
  core.int? sizeGb;

  /// An optional image to put on the disk before attaching it to the VM.
  core.String? sourceImage;

  /// The Compute Engine disk type.
  ///
  /// If unspecified, `pd-standard` is used.
  core.String? type;

  Disk({
    this.name,
    this.sizeGb,
    this.sourceImage,
    this.type,
  });

  Disk.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sizeGb:
              json_.containsKey('sizeGb') ? json_['sizeGb'] as core.int : null,
          sourceImage: json_.containsKey('sourceImage')
              ? json_['sourceImage'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (sourceImage != null) 'sourceImage': sourceImage!,
        if (type != null) 'type': type!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Configuration for an existing disk to be attached to the VM.
class ExistingDisk {
  /// If `disk` contains slashes, the Cloud Life Sciences API assumes that it is
  /// a complete URL for the disk.
  ///
  /// If `disk` does not contain slashes, the Cloud Life Sciences API assumes
  /// that the disk is a zonal disk and a URL will be generated of the form
  /// `zones//disks/`, where `` is the zone in which the instance is allocated.
  /// The disk must be ext4 formatted. If all `Mount` references to this disk
  /// have the `read_only` flag set to true, the disk will be attached in
  /// `read-only` mode and can be shared with other instances. Otherwise, the
  /// disk will be available for writing but cannot be shared.
  core.String? disk;

  ExistingDisk({
    this.disk,
  });

  ExistingDisk.fromJson(core.Map json_)
      : this(
          disk: json_.containsKey('disk') ? json_['disk'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disk != null) 'disk': disk!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
                  .map((value) => Operation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location;

/// Carries information about a particular disk mount inside a container.
class Mount {
  /// The name of the disk to mount, as specified in the resources section.
  core.String? disk;

  /// The path to mount the disk inside the container.
  core.String? path;

  /// If true, the disk is mounted read-only inside the container.
  core.bool? readOnly;

  Mount({
    this.disk,
    this.path,
    this.readOnly,
  });

  Mount.fromJson(core.Map json_)
      : this(
          disk: json_.containsKey('disk') ? json_['disk'] as core.String : null,
          path: json_.containsKey('path') ? json_['path'] as core.String : null,
          readOnly: json_.containsKey('readOnly')
              ? json_['readOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (disk != null) 'disk': disk!,
        if (path != null) 'path': path!,
        if (readOnly != null) 'readOnly': readOnly!,
      };
}

/// Configuration for an `NFSMount` to be attached to the VM.
class NFSMount {
  /// A target NFS mount.
  ///
  /// The target must be specified as \`address:/mount".
  core.String? target;

  NFSMount({
    this.target,
  });

  NFSMount.fromJson(core.Map json_)
      : this(
          target: json_.containsKey('target')
              ? json_['target'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (target != null) 'target': target!,
      };
}

/// VM networking options.
class Network {
  /// The network name to attach the VM's network interface to.
  ///
  /// The value will be prefixed with `global/networks/` unless it contains a
  /// `/`, in which case it is assumed to be a fully specified network resource
  /// URL. If unspecified, the global default network is used.
  core.String? network;

  /// If the specified network is configured for custom subnet creation, the
  /// name of the subnetwork to attach the instance to must be specified here.
  ///
  /// The value is prefixed with `regions / * /subnetworks/` unless it contains
  /// a `/`, in which case it is assumed to be a fully specified subnetwork
  /// resource URL. If the `*` character appears in the value, it is replaced
  /// with the region that the virtual machine has been allocated in.
  core.String? subnetwork;

  /// If set to true, do not attach a public IP address to the VM.
  ///
  /// Note that without a public IP address, additional configuration is
  /// required to allow the VM to access Google services. See
  /// https://cloud.google.com/vpc/docs/configure-private-google-access for more
  /// information.
  core.bool? usePrivateAddress;

  Network({
    this.network,
    this.subnetwork,
    this.usePrivateAddress,
  });

  Network.fromJson(core.Map json_)
      : this(
          network: json_.containsKey('network')
              ? json_['network'] as core.String
              : null,
          subnetwork: json_.containsKey('subnetwork')
              ? json_['subnetwork'] as core.String
              : null,
          usePrivateAddress: json_.containsKey('usePrivateAddress')
              ? json_['usePrivateAddress'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (usePrivateAddress != null) 'usePrivateAddress': usePrivateAddress!,
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

  /// An Metadata object.
  ///
  /// This will always be returned with the Operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name for the operation.
  ///
  /// This may be passed to the other operation methods to retrieve information
  /// about the operation's status.
  core.String? name;

  /// An Empty object.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          response: json_.containsKey('response')
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

/// Configuration for a persistent disk to be attached to the VM.
///
/// See https://cloud.google.com/compute/docs/disks/performance for more
/// information about disk type, size, and performance considerations.
class PersistentDisk {
  /// The size, in GB, of the disk to attach.
  ///
  /// If the size is not specified, a default is chosen to ensure reasonable I/O
  /// performance. If the disk type is specified as `local-ssd`, multiple local
  /// drives are automatically combined to provide the requested size. Note,
  /// however, that each physical SSD is 375GB in size, and no more than 8
  /// drives can be attached to a single instance.
  core.int? sizeGb;

  /// An image to put on the disk before attaching it to the VM.
  core.String? sourceImage;

  /// The Compute Engine disk type.
  ///
  /// If unspecified, `pd-standard` is used.
  core.String? type;

  PersistentDisk({
    this.sizeGb,
    this.sourceImage,
    this.type,
  });

  PersistentDisk.fromJson(core.Map json_)
      : this(
          sizeGb:
              json_.containsKey('sizeGb') ? json_['sizeGb'] as core.int : null,
          sourceImage: json_.containsKey('sourceImage')
              ? json_['sourceImage'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sizeGb != null) 'sizeGb': sizeGb!,
        if (sourceImage != null) 'sourceImage': sourceImage!,
        if (type != null) 'type': type!,
      };
}

/// Specifies a series of actions to execute, expressed as Docker containers.
class Pipeline {
  /// The list of actions to execute, in the order they are specified.
  core.List<Action>? actions;

  /// The encrypted environment to pass into every action.
  ///
  /// Each action can also specify its own encrypted environment. The secret
  /// must decrypt to a JSON-encoded dictionary where key-value pairs serve as
  /// environment variable names and their values. The decoded environment
  /// variables can overwrite the values specified by the `environment` field.
  Secret? encryptedEnvironment;

  /// The environment to pass into every action.
  ///
  /// Each action can also specify additional environment variables but cannot
  /// delete an entry from this map (though they can overwrite it with a
  /// different value).
  core.Map<core.String, core.String>? environment;

  /// The resources required for execution.
  Resources? resources;

  /// The maximum amount of time to give the pipeline to complete.
  ///
  /// This includes the time spent waiting for a worker to be allocated. If the
  /// pipeline fails to complete before the timeout, it will be cancelled and
  /// the error code will be set to DEADLINE_EXCEEDED. If unspecified, it will
  /// default to 7 days.
  core.String? timeout;

  Pipeline({
    this.actions,
    this.encryptedEnvironment,
    this.environment,
    this.resources,
    this.timeout,
  });

  Pipeline.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          encryptedEnvironment: json_.containsKey('encryptedEnvironment')
              ? Secret.fromJson(json_['encryptedEnvironment']
                  as core.Map<core.String, core.dynamic>)
              : null,
          environment: json_.containsKey('environment')
              ? (json_['environment'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          resources: json_.containsKey('resources')
              ? Resources.fromJson(
                  json_['resources'] as core.Map<core.String, core.dynamic>)
              : null,
          timeout: json_.containsKey('timeout')
              ? json_['timeout'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (encryptedEnvironment != null)
          'encryptedEnvironment': encryptedEnvironment!,
        if (environment != null) 'environment': environment!,
        if (resources != null) 'resources': resources!,
        if (timeout != null) 'timeout': timeout!,
      };
}

/// The system resources for the pipeline run.
///
/// At least one zone or region must be specified or the pipeline run will fail.
class Resources {
  /// The list of regions allowed for VM allocation.
  ///
  /// If set, the `zones` field must not be set.
  core.List<core.String>? regions;

  /// The virtual machine specification.
  VirtualMachine? virtualMachine;

  /// The list of zones allowed for VM allocation.
  ///
  /// If set, the `regions` field must not be set.
  core.List<core.String>? zones;

  Resources({
    this.regions,
    this.virtualMachine,
    this.zones,
  });

  Resources.fromJson(core.Map json_)
      : this(
          regions: json_.containsKey('regions')
              ? (json_['regions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          virtualMachine: json_.containsKey('virtualMachine')
              ? VirtualMachine.fromJson(json_['virtualMachine']
                  as core.Map<core.String, core.dynamic>)
              : null,
          zones: json_.containsKey('zones')
              ? (json_['zones'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (regions != null) 'regions': regions!,
        if (virtualMachine != null) 'virtualMachine': virtualMachine!,
        if (zones != null) 'zones': zones!,
      };
}

/// The arguments to the `RunPipeline` method.
///
/// The requesting user must have the `iam.serviceAccounts.actAs` permission for
/// the Cloud Life Sciences service account or the request will fail.
class RunPipelineRequest {
  /// User-defined labels to associate with the returned operation.
  ///
  /// These labels are not propagated to any Google Cloud Platform resources
  /// used by the operation, and can be modified at any time. To associate
  /// labels with resources created while executing the operation, see the
  /// appropriate resource message (for example, `VirtualMachine`).
  core.Map<core.String, core.String>? labels;

  /// The description of the pipeline to run.
  ///
  /// Required.
  Pipeline? pipeline;

  /// The name of an existing Pub/Sub topic.
  ///
  /// The server will publish messages to this topic whenever the status of the
  /// operation changes. The Life Sciences Service Agent account must have
  /// publisher permissions to the specified topic or notifications will not be
  /// sent.
  core.String? pubSubTopic;

  RunPipelineRequest({
    this.labels,
    this.pipeline,
    this.pubSubTopic,
  });

  RunPipelineRequest.fromJson(core.Map json_)
      : this(
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          pipeline: json_.containsKey('pipeline')
              ? Pipeline.fromJson(
                  json_['pipeline'] as core.Map<core.String, core.dynamic>)
              : null,
          pubSubTopic: json_.containsKey('pubSubTopic')
              ? json_['pubSubTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (labels != null) 'labels': labels!,
        if (pipeline != null) 'pipeline': pipeline!,
        if (pubSubTopic != null) 'pubSubTopic': pubSubTopic!,
      };
}

/// Holds encrypted information that is only decrypted and stored in RAM by the
/// worker VM when running the pipeline.
class Secret {
  /// The value of the cipherText response from the `encrypt` method.
  ///
  /// This field is intentionally unaudited.
  core.String? cipherText;

  /// The name of the Cloud KMS key that will be used to decrypt the secret
  /// value.
  ///
  /// The VM service account must have the required permissions and
  /// authentication scopes to invoke the `decrypt` method on the specified key.
  core.String? keyName;

  Secret({
    this.cipherText,
    this.keyName,
  });

  Secret.fromJson(core.Map json_)
      : this(
          cipherText: json_.containsKey('cipherText')
              ? json_['cipherText'] as core.String
              : null,
          keyName: json_.containsKey('keyName')
              ? json_['keyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cipherText != null) 'cipherText': cipherText!,
        if (keyName != null) 'keyName': keyName!,
      };
}

/// Carries information about a Google Cloud service account.
class ServiceAccount {
  /// Email address of the service account.
  ///
  /// If not specified, the default Compute Engine service account for the
  /// project will be used.
  core.String? email;

  /// List of scopes to be enabled for this service account on the VM, in
  /// addition to the cloud-platform API scope that will be added by default.
  core.List<core.String>? scopes;

  ServiceAccount({
    this.email,
    this.scopes,
  });

  ServiceAccount.fromJson(core.Map json_)
      : this(
          email:
              json_.containsKey('email') ? json_['email'] as core.String : null,
          scopes: json_.containsKey('scopes')
              ? (json_['scopes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (scopes != null) 'scopes': scopes!,
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

/// Carries information about a Compute Engine VM resource.
class VirtualMachine {
  /// The list of accelerators to attach to the VM.
  core.List<Accelerator>? accelerators;

  /// The size of the boot disk, in GB.
  ///
  /// The boot disk must be large enough to accommodate all of the Docker images
  /// from each action in the pipeline at the same time. If not specified, a
  /// small but reasonable default value is used.
  core.int? bootDiskSizeGb;

  /// The host operating system image to use.
  ///
  /// Currently, only Container-Optimized OS images can be used. The default
  /// value is `projects/cos-cloud/global/images/family/cos-stable`, which
  /// selects the latest stable release of Container-Optimized OS. This option
  /// is provided to allow testing against the beta release of the operating
  /// system to ensure that the new version does not interact negatively with
  /// production pipelines. To test a pipeline against the beta release of
  /// Container-Optimized OS, use the value
  /// `projects/cos-cloud/global/images/family/cos-beta`.
  core.String? bootImage;

  /// The CPU platform to request.
  ///
  /// An instance based on a newer platform can be allocated, but never one with
  /// fewer capabilities. The value of this parameter must be a valid Compute
  /// Engine CPU platform name (such as "Intel Skylake"). This parameter is only
  /// useful for carefully optimized work loads where the CPU platform has a
  /// significant impact. For more information about the effect of this
  /// parameter, see
  /// https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
  core.String? cpuPlatform;

  /// The list of disks to create and attach to the VM.
  ///
  /// Specify either the `volumes[]` field or the `disks[]` field, but not both.
  core.List<Disk>? disks;

  /// The Compute Engine Disk Images to use as a Docker cache.
  ///
  /// The disks will be mounted into the Docker folder in a way that the images
  /// present in the cache will not need to be pulled. The digests of the cached
  /// images must match those of the tags used or the latest version will still
  /// be pulled. The root directory of the ext4 image must contain `image` and
  /// `overlay2` directories copied from the Docker directory of a VM where the
  /// desired Docker images have already been pulled. Any images pulled that are
  /// not cached will be stored on the first cache disk instead of the boot
  /// disk. Only a single image is supported.
  core.List<core.String>? dockerCacheImages;

  /// Whether Stackdriver monitoring should be enabled on the VM.
  core.bool? enableStackdriverMonitoring;

  /// Optional set of labels to apply to the VM and any attached disk resources.
  ///
  /// These labels must adhere to the
  /// [name and value restrictions](https://cloud.google.com/compute/docs/labeling-resources)
  /// on VM labels imposed by Compute Engine. Labels keys with the prefix
  /// 'google-' are reserved for use by Google. Labels applied at creation time
  /// to the VM. Applied on a best-effort basis to attached disk resources
  /// shortly after VM creation.
  core.Map<core.String, core.String>? labels;

  /// The machine type of the virtual machine to create.
  ///
  /// Must be the short name of a standard machine type (such as
  /// "n1-standard-1") or a custom machine type (such as "custom-1-4096", where
  /// "1" indicates the number of vCPUs and "4096" indicates the memory in MB).
  /// See
  /// [Creating an instance with a custom machine type](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#create)
  /// for more specifications on creating a custom machine type.
  ///
  /// Required.
  core.String? machineType;

  /// The VM network configuration.
  Network? network;

  /// The NVIDIA driver version to use when attaching an NVIDIA GPU accelerator.
  ///
  /// The version specified here must be compatible with the GPU libraries
  /// contained in the container being executed, and must be one of the drivers
  /// hosted in the `nvidia-drivers-us-public` bucket on Google Cloud Storage.
  core.String? nvidiaDriverVersion;

  /// If true, allocate a preemptible VM.
  core.bool? preemptible;

  /// If specified, the VM will only be allocated inside the matching
  /// reservation.
  ///
  /// It will fail if the VM parameters don't match the reservation.
  core.String? reservation;

  /// The service account to install on the VM.
  ///
  /// This account does not need any permissions other than those required by
  /// the pipeline.
  ServiceAccount? serviceAccount;

  /// The list of disks and other storage to create or attach to the VM.
  ///
  /// Specify either the `volumes[]` field or the `disks[]` field, but not both.
  core.List<Volume>? volumes;

  VirtualMachine({
    this.accelerators,
    this.bootDiskSizeGb,
    this.bootImage,
    this.cpuPlatform,
    this.disks,
    this.dockerCacheImages,
    this.enableStackdriverMonitoring,
    this.labels,
    this.machineType,
    this.network,
    this.nvidiaDriverVersion,
    this.preemptible,
    this.reservation,
    this.serviceAccount,
    this.volumes,
  });

  VirtualMachine.fromJson(core.Map json_)
      : this(
          accelerators: json_.containsKey('accelerators')
              ? (json_['accelerators'] as core.List)
                  .map((value) => Accelerator.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bootDiskSizeGb: json_.containsKey('bootDiskSizeGb')
              ? json_['bootDiskSizeGb'] as core.int
              : null,
          bootImage: json_.containsKey('bootImage')
              ? json_['bootImage'] as core.String
              : null,
          cpuPlatform: json_.containsKey('cpuPlatform')
              ? json_['cpuPlatform'] as core.String
              : null,
          disks: json_.containsKey('disks')
              ? (json_['disks'] as core.List)
                  .map((value) => Disk.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dockerCacheImages: json_.containsKey('dockerCacheImages')
              ? (json_['dockerCacheImages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          enableStackdriverMonitoring:
              json_.containsKey('enableStackdriverMonitoring')
                  ? json_['enableStackdriverMonitoring'] as core.bool
                  : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          machineType: json_.containsKey('machineType')
              ? json_['machineType'] as core.String
              : null,
          network: json_.containsKey('network')
              ? Network.fromJson(
                  json_['network'] as core.Map<core.String, core.dynamic>)
              : null,
          nvidiaDriverVersion: json_.containsKey('nvidiaDriverVersion')
              ? json_['nvidiaDriverVersion'] as core.String
              : null,
          preemptible: json_.containsKey('preemptible')
              ? json_['preemptible'] as core.bool
              : null,
          reservation: json_.containsKey('reservation')
              ? json_['reservation'] as core.String
              : null,
          serviceAccount: json_.containsKey('serviceAccount')
              ? ServiceAccount.fromJson(json_['serviceAccount']
                  as core.Map<core.String, core.dynamic>)
              : null,
          volumes: json_.containsKey('volumes')
              ? (json_['volumes'] as core.List)
                  .map((value) => Volume.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accelerators != null) 'accelerators': accelerators!,
        if (bootDiskSizeGb != null) 'bootDiskSizeGb': bootDiskSizeGb!,
        if (bootImage != null) 'bootImage': bootImage!,
        if (cpuPlatform != null) 'cpuPlatform': cpuPlatform!,
        if (disks != null) 'disks': disks!,
        if (dockerCacheImages != null) 'dockerCacheImages': dockerCacheImages!,
        if (enableStackdriverMonitoring != null)
          'enableStackdriverMonitoring': enableStackdriverMonitoring!,
        if (labels != null) 'labels': labels!,
        if (machineType != null) 'machineType': machineType!,
        if (network != null) 'network': network!,
        if (nvidiaDriverVersion != null)
          'nvidiaDriverVersion': nvidiaDriverVersion!,
        if (preemptible != null) 'preemptible': preemptible!,
        if (reservation != null) 'reservation': reservation!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// Carries information about storage that can be attached to a VM.
///
/// Specify either `Volume` or `Disk`, but not both.
class Volume {
  /// Configuration for a existing disk.
  ExistingDisk? existingDisk;

  /// Configuration for an NFS mount.
  NFSMount? nfsMount;

  /// Configuration for a persistent disk.
  PersistentDisk? persistentDisk;

  /// A user-supplied name for the volume.
  ///
  /// Used when mounting the volume into `Actions`. The name must contain only
  /// upper and lowercase alphanumeric characters and hyphens and cannot start
  /// with a hyphen.
  core.String? volume;

  Volume({
    this.existingDisk,
    this.nfsMount,
    this.persistentDisk,
    this.volume,
  });

  Volume.fromJson(core.Map json_)
      : this(
          existingDisk: json_.containsKey('existingDisk')
              ? ExistingDisk.fromJson(
                  json_['existingDisk'] as core.Map<core.String, core.dynamic>)
              : null,
          nfsMount: json_.containsKey('nfsMount')
              ? NFSMount.fromJson(
                  json_['nfsMount'] as core.Map<core.String, core.dynamic>)
              : null,
          persistentDisk: json_.containsKey('persistentDisk')
              ? PersistentDisk.fromJson(json_['persistentDisk']
                  as core.Map<core.String, core.dynamic>)
              : null,
          volume: json_.containsKey('volume')
              ? json_['volume'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (existingDisk != null) 'existingDisk': existingDisk!,
        if (nfsMount != null) 'nfsMount': nfsMount!,
        if (persistentDisk != null) 'persistentDisk': persistentDisk!,
        if (volume != null) 'volume': volume!,
      };
}
