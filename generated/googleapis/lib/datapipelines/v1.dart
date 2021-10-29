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

/// Data pipelines API - v1
///
/// For more information, see
/// <https://developers.google.com/apis-explorer/#search/dataflow>
///
/// Create an instance of [DatapipelinesApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsPipelinesResource]
library datapipelines.v1;

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

class DatapipelinesApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DatapipelinesApi(http.Client client,
      {core.String rootUrl = 'https://datapipelines.googleapis.com/',
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

  ProjectsLocationsPipelinesResource get pipelines =>
      ProjectsLocationsPipelinesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Lists pipelines.
  ///
  /// Returns a "NOT_FOUND" error if the list is empty. Returns a "FORBIDDEN"
  /// error if the caller doesn't have permission to access it.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - An expression for filtering the results of the request. If
  /// unspecified, all pipelines will be returned. Multiple filters can be
  /// applied and must be comma separated. Fields eligible for filtering are: +
  /// `type`: The type of the pipeline (streaming or batch). Allowed values are
  /// `ALL`, `BATCH`, and `STREAMING`. + `executor_type`: The type of pipeline
  /// execution layer. This is always Dataflow for now, but more executors may
  /// be added later. Allowed values are `ALL` and `DATAFLOW`. + `status`: The
  /// activity status of the pipeline. Allowed values are `ALL`, `ACTIVE`,
  /// `ARCHIVED`, and `PAUSED`. For example, to limit results to active batch
  /// processing pipelines: type:BATCH,status:ACTIVE
  ///
  /// [pageSize] - The maximum number of entities to return. The service may
  /// return fewer than this value, even if there are additional pages. If
  /// unspecified, the max limit is yet to be determined by the backend
  /// implementation.
  ///
  /// [pageToken] - A page token, received from a previous `ListPipelines` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListPipelines` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1ListPipelinesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1ListPipelinesResponse> listPipelines(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatapipelinesV1ListPipelinesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsPipelinesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPipelinesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a pipeline.
  ///
  /// For a batch pipeline, you can pass scheduler information. Data Pipelines
  /// uses the scheduler information to create an internal scheduler that runs
  /// jobs periodically. If the internal scheduler is not configured, you can
  /// use RunPipeline to run jobs.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Pipeline> create(
    GoogleCloudDatapipelinesV1Pipeline request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/pipelines';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatapipelinesV1Pipeline.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a pipeline.
  ///
  /// If a scheduler job is attached to the pipeline, it will be deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleProtobufEmpty.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Looks up a single pipeline.
  ///
  /// Returns a "NOT_FOUND" error if no such pipeline exists. Returns a
  /// "FORBIDDEN" error if the caller doesn't have permission to access it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pipeeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Pipeline> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleCloudDatapipelinesV1Pipeline.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a pipeline.
  ///
  /// If successful, the updated \[Pipeline\] is returned. Returns `NOT_FOUND`
  /// if the pipeline doesn't exist. If UpdatePipeline does not return
  /// successfully, you can retry the UpdatePipeline request until you receive a
  /// successful response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. *
  /// `PROJECT_ID` can contain letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens
  /// (-), colons (:), and periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the pipeline's location. The list
  /// of available locations can be obtained by calling ListLocations. Note that
  /// the Data Pipelines service is not available in all regions. It depends on
  /// Cloud Scheduler, an App Engine application, so it's only available in
  /// [App Engine regions](https://cloud.google.com/about/locations#region). *
  /// `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected
  /// project and location.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to be updated.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Pipeline> patch(
    GoogleCloudDatapipelinesV1Pipeline request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatapipelinesV1Pipeline.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a job for the specified pipeline directly.
  ///
  /// You can use this method when the internal scheduler is not configured and
  /// you want to trigger the job directly or through an external system.
  /// Returns a "NOT_FOUND" error if the pipeline doesn't exist. Returns a
  /// "FOBIDDEN" error if the user doesn't have permission to access the
  /// pipeline or run jobs for the pipeline.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1RunPipelineResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1RunPipelineResponse> run(
    GoogleCloudDatapipelinesV1RunPipelineRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':run';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatapipelinesV1RunPipelineResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Freezes pipeline execution permanently.
  ///
  /// If there's a corresponding scheduler entry, it's deleted, and the pipeline
  /// state is changed to "ARCHIVED". However, pipeline metadata is retained.
  /// Upon success, the pipeline state is updated to ARCHIVED.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The pipeline name. For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pipelines/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDatapipelinesV1Pipeline].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDatapipelinesV1Pipeline> stop(
    GoogleCloudDatapipelinesV1StopPipelineRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':stop';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleCloudDatapipelinesV1Pipeline.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Pipeline job details specific to the Dataflow API.
///
/// This is encapsulated here to allow for more executors to store their
/// specific details separately.
class GoogleCloudDatapipelinesV1DataflowJobDetails {
  /// The current number of workers used to run the jobs.
  ///
  /// Only set to a value if the job is still running.
  ///
  /// Output only.
  core.int? currentWorkers;

  /// Cached version of all the metrics of interest for the job.
  ///
  /// This value gets stored here when the job is terminated. As long as the job
  /// is running, this field is populated from the Dataflow API.
  core.Map<core.String, core.double>? resourceInfo;

  /// The SDK version used to run the job.
  ///
  /// Output only.
  GoogleCloudDatapipelinesV1SdkVersion? sdkVersion;

  GoogleCloudDatapipelinesV1DataflowJobDetails({
    this.currentWorkers,
    this.resourceInfo,
    this.sdkVersion,
  });

  GoogleCloudDatapipelinesV1DataflowJobDetails.fromJson(core.Map _json)
      : this(
          currentWorkers: _json.containsKey('currentWorkers')
              ? _json['currentWorkers'] as core.int
              : null,
          resourceInfo: _json.containsKey('resourceInfo')
              ? (_json['resourceInfo'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    (item as core.num).toDouble(),
                  ),
                )
              : null,
          sdkVersion: _json.containsKey('sdkVersion')
              ? GoogleCloudDatapipelinesV1SdkVersion.fromJson(
                  _json['sdkVersion'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentWorkers != null) 'currentWorkers': currentWorkers!,
        if (resourceInfo != null) 'resourceInfo': resourceInfo!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
      };
}

/// The environment values to be set at runtime for a Flex Template.
class GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment {
  /// Additional experiment flags for the job.
  core.List<core.String>? additionalExperiments;

  /// Additional user labels to be specified for the job.
  ///
  /// Keys and values must follow the restrictions specified in the
  /// [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions).
  /// An object containing a list of key/value pairs. Example: `{ "name":
  /// "wrench", "mass": "1kg", "count": "3" }`.
  core.Map<core.String, core.String>? additionalUserLabels;

  /// Whether to enable Streaming Engine for the job.
  core.bool? enableStreamingEngine;

  /// Set FlexRS goal for the job.
  ///
  /// https://cloud.google.com/dataflow/docs/guides/flexrs
  /// Possible string values are:
  /// - "FLEXRS_UNSPECIFIED" : Run in the default mode.
  /// - "FLEXRS_SPEED_OPTIMIZED" : Optimize for lower execution time.
  /// - "FLEXRS_COST_OPTIMIZED" : Optimize for lower cost.
  core.String? flexrsGoal;

  /// Configuration for VM IPs.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// Name for the Cloud KMS key for the job.
  ///
  /// Key format is: projects//locations//keyRings//cryptoKeys/
  core.String? kmsKeyName;

  /// The machine type to use for the job.
  ///
  /// Defaults to the value from the template if not specified.
  core.String? machineType;

  /// The maximum number of Compute Engine instances to be made available to
  /// your pipeline during execution, from 1 to 1000.
  core.int? maxWorkers;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The initial number of Compute Engine instances for the job.
  core.int? numWorkers;

  /// The email address of the service account to run the job as.
  core.String? serviceAccountEmail;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// You can specify a subnetwork using either a complete URL or an abbreviated
  /// path. Expected to be of the form
  /// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
  /// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located
  /// in a Shared VPC network, you must use the complete URL.
  core.String? subnetwork;

  /// The Cloud Storage path to use for temporary files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  core.String? tempLocation;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, defaults to the control plane region.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane region is chosen
  /// based on available capacity. If both `worker_zone` and `zone` are set,
  /// `worker_zone` takes precedence.
  core.String? workerZone;

  /// The Compute Engine
  /// [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
  /// for launching worker instances to run your pipeline.
  ///
  /// In the future, worker_zone will take precedence.
  core.String? zone;

  GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.enableStreamingEngine,
    this.flexrsGoal,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment.fromJson(
      core.Map _json)
      : this(
          additionalExperiments: _json.containsKey('additionalExperiments')
              ? (_json['additionalExperiments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          additionalUserLabels: _json.containsKey('additionalUserLabels')
              ? (_json['additionalUserLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          enableStreamingEngine: _json.containsKey('enableStreamingEngine')
              ? _json['enableStreamingEngine'] as core.bool
              : null,
          flexrsGoal: _json.containsKey('flexrsGoal')
              ? _json['flexrsGoal'] as core.String
              : null,
          ipConfiguration: _json.containsKey('ipConfiguration')
              ? _json['ipConfiguration'] as core.String
              : null,
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
          machineType: _json.containsKey('machineType')
              ? _json['machineType'] as core.String
              : null,
          maxWorkers: _json.containsKey('maxWorkers')
              ? _json['maxWorkers'] as core.int
              : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          numWorkers: _json.containsKey('numWorkers')
              ? _json['numWorkers'] as core.int
              : null,
          serviceAccountEmail: _json.containsKey('serviceAccountEmail')
              ? _json['serviceAccountEmail'] as core.String
              : null,
          subnetwork: _json.containsKey('subnetwork')
              ? _json['subnetwork'] as core.String
              : null,
          tempLocation: _json.containsKey('tempLocation')
              ? _json['tempLocation'] as core.String
              : null,
          workerRegion: _json.containsKey('workerRegion')
              ? _json['workerRegion'] as core.String
              : null,
          workerZone: _json.containsKey('workerZone')
              ? _json['workerZone'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExperiments != null)
          'additionalExperiments': additionalExperiments!,
        if (additionalUserLabels != null)
          'additionalUserLabels': additionalUserLabels!,
        if (enableStreamingEngine != null)
          'enableStreamingEngine': enableStreamingEngine!,
        if (flexrsGoal != null) 'flexrsGoal': flexrsGoal!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (machineType != null) 'machineType': machineType!,
        if (maxWorkers != null) 'maxWorkers': maxWorkers!,
        if (network != null) 'network': network!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tempLocation != null) 'tempLocation': tempLocation!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// Definition of the job information maintained by the pipeline.
///
/// Fields in this entity are retrieved from the executor API (e.g. Dataflow
/// API).
class GoogleCloudDatapipelinesV1Job {
  /// The time of job creation.
  ///
  /// Output only.
  core.String? createTime;

  /// All the details that are specific to a Dataflow job.
  GoogleCloudDatapipelinesV1DataflowJobDetails? dataflowJobDetails;

  /// The time of job termination.
  ///
  /// This is absent if the job is still running.
  ///
  /// Output only.
  core.String? endTime;

  /// The internal ID for the job.
  ///
  /// Output only.
  core.String? id;

  /// The fully qualified resource name for the job.
  ///
  /// Required.
  core.String? name;

  /// The current state of the job.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The job state isn't specified.
  /// - "STATE_PENDING" : The job is waiting to start execution.
  /// - "STATE_RUNNING" : The job is executing.
  /// - "STATE_DONE" : The job has finished execution successfully.
  /// - "STATE_FAILED" : The job has finished execution with a failure.
  /// - "STATE_CANCELLED" : The job has been terminated upon user request.
  core.String? state;

  /// Status capturing any error code or message related to job creation or
  /// execution.
  GoogleRpcStatus? status;

  GoogleCloudDatapipelinesV1Job({
    this.createTime,
    this.dataflowJobDetails,
    this.endTime,
    this.id,
    this.name,
    this.state,
    this.status,
  });

  GoogleCloudDatapipelinesV1Job.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          dataflowJobDetails: _json.containsKey('dataflowJobDetails')
              ? GoogleCloudDatapipelinesV1DataflowJobDetails.fromJson(
                  _json['dataflowJobDetails']
                      as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          status: _json.containsKey('status')
              ? GoogleRpcStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dataflowJobDetails != null)
          'dataflowJobDetails': dataflowJobDetails!,
        if (endTime != null) 'endTime': endTime!,
        if (id != null) 'id': id!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
      };
}

/// Launch Flex Template parameter.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter {
  /// Cloud Storage path to a file with a JSON-serialized ContainerSpec as
  /// content.
  core.String? containerSpecGcsPath;

  /// The runtime environment for the Flex Template job.
  GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment? environment;

  /// The job name to use for the created job.
  ///
  /// For an update job request, the job name should be the same as the existing
  /// running job.
  ///
  /// Required.
  core.String? jobName;

  /// Launch options for this Flex Template job.
  ///
  /// This is a common set of options across languages and templates. This
  /// should not be used to pass job parameters.
  core.Map<core.String, core.String>? launchOptions;

  /// The parameters for the Flex Template.
  ///
  /// Example: `{"num_workers":"5"}`
  core.Map<core.String, core.String>? parameters;

  /// Use this to pass transform name mappings for streaming update jobs.
  ///
  /// Example: `{"oldTransformName":"newTransformName",...}`
  core.Map<core.String, core.String>? transformNameMappings;

  /// Set this to true if you are sending a request to update a running
  /// streaming job.
  ///
  /// When set, the job name should be the same as the running job.
  core.bool? update;

  GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter({
    this.containerSpecGcsPath,
    this.environment,
    this.jobName,
    this.launchOptions,
    this.parameters,
    this.transformNameMappings,
    this.update,
  });

  GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromJson(core.Map _json)
      : this(
          containerSpecGcsPath: _json.containsKey('containerSpecGcsPath')
              ? _json['containerSpecGcsPath'] as core.String
              : null,
          environment: _json.containsKey('environment')
              ? GoogleCloudDatapipelinesV1FlexTemplateRuntimeEnvironment
                  .fromJson(_json['environment']
                      as core.Map<core.String, core.dynamic>)
              : null,
          jobName: _json.containsKey('jobName')
              ? _json['jobName'] as core.String
              : null,
          launchOptions: _json.containsKey('launchOptions')
              ? (_json['launchOptions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          transformNameMappings: _json.containsKey('transformNameMappings')
              ? (_json['transformNameMappings']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          update:
              _json.containsKey('update') ? _json['update'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerSpecGcsPath != null)
          'containerSpecGcsPath': containerSpecGcsPath!,
        if (environment != null) 'environment': environment!,
        if (jobName != null) 'jobName': jobName!,
        if (launchOptions != null) 'launchOptions': launchOptions!,
        if (parameters != null) 'parameters': parameters!,
        if (transformNameMappings != null)
          'transformNameMappings': transformNameMappings!,
        if (update != null) 'update': update!,
      };
}

/// A request to launch a Dataflow job from a Flex Template.
class GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest {
  /// Parameter to launch a job from a Flex Template.
  ///
  /// Required.
  GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter? launchParameter;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// For example, `us-central1`, `us-west1`.
  ///
  /// Required.
  core.String? location;

  /// The ID of the Cloud Platform project that the job belongs to.
  ///
  /// Required.
  core.String? projectId;

  /// If true, the request is validated but not actually executed.
  ///
  /// Defaults to false.
  core.bool? validateOnly;

  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest({
    this.launchParameter,
    this.location,
    this.projectId,
    this.validateOnly,
  });

  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromJson(core.Map _json)
      : this(
          launchParameter: _json.containsKey('launchParameter')
              ? GoogleCloudDatapipelinesV1LaunchFlexTemplateParameter.fromJson(
                  _json['launchParameter']
                      as core.Map<core.String, core.dynamic>)
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          validateOnly: _json.containsKey('validateOnly')
              ? _json['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (launchParameter != null) 'launchParameter': launchParameter!,
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Parameters to provide to the template being launched.
class GoogleCloudDatapipelinesV1LaunchTemplateParameters {
  /// The runtime environment for the job.
  GoogleCloudDatapipelinesV1RuntimeEnvironment? environment;

  /// The job name to use for the created job.
  ///
  /// Required.
  core.String? jobName;

  /// The runtime parameters to pass to the job.
  core.Map<core.String, core.String>? parameters;

  /// Map of transform name prefixes of the job to be replaced to the
  /// corresponding name prefixes of the new job.
  ///
  /// Only applicable when updating a pipeline.
  core.Map<core.String, core.String>? transformNameMapping;

  /// If set, replace the existing pipeline with the name specified by jobName
  /// with this pipeline, preserving state.
  core.bool? update;

  GoogleCloudDatapipelinesV1LaunchTemplateParameters({
    this.environment,
    this.jobName,
    this.parameters,
    this.transformNameMapping,
    this.update,
  });

  GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromJson(core.Map _json)
      : this(
          environment: _json.containsKey('environment')
              ? GoogleCloudDatapipelinesV1RuntimeEnvironment.fromJson(
                  _json['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          jobName: _json.containsKey('jobName')
              ? _json['jobName'] as core.String
              : null,
          parameters: _json.containsKey('parameters')
              ? (_json['parameters'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          transformNameMapping: _json.containsKey('transformNameMapping')
              ? (_json['transformNameMapping']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          update:
              _json.containsKey('update') ? _json['update'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
        if (jobName != null) 'jobName': jobName!,
        if (parameters != null) 'parameters': parameters!,
        if (transformNameMapping != null)
          'transformNameMapping': transformNameMapping!,
        if (update != null) 'update': update!,
      };
}

/// A request to launch a template.
class GoogleCloudDatapipelinesV1LaunchTemplateRequest {
  /// A Cloud Storage path to the template from which to create the job.
  ///
  /// Must be a valid Cloud Storage URL, beginning with 'gs://'.
  core.String? gcsPath;

  /// The parameters of the template to launch.
  ///
  /// This should be part of the body of the POST request.
  GoogleCloudDatapipelinesV1LaunchTemplateParameters? launchParameters;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  core.String? location;

  /// The ID of the Cloud Platform project that the job belongs to.
  ///
  /// Required.
  core.String? projectId;

  /// If true, the request is validated but not actually executed.
  ///
  /// Defaults to false.
  core.bool? validateOnly;

  GoogleCloudDatapipelinesV1LaunchTemplateRequest({
    this.gcsPath,
    this.launchParameters,
    this.location,
    this.projectId,
    this.validateOnly,
  });

  GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromJson(core.Map _json)
      : this(
          gcsPath: _json.containsKey('gcsPath')
              ? _json['gcsPath'] as core.String
              : null,
          launchParameters: _json.containsKey('launchParameters')
              ? GoogleCloudDatapipelinesV1LaunchTemplateParameters.fromJson(
                  _json['launchParameters']
                      as core.Map<core.String, core.dynamic>)
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          validateOnly: _json.containsKey('validateOnly')
              ? _json['validateOnly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsPath != null) 'gcsPath': gcsPath!,
        if (launchParameters != null) 'launchParameters': launchParameters!,
        if (location != null) 'location': location!,
        if (projectId != null) 'projectId': projectId!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Response message for ListPipelines.
class GoogleCloudDatapipelinesV1ListPipelinesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Results that matched the filter criteria and were accessible to the
  /// caller.
  ///
  /// Results are always in descending order of pipeline creation date.
  core.List<GoogleCloudDatapipelinesV1Pipeline>? pipelines;

  GoogleCloudDatapipelinesV1ListPipelinesResponse({
    this.nextPageToken,
    this.pipelines,
  });

  GoogleCloudDatapipelinesV1ListPipelinesResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          pipelines: _json.containsKey('pipelines')
              ? (_json['pipelines'] as core.List)
                  .map((value) => GoogleCloudDatapipelinesV1Pipeline.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (pipelines != null) 'pipelines': pipelines!,
      };
}

/// The main pipeline entity and all the needed metadata to launch and manage
/// linked jobs.
class GoogleCloudDatapipelinesV1Pipeline {
  /// The timestamp when the pipeline was initially created.
  ///
  /// Set by the Data Pipelines service.
  ///
  /// Output only. Immutable.
  core.String? createTime;

  /// The display name of the pipeline.
  ///
  /// It can contain only letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens (-),
  /// and underscores (_).
  ///
  /// Required.
  core.String? displayName;

  /// Number of jobs.
  ///
  /// Output only.
  core.int? jobCount;

  /// The timestamp when the pipeline was last modified.
  ///
  /// Set by the Data Pipelines service.
  ///
  /// Output only. Immutable.
  core.String? lastUpdateTime;

  /// The pipeline name.
  ///
  /// For example:
  /// `projects/PROJECT_ID/locations/LOCATION_ID/pipelines/PIPELINE_ID`. *
  /// `PROJECT_ID` can contain letters (\[A-Za-z\]), numbers (\[0-9\]), hyphens
  /// (-), colons (:), and periods (.). For more information, see
  /// [Identifying projects](https://cloud.google.com/resource-manager/docs/creating-managing-projects#identifying_projects)
  /// * `LOCATION_ID` is the canonical ID for the pipeline's location. The list
  /// of available locations can be obtained by calling ListLocations. Note that
  /// the Data Pipelines service is not available in all regions. It depends on
  /// Cloud Scheduler, an App Engine application, so it's only available in
  /// [App Engine regions](https://cloud.google.com/about/locations#region). *
  /// `PIPELINE_ID` is the ID of the pipeline. Must be unique for the selected
  /// project and location.
  core.String? name;

  /// Internal scheduling information for a pipeline.
  ///
  /// If this information is provided, periodic jobs will be created per the
  /// schedule. If not, users are responsible for creating jobs externally.
  GoogleCloudDatapipelinesV1ScheduleSpec? scheduleInfo;

  /// A service account email to be used with the Cloud Scheduler job.
  ///
  /// If not specified, the default compute engine service account will be used.
  ///
  /// Optional.
  core.String? schedulerServiceAccountEmail;

  /// The state of the pipeline.
  ///
  /// When the pipeline is created, the state is set to 'PIPELINE_STATE_ACTIVE'
  /// by default. State changes can be requested by setting the state to
  /// stopping, paused, or resuming. State cannot be changed through
  /// UpdatePipeline requests.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The pipeline state isn't specified.
  /// - "STATE_RESUMING" : The pipeline is getting started or resumed. When
  /// finished, the pipeline state will be 'PIPELINE_STATE_ACTIVE'.
  /// - "STATE_ACTIVE" : The pipeline is actively running.
  /// - "STATE_STOPPING" : The pipeline is in the process of stopping. When
  /// finished, the pipeline state will be 'PIPELINE_STATE_ARCHIVED'.
  /// - "STATE_ARCHIVED" : The pipeline has been stopped. This is a terminal
  /// state and cannot be undone.
  /// - "STATE_PAUSED" : The pipeline is paused. This is a non-terminal state.
  /// When the pipeline is paused, it will hold processing jobs, but can be
  /// resumed later. For a batch pipeline, this means pausing the scheduler job.
  /// For a streaming pipeline, creating a job snapshot to resume from will give
  /// the same effect.
  core.String? state;

  /// The type of the pipeline.
  ///
  /// This field affects the scheduling of the pipeline and the type of metrics
  /// to show for the pipeline.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PIPELINE_TYPE_UNSPECIFIED" : The pipeline type isn't specified.
  /// - "PIPELINE_TYPE_BATCH" : A batch pipeline. It runs jobs on a specific
  /// schedule, and each job will automatically terminate once execution is
  /// finished.
  /// - "PIPELINE_TYPE_STREAMING" : A streaming pipeline. The underlying job is
  /// continuously running until it is manually terminated by the user. This
  /// type of pipeline doesn't have a schedule to run on, and the linked job
  /// gets created when the pipeline is created.
  core.String? type;

  /// Workload information for creating new jobs.
  GoogleCloudDatapipelinesV1Workload? workload;

  GoogleCloudDatapipelinesV1Pipeline({
    this.createTime,
    this.displayName,
    this.jobCount,
    this.lastUpdateTime,
    this.name,
    this.scheduleInfo,
    this.schedulerServiceAccountEmail,
    this.state,
    this.type,
    this.workload,
  });

  GoogleCloudDatapipelinesV1Pipeline.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          jobCount: _json.containsKey('jobCount')
              ? _json['jobCount'] as core.int
              : null,
          lastUpdateTime: _json.containsKey('lastUpdateTime')
              ? _json['lastUpdateTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          scheduleInfo: _json.containsKey('scheduleInfo')
              ? GoogleCloudDatapipelinesV1ScheduleSpec.fromJson(
                  _json['scheduleInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          schedulerServiceAccountEmail:
              _json.containsKey('schedulerServiceAccountEmail')
                  ? _json['schedulerServiceAccountEmail'] as core.String
                  : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          workload: _json.containsKey('workload')
              ? GoogleCloudDatapipelinesV1Workload.fromJson(
                  _json['workload'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (jobCount != null) 'jobCount': jobCount!,
        if (lastUpdateTime != null) 'lastUpdateTime': lastUpdateTime!,
        if (name != null) 'name': name!,
        if (scheduleInfo != null) 'scheduleInfo': scheduleInfo!,
        if (schedulerServiceAccountEmail != null)
          'schedulerServiceAccountEmail': schedulerServiceAccountEmail!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (workload != null) 'workload': workload!,
      };
}

/// Request message for RunPipeline
typedef GoogleCloudDatapipelinesV1RunPipelineRequest = $Empty;

/// Response message for RunPipeline
class GoogleCloudDatapipelinesV1RunPipelineResponse {
  /// Job that was created as part of RunPipeline operation.
  GoogleCloudDatapipelinesV1Job? job;

  GoogleCloudDatapipelinesV1RunPipelineResponse({
    this.job,
  });

  GoogleCloudDatapipelinesV1RunPipelineResponse.fromJson(core.Map _json)
      : this(
          job: _json.containsKey('job')
              ? GoogleCloudDatapipelinesV1Job.fromJson(
                  _json['job'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
      };
}

/// The environment values to set at runtime.
class GoogleCloudDatapipelinesV1RuntimeEnvironment {
  /// Additional experiment flags for the job.
  core.List<core.String>? additionalExperiments;

  /// Additional user labels to be specified for the job.
  ///
  /// Keys and values should follow the restrictions specified in the
  /// [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. An object containing a list of key/value pairs. Example: { "name":
  /// "wrench", "mass": "1kg", "count": "3" }.
  core.Map<core.String, core.String>? additionalUserLabels;

  /// Whether to bypass the safety checks for the job's temporary directory.
  ///
  /// Use with caution.
  core.bool? bypassTempDirValidation;

  /// Whether to enable Streaming Engine for the job.
  core.bool? enableStreamingEngine;

  /// Configuration for VM IPs.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// Name for the Cloud KMS key for the job.
  ///
  /// The key format is: projects//locations//keyRings//cryptoKeys/
  core.String? kmsKeyName;

  /// The machine type to use for the job.
  ///
  /// Defaults to the value from the template if not specified.
  core.String? machineType;

  /// The maximum number of Compute Engine instances to be made available to
  /// your pipeline during execution, from 1 to 1000.
  core.int? maxWorkers;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The initial number of Compute Engine instances for the job.
  core.int? numWorkers;

  /// The email address of the service account to run the job as.
  core.String? serviceAccountEmail;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// You can specify a subnetwork using either a complete URL or an abbreviated
  /// path. Expected to be of the form
  /// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
  /// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located
  /// in a Shared VPC network, you must use the complete URL.
  core.String? subnetwork;

  /// The Cloud Storage path to use for temporary files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  core.String? tempLocation;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, default to the control plane's region.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane's region is chosen
  /// based on available capacity. If both `worker_zone` and `zone` are set,
  /// `worker_zone` takes precedence.
  core.String? workerZone;

  /// The Compute Engine
  /// [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
  /// for launching worker instances to run your pipeline.
  ///
  /// In the future, worker_zone will take precedence.
  core.String? zone;

  GoogleCloudDatapipelinesV1RuntimeEnvironment({
    this.additionalExperiments,
    this.additionalUserLabels,
    this.bypassTempDirValidation,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  GoogleCloudDatapipelinesV1RuntimeEnvironment.fromJson(core.Map _json)
      : this(
          additionalExperiments: _json.containsKey('additionalExperiments')
              ? (_json['additionalExperiments'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          additionalUserLabels: _json.containsKey('additionalUserLabels')
              ? (_json['additionalUserLabels']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          bypassTempDirValidation: _json.containsKey('bypassTempDirValidation')
              ? _json['bypassTempDirValidation'] as core.bool
              : null,
          enableStreamingEngine: _json.containsKey('enableStreamingEngine')
              ? _json['enableStreamingEngine'] as core.bool
              : null,
          ipConfiguration: _json.containsKey('ipConfiguration')
              ? _json['ipConfiguration'] as core.String
              : null,
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
          machineType: _json.containsKey('machineType')
              ? _json['machineType'] as core.String
              : null,
          maxWorkers: _json.containsKey('maxWorkers')
              ? _json['maxWorkers'] as core.int
              : null,
          network: _json.containsKey('network')
              ? _json['network'] as core.String
              : null,
          numWorkers: _json.containsKey('numWorkers')
              ? _json['numWorkers'] as core.int
              : null,
          serviceAccountEmail: _json.containsKey('serviceAccountEmail')
              ? _json['serviceAccountEmail'] as core.String
              : null,
          subnetwork: _json.containsKey('subnetwork')
              ? _json['subnetwork'] as core.String
              : null,
          tempLocation: _json.containsKey('tempLocation')
              ? _json['tempLocation'] as core.String
              : null,
          workerRegion: _json.containsKey('workerRegion')
              ? _json['workerRegion'] as core.String
              : null,
          workerZone: _json.containsKey('workerZone')
              ? _json['workerZone'] as core.String
              : null,
          zone: _json.containsKey('zone') ? _json['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExperiments != null)
          'additionalExperiments': additionalExperiments!,
        if (additionalUserLabels != null)
          'additionalUserLabels': additionalUserLabels!,
        if (bypassTempDirValidation != null)
          'bypassTempDirValidation': bypassTempDirValidation!,
        if (enableStreamingEngine != null)
          'enableStreamingEngine': enableStreamingEngine!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (machineType != null) 'machineType': machineType!,
        if (maxWorkers != null) 'maxWorkers': maxWorkers!,
        if (network != null) 'network': network!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tempLocation != null) 'tempLocation': tempLocation!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// Details of the schedule the pipeline runs on.
class GoogleCloudDatapipelinesV1ScheduleSpec {
  /// When the next Scheduler job is going to run.
  ///
  /// Output only.
  core.String? nextJobTime;

  /// Unix-cron format of the schedule.
  ///
  /// This information is retrieved from the linked Cloud Scheduler.
  core.String? schedule;

  /// Timezone ID.
  ///
  /// This matches the timezone IDs used by the Cloud Scheduler API. If empty,
  /// UTC time is assumed.
  core.String? timeZone;

  GoogleCloudDatapipelinesV1ScheduleSpec({
    this.nextJobTime,
    this.schedule,
    this.timeZone,
  });

  GoogleCloudDatapipelinesV1ScheduleSpec.fromJson(core.Map _json)
      : this(
          nextJobTime: _json.containsKey('nextJobTime')
              ? _json['nextJobTime'] as core.String
              : null,
          schedule: _json.containsKey('schedule')
              ? _json['schedule'] as core.String
              : null,
          timeZone: _json.containsKey('timeZone')
              ? _json['timeZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextJobTime != null) 'nextJobTime': nextJobTime!,
        if (schedule != null) 'schedule': schedule!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
}

/// The version of the SDK used to run the job.
class GoogleCloudDatapipelinesV1SdkVersion {
  /// The support status for this SDK version.
  /// Possible string values are:
  /// - "UNKNOWN" : Dataflow is unaware of this version.
  /// - "SUPPORTED" : This is a known version of an SDK, and is supported.
  /// - "STALE" : A newer version of the SDK exists, and an update is
  /// recommended.
  /// - "DEPRECATED" : This version of the SDK is deprecated and will eventually
  /// be unsupported.
  /// - "UNSUPPORTED" : Support for this SDK version has ended and it should no
  /// longer be used.
  core.String? sdkSupportStatus;

  /// The version of the SDK used to run the job.
  core.String? version;

  /// A readable string describing the version of the SDK.
  core.String? versionDisplayName;

  GoogleCloudDatapipelinesV1SdkVersion({
    this.sdkSupportStatus,
    this.version,
    this.versionDisplayName,
  });

  GoogleCloudDatapipelinesV1SdkVersion.fromJson(core.Map _json)
      : this(
          sdkSupportStatus: _json.containsKey('sdkSupportStatus')
              ? _json['sdkSupportStatus'] as core.String
              : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.String
              : null,
          versionDisplayName: _json.containsKey('versionDisplayName')
              ? _json['versionDisplayName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sdkSupportStatus != null) 'sdkSupportStatus': sdkSupportStatus!,
        if (version != null) 'version': version!,
        if (versionDisplayName != null)
          'versionDisplayName': versionDisplayName!,
      };
}

/// Request message for StopPipeline.
typedef GoogleCloudDatapipelinesV1StopPipelineRequest = $Empty;

/// Workload details for creating the pipeline jobs.
class GoogleCloudDatapipelinesV1Workload {
  /// Template information and additional parameters needed to launch a Dataflow
  /// job using the flex launch API.
  GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest?
      dataflowFlexTemplateRequest;

  /// Template information and additional parameters needed to launch a Dataflow
  /// job using the standard launch API.
  GoogleCloudDatapipelinesV1LaunchTemplateRequest?
      dataflowLaunchTemplateRequest;

  GoogleCloudDatapipelinesV1Workload({
    this.dataflowFlexTemplateRequest,
    this.dataflowLaunchTemplateRequest,
  });

  GoogleCloudDatapipelinesV1Workload.fromJson(core.Map _json)
      : this(
          dataflowFlexTemplateRequest: _json
                  .containsKey('dataflowFlexTemplateRequest')
              ? GoogleCloudDatapipelinesV1LaunchFlexTemplateRequest.fromJson(
                  _json['dataflowFlexTemplateRequest']
                      as core.Map<core.String, core.dynamic>)
              : null,
          dataflowLaunchTemplateRequest:
              _json.containsKey('dataflowLaunchTemplateRequest')
                  ? GoogleCloudDatapipelinesV1LaunchTemplateRequest.fromJson(
                      _json['dataflowLaunchTemplateRequest']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataflowFlexTemplateRequest != null)
          'dataflowFlexTemplateRequest': dataflowFlexTemplateRequest!,
        if (dataflowLaunchTemplateRequest != null)
          'dataflowLaunchTemplateRequest': dataflowLaunchTemplateRequest!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;
