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

/// Dataflow API - v1b3
///
/// Manages Google Cloud Dataflow projects on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/dataflow>
///
/// Create an instance of [DataflowApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsJobsResource]
///     - [ProjectsJobsDebugResource]
///     - [ProjectsJobsMessagesResource]
///     - [ProjectsJobsWorkItemsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsFlexTemplatesResource]
///     - [ProjectsLocationsJobsResource]
///       - [ProjectsLocationsJobsDebugResource]
///       - [ProjectsLocationsJobsMessagesResource]
///       - [ProjectsLocationsJobsSnapshotsResource]
///       - [ProjectsLocationsJobsStagesResource]
///       - [ProjectsLocationsJobsWorkItemsResource]
///     - [ProjectsLocationsSnapshotsResource]
///     - [ProjectsLocationsTemplatesResource]
///   - [ProjectsSnapshotsResource]
///   - [ProjectsTemplatesResource]
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

/// Manages Google Cloud Dataflow projects on Google Cloud Platform.
class DataflowApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Compute Engine resources
  static const computeScope = 'https://www.googleapis.com/auth/compute';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DataflowApi(http.Client client,
      {core.String rootUrl = 'https://dataflow.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsJobsResource get jobs => ProjectsJobsResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);
  ProjectsSnapshotsResource get snapshots =>
      ProjectsSnapshotsResource(_requester);
  ProjectsTemplatesResource get templates =>
      ProjectsTemplatesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a snapshot.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the snapshot
  /// belongs to.
  ///
  /// [location] - The location that contains this snapshot.
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteSnapshotResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteSnapshotResponse> deleteSnapshots(
    core.String projectId, {
    core.String? location,
    core.String? snapshotId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (snapshotId != null) 'snapshotId': [snapshotId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/snapshots';

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return DeleteSnapshotResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Send a worker_message to the service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project to send the WorkerMessages to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendWorkerMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendWorkerMessagesResponse> workerMessages(
    SendWorkerMessagesRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/WorkerMessages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SendWorkerMessagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsJobsDebugResource get debug => ProjectsJobsDebugResource(_requester);
  ProjectsJobsMessagesResource get messages =>
      ProjectsJobsMessagesResource(_requester);
  ProjectsJobsWorkItemsResource get workItems =>
      ProjectsJobsWorkItemsResource(_requester);

  ProjectsJobsResource(commons.ApiRequester client) : _requester = client;

  /// List the jobs of a project across all regions.
  ///
  /// **Note:** This method doesn't support filtering the list of jobs by name.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the jobs.
  ///
  /// [filter] - The kind of filter to use.
  /// Possible string values are:
  /// - "UNKNOWN" : The filter isn't specified, or is unknown. This returns all
  /// jobs ordered on descending `JobUuid`.
  /// - "ALL" : Returns all running jobs first ordered on creation timestamp,
  /// then returns all terminated jobs ordered on the termination timestamp.
  /// - "TERMINATED" : Filters the jobs that have a terminated state, ordered on
  /// the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`,
  /// `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.
  /// - "ACTIVE" : Filters the jobs that are running ordered on the creation
  /// timestamp.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [name] - Optional. The job name.
  ///
  /// [pageSize] - If there are many jobs, limit response to at most this many.
  /// The actual number of jobs returned will be the lesser of max_responses and
  /// an unspecified server-defined limit.
  ///
  /// [pageToken] - Set this to the 'next_page_token' field of a previous
  /// response to request additional results in a long list.
  ///
  /// [view] - Deprecated. ListJobs always returns summaries now. Use GetJob for
  /// other JobViews.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job. When
  /// the job is in `JOB_STATE_PENDING`, the job has been created but is not yet
  /// running, and not all job information is available. For complete job
  /// information, wait until the job in is `JOB_STATE_RUNNING`. For more
  /// information, see
  /// [JobState](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate).
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
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
  async.Future<ListJobsResponse> aggregated(
    core.String projectId, {
    core.String? filter,
    core.String? location,
    core.String? name,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (location != null) 'location': [location],
      if (name != null) 'name': [name],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs:aggregated';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a Cloud Dataflow job.
  ///
  /// To create a job, we recommend using `projects.locations.jobs.create` with
  /// a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.create` is not recommended, as your job will always
  /// start in `us-central1`. Do not enter confidential information when you
  /// supply string values using the API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [replaceJobId] - Deprecated. This field is now in the Job message.
  ///
  /// [view] - The level of information requested in response.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job. When
  /// the job is in `JOB_STATE_PENDING`, the job has been created but is not yet
  /// running, and not all job information is available. For complete job
  /// information, wait until the job in is `JOB_STATE_RUNNING`. For more
  /// information, see
  /// [JobState](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate).
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
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
    core.String projectId, {
    core.String? location,
    core.String? replaceJobId,
    core.String? view,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (replaceJobId != null) 'replaceJobId': [replaceJobId],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the state of the specified Cloud Dataflow job.
  ///
  /// To get the state of a job, we recommend using
  /// `projects.locations.jobs.get` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.get` is not recommended, as you can only get the
  /// state of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [jobId] - The job ID.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [view] - The level of information requested in response.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job. When
  /// the job is in `JOB_STATE_PENDING`, the job has been created but is not yet
  /// running, and not all job information is available. For complete job
  /// information, wait until the job in is `JOB_STATE_RUNNING`. For more
  /// information, see
  /// [JobState](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate).
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
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
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request the job status.
  ///
  /// To request the status of a job, we recommend using
  /// `projects.locations.jobs.getMetrics` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.getMetrics` is not recommended, as you can only
  /// request the status of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [jobId] - The job to get metrics for.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [startTime] - Return only metric data that has changed since this time.
  /// Default is to return all information about all metrics for the job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobMetrics> getMetrics(
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/metrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return JobMetrics.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List the jobs of a project.
  ///
  /// To list the jobs of a project in a region, we recommend using
  /// `projects.locations.jobs.list` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// To list the all jobs across all regions, use `projects.jobs.aggregated`.
  /// Using `projects.jobs.list` is not recommended, because you can only get
  /// the list of jobs that are running in `us-central1`.
  /// `projects.locations.jobs.list` and `projects.jobs.list` support filtering
  /// the list of jobs by name. Filtering by name isn't supported by
  /// `projects.jobs.aggregated`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the jobs.
  ///
  /// [filter] - The kind of filter to use.
  /// Possible string values are:
  /// - "UNKNOWN" : The filter isn't specified, or is unknown. This returns all
  /// jobs ordered on descending `JobUuid`.
  /// - "ALL" : Returns all running jobs first ordered on creation timestamp,
  /// then returns all terminated jobs ordered on the termination timestamp.
  /// - "TERMINATED" : Filters the jobs that have a terminated state, ordered on
  /// the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`,
  /// `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.
  /// - "ACTIVE" : Filters the jobs that are running ordered on the creation
  /// timestamp.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [name] - Optional. The job name.
  ///
  /// [pageSize] - If there are many jobs, limit response to at most this many.
  /// The actual number of jobs returned will be the lesser of max_responses and
  /// an unspecified server-defined limit.
  ///
  /// [pageToken] - Set this to the 'next_page_token' field of a previous
  /// response to request additional results in a long list.
  ///
  /// [view] - Deprecated. ListJobs always returns summaries now. Use GetJob for
  /// other JobViews.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job. When
  /// the job is in `JOB_STATE_PENDING`, the job has been created but is not yet
  /// running, and not all job information is available. For complete job
  /// information, wait until the job in is `JOB_STATE_RUNNING`. For more
  /// information, see
  /// [JobState](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate).
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
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
    core.String projectId, {
    core.String? filter,
    core.String? location,
    core.String? name,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (location != null) 'location': [location],
      if (name != null) 'name': [name],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Snapshot the state of a streaming job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the job to be snapshotted.
  ///
  /// [jobId] - The job to be snapshotted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> snapshot(
    SnapshotJobRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        ':snapshot';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the state of an existing Cloud Dataflow job.
  ///
  /// To update the state of an existing job, we recommend using
  /// `projects.locations.jobs.update` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.update` is not recommended, as you can only update
  /// the state of jobs that are running in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [jobId] - The job ID.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [updateMask] - The list of fields to update relative to Job. If empty,
  /// only RequestedJobState will be considered for update. If the FieldMask is
  /// not empty and RequestedJobState is none/empty, The fields specified in the
  /// update mask will be the only ones considered for update. If both
  /// RequestedJobState and update_mask are specified, an error will be returned
  /// as we cannot update both state and mask.
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
  async.Future<Job> update(
    Job request,
    core.String projectId,
    core.String jobId, {
    core.String? location,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsDebugResource {
  final commons.ApiRequester _requester;

  ProjectsJobsDebugResource(commons.ApiRequester client) : _requester = client;

  /// Get encoded debug configuration for component.
  ///
  /// Not cacheable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project id.
  ///
  /// [jobId] - The job id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetDebugConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetDebugConfigResponse> getConfig(
    GetDebugConfigRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/debug/getConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetDebugConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Send encoded debug capture data for component.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project id.
  ///
  /// [jobId] - The job id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendDebugCaptureResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendDebugCaptureResponse> sendCapture(
    SendDebugCaptureRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/debug/sendCapture';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SendDebugCaptureResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsJobsMessagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Request the job status.
  ///
  /// To request the status of a job, we recommend using
  /// `projects.locations.jobs.messages.list` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.messages.list` is not recommended, as you can only
  /// request the status of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [jobId] - The job to get messages about.
  ///
  /// [endTime] - Return only messages with timestamps \< end_time. The default
  /// is now (i.e. return up to the latest messages available).
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [minimumImportance] - Filter to only get messages with importance \>=
  /// level
  /// Possible string values are:
  /// - "JOB_MESSAGE_IMPORTANCE_UNKNOWN" : The message importance isn't
  /// specified, or is unknown.
  /// - "JOB_MESSAGE_DEBUG" : The message is at the 'debug' level: typically
  /// only useful for software engineers working on the code the job is running.
  /// Typically, Dataflow pipeline runners do not display log messages at this
  /// level by default.
  /// - "JOB_MESSAGE_DETAILED" : The message is at the 'detailed' level:
  /// somewhat verbose, but potentially useful to users. Typically, Dataflow
  /// pipeline runners do not display log messages at this level by default.
  /// These messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_BASIC" : The message is at the 'basic' level: useful for
  /// keeping track of the execution of a Dataflow pipeline. Typically, Dataflow
  /// pipeline runners display log messages at this level by default, and these
  /// messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_WARNING" : The message is at the 'warning' level:
  /// indicating a condition pertaining to a job which may require human
  /// intervention. Typically, Dataflow pipeline runners display log messages at
  /// this level by default, and these messages are displayed by default in the
  /// Dataflow monitoring UI.
  /// - "JOB_MESSAGE_ERROR" : The message is at the 'error' level: indicating a
  /// condition preventing a job from succeeding. Typically, Dataflow pipeline
  /// runners display log messages at this level by default, and these messages
  /// are displayed by default in the Dataflow monitoring UI.
  ///
  /// [pageSize] - If specified, determines the maximum number of messages to
  /// return. If unspecified, the service may choose an appropriate default, or
  /// may return an arbitrarily large number of results.
  ///
  /// [pageToken] - If supplied, this should be the value of next_page_token
  /// returned by an earlier call. This will cause the next page of results to
  /// be returned.
  ///
  /// [startTime] - If specified, return only messages with timestamps \>=
  /// start_time. The default is the job creation time (i.e. beginning of
  /// messages).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobMessagesResponse> list(
    core.String projectId,
    core.String jobId, {
    core.String? endTime,
    core.String? location,
    core.String? minimumImportance,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (location != null) 'location': [location],
      if (minimumImportance != null) 'minimumImportance': [minimumImportance],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/messages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobMessagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsJobsWorkItemsResource {
  final commons.ApiRequester _requester;

  ProjectsJobsWorkItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Leases a dataflow WorkItem to run.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Identifies the project this worker belongs to.
  ///
  /// [jobId] - Identifies the workflow job this worker belongs to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LeaseWorkItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LeaseWorkItemResponse> lease(
    LeaseWorkItemRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/workItems:lease';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LeaseWorkItemResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reports the status of dataflow WorkItems leased by a worker.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the WorkItem's job.
  ///
  /// [jobId] - The job which the WorkItem is part of.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportWorkItemStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportWorkItemStatusResponse> reportStatus(
    ReportWorkItemStatusRequest request,
    core.String projectId,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/workItems:reportStatus';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReportWorkItemStatusResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFlexTemplatesResource get flexTemplates =>
      ProjectsLocationsFlexTemplatesResource(_requester);
  ProjectsLocationsJobsResource get jobs =>
      ProjectsLocationsJobsResource(_requester);
  ProjectsLocationsSnapshotsResource get snapshots =>
      ProjectsLocationsSnapshotsResource(_requester);
  ProjectsLocationsTemplatesResource get templates =>
      ProjectsLocationsTemplatesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Send a worker_message to the service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project to send the WorkerMessages to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendWorkerMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendWorkerMessagesResponse> workerMessages(
    SendWorkerMessagesRequest request,
    core.String projectId,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/WorkerMessages';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SendWorkerMessagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsFlexTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsFlexTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Launch a job with a FlexTemplate.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - Required. The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request. E.g., us-central1, us-west1.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LaunchFlexTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LaunchFlexTemplateResponse> launch(
    LaunchFlexTemplateRequest request,
    core.String projectId,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/flexTemplates:launch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LaunchFlexTemplateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsDebugResource get debug =>
      ProjectsLocationsJobsDebugResource(_requester);
  ProjectsLocationsJobsMessagesResource get messages =>
      ProjectsLocationsJobsMessagesResource(_requester);
  ProjectsLocationsJobsSnapshotsResource get snapshots =>
      ProjectsLocationsJobsSnapshotsResource(_requester);
  ProjectsLocationsJobsStagesResource get stages =>
      ProjectsLocationsJobsStagesResource(_requester);
  ProjectsLocationsJobsWorkItemsResource get workItems =>
      ProjectsLocationsJobsWorkItemsResource(_requester);

  ProjectsLocationsJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Cloud Dataflow job.
  ///
  /// To create a job, we recommend using `projects.locations.jobs.create` with
  /// a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.create` is not recommended, as your job will always
  /// start in `us-central1`. Do not enter confidential information when you
  /// supply string values using the API.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [replaceJobId] - Deprecated. This field is now in the Job message.
  ///
  /// [view] - The level of information requested in response.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job. When
  /// the job is in `JOB_STATE_PENDING`, the job has been created but is not yet
  /// running, and not all job information is available. For complete job
  /// information, wait until the job in is `JOB_STATE_RUNNING`. For more
  /// information, see
  /// [JobState](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate).
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
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
    core.String projectId,
    core.String location, {
    core.String? replaceJobId,
    core.String? view,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (replaceJobId != null) 'replaceJobId': [replaceJobId],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the state of the specified Cloud Dataflow job.
  ///
  /// To get the state of a job, we recommend using
  /// `projects.locations.jobs.get` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.get` is not recommended, as you can only get the
  /// state of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [jobId] - The job ID.
  ///
  /// [view] - The level of information requested in response.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job. When
  /// the job is in `JOB_STATE_PENDING`, the job has been created but is not yet
  /// running, and not all job information is available. For complete job
  /// information, wait until the job in is `JOB_STATE_RUNNING`. For more
  /// information, see
  /// [JobState](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate).
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
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
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request detailed information about the execution status of the job.
  ///
  /// EXPERIMENTAL. This API is subject to change or removal without notice.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job to get execution details for.
  ///
  /// [pageSize] - If specified, determines the maximum number of stages to
  /// return. If unspecified, the service may choose an appropriate default, or
  /// may return an arbitrarily large number of results.
  ///
  /// [pageToken] - If supplied, this should be the value of next_page_token
  /// returned by an earlier call. This will cause the next page of results to
  /// be returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobExecutionDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobExecutionDetails> getExecutionDetails(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/executionDetails';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return JobExecutionDetails.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Request the job status.
  ///
  /// To request the status of a job, we recommend using
  /// `projects.locations.jobs.getMetrics` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.getMetrics` is not recommended, as you can only
  /// request the status of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job to get metrics for.
  ///
  /// [startTime] - Return only metric data that has changed since this time.
  /// Default is to return all information about all metrics for the job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [JobMetrics].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<JobMetrics> getMetrics(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/metrics';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return JobMetrics.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// List the jobs of a project.
  ///
  /// To list the jobs of a project in a region, we recommend using
  /// `projects.locations.jobs.list` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// To list the all jobs across all regions, use `projects.jobs.aggregated`.
  /// Using `projects.jobs.list` is not recommended, because you can only get
  /// the list of jobs that are running in `us-central1`.
  /// `projects.locations.jobs.list` and `projects.jobs.list` support filtering
  /// the list of jobs by name. Filtering by name isn't supported by
  /// `projects.jobs.aggregated`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the jobs.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [filter] - The kind of filter to use.
  /// Possible string values are:
  /// - "UNKNOWN" : The filter isn't specified, or is unknown. This returns all
  /// jobs ordered on descending `JobUuid`.
  /// - "ALL" : Returns all running jobs first ordered on creation timestamp,
  /// then returns all terminated jobs ordered on the termination timestamp.
  /// - "TERMINATED" : Filters the jobs that have a terminated state, ordered on
  /// the termination timestamp. Example terminated states: `JOB_STATE_STOPPED`,
  /// `JOB_STATE_UPDATED`, `JOB_STATE_DRAINED`, etc.
  /// - "ACTIVE" : Filters the jobs that are running ordered on the creation
  /// timestamp.
  ///
  /// [name] - Optional. The job name.
  ///
  /// [pageSize] - If there are many jobs, limit response to at most this many.
  /// The actual number of jobs returned will be the lesser of max_responses and
  /// an unspecified server-defined limit.
  ///
  /// [pageToken] - Set this to the 'next_page_token' field of a previous
  /// response to request additional results in a long list.
  ///
  /// [view] - Deprecated. ListJobs always returns summaries now. Use GetJob for
  /// other JobViews.
  /// Possible string values are:
  /// - "JOB_VIEW_UNKNOWN" : The job view to return isn't specified, or is
  /// unknown. Responses will contain at least the `JOB_VIEW_SUMMARY`
  /// information, and may contain additional information.
  /// - "JOB_VIEW_SUMMARY" : Request summary information only: Project ID, Job
  /// ID, job name, job type, job status, start/end time, and Cloud SDK version
  /// details.
  /// - "JOB_VIEW_ALL" : Request all information available for this job. When
  /// the job is in `JOB_STATE_PENDING`, the job has been created but is not yet
  /// running, and not all job information is available. For complete job
  /// information, wait until the job in is `JOB_STATE_RUNNING`. For more
  /// information, see
  /// [JobState](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#jobstate).
  /// - "JOB_VIEW_DESCRIPTION" : Request summary info and limited job
  /// description data for steps, labels and environment.
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
    core.String projectId,
    core.String location, {
    core.String? filter,
    core.String? name,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (name != null) 'name': [name],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Snapshot the state of a streaming job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the job to be snapshotted.
  ///
  /// [location] - The location that contains this job.
  ///
  /// [jobId] - The job to be snapshotted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> snapshot(
    SnapshotJobRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        ':snapshot';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the state of an existing Cloud Dataflow job.
  ///
  /// To update the state of an existing job, we recommend using
  /// `projects.locations.jobs.update` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.update` is not recommended, as you can only update
  /// the state of jobs that are running in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the job belongs
  /// to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// [jobId] - The job ID.
  ///
  /// [updateMask] - The list of fields to update relative to Job. If empty,
  /// only RequestedJobState will be considered for update. If the FieldMask is
  /// not empty and RequestedJobState is none/empty, The fields specified in the
  /// update mask will be the only ones considered for update. If both
  /// RequestedJobState and update_mask are specified, an error will be returned
  /// as we cannot update both state and mask.
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
  async.Future<Job> update(
    Job request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId');

    final response_ = await _requester.request(
      url_,
      'PUT',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsDebugResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsDebugResource(commons.ApiRequester client)
      : _requester = client;

  /// Get encoded debug configuration for component.
  ///
  /// Not cacheable.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetDebugConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetDebugConfigResponse> getConfig(
    GetDebugConfigRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/debug/getConfig';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetDebugConfigResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Send encoded debug capture data for component.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job id.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SendDebugCaptureResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SendDebugCaptureResponse> sendCapture(
    SendDebugCaptureRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/debug/sendCapture';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SendDebugCaptureResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsMessagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsMessagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Request the job status.
  ///
  /// To request the status of a job, we recommend using
  /// `projects.locations.jobs.messages.list` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.jobs.messages.list` is not recommended, as you can only
  /// request the status of jobs that are running in `us-central1`.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job to get messages about.
  ///
  /// [endTime] - Return only messages with timestamps \< end_time. The default
  /// is now (i.e. return up to the latest messages available).
  ///
  /// [minimumImportance] - Filter to only get messages with importance \>=
  /// level
  /// Possible string values are:
  /// - "JOB_MESSAGE_IMPORTANCE_UNKNOWN" : The message importance isn't
  /// specified, or is unknown.
  /// - "JOB_MESSAGE_DEBUG" : The message is at the 'debug' level: typically
  /// only useful for software engineers working on the code the job is running.
  /// Typically, Dataflow pipeline runners do not display log messages at this
  /// level by default.
  /// - "JOB_MESSAGE_DETAILED" : The message is at the 'detailed' level:
  /// somewhat verbose, but potentially useful to users. Typically, Dataflow
  /// pipeline runners do not display log messages at this level by default.
  /// These messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_BASIC" : The message is at the 'basic' level: useful for
  /// keeping track of the execution of a Dataflow pipeline. Typically, Dataflow
  /// pipeline runners display log messages at this level by default, and these
  /// messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_WARNING" : The message is at the 'warning' level:
  /// indicating a condition pertaining to a job which may require human
  /// intervention. Typically, Dataflow pipeline runners display log messages at
  /// this level by default, and these messages are displayed by default in the
  /// Dataflow monitoring UI.
  /// - "JOB_MESSAGE_ERROR" : The message is at the 'error' level: indicating a
  /// condition preventing a job from succeeding. Typically, Dataflow pipeline
  /// runners display log messages at this level by default, and these messages
  /// are displayed by default in the Dataflow monitoring UI.
  ///
  /// [pageSize] - If specified, determines the maximum number of messages to
  /// return. If unspecified, the service may choose an appropriate default, or
  /// may return an arbitrarily large number of results.
  ///
  /// [pageToken] - If supplied, this should be the value of next_page_token
  /// returned by an earlier call. This will cause the next page of results to
  /// be returned.
  ///
  /// [startTime] - If specified, return only messages with timestamps \>=
  /// start_time. The default is the job creation time (i.e. beginning of
  /// messages).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListJobMessagesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListJobMessagesResponse> list(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? endTime,
    core.String? minimumImportance,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (minimumImportance != null) 'minimumImportance': [minimumImportance],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/messages';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListJobMessagesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsSnapshotsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists snapshots.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID to list snapshots for.
  ///
  /// [location] - The location to list snapshots in.
  ///
  /// [jobId] - If specified, list snapshots created from this job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotsResponse> list(
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/snapshots';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSnapshotsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsStagesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsStagesResource(commons.ApiRequester client)
      : _requester = client;

  /// Request detailed information about the execution status of a stage of the
  /// job.
  ///
  /// EXPERIMENTAL. This API is subject to change or removal without notice.
  ///
  /// Request parameters:
  ///
  /// [projectId] - A project id.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  ///
  /// [jobId] - The job to get execution details for.
  ///
  /// [stageId] - The stage for which to fetch information.
  ///
  /// [endTime] - Upper time bound of work items to include, by start time.
  ///
  /// [pageSize] - If specified, determines the maximum number of work items to
  /// return. If unspecified, the service may choose an appropriate default, or
  /// may return an arbitrarily large number of results.
  ///
  /// [pageToken] - If supplied, this should be the value of next_page_token
  /// returned by an earlier call. This will cause the next page of results to
  /// be returned.
  ///
  /// [startTime] - Lower time bound of work items to include, by start time.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StageExecutionDetails].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StageExecutionDetails> getExecutionDetails(
    core.String projectId,
    core.String location,
    core.String jobId,
    core.String stageId, {
    core.String? endTime,
    core.int? pageSize,
    core.String? pageToken,
    core.String? startTime,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (startTime != null) 'startTime': [startTime],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/stages/' +
        commons.escapeVariable('$stageId') +
        '/executionDetails';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return StageExecutionDetails.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsJobsWorkItemsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsJobsWorkItemsResource(commons.ApiRequester client)
      : _requester = client;

  /// Leases a dataflow WorkItem to run.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Identifies the project this worker belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the WorkItem's job.
  ///
  /// [jobId] - Identifies the workflow job this worker belongs to.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LeaseWorkItemResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LeaseWorkItemResponse> lease(
    LeaseWorkItemRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/workItems:lease';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LeaseWorkItemResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reports the status of dataflow WorkItems leased by a worker.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project which owns the WorkItem's job.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the WorkItem's job.
  ///
  /// [jobId] - The job which the WorkItem is part of.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ReportWorkItemStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ReportWorkItemStatusResponse> reportStatus(
    ReportWorkItemStatusRequest request,
    core.String projectId,
    core.String location,
    core.String jobId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/jobs/' +
        commons.escapeVariable('$jobId') +
        '/workItems:reportStatus';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ReportWorkItemStatusResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSnapshotsResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a snapshot.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the snapshot
  /// belongs to.
  ///
  /// [location] - The location that contains this snapshot.
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DeleteSnapshotResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DeleteSnapshotResponse> delete(
    core.String projectId,
    core.String location,
    core.String snapshotId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/snapshots/' +
        commons.escapeVariable('$snapshotId');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return DeleteSnapshotResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets information about a snapshot.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the snapshot
  /// belongs to.
  ///
  /// [location] - The location that contains this snapshot.
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> get(
    core.String projectId,
    core.String location,
    core.String snapshotId, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/snapshots/' +
        commons.escapeVariable('$snapshotId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists snapshots.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID to list snapshots for.
  ///
  /// [location] - The location to list snapshots in.
  ///
  /// [jobId] - If specified, list snapshots created from this job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotsResponse> list(
    core.String projectId,
    core.String location, {
    core.String? jobId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/snapshots';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSnapshotsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsTemplatesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Cloud Dataflow job from a template.
  ///
  /// Do not enter confidential information when you supply string values using
  /// the API. To create a job, we recommend using
  /// `projects.locations.templates.create` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.templates.create` is not recommended, because your job
  /// will always start in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
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
    CreateJobFromTemplateRequest request,
    core.String projectId,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/templates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the template associated with a template.
  ///
  /// To get the template, we recommend using `projects.locations.templates.get`
  /// with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.templates.get` is not recommended, because only templates
  /// that are running in `us-central1` are retrieved.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [gcsPath] - Required. A Cloud Storage path to the template from which to
  /// create the job. Must be valid Cloud Storage URL, beginning with 'gs://'.
  ///
  /// [view] - The view to retrieve. Defaults to METADATA_ONLY.
  /// Possible string values are:
  /// - "METADATA_ONLY" : Template view that retrieves only the metadata
  /// associated with the template.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetTemplateResponse> get(
    core.String projectId,
    core.String location, {
    core.String? gcsPath,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gcsPath != null) 'gcsPath': [gcsPath],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/templates:get';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetTemplateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Launches a template.
  ///
  /// To launch a template, we recommend using
  /// `projects.locations.templates.launch` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.templates.launch` is not recommended, because jobs
  /// launched from the template will always start in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [dynamicTemplate_gcsPath] - Path to the dynamic template specification
  /// file on Cloud Storage. The file must be a JSON serialized
  /// `DynamicTemplateFileSpec` object.
  ///
  /// [dynamicTemplate_stagingLocation] - Cloud Storage path for staging
  /// dependencies. Must be a valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// [gcsPath] - A Cloud Storage path to the template to use to create the job.
  /// Must be valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// [validateOnly] - If true, the request is validated but not actually
  /// executed. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LaunchTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LaunchTemplateResponse> launch(
    LaunchTemplateParameters request,
    core.String projectId,
    core.String location, {
    core.String? dynamicTemplate_gcsPath,
    core.String? dynamicTemplate_stagingLocation,
    core.String? gcsPath,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dynamicTemplate_gcsPath != null)
        'dynamicTemplate.gcsPath': [dynamicTemplate_gcsPath],
      if (dynamicTemplate_stagingLocation != null)
        'dynamicTemplate.stagingLocation': [dynamicTemplate_stagingLocation],
      if (gcsPath != null) 'gcsPath': [gcsPath],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/locations/' +
        commons.escapeVariable('$location') +
        '/templates:launch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LaunchTemplateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsSnapshotsResource(commons.ApiRequester client) : _requester = client;

  /// Gets information about a snapshot.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The ID of the Cloud Platform project that the snapshot
  /// belongs to.
  ///
  /// [snapshotId] - The ID of the snapshot.
  ///
  /// [location] - The location that contains this snapshot.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Snapshot].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Snapshot> get(
    core.String projectId,
    core.String snapshotId, {
    core.String? location,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/snapshots/' +
        commons.escapeVariable('$snapshotId');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists snapshots.
  ///
  /// Request parameters:
  ///
  /// [projectId] - The project ID to list snapshots for.
  ///
  /// [jobId] - If specified, list snapshots created from this job.
  ///
  /// [location] - The location to list snapshots in.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSnapshotsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSnapshotsResponse> list(
    core.String projectId, {
    core.String? jobId,
    core.String? location,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (jobId != null) 'jobId': [jobId],
      if (location != null) 'location': [location],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/snapshots';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSnapshotsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsTemplatesResource {
  final commons.ApiRequester _requester;

  ProjectsTemplatesResource(commons.ApiRequester client) : _requester = client;

  /// Creates a Cloud Dataflow job from a template.
  ///
  /// Do not enter confidential information when you supply string values using
  /// the API. To create a job, we recommend using
  /// `projects.locations.templates.create` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.templates.create` is not recommended, because your job
  /// will always start in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
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
    CreateJobFromTemplateRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1b3/projects/' + commons.escapeVariable('$projectId') + '/templates';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Job.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get the template associated with a template.
  ///
  /// To get the template, we recommend using `projects.locations.templates.get`
  /// with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.templates.get` is not recommended, because only templates
  /// that are running in `us-central1` are retrieved.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [gcsPath] - Required. A Cloud Storage path to the template from which to
  /// create the job. Must be valid Cloud Storage URL, beginning with 'gs://'.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [view] - The view to retrieve. Defaults to METADATA_ONLY.
  /// Possible string values are:
  /// - "METADATA_ONLY" : Template view that retrieves only the metadata
  /// associated with the template.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetTemplateResponse> get(
    core.String projectId, {
    core.String? gcsPath,
    core.String? location,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (gcsPath != null) 'gcsPath': [gcsPath],
      if (location != null) 'location': [location],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/templates:get';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetTemplateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Launches a template.
  ///
  /// To launch a template, we recommend using
  /// `projects.locations.templates.launch` with a
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints).
  /// Using `projects.templates.launch` is not recommended, because jobs
  /// launched from the template will always start in `us-central1`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Cloud Platform project that the job
  /// belongs to.
  ///
  /// [dynamicTemplate_gcsPath] - Path to the dynamic template specification
  /// file on Cloud Storage. The file must be a JSON serialized
  /// `DynamicTemplateFileSpec` object.
  ///
  /// [dynamicTemplate_stagingLocation] - Cloud Storage path for staging
  /// dependencies. Must be a valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// [gcsPath] - A Cloud Storage path to the template to use to create the job.
  /// Must be valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// [location] - The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  ///
  /// [validateOnly] - If true, the request is validated but not actually
  /// executed. Defaults to false.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [LaunchTemplateResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<LaunchTemplateResponse> launch(
    LaunchTemplateParameters request,
    core.String projectId, {
    core.String? dynamicTemplate_gcsPath,
    core.String? dynamicTemplate_stagingLocation,
    core.String? gcsPath,
    core.String? location,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (dynamicTemplate_gcsPath != null)
        'dynamicTemplate.gcsPath': [dynamicTemplate_gcsPath],
      if (dynamicTemplate_stagingLocation != null)
        'dynamicTemplate.stagingLocation': [dynamicTemplate_stagingLocation],
      if (gcsPath != null) 'gcsPath': [gcsPath],
      if (location != null) 'location': [location],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1b3/projects/' +
        commons.escapeVariable('$projectId') +
        '/templates:launch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return LaunchTemplateResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Obsolete in favor of ApproximateReportedProgress and
/// ApproximateSplitRequest.
class ApproximateProgress {
  /// Obsolete.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.double? percentComplete;

  /// Obsolete.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Position? position;

  /// Obsolete.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? remainingTime;

  ApproximateProgress({
    this.percentComplete,
    this.position,
    this.remainingTime,
  });

  ApproximateProgress.fromJson(core.Map json_)
      : this(
          percentComplete: (json_['percentComplete'] as core.num?)?.toDouble(),
          position: json_.containsKey('position')
              ? Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          remainingTime: json_['remainingTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (percentComplete != null) 'percentComplete': percentComplete!,
        if (position != null) 'position': position!,
        if (remainingTime != null) 'remainingTime': remainingTime!,
      };
}

/// A progress measurement of a WorkItem by a worker.
class ApproximateReportedProgress {
  /// Total amount of parallelism in the portion of input of this task that has
  /// already been consumed and is no longer active.
  ///
  /// In the first two examples above (see remaining_parallelism), the value
  /// should be 29 or 2 respectively. The sum of remaining_parallelism and
  /// consumed_parallelism should equal the total amount of parallelism in this
  /// work item. If specified, must be finite.
  ReportedParallelism? consumedParallelism;

  /// Completion as fraction of the input consumed, from 0.0 (beginning, nothing
  /// consumed), to 1.0 (end of the input, entire input consumed).
  core.double? fractionConsumed;

  /// A Position within the work to represent a progress.
  Position? position;

  /// Total amount of parallelism in the input of this task that remains, (i.e.
  /// can be delegated to this task and any new tasks via dynamic splitting).
  ///
  /// Always at least 1 for non-finished work items and 0 for finished. "Amount
  /// of parallelism" refers to how many non-empty parts of the input can be
  /// read in parallel. This does not necessarily equal number of records. An
  /// input that can be read in parallel down to the individual records is
  /// called "perfectly splittable". An example of non-perfectly parallelizable
  /// input is a block-compressed file format where a block of records has to be
  /// read as a whole, but different blocks can be read in parallel. Examples: *
  /// If we are processing record #30 (starting at 1) out of 50 in a perfectly
  /// splittable 50-record input, this value should be 21 (20 remaining + 1
  /// current). * If we are reading through block 3 in a block-compressed file
  /// consisting of 5 blocks, this value should be 3 (since blocks 4 and 5 can
  /// be processed in parallel by new tasks via dynamic splitting and the
  /// current task remains processing block 3). * If we are reading through the
  /// last block in a block-compressed file, or reading or processing the last
  /// record in a perfectly splittable input, this value should be 1, because
  /// apart from the current task, no additional remainder can be split off.
  ReportedParallelism? remainingParallelism;

  ApproximateReportedProgress({
    this.consumedParallelism,
    this.fractionConsumed,
    this.position,
    this.remainingParallelism,
  });

  ApproximateReportedProgress.fromJson(core.Map json_)
      : this(
          consumedParallelism: json_.containsKey('consumedParallelism')
              ? ReportedParallelism.fromJson(json_['consumedParallelism']
                  as core.Map<core.String, core.dynamic>)
              : null,
          fractionConsumed:
              (json_['fractionConsumed'] as core.num?)?.toDouble(),
          position: json_.containsKey('position')
              ? Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          remainingParallelism: json_.containsKey('remainingParallelism')
              ? ReportedParallelism.fromJson(json_['remainingParallelism']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumedParallelism != null)
          'consumedParallelism': consumedParallelism!,
        if (fractionConsumed != null) 'fractionConsumed': fractionConsumed!,
        if (position != null) 'position': position!,
        if (remainingParallelism != null)
          'remainingParallelism': remainingParallelism!,
      };
}

/// A suggestion by the service to the worker to dynamically split the WorkItem.
class ApproximateSplitRequest {
  /// A fraction at which to split the work item, from 0.0 (beginning of the
  /// input) to 1.0 (end of the input).
  core.double? fractionConsumed;

  /// The fraction of the remainder of work to split the work item at, from 0.0
  /// (split at the current position) to 1.0 (end of the input).
  core.double? fractionOfRemainder;

  /// A Position at which to split the work item.
  Position? position;

  ApproximateSplitRequest({
    this.fractionConsumed,
    this.fractionOfRemainder,
    this.position,
  });

  ApproximateSplitRequest.fromJson(core.Map json_)
      : this(
          fractionConsumed:
              (json_['fractionConsumed'] as core.num?)?.toDouble(),
          fractionOfRemainder:
              (json_['fractionOfRemainder'] as core.num?)?.toDouble(),
          position: json_.containsKey('position')
              ? Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fractionConsumed != null) 'fractionConsumed': fractionConsumed!,
        if (fractionOfRemainder != null)
          'fractionOfRemainder': fractionOfRemainder!,
        if (position != null) 'position': position!,
      };
}

/// A structured message reporting an autoscaling decision made by the Dataflow
/// service.
class AutoscalingEvent {
  /// The current number of workers the job has.
  core.String? currentNumWorkers;

  /// A message describing why the system decided to adjust the current number
  /// of workers, why it failed, or why the system decided to not make any
  /// changes to the number of workers.
  StructuredMessage? description;

  /// The type of autoscaling event to report.
  /// Possible string values are:
  /// - "TYPE_UNKNOWN" : Default type for the enum. Value should never be
  /// returned.
  /// - "TARGET_NUM_WORKERS_CHANGED" : The TARGET_NUM_WORKERS_CHANGED type
  /// should be used when the target worker pool size has changed at the start
  /// of an actuation. An event should always be specified as
  /// TARGET_NUM_WORKERS_CHANGED if it reflects a change in the
  /// target_num_workers.
  /// - "CURRENT_NUM_WORKERS_CHANGED" : The CURRENT_NUM_WORKERS_CHANGED type
  /// should be used when actual worker pool size has been changed, but the
  /// target_num_workers has not changed.
  /// - "ACTUATION_FAILURE" : The ACTUATION_FAILURE type should be used when we
  /// want to report an error to the user indicating why the current number of
  /// workers in the pool could not be changed. Displayed in the current status
  /// and history widgets.
  /// - "NO_CHANGE" : Used when we want to report to the user a reason why we
  /// are not currently adjusting the number of workers. Should specify both
  /// target_num_workers, current_num_workers and a decision_message.
  core.String? eventType;

  /// The target number of workers the worker pool wants to resize to use.
  core.String? targetNumWorkers;

  /// The time this event was emitted to indicate a new target or current
  /// num_workers value.
  core.String? time;

  /// A short and friendly name for the worker pool this event refers to.
  core.String? workerPool;

  AutoscalingEvent({
    this.currentNumWorkers,
    this.description,
    this.eventType,
    this.targetNumWorkers,
    this.time,
    this.workerPool,
  });

  AutoscalingEvent.fromJson(core.Map json_)
      : this(
          currentNumWorkers: json_['currentNumWorkers'] as core.String?,
          description: json_.containsKey('description')
              ? StructuredMessage.fromJson(
                  json_['description'] as core.Map<core.String, core.dynamic>)
              : null,
          eventType: json_['eventType'] as core.String?,
          targetNumWorkers: json_['targetNumWorkers'] as core.String?,
          time: json_['time'] as core.String?,
          workerPool: json_['workerPool'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentNumWorkers != null) 'currentNumWorkers': currentNumWorkers!,
        if (description != null) 'description': description!,
        if (eventType != null) 'eventType': eventType!,
        if (targetNumWorkers != null) 'targetNumWorkers': targetNumWorkers!,
        if (time != null) 'time': time!,
        if (workerPool != null) 'workerPool': workerPool!,
      };
}

/// Settings for WorkerPool autoscaling.
class AutoscalingSettings {
  /// The algorithm to use for autoscaling.
  /// Possible string values are:
  /// - "AUTOSCALING_ALGORITHM_UNKNOWN" : The algorithm is unknown, or
  /// unspecified.
  /// - "AUTOSCALING_ALGORITHM_NONE" : Disable autoscaling.
  /// - "AUTOSCALING_ALGORITHM_BASIC" : Increase worker count over time to
  /// reduce job execution time.
  core.String? algorithm;

  /// The maximum number of workers to cap scaling at.
  core.int? maxNumWorkers;

  AutoscalingSettings({
    this.algorithm,
    this.maxNumWorkers,
  });

  AutoscalingSettings.fromJson(core.Map json_)
      : this(
          algorithm: json_['algorithm'] as core.String?,
          maxNumWorkers: json_['maxNumWorkers'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (algorithm != null) 'algorithm': algorithm!,
        if (maxNumWorkers != null) 'maxNumWorkers': maxNumWorkers!,
      };
}

/// Exponential buckets where the growth factor between buckets is
/// `2**(2**-scale)`.
///
/// e.g. for `scale=1` growth factor is `2**(2**(-1))=sqrt(2)`. `n` buckets will
/// have the following boundaries. - 0th: \[0, gf) - i in \[1, n-1\]: \[gf^(i),
/// gf^(i+1))
class Base2Exponent {
  /// Must be greater than 0.
  core.int? numberOfBuckets;

  /// Must be between -3 and 3.
  ///
  /// This forces the growth factor of the bucket boundaries to be between
  /// `2^(1/8)` and `256`.
  core.int? scale;

  Base2Exponent({
    this.numberOfBuckets,
    this.scale,
  });

  Base2Exponent.fromJson(core.Map json_)
      : this(
          numberOfBuckets: json_['numberOfBuckets'] as core.int?,
          scale: json_['scale'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numberOfBuckets != null) 'numberOfBuckets': numberOfBuckets!,
        if (scale != null) 'scale': scale!,
      };
}

/// Metadata for a BigQuery connector used by the job.
class BigQueryIODetails {
  /// Dataset accessed in the connection.
  core.String? dataset;

  /// Project accessed in the connection.
  core.String? projectId;

  /// Query used to access data in the connection.
  core.String? query;

  /// Table accessed in the connection.
  core.String? table;

  BigQueryIODetails({
    this.dataset,
    this.projectId,
    this.query,
    this.table,
  });

  BigQueryIODetails.fromJson(core.Map json_)
      : this(
          dataset: json_['dataset'] as core.String?,
          projectId: json_['projectId'] as core.String?,
          query: json_['query'] as core.String?,
          table: json_['table'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataset != null) 'dataset': dataset!,
        if (projectId != null) 'projectId': projectId!,
        if (query != null) 'query': query!,
        if (table != null) 'table': table!,
      };
}

/// Metadata for a Cloud Bigtable connector used by the job.
class BigTableIODetails {
  /// InstanceId accessed in the connection.
  core.String? instanceId;

  /// ProjectId accessed in the connection.
  core.String? projectId;

  /// TableId accessed in the connection.
  core.String? tableId;

  BigTableIODetails({
    this.instanceId,
    this.projectId,
    this.tableId,
  });

  BigTableIODetails.fromJson(core.Map json_)
      : this(
          instanceId: json_['instanceId'] as core.String?,
          projectId: json_['projectId'] as core.String?,
          tableId: json_['tableId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceId != null) 'instanceId': instanceId!,
        if (projectId != null) 'projectId': projectId!,
        if (tableId != null) 'tableId': tableId!,
      };
}

/// The message type used for encoding metrics of type bounded trie.
class BoundedTrie {
  /// The maximum number of elements to store before truncation.
  core.int? bound;

  /// A compact representation of all the elements in this trie.
  BoundedTrieNode? root;

  /// A more efficient representation for metrics consisting of a single value.
  core.List<core.String>? singleton;

  BoundedTrie({
    this.bound,
    this.root,
    this.singleton,
  });

  BoundedTrie.fromJson(core.Map json_)
      : this(
          bound: json_['bound'] as core.int?,
          root: json_.containsKey('root')
              ? BoundedTrieNode.fromJson(
                  json_['root'] as core.Map<core.String, core.dynamic>)
              : null,
          singleton: (json_['singleton'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bound != null) 'bound': bound!,
        if (root != null) 'root': root!,
        if (singleton != null) 'singleton': singleton!,
      };
}

/// A single node in a BoundedTrie.
class BoundedTrieNode {
  /// Children of this node.
  ///
  /// Must be empty if truncated is true.
  core.Map<core.String, BoundedTrieNode>? children;

  /// Whether this node has been truncated.
  ///
  /// A truncated leaf represents possibly many children with the same prefix.
  core.bool? truncated;

  BoundedTrieNode({
    this.children,
    this.truncated,
  });

  BoundedTrieNode.fromJson(core.Map json_)
      : this(
          children:
              (json_['children'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              BoundedTrieNode.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          truncated: json_['truncated'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (children != null) 'children': children!,
        if (truncated != null) 'truncated': truncated!,
      };
}

/// `BucketOptions` describes the bucket boundaries used in the histogram.
class BucketOptions {
  /// Bucket boundaries grow exponentially.
  Base2Exponent? exponential;

  /// Bucket boundaries grow linearly.
  Linear? linear;

  BucketOptions({
    this.exponential,
    this.linear,
  });

  BucketOptions.fromJson(core.Map json_)
      : this(
          exponential: json_.containsKey('exponential')
              ? Base2Exponent.fromJson(
                  json_['exponential'] as core.Map<core.String, core.dynamic>)
              : null,
          linear: json_.containsKey('linear')
              ? Linear.fromJson(
                  json_['linear'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exponential != null) 'exponential': exponential!,
        if (linear != null) 'linear': linear!,
      };
}

/// Modeled after information exposed by /proc/stat.
class CPUTime {
  /// Average CPU utilization rate (% non-idle cpu / second) since previous
  /// sample.
  core.double? rate;

  /// Timestamp of the measurement.
  core.String? timestamp;

  /// Total active CPU time across all cores (ie., non-idle) in milliseconds
  /// since start-up.
  core.String? totalMs;

  CPUTime({
    this.rate,
    this.timestamp,
    this.totalMs,
  });

  CPUTime.fromJson(core.Map json_)
      : this(
          rate: (json_['rate'] as core.num?)?.toDouble(),
          timestamp: json_['timestamp'] as core.String?,
          totalMs: json_['totalMs'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rate != null) 'rate': rate!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (totalMs != null) 'totalMs': totalMs!,
      };
}

/// Description of an interstitial value between transforms in an execution
/// stage.
class ComponentSource {
  /// Dataflow service generated name for this source.
  core.String? name;

  /// User name for the original user transform or collection with which this
  /// source is most closely associated.
  core.String? originalTransformOrCollection;

  /// Human-readable name for this transform; may be user or system generated.
  core.String? userName;

  ComponentSource({
    this.name,
    this.originalTransformOrCollection,
    this.userName,
  });

  ComponentSource.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          originalTransformOrCollection:
              json_['originalTransformOrCollection'] as core.String?,
          userName: json_['userName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (originalTransformOrCollection != null)
          'originalTransformOrCollection': originalTransformOrCollection!,
        if (userName != null) 'userName': userName!,
      };
}

/// Description of a transform executed as part of an execution stage.
class ComponentTransform {
  /// Dataflow service generated name for this source.
  core.String? name;

  /// User name for the original user transform with which this transform is
  /// most closely associated.
  core.String? originalTransform;

  /// Human-readable name for this transform; may be user or system generated.
  core.String? userName;

  ComponentTransform({
    this.name,
    this.originalTransform,
    this.userName,
  });

  ComponentTransform.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          originalTransform: json_['originalTransform'] as core.String?,
          userName: json_['userName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (originalTransform != null) 'originalTransform': originalTransform!,
        if (userName != null) 'userName': userName!,
      };
}

/// All configuration data for a particular Computation.
class ComputationTopology {
  /// The ID of the computation.
  core.String? computationId;

  /// The inputs to the computation.
  core.List<StreamLocation>? inputs;

  /// The key ranges processed by the computation.
  core.List<KeyRangeLocation>? keyRanges;

  /// The outputs from the computation.
  core.List<StreamLocation>? outputs;

  /// The state family values.
  core.List<StateFamilyConfig>? stateFamilies;

  /// The system stage name.
  core.String? systemStageName;

  ComputationTopology({
    this.computationId,
    this.inputs,
    this.keyRanges,
    this.outputs,
    this.stateFamilies,
    this.systemStageName,
  });

  ComputationTopology.fromJson(core.Map json_)
      : this(
          computationId: json_['computationId'] as core.String?,
          inputs: (json_['inputs'] as core.List?)
              ?.map((value) => StreamLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          keyRanges: (json_['keyRanges'] as core.List?)
              ?.map((value) => KeyRangeLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          outputs: (json_['outputs'] as core.List?)
              ?.map((value) => StreamLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          stateFamilies: (json_['stateFamilies'] as core.List?)
              ?.map((value) => StateFamilyConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          systemStageName: json_['systemStageName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computationId != null) 'computationId': computationId!,
        if (inputs != null) 'inputs': inputs!,
        if (keyRanges != null) 'keyRanges': keyRanges!,
        if (outputs != null) 'outputs': outputs!,
        if (stateFamilies != null) 'stateFamilies': stateFamilies!,
        if (systemStageName != null) 'systemStageName': systemStageName!,
      };
}

/// A position that encapsulates an inner position and an index for the inner
/// position.
///
/// A ConcatPosition can be used by a reader of a source that encapsulates a set
/// of other sources.
class ConcatPosition {
  /// Index of the inner source.
  core.int? index;

  /// Position within the inner source.
  Position? position;

  ConcatPosition({
    this.index,
    this.position,
  });

  ConcatPosition.fromJson(core.Map json_)
      : this(
          index: json_['index'] as core.int?,
          position: json_.containsKey('position')
              ? Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (index != null) 'index': index!,
        if (position != null) 'position': position!,
      };
}

/// Container Spec.
class ContainerSpec {
  /// Default runtime environment for the job.
  FlexTemplateRuntimeEnvironment? defaultEnvironment;

  /// Name of the docker container image.
  ///
  /// E.g., gcr.io/project/some-image
  core.String? image;

  /// Cloud Storage path to self-signed certificate of private registry.
  core.String? imageRepositoryCertPath;

  /// Secret Manager secret id for password to authenticate to private registry.
  core.String? imageRepositoryPasswordSecretId;

  /// Secret Manager secret id for username to authenticate to private registry.
  core.String? imageRepositoryUsernameSecretId;

  /// Metadata describing a template including description and validation rules.
  TemplateMetadata? metadata;

  /// SDK info of the Flex Template.
  ///
  /// Required.
  SDKInfo? sdkInfo;

  ContainerSpec({
    this.defaultEnvironment,
    this.image,
    this.imageRepositoryCertPath,
    this.imageRepositoryPasswordSecretId,
    this.imageRepositoryUsernameSecretId,
    this.metadata,
    this.sdkInfo,
  });

  ContainerSpec.fromJson(core.Map json_)
      : this(
          defaultEnvironment: json_.containsKey('defaultEnvironment')
              ? FlexTemplateRuntimeEnvironment.fromJson(
                  json_['defaultEnvironment']
                      as core.Map<core.String, core.dynamic>)
              : null,
          image: json_['image'] as core.String?,
          imageRepositoryCertPath:
              json_['imageRepositoryCertPath'] as core.String?,
          imageRepositoryPasswordSecretId:
              json_['imageRepositoryPasswordSecretId'] as core.String?,
          imageRepositoryUsernameSecretId:
              json_['imageRepositoryUsernameSecretId'] as core.String?,
          metadata: json_.containsKey('metadata')
              ? TemplateMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          sdkInfo: json_.containsKey('sdkInfo')
              ? SDKInfo.fromJson(
                  json_['sdkInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultEnvironment != null)
          'defaultEnvironment': defaultEnvironment!,
        if (image != null) 'image': image!,
        if (imageRepositoryCertPath != null)
          'imageRepositoryCertPath': imageRepositoryCertPath!,
        if (imageRepositoryPasswordSecretId != null)
          'imageRepositoryPasswordSecretId': imageRepositoryPasswordSecretId!,
        if (imageRepositoryUsernameSecretId != null)
          'imageRepositoryUsernameSecretId': imageRepositoryUsernameSecretId!,
        if (metadata != null) 'metadata': metadata!,
        if (sdkInfo != null) 'sdkInfo': sdkInfo!,
      };
}

/// CounterMetadata includes all static non-name non-value counter attributes.
class CounterMetadata {
  /// Human-readable description of the counter semantics.
  core.String? description;

  /// Counter aggregation kind.
  /// Possible string values are:
  /// - "INVALID" : Counter aggregation kind was not set.
  /// - "SUM" : Aggregated value is the sum of all contributed values.
  /// - "MAX" : Aggregated value is the max of all contributed values.
  /// - "MIN" : Aggregated value is the min of all contributed values.
  /// - "MEAN" : Aggregated value is the mean of all contributed values.
  /// - "OR" : Aggregated value represents the logical 'or' of all contributed
  /// values.
  /// - "AND" : Aggregated value represents the logical 'and' of all contributed
  /// values.
  /// - "SET" : Aggregated value is a set of unique contributed values.
  /// - "DISTRIBUTION" : Aggregated value captures statistics about a
  /// distribution.
  /// - "LATEST_VALUE" : Aggregated value tracks the latest value of a variable.
  core.String? kind;

  /// A string referring to the unit type.
  core.String? otherUnits;

  /// System defined Units, see above enum.
  /// Possible string values are:
  /// - "BYTES" : Counter returns a value in bytes.
  /// - "BYTES_PER_SEC" : Counter returns a value in bytes per second.
  /// - "MILLISECONDS" : Counter returns a value in milliseconds.
  /// - "MICROSECONDS" : Counter returns a value in microseconds.
  /// - "NANOSECONDS" : Counter returns a value in nanoseconds.
  /// - "TIMESTAMP_MSEC" : Counter returns a timestamp in milliseconds.
  /// - "TIMESTAMP_USEC" : Counter returns a timestamp in microseconds.
  /// - "TIMESTAMP_NSEC" : Counter returns a timestamp in nanoseconds.
  core.String? standardUnits;

  CounterMetadata({
    this.description,
    this.kind,
    this.otherUnits,
    this.standardUnits,
  });

  CounterMetadata.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          kind: json_['kind'] as core.String?,
          otherUnits: json_['otherUnits'] as core.String?,
          standardUnits: json_['standardUnits'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (kind != null) 'kind': kind!,
        if (otherUnits != null) 'otherUnits': otherUnits!,
        if (standardUnits != null) 'standardUnits': standardUnits!,
      };
}

/// Identifies a counter within a per-job namespace.
///
/// Counters whose structured names are the same get merged into a single value
/// for the job.
class CounterStructuredName {
  /// Name of the optimized step being executed by the workers.
  core.String? componentStepName;

  /// Name of the stage.
  ///
  /// An execution step contains multiple component steps.
  core.String? executionStepName;

  /// Index of an input collection that's being read from/written to as a side
  /// input.
  ///
  /// The index identifies a step's side inputs starting by 1 (e.g. the first
  /// side input has input_index 1, the third has input_index 3). Side inputs
  /// are identified by a pair of (original_step_name, input_index). This field
  /// helps uniquely identify them.
  core.int? inputIndex;

  /// Counter name.
  ///
  /// Not necessarily globally-unique, but unique within the context of the
  /// other fields. Required.
  core.String? name;

  /// One of the standard Origins defined above.
  /// Possible string values are:
  /// - "SYSTEM" : Counter was created by the Dataflow system.
  /// - "USER" : Counter was created by the user.
  core.String? origin;

  /// A string containing a more specific namespace of the counter's origin.
  core.String? originNamespace;

  /// The step name requesting an operation, such as GBK.
  ///
  /// I.e. the ParDo causing a read/write from shuffle to occur, or a read from
  /// side inputs.
  core.String? originalRequestingStepName;

  /// System generated name of the original step in the user's graph, before
  /// optimization.
  core.String? originalStepName;

  /// Portion of this counter, either key or value.
  /// Possible string values are:
  /// - "ALL" : Counter portion has not been set.
  /// - "KEY" : Counter reports a key.
  /// - "VALUE" : Counter reports a value.
  core.String? portion;

  /// ID of a particular worker.
  core.String? workerId;

  CounterStructuredName({
    this.componentStepName,
    this.executionStepName,
    this.inputIndex,
    this.name,
    this.origin,
    this.originNamespace,
    this.originalRequestingStepName,
    this.originalStepName,
    this.portion,
    this.workerId,
  });

  CounterStructuredName.fromJson(core.Map json_)
      : this(
          componentStepName: json_['componentStepName'] as core.String?,
          executionStepName: json_['executionStepName'] as core.String?,
          inputIndex: json_['inputIndex'] as core.int?,
          name: json_['name'] as core.String?,
          origin: json_['origin'] as core.String?,
          originNamespace: json_['originNamespace'] as core.String?,
          originalRequestingStepName:
              json_['originalRequestingStepName'] as core.String?,
          originalStepName: json_['originalStepName'] as core.String?,
          portion: json_['portion'] as core.String?,
          workerId: json_['workerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentStepName != null) 'componentStepName': componentStepName!,
        if (executionStepName != null) 'executionStepName': executionStepName!,
        if (inputIndex != null) 'inputIndex': inputIndex!,
        if (name != null) 'name': name!,
        if (origin != null) 'origin': origin!,
        if (originNamespace != null) 'originNamespace': originNamespace!,
        if (originalRequestingStepName != null)
          'originalRequestingStepName': originalRequestingStepName!,
        if (originalStepName != null) 'originalStepName': originalStepName!,
        if (portion != null) 'portion': portion!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// A single message which encapsulates structured name and metadata for a given
/// counter.
class CounterStructuredNameAndMetadata {
  /// Metadata associated with a counter
  CounterMetadata? metadata;

  /// Structured name of the counter.
  CounterStructuredName? name;

  CounterStructuredNameAndMetadata({
    this.metadata,
    this.name,
  });

  CounterStructuredNameAndMetadata.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? CounterMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name')
              ? CounterStructuredName.fromJson(
                  json_['name'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (name != null) 'name': name!,
      };
}

/// An update to a Counter sent from a worker.
///
/// Next ID: 17
class CounterUpdate {
  /// Boolean value for And, Or.
  core.bool? boolean;

  /// Bounded trie data
  BoundedTrie? boundedTrie;

  /// True if this counter is reported as the total cumulative aggregate value
  /// accumulated since the worker started working on this WorkItem.
  ///
  /// By default this is false, indicating that this counter is reported as a
  /// delta.
  core.bool? cumulative;

  /// Distribution data
  DistributionUpdate? distribution;

  /// Floating point value for Sum, Max, Min.
  core.double? floatingPoint;

  /// List of floating point numbers, for Set.
  FloatingPointList? floatingPointList;

  /// Floating point mean aggregation value for Mean.
  FloatingPointMean? floatingPointMean;

  /// Integer value for Sum, Max, Min.
  SplitInt64? integer;

  /// Gauge data
  IntegerGauge? integerGauge;

  /// List of integers, for Set.
  IntegerList? integerList;

  /// Integer mean aggregation value for Mean.
  IntegerMean? integerMean;

  /// Value for internally-defined counters used by the Dataflow service.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? internal;

  /// Counter name and aggregation type.
  NameAndKind? nameAndKind;

  /// The service-generated short identifier for this counter.
  ///
  /// The short_id -\> (name, metadata) mapping is constant for the lifetime of
  /// a job.
  core.String? shortId;

  /// List of strings, for Set.
  StringList? stringList;

  /// Counter structured name and metadata.
  CounterStructuredNameAndMetadata? structuredNameAndMetadata;

  CounterUpdate({
    this.boolean,
    this.boundedTrie,
    this.cumulative,
    this.distribution,
    this.floatingPoint,
    this.floatingPointList,
    this.floatingPointMean,
    this.integer,
    this.integerGauge,
    this.integerList,
    this.integerMean,
    this.internal,
    this.nameAndKind,
    this.shortId,
    this.stringList,
    this.structuredNameAndMetadata,
  });

  CounterUpdate.fromJson(core.Map json_)
      : this(
          boolean: json_['boolean'] as core.bool?,
          boundedTrie: json_.containsKey('boundedTrie')
              ? BoundedTrie.fromJson(
                  json_['boundedTrie'] as core.Map<core.String, core.dynamic>)
              : null,
          cumulative: json_['cumulative'] as core.bool?,
          distribution: json_.containsKey('distribution')
              ? DistributionUpdate.fromJson(
                  json_['distribution'] as core.Map<core.String, core.dynamic>)
              : null,
          floatingPoint: (json_['floatingPoint'] as core.num?)?.toDouble(),
          floatingPointList: json_.containsKey('floatingPointList')
              ? FloatingPointList.fromJson(json_['floatingPointList']
                  as core.Map<core.String, core.dynamic>)
              : null,
          floatingPointMean: json_.containsKey('floatingPointMean')
              ? FloatingPointMean.fromJson(json_['floatingPointMean']
                  as core.Map<core.String, core.dynamic>)
              : null,
          integer: json_.containsKey('integer')
              ? SplitInt64.fromJson(
                  json_['integer'] as core.Map<core.String, core.dynamic>)
              : null,
          integerGauge: json_.containsKey('integerGauge')
              ? IntegerGauge.fromJson(
                  json_['integerGauge'] as core.Map<core.String, core.dynamic>)
              : null,
          integerList: json_.containsKey('integerList')
              ? IntegerList.fromJson(
                  json_['integerList'] as core.Map<core.String, core.dynamic>)
              : null,
          integerMean: json_.containsKey('integerMean')
              ? IntegerMean.fromJson(
                  json_['integerMean'] as core.Map<core.String, core.dynamic>)
              : null,
          internal: json_['internal'],
          nameAndKind: json_.containsKey('nameAndKind')
              ? NameAndKind.fromJson(
                  json_['nameAndKind'] as core.Map<core.String, core.dynamic>)
              : null,
          shortId: json_['shortId'] as core.String?,
          stringList: json_.containsKey('stringList')
              ? StringList.fromJson(
                  json_['stringList'] as core.Map<core.String, core.dynamic>)
              : null,
          structuredNameAndMetadata:
              json_.containsKey('structuredNameAndMetadata')
                  ? CounterStructuredNameAndMetadata.fromJson(
                      json_['structuredNameAndMetadata']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolean != null) 'boolean': boolean!,
        if (boundedTrie != null) 'boundedTrie': boundedTrie!,
        if (cumulative != null) 'cumulative': cumulative!,
        if (distribution != null) 'distribution': distribution!,
        if (floatingPoint != null) 'floatingPoint': floatingPoint!,
        if (floatingPointList != null) 'floatingPointList': floatingPointList!,
        if (floatingPointMean != null) 'floatingPointMean': floatingPointMean!,
        if (integer != null) 'integer': integer!,
        if (integerGauge != null) 'integerGauge': integerGauge!,
        if (integerList != null) 'integerList': integerList!,
        if (integerMean != null) 'integerMean': integerMean!,
        if (internal != null) 'internal': internal!,
        if (nameAndKind != null) 'nameAndKind': nameAndKind!,
        if (shortId != null) 'shortId': shortId!,
        if (stringList != null) 'stringList': stringList!,
        if (structuredNameAndMetadata != null)
          'structuredNameAndMetadata': structuredNameAndMetadata!,
      };
}

/// A request to create a Cloud Dataflow job from a template.
class CreateJobFromTemplateRequest {
  /// The runtime environment for the job.
  RuntimeEnvironment? environment;

  /// A Cloud Storage path to the template from which to create the job.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// Required.
  core.String? gcsPath;

  /// The job name to use for the created job.
  ///
  /// Required.
  core.String? jobName;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// to which to direct the request.
  core.String? location;

  /// The runtime parameters to pass to the job.
  core.Map<core.String, core.String>? parameters;

  CreateJobFromTemplateRequest({
    this.environment,
    this.gcsPath,
    this.jobName,
    this.location,
    this.parameters,
  });

  CreateJobFromTemplateRequest.fromJson(core.Map json_)
      : this(
          environment: json_.containsKey('environment')
              ? RuntimeEnvironment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsPath: json_['gcsPath'] as core.String?,
          jobName: json_['jobName'] as core.String?,
          location: json_['location'] as core.String?,
          parameters:
              (json_['parameters'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (environment != null) 'environment': environment!,
        if (gcsPath != null) 'gcsPath': gcsPath!,
        if (jobName != null) 'jobName': jobName!,
        if (location != null) 'location': location!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Identifies the location of a custom souce.
class CustomSourceLocation {
  /// Whether this source is stateful.
  core.bool? stateful;

  CustomSourceLocation({
    this.stateful,
  });

  CustomSourceLocation.fromJson(core.Map json_)
      : this(
          stateful: json_['stateful'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stateful != null) 'stateful': stateful!,
      };
}

/// Data disk assignment for a given VM instance.
class DataDiskAssignment {
  /// Mounted data disks.
  ///
  /// The order is important a data disk's 0-based index in this list defines
  /// which persistent directory the disk is mounted to, for example the list of
  /// { "myproject-1014-104817-4c2-harness-0-disk-0" }, {
  /// "myproject-1014-104817-4c2-harness-0-disk-1" }.
  core.List<core.String>? dataDisks;

  /// VM instance name the data disks mounted to, for example
  /// "myproject-1014-104817-4c2-harness-0".
  core.String? vmInstance;

  DataDiskAssignment({
    this.dataDisks,
    this.vmInstance,
  });

  DataDiskAssignment.fromJson(core.Map json_)
      : this(
          dataDisks: (json_['dataDisks'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          vmInstance: json_['vmInstance'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataDisks != null) 'dataDisks': dataDisks!,
        if (vmInstance != null) 'vmInstance': vmInstance!,
      };
}

/// Configuration options for sampling elements.
class DataSamplingConfig {
  /// List of given sampling behaviors to enable.
  ///
  /// For example, specifying behaviors = \[ALWAYS_ON\] samples in-flight
  /// elements but does not sample exceptions. Can be used to specify multiple
  /// behaviors like, behaviors = \[ALWAYS_ON, EXCEPTIONS\] for specifying
  /// periodic sampling and exception sampling. If DISABLED is in the list, then
  /// sampling will be disabled and ignore the other given behaviors. Ordering
  /// does not matter.
  core.List<core.String>? behaviors;

  DataSamplingConfig({
    this.behaviors,
  });

  DataSamplingConfig.fromJson(core.Map json_)
      : this(
          behaviors: (json_['behaviors'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (behaviors != null) 'behaviors': behaviors!,
      };
}

/// Contains per-worker telemetry about the data sampling feature.
class DataSamplingReport {
  /// Delta of bytes written to file from previous report.
  ///
  /// Optional.
  core.String? bytesWrittenDelta;

  /// Delta of bytes sampled from previous report.
  ///
  /// Optional.
  core.String? elementsSampledBytes;

  /// Delta of number of elements sampled from previous report.
  ///
  /// Optional.
  core.String? elementsSampledCount;

  /// Delta of number of samples taken from user code exceptions from previous
  /// report.
  ///
  /// Optional.
  core.String? exceptionsSampledCount;

  /// Delta of number of PCollections sampled from previous report.
  ///
  /// Optional.
  core.String? pcollectionsSampledCount;

  /// Delta of errors counts from persisting the samples from previous report.
  ///
  /// Optional.
  core.String? persistenceErrorsCount;

  /// Delta of errors counts from retrieving, or translating the samples from
  /// previous report.
  ///
  /// Optional.
  core.String? translationErrorsCount;

  DataSamplingReport({
    this.bytesWrittenDelta,
    this.elementsSampledBytes,
    this.elementsSampledCount,
    this.exceptionsSampledCount,
    this.pcollectionsSampledCount,
    this.persistenceErrorsCount,
    this.translationErrorsCount,
  });

  DataSamplingReport.fromJson(core.Map json_)
      : this(
          bytesWrittenDelta: json_['bytesWrittenDelta'] as core.String?,
          elementsSampledBytes: json_['elementsSampledBytes'] as core.String?,
          elementsSampledCount: json_['elementsSampledCount'] as core.String?,
          exceptionsSampledCount:
              json_['exceptionsSampledCount'] as core.String?,
          pcollectionsSampledCount:
              json_['pcollectionsSampledCount'] as core.String?,
          persistenceErrorsCount:
              json_['persistenceErrorsCount'] as core.String?,
          translationErrorsCount:
              json_['translationErrorsCount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bytesWrittenDelta != null) 'bytesWrittenDelta': bytesWrittenDelta!,
        if (elementsSampledBytes != null)
          'elementsSampledBytes': elementsSampledBytes!,
        if (elementsSampledCount != null)
          'elementsSampledCount': elementsSampledCount!,
        if (exceptionsSampledCount != null)
          'exceptionsSampledCount': exceptionsSampledCount!,
        if (pcollectionsSampledCount != null)
          'pcollectionsSampledCount': pcollectionsSampledCount!,
        if (persistenceErrorsCount != null)
          'persistenceErrorsCount': persistenceErrorsCount!,
        if (translationErrorsCount != null)
          'translationErrorsCount': translationErrorsCount!,
      };
}

/// The gauge value of a metric.
class DataflowGaugeValue {
  /// The timestamp when the gauge was recorded.
  core.String? measuredTime;

  /// The value of the gauge.
  core.String? value;

  DataflowGaugeValue({
    this.measuredTime,
    this.value,
  });

  DataflowGaugeValue.fromJson(core.Map json_)
      : this(
          measuredTime: json_['measuredTime'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (measuredTime != null) 'measuredTime': measuredTime!,
        if (value != null) 'value': value!,
      };
}

/// Summary statistics for a population of values.
///
/// HistogramValue contains a sequence of buckets and gives a count of values
/// that fall into each bucket. Bucket boundares are defined by a formula and
/// bucket widths are either fixed or exponentially increasing.
class DataflowHistogramValue {
  /// The number of values in each bucket of the histogram, as described in
  /// `bucket_options`.
  ///
  /// `bucket_counts` should contain N values, where N is the number of buckets
  /// specified in `bucket_options`. If `bucket_counts` has fewer than N values,
  /// the remaining values are assumed to be 0.
  ///
  /// Optional.
  core.List<core.String>? bucketCounts;

  /// Describes the bucket boundaries used in the histogram.
  BucketOptions? bucketOptions;

  /// Number of values recorded in this histogram.
  core.String? count;

  /// Statistics on the values recorded in the histogram that fall out of the
  /// bucket boundaries.
  OutlierStats? outlierStats;

  DataflowHistogramValue({
    this.bucketCounts,
    this.bucketOptions,
    this.count,
    this.outlierStats,
  });

  DataflowHistogramValue.fromJson(core.Map json_)
      : this(
          bucketCounts: (json_['bucketCounts'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          bucketOptions: json_.containsKey('bucketOptions')
              ? BucketOptions.fromJson(
                  json_['bucketOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          count: json_['count'] as core.String?,
          outlierStats: json_.containsKey('outlierStats')
              ? OutlierStats.fromJson(
                  json_['outlierStats'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketCounts != null) 'bucketCounts': bucketCounts!,
        if (bucketOptions != null) 'bucketOptions': bucketOptions!,
        if (count != null) 'count': count!,
        if (outlierStats != null) 'outlierStats': outlierStats!,
      };
}

/// Metadata for a Datastore connector used by the job.
class DatastoreIODetails {
  /// Namespace used in the connection.
  core.String? namespace;

  /// ProjectId accessed in the connection.
  core.String? projectId;

  DatastoreIODetails({
    this.namespace,
    this.projectId,
  });

  DatastoreIODetails.fromJson(core.Map json_)
      : this(
          namespace: json_['namespace'] as core.String?,
          projectId: json_['projectId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namespace != null) 'namespace': namespace!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Describes any options that have an effect on the debugging of pipelines.
class DebugOptions {
  /// Configuration options for sampling elements from a running pipeline.
  DataSamplingConfig? dataSampling;

  /// When true, enables the logging of the literal hot key to the user's Cloud
  /// Logging.
  ///
  /// Optional.
  core.bool? enableHotKeyLogging;

  DebugOptions({
    this.dataSampling,
    this.enableHotKeyLogging,
  });

  DebugOptions.fromJson(core.Map json_)
      : this(
          dataSampling: json_.containsKey('dataSampling')
              ? DataSamplingConfig.fromJson(
                  json_['dataSampling'] as core.Map<core.String, core.dynamic>)
              : null,
          enableHotKeyLogging: json_['enableHotKeyLogging'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSampling != null) 'dataSampling': dataSampling!,
        if (enableHotKeyLogging != null)
          'enableHotKeyLogging': enableHotKeyLogging!,
      };
}

/// Response from deleting a snapshot.
typedef DeleteSnapshotResponse = $Empty;

/// Specification of one of the bundles produced as a result of splitting a
/// Source (e.g. when executing a SourceSplitRequest, or when splitting an
/// active task using WorkItemStatus.dynamic_source_split), relative to the
/// source being split.
class DerivedSource {
  /// What source to base the produced source on (if any).
  /// Possible string values are:
  /// - "SOURCE_DERIVATION_MODE_UNKNOWN" : The source derivation is unknown, or
  /// unspecified.
  /// - "SOURCE_DERIVATION_MODE_INDEPENDENT" : Produce a completely independent
  /// Source with no base.
  /// - "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT" : Produce a Source based on
  /// the Source being split.
  /// - "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT" : Produce a Source based on
  /// the base of the Source being split.
  core.String? derivationMode;

  /// Specification of the source.
  Source? source;

  DerivedSource({
    this.derivationMode,
    this.source,
  });

  DerivedSource.fromJson(core.Map json_)
      : this(
          derivationMode: json_['derivationMode'] as core.String?,
          source: json_.containsKey('source')
              ? Source.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (derivationMode != null) 'derivationMode': derivationMode!,
        if (source != null) 'source': source!,
      };
}

/// Describes the data disk used by a workflow job.
class Disk {
  /// Disk storage type, as defined by Google Compute Engine.
  ///
  /// This must be a disk type appropriate to the project and zone in which the
  /// workers will run. If unknown or unspecified, the service will attempt to
  /// choose a reasonable default. For example, the standard persistent disk
  /// type is a resource name typically ending in "pd-standard". If SSD
  /// persistent disks are available, the resource name typically ends with
  /// "pd-ssd". The actual valid values are defined the Google Compute Engine
  /// API, not by the Cloud Dataflow API; consult the Google Compute Engine
  /// documentation for more information about determining the set of available
  /// disk types for a particular project and zone. Google Compute Engine Disk
  /// types are local to a particular project in a particular zone, and so the
  /// resource name will typically look something like this:
  /// compute.googleapis.com/projects/project-id/zones/zone/diskTypes/pd-standard
  core.String? diskType;

  /// Directory in a VM where disk is mounted.
  core.String? mountPoint;

  /// Size of disk in GB.
  ///
  /// If zero or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.int? sizeGb;

  Disk({
    this.diskType,
    this.mountPoint,
    this.sizeGb,
  });

  Disk.fromJson(core.Map json_)
      : this(
          diskType: json_['diskType'] as core.String?,
          mountPoint: json_['mountPoint'] as core.String?,
          sizeGb: json_['sizeGb'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskType != null) 'diskType': diskType!,
        if (mountPoint != null) 'mountPoint': mountPoint!,
        if (sizeGb != null) 'sizeGb': sizeGb!,
      };
}

/// Data provided with a pipeline or transform to provide descriptive info.
class DisplayData {
  /// Contains value if the data is of a boolean type.
  core.bool? boolValue;

  /// Contains value if the data is of duration type.
  core.String? durationValue;

  /// Contains value if the data is of float type.
  core.double? floatValue;

  /// Contains value if the data is of int64 type.
  core.String? int64Value;

  /// Contains value if the data is of java class type.
  core.String? javaClassValue;

  /// The key identifying the display data.
  ///
  /// This is intended to be used as a label for the display data when viewed in
  /// a dax monitoring system.
  core.String? key;

  /// An optional label to display in a dax UI for the element.
  core.String? label;

  /// The namespace for the key.
  ///
  /// This is usually a class name or programming language namespace (i.e.
  /// python module) which defines the display data. This allows a dax
  /// monitoring system to specially handle the data and perform custom
  /// rendering.
  core.String? namespace;

  /// A possible additional shorter value to display.
  ///
  /// For example a java_class_name_value of com.mypackage.MyDoFn will be stored
  /// with MyDoFn as the short_str_value and com.mypackage.MyDoFn as the
  /// java_class_name value. short_str_value can be displayed and
  /// java_class_name_value will be displayed as a tooltip.
  core.String? shortStrValue;

  /// Contains value if the data is of string type.
  core.String? strValue;

  /// Contains value if the data is of timestamp type.
  core.String? timestampValue;

  /// An optional full URL.
  core.String? url;

  DisplayData({
    this.boolValue,
    this.durationValue,
    this.floatValue,
    this.int64Value,
    this.javaClassValue,
    this.key,
    this.label,
    this.namespace,
    this.shortStrValue,
    this.strValue,
    this.timestampValue,
    this.url,
  });

  DisplayData.fromJson(core.Map json_)
      : this(
          boolValue: json_['boolValue'] as core.bool?,
          durationValue: json_['durationValue'] as core.String?,
          floatValue: (json_['floatValue'] as core.num?)?.toDouble(),
          int64Value: json_['int64Value'] as core.String?,
          javaClassValue: json_['javaClassValue'] as core.String?,
          key: json_['key'] as core.String?,
          label: json_['label'] as core.String?,
          namespace: json_['namespace'] as core.String?,
          shortStrValue: json_['shortStrValue'] as core.String?,
          strValue: json_['strValue'] as core.String?,
          timestampValue: json_['timestampValue'] as core.String?,
          url: json_['url'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (durationValue != null) 'durationValue': durationValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (int64Value != null) 'int64Value': int64Value!,
        if (javaClassValue != null) 'javaClassValue': javaClassValue!,
        if (key != null) 'key': key!,
        if (label != null) 'label': label!,
        if (namespace != null) 'namespace': namespace!,
        if (shortStrValue != null) 'shortStrValue': shortStrValue!,
        if (strValue != null) 'strValue': strValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
        if (url != null) 'url': url!,
      };
}

/// A metric value representing a distribution.
class DistributionUpdate {
  /// The count of the number of elements present in the distribution.
  SplitInt64? count;

  /// (Optional) Histogram of value counts for the distribution.
  Histogram? histogram;

  /// The maximum value present in the distribution.
  SplitInt64? max;

  /// The minimum value present in the distribution.
  SplitInt64? min;

  /// Use an int64 since we'd prefer the added precision.
  ///
  /// If overflow is a common problem we can detect it and use an additional
  /// int64 or a double.
  SplitInt64? sum;

  /// Use a double since the sum of squares is likely to overflow int64.
  core.double? sumOfSquares;

  DistributionUpdate({
    this.count,
    this.histogram,
    this.max,
    this.min,
    this.sum,
    this.sumOfSquares,
  });

  DistributionUpdate.fromJson(core.Map json_)
      : this(
          count: json_.containsKey('count')
              ? SplitInt64.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>)
              : null,
          histogram: json_.containsKey('histogram')
              ? Histogram.fromJson(
                  json_['histogram'] as core.Map<core.String, core.dynamic>)
              : null,
          max: json_.containsKey('max')
              ? SplitInt64.fromJson(
                  json_['max'] as core.Map<core.String, core.dynamic>)
              : null,
          min: json_.containsKey('min')
              ? SplitInt64.fromJson(
                  json_['min'] as core.Map<core.String, core.dynamic>)
              : null,
          sum: json_.containsKey('sum')
              ? SplitInt64.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>)
              : null,
          sumOfSquares: (json_['sumOfSquares'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (histogram != null) 'histogram': histogram!,
        if (max != null) 'max': max!,
        if (min != null) 'min': min!,
        if (sum != null) 'sum': sum!,
        if (sumOfSquares != null) 'sumOfSquares': sumOfSquares!,
      };
}

/// When a task splits using WorkItemStatus.dynamic_source_split, this message
/// describes the two parts of the split relative to the description of the
/// current task's input.
class DynamicSourceSplit {
  /// Primary part (continued to be processed by worker).
  ///
  /// Specified relative to the previously-current source. Becomes current.
  DerivedSource? primary;

  /// Residual part (returned to the pool of work).
  ///
  /// Specified relative to the previously-current source.
  DerivedSource? residual;

  DynamicSourceSplit({
    this.primary,
    this.residual,
  });

  DynamicSourceSplit.fromJson(core.Map json_)
      : this(
          primary: json_.containsKey('primary')
              ? DerivedSource.fromJson(
                  json_['primary'] as core.Map<core.String, core.dynamic>)
              : null,
          residual: json_.containsKey('residual')
              ? DerivedSource.fromJson(
                  json_['residual'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (primary != null) 'primary': primary!,
        if (residual != null) 'residual': residual!,
      };
}

/// Describes the environment in which a Dataflow Job runs.
class Environment {
  /// The type of cluster manager API to use.
  ///
  /// If unknown or unspecified, the service will attempt to choose a reasonable
  /// default. This should be in the form of the API service name, e.g.
  /// "compute.googleapis.com".
  core.String? clusterManagerApiService;

  /// The dataset for the current project where various workflow related tables
  /// are stored.
  ///
  /// The supported resource type is: Google BigQuery:
  /// bigquery.googleapis.com/{dataset}
  ///
  /// Optional.
  core.String? dataset;

  /// Any debugging options to be supplied to the job.
  ///
  /// Optional.
  DebugOptions? debugOptions;

  /// The list of experiments to enable.
  ///
  /// This field should be used for SDK related experiments and not for service
  /// related experiments. The proper field for service related experiments is
  /// service_options.
  core.List<core.String>? experiments;

  /// Which Flexible Resource Scheduling mode to run in.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "FLEXRS_UNSPECIFIED" : Run in the default mode.
  /// - "FLEXRS_SPEED_OPTIMIZED" : Optimize for lower execution time.
  /// - "FLEXRS_COST_OPTIMIZED" : Optimize for lower cost.
  core.String? flexResourceSchedulingGoal;

  /// Experimental settings.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? internalExperiments;

  /// The Cloud Dataflow SDK pipeline options specified by the user.
  ///
  /// These options are passed through the service and are used to recreate the
  /// SDK pipeline options on the worker in a language agnostic and platform
  /// independent way.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? sdkPipelineOptions;

  /// Identity to run virtual machines as.
  ///
  /// Defaults to the default account.
  ///
  /// Optional.
  core.String? serviceAccountEmail;

  /// If set, contains the Cloud KMS key identifier used to encrypt data at
  /// rest, AKA a Customer Managed Encryption Key (CMEK).
  ///
  /// Format:
  /// projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY
  ///
  /// Optional.
  core.String? serviceKmsKeyName;

  /// The list of service options to enable.
  ///
  /// This field should be used for service related experiments only. These
  /// experiments, when graduating to GA, should be replaced by dedicated fields
  /// or become default (i.e. always on).
  ///
  /// Optional.
  core.List<core.String>? serviceOptions;

  /// The shuffle mode used for the job.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SHUFFLE_MODE_UNSPECIFIED" : Shuffle mode information is not available.
  /// - "VM_BASED" : Shuffle is done on the worker VMs.
  /// - "SERVICE_BASED" : Shuffle is done on the service side.
  core.String? shuffleMode;

  /// Specifies the Streaming Engine message processing guarantees.
  ///
  /// Reduces cost and latency but might result in duplicate messages committed
  /// to storage. Designed to run simple mapping streaming ETL jobs at the
  /// lowest cost. For example, Change Data Capture (CDC) to BigQuery is a
  /// canonical use case. For more information, see
  /// [Set the pipeline streaming mode](https://cloud.google.com/dataflow/docs/guides/streaming-modes).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STREAMING_MODE_UNSPECIFIED" : Run in the default mode.
  /// - "STREAMING_MODE_EXACTLY_ONCE" : In this mode, message deduplication is
  /// performed against persistent state to make sure each message is processed
  /// and committed to storage exactly once.
  /// - "STREAMING_MODE_AT_LEAST_ONCE" : Message deduplication is not performed.
  /// Messages might be processed multiple times, and the results are applied
  /// multiple times. Note: Setting this value also enables Streaming Engine and
  /// Streaming Engine resource-based billing.
  core.String? streamingMode;

  /// The prefix of the resources the system should use for temporary storage.
  ///
  /// The system will append the suffix "/temp-{JOBNAME} to this resource
  /// prefix, where {JOBNAME} is the value of the job_name field. The resulting
  /// bucket and object prefix is used as the prefix of the resources used to
  /// store temporary data needed during the job execution. NOTE: This will
  /// override the value in taskrunner_settings. The supported resource type is:
  /// Google Cloud Storage: storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.String? tempStoragePrefix;

  /// Whether the job uses the Streaming Engine resource-based billing model.
  ///
  /// Output only.
  core.bool? useStreamingEngineResourceBasedBilling;

  /// A description of the process that generated the request.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? userAgent;

  /// A structure describing which components and their versions of the service
  /// are required in order to run the job.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? version;

  /// The worker pools.
  ///
  /// At least one "harness" worker pool must be specified in order for the job
  /// to have workers.
  core.List<WorkerPool>? workerPools;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, default to the control plane's region.
  ///
  /// Optional.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane's region is chosen
  /// based on available capacity.
  ///
  /// Optional.
  core.String? workerZone;

  Environment({
    this.clusterManagerApiService,
    this.dataset,
    this.debugOptions,
    this.experiments,
    this.flexResourceSchedulingGoal,
    this.internalExperiments,
    this.sdkPipelineOptions,
    this.serviceAccountEmail,
    this.serviceKmsKeyName,
    this.serviceOptions,
    this.shuffleMode,
    this.streamingMode,
    this.tempStoragePrefix,
    this.useStreamingEngineResourceBasedBilling,
    this.userAgent,
    this.version,
    this.workerPools,
    this.workerRegion,
    this.workerZone,
  });

  Environment.fromJson(core.Map json_)
      : this(
          clusterManagerApiService:
              json_['clusterManagerApiService'] as core.String?,
          dataset: json_['dataset'] as core.String?,
          debugOptions: json_.containsKey('debugOptions')
              ? DebugOptions.fromJson(
                  json_['debugOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          experiments: (json_['experiments'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          flexResourceSchedulingGoal:
              json_['flexResourceSchedulingGoal'] as core.String?,
          internalExperiments: json_.containsKey('internalExperiments')
              ? json_['internalExperiments']
                  as core.Map<core.String, core.dynamic>
              : null,
          sdkPipelineOptions: json_.containsKey('sdkPipelineOptions')
              ? json_['sdkPipelineOptions']
                  as core.Map<core.String, core.dynamic>
              : null,
          serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
          serviceKmsKeyName: json_['serviceKmsKeyName'] as core.String?,
          serviceOptions: (json_['serviceOptions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          shuffleMode: json_['shuffleMode'] as core.String?,
          streamingMode: json_['streamingMode'] as core.String?,
          tempStoragePrefix: json_['tempStoragePrefix'] as core.String?,
          useStreamingEngineResourceBasedBilling:
              json_['useStreamingEngineResourceBasedBilling'] as core.bool?,
          userAgent: json_.containsKey('userAgent')
              ? json_['userAgent'] as core.Map<core.String, core.dynamic>
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.Map<core.String, core.dynamic>
              : null,
          workerPools: (json_['workerPools'] as core.List?)
              ?.map((value) => WorkerPool.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          workerRegion: json_['workerRegion'] as core.String?,
          workerZone: json_['workerZone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterManagerApiService != null)
          'clusterManagerApiService': clusterManagerApiService!,
        if (dataset != null) 'dataset': dataset!,
        if (debugOptions != null) 'debugOptions': debugOptions!,
        if (experiments != null) 'experiments': experiments!,
        if (flexResourceSchedulingGoal != null)
          'flexResourceSchedulingGoal': flexResourceSchedulingGoal!,
        if (internalExperiments != null)
          'internalExperiments': internalExperiments!,
        if (sdkPipelineOptions != null)
          'sdkPipelineOptions': sdkPipelineOptions!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (serviceKmsKeyName != null) 'serviceKmsKeyName': serviceKmsKeyName!,
        if (serviceOptions != null) 'serviceOptions': serviceOptions!,
        if (shuffleMode != null) 'shuffleMode': shuffleMode!,
        if (streamingMode != null) 'streamingMode': streamingMode!,
        if (tempStoragePrefix != null) 'tempStoragePrefix': tempStoragePrefix!,
        if (useStreamingEngineResourceBasedBilling != null)
          'useStreamingEngineResourceBasedBilling':
              useStreamingEngineResourceBasedBilling!,
        if (userAgent != null) 'userAgent': userAgent!,
        if (version != null) 'version': version!,
        if (workerPools != null) 'workerPools': workerPools!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
      };
}

/// A message describing the state of a particular execution stage.
class ExecutionStageState {
  /// The time at which the stage transitioned to this state.
  core.String? currentStateTime;

  /// The name of the execution stage.
  core.String? executionStageName;

  /// Executions stage states allow the same set of values as JobState.
  /// Possible string values are:
  /// - "JOB_STATE_UNKNOWN" : The job's run state isn't specified.
  /// - "JOB_STATE_STOPPED" : `JOB_STATE_STOPPED` indicates that the job has not
  /// yet started to run.
  /// - "JOB_STATE_RUNNING" : `JOB_STATE_RUNNING` indicates that the job is
  /// currently running.
  /// - "JOB_STATE_DONE" : `JOB_STATE_DONE` indicates that the job has
  /// successfully completed. This is a terminal job state. This state may be
  /// set by the Cloud Dataflow service, as a transition from
  /// `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob`
  /// call, if the job has not yet reached a terminal state.
  /// - "JOB_STATE_FAILED" : `JOB_STATE_FAILED` indicates that the job has
  /// failed. This is a terminal job state. This state may only be set by the
  /// Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_CANCELLED" : `JOB_STATE_CANCELLED` indicates that the job has
  /// been explicitly cancelled. This is a terminal job state. This state may
  /// only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has
  /// not yet reached another terminal state.
  /// - "JOB_STATE_UPDATED" : `JOB_STATE_UPDATED` indicates that the job was
  /// successfully updated, meaning that this job was stopped and another job
  /// was started, inheriting state from this one. This is a terminal job state.
  /// This state may only be set by the Cloud Dataflow service, and only as a
  /// transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_DRAINING" : `JOB_STATE_DRAINING` indicates that the job is in
  /// the process of draining. A draining job has stopped pulling from its input
  /// sources and is processing any data that remains in-flight. This state may
  /// be set via a Cloud Dataflow `UpdateJob` call, but only as a transition
  /// from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to
  /// `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_DRAINED" : `JOB_STATE_DRAINED` indicates that the job has
  /// been drained. A drained job terminated by stopping pulling from its input
  /// sources and processing any data that remained in-flight when draining was
  /// requested. This state is a terminal state, may only be set by the Cloud
  /// Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.
  /// - "JOB_STATE_PENDING" : `JOB_STATE_PENDING` indicates that the job has
  /// been created but is not yet running. Jobs that are pending may only
  /// transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_CANCELLING" : `JOB_STATE_CANCELLING` indicates that the job
  /// has been explicitly cancelled and is in the process of stopping. Jobs that
  /// are cancelling may only transition to `JOB_STATE_CANCELLED` or
  /// `JOB_STATE_FAILED`.
  /// - "JOB_STATE_QUEUED" : `JOB_STATE_QUEUED` indicates that the job has been
  /// created but is being delayed until launch. Jobs that are queued may only
  /// transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.
  /// - "JOB_STATE_RESOURCE_CLEANING_UP" : `JOB_STATE_RESOURCE_CLEANING_UP`
  /// indicates that the batch job's associated resources are currently being
  /// cleaned up after a successful run. Currently, this is an opt-in feature,
  /// please reach out to Cloud support team if you are interested.
  core.String? executionStageState;

  ExecutionStageState({
    this.currentStateTime,
    this.executionStageName,
    this.executionStageState,
  });

  ExecutionStageState.fromJson(core.Map json_)
      : this(
          currentStateTime: json_['currentStateTime'] as core.String?,
          executionStageName: json_['executionStageName'] as core.String?,
          executionStageState: json_['executionStageState'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentStateTime != null) 'currentStateTime': currentStateTime!,
        if (executionStageName != null)
          'executionStageName': executionStageName!,
        if (executionStageState != null)
          'executionStageState': executionStageState!,
      };
}

/// Description of the composing transforms, names/ids, and input/outputs of a
/// stage of execution.
///
/// Some composing transforms and sources may have been generated by the
/// Dataflow service during execution planning.
class ExecutionStageSummary {
  /// Collections produced and consumed by component transforms of this stage.
  core.List<ComponentSource>? componentSource;

  /// Transforms that comprise this execution stage.
  core.List<ComponentTransform>? componentTransform;

  /// Dataflow service generated id for this stage.
  core.String? id;

  /// Input sources for this stage.
  core.List<StageSource>? inputSource;

  /// Type of transform this stage is executing.
  /// Possible string values are:
  /// - "UNKNOWN_KIND" : Unrecognized transform type.
  /// - "PAR_DO_KIND" : ParDo transform.
  /// - "GROUP_BY_KEY_KIND" : Group By Key transform.
  /// - "FLATTEN_KIND" : Flatten transform.
  /// - "READ_KIND" : Read transform.
  /// - "WRITE_KIND" : Write transform.
  /// - "CONSTANT_KIND" : Constructs from a constant value, such as with
  /// Create.of.
  /// - "SINGLETON_KIND" : Creates a Singleton view of a collection.
  /// - "SHUFFLE_KIND" : Opening or closing a shuffle session, often as part of
  /// a GroupByKey.
  core.String? kind;

  /// Dataflow service generated name for this stage.
  core.String? name;

  /// Output sources for this stage.
  core.List<StageSource>? outputSource;

  /// Other stages that must complete before this stage can run.
  core.List<core.String>? prerequisiteStage;

  ExecutionStageSummary({
    this.componentSource,
    this.componentTransform,
    this.id,
    this.inputSource,
    this.kind,
    this.name,
    this.outputSource,
    this.prerequisiteStage,
  });

  ExecutionStageSummary.fromJson(core.Map json_)
      : this(
          componentSource: (json_['componentSource'] as core.List?)
              ?.map((value) => ComponentSource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          componentTransform: (json_['componentTransform'] as core.List?)
              ?.map((value) => ComponentTransform.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          id: json_['id'] as core.String?,
          inputSource: (json_['inputSource'] as core.List?)
              ?.map((value) => StageSource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          kind: json_['kind'] as core.String?,
          name: json_['name'] as core.String?,
          outputSource: (json_['outputSource'] as core.List?)
              ?.map((value) => StageSource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          prerequisiteStage: (json_['prerequisiteStage'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentSource != null) 'componentSource': componentSource!,
        if (componentTransform != null)
          'componentTransform': componentTransform!,
        if (id != null) 'id': id!,
        if (inputSource != null) 'inputSource': inputSource!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (outputSource != null) 'outputSource': outputSource!,
        if (prerequisiteStage != null) 'prerequisiteStage': prerequisiteStage!,
      };
}

/// Indicates which
/// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
/// failed to respond to a request for data.
class FailedLocation {
  /// The name of the
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that failed to respond.
  core.String? name;

  FailedLocation({
    this.name,
  });

  FailedLocation.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
      };
}

/// Metadata for a File connector used by the job.
class FileIODetails {
  /// File Pattern used to access files by the connector.
  core.String? filePattern;

  FileIODetails({
    this.filePattern,
  });

  FileIODetails.fromJson(core.Map json_)
      : this(
          filePattern: json_['filePattern'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filePattern != null) 'filePattern': filePattern!,
      };
}

/// An instruction that copies its inputs (zero or more) to its (single) output.
class FlattenInstruction {
  /// Describes the inputs to the flatten instruction.
  core.List<InstructionInput>? inputs;

  FlattenInstruction({
    this.inputs,
  });

  FlattenInstruction.fromJson(core.Map json_)
      : this(
          inputs: (json_['inputs'] as core.List?)
              ?.map((value) => InstructionInput.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputs != null) 'inputs': inputs!,
      };
}

/// The environment values to be set at runtime for flex template.
class FlexTemplateRuntimeEnvironment {
  /// Additional experiment flags for the job.
  core.List<core.String>? additionalExperiments;

  /// Additional pipeline option flags for the job.
  ///
  /// Optional.
  core.List<core.String>? additionalPipelineOptions;

  /// Additional user labels to be specified for the job.
  ///
  /// Keys and values must follow the restrictions specified in the
  /// [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1kg", "count": "3" }.
  core.Map<core.String, core.String>? additionalUserLabels;

  /// The algorithm to use for autoscaling
  /// Possible string values are:
  /// - "AUTOSCALING_ALGORITHM_UNKNOWN" : The algorithm is unknown, or
  /// unspecified.
  /// - "AUTOSCALING_ALGORITHM_NONE" : Disable autoscaling.
  /// - "AUTOSCALING_ALGORITHM_BASIC" : Increase worker count over time to
  /// reduce job execution time.
  core.String? autoscalingAlgorithm;

  /// Worker disk size, in gigabytes.
  core.int? diskSizeGb;

  /// If true, when processing time is spent almost entirely on garbage
  /// collection (GC), saves a heap dump before ending the thread or process.
  ///
  /// If false, ends the thread or process without saving a heap dump. Does not
  /// save a heap dump when the Java Virtual Machine (JVM) has an out of memory
  /// error during processing. The location of the heap file is either echoed
  /// back to the user, or the user is given the opportunity to download the
  /// heap file.
  core.bool? dumpHeapOnOom;

  /// If true serial port logging will be enabled for the launcher VM.
  core.bool? enableLauncherVmSerialPortLogging;

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

  /// The machine type to use for launching the job.
  ///
  /// The default is n1-standard-1.
  core.String? launcherMachineType;

  /// The machine type to use for the job.
  ///
  /// Defaults to the value from the template if not specified.
  core.String? machineType;

  /// The maximum number of Google Compute Engine instances to be made available
  /// to your pipeline during execution, from 1 to 1000.
  core.int? maxWorkers;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The initial number of Google Compute Engine instances for the job.
  core.int? numWorkers;

  /// Cloud Storage bucket (directory) to upload heap dumps to.
  ///
  /// Enabling this field implies that `dump_heap_on_oom` is set to true.
  core.String? saveHeapDumpsToGcsPath;

  /// Docker registry location of container image to use for the 'worker
  /// harness.
  ///
  /// Default is the container for the version of the SDK. Note this field is
  /// only valid for portable pipelines.
  core.String? sdkContainerImage;

  /// The email address of the service account to run the job as.
  core.String? serviceAccountEmail;

  /// The Cloud Storage path for staging local files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  core.String? stagingLocation;

  /// Specifies the Streaming Engine message processing guarantees.
  ///
  /// Reduces cost and latency but might result in duplicate messages committed
  /// to storage. Designed to run simple mapping streaming ETL jobs at the
  /// lowest cost. For example, Change Data Capture (CDC) to BigQuery is a
  /// canonical use case. For more information, see
  /// [Set the pipeline streaming mode](https://cloud.google.com/dataflow/docs/guides/streaming-modes).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STREAMING_MODE_UNSPECIFIED" : Run in the default mode.
  /// - "STREAMING_MODE_EXACTLY_ONCE" : In this mode, message deduplication is
  /// performed against persistent state to make sure each message is processed
  /// and committed to storage exactly once.
  /// - "STREAMING_MODE_AT_LEAST_ONCE" : Message deduplication is not performed.
  /// Messages might be processed multiple times, and the results are applied
  /// multiple times. Note: Setting this value also enables Streaming Engine and
  /// Streaming Engine resource-based billing.
  core.String? streamingMode;

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

  FlexTemplateRuntimeEnvironment({
    this.additionalExperiments,
    this.additionalPipelineOptions,
    this.additionalUserLabels,
    this.autoscalingAlgorithm,
    this.diskSizeGb,
    this.dumpHeapOnOom,
    this.enableLauncherVmSerialPortLogging,
    this.enableStreamingEngine,
    this.flexrsGoal,
    this.ipConfiguration,
    this.kmsKeyName,
    this.launcherMachineType,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.saveHeapDumpsToGcsPath,
    this.sdkContainerImage,
    this.serviceAccountEmail,
    this.stagingLocation,
    this.streamingMode,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  FlexTemplateRuntimeEnvironment.fromJson(core.Map json_)
      : this(
          additionalExperiments: (json_['additionalExperiments'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          additionalPipelineOptions:
              (json_['additionalPipelineOptions'] as core.List?)
                  ?.map((value) => value as core.String)
                  .toList(),
          additionalUserLabels: (json_['additionalUserLabels']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          autoscalingAlgorithm: json_['autoscalingAlgorithm'] as core.String?,
          diskSizeGb: json_['diskSizeGb'] as core.int?,
          dumpHeapOnOom: json_['dumpHeapOnOom'] as core.bool?,
          enableLauncherVmSerialPortLogging:
              json_['enableLauncherVmSerialPortLogging'] as core.bool?,
          enableStreamingEngine: json_['enableStreamingEngine'] as core.bool?,
          flexrsGoal: json_['flexrsGoal'] as core.String?,
          ipConfiguration: json_['ipConfiguration'] as core.String?,
          kmsKeyName: json_['kmsKeyName'] as core.String?,
          launcherMachineType: json_['launcherMachineType'] as core.String?,
          machineType: json_['machineType'] as core.String?,
          maxWorkers: json_['maxWorkers'] as core.int?,
          network: json_['network'] as core.String?,
          numWorkers: json_['numWorkers'] as core.int?,
          saveHeapDumpsToGcsPath:
              json_['saveHeapDumpsToGcsPath'] as core.String?,
          sdkContainerImage: json_['sdkContainerImage'] as core.String?,
          serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
          stagingLocation: json_['stagingLocation'] as core.String?,
          streamingMode: json_['streamingMode'] as core.String?,
          subnetwork: json_['subnetwork'] as core.String?,
          tempLocation: json_['tempLocation'] as core.String?,
          workerRegion: json_['workerRegion'] as core.String?,
          workerZone: json_['workerZone'] as core.String?,
          zone: json_['zone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExperiments != null)
          'additionalExperiments': additionalExperiments!,
        if (additionalPipelineOptions != null)
          'additionalPipelineOptions': additionalPipelineOptions!,
        if (additionalUserLabels != null)
          'additionalUserLabels': additionalUserLabels!,
        if (autoscalingAlgorithm != null)
          'autoscalingAlgorithm': autoscalingAlgorithm!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (dumpHeapOnOom != null) 'dumpHeapOnOom': dumpHeapOnOom!,
        if (enableLauncherVmSerialPortLogging != null)
          'enableLauncherVmSerialPortLogging':
              enableLauncherVmSerialPortLogging!,
        if (enableStreamingEngine != null)
          'enableStreamingEngine': enableStreamingEngine!,
        if (flexrsGoal != null) 'flexrsGoal': flexrsGoal!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (launcherMachineType != null)
          'launcherMachineType': launcherMachineType!,
        if (machineType != null) 'machineType': machineType!,
        if (maxWorkers != null) 'maxWorkers': maxWorkers!,
        if (network != null) 'network': network!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (saveHeapDumpsToGcsPath != null)
          'saveHeapDumpsToGcsPath': saveHeapDumpsToGcsPath!,
        if (sdkContainerImage != null) 'sdkContainerImage': sdkContainerImage!,
        if (serviceAccountEmail != null)
          'serviceAccountEmail': serviceAccountEmail!,
        if (stagingLocation != null) 'stagingLocation': stagingLocation!,
        if (streamingMode != null) 'streamingMode': streamingMode!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tempLocation != null) 'tempLocation': tempLocation!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// A metric value representing a list of floating point numbers.
class FloatingPointList {
  /// Elements of the list.
  core.List<core.double>? elements;

  FloatingPointList({
    this.elements,
  });

  FloatingPointList.fromJson(core.Map json_)
      : this(
          elements: (json_['elements'] as core.List?)
              ?.map((value) => (value as core.num).toDouble())
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// A representation of a floating point mean metric contribution.
class FloatingPointMean {
  /// The number of values being aggregated.
  SplitInt64? count;

  /// The sum of all values being aggregated.
  core.double? sum;

  FloatingPointMean({
    this.count,
    this.sum,
  });

  FloatingPointMean.fromJson(core.Map json_)
      : this(
          count: json_.containsKey('count')
              ? SplitInt64.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>)
              : null,
          sum: (json_['sum'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (sum != null) 'sum': sum!,
      };
}

/// Information about the GPU usage on the worker.
class GPUUsage {
  /// Timestamp of the measurement.
  ///
  /// Required.
  core.String? timestamp;

  /// Utilization info about the GPU.
  ///
  /// Required.
  GPUUtilization? utilization;

  GPUUsage({
    this.timestamp,
    this.utilization,
  });

  GPUUsage.fromJson(core.Map json_)
      : this(
          timestamp: json_['timestamp'] as core.String?,
          utilization: json_.containsKey('utilization')
              ? GPUUtilization.fromJson(
                  json_['utilization'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (timestamp != null) 'timestamp': timestamp!,
        if (utilization != null) 'utilization': utilization!,
      };
}

/// Utilization details about the GPU.
class GPUUtilization {
  /// GPU utilization rate of any kernel over the last sample period in the
  /// range of \[0, 1\].
  ///
  /// Required.
  core.double? rate;

  GPUUtilization({
    this.rate,
  });

  GPUUtilization.fromJson(core.Map json_)
      : this(
          rate: (json_['rate'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rate != null) 'rate': rate!,
      };
}

/// Request to get updated debug configuration for component.
class GetDebugConfigRequest {
  /// The internal component id for which debug configuration is requested.
  core.String? componentId;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  core.String? location;

  /// The worker id, i.e., VM hostname.
  core.String? workerId;

  GetDebugConfigRequest({
    this.componentId,
    this.location,
    this.workerId,
  });

  GetDebugConfigRequest.fromJson(core.Map json_)
      : this(
          componentId: json_['componentId'] as core.String?,
          location: json_['location'] as core.String?,
          workerId: json_['workerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentId != null) 'componentId': componentId!,
        if (location != null) 'location': location!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Response to a get debug configuration request.
class GetDebugConfigResponse {
  /// The encoded debug configuration for the requested component.
  core.String? config;

  GetDebugConfigResponse({
    this.config,
  });

  GetDebugConfigResponse.fromJson(core.Map json_)
      : this(
          config: json_['config'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
      };
}

/// The response to a GetTemplate request.
class GetTemplateResponse {
  /// The template metadata describing the template name, available parameters,
  /// etc.
  TemplateMetadata? metadata;

  /// Describes the runtime metadata with SDKInfo and available parameters.
  RuntimeMetadata? runtimeMetadata;

  /// The status of the get template request.
  ///
  /// Any problems with the request will be indicated in the error_details.
  Status? status;

  /// Template Type.
  /// Possible string values are:
  /// - "UNKNOWN" : Unknown Template Type.
  /// - "LEGACY" : Legacy Template.
  /// - "FLEX" : Flex Template.
  core.String? templateType;

  GetTemplateResponse({
    this.metadata,
    this.runtimeMetadata,
    this.status,
    this.templateType,
  });

  GetTemplateResponse.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? TemplateMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          runtimeMetadata: json_.containsKey('runtimeMetadata')
              ? RuntimeMetadata.fromJson(json_['runtimeMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          status: json_.containsKey('status')
              ? Status.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>)
              : null,
          templateType: json_['templateType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (runtimeMetadata != null) 'runtimeMetadata': runtimeMetadata!,
        if (status != null) 'status': status!,
        if (templateType != null) 'templateType': templateType!,
      };
}

/// Histogram of value counts for a distribution.
///
/// Buckets have an inclusive lower bound and exclusive upper bound and use
/// "1,2,5 bucketing": The first bucket range is from \[0,1) and all subsequent
/// bucket boundaries are powers of ten multiplied by 1, 2, or 5. Thus, bucket
/// boundaries are 0, 1, 2, 5, 10, 20, 50, 100, 200, 500, 1000, ... Negative
/// values are not supported.
class Histogram {
  /// Counts of values in each bucket.
  ///
  /// For efficiency, prefix and trailing buckets with count = 0 are elided.
  /// Buckets can store the full range of values of an unsigned long, with
  /// ULLONG_MAX falling into the 59th bucket with range \[1e19, 2e19).
  core.List<core.String>? bucketCounts;

  /// Starting index of first stored bucket.
  ///
  /// The non-inclusive upper-bound of the ith bucket is given by:
  /// pow(10,(i-first_bucket_offset)/3) * (1,2,5)\[(i-first_bucket_offset)%3\]
  core.int? firstBucketOffset;

  Histogram({
    this.bucketCounts,
    this.firstBucketOffset,
  });

  Histogram.fromJson(core.Map json_)
      : this(
          bucketCounts: (json_['bucketCounts'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          firstBucketOffset: json_['firstBucketOffset'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketCounts != null) 'bucketCounts': bucketCounts!,
        if (firstBucketOffset != null) 'firstBucketOffset': firstBucketOffset!,
      };
}

/// Information useful for debugging a hot key detection.
class HotKeyDebuggingInfo {
  /// Debugging information for each detected hot key.
  ///
  /// Keyed by a hash of the key.
  core.Map<core.String, HotKeyInfo>? detectedHotKeys;

  HotKeyDebuggingInfo({
    this.detectedHotKeys,
  });

  HotKeyDebuggingInfo.fromJson(core.Map json_)
      : this(
          detectedHotKeys:
              (json_['detectedHotKeys'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              HotKeyInfo.fromJson(value as core.Map<core.String, core.dynamic>),
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedHotKeys != null) 'detectedHotKeys': detectedHotKeys!,
      };
}

/// Proto describing a hot key detected on a given WorkItem.
class HotKeyDetection {
  /// The age of the hot key measured from when it was first detected.
  core.String? hotKeyAge;

  /// System-defined name of the step containing this hot key.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  /// User-provided name of the step that contains this hot key.
  core.String? userStepName;

  HotKeyDetection({
    this.hotKeyAge,
    this.systemName,
    this.userStepName,
  });

  HotKeyDetection.fromJson(core.Map json_)
      : this(
          hotKeyAge: json_['hotKeyAge'] as core.String?,
          systemName: json_['systemName'] as core.String?,
          userStepName: json_['userStepName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hotKeyAge != null) 'hotKeyAge': hotKeyAge!,
        if (systemName != null) 'systemName': systemName!,
        if (userStepName != null) 'userStepName': userStepName!,
      };
}

/// Information about a hot key.
class HotKeyInfo {
  /// The age of the hot key measured from when it was first detected.
  core.String? hotKeyAge;

  /// A detected hot key that is causing limited parallelism.
  ///
  /// This field will be populated only if the following flag is set to true:
  /// "--enable_hot_key_logging".
  core.String? key;

  /// If true, then the above key is truncated and cannot be deserialized.
  ///
  /// This occurs if the key above is populated and the key size is \>5MB.
  core.bool? keyTruncated;

  HotKeyInfo({
    this.hotKeyAge,
    this.key,
    this.keyTruncated,
  });

  HotKeyInfo.fromJson(core.Map json_)
      : this(
          hotKeyAge: json_['hotKeyAge'] as core.String?,
          key: json_['key'] as core.String?,
          keyTruncated: json_['keyTruncated'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hotKeyAge != null) 'hotKeyAge': hotKeyAge!,
        if (key != null) 'key': key!,
        if (keyTruncated != null) 'keyTruncated': keyTruncated!,
      };
}

/// An input of an instruction, as a reference to an output of a producer
/// instruction.
class InstructionInput {
  /// The output index (origin zero) within the producer.
  core.int? outputNum;

  /// The index (origin zero) of the parallel instruction that produces the
  /// output to be consumed by this input.
  ///
  /// This index is relative to the list of instructions in this input's
  /// instruction's containing MapTask.
  core.int? producerInstructionIndex;

  InstructionInput({
    this.outputNum,
    this.producerInstructionIndex,
  });

  InstructionInput.fromJson(core.Map json_)
      : this(
          outputNum: json_['outputNum'] as core.int?,
          producerInstructionIndex:
              json_['producerInstructionIndex'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (outputNum != null) 'outputNum': outputNum!,
        if (producerInstructionIndex != null)
          'producerInstructionIndex': producerInstructionIndex!,
      };
}

/// An output of an instruction.
class InstructionOutput {
  /// The codec to use to encode data being written via this output.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? codec;

  /// The user-provided name of this output.
  core.String? name;

  /// For system-generated byte and mean byte metrics, certain instructions
  /// should only report the key size.
  core.bool? onlyCountKeyBytes;

  /// For system-generated byte and mean byte metrics, certain instructions
  /// should only report the value size.
  core.bool? onlyCountValueBytes;

  /// System-defined name for this output in the original workflow graph.
  ///
  /// Outputs that do not contribute to an original instruction do not set this.
  core.String? originalName;

  /// System-defined name of this output.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  InstructionOutput({
    this.codec,
    this.name,
    this.onlyCountKeyBytes,
    this.onlyCountValueBytes,
    this.originalName,
    this.systemName,
  });

  InstructionOutput.fromJson(core.Map json_)
      : this(
          codec: json_.containsKey('codec')
              ? json_['codec'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
          onlyCountKeyBytes: json_['onlyCountKeyBytes'] as core.bool?,
          onlyCountValueBytes: json_['onlyCountValueBytes'] as core.bool?,
          originalName: json_['originalName'] as core.String?,
          systemName: json_['systemName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codec != null) 'codec': codec!,
        if (name != null) 'name': name!,
        if (onlyCountKeyBytes != null) 'onlyCountKeyBytes': onlyCountKeyBytes!,
        if (onlyCountValueBytes != null)
          'onlyCountValueBytes': onlyCountValueBytes!,
        if (originalName != null) 'originalName': originalName!,
        if (systemName != null) 'systemName': systemName!,
      };
}

/// A metric value representing temporal values of a variable.
class IntegerGauge {
  /// The time at which this value was measured.
  ///
  /// Measured as msecs from epoch.
  core.String? timestamp;

  /// The value of the variable represented by this gauge.
  SplitInt64? value;

  IntegerGauge({
    this.timestamp,
    this.value,
  });

  IntegerGauge.fromJson(core.Map json_)
      : this(
          timestamp: json_['timestamp'] as core.String?,
          value: json_.containsKey('value')
              ? SplitInt64.fromJson(
                  json_['value'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (timestamp != null) 'timestamp': timestamp!,
        if (value != null) 'value': value!,
      };
}

/// A metric value representing a list of integers.
class IntegerList {
  /// Elements of the list.
  core.List<SplitInt64>? elements;

  IntegerList({
    this.elements,
  });

  IntegerList.fromJson(core.Map json_)
      : this(
          elements: (json_['elements'] as core.List?)
              ?.map((value) => SplitInt64.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// A representation of an integer mean metric contribution.
class IntegerMean {
  /// The number of values being aggregated.
  SplitInt64? count;

  /// The sum of all values being aggregated.
  SplitInt64? sum;

  IntegerMean({
    this.count,
    this.sum,
  });

  IntegerMean.fromJson(core.Map json_)
      : this(
          count: json_.containsKey('count')
              ? SplitInt64.fromJson(
                  json_['count'] as core.Map<core.String, core.dynamic>)
              : null,
          sum: json_.containsKey('sum')
              ? SplitInt64.fromJson(
                  json_['sum'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (count != null) 'count': count!,
        if (sum != null) 'sum': sum!,
      };
}

/// Defines a job to be run by the Cloud Dataflow service.
///
/// Do not enter confidential information when you supply string values using
/// the API.
class Job {
  /// The client's unique identifier of the job, re-used across retried
  /// attempts.
  ///
  /// If this field is set, the service will ensure its uniqueness. The request
  /// to create a job will fail if the service has knowledge of a previously
  /// submitted job with the same client's ID and job name. The caller may use
  /// this field to ensure idempotence of job creation across retried attempts
  /// to create a job. By default, the field is empty and, in that case, the
  /// service ignores it.
  core.String? clientRequestId;

  /// The timestamp when the job was initially created.
  ///
  /// Immutable and set by the Cloud Dataflow service.
  core.String? createTime;

  /// If this is specified, the job's initial state is populated from the given
  /// snapshot.
  core.String? createdFromSnapshotId;

  /// The current state of the job.
  ///
  /// Jobs are created in the `JOB_STATE_STOPPED` state unless otherwise
  /// specified. A job in the `JOB_STATE_RUNNING` state may asynchronously enter
  /// a terminal state. After a job has reached a terminal state, no further
  /// state updates may be made. This field might be mutated by the Dataflow
  /// service; callers cannot mutate it.
  /// Possible string values are:
  /// - "JOB_STATE_UNKNOWN" : The job's run state isn't specified.
  /// - "JOB_STATE_STOPPED" : `JOB_STATE_STOPPED` indicates that the job has not
  /// yet started to run.
  /// - "JOB_STATE_RUNNING" : `JOB_STATE_RUNNING` indicates that the job is
  /// currently running.
  /// - "JOB_STATE_DONE" : `JOB_STATE_DONE` indicates that the job has
  /// successfully completed. This is a terminal job state. This state may be
  /// set by the Cloud Dataflow service, as a transition from
  /// `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob`
  /// call, if the job has not yet reached a terminal state.
  /// - "JOB_STATE_FAILED" : `JOB_STATE_FAILED` indicates that the job has
  /// failed. This is a terminal job state. This state may only be set by the
  /// Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_CANCELLED" : `JOB_STATE_CANCELLED` indicates that the job has
  /// been explicitly cancelled. This is a terminal job state. This state may
  /// only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has
  /// not yet reached another terminal state.
  /// - "JOB_STATE_UPDATED" : `JOB_STATE_UPDATED` indicates that the job was
  /// successfully updated, meaning that this job was stopped and another job
  /// was started, inheriting state from this one. This is a terminal job state.
  /// This state may only be set by the Cloud Dataflow service, and only as a
  /// transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_DRAINING" : `JOB_STATE_DRAINING` indicates that the job is in
  /// the process of draining. A draining job has stopped pulling from its input
  /// sources and is processing any data that remains in-flight. This state may
  /// be set via a Cloud Dataflow `UpdateJob` call, but only as a transition
  /// from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to
  /// `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_DRAINED" : `JOB_STATE_DRAINED` indicates that the job has
  /// been drained. A drained job terminated by stopping pulling from its input
  /// sources and processing any data that remained in-flight when draining was
  /// requested. This state is a terminal state, may only be set by the Cloud
  /// Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.
  /// - "JOB_STATE_PENDING" : `JOB_STATE_PENDING` indicates that the job has
  /// been created but is not yet running. Jobs that are pending may only
  /// transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_CANCELLING" : `JOB_STATE_CANCELLING` indicates that the job
  /// has been explicitly cancelled and is in the process of stopping. Jobs that
  /// are cancelling may only transition to `JOB_STATE_CANCELLED` or
  /// `JOB_STATE_FAILED`.
  /// - "JOB_STATE_QUEUED" : `JOB_STATE_QUEUED` indicates that the job has been
  /// created but is being delayed until launch. Jobs that are queued may only
  /// transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.
  /// - "JOB_STATE_RESOURCE_CLEANING_UP" : `JOB_STATE_RESOURCE_CLEANING_UP`
  /// indicates that the batch job's associated resources are currently being
  /// cleaned up after a successful run. Currently, this is an opt-in feature,
  /// please reach out to Cloud support team if you are interested.
  core.String? currentState;

  /// The timestamp associated with the current state.
  core.String? currentStateTime;

  /// The environment for the job.
  ///
  /// Optional.
  Environment? environment;

  /// Deprecated.
  JobExecutionInfo? executionInfo;

  /// The unique ID of this job.
  ///
  /// This field is set by the Dataflow service when the job is created, and is
  /// immutable for the life of the job.
  core.String? id;

  /// This field is populated by the Dataflow service to support filtering jobs
  /// by the metadata values provided here.
  ///
  /// Populated for ListJobs and all GetJob views SUMMARY and higher.
  JobMetadata? jobMetadata;

  /// User-defined labels for this job.
  ///
  /// The labels map can contain no more than 64 entries. Entries of the labels
  /// map are UTF8 strings that comply with the following restrictions: * Keys
  /// must conform to regexp: \p{Ll}\p{Lo}{0,62} * Values must conform to
  /// regexp: \[\p{Ll}\p{Lo}\p{N}_-\]{0,63} * Both keys and values are
  /// additionally constrained to be \<= 128 bytes in size.
  core.Map<core.String, core.String>? labels;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains this job.
  ///
  /// Optional.
  core.String? location;

  /// The user-specified Dataflow job name.
  ///
  /// Only one active job with a given name can exist in a project within one
  /// region at any given time. Jobs in different regions can have the same
  /// name. If a caller attempts to create a job with the same name as an active
  /// job that already exists, the attempt returns the existing job. The name
  /// must match the regular expression `[a-z]([-a-z0-9]{0,1022}[a-z0-9])?`
  ///
  /// Optional.
  core.String? name;

  /// Preliminary field: The format of this data may change at any time.
  ///
  /// A description of the user pipeline and stages through which it is
  /// executed. Created by Cloud Dataflow service. Only retrieved with
  /// JOB_VIEW_DESCRIPTION or JOB_VIEW_ALL.
  PipelineDescription? pipelineDescription;

  /// The ID of the Google Cloud project that the job belongs to.
  core.String? projectId;

  /// If this job is an update of an existing job, this field is the job ID of
  /// the job it replaced.
  ///
  /// When sending a `CreateJobRequest`, you can update a job by specifying it
  /// here. The job named here is stopped, and its intermediate state is
  /// transferred to this job.
  core.String? replaceJobId;

  /// If another job is an update of this job (and thus, this job is in
  /// `JOB_STATE_UPDATED`), this field contains the ID of that job.
  core.String? replacedByJobId;

  /// The job's requested state.
  ///
  /// Applies to `UpdateJob` requests. Set `requested_state` with `UpdateJob`
  /// requests to switch between the states `JOB_STATE_STOPPED` and
  /// `JOB_STATE_RUNNING`. You can also use `UpdateJob` requests to change a
  /// job's state from `JOB_STATE_RUNNING` to `JOB_STATE_CANCELLED`,
  /// `JOB_STATE_DONE`, or `JOB_STATE_DRAINED`. These states irrevocably
  /// terminate the job if it hasn't already reached a terminal state. This
  /// field has no effect on `CreateJob` requests.
  /// Possible string values are:
  /// - "JOB_STATE_UNKNOWN" : The job's run state isn't specified.
  /// - "JOB_STATE_STOPPED" : `JOB_STATE_STOPPED` indicates that the job has not
  /// yet started to run.
  /// - "JOB_STATE_RUNNING" : `JOB_STATE_RUNNING` indicates that the job is
  /// currently running.
  /// - "JOB_STATE_DONE" : `JOB_STATE_DONE` indicates that the job has
  /// successfully completed. This is a terminal job state. This state may be
  /// set by the Cloud Dataflow service, as a transition from
  /// `JOB_STATE_RUNNING`. It may also be set via a Cloud Dataflow `UpdateJob`
  /// call, if the job has not yet reached a terminal state.
  /// - "JOB_STATE_FAILED" : `JOB_STATE_FAILED` indicates that the job has
  /// failed. This is a terminal job state. This state may only be set by the
  /// Cloud Dataflow service, and only as a transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_CANCELLED" : `JOB_STATE_CANCELLED` indicates that the job has
  /// been explicitly cancelled. This is a terminal job state. This state may
  /// only be set via a Cloud Dataflow `UpdateJob` call, and only if the job has
  /// not yet reached another terminal state.
  /// - "JOB_STATE_UPDATED" : `JOB_STATE_UPDATED` indicates that the job was
  /// successfully updated, meaning that this job was stopped and another job
  /// was started, inheriting state from this one. This is a terminal job state.
  /// This state may only be set by the Cloud Dataflow service, and only as a
  /// transition from `JOB_STATE_RUNNING`.
  /// - "JOB_STATE_DRAINING" : `JOB_STATE_DRAINING` indicates that the job is in
  /// the process of draining. A draining job has stopped pulling from its input
  /// sources and is processing any data that remains in-flight. This state may
  /// be set via a Cloud Dataflow `UpdateJob` call, but only as a transition
  /// from `JOB_STATE_RUNNING`. Jobs that are draining may only transition to
  /// `JOB_STATE_DRAINED`, `JOB_STATE_CANCELLED`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_DRAINED" : `JOB_STATE_DRAINED` indicates that the job has
  /// been drained. A drained job terminated by stopping pulling from its input
  /// sources and processing any data that remained in-flight when draining was
  /// requested. This state is a terminal state, may only be set by the Cloud
  /// Dataflow service, and only as a transition from `JOB_STATE_DRAINING`.
  /// - "JOB_STATE_PENDING" : `JOB_STATE_PENDING` indicates that the job has
  /// been created but is not yet running. Jobs that are pending may only
  /// transition to `JOB_STATE_RUNNING`, or `JOB_STATE_FAILED`.
  /// - "JOB_STATE_CANCELLING" : `JOB_STATE_CANCELLING` indicates that the job
  /// has been explicitly cancelled and is in the process of stopping. Jobs that
  /// are cancelling may only transition to `JOB_STATE_CANCELLED` or
  /// `JOB_STATE_FAILED`.
  /// - "JOB_STATE_QUEUED" : `JOB_STATE_QUEUED` indicates that the job has been
  /// created but is being delayed until launch. Jobs that are queued may only
  /// transition to `JOB_STATE_PENDING` or `JOB_STATE_CANCELLED`.
  /// - "JOB_STATE_RESOURCE_CLEANING_UP" : `JOB_STATE_RESOURCE_CLEANING_UP`
  /// indicates that the batch job's associated resources are currently being
  /// cleaned up after a successful run. Currently, this is an opt-in feature,
  /// please reach out to Cloud support team if you are interested.
  core.String? requestedState;

  /// This field may ONLY be modified at runtime using the projects.jobs.update
  /// method to adjust job behavior.
  ///
  /// This field has no effect when specified at job creation.
  RuntimeUpdatableParams? runtimeUpdatableParams;

  /// Reserved for future use.
  ///
  /// This field is set only in responses from the server; it is ignored if it
  /// is set in any requests.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// This field is set only in responses from the server; it is ignored if it
  /// is set in any requests.
  core.bool? satisfiesPzs;

  /// Resources used by the Dataflow Service to run the job.
  ///
  /// Output only.
  ServiceResources? serviceResources;

  /// This field may be mutated by the Cloud Dataflow service; callers cannot
  /// mutate it.
  core.List<ExecutionStageState>? stageStates;

  /// The timestamp when the job was started (transitioned to
  /// JOB_STATE_PENDING).
  ///
  /// Flexible resource scheduling jobs are started with some delay after job
  /// creation, so start_time is unset before start and is updated when the job
  /// is started by the Cloud Dataflow service. For other jobs, start_time
  /// always equals to create_time and is immutable and set by the Cloud
  /// Dataflow service.
  core.String? startTime;

  /// Exactly one of step or steps_location should be specified.
  ///
  /// The top-level steps that constitute the entire job. Only retrieved with
  /// JOB_VIEW_ALL.
  core.List<Step>? steps;

  /// The Cloud Storage location where the steps are stored.
  core.String? stepsLocation;

  /// A set of files the system should be aware of that are used for temporary
  /// storage.
  ///
  /// These temporary files will be removed on job completion. No duplicates are
  /// allowed. No file patterns are supported. The supported files are: Google
  /// Cloud Storage: storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.List<core.String>? tempFiles;

  /// The map of transform name prefixes of the job to be replaced to the
  /// corresponding name prefixes of the new job.
  ///
  /// Optional.
  core.Map<core.String, core.String>? transformNameMapping;

  /// The type of Dataflow job.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JOB_TYPE_UNKNOWN" : The type of the job is unspecified, or unknown.
  /// - "JOB_TYPE_BATCH" : A batch job with a well-defined end point: data is
  /// read, data is processed, data is written, and the job is done.
  /// - "JOB_TYPE_STREAMING" : A continuously streaming job with no end: data is
  /// read, processed, and written continuously.
  core.String? type;

  Job({
    this.clientRequestId,
    this.createTime,
    this.createdFromSnapshotId,
    this.currentState,
    this.currentStateTime,
    this.environment,
    this.executionInfo,
    this.id,
    this.jobMetadata,
    this.labels,
    this.location,
    this.name,
    this.pipelineDescription,
    this.projectId,
    this.replaceJobId,
    this.replacedByJobId,
    this.requestedState,
    this.runtimeUpdatableParams,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.serviceResources,
    this.stageStates,
    this.startTime,
    this.steps,
    this.stepsLocation,
    this.tempFiles,
    this.transformNameMapping,
    this.type,
  });

  Job.fromJson(core.Map json_)
      : this(
          clientRequestId: json_['clientRequestId'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          createdFromSnapshotId: json_['createdFromSnapshotId'] as core.String?,
          currentState: json_['currentState'] as core.String?,
          currentStateTime: json_['currentStateTime'] as core.String?,
          environment: json_.containsKey('environment')
              ? Environment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          executionInfo: json_.containsKey('executionInfo')
              ? JobExecutionInfo.fromJson(
                  json_['executionInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_['id'] as core.String?,
          jobMetadata: json_.containsKey('jobMetadata')
              ? JobMetadata.fromJson(
                  json_['jobMetadata'] as core.Map<core.String, core.dynamic>)
              : null,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          location: json_['location'] as core.String?,
          name: json_['name'] as core.String?,
          pipelineDescription: json_.containsKey('pipelineDescription')
              ? PipelineDescription.fromJson(json_['pipelineDescription']
                  as core.Map<core.String, core.dynamic>)
              : null,
          projectId: json_['projectId'] as core.String?,
          replaceJobId: json_['replaceJobId'] as core.String?,
          replacedByJobId: json_['replacedByJobId'] as core.String?,
          requestedState: json_['requestedState'] as core.String?,
          runtimeUpdatableParams: json_.containsKey('runtimeUpdatableParams')
              ? RuntimeUpdatableParams.fromJson(json_['runtimeUpdatableParams']
                  as core.Map<core.String, core.dynamic>)
              : null,
          satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
          satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
          serviceResources: json_.containsKey('serviceResources')
              ? ServiceResources.fromJson(json_['serviceResources']
                  as core.Map<core.String, core.dynamic>)
              : null,
          stageStates: (json_['stageStates'] as core.List?)
              ?.map((value) => ExecutionStageState.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          startTime: json_['startTime'] as core.String?,
          steps: (json_['steps'] as core.List?)
              ?.map((value) =>
                  Step.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          stepsLocation: json_['stepsLocation'] as core.String?,
          tempFiles: (json_['tempFiles'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          transformNameMapping: (json_['transformNameMapping']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientRequestId != null) 'clientRequestId': clientRequestId!,
        if (createTime != null) 'createTime': createTime!,
        if (createdFromSnapshotId != null)
          'createdFromSnapshotId': createdFromSnapshotId!,
        if (currentState != null) 'currentState': currentState!,
        if (currentStateTime != null) 'currentStateTime': currentStateTime!,
        if (environment != null) 'environment': environment!,
        if (executionInfo != null) 'executionInfo': executionInfo!,
        if (id != null) 'id': id!,
        if (jobMetadata != null) 'jobMetadata': jobMetadata!,
        if (labels != null) 'labels': labels!,
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
        if (pipelineDescription != null)
          'pipelineDescription': pipelineDescription!,
        if (projectId != null) 'projectId': projectId!,
        if (replaceJobId != null) 'replaceJobId': replaceJobId!,
        if (replacedByJobId != null) 'replacedByJobId': replacedByJobId!,
        if (requestedState != null) 'requestedState': requestedState!,
        if (runtimeUpdatableParams != null)
          'runtimeUpdatableParams': runtimeUpdatableParams!,
        if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (serviceResources != null) 'serviceResources': serviceResources!,
        if (stageStates != null) 'stageStates': stageStates!,
        if (startTime != null) 'startTime': startTime!,
        if (steps != null) 'steps': steps!,
        if (stepsLocation != null) 'stepsLocation': stepsLocation!,
        if (tempFiles != null) 'tempFiles': tempFiles!,
        if (transformNameMapping != null)
          'transformNameMapping': transformNameMapping!,
        if (type != null) 'type': type!,
      };
}

/// Information about the execution of a job.
class JobExecutionDetails {
  /// If present, this response does not contain all requested tasks.
  ///
  /// To obtain the next page of results, repeat the request with page_token set
  /// to this value.
  core.String? nextPageToken;

  /// The stages of the job execution.
  core.List<StageSummary>? stages;

  JobExecutionDetails({
    this.nextPageToken,
    this.stages,
  });

  JobExecutionDetails.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          stages: (json_['stages'] as core.List?)
              ?.map((value) => StageSummary.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (stages != null) 'stages': stages!,
      };
}

/// Additional information about how a Cloud Dataflow job will be executed that
/// isn't contained in the submitted job.
class JobExecutionInfo {
  /// A mapping from each stage to the information about that stage.
  core.Map<core.String, JobExecutionStageInfo>? stages;

  JobExecutionInfo({
    this.stages,
  });

  JobExecutionInfo.fromJson(core.Map json_)
      : this(
          stages:
              (json_['stages'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              JobExecutionStageInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stages != null) 'stages': stages!,
      };
}

/// Contains information about how a particular google.dataflow.v1beta3.Step
/// will be executed.
class JobExecutionStageInfo {
  /// The steps associated with the execution stage.
  ///
  /// Note that stages may have several steps, and that a given step might be
  /// run by more than one stage.
  core.List<core.String>? stepName;

  JobExecutionStageInfo({
    this.stepName,
  });

  JobExecutionStageInfo.fromJson(core.Map json_)
      : this(
          stepName: (json_['stepName'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stepName != null) 'stepName': stepName!,
      };
}

/// A particular message pertaining to a Dataflow job.
class JobMessage {
  /// Deprecated.
  core.String? id;

  /// Importance level of the message.
  /// Possible string values are:
  /// - "JOB_MESSAGE_IMPORTANCE_UNKNOWN" : The message importance isn't
  /// specified, or is unknown.
  /// - "JOB_MESSAGE_DEBUG" : The message is at the 'debug' level: typically
  /// only useful for software engineers working on the code the job is running.
  /// Typically, Dataflow pipeline runners do not display log messages at this
  /// level by default.
  /// - "JOB_MESSAGE_DETAILED" : The message is at the 'detailed' level:
  /// somewhat verbose, but potentially useful to users. Typically, Dataflow
  /// pipeline runners do not display log messages at this level by default.
  /// These messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_BASIC" : The message is at the 'basic' level: useful for
  /// keeping track of the execution of a Dataflow pipeline. Typically, Dataflow
  /// pipeline runners display log messages at this level by default, and these
  /// messages are displayed by default in the Dataflow monitoring UI.
  /// - "JOB_MESSAGE_WARNING" : The message is at the 'warning' level:
  /// indicating a condition pertaining to a job which may require human
  /// intervention. Typically, Dataflow pipeline runners display log messages at
  /// this level by default, and these messages are displayed by default in the
  /// Dataflow monitoring UI.
  /// - "JOB_MESSAGE_ERROR" : The message is at the 'error' level: indicating a
  /// condition preventing a job from succeeding. Typically, Dataflow pipeline
  /// runners display log messages at this level by default, and these messages
  /// are displayed by default in the Dataflow monitoring UI.
  core.String? messageImportance;

  /// The text of the message.
  core.String? messageText;

  /// The timestamp of the message.
  core.String? time;

  JobMessage({
    this.id,
    this.messageImportance,
    this.messageText,
    this.time,
  });

  JobMessage.fromJson(core.Map json_)
      : this(
          id: json_['id'] as core.String?,
          messageImportance: json_['messageImportance'] as core.String?,
          messageText: json_['messageText'] as core.String?,
          time: json_['time'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (messageImportance != null) 'messageImportance': messageImportance!,
        if (messageText != null) 'messageText': messageText!,
        if (time != null) 'time': time!,
      };
}

/// Metadata available primarily for filtering jobs.
///
/// Will be included in the ListJob response and Job SUMMARY view.
class JobMetadata {
  /// Identification of a Cloud Bigtable source used in the Dataflow job.
  core.List<BigTableIODetails>? bigTableDetails;

  /// Identification of a BigQuery source used in the Dataflow job.
  core.List<BigQueryIODetails>? bigqueryDetails;

  /// Identification of a Datastore source used in the Dataflow job.
  core.List<DatastoreIODetails>? datastoreDetails;

  /// Identification of a File source used in the Dataflow job.
  core.List<FileIODetails>? fileDetails;

  /// Identification of a Pub/Sub source used in the Dataflow job.
  core.List<PubSubIODetails>? pubsubDetails;

  /// The SDK version used to run the job.
  SdkVersion? sdkVersion;

  /// Identification of a Spanner source used in the Dataflow job.
  core.List<SpannerIODetails>? spannerDetails;

  /// List of display properties to help UI filter jobs.
  core.Map<core.String, core.String>? userDisplayProperties;

  JobMetadata({
    this.bigTableDetails,
    this.bigqueryDetails,
    this.datastoreDetails,
    this.fileDetails,
    this.pubsubDetails,
    this.sdkVersion,
    this.spannerDetails,
    this.userDisplayProperties,
  });

  JobMetadata.fromJson(core.Map json_)
      : this(
          bigTableDetails: (json_['bigTableDetails'] as core.List?)
              ?.map((value) => BigTableIODetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          bigqueryDetails: (json_['bigqueryDetails'] as core.List?)
              ?.map((value) => BigQueryIODetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          datastoreDetails: (json_['datastoreDetails'] as core.List?)
              ?.map((value) => DatastoreIODetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          fileDetails: (json_['fileDetails'] as core.List?)
              ?.map((value) => FileIODetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          pubsubDetails: (json_['pubsubDetails'] as core.List?)
              ?.map((value) => PubSubIODetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          sdkVersion: json_.containsKey('sdkVersion')
              ? SdkVersion.fromJson(
                  json_['sdkVersion'] as core.Map<core.String, core.dynamic>)
              : null,
          spannerDetails: (json_['spannerDetails'] as core.List?)
              ?.map((value) => SpannerIODetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          userDisplayProperties: (json_['userDisplayProperties']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bigTableDetails != null) 'bigTableDetails': bigTableDetails!,
        if (bigqueryDetails != null) 'bigqueryDetails': bigqueryDetails!,
        if (datastoreDetails != null) 'datastoreDetails': datastoreDetails!,
        if (fileDetails != null) 'fileDetails': fileDetails!,
        if (pubsubDetails != null) 'pubsubDetails': pubsubDetails!,
        if (sdkVersion != null) 'sdkVersion': sdkVersion!,
        if (spannerDetails != null) 'spannerDetails': spannerDetails!,
        if (userDisplayProperties != null)
          'userDisplayProperties': userDisplayProperties!,
      };
}

/// JobMetrics contains a collection of metrics describing the detailed progress
/// of a Dataflow job.
///
/// Metrics correspond to user-defined and system-defined metrics in the job.
/// For more information, see
/// [Dataflow job metrics](https://cloud.google.com/dataflow/docs/guides/using-monitoring-intf).
/// This resource captures only the most recent values of each metric;
/// time-series data can be queried for them (under the same metric names) from
/// Cloud Monitoring.
class JobMetrics {
  /// Timestamp as of which metric values are current.
  core.String? metricTime;

  /// All metrics for this job.
  core.List<MetricUpdate>? metrics;

  JobMetrics({
    this.metricTime,
    this.metrics,
  });

  JobMetrics.fromJson(core.Map json_)
      : this(
          metricTime: json_['metricTime'] as core.String?,
          metrics: (json_['metrics'] as core.List?)
              ?.map((value) => MetricUpdate.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricTime != null) 'metricTime': metricTime!,
        if (metrics != null) 'metrics': metrics!,
      };
}

/// Data disk assignment information for a specific key-range of a sharded
/// computation.
///
/// Currently we only support UTF-8 character splits to simplify encoding into
/// JSON.
class KeyRangeDataDiskAssignment {
  /// The name of the data disk where data for this range is stored.
  ///
  /// This name is local to the Google Cloud Platform project and uniquely
  /// identifies the disk within that project, for example
  /// "myproject-1014-104817-4c2-harness-0-disk-1".
  core.String? dataDisk;

  /// The end (exclusive) of the key range.
  core.String? end;

  /// The start (inclusive) of the key range.
  core.String? start;

  KeyRangeDataDiskAssignment({
    this.dataDisk,
    this.end,
    this.start,
  });

  KeyRangeDataDiskAssignment.fromJson(core.Map json_)
      : this(
          dataDisk: json_['dataDisk'] as core.String?,
          end: json_['end'] as core.String?,
          start: json_['start'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataDisk != null) 'dataDisk': dataDisk!,
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Location information for a specific key-range of a sharded computation.
///
/// Currently we only support UTF-8 character splits to simplify encoding into
/// JSON.
class KeyRangeLocation {
  /// The name of the data disk where data for this range is stored.
  ///
  /// This name is local to the Google Cloud Platform project and uniquely
  /// identifies the disk within that project, for example
  /// "myproject-1014-104817-4c2-harness-0-disk-1".
  core.String? dataDisk;

  /// The physical location of this range assignment to be used for streaming
  /// computation cross-worker message delivery.
  core.String? deliveryEndpoint;

  /// The location of the persistent state for this range, as a persistent
  /// directory in the worker local filesystem.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? deprecatedPersistentDirectory;

  /// The end (exclusive) of the key range.
  core.String? end;

  /// The start (inclusive) of the key range.
  core.String? start;

  KeyRangeLocation({
    this.dataDisk,
    this.deliveryEndpoint,
    this.deprecatedPersistentDirectory,
    this.end,
    this.start,
  });

  KeyRangeLocation.fromJson(core.Map json_)
      : this(
          dataDisk: json_['dataDisk'] as core.String?,
          deliveryEndpoint: json_['deliveryEndpoint'] as core.String?,
          deprecatedPersistentDirectory:
              json_['deprecatedPersistentDirectory'] as core.String?,
          end: json_['end'] as core.String?,
          start: json_['start'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataDisk != null) 'dataDisk': dataDisk!,
        if (deliveryEndpoint != null) 'deliveryEndpoint': deliveryEndpoint!,
        if (deprecatedPersistentDirectory != null)
          'deprecatedPersistentDirectory': deprecatedPersistentDirectory!,
        if (end != null) 'end': end!,
        if (start != null) 'start': start!,
      };
}

/// Launch FlexTemplate Parameter.
class LaunchFlexTemplateParameter {
  /// Spec about the container image to launch.
  ContainerSpec? containerSpec;

  /// Cloud Storage path to a file with json serialized ContainerSpec as
  /// content.
  core.String? containerSpecGcsPath;

  /// The runtime environment for the FlexTemplate job
  FlexTemplateRuntimeEnvironment? environment;

  /// The job name to use for the created job.
  ///
  /// For update job request, job name should be same as the existing running
  /// job.
  ///
  /// Required.
  core.String? jobName;

  /// Launch options for this flex template job.
  ///
  /// This is a common set of options across languages and templates. This
  /// should not be used to pass job parameters.
  core.Map<core.String, core.String>? launchOptions;

  /// The parameters for FlexTemplate.
  ///
  /// Ex. {"num_workers":"5"}
  core.Map<core.String, core.String>? parameters;

  /// Use this to pass transform_name_mappings for streaming update jobs.
  ///
  /// Ex:{"oldTransformName":"newTransformName",...}'
  core.Map<core.String, core.String>? transformNameMappings;

  /// Set this to true if you are sending a request to update a running
  /// streaming job.
  ///
  /// When set, the job name should be the same as the running job.
  core.bool? update;

  LaunchFlexTemplateParameter({
    this.containerSpec,
    this.containerSpecGcsPath,
    this.environment,
    this.jobName,
    this.launchOptions,
    this.parameters,
    this.transformNameMappings,
    this.update,
  });

  LaunchFlexTemplateParameter.fromJson(core.Map json_)
      : this(
          containerSpec: json_.containsKey('containerSpec')
              ? ContainerSpec.fromJson(
                  json_['containerSpec'] as core.Map<core.String, core.dynamic>)
              : null,
          containerSpecGcsPath: json_['containerSpecGcsPath'] as core.String?,
          environment: json_.containsKey('environment')
              ? FlexTemplateRuntimeEnvironment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          jobName: json_['jobName'] as core.String?,
          launchOptions:
              (json_['launchOptions'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          parameters:
              (json_['parameters'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          transformNameMappings: (json_['transformNameMappings']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          update: json_['update'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerSpec != null) 'containerSpec': containerSpec!,
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

/// A request to launch a Cloud Dataflow job from a FlexTemplate.
class LaunchFlexTemplateRequest {
  /// Parameter to launch a job form Flex Template.
  ///
  /// Required.
  LaunchFlexTemplateParameter? launchParameter;

  /// If true, the request is validated but not actually executed.
  ///
  /// Defaults to false.
  core.bool? validateOnly;

  LaunchFlexTemplateRequest({
    this.launchParameter,
    this.validateOnly,
  });

  LaunchFlexTemplateRequest.fromJson(core.Map json_)
      : this(
          launchParameter: json_.containsKey('launchParameter')
              ? LaunchFlexTemplateParameter.fromJson(json_['launchParameter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          validateOnly: json_['validateOnly'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (launchParameter != null) 'launchParameter': launchParameter!,
        if (validateOnly != null) 'validateOnly': validateOnly!,
      };
}

/// Response to the request to launch a job from Flex Template.
class LaunchFlexTemplateResponse {
  /// The job that was launched, if the request was not a dry run and the job
  /// was successfully launched.
  Job? job;

  LaunchFlexTemplateResponse({
    this.job,
  });

  LaunchFlexTemplateResponse.fromJson(core.Map json_)
      : this(
          job: json_.containsKey('job')
              ? Job.fromJson(
                  json_['job'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
      };
}

/// Parameters to provide to the template being launched.
///
/// Note that the
/// [metadata in the pipeline code](https://cloud.google.com/dataflow/docs/guides/templates/creating-templates#metadata)
/// determines which runtime parameters are valid.
class LaunchTemplateParameters {
  /// The runtime environment for the job.
  RuntimeEnvironment? environment;

  /// The job name to use for the created job.
  ///
  /// The name must match the regular expression
  /// `[a-z]([-a-z0-9]{0,1022}[a-z0-9])?`
  ///
  /// Required.
  core.String? jobName;

  /// The runtime parameters to pass to the job.
  core.Map<core.String, core.String>? parameters;

  /// Only applicable when updating a pipeline.
  ///
  /// Map of transform name prefixes of the job to be replaced to the
  /// corresponding name prefixes of the new job.
  core.Map<core.String, core.String>? transformNameMapping;

  /// If set, replace the existing pipeline with the name specified by jobName
  /// with this pipeline, preserving state.
  core.bool? update;

  LaunchTemplateParameters({
    this.environment,
    this.jobName,
    this.parameters,
    this.transformNameMapping,
    this.update,
  });

  LaunchTemplateParameters.fromJson(core.Map json_)
      : this(
          environment: json_.containsKey('environment')
              ? RuntimeEnvironment.fromJson(
                  json_['environment'] as core.Map<core.String, core.dynamic>)
              : null,
          jobName: json_['jobName'] as core.String?,
          parameters:
              (json_['parameters'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          transformNameMapping: (json_['transformNameMapping']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          update: json_['update'] as core.bool?,
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

/// Response to the request to launch a template.
class LaunchTemplateResponse {
  /// The job that was launched, if the request was not a dry run and the job
  /// was successfully launched.
  Job? job;

  LaunchTemplateResponse({
    this.job,
  });

  LaunchTemplateResponse.fromJson(core.Map json_)
      : this(
          job: json_.containsKey('job')
              ? Job.fromJson(
                  json_['job'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (job != null) 'job': job!,
      };
}

/// Request to lease WorkItems.
class LeaseWorkItemRequest {
  /// The current timestamp at the worker.
  core.String? currentWorkerTime;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the WorkItem's job.
  core.String? location;

  /// The project number of the project this worker belongs to.
  ///
  /// Optional.
  core.String? projectNumber;

  /// The initial lease period.
  core.String? requestedLeaseDuration;

  /// Untranslated bag-of-bytes WorkRequest from UnifiedWorker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? unifiedWorkerRequest;

  /// Filter for WorkItem type.
  core.List<core.String>? workItemTypes;

  /// Worker capabilities.
  ///
  /// WorkItems might be limited to workers with specific capabilities.
  core.List<core.String>? workerCapabilities;

  /// Identifies the worker leasing work -- typically the ID of the virtual
  /// machine running the worker.
  core.String? workerId;

  LeaseWorkItemRequest({
    this.currentWorkerTime,
    this.location,
    this.projectNumber,
    this.requestedLeaseDuration,
    this.unifiedWorkerRequest,
    this.workItemTypes,
    this.workerCapabilities,
    this.workerId,
  });

  LeaseWorkItemRequest.fromJson(core.Map json_)
      : this(
          currentWorkerTime: json_['currentWorkerTime'] as core.String?,
          location: json_['location'] as core.String?,
          projectNumber: json_['projectNumber'] as core.String?,
          requestedLeaseDuration:
              json_['requestedLeaseDuration'] as core.String?,
          unifiedWorkerRequest: json_.containsKey('unifiedWorkerRequest')
              ? json_['unifiedWorkerRequest']
                  as core.Map<core.String, core.dynamic>
              : null,
          workItemTypes: (json_['workItemTypes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          workerCapabilities: (json_['workerCapabilities'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          workerId: json_['workerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentWorkerTime != null) 'currentWorkerTime': currentWorkerTime!,
        if (location != null) 'location': location!,
        if (projectNumber != null) 'projectNumber': projectNumber!,
        if (requestedLeaseDuration != null)
          'requestedLeaseDuration': requestedLeaseDuration!,
        if (unifiedWorkerRequest != null)
          'unifiedWorkerRequest': unifiedWorkerRequest!,
        if (workItemTypes != null) 'workItemTypes': workItemTypes!,
        if (workerCapabilities != null)
          'workerCapabilities': workerCapabilities!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Response to a request to lease WorkItems.
class LeaseWorkItemResponse {
  /// Untranslated bag-of-bytes WorkResponse for UnifiedWorker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? unifiedWorkerResponse;

  /// A list of the leased WorkItems.
  core.List<WorkItem>? workItems;

  LeaseWorkItemResponse({
    this.unifiedWorkerResponse,
    this.workItems,
  });

  LeaseWorkItemResponse.fromJson(core.Map json_)
      : this(
          unifiedWorkerResponse: json_.containsKey('unifiedWorkerResponse')
              ? json_['unifiedWorkerResponse']
                  as core.Map<core.String, core.dynamic>
              : null,
          workItems: (json_['workItems'] as core.List?)
              ?.map((value) => WorkItem.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unifiedWorkerResponse != null)
          'unifiedWorkerResponse': unifiedWorkerResponse!,
        if (workItems != null) 'workItems': workItems!,
      };
}

/// Linear buckets with the following boundaries for indices in 0 to n-1.
///
/// - i in \[0, n-1\]: \[start + (i)*width, start + (i+1)*width)
class Linear {
  /// Must be greater than 0.
  core.int? numberOfBuckets;

  /// Lower bound of the first bucket.
  core.double? start;

  /// Distance between bucket boundaries.
  ///
  /// Must be greater than 0.
  core.double? width;

  Linear({
    this.numberOfBuckets,
    this.start,
    this.width,
  });

  Linear.fromJson(core.Map json_)
      : this(
          numberOfBuckets: json_['numberOfBuckets'] as core.int?,
          start: (json_['start'] as core.num?)?.toDouble(),
          width: (json_['width'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numberOfBuckets != null) 'numberOfBuckets': numberOfBuckets!,
        if (start != null) 'start': start!,
        if (width != null) 'width': width!,
      };
}

/// Response to a request to list job messages.
class ListJobMessagesResponse {
  /// Autoscaling events in ascending timestamp order.
  core.List<AutoscalingEvent>? autoscalingEvents;

  /// Messages in ascending timestamp order.
  core.List<JobMessage>? jobMessages;

  /// The token to obtain the next page of results if there are more.
  core.String? nextPageToken;

  ListJobMessagesResponse({
    this.autoscalingEvents,
    this.jobMessages,
    this.nextPageToken,
  });

  ListJobMessagesResponse.fromJson(core.Map json_)
      : this(
          autoscalingEvents: (json_['autoscalingEvents'] as core.List?)
              ?.map((value) => AutoscalingEvent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          jobMessages: (json_['jobMessages'] as core.List?)
              ?.map((value) => JobMessage.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscalingEvents != null) 'autoscalingEvents': autoscalingEvents!,
        if (jobMessages != null) 'jobMessages': jobMessages!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response to a request to list Cloud Dataflow jobs in a project.
///
/// This might be a partial response, depending on the page size in the
/// ListJobsRequest. However, if the project does not have any jobs, an instance
/// of ListJobsResponse is not returned and the requests's response body is
/// empty {}.
class ListJobsResponse {
  /// Zero or more messages describing the
  /// [regional endpoints](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that failed to respond.
  core.List<FailedLocation>? failedLocation;

  /// A subset of the requested job information.
  core.List<Job>? jobs;

  /// Set if there may be more results than fit in this response.
  core.String? nextPageToken;

  ListJobsResponse({
    this.failedLocation,
    this.jobs,
    this.nextPageToken,
  });

  ListJobsResponse.fromJson(core.Map json_)
      : this(
          failedLocation: (json_['failedLocation'] as core.List?)
              ?.map((value) => FailedLocation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          jobs: (json_['jobs'] as core.List?)
              ?.map((value) =>
                  Job.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (failedLocation != null) 'failedLocation': failedLocation!,
        if (jobs != null) 'jobs': jobs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// List of snapshots.
class ListSnapshotsResponse {
  /// Returned snapshots.
  core.List<Snapshot>? snapshots;

  ListSnapshotsResponse({
    this.snapshots,
  });

  ListSnapshotsResponse.fromJson(core.Map json_)
      : this(
          snapshots: (json_['snapshots'] as core.List?)
              ?.map((value) => Snapshot.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (snapshots != null) 'snapshots': snapshots!,
      };
}

/// MapTask consists of an ordered set of instructions, each of which describes
/// one particular low-level operation for the worker to perform in order to
/// accomplish the MapTask's WorkItem.
///
/// Each instruction must appear in the list before any instructions which
/// depends on its output.
class MapTask {
  /// Counter prefix that can be used to prefix counters.
  ///
  /// Not currently used in Dataflow.
  core.String? counterPrefix;

  /// The instructions in the MapTask.
  core.List<ParallelInstruction>? instructions;

  /// System-defined name of the stage containing this MapTask.
  ///
  /// Unique across the workflow.
  core.String? stageName;

  /// System-defined name of this MapTask.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  MapTask({
    this.counterPrefix,
    this.instructions,
    this.stageName,
    this.systemName,
  });

  MapTask.fromJson(core.Map json_)
      : this(
          counterPrefix: json_['counterPrefix'] as core.String?,
          instructions: (json_['instructions'] as core.List?)
              ?.map((value) => ParallelInstruction.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          stageName: json_['stageName'] as core.String?,
          systemName: json_['systemName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (counterPrefix != null) 'counterPrefix': counterPrefix!,
        if (instructions != null) 'instructions': instructions!,
        if (stageName != null) 'stageName': stageName!,
        if (systemName != null) 'systemName': systemName!,
      };
}

/// Information about the memory usage of a worker or a container within a
/// worker.
class MemInfo {
  /// Instantenous memory limit in bytes.
  core.String? currentLimitBytes;

  /// Number of Out of Memory (OOM) events recorded since the previous
  /// measurement.
  core.String? currentOoms;

  /// Instantenous memory (RSS) size in bytes.
  core.String? currentRssBytes;

  /// Timestamp of the measurement.
  core.String? timestamp;

  /// Total memory (RSS) usage since start up in GB * ms.
  core.String? totalGbMs;

  MemInfo({
    this.currentLimitBytes,
    this.currentOoms,
    this.currentRssBytes,
    this.timestamp,
    this.totalGbMs,
  });

  MemInfo.fromJson(core.Map json_)
      : this(
          currentLimitBytes: json_['currentLimitBytes'] as core.String?,
          currentOoms: json_['currentOoms'] as core.String?,
          currentRssBytes: json_['currentRssBytes'] as core.String?,
          timestamp: json_['timestamp'] as core.String?,
          totalGbMs: json_['totalGbMs'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentLimitBytes != null) 'currentLimitBytes': currentLimitBytes!,
        if (currentOoms != null) 'currentOoms': currentOoms!,
        if (currentRssBytes != null) 'currentRssBytes': currentRssBytes!,
        if (timestamp != null) 'timestamp': timestamp!,
        if (totalGbMs != null) 'totalGbMs': totalGbMs!,
      };
}

/// The metric short id is returned to the user alongside an offset into
/// ReportWorkItemStatusRequest
class MetricShortId {
  /// The index of the corresponding metric in the ReportWorkItemStatusRequest.
  ///
  /// Required.
  core.int? metricIndex;

  /// The service-generated short identifier for the metric.
  core.String? shortId;

  MetricShortId({
    this.metricIndex,
    this.shortId,
  });

  MetricShortId.fromJson(core.Map json_)
      : this(
          metricIndex: json_['metricIndex'] as core.int?,
          shortId: json_['shortId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricIndex != null) 'metricIndex': metricIndex!,
        if (shortId != null) 'shortId': shortId!,
      };
}

/// Identifies a metric, by describing the source which generated the metric.
class MetricStructuredName {
  /// Zero or more labeled fields which identify the part of the job this metric
  /// is associated with, such as the name of a step or collection.
  ///
  /// For example, built-in counters associated with steps will have
  /// context\['step'\] = . Counters associated with PCollections in the SDK
  /// will have context\['pcollection'\] = .
  core.Map<core.String, core.String>? context;

  /// Worker-defined metric name.
  core.String? name;

  /// Origin (namespace) of metric name.
  ///
  /// May be blank for user-define metrics; will be "dataflow" for metrics
  /// defined by the Dataflow service or SDK.
  core.String? origin;

  MetricStructuredName({
    this.context,
    this.name,
    this.origin,
  });

  MetricStructuredName.fromJson(core.Map json_)
      : this(
          context:
              (json_['context'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          origin: json_['origin'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (name != null) 'name': name!,
        if (origin != null) 'origin': origin!,
      };
}

/// Describes the state of a metric.
class MetricUpdate {
  /// True if this metric is reported as the total cumulative aggregate value
  /// accumulated since the worker started working on this WorkItem.
  ///
  /// By default this is false, indicating that this metric is reported as a
  /// delta that is not associated with any WorkItem.
  core.bool? cumulative;

  /// A struct value describing properties of a distribution of numeric values.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? distribution;

  /// A struct value describing properties of a Gauge.
  ///
  /// Metrics of gauge type show the value of a metric across time, and is
  /// aggregated based on the newest value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? gauge;

  /// Worker-computed aggregate value for internal use by the Dataflow service.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? internal;

  /// Metric aggregation kind.
  ///
  /// The possible metric aggregation kinds are "Sum", "Max", "Min", "Mean",
  /// "Set", "And", "Or", and "Distribution". The specified aggregation kind is
  /// case-insensitive. If omitted, this is not an aggregated value but instead
  /// a single metric sample value.
  core.String? kind;

  /// Worker-computed aggregate value for the "Mean" aggregation kind.
  ///
  /// This holds the count of the aggregated values and is used in combination
  /// with mean_sum above to obtain the actual mean aggregate value. The only
  /// possible value type is Long.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? meanCount;

  /// Worker-computed aggregate value for the "Mean" aggregation kind.
  ///
  /// This holds the sum of the aggregated values and is used in combination
  /// with mean_count below to obtain the actual mean aggregate value. The only
  /// possible value types are Long and Double.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? meanSum;

  /// Name of the metric.
  MetricStructuredName? name;

  /// Worker-computed aggregate value for aggregation kinds "Sum", "Max", "Min",
  /// "And", and "Or".
  ///
  /// The possible value types are Long, Double, and Boolean.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? scalar;

  /// Worker-computed aggregate value for the "Set" aggregation kind.
  ///
  /// The only possible value type is a list of Values whose type can be Long,
  /// Double, String, or BoundedTrie according to the metric's type. All Values
  /// in the list must be of the same type.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? set;

  /// Worker-computed aggregate value for the "Trie" aggregation kind.
  ///
  /// The only possible value type is a BoundedTrieNode.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? trie;

  /// Timestamp associated with the metric value.
  ///
  /// Optional when workers are reporting work progress; it will be filled in
  /// responses from the metrics API.
  core.String? updateTime;

  MetricUpdate({
    this.cumulative,
    this.distribution,
    this.gauge,
    this.internal,
    this.kind,
    this.meanCount,
    this.meanSum,
    this.name,
    this.scalar,
    this.set,
    this.trie,
    this.updateTime,
  });

  MetricUpdate.fromJson(core.Map json_)
      : this(
          cumulative: json_['cumulative'] as core.bool?,
          distribution: json_['distribution'],
          gauge: json_['gauge'],
          internal: json_['internal'],
          kind: json_['kind'] as core.String?,
          meanCount: json_['meanCount'],
          meanSum: json_['meanSum'],
          name: json_.containsKey('name')
              ? MetricStructuredName.fromJson(
                  json_['name'] as core.Map<core.String, core.dynamic>)
              : null,
          scalar: json_['scalar'],
          set: json_['set'],
          trie: json_['trie'],
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cumulative != null) 'cumulative': cumulative!,
        if (distribution != null) 'distribution': distribution!,
        if (gauge != null) 'gauge': gauge!,
        if (internal != null) 'internal': internal!,
        if (kind != null) 'kind': kind!,
        if (meanCount != null) 'meanCount': meanCount!,
        if (meanSum != null) 'meanSum': meanSum!,
        if (name != null) 'name': name!,
        if (scalar != null) 'scalar': scalar!,
        if (set != null) 'set': set!,
        if (trie != null) 'trie': trie!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// The value of a metric along with its name and labels.
class MetricValue {
  /// Base name for this metric.
  core.String? metric;

  /// Set of metric labels for this metric.
  ///
  /// Optional.
  core.Map<core.String, core.String>? metricLabels;

  /// Non-cumulative int64 value of this metric.
  DataflowGaugeValue? valueGauge64;

  /// Histogram value of this metric.
  DataflowHistogramValue? valueHistogram;

  /// Integer value of this metric.
  core.String? valueInt64;

  MetricValue({
    this.metric,
    this.metricLabels,
    this.valueGauge64,
    this.valueHistogram,
    this.valueInt64,
  });

  MetricValue.fromJson(core.Map json_)
      : this(
          metric: json_['metric'] as core.String?,
          metricLabels:
              (json_['metricLabels'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          valueGauge64: json_.containsKey('valueGauge64')
              ? DataflowGaugeValue.fromJson(
                  json_['valueGauge64'] as core.Map<core.String, core.dynamic>)
              : null,
          valueHistogram: json_.containsKey('valueHistogram')
              ? DataflowHistogramValue.fromJson(json_['valueHistogram']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueInt64: json_['valueInt64'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metric != null) 'metric': metric!,
        if (metricLabels != null) 'metricLabels': metricLabels!,
        if (valueGauge64 != null) 'valueGauge64': valueGauge64!,
        if (valueHistogram != null) 'valueHistogram': valueHistogram!,
        if (valueInt64 != null) 'valueInt64': valueInt64!,
      };
}

/// Describes mounted data disk.
class MountedDataDisk {
  /// The name of the data disk.
  ///
  /// This name is local to the Google Cloud Platform project and uniquely
  /// identifies the disk within that project, for example
  /// "myproject-1014-104817-4c2-harness-0-disk-1".
  core.String? dataDisk;

  MountedDataDisk({
    this.dataDisk,
  });

  MountedDataDisk.fromJson(core.Map json_)
      : this(
          dataDisk: json_['dataDisk'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataDisk != null) 'dataDisk': dataDisk!,
      };
}

/// Information about an output of a multi-output DoFn.
class MultiOutputInfo {
  /// The id of the tag the user code will emit to this output by; this should
  /// correspond to the tag of some SideInputInfo.
  core.String? tag;

  MultiOutputInfo({
    this.tag,
  });

  MultiOutputInfo.fromJson(core.Map json_)
      : this(
          tag: json_['tag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (tag != null) 'tag': tag!,
      };
}

/// Basic metadata about a counter.
class NameAndKind {
  /// Counter aggregation kind.
  /// Possible string values are:
  /// - "INVALID" : Counter aggregation kind was not set.
  /// - "SUM" : Aggregated value is the sum of all contributed values.
  /// - "MAX" : Aggregated value is the max of all contributed values.
  /// - "MIN" : Aggregated value is the min of all contributed values.
  /// - "MEAN" : Aggregated value is the mean of all contributed values.
  /// - "OR" : Aggregated value represents the logical 'or' of all contributed
  /// values.
  /// - "AND" : Aggregated value represents the logical 'and' of all contributed
  /// values.
  /// - "SET" : Aggregated value is a set of unique contributed values.
  /// - "DISTRIBUTION" : Aggregated value captures statistics about a
  /// distribution.
  /// - "LATEST_VALUE" : Aggregated value tracks the latest value of a variable.
  core.String? kind;

  /// Name of the counter.
  core.String? name;

  NameAndKind({
    this.kind,
    this.name,
  });

  NameAndKind.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
      };
}

/// Statistics for the underflow and overflow bucket.
class OutlierStats {
  /// Number of values that are larger than the upper bound of the largest
  /// bucket.
  core.String? overflowCount;

  /// Mean of values in the overflow bucket.
  core.double? overflowMean;

  /// Number of values that are smaller than the lower bound of the smallest
  /// bucket.
  core.String? underflowCount;

  /// Mean of values in the undeflow bucket.
  core.double? underflowMean;

  OutlierStats({
    this.overflowCount,
    this.overflowMean,
    this.underflowCount,
    this.underflowMean,
  });

  OutlierStats.fromJson(core.Map json_)
      : this(
          overflowCount: json_['overflowCount'] as core.String?,
          overflowMean: (json_['overflowMean'] as core.num?)?.toDouble(),
          underflowCount: json_['underflowCount'] as core.String?,
          underflowMean: (json_['underflowMean'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (overflowCount != null) 'overflowCount': overflowCount!,
        if (overflowMean != null) 'overflowMean': overflowMean!,
        if (underflowCount != null) 'underflowCount': underflowCount!,
        if (underflowMean != null) 'underflowMean': underflowMean!,
      };
}

/// The packages that must be installed in order for a worker to run the steps
/// of the Cloud Dataflow job that will be assigned to its worker pool.
///
/// This is the mechanism by which the Cloud Dataflow SDK causes code to be
/// loaded onto the workers. For example, the Cloud Dataflow Java SDK might use
/// this to install jars containing the user's code and all of the various
/// dependencies (libraries, data files, etc.) required in order for that code
/// to run.
class Package {
  /// The resource to read the package from.
  ///
  /// The supported resource type is: Google Cloud Storage:
  /// storage.googleapis.com/{bucket} bucket.storage.googleapis.com/
  core.String? location;

  /// The name of the package.
  core.String? name;

  Package({
    this.location,
    this.name,
  });

  Package.fromJson(core.Map json_)
      : this(
          location: json_['location'] as core.String?,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (name != null) 'name': name!,
      };
}

/// An instruction that does a ParDo operation.
///
/// Takes one main input and zero or more side inputs, and produces zero or more
/// outputs. Runs user code.
class ParDoInstruction {
  /// The input.
  InstructionInput? input;

  /// Information about each of the outputs, if user_fn is a MultiDoFn.
  core.List<MultiOutputInfo>? multiOutputInfos;

  /// The number of outputs.
  core.int? numOutputs;

  /// Zero or more side inputs.
  core.List<SideInputInfo>? sideInputs;

  /// The user function to invoke.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? userFn;

  ParDoInstruction({
    this.input,
    this.multiOutputInfos,
    this.numOutputs,
    this.sideInputs,
    this.userFn,
  });

  ParDoInstruction.fromJson(core.Map json_)
      : this(
          input: json_.containsKey('input')
              ? InstructionInput.fromJson(
                  json_['input'] as core.Map<core.String, core.dynamic>)
              : null,
          multiOutputInfos: (json_['multiOutputInfos'] as core.List?)
              ?.map((value) => MultiOutputInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          numOutputs: json_['numOutputs'] as core.int?,
          sideInputs: (json_['sideInputs'] as core.List?)
              ?.map((value) => SideInputInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          userFn: json_.containsKey('userFn')
              ? json_['userFn'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (input != null) 'input': input!,
        if (multiOutputInfos != null) 'multiOutputInfos': multiOutputInfos!,
        if (numOutputs != null) 'numOutputs': numOutputs!,
        if (sideInputs != null) 'sideInputs': sideInputs!,
        if (userFn != null) 'userFn': userFn!,
      };
}

/// Describes a particular operation comprising a MapTask.
class ParallelInstruction {
  /// Additional information for Flatten instructions.
  FlattenInstruction? flatten;

  /// User-provided name of this operation.
  core.String? name;

  /// System-defined name for the operation in the original workflow graph.
  core.String? originalName;

  /// Describes the outputs of the instruction.
  core.List<InstructionOutput>? outputs;

  /// Additional information for ParDo instructions.
  ParDoInstruction? parDo;

  /// Additional information for PartialGroupByKey instructions.
  PartialGroupByKeyInstruction? partialGroupByKey;

  /// Additional information for Read instructions.
  ReadInstruction? read;

  /// System-defined name of this operation.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  /// Additional information for Write instructions.
  WriteInstruction? write;

  ParallelInstruction({
    this.flatten,
    this.name,
    this.originalName,
    this.outputs,
    this.parDo,
    this.partialGroupByKey,
    this.read,
    this.systemName,
    this.write,
  });

  ParallelInstruction.fromJson(core.Map json_)
      : this(
          flatten: json_.containsKey('flatten')
              ? FlattenInstruction.fromJson(
                  json_['flatten'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          originalName: json_['originalName'] as core.String?,
          outputs: (json_['outputs'] as core.List?)
              ?.map((value) => InstructionOutput.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          parDo: json_.containsKey('parDo')
              ? ParDoInstruction.fromJson(
                  json_['parDo'] as core.Map<core.String, core.dynamic>)
              : null,
          partialGroupByKey: json_.containsKey('partialGroupByKey')
              ? PartialGroupByKeyInstruction.fromJson(json_['partialGroupByKey']
                  as core.Map<core.String, core.dynamic>)
              : null,
          read: json_.containsKey('read')
              ? ReadInstruction.fromJson(
                  json_['read'] as core.Map<core.String, core.dynamic>)
              : null,
          systemName: json_['systemName'] as core.String?,
          write: json_.containsKey('write')
              ? WriteInstruction.fromJson(
                  json_['write'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (flatten != null) 'flatten': flatten!,
        if (name != null) 'name': name!,
        if (originalName != null) 'originalName': originalName!,
        if (outputs != null) 'outputs': outputs!,
        if (parDo != null) 'parDo': parDo!,
        if (partialGroupByKey != null) 'partialGroupByKey': partialGroupByKey!,
        if (read != null) 'read': read!,
        if (systemName != null) 'systemName': systemName!,
        if (write != null) 'write': write!,
      };
}

/// Structured data associated with this message.
class Parameter {
  /// Key or name for this parameter.
  core.String? key;

  /// Value for this parameter.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  Parameter({
    this.key,
    this.value,
  });

  Parameter.fromJson(core.Map json_)
      : this(
          key: json_['key'] as core.String?,
          value: json_['value'],
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Metadata for a specific parameter.
class ParameterMetadata {
  /// Additional metadata for describing this parameter.
  ///
  /// Optional.
  core.Map<core.String, core.String>? customMetadata;

  /// The default values will pre-populate the parameter with the given value
  /// from the proto.
  ///
  /// If default_value is left empty, the parameter will be populated with a
  /// default of the relevant type, e.g. false for a boolean.
  ///
  /// Optional.
  core.String? defaultValue;

  /// The options shown when ENUM ParameterType is specified.
  ///
  /// Optional.
  core.List<ParameterMetadataEnumOption>? enumOptions;

  /// Specifies a group name for this parameter to be rendered under.
  ///
  /// Group header text will be rendered exactly as specified in this field.
  /// Only considered when parent_name is NOT provided.
  ///
  /// Optional.
  core.String? groupName;

  /// The help text to display for the parameter.
  ///
  /// Required.
  core.String? helpText;

  /// Whether the parameter should be hidden in the UI.
  ///
  /// Optional.
  core.bool? hiddenUi;

  /// Whether the parameter is optional.
  ///
  /// Defaults to false.
  ///
  /// Optional.
  core.bool? isOptional;

  /// The label to display for the parameter.
  ///
  /// Required.
  core.String? label;

  /// The name of the parameter.
  ///
  /// Required.
  core.String? name;

  /// The type of the parameter.
  ///
  /// Used for selecting input picker.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DEFAULT" : Default input type.
  /// - "TEXT" : The parameter specifies generic text input.
  /// - "GCS_READ_BUCKET" : The parameter specifies a Cloud Storage Bucket to
  /// read from.
  /// - "GCS_WRITE_BUCKET" : The parameter specifies a Cloud Storage Bucket to
  /// write to.
  /// - "GCS_READ_FILE" : The parameter specifies a Cloud Storage file path to
  /// read from.
  /// - "GCS_WRITE_FILE" : The parameter specifies a Cloud Storage file path to
  /// write to.
  /// - "GCS_READ_FOLDER" : The parameter specifies a Cloud Storage folder path
  /// to read from.
  /// - "GCS_WRITE_FOLDER" : The parameter specifies a Cloud Storage folder to
  /// write to.
  /// - "PUBSUB_TOPIC" : The parameter specifies a Pub/Sub Topic.
  /// - "PUBSUB_SUBSCRIPTION" : The parameter specifies a Pub/Sub Subscription.
  /// - "BIGQUERY_TABLE" : The parameter specifies a BigQuery table.
  /// - "JAVASCRIPT_UDF_FILE" : The parameter specifies a JavaScript UDF in
  /// Cloud Storage.
  /// - "SERVICE_ACCOUNT" : The parameter specifies a Service Account email.
  /// - "MACHINE_TYPE" : The parameter specifies a Machine Type.
  /// - "KMS_KEY_NAME" : The parameter specifies a KMS Key name.
  /// - "WORKER_REGION" : The parameter specifies a Worker Region.
  /// - "WORKER_ZONE" : The parameter specifies a Worker Zone.
  /// - "BOOLEAN" : The parameter specifies a boolean input.
  /// - "ENUM" : The parameter specifies an enum input.
  /// - "NUMBER" : The parameter specifies a number input.
  /// - "KAFKA_TOPIC" : Deprecated. Please use KAFKA_READ_TOPIC instead.
  /// - "KAFKA_READ_TOPIC" : The parameter specifies the fully-qualified name of
  /// an Apache Kafka topic. This can be either a Google Managed Kafka topic or
  /// a non-managed Kafka topic.
  /// - "KAFKA_WRITE_TOPIC" : The parameter specifies the fully-qualified name
  /// of an Apache Kafka topic. This can be an existing Google Managed Kafka
  /// topic, the name for a new Google Managed Kafka topic, or an existing
  /// non-managed Kafka topic.
  core.String? paramType;

  /// Specifies the name of the parent parameter.
  ///
  /// Used in conjunction with 'parent_trigger_values' to make this parameter
  /// conditional (will only be rendered conditionally). Should be mappable to a
  /// ParameterMetadata.name field.
  ///
  /// Optional.
  core.String? parentName;

  /// The value(s) of the 'parent_name' parameter which will trigger this
  /// parameter to be shown.
  ///
  /// If left empty, ANY non-empty value in parent_name will trigger this
  /// parameter to be shown. Only considered when this parameter is conditional
  /// (when 'parent_name' has been provided).
  ///
  /// Optional.
  core.List<core.String>? parentTriggerValues;

  /// Regexes that the parameter must match.
  ///
  /// Optional.
  core.List<core.String>? regexes;

  ParameterMetadata({
    this.customMetadata,
    this.defaultValue,
    this.enumOptions,
    this.groupName,
    this.helpText,
    this.hiddenUi,
    this.isOptional,
    this.label,
    this.name,
    this.paramType,
    this.parentName,
    this.parentTriggerValues,
    this.regexes,
  });

  ParameterMetadata.fromJson(core.Map json_)
      : this(
          customMetadata:
              (json_['customMetadata'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          defaultValue: json_['defaultValue'] as core.String?,
          enumOptions: (json_['enumOptions'] as core.List?)
              ?.map((value) => ParameterMetadataEnumOption.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          groupName: json_['groupName'] as core.String?,
          helpText: json_['helpText'] as core.String?,
          hiddenUi: json_['hiddenUi'] as core.bool?,
          isOptional: json_['isOptional'] as core.bool?,
          label: json_['label'] as core.String?,
          name: json_['name'] as core.String?,
          paramType: json_['paramType'] as core.String?,
          parentName: json_['parentName'] as core.String?,
          parentTriggerValues: (json_['parentTriggerValues'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          regexes: (json_['regexes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customMetadata != null) 'customMetadata': customMetadata!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (enumOptions != null) 'enumOptions': enumOptions!,
        if (groupName != null) 'groupName': groupName!,
        if (helpText != null) 'helpText': helpText!,
        if (hiddenUi != null) 'hiddenUi': hiddenUi!,
        if (isOptional != null) 'isOptional': isOptional!,
        if (label != null) 'label': label!,
        if (name != null) 'name': name!,
        if (paramType != null) 'paramType': paramType!,
        if (parentName != null) 'parentName': parentName!,
        if (parentTriggerValues != null)
          'parentTriggerValues': parentTriggerValues!,
        if (regexes != null) 'regexes': regexes!,
      };
}

/// ParameterMetadataEnumOption specifies the option shown in the enum form.
class ParameterMetadataEnumOption {
  /// The description to display for the enum option.
  ///
  /// Optional.
  core.String? description;

  /// The label to display for the enum option.
  ///
  /// Optional.
  core.String? label;

  /// The value of the enum option.
  ///
  /// Required.
  core.String? value;

  ParameterMetadataEnumOption({
    this.description,
    this.label,
    this.value,
  });

  ParameterMetadataEnumOption.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          label: json_['label'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (label != null) 'label': label!,
        if (value != null) 'value': value!,
      };
}

/// An instruction that does a partial group-by-key.
///
/// One input and one output.
class PartialGroupByKeyInstruction {
  /// Describes the input to the partial group-by-key instruction.
  InstructionInput? input;

  /// The codec to use for interpreting an element in the input PTable.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? inputElementCodec;

  /// If this instruction includes a combining function this is the name of the
  /// intermediate store between the GBK and the CombineValues.
  core.String? originalCombineValuesInputStoreName;

  /// If this instruction includes a combining function, this is the name of the
  /// CombineValues instruction lifted into this instruction.
  core.String? originalCombineValuesStepName;

  /// Zero or more side inputs.
  core.List<SideInputInfo>? sideInputs;

  /// The value combining function to invoke.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? valueCombiningFn;

  PartialGroupByKeyInstruction({
    this.input,
    this.inputElementCodec,
    this.originalCombineValuesInputStoreName,
    this.originalCombineValuesStepName,
    this.sideInputs,
    this.valueCombiningFn,
  });

  PartialGroupByKeyInstruction.fromJson(core.Map json_)
      : this(
          input: json_.containsKey('input')
              ? InstructionInput.fromJson(
                  json_['input'] as core.Map<core.String, core.dynamic>)
              : null,
          inputElementCodec: json_.containsKey('inputElementCodec')
              ? json_['inputElementCodec']
                  as core.Map<core.String, core.dynamic>
              : null,
          originalCombineValuesInputStoreName:
              json_['originalCombineValuesInputStoreName'] as core.String?,
          originalCombineValuesStepName:
              json_['originalCombineValuesStepName'] as core.String?,
          sideInputs: (json_['sideInputs'] as core.List?)
              ?.map((value) => SideInputInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          valueCombiningFn: json_.containsKey('valueCombiningFn')
              ? json_['valueCombiningFn'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (input != null) 'input': input!,
        if (inputElementCodec != null) 'inputElementCodec': inputElementCodec!,
        if (originalCombineValuesInputStoreName != null)
          'originalCombineValuesInputStoreName':
              originalCombineValuesInputStoreName!,
        if (originalCombineValuesStepName != null)
          'originalCombineValuesStepName': originalCombineValuesStepName!,
        if (sideInputs != null) 'sideInputs': sideInputs!,
        if (valueCombiningFn != null) 'valueCombiningFn': valueCombiningFn!,
      };
}

/// Metrics for a particular unfused step and namespace.
///
/// A metric is uniquely identified by the `metrics_namespace`, `original_step`,
/// `metric name` and `metric_labels`.
class PerStepNamespaceMetrics {
  /// Metrics that are recorded for this namespace and unfused step.
  ///
  /// Optional.
  core.List<MetricValue>? metricValues;

  /// The namespace of these metrics on the worker.
  core.String? metricsNamespace;

  /// The original system name of the unfused step that these metrics are
  /// reported from.
  core.String? originalStep;

  PerStepNamespaceMetrics({
    this.metricValues,
    this.metricsNamespace,
    this.originalStep,
  });

  PerStepNamespaceMetrics.fromJson(core.Map json_)
      : this(
          metricValues: (json_['metricValues'] as core.List?)
              ?.map((value) => MetricValue.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          metricsNamespace: json_['metricsNamespace'] as core.String?,
          originalStep: json_['originalStep'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metricValues != null) 'metricValues': metricValues!,
        if (metricsNamespace != null) 'metricsNamespace': metricsNamespace!,
        if (originalStep != null) 'originalStep': originalStep!,
      };
}

/// Per worker metrics.
class PerWorkerMetrics {
  /// Metrics for a particular unfused step and namespace.
  ///
  /// Optional.
  core.List<PerStepNamespaceMetrics>? perStepNamespaceMetrics;

  PerWorkerMetrics({
    this.perStepNamespaceMetrics,
  });

  PerWorkerMetrics.fromJson(core.Map json_)
      : this(
          perStepNamespaceMetrics:
              (json_['perStepNamespaceMetrics'] as core.List?)
                  ?.map((value) => PerStepNamespaceMetrics.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (perStepNamespaceMetrics != null)
          'perStepNamespaceMetrics': perStepNamespaceMetrics!,
      };
}

/// A descriptive representation of submitted pipeline as well as the executed
/// form.
///
/// This data is provided by the Dataflow service for ease of visualizing the
/// pipeline and interpreting Dataflow provided metrics.
class PipelineDescription {
  /// Pipeline level display data.
  core.List<DisplayData>? displayData;

  /// Description of each stage of execution of the pipeline.
  core.List<ExecutionStageSummary>? executionPipelineStage;

  /// Description of each transform in the pipeline and collections between
  /// them.
  core.List<TransformSummary>? originalPipelineTransform;

  /// A hash value of the submitted pipeline portable graph step names if
  /// exists.
  core.String? stepNamesHash;

  PipelineDescription({
    this.displayData,
    this.executionPipelineStage,
    this.originalPipelineTransform,
    this.stepNamesHash,
  });

  PipelineDescription.fromJson(core.Map json_)
      : this(
          displayData: (json_['displayData'] as core.List?)
              ?.map((value) => DisplayData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          executionPipelineStage:
              (json_['executionPipelineStage'] as core.List?)
                  ?.map((value) => ExecutionStageSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          originalPipelineTransform:
              (json_['originalPipelineTransform'] as core.List?)
                  ?.map((value) => TransformSummary.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          stepNamesHash: json_['stepNamesHash'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayData != null) 'displayData': displayData!,
        if (executionPipelineStage != null)
          'executionPipelineStage': executionPipelineStage!,
        if (originalPipelineTransform != null)
          'originalPipelineTransform': originalPipelineTransform!,
        if (stepNamesHash != null) 'stepNamesHash': stepNamesHash!,
      };
}

/// A point in the timeseries.
class Point {
  /// The timestamp of the point.
  core.String? time;

  /// The value of the point.
  core.double? value;

  Point({
    this.time,
    this.value,
  });

  Point.fromJson(core.Map json_)
      : this(
          time: json_['time'] as core.String?,
          value: (json_['value'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (time != null) 'time': time!,
        if (value != null) 'value': value!,
      };
}

/// Position defines a position within a collection of data.
///
/// The value can be either the end position, a key (used with ordered
/// collections), a byte offset, or a record index.
class Position {
  /// Position is a byte offset.
  core.String? byteOffset;

  /// CloudPosition is a concat position.
  ConcatPosition? concatPosition;

  /// Position is past all other positions.
  ///
  /// Also useful for the end position of an unbounded range.
  core.bool? end;

  /// Position is a string key, ordered lexicographically.
  core.String? key;

  /// Position is a record index.
  core.String? recordIndex;

  /// CloudPosition is a base64 encoded BatchShufflePosition (with FIXED
  /// sharding).
  core.String? shufflePosition;

  Position({
    this.byteOffset,
    this.concatPosition,
    this.end,
    this.key,
    this.recordIndex,
    this.shufflePosition,
  });

  Position.fromJson(core.Map json_)
      : this(
          byteOffset: json_['byteOffset'] as core.String?,
          concatPosition: json_.containsKey('concatPosition')
              ? ConcatPosition.fromJson(json_['concatPosition']
                  as core.Map<core.String, core.dynamic>)
              : null,
          end: json_['end'] as core.bool?,
          key: json_['key'] as core.String?,
          recordIndex: json_['recordIndex'] as core.String?,
          shufflePosition: json_['shufflePosition'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (byteOffset != null) 'byteOffset': byteOffset!,
        if (concatPosition != null) 'concatPosition': concatPosition!,
        if (end != null) 'end': end!,
        if (key != null) 'key': key!,
        if (recordIndex != null) 'recordIndex': recordIndex!,
        if (shufflePosition != null) 'shufflePosition': shufflePosition!,
      };
}

/// Information about the progress of some component of job execution.
class ProgressTimeseries {
  /// The current progress of the component, in the range \[0,1\].
  core.double? currentProgress;

  /// History of progress for the component.
  ///
  /// Points are sorted by time.
  core.List<Point>? dataPoints;

  ProgressTimeseries({
    this.currentProgress,
    this.dataPoints,
  });

  ProgressTimeseries.fromJson(core.Map json_)
      : this(
          currentProgress: (json_['currentProgress'] as core.num?)?.toDouble(),
          dataPoints: (json_['dataPoints'] as core.List?)
              ?.map((value) =>
                  Point.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentProgress != null) 'currentProgress': currentProgress!,
        if (dataPoints != null) 'dataPoints': dataPoints!,
      };
}

/// Metadata for a Pub/Sub connector used by the job.
class PubSubIODetails {
  /// Subscription used in the connection.
  core.String? subscription;

  /// Topic accessed in the connection.
  core.String? topic;

  PubSubIODetails({
    this.subscription,
    this.topic,
  });

  PubSubIODetails.fromJson(core.Map json_)
      : this(
          subscription: json_['subscription'] as core.String?,
          topic: json_['topic'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subscription != null) 'subscription': subscription!,
        if (topic != null) 'topic': topic!,
      };
}

/// Identifies a pubsub location to use for transferring data into or out of a
/// streaming Dataflow job.
class PubsubLocation {
  /// Indicates whether the pipeline allows late-arriving data.
  core.bool? dropLateData;

  /// If true, then this location represents dynamic topics.
  core.bool? dynamicDestinations;

  /// If set, contains a pubsub label from which to extract record ids.
  ///
  /// If left empty, record deduplication will be strictly best effort.
  core.String? idLabel;

  /// A pubsub subscription, in the form of
  /// "pubsub.googleapis.com/subscriptions//"
  core.String? subscription;

  /// If set, contains a pubsub label from which to extract record timestamps.
  ///
  /// If left empty, record timestamps will be generated upon arrival.
  core.String? timestampLabel;

  /// A pubsub topic, in the form of "pubsub.googleapis.com/topics//"
  core.String? topic;

  /// If set, specifies the pubsub subscription that will be used for tracking
  /// custom time timestamps for watermark estimation.
  core.String? trackingSubscription;

  /// If true, then the client has requested to get pubsub attributes.
  core.bool? withAttributes;

  PubsubLocation({
    this.dropLateData,
    this.dynamicDestinations,
    this.idLabel,
    this.subscription,
    this.timestampLabel,
    this.topic,
    this.trackingSubscription,
    this.withAttributes,
  });

  PubsubLocation.fromJson(core.Map json_)
      : this(
          dropLateData: json_['dropLateData'] as core.bool?,
          dynamicDestinations: json_['dynamicDestinations'] as core.bool?,
          idLabel: json_['idLabel'] as core.String?,
          subscription: json_['subscription'] as core.String?,
          timestampLabel: json_['timestampLabel'] as core.String?,
          topic: json_['topic'] as core.String?,
          trackingSubscription: json_['trackingSubscription'] as core.String?,
          withAttributes: json_['withAttributes'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dropLateData != null) 'dropLateData': dropLateData!,
        if (dynamicDestinations != null)
          'dynamicDestinations': dynamicDestinations!,
        if (idLabel != null) 'idLabel': idLabel!,
        if (subscription != null) 'subscription': subscription!,
        if (timestampLabel != null) 'timestampLabel': timestampLabel!,
        if (topic != null) 'topic': topic!,
        if (trackingSubscription != null)
          'trackingSubscription': trackingSubscription!,
        if (withAttributes != null) 'withAttributes': withAttributes!,
      };
}

/// Represents a Pubsub snapshot.
class PubsubSnapshotMetadata {
  /// The expire time of the Pubsub snapshot.
  core.String? expireTime;

  /// The name of the Pubsub snapshot.
  core.String? snapshotName;

  /// The name of the Pubsub topic.
  core.String? topicName;

  PubsubSnapshotMetadata({
    this.expireTime,
    this.snapshotName,
    this.topicName,
  });

  PubsubSnapshotMetadata.fromJson(core.Map json_)
      : this(
          expireTime: json_['expireTime'] as core.String?,
          snapshotName: json_['snapshotName'] as core.String?,
          topicName: json_['topicName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (snapshotName != null) 'snapshotName': snapshotName!,
        if (topicName != null) 'topicName': topicName!,
      };
}

/// An instruction that reads records.
///
/// Takes no inputs, produces one output.
class ReadInstruction {
  /// The source to read from.
  Source? source;

  ReadInstruction({
    this.source,
  });

  ReadInstruction.fromJson(core.Map json_)
      : this(
          source: json_.containsKey('source')
              ? Source.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!,
      };
}

/// Request to report the status of WorkItems.
class ReportWorkItemStatusRequest {
  /// The current timestamp at the worker.
  core.String? currentWorkerTime;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the WorkItem's job.
  core.String? location;

  /// The project number of the project which owns the WorkItem's job.
  ///
  /// Optional.
  core.String? projectNumber;

  /// Untranslated bag-of-bytes WorkProgressUpdateRequest from UnifiedWorker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? unifiedWorkerRequest;

  /// The order is unimportant, except that the order of the
  /// WorkItemServiceState messages in the ReportWorkItemStatusResponse
  /// corresponds to the order of WorkItemStatus messages here.
  core.List<WorkItemStatus>? workItemStatuses;

  /// The ID of the worker reporting the WorkItem status.
  ///
  /// If this does not match the ID of the worker which the Dataflow service
  /// believes currently has the lease on the WorkItem, the report will be
  /// dropped (with an error response).
  core.String? workerId;

  ReportWorkItemStatusRequest({
    this.currentWorkerTime,
    this.location,
    this.projectNumber,
    this.unifiedWorkerRequest,
    this.workItemStatuses,
    this.workerId,
  });

  ReportWorkItemStatusRequest.fromJson(core.Map json_)
      : this(
          currentWorkerTime: json_['currentWorkerTime'] as core.String?,
          location: json_['location'] as core.String?,
          projectNumber: json_['projectNumber'] as core.String?,
          unifiedWorkerRequest: json_.containsKey('unifiedWorkerRequest')
              ? json_['unifiedWorkerRequest']
                  as core.Map<core.String, core.dynamic>
              : null,
          workItemStatuses: (json_['workItemStatuses'] as core.List?)
              ?.map((value) => WorkItemStatus.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          workerId: json_['workerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentWorkerTime != null) 'currentWorkerTime': currentWorkerTime!,
        if (location != null) 'location': location!,
        if (projectNumber != null) 'projectNumber': projectNumber!,
        if (unifiedWorkerRequest != null)
          'unifiedWorkerRequest': unifiedWorkerRequest!,
        if (workItemStatuses != null) 'workItemStatuses': workItemStatuses!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Response from a request to report the status of WorkItems.
class ReportWorkItemStatusResponse {
  /// Untranslated bag-of-bytes WorkProgressUpdateResponse for UnifiedWorker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? unifiedWorkerResponse;

  /// A set of messages indicating the service-side state for each WorkItem
  /// whose status was reported, in the same order as the WorkItemStatus
  /// messages in the ReportWorkItemStatusRequest which resulting in this
  /// response.
  core.List<WorkItemServiceState>? workItemServiceStates;

  ReportWorkItemStatusResponse({
    this.unifiedWorkerResponse,
    this.workItemServiceStates,
  });

  ReportWorkItemStatusResponse.fromJson(core.Map json_)
      : this(
          unifiedWorkerResponse: json_.containsKey('unifiedWorkerResponse')
              ? json_['unifiedWorkerResponse']
                  as core.Map<core.String, core.dynamic>
              : null,
          workItemServiceStates: (json_['workItemServiceStates'] as core.List?)
              ?.map((value) => WorkItemServiceState.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (unifiedWorkerResponse != null)
          'unifiedWorkerResponse': unifiedWorkerResponse!,
        if (workItemServiceStates != null)
          'workItemServiceStates': workItemServiceStates!,
      };
}

/// Represents the level of parallelism in a WorkItem's input, reported by the
/// worker.
class ReportedParallelism {
  /// Specifies whether the parallelism is infinite.
  ///
  /// If true, "value" is ignored. Infinite parallelism means the service will
  /// assume that the work item can always be split into more non-empty work
  /// items by dynamic splitting. This is a work-around for lack of support for
  /// infinity by the current JSON-based Java RPC stack.
  core.bool? isInfinite;

  /// Specifies the level of parallelism in case it is finite.
  core.double? value;

  ReportedParallelism({
    this.isInfinite,
    this.value,
  });

  ReportedParallelism.fromJson(core.Map json_)
      : this(
          isInfinite: json_['isInfinite'] as core.bool?,
          value: (json_['value'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isInfinite != null) 'isInfinite': isInfinite!,
        if (value != null) 'value': value!,
      };
}

/// Worker metrics exported from workers.
///
/// This contains resource utilization metrics accumulated from a variety of
/// sources. For more information, see go/df-resource-signals.
class ResourceUtilizationReport {
  /// Per container information.
  ///
  /// Key: container name.
  core.Map<core.String, ResourceUtilizationReport>? containers;

  /// CPU utilization samples.
  core.List<CPUTime>? cpuTime;

  /// GPU usage samples.
  ///
  /// Optional.
  core.List<GPUUsage>? gpuUsage;

  /// Memory utilization samples.
  core.List<MemInfo>? memoryInfo;

  ResourceUtilizationReport({
    this.containers,
    this.cpuTime,
    this.gpuUsage,
    this.memoryInfo,
  });

  ResourceUtilizationReport.fromJson(core.Map json_)
      : this(
          containers:
              (json_['containers'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              ResourceUtilizationReport.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          cpuTime: (json_['cpuTime'] as core.List?)
              ?.map((value) => CPUTime.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          gpuUsage: (json_['gpuUsage'] as core.List?)
              ?.map((value) => GPUUsage.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          memoryInfo: (json_['memoryInfo'] as core.List?)
              ?.map((value) => MemInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containers != null) 'containers': containers!,
        if (cpuTime != null) 'cpuTime': cpuTime!,
        if (gpuUsage != null) 'gpuUsage': gpuUsage!,
        if (memoryInfo != null) 'memoryInfo': memoryInfo!,
      };
}

/// Service-side response to WorkerMessage reporting resource utilization.
typedef ResourceUtilizationReportResponse = $Empty;

/// The environment values to set at runtime.
class RuntimeEnvironment {
  /// Additional experiment flags for the job, specified with the
  /// `--experiments` option.
  ///
  /// Optional.
  core.List<core.String>? additionalExperiments;

  /// Additional pipeline option flags for the job.
  ///
  /// Optional.
  core.List<core.String>? additionalPipelineOptions;

  /// Additional user labels to be specified for the job.
  ///
  /// Keys and values should follow the restrictions specified in the
  /// [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. An object containing a list of "key": value pairs. Example: {
  /// "name": "wrench", "mass": "1kg", "count": "3" }.
  ///
  /// Optional.
  core.Map<core.String, core.String>? additionalUserLabels;

  /// Whether to bypass the safety checks for the job's temporary directory.
  ///
  /// Use with caution.
  ///
  /// Optional.
  core.bool? bypassTempDirValidation;

  /// The disk size, in gigabytes, to use on each remote Compute Engine worker
  /// instance.
  ///
  /// Optional.
  core.int? diskSizeGb;

  /// Whether to enable Streaming Engine for the job.
  ///
  /// Optional.
  core.bool? enableStreamingEngine;

  /// Configuration for VM IPs.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// Name for the Cloud KMS key for the job.
  ///
  /// Key format is: projects//locations//keyRings//cryptoKeys/
  ///
  /// Optional.
  core.String? kmsKeyName;

  /// The machine type to use for the job.
  ///
  /// Defaults to the value from the template if not specified.
  ///
  /// Optional.
  core.String? machineType;

  /// The maximum number of Google Compute Engine instances to be made available
  /// to your pipeline during execution, from 1 to 1000.
  ///
  /// The default value is 1.
  ///
  /// Optional.
  core.int? maxWorkers;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  ///
  /// Optional.
  core.String? network;

  /// The initial number of Google Compute Engine instances for the job.
  ///
  /// The default value is 11.
  ///
  /// Optional.
  core.int? numWorkers;

  /// The email address of the service account to run the job as.
  ///
  /// Optional.
  core.String? serviceAccountEmail;

  /// Specifies the Streaming Engine message processing guarantees.
  ///
  /// Reduces cost and latency but might result in duplicate messages committed
  /// to storage. Designed to run simple mapping streaming ETL jobs at the
  /// lowest cost. For example, Change Data Capture (CDC) to BigQuery is a
  /// canonical use case. For more information, see
  /// [Set the pipeline streaming mode](https://cloud.google.com/dataflow/docs/guides/streaming-modes).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STREAMING_MODE_UNSPECIFIED" : Run in the default mode.
  /// - "STREAMING_MODE_EXACTLY_ONCE" : In this mode, message deduplication is
  /// performed against persistent state to make sure each message is processed
  /// and committed to storage exactly once.
  /// - "STREAMING_MODE_AT_LEAST_ONCE" : Message deduplication is not performed.
  /// Messages might be processed multiple times, and the results are applied
  /// multiple times. Note: Setting this value also enables Streaming Engine and
  /// Streaming Engine resource-based billing.
  core.String? streamingMode;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// You can specify a subnetwork using either a complete URL or an abbreviated
  /// path. Expected to be of the form
  /// "https://www.googleapis.com/compute/v1/projects/HOST_PROJECT_ID/regions/REGION/subnetworks/SUBNETWORK"
  /// or "regions/REGION/subnetworks/SUBNETWORK". If the subnetwork is located
  /// in a Shared VPC network, you must use the complete URL.
  ///
  /// Optional.
  core.String? subnetwork;

  /// The Cloud Storage path to use for temporary files.
  ///
  /// Must be a valid Cloud Storage URL, beginning with `gs://`.
  ///
  /// Required.
  core.String? tempLocation;

  /// The Compute Engine region
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1".
  ///
  /// Mutually exclusive with worker_zone. If neither worker_region nor
  /// worker_zone is specified, default to the control plane's region.
  ///
  /// Required.
  core.String? workerRegion;

  /// The Compute Engine zone
  /// (https://cloud.google.com/compute/docs/regions-zones/regions-zones) in
  /// which worker processing should occur, e.g. "us-west1-a".
  ///
  /// Mutually exclusive with worker_region. If neither worker_region nor
  /// worker_zone is specified, a zone in the control plane's region is chosen
  /// based on available capacity. If both `worker_zone` and `zone` are set,
  /// `worker_zone` takes precedence.
  ///
  /// Optional.
  core.String? workerZone;

  /// The Compute Engine
  /// [availability zone](https://cloud.google.com/compute/docs/regions-zones/regions-zones)
  /// for launching worker instances to run your pipeline.
  ///
  /// In the future, worker_zone will take precedence.
  ///
  /// Optional.
  core.String? zone;

  RuntimeEnvironment({
    this.additionalExperiments,
    this.additionalPipelineOptions,
    this.additionalUserLabels,
    this.bypassTempDirValidation,
    this.diskSizeGb,
    this.enableStreamingEngine,
    this.ipConfiguration,
    this.kmsKeyName,
    this.machineType,
    this.maxWorkers,
    this.network,
    this.numWorkers,
    this.serviceAccountEmail,
    this.streamingMode,
    this.subnetwork,
    this.tempLocation,
    this.workerRegion,
    this.workerZone,
    this.zone,
  });

  RuntimeEnvironment.fromJson(core.Map json_)
      : this(
          additionalExperiments: (json_['additionalExperiments'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          additionalPipelineOptions:
              (json_['additionalPipelineOptions'] as core.List?)
                  ?.map((value) => value as core.String)
                  .toList(),
          additionalUserLabels: (json_['additionalUserLabels']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          bypassTempDirValidation:
              json_['bypassTempDirValidation'] as core.bool?,
          diskSizeGb: json_['diskSizeGb'] as core.int?,
          enableStreamingEngine: json_['enableStreamingEngine'] as core.bool?,
          ipConfiguration: json_['ipConfiguration'] as core.String?,
          kmsKeyName: json_['kmsKeyName'] as core.String?,
          machineType: json_['machineType'] as core.String?,
          maxWorkers: json_['maxWorkers'] as core.int?,
          network: json_['network'] as core.String?,
          numWorkers: json_['numWorkers'] as core.int?,
          serviceAccountEmail: json_['serviceAccountEmail'] as core.String?,
          streamingMode: json_['streamingMode'] as core.String?,
          subnetwork: json_['subnetwork'] as core.String?,
          tempLocation: json_['tempLocation'] as core.String?,
          workerRegion: json_['workerRegion'] as core.String?,
          workerZone: json_['workerZone'] as core.String?,
          zone: json_['zone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalExperiments != null)
          'additionalExperiments': additionalExperiments!,
        if (additionalPipelineOptions != null)
          'additionalPipelineOptions': additionalPipelineOptions!,
        if (additionalUserLabels != null)
          'additionalUserLabels': additionalUserLabels!,
        if (bypassTempDirValidation != null)
          'bypassTempDirValidation': bypassTempDirValidation!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
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
        if (streamingMode != null) 'streamingMode': streamingMode!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (tempLocation != null) 'tempLocation': tempLocation!,
        if (workerRegion != null) 'workerRegion': workerRegion!,
        if (workerZone != null) 'workerZone': workerZone!,
        if (zone != null) 'zone': zone!,
      };
}

/// RuntimeMetadata describing a runtime environment.
class RuntimeMetadata {
  /// The parameters for the template.
  core.List<ParameterMetadata>? parameters;

  /// SDK Info for the template.
  SDKInfo? sdkInfo;

  RuntimeMetadata({
    this.parameters,
    this.sdkInfo,
  });

  RuntimeMetadata.fromJson(core.Map json_)
      : this(
          parameters: (json_['parameters'] as core.List?)
              ?.map((value) => ParameterMetadata.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          sdkInfo: json_.containsKey('sdkInfo')
              ? SDKInfo.fromJson(
                  json_['sdkInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
        if (sdkInfo != null) 'sdkInfo': sdkInfo!,
      };
}

/// Additional job parameters that can only be updated during runtime using the
/// projects.jobs.update method.
///
/// These fields have no effect when specified during job creation.
class RuntimeUpdatableParams {
  /// The maximum number of workers to cap autoscaling at.
  ///
  /// This field is currently only supported for Streaming Engine jobs.
  core.int? maxNumWorkers;

  /// The minimum number of workers to scale down to.
  ///
  /// This field is currently only supported for Streaming Engine jobs.
  core.int? minNumWorkers;

  /// Target worker utilization, compared against the aggregate utilization of
  /// the worker pool by autoscaler, to determine upscaling and downscaling when
  /// absent other constraints such as backlog.
  ///
  /// For more information, see
  /// [Update an existing pipeline](https://cloud.google.com/dataflow/docs/guides/updating-a-pipeline).
  core.double? workerUtilizationHint;

  RuntimeUpdatableParams({
    this.maxNumWorkers,
    this.minNumWorkers,
    this.workerUtilizationHint,
  });

  RuntimeUpdatableParams.fromJson(core.Map json_)
      : this(
          maxNumWorkers: json_['maxNumWorkers'] as core.int?,
          minNumWorkers: json_['minNumWorkers'] as core.int?,
          workerUtilizationHint:
              (json_['workerUtilizationHint'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxNumWorkers != null) 'maxNumWorkers': maxNumWorkers!,
        if (minNumWorkers != null) 'minNumWorkers': minNumWorkers!,
        if (workerUtilizationHint != null)
          'workerUtilizationHint': workerUtilizationHint!,
      };
}

/// SDK Information.
class SDKInfo {
  /// The SDK Language.
  ///
  /// Required.
  /// Possible string values are:
  /// - "UNKNOWN" : UNKNOWN Language.
  /// - "JAVA" : Java.
  /// - "PYTHON" : Python.
  /// - "GO" : Go.
  /// - "YAML" : YAML.
  core.String? language;

  /// The SDK version.
  ///
  /// Optional.
  core.String? version;

  SDKInfo({
    this.language,
    this.version,
  });

  SDKInfo.fromJson(core.Map json_)
      : this(
          language: json_['language'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (language != null) 'language': language!,
        if (version != null) 'version': version!,
      };
}

/// A bug found in the Dataflow SDK.
class SdkBug {
  /// How severe the SDK bug is.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : A bug of unknown severity.
  /// - "NOTICE" : A minor bug that that may reduce reliability or performance
  /// for some jobs. Impact will be minimal or non-existent for most jobs.
  /// - "WARNING" : A bug that has some likelihood of causing performance
  /// degradation, data loss, or job failures.
  /// - "SEVERE" : A bug with extremely significant impact. Jobs may fail
  /// erroneously, performance may be severely degraded, and data loss may be
  /// very likely.
  core.String? severity;

  /// Describes the impact of this SDK bug.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unknown issue with this SDK.
  /// - "GENERAL" : Catch-all for SDK bugs that don't fit in the below
  /// categories.
  /// - "PERFORMANCE" : Using this version of the SDK may result in degraded
  /// performance.
  /// - "DATALOSS" : Using this version of the SDK may cause data loss.
  core.String? type;

  /// Link to more information on the bug.
  ///
  /// Output only.
  core.String? uri;

  SdkBug({
    this.severity,
    this.type,
    this.uri,
  });

  SdkBug.fromJson(core.Map json_)
      : this(
          severity: json_['severity'] as core.String?,
          type: json_['type'] as core.String?,
          uri: json_['uri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (severity != null) 'severity': severity!,
        if (type != null) 'type': type!,
        if (uri != null) 'uri': uri!,
      };
}

/// Defines an SDK harness container for executing Dataflow pipelines.
class SdkHarnessContainerImage {
  /// The set of capabilities enumerated in the above Environment proto.
  ///
  /// See also
  /// [beam_runner_api.proto](https://github.com/apache/beam/blob/master/model/pipeline/src/main/proto/org/apache/beam/model/pipeline/v1/beam_runner_api.proto)
  core.List<core.String>? capabilities;

  /// A docker container image that resides in Google Container Registry.
  core.String? containerImage;

  /// Environment ID for the Beam runner API proto Environment that corresponds
  /// to the current SDK Harness.
  core.String? environmentId;

  /// If true, recommends the Dataflow service to use only one core per SDK
  /// container instance with this image.
  ///
  /// If false (or unset) recommends using more than one core per SDK container
  /// instance with this image for efficiency. Note that Dataflow service may
  /// choose to override this property if needed.
  core.bool? useSingleCorePerContainer;

  SdkHarnessContainerImage({
    this.capabilities,
    this.containerImage,
    this.environmentId,
    this.useSingleCorePerContainer,
  });

  SdkHarnessContainerImage.fromJson(core.Map json_)
      : this(
          capabilities: (json_['capabilities'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          containerImage: json_['containerImage'] as core.String?,
          environmentId: json_['environmentId'] as core.String?,
          useSingleCorePerContainer:
              json_['useSingleCorePerContainer'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (capabilities != null) 'capabilities': capabilities!,
        if (containerImage != null) 'containerImage': containerImage!,
        if (environmentId != null) 'environmentId': environmentId!,
        if (useSingleCorePerContainer != null)
          'useSingleCorePerContainer': useSingleCorePerContainer!,
      };
}

/// The version of the SDK used to run the job.
class SdkVersion {
  /// Known bugs found in this SDK version.
  ///
  /// Output only.
  core.List<SdkBug>? bugs;

  /// The support status for this SDK version.
  /// Possible string values are:
  /// - "UNKNOWN" : Cloud Dataflow is unaware of this version.
  /// - "SUPPORTED" : This is a known version of an SDK, and is supported.
  /// - "STALE" : A newer version of the SDK family exists, and an update is
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

  SdkVersion({
    this.bugs,
    this.sdkSupportStatus,
    this.version,
    this.versionDisplayName,
  });

  SdkVersion.fromJson(core.Map json_)
      : this(
          bugs: (json_['bugs'] as core.List?)
              ?.map((value) =>
                  SdkBug.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          sdkSupportStatus: json_['sdkSupportStatus'] as core.String?,
          version: json_['version'] as core.String?,
          versionDisplayName: json_['versionDisplayName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bugs != null) 'bugs': bugs!,
        if (sdkSupportStatus != null) 'sdkSupportStatus': sdkSupportStatus!,
        if (version != null) 'version': version!,
        if (versionDisplayName != null)
          'versionDisplayName': versionDisplayName!,
      };
}

/// Request to send encoded debug information.
///
/// Next ID: 8
class SendDebugCaptureRequest {
  /// The internal component id for which debug information is sent.
  core.String? componentId;

  /// The encoded debug information.
  core.String? data;

  /// Format for the data field above (id=5).
  /// Possible string values are:
  /// - "DATA_FORMAT_UNSPECIFIED" : Format unspecified, parsing is determined
  /// based upon page type and legacy encoding.
  /// (go/protodosdonts#do-include-an-unspecified-value-in-an-enum)
  /// - "RAW" : Raw HTML string.
  /// - "JSON" : JSON-encoded string.
  /// - "ZLIB" : Websafe encoded zlib-compressed string.
  /// - "BROTLI" : Websafe encoded brotli-compressed string.
  core.String? dataFormat;

  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job specified by job_id.
  core.String? location;

  /// The worker id, i.e., VM hostname.
  core.String? workerId;

  SendDebugCaptureRequest({
    this.componentId,
    this.data,
    this.dataFormat,
    this.location,
    this.workerId,
  });

  SendDebugCaptureRequest.fromJson(core.Map json_)
      : this(
          componentId: json_['componentId'] as core.String?,
          data: json_['data'] as core.String?,
          dataFormat: json_['dataFormat'] as core.String?,
          location: json_['location'] as core.String?,
          workerId: json_['workerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (componentId != null) 'componentId': componentId!,
        if (data != null) 'data': data!,
        if (dataFormat != null) 'dataFormat': dataFormat!,
        if (location != null) 'location': location!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Response to a send capture request.
///
/// nothing
typedef SendDebugCaptureResponse = $Empty;

/// A request for sending worker messages to the service.
class SendWorkerMessagesRequest {
  /// The
  /// [regional endpoint](https://cloud.google.com/dataflow/docs/concepts/regional-endpoints)
  /// that contains the job.
  core.String? location;

  /// The WorkerMessages to send.
  core.List<WorkerMessage>? workerMessages;

  SendWorkerMessagesRequest({
    this.location,
    this.workerMessages,
  });

  SendWorkerMessagesRequest.fromJson(core.Map json_)
      : this(
          location: json_['location'] as core.String?,
          workerMessages: (json_['workerMessages'] as core.List?)
              ?.map((value) => WorkerMessage.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
        if (workerMessages != null) 'workerMessages': workerMessages!,
      };
}

/// The response to the worker messages.
class SendWorkerMessagesResponse {
  /// The servers response to the worker messages.
  core.List<WorkerMessageResponse>? workerMessageResponses;

  SendWorkerMessagesResponse({
    this.workerMessageResponses,
  });

  SendWorkerMessagesResponse.fromJson(core.Map json_)
      : this(
          workerMessageResponses:
              (json_['workerMessageResponses'] as core.List?)
                  ?.map((value) => WorkerMessageResponse.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (workerMessageResponses != null)
          'workerMessageResponses': workerMessageResponses!,
      };
}

/// Describes a particular function to invoke.
class SeqMapTask {
  /// Information about each of the inputs.
  core.List<SideInputInfo>? inputs;

  /// The user-provided name of the SeqDo operation.
  core.String? name;

  /// Information about each of the outputs.
  core.List<SeqMapTaskOutputInfo>? outputInfos;

  /// System-defined name of the stage containing the SeqDo operation.
  ///
  /// Unique across the workflow.
  core.String? stageName;

  /// System-defined name of the SeqDo operation.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  /// The user function to invoke.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? userFn;

  SeqMapTask({
    this.inputs,
    this.name,
    this.outputInfos,
    this.stageName,
    this.systemName,
    this.userFn,
  });

  SeqMapTask.fromJson(core.Map json_)
      : this(
          inputs: (json_['inputs'] as core.List?)
              ?.map((value) => SideInputInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          outputInfos: (json_['outputInfos'] as core.List?)
              ?.map((value) => SeqMapTaskOutputInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          stageName: json_['stageName'] as core.String?,
          systemName: json_['systemName'] as core.String?,
          userFn: json_.containsKey('userFn')
              ? json_['userFn'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputs != null) 'inputs': inputs!,
        if (name != null) 'name': name!,
        if (outputInfos != null) 'outputInfos': outputInfos!,
        if (stageName != null) 'stageName': stageName!,
        if (systemName != null) 'systemName': systemName!,
        if (userFn != null) 'userFn': userFn!,
      };
}

/// Information about an output of a SeqMapTask.
class SeqMapTaskOutputInfo {
  /// The sink to write the output value to.
  Sink? sink;

  /// The id of the TupleTag the user code will tag the output value by.
  core.String? tag;

  SeqMapTaskOutputInfo({
    this.sink,
    this.tag,
  });

  SeqMapTaskOutputInfo.fromJson(core.Map json_)
      : this(
          sink: json_.containsKey('sink')
              ? Sink.fromJson(
                  json_['sink'] as core.Map<core.String, core.dynamic>)
              : null,
          tag: json_['tag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sink != null) 'sink': sink!,
        if (tag != null) 'tag': tag!,
      };
}

/// Resources used by the Dataflow Service to run the job.
class ServiceResources {
  /// List of Cloud Zones being used by the Dataflow Service for this job.
  ///
  /// Example: us-central1-c
  ///
  /// Output only.
  core.List<core.String>? zones;

  ServiceResources({
    this.zones,
  });

  ServiceResources.fromJson(core.Map json_)
      : this(
          zones: (json_['zones'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (zones != null) 'zones': zones!,
      };
}

/// A task which consists of a shell command for the worker to execute.
class ShellTask {
  /// The shell command to run.
  core.String? command;

  /// Exit code for the task.
  core.int? exitCode;

  ShellTask({
    this.command,
    this.exitCode,
  });

  ShellTask.fromJson(core.Map json_)
      : this(
          command: json_['command'] as core.String?,
          exitCode: json_['exitCode'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (command != null) 'command': command!,
        if (exitCode != null) 'exitCode': exitCode!,
      };
}

/// Information about a side input of a DoFn or an input of a SeqDoFn.
class SideInputInfo {
  /// How to interpret the source element(s) as a side input value.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? kind;

  /// The source(s) to read element(s) from to get the value of this side input.
  ///
  /// If more than one source, then the elements are taken from the sources, in
  /// the specified order if order matters. At least one source is required.
  core.List<Source>? sources;

  /// The id of the tag the user code will access this side input by; this
  /// should correspond to the tag of some MultiOutputInfo.
  core.String? tag;

  SideInputInfo({
    this.kind,
    this.sources,
    this.tag,
  });

  SideInputInfo.fromJson(core.Map json_)
      : this(
          kind: json_.containsKey('kind')
              ? json_['kind'] as core.Map<core.String, core.dynamic>
              : null,
          sources: (json_['sources'] as core.List?)
              ?.map((value) =>
                  Source.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          tag: json_['tag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (sources != null) 'sources': sources!,
        if (tag != null) 'tag': tag!,
      };
}

/// A sink that records can be encoded and written to.
class Sink {
  /// The codec to use to encode data written to the sink.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? codec;

  /// The sink to write to, plus its parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? spec;

  Sink({
    this.codec,
    this.spec,
  });

  Sink.fromJson(core.Map json_)
      : this(
          codec: json_.containsKey('codec')
              ? json_['codec'] as core.Map<core.String, core.dynamic>
              : null,
          spec: json_.containsKey('spec')
              ? json_['spec'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (codec != null) 'codec': codec!,
        if (spec != null) 'spec': spec!,
      };
}

/// Represents a snapshot of a job.
class Snapshot {
  /// The time this snapshot was created.
  core.String? creationTime;

  /// User specified description of the snapshot.
  ///
  /// Maybe empty.
  core.String? description;

  /// The disk byte size of the snapshot.
  ///
  /// Only available for snapshots in READY state.
  core.String? diskSizeBytes;

  /// The unique ID of this snapshot.
  core.String? id;

  /// The project this snapshot belongs to.
  core.String? projectId;

  /// Pub/Sub snapshot metadata.
  core.List<PubsubSnapshotMetadata>? pubsubMetadata;

  /// Cloud region where this snapshot lives in, e.g., "us-central1".
  core.String? region;

  /// The job this snapshot was created from.
  core.String? sourceJobId;

  /// State of the snapshot.
  /// Possible string values are:
  /// - "UNKNOWN_SNAPSHOT_STATE" : Unknown state.
  /// - "PENDING" : Snapshot intent to create has been persisted, snapshotting
  /// of state has not yet started.
  /// - "RUNNING" : Snapshotting is being performed.
  /// - "READY" : Snapshot has been created and is ready to be used.
  /// - "FAILED" : Snapshot failed to be created.
  /// - "DELETED" : Snapshot has been deleted.
  core.String? state;

  /// The time after which this snapshot will be automatically deleted.
  core.String? ttl;

  Snapshot({
    this.creationTime,
    this.description,
    this.diskSizeBytes,
    this.id,
    this.projectId,
    this.pubsubMetadata,
    this.region,
    this.sourceJobId,
    this.state,
    this.ttl,
  });

  Snapshot.fromJson(core.Map json_)
      : this(
          creationTime: json_['creationTime'] as core.String?,
          description: json_['description'] as core.String?,
          diskSizeBytes: json_['diskSizeBytes'] as core.String?,
          id: json_['id'] as core.String?,
          projectId: json_['projectId'] as core.String?,
          pubsubMetadata: (json_['pubsubMetadata'] as core.List?)
              ?.map((value) => PubsubSnapshotMetadata.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          region: json_['region'] as core.String?,
          sourceJobId: json_['sourceJobId'] as core.String?,
          state: json_['state'] as core.String?,
          ttl: json_['ttl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (description != null) 'description': description!,
        if (diskSizeBytes != null) 'diskSizeBytes': diskSizeBytes!,
        if (id != null) 'id': id!,
        if (projectId != null) 'projectId': projectId!,
        if (pubsubMetadata != null) 'pubsubMetadata': pubsubMetadata!,
        if (region != null) 'region': region!,
        if (sourceJobId != null) 'sourceJobId': sourceJobId!,
        if (state != null) 'state': state!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// Request to create a snapshot of a job.
class SnapshotJobRequest {
  /// User specified description of the snapshot.
  ///
  /// Maybe empty.
  core.String? description;

  /// The location that contains this job.
  core.String? location;

  /// If true, perform snapshots for sources which support this.
  core.bool? snapshotSources;

  /// TTL for the snapshot.
  core.String? ttl;

  SnapshotJobRequest({
    this.description,
    this.location,
    this.snapshotSources,
    this.ttl,
  });

  SnapshotJobRequest.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          location: json_['location'] as core.String?,
          snapshotSources: json_['snapshotSources'] as core.bool?,
          ttl: json_['ttl'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (location != null) 'location': location!,
        if (snapshotSources != null) 'snapshotSources': snapshotSources!,
        if (ttl != null) 'ttl': ttl!,
      };
}

/// A source that records can be read and decoded from.
class Source {
  /// While splitting, sources may specify the produced bundles as differences
  /// against another source, in order to save backend-side memory and allow
  /// bigger jobs.
  ///
  /// For details, see SourceSplitRequest. To support this use case, the full
  /// set of parameters of the source is logically obtained by taking the latest
  /// explicitly specified value of each parameter in the order: base_specs
  /// (later items win), spec (overrides anything in base_specs).
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? baseSpecs;

  /// The codec to use to decode data read from the source.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? codec;

  /// Setting this value to true hints to the framework that the source doesn't
  /// need splitting, and using SourceSplitRequest on it would yield
  /// SOURCE_SPLIT_OUTCOME_USE_CURRENT.
  ///
  /// E.g. a file splitter may set this to true when splitting a single file
  /// into a set of byte ranges of appropriate size, and set this to false when
  /// splitting a filepattern into individual files. However, for efficiency, a
  /// file splitter may decide to produce file subranges directly from the
  /// filepattern to avoid a splitting round-trip. See SourceSplitRequest for an
  /// overview of the splitting process. This field is meaningful only in the
  /// Source objects populated by the user (e.g. when filling in a
  /// DerivedSource). Source objects supplied by the framework to the user don't
  /// have this field populated.
  core.bool? doesNotNeedSplitting;

  /// Optionally, metadata for this source can be supplied right away, avoiding
  /// a SourceGetMetadataOperation roundtrip (see SourceOperationRequest).
  ///
  /// This field is meaningful only in the Source objects populated by the user
  /// (e.g. when filling in a DerivedSource). Source objects supplied by the
  /// framework to the user don't have this field populated.
  SourceMetadata? metadata;

  /// The source to read from, plus its parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? spec;

  Source({
    this.baseSpecs,
    this.codec,
    this.doesNotNeedSplitting,
    this.metadata,
    this.spec,
  });

  Source.fromJson(core.Map json_)
      : this(
          baseSpecs: (json_['baseSpecs'] as core.List?)
              ?.map((value) => value as core.Map<core.String, core.dynamic>)
              .toList(),
          codec: json_.containsKey('codec')
              ? json_['codec'] as core.Map<core.String, core.dynamic>
              : null,
          doesNotNeedSplitting: json_['doesNotNeedSplitting'] as core.bool?,
          metadata: json_.containsKey('metadata')
              ? SourceMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          spec: json_.containsKey('spec')
              ? json_['spec'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseSpecs != null) 'baseSpecs': baseSpecs!,
        if (codec != null) 'codec': codec!,
        if (doesNotNeedSplitting != null)
          'doesNotNeedSplitting': doesNotNeedSplitting!,
        if (metadata != null) 'metadata': metadata!,
        if (spec != null) 'spec': spec!,
      };
}

/// DEPRECATED in favor of DynamicSourceSplit.
class SourceFork {
  /// DEPRECATED
  SourceSplitShard? primary;

  /// DEPRECATED
  DerivedSource? primarySource;

  /// DEPRECATED
  SourceSplitShard? residual;

  /// DEPRECATED
  DerivedSource? residualSource;

  SourceFork({
    this.primary,
    this.primarySource,
    this.residual,
    this.residualSource,
  });

  SourceFork.fromJson(core.Map json_)
      : this(
          primary: json_.containsKey('primary')
              ? SourceSplitShard.fromJson(
                  json_['primary'] as core.Map<core.String, core.dynamic>)
              : null,
          primarySource: json_.containsKey('primarySource')
              ? DerivedSource.fromJson(
                  json_['primarySource'] as core.Map<core.String, core.dynamic>)
              : null,
          residual: json_.containsKey('residual')
              ? SourceSplitShard.fromJson(
                  json_['residual'] as core.Map<core.String, core.dynamic>)
              : null,
          residualSource: json_.containsKey('residualSource')
              ? DerivedSource.fromJson(json_['residualSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (primary != null) 'primary': primary!,
        if (primarySource != null) 'primarySource': primarySource!,
        if (residual != null) 'residual': residual!,
        if (residualSource != null) 'residualSource': residualSource!,
      };
}

/// A request to compute the SourceMetadata of a Source.
class SourceGetMetadataRequest {
  /// Specification of the source whose metadata should be computed.
  Source? source;

  SourceGetMetadataRequest({
    this.source,
  });

  SourceGetMetadataRequest.fromJson(core.Map json_)
      : this(
          source: json_.containsKey('source')
              ? Source.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (source != null) 'source': source!,
      };
}

/// The result of a SourceGetMetadataOperation.
class SourceGetMetadataResponse {
  /// The computed metadata.
  SourceMetadata? metadata;

  SourceGetMetadataResponse({
    this.metadata,
  });

  SourceGetMetadataResponse.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? SourceMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
      };
}

/// Metadata about a Source useful for automatically optimizing and tuning the
/// pipeline, etc.
class SourceMetadata {
  /// An estimate of the total size (in bytes) of the data that would be read
  /// from this source.
  ///
  /// This estimate is in terms of external storage size, before any
  /// decompression or other processing done by the reader.
  core.String? estimatedSizeBytes;

  /// Specifies that the size of this source is known to be infinite (this is a
  /// streaming source).
  core.bool? infinite;

  /// Whether this source is known to produce key/value pairs with the (encoded)
  /// keys in lexicographically sorted order.
  core.bool? producesSortedKeys;

  SourceMetadata({
    this.estimatedSizeBytes,
    this.infinite,
    this.producesSortedKeys,
  });

  SourceMetadata.fromJson(core.Map json_)
      : this(
          estimatedSizeBytes: json_['estimatedSizeBytes'] as core.String?,
          infinite: json_['infinite'] as core.bool?,
          producesSortedKeys: json_['producesSortedKeys'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (estimatedSizeBytes != null)
          'estimatedSizeBytes': estimatedSizeBytes!,
        if (infinite != null) 'infinite': infinite!,
        if (producesSortedKeys != null)
          'producesSortedKeys': producesSortedKeys!,
      };
}

/// A work item that represents the different operations that can be performed
/// on a user-defined Source specification.
class SourceOperationRequest {
  /// Information about a request to get metadata about a source.
  SourceGetMetadataRequest? getMetadata;

  /// User-provided name of the Read instruction for this source.
  core.String? name;

  /// System-defined name for the Read instruction for this source in the
  /// original workflow graph.
  core.String? originalName;

  /// Information about a request to split a source.
  SourceSplitRequest? split;

  /// System-defined name of the stage containing the source operation.
  ///
  /// Unique across the workflow.
  core.String? stageName;

  /// System-defined name of the Read instruction for this source.
  ///
  /// Unique across the workflow.
  core.String? systemName;

  SourceOperationRequest({
    this.getMetadata,
    this.name,
    this.originalName,
    this.split,
    this.stageName,
    this.systemName,
  });

  SourceOperationRequest.fromJson(core.Map json_)
      : this(
          getMetadata: json_.containsKey('getMetadata')
              ? SourceGetMetadataRequest.fromJson(
                  json_['getMetadata'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          originalName: json_['originalName'] as core.String?,
          split: json_.containsKey('split')
              ? SourceSplitRequest.fromJson(
                  json_['split'] as core.Map<core.String, core.dynamic>)
              : null,
          stageName: json_['stageName'] as core.String?,
          systemName: json_['systemName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (getMetadata != null) 'getMetadata': getMetadata!,
        if (name != null) 'name': name!,
        if (originalName != null) 'originalName': originalName!,
        if (split != null) 'split': split!,
        if (stageName != null) 'stageName': stageName!,
        if (systemName != null) 'systemName': systemName!,
      };
}

/// The result of a SourceOperationRequest, specified in
/// ReportWorkItemStatusRequest.source_operation when the work item is
/// completed.
class SourceOperationResponse {
  /// A response to a request to get metadata about a source.
  SourceGetMetadataResponse? getMetadata;

  /// A response to a request to split a source.
  SourceSplitResponse? split;

  SourceOperationResponse({
    this.getMetadata,
    this.split,
  });

  SourceOperationResponse.fromJson(core.Map json_)
      : this(
          getMetadata: json_.containsKey('getMetadata')
              ? SourceGetMetadataResponse.fromJson(
                  json_['getMetadata'] as core.Map<core.String, core.dynamic>)
              : null,
          split: json_.containsKey('split')
              ? SourceSplitResponse.fromJson(
                  json_['split'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (getMetadata != null) 'getMetadata': getMetadata!,
        if (split != null) 'split': split!,
      };
}

/// Hints for splitting a Source into bundles (parts for parallel processing)
/// using SourceSplitRequest.
class SourceSplitOptions {
  /// The source should be split into a set of bundles where the estimated size
  /// of each is approximately this many bytes.
  core.String? desiredBundleSizeBytes;

  /// DEPRECATED in favor of desired_bundle_size_bytes.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? desiredShardSizeBytes;

  SourceSplitOptions({
    this.desiredBundleSizeBytes,
    this.desiredShardSizeBytes,
  });

  SourceSplitOptions.fromJson(core.Map json_)
      : this(
          desiredBundleSizeBytes:
              json_['desiredBundleSizeBytes'] as core.String?,
          desiredShardSizeBytes: json_['desiredShardSizeBytes'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (desiredBundleSizeBytes != null)
          'desiredBundleSizeBytes': desiredBundleSizeBytes!,
        if (desiredShardSizeBytes != null)
          'desiredShardSizeBytes': desiredShardSizeBytes!,
      };
}

/// Represents the operation to split a high-level Source specification into
/// bundles (parts for parallel processing).
///
/// At a high level, splitting of a source into bundles happens as follows:
/// SourceSplitRequest is applied to the source. If it returns
/// SOURCE_SPLIT_OUTCOME_USE_CURRENT, no further splitting happens and the
/// source is used "as is". Otherwise, splitting is applied recursively to each
/// produced DerivedSource. As an optimization, for any Source, if its
/// does_not_need_splitting is true, the framework assumes that splitting this
/// source would return SOURCE_SPLIT_OUTCOME_USE_CURRENT, and doesn't initiate a
/// SourceSplitRequest. This applies both to the initial source being split and
/// to bundles produced from it.
class SourceSplitRequest {
  /// Hints for tuning the splitting process.
  SourceSplitOptions? options;

  /// Specification of the source to be split.
  Source? source;

  SourceSplitRequest({
    this.options,
    this.source,
  });

  SourceSplitRequest.fromJson(core.Map json_)
      : this(
          options: json_.containsKey('options')
              ? SourceSplitOptions.fromJson(
                  json_['options'] as core.Map<core.String, core.dynamic>)
              : null,
          source: json_.containsKey('source')
              ? Source.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
        if (source != null) 'source': source!,
      };
}

/// The response to a SourceSplitRequest.
class SourceSplitResponse {
  /// If outcome is SPLITTING_HAPPENED, then this is a list of bundles into
  /// which the source was split.
  ///
  /// Otherwise this field is ignored. This list can be empty, which means the
  /// source represents an empty input.
  core.List<DerivedSource>? bundles;

  /// Indicates whether splitting happened and produced a list of bundles.
  ///
  /// If this is USE_CURRENT_SOURCE_AS_IS, the current source should be
  /// processed "as is" without splitting. "bundles" is ignored in this case. If
  /// this is SPLITTING_HAPPENED, then "bundles" contains a list of bundles into
  /// which the source was split.
  /// Possible string values are:
  /// - "SOURCE_SPLIT_OUTCOME_UNKNOWN" : The source split outcome is unknown, or
  /// unspecified.
  /// - "SOURCE_SPLIT_OUTCOME_USE_CURRENT" : The current source should be
  /// processed "as is" without splitting.
  /// - "SOURCE_SPLIT_OUTCOME_SPLITTING_HAPPENED" : Splitting produced a list of
  /// bundles.
  core.String? outcome;

  /// DEPRECATED in favor of bundles.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<SourceSplitShard>? shards;

  SourceSplitResponse({
    this.bundles,
    this.outcome,
    this.shards,
  });

  SourceSplitResponse.fromJson(core.Map json_)
      : this(
          bundles: (json_['bundles'] as core.List?)
              ?.map((value) => DerivedSource.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          outcome: json_['outcome'] as core.String?,
          shards: (json_['shards'] as core.List?)
              ?.map((value) => SourceSplitShard.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bundles != null) 'bundles': bundles!,
        if (outcome != null) 'outcome': outcome!,
        if (shards != null) 'shards': shards!,
      };
}

/// DEPRECATED in favor of DerivedSource.
class SourceSplitShard {
  /// DEPRECATED
  /// Possible string values are:
  /// - "SOURCE_DERIVATION_MODE_UNKNOWN" : The source derivation is unknown, or
  /// unspecified.
  /// - "SOURCE_DERIVATION_MODE_INDEPENDENT" : Produce a completely independent
  /// Source with no base.
  /// - "SOURCE_DERIVATION_MODE_CHILD_OF_CURRENT" : Produce a Source based on
  /// the Source being split.
  /// - "SOURCE_DERIVATION_MODE_SIBLING_OF_CURRENT" : Produce a Source based on
  /// the base of the Source being split.
  core.String? derivationMode;

  /// DEPRECATED
  Source? source;

  SourceSplitShard({
    this.derivationMode,
    this.source,
  });

  SourceSplitShard.fromJson(core.Map json_)
      : this(
          derivationMode: json_['derivationMode'] as core.String?,
          source: json_.containsKey('source')
              ? Source.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (derivationMode != null) 'derivationMode': derivationMode!,
        if (source != null) 'source': source!,
      };
}

/// Metadata for a Spanner connector used by the job.
class SpannerIODetails {
  /// DatabaseId accessed in the connection.
  core.String? databaseId;

  /// InstanceId accessed in the connection.
  core.String? instanceId;

  /// ProjectId accessed in the connection.
  core.String? projectId;

  SpannerIODetails({
    this.databaseId,
    this.instanceId,
    this.projectId,
  });

  SpannerIODetails.fromJson(core.Map json_)
      : this(
          databaseId: json_['databaseId'] as core.String?,
          instanceId: json_['instanceId'] as core.String?,
          projectId: json_['projectId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseId != null) 'databaseId': databaseId!,
        if (instanceId != null) 'instanceId': instanceId!,
        if (projectId != null) 'projectId': projectId!,
      };
}

/// A representation of an int64, n, that is immune to precision loss when
/// encoded in JSON.
class SplitInt64 {
  /// The high order bits, including the sign: n \>\> 32.
  core.int? highBits;

  /// The low order bits: n & 0xffffffff.
  core.int? lowBits;

  SplitInt64({
    this.highBits,
    this.lowBits,
  });

  SplitInt64.fromJson(core.Map json_)
      : this(
          highBits: json_['highBits'] as core.int?,
          lowBits: json_['lowBits'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (highBits != null) 'highBits': highBits!,
        if (lowBits != null) 'lowBits': lowBits!,
      };
}

/// Information about the workers and work items within a stage.
class StageExecutionDetails {
  /// If present, this response does not contain all requested tasks.
  ///
  /// To obtain the next page of results, repeat the request with page_token set
  /// to this value.
  core.String? nextPageToken;

  /// Workers that have done work on the stage.
  core.List<WorkerDetails>? workers;

  StageExecutionDetails({
    this.nextPageToken,
    this.workers,
  });

  StageExecutionDetails.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          workers: (json_['workers'] as core.List?)
              ?.map((value) => WorkerDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (workers != null) 'workers': workers!,
      };
}

/// Description of an input or output of an execution stage.
class StageSource {
  /// Dataflow service generated name for this source.
  core.String? name;

  /// User name for the original user transform or collection with which this
  /// source is most closely associated.
  core.String? originalTransformOrCollection;

  /// Size of the source, if measurable.
  core.String? sizeBytes;

  /// Human-readable name for this source; may be user or system generated.
  core.String? userName;

  StageSource({
    this.name,
    this.originalTransformOrCollection,
    this.sizeBytes,
    this.userName,
  });

  StageSource.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          originalTransformOrCollection:
              json_['originalTransformOrCollection'] as core.String?,
          sizeBytes: json_['sizeBytes'] as core.String?,
          userName: json_['userName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (originalTransformOrCollection != null)
          'originalTransformOrCollection': originalTransformOrCollection!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (userName != null) 'userName': userName!,
      };
}

/// Information about a particular execution stage of a job.
class StageSummary {
  /// End time of this stage.
  ///
  /// If the work item is completed, this is the actual end time of the stage.
  /// Otherwise, it is the predicted end time.
  core.String? endTime;

  /// Metrics for this stage.
  core.List<MetricUpdate>? metrics;

  /// Progress for this stage.
  ///
  /// Only applicable to Batch jobs.
  ProgressTimeseries? progress;

  /// ID of this stage
  core.String? stageId;

  /// Start time of this stage.
  core.String? startTime;

  /// State of this stage.
  /// Possible string values are:
  /// - "EXECUTION_STATE_UNKNOWN" : The component state is unknown or
  /// unspecified.
  /// - "EXECUTION_STATE_NOT_STARTED" : The component is not yet running.
  /// - "EXECUTION_STATE_RUNNING" : The component is currently running.
  /// - "EXECUTION_STATE_SUCCEEDED" : The component succeeded.
  /// - "EXECUTION_STATE_FAILED" : The component failed.
  /// - "EXECUTION_STATE_CANCELLED" : Execution of the component was cancelled.
  core.String? state;

  /// Straggler summary for this stage.
  StragglerSummary? stragglerSummary;

  StageSummary({
    this.endTime,
    this.metrics,
    this.progress,
    this.stageId,
    this.startTime,
    this.state,
    this.stragglerSummary,
  });

  StageSummary.fromJson(core.Map json_)
      : this(
          endTime: json_['endTime'] as core.String?,
          metrics: (json_['metrics'] as core.List?)
              ?.map((value) => MetricUpdate.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          progress: json_.containsKey('progress')
              ? ProgressTimeseries.fromJson(
                  json_['progress'] as core.Map<core.String, core.dynamic>)
              : null,
          stageId: json_['stageId'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
          stragglerSummary: json_.containsKey('stragglerSummary')
              ? StragglerSummary.fromJson(json_['stragglerSummary']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTime != null) 'endTime': endTime!,
        if (metrics != null) 'metrics': metrics!,
        if (progress != null) 'progress': progress!,
        if (stageId != null) 'stageId': stageId!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (stragglerSummary != null) 'stragglerSummary': stragglerSummary!,
      };
}

/// State family configuration.
class StateFamilyConfig {
  /// If true, this family corresponds to a read operation.
  core.bool? isRead;

  /// The state family value.
  core.String? stateFamily;

  StateFamilyConfig({
    this.isRead,
    this.stateFamily,
  });

  StateFamilyConfig.fromJson(core.Map json_)
      : this(
          isRead: json_['isRead'] as core.bool?,
          stateFamily: json_['stateFamily'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (isRead != null) 'isRead': isRead!,
        if (stateFamily != null) 'stateFamily': stateFamily!,
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

/// Defines a particular step within a Cloud Dataflow job.
///
/// A job consists of multiple steps, each of which performs some specific
/// operation as part of the overall job. Data is typically passed from one step
/// to another as part of the job. **Note:** The properties of this object are
/// not stable and might change. Here's an example of a sequence of steps which
/// together implement a Map-Reduce job: * Read a collection of data from some
/// source, parsing the collection's elements. * Validate the elements. * Apply
/// a user-defined function to map each element to some value and extract an
/// element-specific key value. * Group elements with the same key into a single
/// element with that key, transforming a multiply-keyed collection into a
/// uniquely-keyed collection. * Write the elements out to some data sink. Note
/// that the Cloud Dataflow service may be used to run many different types of
/// jobs, not just Map-Reduce.
class Step {
  /// The kind of step in the Cloud Dataflow job.
  core.String? kind;

  /// The name that identifies the step.
  ///
  /// This must be unique for each step with respect to all other steps in the
  /// Cloud Dataflow job.
  core.String? name;

  /// Named properties associated with the step.
  ///
  /// Each kind of predefined step has its own required set of properties. Must
  /// be provided on Create. Only retrieved with JOB_VIEW_ALL.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? properties;

  Step({
    this.kind,
    this.name,
    this.properties,
  });

  Step.fromJson(core.Map json_)
      : this(
          kind: json_['kind'] as core.String?,
          name: json_['name'] as core.String?,
          properties: json_.containsKey('properties')
              ? json_['properties'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
      };
}

/// Information for a straggler.
class Straggler {
  /// Batch straggler identification and debugging information.
  StragglerInfo? batchStraggler;

  /// Streaming straggler identification and debugging information.
  StreamingStragglerInfo? streamingStraggler;

  Straggler({
    this.batchStraggler,
    this.streamingStraggler,
  });

  Straggler.fromJson(core.Map json_)
      : this(
          batchStraggler: json_.containsKey('batchStraggler')
              ? StragglerInfo.fromJson(json_['batchStraggler']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingStraggler: json_.containsKey('streamingStraggler')
              ? StreamingStragglerInfo.fromJson(json_['streamingStraggler']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (batchStraggler != null) 'batchStraggler': batchStraggler!,
        if (streamingStraggler != null)
          'streamingStraggler': streamingStraggler!,
      };
}

/// Information useful for debugging a straggler.
///
/// Each type will provide specialized debugging information relevant for a
/// particular cause. The StragglerDebuggingInfo will be 1:1 mapping to the
/// StragglerCause enum.
class StragglerDebuggingInfo {
  /// Hot key debugging details.
  HotKeyDebuggingInfo? hotKey;

  StragglerDebuggingInfo({
    this.hotKey,
  });

  StragglerDebuggingInfo.fromJson(core.Map json_)
      : this(
          hotKey: json_.containsKey('hotKey')
              ? HotKeyDebuggingInfo.fromJson(
                  json_['hotKey'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hotKey != null) 'hotKey': hotKey!,
      };
}

/// Information useful for straggler identification and debugging.
class StragglerInfo {
  /// The straggler causes, keyed by the string representation of the
  /// StragglerCause enum and contains specialized debugging information for
  /// each straggler cause.
  core.Map<core.String, StragglerDebuggingInfo>? causes;

  /// The time when the work item attempt became a straggler.
  core.String? startTime;

  StragglerInfo({
    this.causes,
    this.startTime,
  });

  StragglerInfo.fromJson(core.Map json_)
      : this(
          causes:
              (json_['causes'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              StragglerDebuggingInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>),
            ),
          ),
          startTime: json_['startTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (causes != null) 'causes': causes!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// Summarized straggler identification details.
class StragglerSummary {
  /// The most recent stragglers.
  core.List<Straggler>? recentStragglers;

  /// Aggregated counts of straggler causes, keyed by the string representation
  /// of the StragglerCause enum.
  core.Map<core.String, core.String>? stragglerCauseCount;

  /// The total count of stragglers.
  core.String? totalStragglerCount;

  StragglerSummary({
    this.recentStragglers,
    this.stragglerCauseCount,
    this.totalStragglerCount,
  });

  StragglerSummary.fromJson(core.Map json_)
      : this(
          recentStragglers: (json_['recentStragglers'] as core.List?)
              ?.map((value) => Straggler.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          stragglerCauseCount: (json_['stragglerCauseCount']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          totalStragglerCount: json_['totalStragglerCount'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recentStragglers != null) 'recentStragglers': recentStragglers!,
        if (stragglerCauseCount != null)
          'stragglerCauseCount': stragglerCauseCount!,
        if (totalStragglerCount != null)
          'totalStragglerCount': totalStragglerCount!,
      };
}

/// Describes a stream of data, either as input to be processed or as output of
/// a streaming Dataflow job.
class StreamLocation {
  /// The stream is a custom source.
  CustomSourceLocation? customSourceLocation;

  /// The stream is a pubsub stream.
  PubsubLocation? pubsubLocation;

  /// The stream is a streaming side input.
  StreamingSideInputLocation? sideInputLocation;

  /// The stream is part of another computation within the current streaming
  /// Dataflow job.
  StreamingStageLocation? streamingStageLocation;

  StreamLocation({
    this.customSourceLocation,
    this.pubsubLocation,
    this.sideInputLocation,
    this.streamingStageLocation,
  });

  StreamLocation.fromJson(core.Map json_)
      : this(
          customSourceLocation: json_.containsKey('customSourceLocation')
              ? CustomSourceLocation.fromJson(json_['customSourceLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          pubsubLocation: json_.containsKey('pubsubLocation')
              ? PubsubLocation.fromJson(json_['pubsubLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sideInputLocation: json_.containsKey('sideInputLocation')
              ? StreamingSideInputLocation.fromJson(json_['sideInputLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingStageLocation: json_.containsKey('streamingStageLocation')
              ? StreamingStageLocation.fromJson(json_['streamingStageLocation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customSourceLocation != null)
          'customSourceLocation': customSourceLocation!,
        if (pubsubLocation != null) 'pubsubLocation': pubsubLocation!,
        if (sideInputLocation != null) 'sideInputLocation': sideInputLocation!,
        if (streamingStageLocation != null)
          'streamingStageLocation': streamingStageLocation!,
      };
}

/// Streaming appliance snapshot configuration.
class StreamingApplianceSnapshotConfig {
  /// Indicates which endpoint is used to import appliance state.
  core.String? importStateEndpoint;

  /// If set, indicates the snapshot id for the snapshot being performed.
  core.String? snapshotId;

  StreamingApplianceSnapshotConfig({
    this.importStateEndpoint,
    this.snapshotId,
  });

  StreamingApplianceSnapshotConfig.fromJson(core.Map json_)
      : this(
          importStateEndpoint: json_['importStateEndpoint'] as core.String?,
          snapshotId: json_['snapshotId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (importStateEndpoint != null)
          'importStateEndpoint': importStateEndpoint!,
        if (snapshotId != null) 'snapshotId': snapshotId!,
      };
}

/// Configuration information for a single streaming computation.
class StreamingComputationConfig {
  /// Unique identifier for this computation.
  core.String? computationId;

  /// Instructions that comprise the computation.
  core.List<ParallelInstruction>? instructions;

  /// Stage name of this computation.
  core.String? stageName;

  /// System defined name for this computation.
  core.String? systemName;

  /// Map from user name of stateful transforms in this stage to their state
  /// family.
  core.Map<core.String, core.String>? transformUserNameToStateFamily;

  StreamingComputationConfig({
    this.computationId,
    this.instructions,
    this.stageName,
    this.systemName,
    this.transformUserNameToStateFamily,
  });

  StreamingComputationConfig.fromJson(core.Map json_)
      : this(
          computationId: json_['computationId'] as core.String?,
          instructions: (json_['instructions'] as core.List?)
              ?.map((value) => ParallelInstruction.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          stageName: json_['stageName'] as core.String?,
          systemName: json_['systemName'] as core.String?,
          transformUserNameToStateFamily:
              (json_['transformUserNameToStateFamily']
                      as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computationId != null) 'computationId': computationId!,
        if (instructions != null) 'instructions': instructions!,
        if (stageName != null) 'stageName': stageName!,
        if (systemName != null) 'systemName': systemName!,
        if (transformUserNameToStateFamily != null)
          'transformUserNameToStateFamily': transformUserNameToStateFamily!,
      };
}

/// Describes full or partial data disk assignment information of the
/// computation ranges.
class StreamingComputationRanges {
  /// The ID of the computation.
  core.String? computationId;

  /// Data disk assignments for ranges from this computation.
  core.List<KeyRangeDataDiskAssignment>? rangeAssignments;

  StreamingComputationRanges({
    this.computationId,
    this.rangeAssignments,
  });

  StreamingComputationRanges.fromJson(core.Map json_)
      : this(
          computationId: json_['computationId'] as core.String?,
          rangeAssignments: (json_['rangeAssignments'] as core.List?)
              ?.map((value) => KeyRangeDataDiskAssignment.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computationId != null) 'computationId': computationId!,
        if (rangeAssignments != null) 'rangeAssignments': rangeAssignments!,
      };
}

/// A task which describes what action should be performed for the specified
/// streaming computation ranges.
class StreamingComputationTask {
  /// Contains ranges of a streaming computation this task should apply to.
  core.List<StreamingComputationRanges>? computationRanges;

  /// Describes the set of data disks this task should apply to.
  core.List<MountedDataDisk>? dataDisks;

  /// A type of streaming computation task.
  /// Possible string values are:
  /// - "STREAMING_COMPUTATION_TASK_UNKNOWN" : The streaming computation task is
  /// unknown, or unspecified.
  /// - "STREAMING_COMPUTATION_TASK_STOP" : Stop processing specified streaming
  /// computation range(s).
  /// - "STREAMING_COMPUTATION_TASK_START" : Start processing specified
  /// streaming computation range(s).
  core.String? taskType;

  StreamingComputationTask({
    this.computationRanges,
    this.dataDisks,
    this.taskType,
  });

  StreamingComputationTask.fromJson(core.Map json_)
      : this(
          computationRanges: (json_['computationRanges'] as core.List?)
              ?.map((value) => StreamingComputationRanges.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          dataDisks: (json_['dataDisks'] as core.List?)
              ?.map((value) => MountedDataDisk.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          taskType: json_['taskType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computationRanges != null) 'computationRanges': computationRanges!,
        if (dataDisks != null) 'dataDisks': dataDisks!,
        if (taskType != null) 'taskType': taskType!,
      };
}

/// A task that carries configuration information for streaming computations.
class StreamingConfigTask {
  /// Chunk size for commit streams from the harness to windmill.
  core.String? commitStreamChunkSizeBytes;

  /// Chunk size for get data streams from the harness to windmill.
  core.String? getDataStreamChunkSizeBytes;

  /// Maximum size for work item commit supported windmill storage layer.
  core.String? maxWorkItemCommitBytes;

  /// Operational limits for the streaming job.
  ///
  /// Can be used by the worker to validate outputs sent to the backend.
  StreamingOperationalLimits? operationalLimits;

  /// Set of computation configuration information.
  core.List<StreamingComputationConfig>? streamingComputationConfigs;

  /// Map from user step names to state families.
  core.Map<core.String, core.String>? userStepToStateFamilyNameMap;

  /// Binary encoded proto to control runtime behavior of the java runner v1
  /// user worker.
  core.String? userWorkerRunnerV1Settings;
  core.List<core.int> get userWorkerRunnerV1SettingsAsBytes =>
      convert.base64.decode(userWorkerRunnerV1Settings!);

  set userWorkerRunnerV1SettingsAsBytes(core.List<core.int> bytes_) {
    userWorkerRunnerV1Settings =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Binary encoded proto to control runtime behavior of the runner v2 user
  /// worker.
  core.String? userWorkerRunnerV2Settings;
  core.List<core.int> get userWorkerRunnerV2SettingsAsBytes =>
      convert.base64.decode(userWorkerRunnerV2Settings!);

  set userWorkerRunnerV2SettingsAsBytes(core.List<core.int> bytes_) {
    userWorkerRunnerV2Settings =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// If present, the worker must use this endpoint to communicate with Windmill
  /// Service dispatchers, otherwise the worker must continue to use whatever
  /// endpoint it had been using.
  core.String? windmillServiceEndpoint;

  /// If present, the worker must use this port to communicate with Windmill
  /// Service dispatchers.
  ///
  /// Only applicable when windmill_service_endpoint is specified.
  core.String? windmillServicePort;

  StreamingConfigTask({
    this.commitStreamChunkSizeBytes,
    this.getDataStreamChunkSizeBytes,
    this.maxWorkItemCommitBytes,
    this.operationalLimits,
    this.streamingComputationConfigs,
    this.userStepToStateFamilyNameMap,
    this.userWorkerRunnerV1Settings,
    this.userWorkerRunnerV2Settings,
    this.windmillServiceEndpoint,
    this.windmillServicePort,
  });

  StreamingConfigTask.fromJson(core.Map json_)
      : this(
          commitStreamChunkSizeBytes:
              json_['commitStreamChunkSizeBytes'] as core.String?,
          getDataStreamChunkSizeBytes:
              json_['getDataStreamChunkSizeBytes'] as core.String?,
          maxWorkItemCommitBytes:
              json_['maxWorkItemCommitBytes'] as core.String?,
          operationalLimits: json_.containsKey('operationalLimits')
              ? StreamingOperationalLimits.fromJson(json_['operationalLimits']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingComputationConfigs:
              (json_['streamingComputationConfigs'] as core.List?)
                  ?.map((value) => StreamingComputationConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          userStepToStateFamilyNameMap: (json_['userStepToStateFamilyNameMap']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          userWorkerRunnerV1Settings:
              json_['userWorkerRunnerV1Settings'] as core.String?,
          userWorkerRunnerV2Settings:
              json_['userWorkerRunnerV2Settings'] as core.String?,
          windmillServiceEndpoint:
              json_['windmillServiceEndpoint'] as core.String?,
          windmillServicePort: json_['windmillServicePort'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitStreamChunkSizeBytes != null)
          'commitStreamChunkSizeBytes': commitStreamChunkSizeBytes!,
        if (getDataStreamChunkSizeBytes != null)
          'getDataStreamChunkSizeBytes': getDataStreamChunkSizeBytes!,
        if (maxWorkItemCommitBytes != null)
          'maxWorkItemCommitBytes': maxWorkItemCommitBytes!,
        if (operationalLimits != null) 'operationalLimits': operationalLimits!,
        if (streamingComputationConfigs != null)
          'streamingComputationConfigs': streamingComputationConfigs!,
        if (userStepToStateFamilyNameMap != null)
          'userStepToStateFamilyNameMap': userStepToStateFamilyNameMap!,
        if (userWorkerRunnerV1Settings != null)
          'userWorkerRunnerV1Settings': userWorkerRunnerV1Settings!,
        if (userWorkerRunnerV2Settings != null)
          'userWorkerRunnerV2Settings': userWorkerRunnerV2Settings!,
        if (windmillServiceEndpoint != null)
          'windmillServiceEndpoint': windmillServiceEndpoint!,
        if (windmillServicePort != null)
          'windmillServicePort': windmillServicePort!,
      };
}

/// Operational limits imposed on streaming jobs by the backend.
class StreamingOperationalLimits {
  /// The maximum size for an element in bag state.
  core.String? maxBagElementBytes;

  /// The maximum size for an element in global data.
  core.String? maxGlobalDataBytes;

  /// The maximum size allowed for a key.
  core.String? maxKeyBytes;

  /// The maximum size for a single output element.
  core.String? maxProductionOutputBytes;

  /// The maximum size for an element in sorted list state.
  core.String? maxSortedListElementBytes;

  /// The maximum size for a source state update.
  core.String? maxSourceStateBytes;

  /// The maximum size for a state tag.
  core.String? maxTagBytes;

  /// The maximum size for a value state field.
  core.String? maxValueBytes;

  StreamingOperationalLimits({
    this.maxBagElementBytes,
    this.maxGlobalDataBytes,
    this.maxKeyBytes,
    this.maxProductionOutputBytes,
    this.maxSortedListElementBytes,
    this.maxSourceStateBytes,
    this.maxTagBytes,
    this.maxValueBytes,
  });

  StreamingOperationalLimits.fromJson(core.Map json_)
      : this(
          maxBagElementBytes: json_['maxBagElementBytes'] as core.String?,
          maxGlobalDataBytes: json_['maxGlobalDataBytes'] as core.String?,
          maxKeyBytes: json_['maxKeyBytes'] as core.String?,
          maxProductionOutputBytes:
              json_['maxProductionOutputBytes'] as core.String?,
          maxSortedListElementBytes:
              json_['maxSortedListElementBytes'] as core.String?,
          maxSourceStateBytes: json_['maxSourceStateBytes'] as core.String?,
          maxTagBytes: json_['maxTagBytes'] as core.String?,
          maxValueBytes: json_['maxValueBytes'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxBagElementBytes != null)
          'maxBagElementBytes': maxBagElementBytes!,
        if (maxGlobalDataBytes != null)
          'maxGlobalDataBytes': maxGlobalDataBytes!,
        if (maxKeyBytes != null) 'maxKeyBytes': maxKeyBytes!,
        if (maxProductionOutputBytes != null)
          'maxProductionOutputBytes': maxProductionOutputBytes!,
        if (maxSortedListElementBytes != null)
          'maxSortedListElementBytes': maxSortedListElementBytes!,
        if (maxSourceStateBytes != null)
          'maxSourceStateBytes': maxSourceStateBytes!,
        if (maxTagBytes != null) 'maxTagBytes': maxTagBytes!,
        if (maxValueBytes != null) 'maxValueBytes': maxValueBytes!,
      };
}

/// Contains per-user worker telemetry used in streaming autoscaling.
class StreamingScalingReport {
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? activeBundleCount;

  /// Current acive thread count.
  core.int? activeThreadCount;

  /// Maximum bundle count.
  core.int? maximumBundleCount;

  /// Maximum bytes.
  core.String? maximumBytes;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? maximumBytesCount;

  /// Maximum thread count limit.
  core.int? maximumThreadCount;

  /// Current outstanding bundle count.
  core.int? outstandingBundleCount;

  /// Current outstanding bytes.
  core.String? outstandingBytes;
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? outstandingBytesCount;

  StreamingScalingReport({
    this.activeBundleCount,
    this.activeThreadCount,
    this.maximumBundleCount,
    this.maximumBytes,
    this.maximumBytesCount,
    this.maximumThreadCount,
    this.outstandingBundleCount,
    this.outstandingBytes,
    this.outstandingBytesCount,
  });

  StreamingScalingReport.fromJson(core.Map json_)
      : this(
          activeBundleCount: json_['activeBundleCount'] as core.int?,
          activeThreadCount: json_['activeThreadCount'] as core.int?,
          maximumBundleCount: json_['maximumBundleCount'] as core.int?,
          maximumBytes: json_['maximumBytes'] as core.String?,
          maximumBytesCount: json_['maximumBytesCount'] as core.int?,
          maximumThreadCount: json_['maximumThreadCount'] as core.int?,
          outstandingBundleCount: json_['outstandingBundleCount'] as core.int?,
          outstandingBytes: json_['outstandingBytes'] as core.String?,
          outstandingBytesCount: json_['outstandingBytesCount'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeBundleCount != null) 'activeBundleCount': activeBundleCount!,
        if (activeThreadCount != null) 'activeThreadCount': activeThreadCount!,
        if (maximumBundleCount != null)
          'maximumBundleCount': maximumBundleCount!,
        if (maximumBytes != null) 'maximumBytes': maximumBytes!,
        if (maximumBytesCount != null) 'maximumBytesCount': maximumBytesCount!,
        if (maximumThreadCount != null)
          'maximumThreadCount': maximumThreadCount!,
        if (outstandingBundleCount != null)
          'outstandingBundleCount': outstandingBundleCount!,
        if (outstandingBytes != null) 'outstandingBytes': outstandingBytes!,
        if (outstandingBytesCount != null)
          'outstandingBytesCount': outstandingBytesCount!,
      };
}

/// Contains per-user-worker streaming scaling recommendation from the backend.
class StreamingScalingReportResponse {
  /// Maximum thread count limit;
  core.int? maximumThreadCount;

  StreamingScalingReportResponse({
    this.maximumThreadCount,
  });

  StreamingScalingReportResponse.fromJson(core.Map json_)
      : this(
          maximumThreadCount: json_['maximumThreadCount'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maximumThreadCount != null)
          'maximumThreadCount': maximumThreadCount!,
      };
}

/// A task which initializes part of a streaming Dataflow job.
class StreamingSetupTask {
  /// The user has requested drain.
  core.bool? drain;

  /// The TCP port on which the worker should listen for messages from other
  /// streaming computation workers.
  core.int? receiveWorkPort;

  /// Configures streaming appliance snapshot.
  StreamingApplianceSnapshotConfig? snapshotConfig;

  /// The global topology of the streaming Dataflow job.
  TopologyConfig? streamingComputationTopology;

  /// The TCP port used by the worker to communicate with the Dataflow worker
  /// harness.
  core.int? workerHarnessPort;

  StreamingSetupTask({
    this.drain,
    this.receiveWorkPort,
    this.snapshotConfig,
    this.streamingComputationTopology,
    this.workerHarnessPort,
  });

  StreamingSetupTask.fromJson(core.Map json_)
      : this(
          drain: json_['drain'] as core.bool?,
          receiveWorkPort: json_['receiveWorkPort'] as core.int?,
          snapshotConfig: json_.containsKey('snapshotConfig')
              ? StreamingApplianceSnapshotConfig.fromJson(
                  json_['snapshotConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          streamingComputationTopology: json_
                  .containsKey('streamingComputationTopology')
              ? TopologyConfig.fromJson(json_['streamingComputationTopology']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workerHarnessPort: json_['workerHarnessPort'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (drain != null) 'drain': drain!,
        if (receiveWorkPort != null) 'receiveWorkPort': receiveWorkPort!,
        if (snapshotConfig != null) 'snapshotConfig': snapshotConfig!,
        if (streamingComputationTopology != null)
          'streamingComputationTopology': streamingComputationTopology!,
        if (workerHarnessPort != null) 'workerHarnessPort': workerHarnessPort!,
      };
}

/// Identifies the location of a streaming side input.
class StreamingSideInputLocation {
  /// Identifies the state family where this side input is stored.
  core.String? stateFamily;

  /// Identifies the particular side input within the streaming Dataflow job.
  core.String? tag;

  StreamingSideInputLocation({
    this.stateFamily,
    this.tag,
  });

  StreamingSideInputLocation.fromJson(core.Map json_)
      : this(
          stateFamily: json_['stateFamily'] as core.String?,
          tag: json_['tag'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (stateFamily != null) 'stateFamily': stateFamily!,
        if (tag != null) 'tag': tag!,
      };
}

/// Identifies the location of a streaming computation stage, for stage-to-stage
/// communication.
class StreamingStageLocation {
  /// Identifies the particular stream within the streaming Dataflow job.
  core.String? streamId;

  StreamingStageLocation({
    this.streamId,
  });

  StreamingStageLocation.fromJson(core.Map json_)
      : this(
          streamId: json_['streamId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (streamId != null) 'streamId': streamId!,
      };
}

/// Information useful for streaming straggler identification and debugging.
class StreamingStragglerInfo {
  /// The event-time watermark lag at the time of the straggler detection.
  core.String? dataWatermarkLag;

  /// End time of this straggler.
  core.String? endTime;

  /// Start time of this straggler.
  core.String? startTime;

  /// The system watermark lag at the time of the straggler detection.
  core.String? systemWatermarkLag;

  /// Name of the worker where the straggler was detected.
  core.String? workerName;

  StreamingStragglerInfo({
    this.dataWatermarkLag,
    this.endTime,
    this.startTime,
    this.systemWatermarkLag,
    this.workerName,
  });

  StreamingStragglerInfo.fromJson(core.Map json_)
      : this(
          dataWatermarkLag: json_['dataWatermarkLag'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          startTime: json_['startTime'] as core.String?,
          systemWatermarkLag: json_['systemWatermarkLag'] as core.String?,
          workerName: json_['workerName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataWatermarkLag != null) 'dataWatermarkLag': dataWatermarkLag!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
        if (systemWatermarkLag != null)
          'systemWatermarkLag': systemWatermarkLag!,
        if (workerName != null) 'workerName': workerName!,
      };
}

/// A metric value representing a list of strings.
class StringList {
  /// Elements of the list.
  core.List<core.String>? elements;

  StringList({
    this.elements,
  });

  StringList.fromJson(core.Map json_)
      : this(
          elements: (json_['elements'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (elements != null) 'elements': elements!,
      };
}

/// A rich message format, including a human readable string, a key for
/// identifying the message, and structured data associated with the message for
/// programmatic consumption.
class StructuredMessage {
  /// Identifier for this message type.
  ///
  /// Used by external systems to internationalize or personalize message.
  core.String? messageKey;

  /// Human-readable version of message.
  core.String? messageText;

  /// The structured data associated with this message.
  core.List<Parameter>? parameters;

  StructuredMessage({
    this.messageKey,
    this.messageText,
    this.parameters,
  });

  StructuredMessage.fromJson(core.Map json_)
      : this(
          messageKey: json_['messageKey'] as core.String?,
          messageText: json_['messageText'] as core.String?,
          parameters: (json_['parameters'] as core.List?)
              ?.map((value) => Parameter.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messageKey != null) 'messageKey': messageKey!,
        if (messageText != null) 'messageText': messageText!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Taskrunner configuration settings.
class TaskRunnerSettings {
  /// Whether to also send taskrunner log info to stderr.
  core.bool? alsologtostderr;

  /// The location on the worker for task-specific subdirectories.
  core.String? baseTaskDir;

  /// The base URL for the taskrunner to use when accessing Google Cloud APIs.
  ///
  /// When workers access Google Cloud APIs, they logically do so via relative
  /// URLs. If this field is specified, it supplies the base URL to use for
  /// resolving these relative URLs. The normative algorithm used is defined by
  /// RFC 1808, "Relative Uniform Resource Locators". If not specified, the
  /// default value is "http://www.googleapis.com/"
  core.String? baseUrl;

  /// The file to store preprocessing commands in.
  core.String? commandlinesFileName;

  /// Whether to continue taskrunner if an exception is hit.
  core.bool? continueOnException;

  /// The API version of endpoint, e.g. "v1b3"
  core.String? dataflowApiVersion;

  /// The command to launch the worker harness.
  core.String? harnessCommand;

  /// The suggested backend language.
  core.String? languageHint;

  /// The directory on the VM to store logs.
  core.String? logDir;

  /// Whether to send taskrunner log info to Google Compute Engine VM serial
  /// console.
  core.bool? logToSerialconsole;

  /// Indicates where to put logs.
  ///
  /// If this is not specified, the logs will not be uploaded. The supported
  /// resource type is: Google Cloud Storage:
  /// storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.String? logUploadLocation;

  /// The OAuth2 scopes to be requested by the taskrunner in order to access the
  /// Cloud Dataflow API.
  core.List<core.String>? oauthScopes;

  /// The settings to pass to the parallel worker harness.
  WorkerSettings? parallelWorkerSettings;

  /// The streaming worker main class name.
  core.String? streamingWorkerMainClass;

  /// The UNIX group ID on the worker VM to use for tasks launched by
  /// taskrunner; e.g. "wheel".
  core.String? taskGroup;

  /// The UNIX user ID on the worker VM to use for tasks launched by taskrunner;
  /// e.g. "root".
  core.String? taskUser;

  /// The prefix of the resources the taskrunner should use for temporary
  /// storage.
  ///
  /// The supported resource type is: Google Cloud Storage:
  /// storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.String? tempStoragePrefix;

  /// The ID string of the VM.
  core.String? vmId;

  /// The file to store the workflow in.
  core.String? workflowFileName;

  TaskRunnerSettings({
    this.alsologtostderr,
    this.baseTaskDir,
    this.baseUrl,
    this.commandlinesFileName,
    this.continueOnException,
    this.dataflowApiVersion,
    this.harnessCommand,
    this.languageHint,
    this.logDir,
    this.logToSerialconsole,
    this.logUploadLocation,
    this.oauthScopes,
    this.parallelWorkerSettings,
    this.streamingWorkerMainClass,
    this.taskGroup,
    this.taskUser,
    this.tempStoragePrefix,
    this.vmId,
    this.workflowFileName,
  });

  TaskRunnerSettings.fromJson(core.Map json_)
      : this(
          alsologtostderr: json_['alsologtostderr'] as core.bool?,
          baseTaskDir: json_['baseTaskDir'] as core.String?,
          baseUrl: json_['baseUrl'] as core.String?,
          commandlinesFileName: json_['commandlinesFileName'] as core.String?,
          continueOnException: json_['continueOnException'] as core.bool?,
          dataflowApiVersion: json_['dataflowApiVersion'] as core.String?,
          harnessCommand: json_['harnessCommand'] as core.String?,
          languageHint: json_['languageHint'] as core.String?,
          logDir: json_['logDir'] as core.String?,
          logToSerialconsole: json_['logToSerialconsole'] as core.bool?,
          logUploadLocation: json_['logUploadLocation'] as core.String?,
          oauthScopes: (json_['oauthScopes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          parallelWorkerSettings: json_.containsKey('parallelWorkerSettings')
              ? WorkerSettings.fromJson(json_['parallelWorkerSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingWorkerMainClass:
              json_['streamingWorkerMainClass'] as core.String?,
          taskGroup: json_['taskGroup'] as core.String?,
          taskUser: json_['taskUser'] as core.String?,
          tempStoragePrefix: json_['tempStoragePrefix'] as core.String?,
          vmId: json_['vmId'] as core.String?,
          workflowFileName: json_['workflowFileName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alsologtostderr != null) 'alsologtostderr': alsologtostderr!,
        if (baseTaskDir != null) 'baseTaskDir': baseTaskDir!,
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (commandlinesFileName != null)
          'commandlinesFileName': commandlinesFileName!,
        if (continueOnException != null)
          'continueOnException': continueOnException!,
        if (dataflowApiVersion != null)
          'dataflowApiVersion': dataflowApiVersion!,
        if (harnessCommand != null) 'harnessCommand': harnessCommand!,
        if (languageHint != null) 'languageHint': languageHint!,
        if (logDir != null) 'logDir': logDir!,
        if (logToSerialconsole != null)
          'logToSerialconsole': logToSerialconsole!,
        if (logUploadLocation != null) 'logUploadLocation': logUploadLocation!,
        if (oauthScopes != null) 'oauthScopes': oauthScopes!,
        if (parallelWorkerSettings != null)
          'parallelWorkerSettings': parallelWorkerSettings!,
        if (streamingWorkerMainClass != null)
          'streamingWorkerMainClass': streamingWorkerMainClass!,
        if (taskGroup != null) 'taskGroup': taskGroup!,
        if (taskUser != null) 'taskUser': taskUser!,
        if (tempStoragePrefix != null) 'tempStoragePrefix': tempStoragePrefix!,
        if (vmId != null) 'vmId': vmId!,
        if (workflowFileName != null) 'workflowFileName': workflowFileName!,
      };
}

/// Metadata describing a template.
class TemplateMetadata {
  /// Indicates the default streaming mode for a streaming template.
  ///
  /// Only valid if both supports_at_least_once and supports_exactly_once are
  /// true. Possible values: UNSPECIFIED, EXACTLY_ONCE and AT_LEAST_ONCE
  ///
  /// Optional.
  core.String? defaultStreamingMode;

  /// A description of the template.
  ///
  /// Optional.
  core.String? description;

  /// The name of the template.
  ///
  /// Required.
  core.String? name;

  /// The parameters for the template.
  core.List<ParameterMetadata>? parameters;

  /// Indicates if the template is streaming or not.
  ///
  /// Optional.
  core.bool? streaming;

  /// Indicates if the streaming template supports at least once mode.
  ///
  /// Optional.
  core.bool? supportsAtLeastOnce;

  /// Indicates if the streaming template supports exactly once mode.
  ///
  /// Optional.
  core.bool? supportsExactlyOnce;

  /// For future use.
  ///
  /// Optional.
  core.String? yamlDefinition;

  TemplateMetadata({
    this.defaultStreamingMode,
    this.description,
    this.name,
    this.parameters,
    this.streaming,
    this.supportsAtLeastOnce,
    this.supportsExactlyOnce,
    this.yamlDefinition,
  });

  TemplateMetadata.fromJson(core.Map json_)
      : this(
          defaultStreamingMode: json_['defaultStreamingMode'] as core.String?,
          description: json_['description'] as core.String?,
          name: json_['name'] as core.String?,
          parameters: (json_['parameters'] as core.List?)
              ?.map((value) => ParameterMetadata.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          streaming: json_['streaming'] as core.bool?,
          supportsAtLeastOnce: json_['supportsAtLeastOnce'] as core.bool?,
          supportsExactlyOnce: json_['supportsExactlyOnce'] as core.bool?,
          yamlDefinition: json_['yamlDefinition'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultStreamingMode != null)
          'defaultStreamingMode': defaultStreamingMode!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (parameters != null) 'parameters': parameters!,
        if (streaming != null) 'streaming': streaming!,
        if (supportsAtLeastOnce != null)
          'supportsAtLeastOnce': supportsAtLeastOnce!,
        if (supportsExactlyOnce != null)
          'supportsExactlyOnce': supportsExactlyOnce!,
        if (yamlDefinition != null) 'yamlDefinition': yamlDefinition!,
      };
}

/// Global topology of the streaming Dataflow job, including all computations
/// and their sharded locations.
class TopologyConfig {
  /// The computations associated with a streaming Dataflow job.
  core.List<ComputationTopology>? computations;

  /// The disks assigned to a streaming Dataflow job.
  core.List<DataDiskAssignment>? dataDiskAssignments;

  /// The size (in bits) of keys that will be assigned to source messages.
  core.int? forwardingKeyBits;

  /// Version number for persistent state.
  core.int? persistentStateVersion;

  /// Maps user stage names to stable computation names.
  core.Map<core.String, core.String>? userStageToComputationNameMap;

  TopologyConfig({
    this.computations,
    this.dataDiskAssignments,
    this.forwardingKeyBits,
    this.persistentStateVersion,
    this.userStageToComputationNameMap,
  });

  TopologyConfig.fromJson(core.Map json_)
      : this(
          computations: (json_['computations'] as core.List?)
              ?.map((value) => ComputationTopology.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          dataDiskAssignments: (json_['dataDiskAssignments'] as core.List?)
              ?.map((value) => DataDiskAssignment.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          forwardingKeyBits: json_['forwardingKeyBits'] as core.int?,
          persistentStateVersion: json_['persistentStateVersion'] as core.int?,
          userStageToComputationNameMap: (json_['userStageToComputationNameMap']
                  as core.Map<core.String, core.dynamic>?)
              ?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computations != null) 'computations': computations!,
        if (dataDiskAssignments != null)
          'dataDiskAssignments': dataDiskAssignments!,
        if (forwardingKeyBits != null) 'forwardingKeyBits': forwardingKeyBits!,
        if (persistentStateVersion != null)
          'persistentStateVersion': persistentStateVersion!,
        if (userStageToComputationNameMap != null)
          'userStageToComputationNameMap': userStageToComputationNameMap!,
      };
}

/// Description of the type, names/ids, and input/outputs for a transform.
class TransformSummary {
  /// Transform-specific display data.
  core.List<DisplayData>? displayData;

  /// SDK generated id of this transform instance.
  core.String? id;

  /// User names for all collection inputs to this transform.
  core.List<core.String>? inputCollectionName;

  /// Type of transform.
  /// Possible string values are:
  /// - "UNKNOWN_KIND" : Unrecognized transform type.
  /// - "PAR_DO_KIND" : ParDo transform.
  /// - "GROUP_BY_KEY_KIND" : Group By Key transform.
  /// - "FLATTEN_KIND" : Flatten transform.
  /// - "READ_KIND" : Read transform.
  /// - "WRITE_KIND" : Write transform.
  /// - "CONSTANT_KIND" : Constructs from a constant value, such as with
  /// Create.of.
  /// - "SINGLETON_KIND" : Creates a Singleton view of a collection.
  /// - "SHUFFLE_KIND" : Opening or closing a shuffle session, often as part of
  /// a GroupByKey.
  core.String? kind;

  /// User provided name for this transform instance.
  core.String? name;

  /// User names for all collection outputs to this transform.
  core.List<core.String>? outputCollectionName;

  TransformSummary({
    this.displayData,
    this.id,
    this.inputCollectionName,
    this.kind,
    this.name,
    this.outputCollectionName,
  });

  TransformSummary.fromJson(core.Map json_)
      : this(
          displayData: (json_['displayData'] as core.List?)
              ?.map((value) => DisplayData.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          id: json_['id'] as core.String?,
          inputCollectionName: (json_['inputCollectionName'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          kind: json_['kind'] as core.String?,
          name: json_['name'] as core.String?,
          outputCollectionName: (json_['outputCollectionName'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayData != null) 'displayData': displayData!,
        if (id != null) 'id': id!,
        if (inputCollectionName != null)
          'inputCollectionName': inputCollectionName!,
        if (kind != null) 'kind': kind!,
        if (name != null) 'name': name!,
        if (outputCollectionName != null)
          'outputCollectionName': outputCollectionName!,
      };
}

/// WorkItem represents basic information about a WorkItem to be executed in the
/// cloud.
class WorkItem {
  /// Work item-specific configuration as an opaque blob.
  core.String? configuration;

  /// Identifies this WorkItem.
  core.String? id;

  /// The initial index to use when reporting the status of the WorkItem.
  core.String? initialReportIndex;

  /// Identifies the workflow job this WorkItem belongs to.
  core.String? jobId;

  /// Time when the lease on this Work will expire.
  core.String? leaseExpireTime;

  /// Additional information for MapTask WorkItems.
  MapTask? mapTask;

  /// Any required packages that need to be fetched in order to execute this
  /// WorkItem.
  core.List<Package>? packages;

  /// Identifies the cloud project this WorkItem belongs to.
  core.String? projectId;

  /// Recommended reporting interval.
  core.String? reportStatusInterval;

  /// Additional information for SeqMapTask WorkItems.
  SeqMapTask? seqMapTask;

  /// Additional information for ShellTask WorkItems.
  ShellTask? shellTask;

  /// Additional information for source operation WorkItems.
  SourceOperationRequest? sourceOperationTask;

  /// Additional information for StreamingComputationTask WorkItems.
  StreamingComputationTask? streamingComputationTask;

  /// Additional information for StreamingConfigTask WorkItems.
  StreamingConfigTask? streamingConfigTask;

  /// Additional information for StreamingSetupTask WorkItems.
  StreamingSetupTask? streamingSetupTask;

  WorkItem({
    this.configuration,
    this.id,
    this.initialReportIndex,
    this.jobId,
    this.leaseExpireTime,
    this.mapTask,
    this.packages,
    this.projectId,
    this.reportStatusInterval,
    this.seqMapTask,
    this.shellTask,
    this.sourceOperationTask,
    this.streamingComputationTask,
    this.streamingConfigTask,
    this.streamingSetupTask,
  });

  WorkItem.fromJson(core.Map json_)
      : this(
          configuration: json_['configuration'] as core.String?,
          id: json_['id'] as core.String?,
          initialReportIndex: json_['initialReportIndex'] as core.String?,
          jobId: json_['jobId'] as core.String?,
          leaseExpireTime: json_['leaseExpireTime'] as core.String?,
          mapTask: json_.containsKey('mapTask')
              ? MapTask.fromJson(
                  json_['mapTask'] as core.Map<core.String, core.dynamic>)
              : null,
          packages: (json_['packages'] as core.List?)
              ?.map((value) => Package.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          projectId: json_['projectId'] as core.String?,
          reportStatusInterval: json_['reportStatusInterval'] as core.String?,
          seqMapTask: json_.containsKey('seqMapTask')
              ? SeqMapTask.fromJson(
                  json_['seqMapTask'] as core.Map<core.String, core.dynamic>)
              : null,
          shellTask: json_.containsKey('shellTask')
              ? ShellTask.fromJson(
                  json_['shellTask'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceOperationTask: json_.containsKey('sourceOperationTask')
              ? SourceOperationRequest.fromJson(json_['sourceOperationTask']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingComputationTask:
              json_.containsKey('streamingComputationTask')
                  ? StreamingComputationTask.fromJson(
                      json_['streamingComputationTask']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          streamingConfigTask: json_.containsKey('streamingConfigTask')
              ? StreamingConfigTask.fromJson(json_['streamingConfigTask']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingSetupTask: json_.containsKey('streamingSetupTask')
              ? StreamingSetupTask.fromJson(json_['streamingSetupTask']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (configuration != null) 'configuration': configuration!,
        if (id != null) 'id': id!,
        if (initialReportIndex != null)
          'initialReportIndex': initialReportIndex!,
        if (jobId != null) 'jobId': jobId!,
        if (leaseExpireTime != null) 'leaseExpireTime': leaseExpireTime!,
        if (mapTask != null) 'mapTask': mapTask!,
        if (packages != null) 'packages': packages!,
        if (projectId != null) 'projectId': projectId!,
        if (reportStatusInterval != null)
          'reportStatusInterval': reportStatusInterval!,
        if (seqMapTask != null) 'seqMapTask': seqMapTask!,
        if (shellTask != null) 'shellTask': shellTask!,
        if (sourceOperationTask != null)
          'sourceOperationTask': sourceOperationTask!,
        if (streamingComputationTask != null)
          'streamingComputationTask': streamingComputationTask!,
        if (streamingConfigTask != null)
          'streamingConfigTask': streamingConfigTask!,
        if (streamingSetupTask != null)
          'streamingSetupTask': streamingSetupTask!,
      };
}

/// Information about an individual work item execution.
class WorkItemDetails {
  /// Attempt ID of this work item
  core.String? attemptId;

  /// End time of this work item attempt.
  ///
  /// If the work item is completed, this is the actual end time of the work
  /// item. Otherwise, it is the predicted end time.
  core.String? endTime;

  /// Metrics for this work item.
  core.List<MetricUpdate>? metrics;

  /// Progress of this work item.
  ProgressTimeseries? progress;

  /// Start time of this work item attempt.
  core.String? startTime;

  /// State of this work item.
  /// Possible string values are:
  /// - "EXECUTION_STATE_UNKNOWN" : The component state is unknown or
  /// unspecified.
  /// - "EXECUTION_STATE_NOT_STARTED" : The component is not yet running.
  /// - "EXECUTION_STATE_RUNNING" : The component is currently running.
  /// - "EXECUTION_STATE_SUCCEEDED" : The component succeeded.
  /// - "EXECUTION_STATE_FAILED" : The component failed.
  /// - "EXECUTION_STATE_CANCELLED" : Execution of the component was cancelled.
  core.String? state;

  /// Information about straggler detections for this work item.
  StragglerInfo? stragglerInfo;

  /// Name of this work item.
  core.String? taskId;

  WorkItemDetails({
    this.attemptId,
    this.endTime,
    this.metrics,
    this.progress,
    this.startTime,
    this.state,
    this.stragglerInfo,
    this.taskId,
  });

  WorkItemDetails.fromJson(core.Map json_)
      : this(
          attemptId: json_['attemptId'] as core.String?,
          endTime: json_['endTime'] as core.String?,
          metrics: (json_['metrics'] as core.List?)
              ?.map((value) => MetricUpdate.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          progress: json_.containsKey('progress')
              ? ProgressTimeseries.fromJson(
                  json_['progress'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_['startTime'] as core.String?,
          state: json_['state'] as core.String?,
          stragglerInfo: json_.containsKey('stragglerInfo')
              ? StragglerInfo.fromJson(
                  json_['stragglerInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          taskId: json_['taskId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (attemptId != null) 'attemptId': attemptId!,
        if (endTime != null) 'endTime': endTime!,
        if (metrics != null) 'metrics': metrics!,
        if (progress != null) 'progress': progress!,
        if (startTime != null) 'startTime': startTime!,
        if (state != null) 'state': state!,
        if (stragglerInfo != null) 'stragglerInfo': stragglerInfo!,
        if (taskId != null) 'taskId': taskId!,
      };
}

/// The Dataflow service's idea of the current state of a WorkItem being
/// processed by a worker.
class WorkItemServiceState {
  /// If set, a request to complete the work item with the given status.
  ///
  /// This will not be set to OK, unless supported by the specific kind of
  /// WorkItem. It can be used for the backend to indicate a WorkItem must
  /// terminate, e.g., for aborting work.
  Status? completeWorkStatus;

  /// Other data returned by the service, specific to the particular worker
  /// harness.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? harnessData;

  /// A hot key is a symptom of poor data distribution in which there are enough
  /// elements mapped to a single key to impact pipeline performance.
  ///
  /// When present, this field includes metadata associated with any hot key.
  HotKeyDetection? hotKeyDetection;

  /// Time at which the current lease will expire.
  core.String? leaseExpireTime;

  /// The short ids that workers should use in subsequent metric updates.
  ///
  /// Workers should strive to use short ids whenever possible, but it is ok to
  /// request the short_id again if a worker lost track of it (e.g. if the
  /// worker is recovering from a crash). NOTE: it is possible that the response
  /// may have short ids for a subset of the metrics.
  core.List<MetricShortId>? metricShortId;

  /// The index value to use for the next report sent by the worker.
  ///
  /// Note: If the report call fails for whatever reason, the worker should
  /// reuse this index for subsequent report attempts.
  core.String? nextReportIndex;

  /// New recommended reporting interval.
  core.String? reportStatusInterval;

  /// The progress point in the WorkItem where the Dataflow service suggests
  /// that the worker truncate the task.
  ApproximateSplitRequest? splitRequest;

  /// DEPRECATED in favor of split_request.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  ApproximateProgress? suggestedStopPoint;

  /// Obsolete, always empty.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  Position? suggestedStopPosition;

  WorkItemServiceState({
    this.completeWorkStatus,
    this.harnessData,
    this.hotKeyDetection,
    this.leaseExpireTime,
    this.metricShortId,
    this.nextReportIndex,
    this.reportStatusInterval,
    this.splitRequest,
    this.suggestedStopPoint,
    this.suggestedStopPosition,
  });

  WorkItemServiceState.fromJson(core.Map json_)
      : this(
          completeWorkStatus: json_.containsKey('completeWorkStatus')
              ? Status.fromJson(json_['completeWorkStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          harnessData: json_.containsKey('harnessData')
              ? json_['harnessData'] as core.Map<core.String, core.dynamic>
              : null,
          hotKeyDetection: json_.containsKey('hotKeyDetection')
              ? HotKeyDetection.fromJson(json_['hotKeyDetection']
                  as core.Map<core.String, core.dynamic>)
              : null,
          leaseExpireTime: json_['leaseExpireTime'] as core.String?,
          metricShortId: (json_['metricShortId'] as core.List?)
              ?.map((value) => MetricShortId.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextReportIndex: json_['nextReportIndex'] as core.String?,
          reportStatusInterval: json_['reportStatusInterval'] as core.String?,
          splitRequest: json_.containsKey('splitRequest')
              ? ApproximateSplitRequest.fromJson(
                  json_['splitRequest'] as core.Map<core.String, core.dynamic>)
              : null,
          suggestedStopPoint: json_.containsKey('suggestedStopPoint')
              ? ApproximateProgress.fromJson(json_['suggestedStopPoint']
                  as core.Map<core.String, core.dynamic>)
              : null,
          suggestedStopPosition: json_.containsKey('suggestedStopPosition')
              ? Position.fromJson(json_['suggestedStopPosition']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeWorkStatus != null)
          'completeWorkStatus': completeWorkStatus!,
        if (harnessData != null) 'harnessData': harnessData!,
        if (hotKeyDetection != null) 'hotKeyDetection': hotKeyDetection!,
        if (leaseExpireTime != null) 'leaseExpireTime': leaseExpireTime!,
        if (metricShortId != null) 'metricShortId': metricShortId!,
        if (nextReportIndex != null) 'nextReportIndex': nextReportIndex!,
        if (reportStatusInterval != null)
          'reportStatusInterval': reportStatusInterval!,
        if (splitRequest != null) 'splitRequest': splitRequest!,
        if (suggestedStopPoint != null)
          'suggestedStopPoint': suggestedStopPoint!,
        if (suggestedStopPosition != null)
          'suggestedStopPosition': suggestedStopPosition!,
      };
}

/// Conveys a worker's progress through the work described by a WorkItem.
class WorkItemStatus {
  /// True if the WorkItem was completed (successfully or unsuccessfully).
  core.bool? completed;

  /// Worker output counters for this WorkItem.
  core.List<CounterUpdate>? counterUpdates;

  /// See documentation of stop_position.
  DynamicSourceSplit? dynamicSourceSplit;

  /// Specifies errors which occurred during processing.
  ///
  /// If errors are provided, and completed = true, then the WorkItem is
  /// considered to have failed.
  core.List<Status>? errors;

  /// DEPRECATED in favor of counter_updates.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<MetricUpdate>? metricUpdates;

  /// DEPRECATED in favor of reported_progress.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  ApproximateProgress? progress;

  /// The report index.
  ///
  /// When a WorkItem is leased, the lease will contain an initial report index.
  /// When a WorkItem's status is reported to the system, the report should be
  /// sent with that report index, and the response will contain the index the
  /// worker should use for the next report. Reports received with unexpected
  /// index values will be rejected by the service. In order to preserve
  /// idempotency, the worker should not alter the contents of a report, even if
  /// the worker must submit the same report multiple times before getting back
  /// a response. The worker should not submit a subsequent report until the
  /// response for the previous report had been received from the service.
  core.String? reportIndex;

  /// The worker's progress through this WorkItem.
  ApproximateReportedProgress? reportedProgress;

  /// Amount of time the worker requests for its lease.
  core.String? requestedLeaseDuration;

  /// DEPRECATED in favor of dynamic_source_split.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  SourceFork? sourceFork;

  /// If the work item represented a SourceOperationRequest, and the work is
  /// completed, contains the result of the operation.
  SourceOperationResponse? sourceOperationResponse;

  /// A worker may split an active map task in two parts, "primary" and
  /// "residual", continuing to process the primary part and returning the
  /// residual part into the pool of available work.
  ///
  /// This event is called a "dynamic split" and is critical to the dynamic work
  /// rebalancing feature. The two obtained sub-tasks are called "parts" of the
  /// split. The parts, if concatenated, must represent the same input as would
  /// be read by the current task if the split did not happen. The exact way in
  /// which the original task is decomposed into the two parts is specified
  /// either as a position demarcating them (stop_position), or explicitly as
  /// two DerivedSources, if this task consumes a user-defined source type
  /// (dynamic_source_split). The "current" task is adjusted as a result of the
  /// split: after a task with range \[A, B) sends a stop_position update at C,
  /// its range is considered to be \[A, C), e.g.: * Progress should be
  /// interpreted relative to the new range, e.g. "75% completed" means "75% of
  /// \[A, C) completed" * The worker should interpret proposed_stop_position
  /// relative to the new range, e.g. "split at 68%" should be interpreted as
  /// "split at 68% of \[A, C)". * If the worker chooses to split again using
  /// stop_position, only stop_positions in \[A, C) will be accepted. * Etc.
  /// dynamic_source_split has similar semantics: e.g., if a task with source S
  /// splits using dynamic_source_split into {P, R} (where P and R must be
  /// together equivalent to S), then subsequent progress and
  /// proposed_stop_position should be interpreted relative to P, and in a
  /// potential subsequent dynamic_source_split into {P', R'}, P' and R' must be
  /// together equivalent to P, etc.
  Position? stopPosition;

  /// Total time the worker spent being throttled by external systems.
  core.double? totalThrottlerWaitTimeSeconds;

  /// Identifies the WorkItem.
  core.String? workItemId;

  WorkItemStatus({
    this.completed,
    this.counterUpdates,
    this.dynamicSourceSplit,
    this.errors,
    this.metricUpdates,
    this.progress,
    this.reportIndex,
    this.reportedProgress,
    this.requestedLeaseDuration,
    this.sourceFork,
    this.sourceOperationResponse,
    this.stopPosition,
    this.totalThrottlerWaitTimeSeconds,
    this.workItemId,
  });

  WorkItemStatus.fromJson(core.Map json_)
      : this(
          completed: json_['completed'] as core.bool?,
          counterUpdates: (json_['counterUpdates'] as core.List?)
              ?.map((value) => CounterUpdate.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          dynamicSourceSplit: json_.containsKey('dynamicSourceSplit')
              ? DynamicSourceSplit.fromJson(json_['dynamicSourceSplit']
                  as core.Map<core.String, core.dynamic>)
              : null,
          errors: (json_['errors'] as core.List?)
              ?.map((value) =>
                  Status.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          metricUpdates: (json_['metricUpdates'] as core.List?)
              ?.map((value) => MetricUpdate.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          progress: json_.containsKey('progress')
              ? ApproximateProgress.fromJson(
                  json_['progress'] as core.Map<core.String, core.dynamic>)
              : null,
          reportIndex: json_['reportIndex'] as core.String?,
          reportedProgress: json_.containsKey('reportedProgress')
              ? ApproximateReportedProgress.fromJson(json_['reportedProgress']
                  as core.Map<core.String, core.dynamic>)
              : null,
          requestedLeaseDuration:
              json_['requestedLeaseDuration'] as core.String?,
          sourceFork: json_.containsKey('sourceFork')
              ? SourceFork.fromJson(
                  json_['sourceFork'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceOperationResponse: json_.containsKey('sourceOperationResponse')
              ? SourceOperationResponse.fromJson(
                  json_['sourceOperationResponse']
                      as core.Map<core.String, core.dynamic>)
              : null,
          stopPosition: json_.containsKey('stopPosition')
              ? Position.fromJson(
                  json_['stopPosition'] as core.Map<core.String, core.dynamic>)
              : null,
          totalThrottlerWaitTimeSeconds:
              (json_['totalThrottlerWaitTimeSeconds'] as core.num?)?.toDouble(),
          workItemId: json_['workItemId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completed != null) 'completed': completed!,
        if (counterUpdates != null) 'counterUpdates': counterUpdates!,
        if (dynamicSourceSplit != null)
          'dynamicSourceSplit': dynamicSourceSplit!,
        if (errors != null) 'errors': errors!,
        if (metricUpdates != null) 'metricUpdates': metricUpdates!,
        if (progress != null) 'progress': progress!,
        if (reportIndex != null) 'reportIndex': reportIndex!,
        if (reportedProgress != null) 'reportedProgress': reportedProgress!,
        if (requestedLeaseDuration != null)
          'requestedLeaseDuration': requestedLeaseDuration!,
        if (sourceFork != null) 'sourceFork': sourceFork!,
        if (sourceOperationResponse != null)
          'sourceOperationResponse': sourceOperationResponse!,
        if (stopPosition != null) 'stopPosition': stopPosition!,
        if (totalThrottlerWaitTimeSeconds != null)
          'totalThrottlerWaitTimeSeconds': totalThrottlerWaitTimeSeconds!,
        if (workItemId != null) 'workItemId': workItemId!,
      };
}

/// Information about a worker
class WorkerDetails {
  /// Work items processed by this worker, sorted by time.
  core.List<WorkItemDetails>? workItems;

  /// Name of this worker
  core.String? workerName;

  WorkerDetails({
    this.workItems,
    this.workerName,
  });

  WorkerDetails.fromJson(core.Map json_)
      : this(
          workItems: (json_['workItems'] as core.List?)
              ?.map((value) => WorkItemDetails.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          workerName: json_['workerName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (workItems != null) 'workItems': workItems!,
        if (workerName != null) 'workerName': workerName!,
      };
}

/// WorkerHealthReport contains information about the health of a worker.
///
/// The VM should be identified by the labels attached to the WorkerMessage that
/// this health ping belongs to.
class WorkerHealthReport {
  /// Message describing any unusual health reports.
  core.String? msg;

  /// The pods running on the worker.
  ///
  /// See:
  /// http://kubernetes.io/v1.1/docs/api-reference/v1/definitions.html#_v1_pod
  /// This field is used by the worker to send the status of the indvidual
  /// containers running on each worker.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? pods;

  /// The interval at which the worker is sending health reports.
  ///
  /// The default value of 0 should be interpreted as the field is not being
  /// explicitly set by the worker.
  core.String? reportInterval;

  /// Code to describe a specific reason, if known, that a VM has reported
  /// broken state.
  core.String? vmBrokenCode;

  /// Whether the VM is in a permanently broken state.
  ///
  /// Broken VMs should be abandoned or deleted ASAP to avoid assigning or
  /// completing any work.
  core.bool? vmIsBroken;

  /// Whether the VM is currently healthy.
  core.bool? vmIsHealthy;

  /// The time the VM was booted.
  core.String? vmStartupTime;

  WorkerHealthReport({
    this.msg,
    this.pods,
    this.reportInterval,
    this.vmBrokenCode,
    this.vmIsBroken,
    this.vmIsHealthy,
    this.vmStartupTime,
  });

  WorkerHealthReport.fromJson(core.Map json_)
      : this(
          msg: json_['msg'] as core.String?,
          pods: (json_['pods'] as core.List?)
              ?.map((value) => value as core.Map<core.String, core.dynamic>)
              .toList(),
          reportInterval: json_['reportInterval'] as core.String?,
          vmBrokenCode: json_['vmBrokenCode'] as core.String?,
          vmIsBroken: json_['vmIsBroken'] as core.bool?,
          vmIsHealthy: json_['vmIsHealthy'] as core.bool?,
          vmStartupTime: json_['vmStartupTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (msg != null) 'msg': msg!,
        if (pods != null) 'pods': pods!,
        if (reportInterval != null) 'reportInterval': reportInterval!,
        if (vmBrokenCode != null) 'vmBrokenCode': vmBrokenCode!,
        if (vmIsBroken != null) 'vmIsBroken': vmIsBroken!,
        if (vmIsHealthy != null) 'vmIsHealthy': vmIsHealthy!,
        if (vmStartupTime != null) 'vmStartupTime': vmStartupTime!,
      };
}

/// WorkerHealthReportResponse contains information returned to the worker in
/// response to a health ping.
class WorkerHealthReportResponse {
  /// A positive value indicates the worker should change its reporting interval
  /// to the specified value.
  ///
  /// The default value of zero means no change in report rate is requested by
  /// the server.
  core.String? reportInterval;

  WorkerHealthReportResponse({
    this.reportInterval,
  });

  WorkerHealthReportResponse.fromJson(core.Map json_)
      : this(
          reportInterval: json_['reportInterval'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reportInterval != null) 'reportInterval': reportInterval!,
      };
}

/// A report of an event in a worker's lifecycle.
///
/// The proto contains one event, because the worker is expected to
/// asynchronously send each message immediately after the event. Due to this
/// asynchrony, messages may arrive out of order (or missing), and it is up to
/// the consumer to interpret. The timestamp of the event is in the enclosing
/// WorkerMessage proto.
class WorkerLifecycleEvent {
  /// The start time of this container.
  ///
  /// All events will report this so that events can be grouped together across
  /// container/VM restarts.
  core.String? containerStartTime;

  /// The event being reported.
  /// Possible string values are:
  /// - "UNKNOWN_EVENT" : Invalid event.
  /// - "OS_START" : The time the VM started.
  /// - "CONTAINER_START" : Our container code starts running. Multiple
  /// containers could be distinguished with WorkerMessage.labels if desired.
  /// - "NETWORK_UP" : The worker has a functional external network connection.
  /// - "STAGING_FILES_DOWNLOAD_START" : Started downloading staging files.
  /// - "STAGING_FILES_DOWNLOAD_FINISH" : Finished downloading all staging
  /// files.
  /// - "SDK_INSTALL_START" : For applicable SDKs, started installation of SDK
  /// and worker packages.
  /// - "SDK_INSTALL_FINISH" : Finished installing SDK.
  core.String? event;

  /// Other stats that can accompany an event.
  ///
  /// E.g. { "downloaded_bytes" : "123456" }
  core.Map<core.String, core.String>? metadata;

  WorkerLifecycleEvent({
    this.containerStartTime,
    this.event,
    this.metadata,
  });

  WorkerLifecycleEvent.fromJson(core.Map json_)
      : this(
          containerStartTime: json_['containerStartTime'] as core.String?,
          event: json_['event'] as core.String?,
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (containerStartTime != null)
          'containerStartTime': containerStartTime!,
        if (event != null) 'event': event!,
        if (metadata != null) 'metadata': metadata!,
      };
}

/// WorkerMessage provides information to the backend about a worker.
class WorkerMessage {
  /// Contains metrics related to go/dataflow-data-sampling-telemetry.
  ///
  /// Optional.
  DataSamplingReport? dataSamplingReport;

  /// Labels are used to group WorkerMessages.
  ///
  /// For example, a worker_message about a particular container might have the
  /// labels: { "JOB_ID": "2015-04-22", "WORKER_ID": "wordcount-vm-2015…"
  /// "CONTAINER_TYPE": "worker", "CONTAINER_ID": "ac1234def"} Label tags
  /// typically correspond to Label enum values. However, for ease of
  /// development other strings can be used as tags. LABEL_UNSPECIFIED should
  /// not be used here.
  core.Map<core.String, core.String>? labels;

  /// System defined metrics for this worker.
  PerWorkerMetrics? perWorkerMetrics;

  /// Contains per-user worker telemetry used in streaming autoscaling.
  StreamingScalingReport? streamingScalingReport;

  /// The timestamp of the worker_message.
  core.String? time;

  /// The health of a worker.
  WorkerHealthReport? workerHealthReport;

  /// Record of worker lifecycle events.
  WorkerLifecycleEvent? workerLifecycleEvent;

  /// A worker message code.
  WorkerMessageCode? workerMessageCode;

  /// Resource metrics reported by workers.
  ResourceUtilizationReport? workerMetrics;

  /// Shutdown notice by workers.
  WorkerShutdownNotice? workerShutdownNotice;

  /// Thread scaling information reported by workers.
  WorkerThreadScalingReport? workerThreadScalingReport;

  WorkerMessage({
    this.dataSamplingReport,
    this.labels,
    this.perWorkerMetrics,
    this.streamingScalingReport,
    this.time,
    this.workerHealthReport,
    this.workerLifecycleEvent,
    this.workerMessageCode,
    this.workerMetrics,
    this.workerShutdownNotice,
    this.workerThreadScalingReport,
  });

  WorkerMessage.fromJson(core.Map json_)
      : this(
          dataSamplingReport: json_.containsKey('dataSamplingReport')
              ? DataSamplingReport.fromJson(json_['dataSamplingReport']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          perWorkerMetrics: json_.containsKey('perWorkerMetrics')
              ? PerWorkerMetrics.fromJson(json_['perWorkerMetrics']
                  as core.Map<core.String, core.dynamic>)
              : null,
          streamingScalingReport: json_.containsKey('streamingScalingReport')
              ? StreamingScalingReport.fromJson(json_['streamingScalingReport']
                  as core.Map<core.String, core.dynamic>)
              : null,
          time: json_['time'] as core.String?,
          workerHealthReport: json_.containsKey('workerHealthReport')
              ? WorkerHealthReport.fromJson(json_['workerHealthReport']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workerLifecycleEvent: json_.containsKey('workerLifecycleEvent')
              ? WorkerLifecycleEvent.fromJson(json_['workerLifecycleEvent']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workerMessageCode: json_.containsKey('workerMessageCode')
              ? WorkerMessageCode.fromJson(json_['workerMessageCode']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workerMetrics: json_.containsKey('workerMetrics')
              ? ResourceUtilizationReport.fromJson(
                  json_['workerMetrics'] as core.Map<core.String, core.dynamic>)
              : null,
          workerShutdownNotice: json_.containsKey('workerShutdownNotice')
              ? WorkerShutdownNotice.fromJson(json_['workerShutdownNotice']
                  as core.Map<core.String, core.dynamic>)
              : null,
          workerThreadScalingReport:
              json_.containsKey('workerThreadScalingReport')
                  ? WorkerThreadScalingReport.fromJson(
                      json_['workerThreadScalingReport']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSamplingReport != null)
          'dataSamplingReport': dataSamplingReport!,
        if (labels != null) 'labels': labels!,
        if (perWorkerMetrics != null) 'perWorkerMetrics': perWorkerMetrics!,
        if (streamingScalingReport != null)
          'streamingScalingReport': streamingScalingReport!,
        if (time != null) 'time': time!,
        if (workerHealthReport != null)
          'workerHealthReport': workerHealthReport!,
        if (workerLifecycleEvent != null)
          'workerLifecycleEvent': workerLifecycleEvent!,
        if (workerMessageCode != null) 'workerMessageCode': workerMessageCode!,
        if (workerMetrics != null) 'workerMetrics': workerMetrics!,
        if (workerShutdownNotice != null)
          'workerShutdownNotice': workerShutdownNotice!,
        if (workerThreadScalingReport != null)
          'workerThreadScalingReport': workerThreadScalingReport!,
      };
}

/// A message code is used to report status and error messages to the service.
///
/// The message codes are intended to be machine readable. The service will take
/// care of translating these into user understandable messages if necessary.
/// Example use cases: 1. Worker processes reporting successful startup. 2.
/// Worker processes reporting specific errors (e.g. package staging failure).
class WorkerMessageCode {
  /// The code is a string intended for consumption by a machine that identifies
  /// the type of message being sent.
  ///
  /// Examples: 1. "HARNESS_STARTED" might be used to indicate the worker
  /// harness has started. 2. "GCS_DOWNLOAD_ERROR" might be used to indicate an
  /// error downloading a Cloud Storage file as part of the boot process of one
  /// of the worker containers. This is a string and not an enum to make it easy
  /// to add new codes without waiting for an API change.
  core.String? code;

  /// Parameters contains specific information about the code.
  ///
  /// This is a struct to allow parameters of different types. Examples: 1. For
  /// a "HARNESS_STARTED" message parameters might provide the name of the
  /// worker and additional data like timing information. 2. For a
  /// "GCS_DOWNLOAD_ERROR" parameters might contain fields listing the Cloud
  /// Storage objects being downloaded and fields containing errors. In general
  /// complex data structures should be avoided. If a worker needs to send a
  /// specific and complicated data structure then please consider defining a
  /// new proto and adding it to the data oneof in WorkerMessageResponse.
  /// Conventions: Parameters should only be used for information that isn't
  /// typically passed as a label. hostname and other worker identifiers should
  /// almost always be passed as labels since they will be included on most
  /// messages.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  WorkerMessageCode({
    this.code,
    this.parameters,
  });

  WorkerMessageCode.fromJson(core.Map json_)
      : this(
          code: json_['code'] as core.String?,
          parameters: json_.containsKey('parameters')
              ? json_['parameters'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (parameters != null) 'parameters': parameters!,
      };
}

/// A worker_message response allows the server to pass information to the
/// sender.
class WorkerMessageResponse {
  /// Service's streaming scaling response for workers.
  StreamingScalingReportResponse? streamingScalingReportResponse;

  /// The service's response to a worker's health report.
  WorkerHealthReportResponse? workerHealthReportResponse;

  /// Service's response to reporting worker metrics (currently empty).
  ResourceUtilizationReportResponse? workerMetricsResponse;

  /// Service's response to shutdown notice (currently empty).
  WorkerShutdownNoticeResponse? workerShutdownNoticeResponse;

  /// Service's thread scaling recommendation for workers.
  WorkerThreadScalingReportResponse? workerThreadScalingReportResponse;

  WorkerMessageResponse({
    this.streamingScalingReportResponse,
    this.workerHealthReportResponse,
    this.workerMetricsResponse,
    this.workerShutdownNoticeResponse,
    this.workerThreadScalingReportResponse,
  });

  WorkerMessageResponse.fromJson(core.Map json_)
      : this(
          streamingScalingReportResponse:
              json_.containsKey('streamingScalingReportResponse')
                  ? StreamingScalingReportResponse.fromJson(
                      json_['streamingScalingReportResponse']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          workerHealthReportResponse:
              json_.containsKey('workerHealthReportResponse')
                  ? WorkerHealthReportResponse.fromJson(
                      json_['workerHealthReportResponse']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          workerMetricsResponse: json_.containsKey('workerMetricsResponse')
              ? ResourceUtilizationReportResponse.fromJson(
                  json_['workerMetricsResponse']
                      as core.Map<core.String, core.dynamic>)
              : null,
          workerShutdownNoticeResponse:
              json_.containsKey('workerShutdownNoticeResponse')
                  ? WorkerShutdownNoticeResponse.fromJson(
                      json_['workerShutdownNoticeResponse']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          workerThreadScalingReportResponse:
              json_.containsKey('workerThreadScalingReportResponse')
                  ? WorkerThreadScalingReportResponse.fromJson(
                      json_['workerThreadScalingReportResponse']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (streamingScalingReportResponse != null)
          'streamingScalingReportResponse': streamingScalingReportResponse!,
        if (workerHealthReportResponse != null)
          'workerHealthReportResponse': workerHealthReportResponse!,
        if (workerMetricsResponse != null)
          'workerMetricsResponse': workerMetricsResponse!,
        if (workerShutdownNoticeResponse != null)
          'workerShutdownNoticeResponse': workerShutdownNoticeResponse!,
        if (workerThreadScalingReportResponse != null)
          'workerThreadScalingReportResponse':
              workerThreadScalingReportResponse!,
      };
}

/// Describes one particular pool of Cloud Dataflow workers to be instantiated
/// by the Cloud Dataflow service in order to perform the computations required
/// by a job.
///
/// Note that a workflow job may use multiple pools, in order to match the
/// various computational requirements of the various stages of the job.
class WorkerPool {
  /// Settings for autoscaling of this WorkerPool.
  AutoscalingSettings? autoscalingSettings;

  /// Data disks that are used by a VM in this workflow.
  core.List<Disk>? dataDisks;

  /// The default package set to install.
  ///
  /// This allows the service to select a default set of packages which are
  /// useful to worker harnesses written in a particular language.
  /// Possible string values are:
  /// - "DEFAULT_PACKAGE_SET_UNKNOWN" : The default set of packages to stage is
  /// unknown, or unspecified.
  /// - "DEFAULT_PACKAGE_SET_NONE" : Indicates that no packages should be staged
  /// at the worker unless explicitly specified by the job.
  /// - "DEFAULT_PACKAGE_SET_JAVA" : Stage packages typically useful to workers
  /// written in Java.
  /// - "DEFAULT_PACKAGE_SET_PYTHON" : Stage packages typically useful to
  /// workers written in Python.
  core.String? defaultPackageSet;

  /// Size of root disk for VMs, in GB.
  ///
  /// If zero or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.int? diskSizeGb;

  /// Fully qualified source image for disks.
  core.String? diskSourceImage;

  /// Type of root disk for VMs.
  ///
  /// If empty or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.String? diskType;

  /// Configuration for VM IPs.
  /// Possible string values are:
  /// - "WORKER_IP_UNSPECIFIED" : The configuration is unknown, or unspecified.
  /// - "WORKER_IP_PUBLIC" : Workers should have public IP addresses.
  /// - "WORKER_IP_PRIVATE" : Workers should have private IP addresses.
  core.String? ipConfiguration;

  /// The kind of the worker pool; currently only `harness` and `shuffle` are
  /// supported.
  core.String? kind;

  /// Machine type (e.g. "n1-standard-1").
  ///
  /// If empty or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.String? machineType;

  /// Metadata to set on the Google Compute Engine VMs.
  core.Map<core.String, core.String>? metadata;

  /// Network to which VMs will be assigned.
  ///
  /// If empty or unspecified, the service will use the network "default".
  core.String? network;

  /// The number of threads per worker harness.
  ///
  /// If empty or unspecified, the service will choose a number of threads
  /// (according to the number of cores on the selected machine type for batch,
  /// or 1 by convention for streaming).
  core.int? numThreadsPerWorker;

  /// Number of Google Compute Engine workers in this pool needed to execute the
  /// job.
  ///
  /// If zero or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.int? numWorkers;

  /// The action to take on host maintenance, as defined by the Google Compute
  /// Engine API.
  core.String? onHostMaintenance;

  /// Packages to be installed on workers.
  core.List<Package>? packages;

  /// Extra arguments for this worker pool.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? poolArgs;

  /// Set of SDK harness containers needed to execute this pipeline.
  ///
  /// This will only be set in the Fn API path. For non-cross-language pipelines
  /// this should have only one entry. Cross-language pipelines will have two or
  /// more entries.
  core.List<SdkHarnessContainerImage>? sdkHarnessContainerImages;

  /// Subnetwork to which VMs will be assigned, if desired.
  ///
  /// Expected to be of the form "regions/REGION/subnetworks/SUBNETWORK".
  core.String? subnetwork;

  /// Settings passed through to Google Compute Engine workers when using the
  /// standard Dataflow task runner.
  ///
  /// Users should ignore this field.
  TaskRunnerSettings? taskrunnerSettings;

  /// Sets the policy for determining when to turndown worker pool.
  ///
  /// Allowed values are: `TEARDOWN_ALWAYS`, `TEARDOWN_ON_SUCCESS`, and
  /// `TEARDOWN_NEVER`. `TEARDOWN_ALWAYS` means workers are always torn down
  /// regardless of whether the job succeeds. `TEARDOWN_ON_SUCCESS` means
  /// workers are torn down if the job succeeds. `TEARDOWN_NEVER` means the
  /// workers are never torn down. If the workers are not torn down by the
  /// service, they will continue to run and use Google Compute Engine VM
  /// resources in the user's project until they are explicitly terminated by
  /// the user. Because of this, Google recommends using the `TEARDOWN_ALWAYS`
  /// policy except for small, manually supervised test jobs. If unknown or
  /// unspecified, the service will attempt to choose a reasonable default.
  /// Possible string values are:
  /// - "TEARDOWN_POLICY_UNKNOWN" : The teardown policy isn't specified, or is
  /// unknown.
  /// - "TEARDOWN_ALWAYS" : Always teardown the resource.
  /// - "TEARDOWN_ON_SUCCESS" : Teardown the resource on success. This is useful
  /// for debugging failures.
  /// - "TEARDOWN_NEVER" : Never teardown the resource. This is useful for
  /// debugging and development.
  core.String? teardownPolicy;

  /// Docker container image that executes the Cloud Dataflow worker harness,
  /// residing in Google Container Registry.
  ///
  /// Deprecated for the Fn API path. Use sdk_harness_container_images instead.
  ///
  /// Required.
  core.String? workerHarnessContainerImage;

  /// Zone to run the worker pools in.
  ///
  /// If empty or unspecified, the service will attempt to choose a reasonable
  /// default.
  core.String? zone;

  WorkerPool({
    this.autoscalingSettings,
    this.dataDisks,
    this.defaultPackageSet,
    this.diskSizeGb,
    this.diskSourceImage,
    this.diskType,
    this.ipConfiguration,
    this.kind,
    this.machineType,
    this.metadata,
    this.network,
    this.numThreadsPerWorker,
    this.numWorkers,
    this.onHostMaintenance,
    this.packages,
    this.poolArgs,
    this.sdkHarnessContainerImages,
    this.subnetwork,
    this.taskrunnerSettings,
    this.teardownPolicy,
    this.workerHarnessContainerImage,
    this.zone,
  });

  WorkerPool.fromJson(core.Map json_)
      : this(
          autoscalingSettings: json_.containsKey('autoscalingSettings')
              ? AutoscalingSettings.fromJson(json_['autoscalingSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dataDisks: (json_['dataDisks'] as core.List?)
              ?.map((value) =>
                  Disk.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          defaultPackageSet: json_['defaultPackageSet'] as core.String?,
          diskSizeGb: json_['diskSizeGb'] as core.int?,
          diskSourceImage: json_['diskSourceImage'] as core.String?,
          diskType: json_['diskType'] as core.String?,
          ipConfiguration: json_['ipConfiguration'] as core.String?,
          kind: json_['kind'] as core.String?,
          machineType: json_['machineType'] as core.String?,
          metadata:
              (json_['metadata'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          network: json_['network'] as core.String?,
          numThreadsPerWorker: json_['numThreadsPerWorker'] as core.int?,
          numWorkers: json_['numWorkers'] as core.int?,
          onHostMaintenance: json_['onHostMaintenance'] as core.String?,
          packages: (json_['packages'] as core.List?)
              ?.map((value) => Package.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          poolArgs: json_.containsKey('poolArgs')
              ? json_['poolArgs'] as core.Map<core.String, core.dynamic>
              : null,
          sdkHarnessContainerImages:
              (json_['sdkHarnessContainerImages'] as core.List?)
                  ?.map((value) => SdkHarnessContainerImage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          subnetwork: json_['subnetwork'] as core.String?,
          taskrunnerSettings: json_.containsKey('taskrunnerSettings')
              ? TaskRunnerSettings.fromJson(json_['taskrunnerSettings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          teardownPolicy: json_['teardownPolicy'] as core.String?,
          workerHarnessContainerImage:
              json_['workerHarnessContainerImage'] as core.String?,
          zone: json_['zone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoscalingSettings != null)
          'autoscalingSettings': autoscalingSettings!,
        if (dataDisks != null) 'dataDisks': dataDisks!,
        if (defaultPackageSet != null) 'defaultPackageSet': defaultPackageSet!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskSourceImage != null) 'diskSourceImage': diskSourceImage!,
        if (diskType != null) 'diskType': diskType!,
        if (ipConfiguration != null) 'ipConfiguration': ipConfiguration!,
        if (kind != null) 'kind': kind!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (network != null) 'network': network!,
        if (numThreadsPerWorker != null)
          'numThreadsPerWorker': numThreadsPerWorker!,
        if (numWorkers != null) 'numWorkers': numWorkers!,
        if (onHostMaintenance != null) 'onHostMaintenance': onHostMaintenance!,
        if (packages != null) 'packages': packages!,
        if (poolArgs != null) 'poolArgs': poolArgs!,
        if (sdkHarnessContainerImages != null)
          'sdkHarnessContainerImages': sdkHarnessContainerImages!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
        if (taskrunnerSettings != null)
          'taskrunnerSettings': taskrunnerSettings!,
        if (teardownPolicy != null) 'teardownPolicy': teardownPolicy!,
        if (workerHarnessContainerImage != null)
          'workerHarnessContainerImage': workerHarnessContainerImage!,
        if (zone != null) 'zone': zone!,
      };
}

/// Provides data to pass through to the worker harness.
class WorkerSettings {
  /// The base URL for accessing Google Cloud APIs.
  ///
  /// When workers access Google Cloud APIs, they logically do so via relative
  /// URLs. If this field is specified, it supplies the base URL to use for
  /// resolving these relative URLs. The normative algorithm used is defined by
  /// RFC 1808, "Relative Uniform Resource Locators". If not specified, the
  /// default value is "http://www.googleapis.com/"
  core.String? baseUrl;

  /// Whether to send work progress updates to the service.
  core.bool? reportingEnabled;

  /// The Cloud Dataflow service path relative to the root URL, for example,
  /// "dataflow/v1b3/projects".
  core.String? servicePath;

  /// The Shuffle service path relative to the root URL, for example,
  /// "shuffle/v1beta1".
  core.String? shuffleServicePath;

  /// The prefix of the resources the system should use for temporary storage.
  ///
  /// The supported resource type is: Google Cloud Storage:
  /// storage.googleapis.com/{bucket}/{object}
  /// bucket.storage.googleapis.com/{object}
  core.String? tempStoragePrefix;

  /// The ID of the worker running this pipeline.
  core.String? workerId;

  WorkerSettings({
    this.baseUrl,
    this.reportingEnabled,
    this.servicePath,
    this.shuffleServicePath,
    this.tempStoragePrefix,
    this.workerId,
  });

  WorkerSettings.fromJson(core.Map json_)
      : this(
          baseUrl: json_['baseUrl'] as core.String?,
          reportingEnabled: json_['reportingEnabled'] as core.bool?,
          servicePath: json_['servicePath'] as core.String?,
          shuffleServicePath: json_['shuffleServicePath'] as core.String?,
          tempStoragePrefix: json_['tempStoragePrefix'] as core.String?,
          workerId: json_['workerId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baseUrl != null) 'baseUrl': baseUrl!,
        if (reportingEnabled != null) 'reportingEnabled': reportingEnabled!,
        if (servicePath != null) 'servicePath': servicePath!,
        if (shuffleServicePath != null)
          'shuffleServicePath': shuffleServicePath!,
        if (tempStoragePrefix != null) 'tempStoragePrefix': tempStoragePrefix!,
        if (workerId != null) 'workerId': workerId!,
      };
}

/// Shutdown notification from workers.
///
/// This is to be sent by the shutdown script of the worker VM so that the
/// backend knows that the VM is being shut down.
class WorkerShutdownNotice {
  /// The reason for the worker shutdown.
  ///
  /// Current possible values are: "UNKNOWN": shutdown reason is unknown.
  /// "PREEMPTION": shutdown reason is preemption. Other possible reasons may be
  /// added in the future.
  core.String? reason;

  WorkerShutdownNotice({
    this.reason,
  });

  WorkerShutdownNotice.fromJson(core.Map json_)
      : this(
          reason: json_['reason'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (reason != null) 'reason': reason!,
      };
}

/// Service-side response to WorkerMessage issuing shutdown notice.
typedef WorkerShutdownNoticeResponse = $Empty;

/// Contains information about the thread scaling information of a worker.
class WorkerThreadScalingReport {
  /// Current number of active threads in a worker.
  core.int? currentThreadCount;

  WorkerThreadScalingReport({
    this.currentThreadCount,
  });

  WorkerThreadScalingReport.fromJson(core.Map json_)
      : this(
          currentThreadCount: json_['currentThreadCount'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (currentThreadCount != null)
          'currentThreadCount': currentThreadCount!,
      };
}

/// Contains the thread scaling recommendation for a worker from the backend.
class WorkerThreadScalingReportResponse {
  /// Recommended number of threads for a worker.
  core.int? recommendedThreadCount;

  WorkerThreadScalingReportResponse({
    this.recommendedThreadCount,
  });

  WorkerThreadScalingReportResponse.fromJson(core.Map json_)
      : this(
          recommendedThreadCount: json_['recommendedThreadCount'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (recommendedThreadCount != null)
          'recommendedThreadCount': recommendedThreadCount!,
      };
}

/// An instruction that writes records.
///
/// Takes one input, produces no outputs.
class WriteInstruction {
  /// The input.
  InstructionInput? input;

  /// The sink to write to.
  Sink? sink;

  WriteInstruction({
    this.input,
    this.sink,
  });

  WriteInstruction.fromJson(core.Map json_)
      : this(
          input: json_.containsKey('input')
              ? InstructionInput.fromJson(
                  json_['input'] as core.Map<core.String, core.dynamic>)
              : null,
          sink: json_.containsKey('sink')
              ? Sink.fromJson(
                  json_['sink'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (input != null) 'input': input!,
        if (sink != null) 'sink': sink!,
      };
}
