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

/// Storage Transfer API - v1
///
/// Transfers data from external data sources to a Google Cloud Storage bucket
/// or between Google Cloud Storage buckets.
///
/// For more information, see <https://cloud.google.com/storage-transfer/docs>
///
/// Create an instance of [StoragetransferApi] to access these resources:
///
/// - [GoogleServiceAccountsResource]
/// - [ProjectsResource]
///   - [ProjectsAgentPoolsResource]
/// - [TransferJobsResource]
/// - [TransferOperationsResource]
library storagetransfer.v1;

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

/// Transfers data from external data sources to a Google Cloud Storage bucket
/// or between Google Cloud Storage buckets.
class StoragetransferApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  GoogleServiceAccountsResource get googleServiceAccounts =>
      GoogleServiceAccountsResource(_requester);
  ProjectsResource get projects => ProjectsResource(_requester);
  TransferJobsResource get transferJobs => TransferJobsResource(_requester);
  TransferOperationsResource get transferOperations =>
      TransferOperationsResource(_requester);

  StoragetransferApi(http.Client client,
      {core.String rootUrl = 'https://storagetransfer.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class GoogleServiceAccountsResource {
  final commons.ApiRequester _requester;

  GoogleServiceAccountsResource(commons.ApiRequester client)
      : _requester = client;

  /// Returns the Google service account that is used by Storage Transfer
  /// Service to access buckets in the project where transfers run or in other
  /// projects.
  ///
  /// Each Google service account is associated with one Google Cloud project.
  /// Users should add this service account to the Google Cloud Storage bucket
  /// ACLs to grant access to Storage Transfer Service. This service account is
  /// created and owned by Storage Transfer Service and can only be used by
  /// Storage Transfer Service.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud project that the Google
  /// service account is associated with.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleServiceAccount].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleServiceAccount> get(
    core.String projectId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/googleServiceAccounts/' + commons.escapeVariable('$projectId');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleServiceAccount.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentPoolsResource get agentPools =>
      ProjectsAgentPoolsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsAgentPoolsResource {
  final commons.ApiRequester _requester;

  ProjectsAgentPoolsResource(commons.ApiRequester client) : _requester = client;

  /// Creates an agent pool resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud project that owns the
  /// agent pool.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [agentPoolId] - Required. The ID of the agent pool to create. The
  /// `agent_pool_id` must meet the following requirements: * Length of 128
  /// characters or less. * Not start with the string `goog`. * Start with a
  /// lowercase ASCII character, followed by: * Zero or more: lowercase Latin
  /// alphabet characters, numerals, hyphens (`-`), periods (`.`), underscores
  /// (`_`), or tildes (`~`). * One or more numerals or lowercase ASCII
  /// characters. As expressed by the regular expression:
  /// `^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AgentPool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AgentPool> create(
    AgentPool request,
    core.String projectId, {
    core.String? agentPoolId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (agentPoolId != null) 'agentPoolId': [agentPoolId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/projects/' + core.Uri.encodeFull('$projectId') + '/agentPools';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return AgentPool.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an agent pool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the agent pool to delete.
  /// Value must have pattern `^projects/\[^/\]+/agentPools/\[^/\]+$`.
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

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets an agent pool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the agent pool to get.
  /// Value must have pattern `^projects/\[^/\]+/agentPools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AgentPool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AgentPool> get(
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
    return AgentPool.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists agent pools.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Required. The ID of the Google Cloud project that owns the
  /// job.
  /// Value must have pattern `^\[^/\]+$`.
  ///
  /// [filter] - An optional list of query parameters specified as JSON text in
  /// the form of: `{"agentPoolNames":["agentpool1","agentpool2",...]}` Since
  /// `agentPoolNames` support multiple values, its values must be specified
  /// with array notation. When the filter is either empty or not provided, the
  /// list returns all agent pools for the project.
  ///
  /// [pageSize] - The list page size. The max allowed value is `256`.
  ///
  /// [pageToken] - The list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAgentPoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAgentPoolsResponse> list(
    core.String projectId, {
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

    final _url =
        'v1/projects/' + core.Uri.encodeFull('$projectId') + '/agentPools';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListAgentPoolsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an existing agent pool resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Specifies a unique string that identifies the agent
  /// pool. Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  /// Value must have pattern `^projects/\[^/\]+/agentPools/\[^/\]+$`.
  ///
  /// [updateMask] - The
  /// [field mask](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf)
  /// of the fields in `agentPool` to update in this request. The following
  /// `agentPool` fields can be updated: * display_name * bandwidth_limit
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AgentPool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AgentPool> patch(
    AgentPool request,
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
    return AgentPool.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class TransferJobsResource {
  final commons.ApiRequester _requester;

  TransferJobsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a transfer job that runs periodically.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferJob> create(
    TransferJob request, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/transferJobs';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TransferJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a transfer job.
  ///
  /// Request parameters:
  ///
  /// [jobName] - Required. The job to get.
  /// Value must have pattern `^transferJobs/.*$`.
  ///
  /// [projectId] - Required. The ID of the Google Cloud project that owns the
  /// job.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferJob> get(
    core.String jobName,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'projectId': [projectId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$jobName');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return TransferJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists transfer jobs.
  ///
  /// Request parameters:
  ///
  /// [filter] - Required. A list of query parameters specified as JSON text in
  /// the form of: `{"projectId":"my_project_id",
  /// "jobNames":["jobid1","jobid2",...],
  /// "jobStatuses":["status1","status2",...]}` Since `jobNames` and
  /// `jobStatuses` support multiple values, their values must be specified with
  /// array notation. `projectId` is required. `jobNames` and `jobStatuses` are
  /// optional. The valid values for `jobStatuses` are case-insensitive:
  /// ENABLED, DISABLED, and DELETED.
  ///
  /// [pageSize] - The list page size. The max allowed value is 256.
  ///
  /// [pageToken] - The list page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTransferJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTransferJobsResponse> list(
    core.String filter, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    const _url = 'v1/transferJobs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListTransferJobsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a transfer job.
  ///
  /// Updating a job's transfer spec does not affect transfer operations that
  /// are running already. **Note:** The job's status field can be modified
  /// using this RPC (for example, to set a job's status to DELETED, DISABLED,
  /// or ENABLED).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [jobName] - Required. The name of job to update.
  /// Value must have pattern `^transferJobs/.*$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TransferJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TransferJob> patch(
    UpdateTransferJobRequest request,
    core.String jobName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$jobName');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return TransferJob.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Attempts to start a new TransferOperation for the current TransferJob.
  ///
  /// A TransferJob has a maximum of one active TransferOperation. If this
  /// method is called while a TransferOperation is active, an error will be
  /// returned.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [jobName] - Required. The name of the transfer job.
  /// Value must have pattern `^transferJobs/.*$`.
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
    RunTransferJobRequest request,
    core.String jobName, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$jobName') + ':run';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class TransferOperationsResource {
  final commons.ApiRequester _requester;

  TransferOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Cancels a transfer.
  ///
  /// Use the transferOperations.get method to check if the cancellation
  /// succeeded or if the operation completed despite the `cancel` request. When
  /// you cancel an operation, the currently running transfer is interrupted.
  /// For recurring transfer jobs, the next instance of the transfer job will
  /// still run. For example, if your job is configured to run every day at 1pm
  /// and you cancel Monday's operation at 1:05pm, Monday's transfer will stop.
  /// However, a transfer job will still be attempted on Tuesday. This applies
  /// only to currently running operations. If an operation is not currently
  /// running, `cancel` does nothing. *Caution:* Canceling a transfer job can
  /// leave your data in an unknown state. We recommend that you restore the
  /// state at both the destination and the source after the `cancel` request
  /// completes so that your data is in a consistent state. When you cancel a
  /// job, the next job computes a delta of files and may repair any
  /// inconsistent state. For instance, if you run a job every day, and today's
  /// job found 10 new files and transferred five files before you canceled the
  /// job, tomorrow's transfer operation will compute a new delta with the five
  /// files that were not copied today plus any new files discovered tomorrow.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern `^transferOperations/.*$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^transferOperations/.*$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists transfer operations.
  ///
  /// Operations are ordered by their creation time in reverse chronological
  /// order.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the type being listed; must be
  /// `transferOperations`.
  /// Value must have pattern `^transferOperations$`.
  ///
  /// [filter] - Required. A list of query parameters specified as JSON text in
  /// the form of: `{"projectId":"my_project_id",
  /// "jobNames":["jobid1","jobid2",...],
  /// "operationNames":["opid1","opid2",...],
  /// "transferStatuses":["status1","status2",...]}` Since `jobNames`,
  /// `operationNames`, and `transferStatuses` support multiple values, they
  /// must be specified with array notation. `projectId` is required.
  /// `jobNames`, `operationNames`, and `transferStatuses` are optional. The
  /// valid values for `transferStatuses` are case-insensitive: IN_PROGRESS,
  /// PAUSED, SUCCESS, FAILED, and ABORTED.
  ///
  /// [pageSize] - The list page size. The max allowed value is 256.
  ///
  /// [pageToken] - The list page token.
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
    core.String name,
    core.String filter, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Pauses a transfer operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the transfer operation.
  /// Value must have pattern `^transferOperations/.*$`.
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
  async.Future<Empty> pause(
    PauseTransferOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':pause';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Resumes a transfer operation that is paused.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the transfer operation.
  /// Value must have pattern `^transferOperations/.*$`.
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
  async.Future<Empty> resume(
    ResumeTransferOperationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':resume';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

/// Represents an On-Premises Agent pool.
class AgentPool {
  /// Specifies the bandwidth limit details.
  ///
  /// If this field is unspecified, the default value is set as 'No Limit'.
  BandwidthLimit? bandwidthLimit;

  /// Specifies the client-specified AgentPool description.
  core.String? displayName;

  /// Specifies a unique string that identifies the agent pool.
  ///
  /// Format: `projects/{project_id}/agentPools/{agent_pool_id}`
  ///
  /// Required.
  core.String? name;

  /// Specifies the state of the AgentPool.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default value. This value is unused.
  /// - "CREATING" : This is an initialization state. During this stage, the
  /// resources such as Pub/Sub topics are allocated for the AgentPool.
  /// - "CREATED" : Determines that the AgentPool is created for use. At this
  /// state, Agents can join the AgentPool and participate in the transfer jobs
  /// in that pool.
  /// - "DELETING" : Determines that the AgentPool deletion has been initiated,
  /// and all the resources are scheduled to be cleaned up and freed.
  core.String? state;

  AgentPool({
    this.bandwidthLimit,
    this.displayName,
    this.name,
    this.state,
  });

  AgentPool.fromJson(core.Map _json)
      : this(
          bandwidthLimit: _json.containsKey('bandwidthLimit')
              ? BandwidthLimit.fromJson(_json['bandwidthLimit']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bandwidthLimit != null) 'bandwidthLimit': bandwidthLimit!,
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// AWS access key (see
/// [AWS Security Credentials](https://docs.aws.amazon.com/general/latest/gr/aws-security-credentials.html)).
///
/// For information on our data retention policy for user credentials, see
/// \[User
/// credentials\](/storage-transfer/docs/data-retention#user-credentials).
class AwsAccessKey {
  /// AWS access key ID.
  ///
  /// Required.
  core.String? accessKeyId;

  /// AWS secret access key.
  ///
  /// This field is not returned in RPC responses.
  ///
  /// Required.
  core.String? secretAccessKey;

  AwsAccessKey({
    this.accessKeyId,
    this.secretAccessKey,
  });

  AwsAccessKey.fromJson(core.Map _json)
      : this(
          accessKeyId: _json.containsKey('accessKeyId')
              ? _json['accessKeyId'] as core.String
              : null,
          secretAccessKey: _json.containsKey('secretAccessKey')
              ? _json['secretAccessKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessKeyId != null) 'accessKeyId': accessKeyId!,
        if (secretAccessKey != null) 'secretAccessKey': secretAccessKey!,
      };
}

/// An AwsS3Data resource can be a data source, but not a data sink.
///
/// In an AwsS3Data resource, an object's name is the S3 object's key name.
class AwsS3Data {
  /// Input only.
  ///
  /// AWS access key used to sign the API requests to the AWS S3 bucket.
  /// Permissions on the bucket must be granted to the access ID of the AWS
  /// access key. For information on our data retention policy for user
  /// credentials, see \[User
  /// credentials\](/storage-transfer/docs/data-retention#user-credentials).
  AwsAccessKey? awsAccessKey;

  /// S3 Bucket name (see
  /// [Creating a bucket](https://docs.aws.amazon.com/AmazonS3/latest/dev/create-bucket-get-location-example.html)).
  ///
  /// Required.
  core.String? bucketName;

  /// Root path to transfer objects.
  ///
  /// Must be an empty string or full path name that ends with a '/'. This field
  /// is treated as an object prefix. As such, it should generally not begin
  /// with a '/'.
  core.String? path;

  /// The Amazon Resource Name (ARN) of the role to support temporary
  /// credentials via `AssumeRoleWithWebIdentity`.
  ///
  /// For more information about ARNs, see
  /// [IAM ARNs](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html#identifiers-arns).
  /// When a role ARN is provided, Transfer Service fetches temporary
  /// credentials for the session using a `AssumeRoleWithWebIdentity` call for
  /// the provided role using the GoogleServiceAccount for this project.
  core.String? roleArn;

  AwsS3Data({
    this.awsAccessKey,
    this.bucketName,
    this.path,
    this.roleArn,
  });

  AwsS3Data.fromJson(core.Map _json)
      : this(
          awsAccessKey: _json.containsKey('awsAccessKey')
              ? AwsAccessKey.fromJson(
                  _json['awsAccessKey'] as core.Map<core.String, core.dynamic>)
              : null,
          bucketName: _json.containsKey('bucketName')
              ? _json['bucketName'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          roleArn: _json.containsKey('roleArn')
              ? _json['roleArn'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (awsAccessKey != null) 'awsAccessKey': awsAccessKey!,
        if (bucketName != null) 'bucketName': bucketName!,
        if (path != null) 'path': path!,
        if (roleArn != null) 'roleArn': roleArn!,
      };
}

/// An AzureBlobStorageData resource can be a data source, but not a data sink.
///
/// An AzureBlobStorageData resource represents one Azure container. The storage
/// account determines the
/// [Azure endpoint](https://docs.microsoft.com/en-us/azure/storage/common/storage-create-storage-account#storage-account-endpoints).
/// In an AzureBlobStorageData resource, a blobs's name is the
/// [Azure Blob Storage blob's key name](https://docs.microsoft.com/en-us/rest/api/storageservices/naming-and-referencing-containers--blobs--and-metadata#blob-names).
class AzureBlobStorageData {
  /// Input only.
  ///
  /// Credentials used to authenticate API requests to Azure. For information on
  /// our data retention policy for user credentials, see \[User
  /// credentials\](/storage-transfer/docs/data-retention#user-credentials).
  ///
  /// Required.
  AzureCredentials? azureCredentials;

  /// The container to transfer from the Azure Storage account.
  ///
  /// Required.
  core.String? container;

  /// Root path to transfer objects.
  ///
  /// Must be an empty string or full path name that ends with a '/'. This field
  /// is treated as an object prefix. As such, it should generally not begin
  /// with a '/'.
  core.String? path;

  /// The name of the Azure Storage account.
  ///
  /// Required.
  core.String? storageAccount;

  AzureBlobStorageData({
    this.azureCredentials,
    this.container,
    this.path,
    this.storageAccount,
  });

  AzureBlobStorageData.fromJson(core.Map _json)
      : this(
          azureCredentials: _json.containsKey('azureCredentials')
              ? AzureCredentials.fromJson(_json['azureCredentials']
                  as core.Map<core.String, core.dynamic>)
              : null,
          container: _json.containsKey('container')
              ? _json['container'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
          storageAccount: _json.containsKey('storageAccount')
              ? _json['storageAccount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (azureCredentials != null) 'azureCredentials': azureCredentials!,
        if (container != null) 'container': container!,
        if (path != null) 'path': path!,
        if (storageAccount != null) 'storageAccount': storageAccount!,
      };
}

/// Azure credentials For information on our data retention policy for user
/// credentials, see \[User
/// credentials\](/storage-transfer/docs/data-retention#user-credentials).
class AzureCredentials {
  /// Azure shared access signature (SAS).
  ///
  /// For more information about SAS, see \[Grant limited access to Azure
  /// Storage resources using shared access signatures
  /// (SAS)\](https://docs.microsoft.com/en-us/azure/storage/common/storage-sas-overview).
  ///
  /// Required.
  core.String? sasToken;

  AzureCredentials({
    this.sasToken,
  });

  AzureCredentials.fromJson(core.Map _json)
      : this(
          sasToken: _json.containsKey('sasToken')
              ? _json['sasToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sasToken != null) 'sasToken': sasToken!,
      };
}

/// Specifies a bandwidth limit for an agent pool.
class BandwidthLimit {
  /// Bandwidth rate in megabytes per second, distributed across all the agents
  /// in the pool.
  core.String? limitMbps;

  BandwidthLimit({
    this.limitMbps,
  });

  BandwidthLimit.fromJson(core.Map _json)
      : this(
          limitMbps: _json.containsKey('limitMbps')
              ? _json['limitMbps'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (limitMbps != null) 'limitMbps': limitMbps!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef Date = $Date;

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// In a GcsData resource, an object's name is the Cloud Storage object's name
/// and its "last modification time" refers to the object's `updated` property
/// of Cloud Storage objects, which changes when the content or the metadata of
/// the object is updated.
class GcsData {
  /// Cloud Storage bucket name.
  ///
  /// Must meet \[Bucket Name Requirements\](/storage/docs/naming#requirements).
  ///
  /// Required.
  core.String? bucketName;

  /// Root path to transfer objects.
  ///
  /// Must be an empty string or full path name that ends with a '/'. This field
  /// is treated as an object prefix. As such, it should generally not begin
  /// with a '/'. The root path value must meet \[Object Name
  /// Requirements\](/storage/docs/naming#objectnames).
  core.String? path;

  GcsData({
    this.bucketName,
    this.path,
  });

  GcsData.fromJson(core.Map _json)
      : this(
          bucketName: _json.containsKey('bucketName')
              ? _json['bucketName'] as core.String
              : null,
          path: _json.containsKey('path') ? _json['path'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bucketName != null) 'bucketName': bucketName!,
        if (path != null) 'path': path!,
      };
}

/// Google service account
class GoogleServiceAccount {
  /// Email address of the service account.
  core.String? accountEmail;

  /// Unique identifier for the service account.
  core.String? subjectId;

  GoogleServiceAccount({
    this.accountEmail,
    this.subjectId,
  });

  GoogleServiceAccount.fromJson(core.Map _json)
      : this(
          accountEmail: _json.containsKey('accountEmail')
              ? _json['accountEmail'] as core.String
              : null,
          subjectId: _json.containsKey('subjectId')
              ? _json['subjectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountEmail != null) 'accountEmail': accountEmail!,
        if (subjectId != null) 'subjectId': subjectId!,
      };
}

/// An HttpData resource specifies a list of objects on the web to be
/// transferred over HTTP.
///
/// The information of the objects to be transferred is contained in a file
/// referenced by a URL. The first line in the file must be `"TsvHttpData-1.0"`,
/// which specifies the format of the file. Subsequent lines specify the
/// information of the list of objects, one object per list entry. Each entry
/// has the following tab-delimited fields: * **HTTP URL** — The location of the
/// object. * **Length** — The size of the object in bytes. * **MD5** — The
/// base64-encoded MD5 hash of the object. For an example of a valid TSV file,
/// see
/// [Transferring data from URLs](https://cloud.google.com/storage-transfer/docs/create-url-list).
/// When transferring data based on a URL list, keep the following in mind: *
/// When an object located at `http(s)://hostname:port/` is transferred to a
/// data sink, the name of the object at the data sink is `/`. * If the
/// specified size of an object does not match the actual size of the object
/// fetched, the object is not transferred. * If the specified MD5 does not
/// match the MD5 computed from the transferred bytes, the object transfer
/// fails. * Ensure that each URL you specify is publicly accessible. For
/// example, in Cloud Storage you can \[share an object publicly\]
/// (/storage/docs/cloud-console#_sharingdata) and get a link to it. * Storage
/// Transfer Service obeys `robots.txt` rules and requires the source HTTP
/// server to support `Range` requests and to return a `Content-Length` header
/// in each response. * ObjectConditions have no effect when filtering objects
/// to transfer.
class HttpData {
  /// The URL that points to the file that stores the object list entries.
  ///
  /// This file must allow public access. Currently, only URLs with HTTP and
  /// HTTPS schemes are supported.
  ///
  /// Required.
  core.String? listUrl;

  HttpData({
    this.listUrl,
  });

  HttpData.fromJson(core.Map _json)
      : this(
          listUrl: _json.containsKey('listUrl')
              ? _json['listUrl'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (listUrl != null) 'listUrl': listUrl!,
      };
}

/// Response from ListAgentPools.
class ListAgentPoolsResponse {
  /// A list of agent pools.
  core.List<AgentPool>? agentPools;

  /// The list next page token.
  core.String? nextPageToken;

  ListAgentPoolsResponse({
    this.agentPools,
    this.nextPageToken,
  });

  ListAgentPoolsResponse.fromJson(core.Map _json)
      : this(
          agentPools: _json.containsKey('agentPools')
              ? (_json['agentPools'] as core.List)
                  .map((value) => AgentPool.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agentPools != null) 'agentPools': agentPools!,
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

  ListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
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

/// Response from ListTransferJobs.
class ListTransferJobsResponse {
  /// The list next page token.
  core.String? nextPageToken;

  /// A list of transfer jobs.
  core.List<TransferJob>? transferJobs;

  ListTransferJobsResponse({
    this.nextPageToken,
    this.transferJobs,
  });

  ListTransferJobsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          transferJobs: _json.containsKey('transferJobs')
              ? (_json['transferJobs'] as core.List)
                  .map((value) => TransferJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (transferJobs != null) 'transferJobs': transferJobs!,
      };
}

/// Specifies the logging behavior for transfer operations.
///
/// For cloud-to-cloud transfers, logs are sent to Cloud Logging. See
/// [Read transfer logs](https://cloud.google.com/storage-transfer/docs/read-transfer-logs)
/// for details. For transfers to or from a POSIX file system, logs are stored
/// in the Cloud Storage bucket that is the source or sink of the transfer. See
/// \[Managing Transfer for on-premises
/// jobs\](https://cloud.google.com/storage-transfer/docs/managing-on-prem-jobs#viewing-logs)
/// for details.
class LoggingConfig {
  /// For transfers with a PosixFilesystem source, this option enables the Cloud
  /// Storage transfer logs for this transfer.
  core.bool? enableOnpremGcsTransferLogs;

  /// States in which `log_actions` are logged.
  ///
  /// If empty, no logs are generated. Not supported for transfers with
  /// PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  core.List<core.String>? logActionStates;

  /// Specifies the actions to be logged.
  ///
  /// If empty, no logs are generated. Not supported for transfers with
  /// PosixFilesystem data sources; use enable_onprem_gcs_transfer_logs instead.
  core.List<core.String>? logActions;

  LoggingConfig({
    this.enableOnpremGcsTransferLogs,
    this.logActionStates,
    this.logActions,
  });

  LoggingConfig.fromJson(core.Map _json)
      : this(
          enableOnpremGcsTransferLogs:
              _json.containsKey('enableOnpremGcsTransferLogs')
                  ? _json['enableOnpremGcsTransferLogs'] as core.bool
                  : null,
          logActionStates: _json.containsKey('logActionStates')
              ? (_json['logActionStates'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          logActions: _json.containsKey('logActions')
              ? (_json['logActions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableOnpremGcsTransferLogs != null)
          'enableOnpremGcsTransferLogs': enableOnpremGcsTransferLogs!,
        if (logActionStates != null) 'logActionStates': logActionStates!,
        if (logActions != null) 'logActions': logActions!,
      };
}

/// Specifies the metadata options for running a transfer.
class MetadataOptions {
  /// Specifies how each object's ACLs should be preserved for transfers between
  /// Google Cloud Storage buckets.
  ///
  /// If unspecified, the default behavior is the same as
  /// ACL_DESTINATION_BUCKET_DEFAULT.
  /// Possible string values are:
  /// - "ACL_UNSPECIFIED" : ACL behavior is unspecified.
  /// - "ACL_DESTINATION_BUCKET_DEFAULT" : Use the destination bucket's default
  /// object ACLS, if applicable.
  /// - "ACL_PRESERVE" : Preserve the object's original ACLs. This requires the
  /// service account to have `storage.objects.getIamPolicy` permission for the
  /// source object. \[Uniform bucket-level
  /// access\](https://cloud.google.com/storage/docs/uniform-bucket-level-access)
  /// must not be enabled on either the source or destination buckets.
  core.String? acl;

  /// Specifies how each file's POSIX group ID (GID) attribute should be handled
  /// by the transfer.
  ///
  /// By default, GID is not preserved. Only applicable to transfers involving
  /// POSIX file systems, and ignored for other transfers.
  /// Possible string values are:
  /// - "GID_UNSPECIFIED" : GID behavior is unspecified.
  /// - "GID_SKIP" : Do not preserve GID during a transfer job.
  /// - "GID_NUMBER" : Preserve GID during a transfer job.
  core.String? gid;

  /// Specifies how each object's Cloud KMS customer-managed encryption key
  /// (CMEK) is preserved for transfers between Google Cloud Storage buckets.
  ///
  /// If unspecified, the default behavior is the same as
  /// KMS_KEY_DESTINATION_BUCKET_DEFAULT.
  /// Possible string values are:
  /// - "KMS_KEY_UNSPECIFIED" : KmsKey behavior is unspecified.
  /// - "KMS_KEY_DESTINATION_BUCKET_DEFAULT" : Use the destination bucket's
  /// default encryption settings.
  /// - "KMS_KEY_PRESERVE" : Preserve the object's original Cloud KMS
  /// customer-managed encryption key (CMEK) if present. Objects that do not use
  /// a Cloud KMS encryption key will be encrypted using the destination
  /// bucket's encryption settings.
  core.String? kmsKey;

  /// Specifies how each file's mode attribute should be handled by the
  /// transfer.
  ///
  /// By default, mode is not preserved. Only applicable to transfers involving
  /// POSIX file systems, and ignored for other transfers.
  /// Possible string values are:
  /// - "MODE_UNSPECIFIED" : Mode behavior is unspecified.
  /// - "MODE_SKIP" : Do not preserve mode during a transfer job.
  /// - "MODE_PRESERVE" : Preserve mode during a transfer job.
  core.String? mode;

  /// Specifies the storage class to set on objects being transferred to Google
  /// Cloud Storage buckets.
  ///
  /// If unspecified, the default behavior is the same as
  /// STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT.
  /// Possible string values are:
  /// - "STORAGE_CLASS_UNSPECIFIED" : Storage class behavior is unspecified.
  /// - "STORAGE_CLASS_DESTINATION_BUCKET_DEFAULT" : Use the destination
  /// bucket's default storage class.
  /// - "STORAGE_CLASS_PRESERVE" : Preserve the object's original storage class.
  /// This is only supported for transfers from Google Cloud Storage buckets.
  /// - "STORAGE_CLASS_STANDARD" : Set the storage class to STANDARD.
  /// - "STORAGE_CLASS_NEARLINE" : Set the storage class to NEARLINE.
  /// - "STORAGE_CLASS_COLDLINE" : Set the storage class to COLDLINE.
  /// - "STORAGE_CLASS_ARCHIVE" : Set the storage class to ARCHIVE.
  core.String? storageClass;

  /// Specifies how symlinks should be handled by the transfer.
  ///
  /// By default, symlinks are not preserved. Only applicable to transfers
  /// involving POSIX file systems, and ignored for other transfers.
  /// Possible string values are:
  /// - "SYMLINK_UNSPECIFIED" : Symlink behavior is unspecified.
  /// - "SYMLINK_SKIP" : Do not preserve symlinks during a transfer job.
  /// - "SYMLINK_PRESERVE" : Preserve symlinks during a transfer job.
  core.String? symlink;

  /// Specifies how each object's temporary hold status should be preserved for
  /// transfers between Google Cloud Storage buckets.
  ///
  /// If unspecified, the default behavior is the same as
  /// TEMPORARY_HOLD_PRESERVE.
  /// Possible string values are:
  /// - "TEMPORARY_HOLD_UNSPECIFIED" : Temporary hold behavior is unspecified.
  /// - "TEMPORARY_HOLD_SKIP" : Do not set a temporary hold on the destination
  /// object.
  /// - "TEMPORARY_HOLD_PRESERVE" : Preserve the object's original temporary
  /// hold status.
  core.String? temporaryHold;

  /// Specifies how each object's `timeCreated` metadata is preserved for
  /// transfers between Google Cloud Storage buckets.
  ///
  /// If unspecified, the default behavior is the same as TIME_CREATED_SKIP.
  /// Possible string values are:
  /// - "TIME_CREATED_UNSPECIFIED" : TimeCreated behavior is unspecified.
  /// - "TIME_CREATED_SKIP" : Do not preserve the `timeCreated` metadata from
  /// the source object.
  /// - "TIME_CREATED_PRESERVE_AS_CUSTOM_TIME" : Preserves the source object's
  /// `timeCreated` metadata in the `customTime` field in the destination
  /// object. Note that any value stored in the source object's `customTime`
  /// field will not be propagated to the destination object.
  core.String? timeCreated;

  /// Specifies how each file's POSIX user ID (UID) attribute should be handled
  /// by the transfer.
  ///
  /// By default, UID is not preserved. Only applicable to transfers involving
  /// POSIX file systems, and ignored for other transfers.
  /// Possible string values are:
  /// - "UID_UNSPECIFIED" : UID behavior is unspecified.
  /// - "UID_SKIP" : Do not preserve UID during a transfer job.
  /// - "UID_NUMBER" : Preserve UID during a transfer job.
  core.String? uid;

  MetadataOptions({
    this.acl,
    this.gid,
    this.kmsKey,
    this.mode,
    this.storageClass,
    this.symlink,
    this.temporaryHold,
    this.timeCreated,
    this.uid,
  });

  MetadataOptions.fromJson(core.Map _json)
      : this(
          acl: _json.containsKey('acl') ? _json['acl'] as core.String : null,
          gid: _json.containsKey('gid') ? _json['gid'] as core.String : null,
          kmsKey: _json.containsKey('kmsKey')
              ? _json['kmsKey'] as core.String
              : null,
          mode: _json.containsKey('mode') ? _json['mode'] as core.String : null,
          storageClass: _json.containsKey('storageClass')
              ? _json['storageClass'] as core.String
              : null,
          symlink: _json.containsKey('symlink')
              ? _json['symlink'] as core.String
              : null,
          temporaryHold: _json.containsKey('temporaryHold')
              ? _json['temporaryHold'] as core.String
              : null,
          timeCreated: _json.containsKey('timeCreated')
              ? _json['timeCreated'] as core.String
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acl != null) 'acl': acl!,
        if (gid != null) 'gid': gid!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
        if (mode != null) 'mode': mode!,
        if (storageClass != null) 'storageClass': storageClass!,
        if (symlink != null) 'symlink': symlink!,
        if (temporaryHold != null) 'temporaryHold': temporaryHold!,
        if (timeCreated != null) 'timeCreated': timeCreated!,
        if (uid != null) 'uid': uid!,
      };
}

/// Specification to configure notifications published to Pub/Sub.
///
/// Notifications are published to the customer-provided topic using the
/// following `PubsubMessage.attributes`: * `"eventType"`: one of the EventType
/// values * `"payloadFormat"`: one of the PayloadFormat values * `"projectId"`:
/// the project_id of the `TransferOperation` * `"transferJobName"`: the
/// transfer_job_name of the `TransferOperation` * `"transferOperationName"`:
/// the name of the `TransferOperation` The `PubsubMessage.data` contains a
/// TransferOperation resource formatted according to the specified
/// `PayloadFormat`.
class NotificationConfig {
  /// Event types for which a notification is desired.
  ///
  /// If empty, send notifications for all event types.
  core.List<core.String>? eventTypes;

  /// The desired format of the notification message payloads.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PAYLOAD_FORMAT_UNSPECIFIED" : Illegal value, to avoid allowing a
  /// default.
  /// - "NONE" : No payload is included with the notification.
  /// - "JSON" : `TransferOperation` is
  /// [formatted as a JSON response](https://developers.google.com/protocol-buffers/docs/proto3#json),
  /// in application/json.
  core.String? payloadFormat;

  /// The `Topic.name` of the Pub/Sub topic to which to publish notifications.
  ///
  /// Must be of the format: `projects/{project}/topics/{topic}`. Not matching
  /// this format results in an INVALID_ARGUMENT error.
  ///
  /// Required.
  core.String? pubsubTopic;

  NotificationConfig({
    this.eventTypes,
    this.payloadFormat,
    this.pubsubTopic,
  });

  NotificationConfig.fromJson(core.Map _json)
      : this(
          eventTypes: _json.containsKey('eventTypes')
              ? (_json['eventTypes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          payloadFormat: _json.containsKey('payloadFormat')
              ? _json['payloadFormat'] as core.String
              : null,
          pubsubTopic: _json.containsKey('pubsubTopic')
              ? _json['pubsubTopic'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (eventTypes != null) 'eventTypes': eventTypes!,
        if (payloadFormat != null) 'payloadFormat': payloadFormat!,
        if (pubsubTopic != null) 'pubsubTopic': pubsubTopic!,
      };
}

/// Conditions that determine which objects are transferred.
///
/// Applies only to Cloud Data Sources such as S3, Azure, and Cloud Storage. The
/// "last modification time" refers to the time of the last change to the
/// object's content or metadata — specifically, this is the `updated` property
/// of Cloud Storage objects, the `LastModified` field of S3 objects, and the
/// `Last-Modified` header of Azure blobs. Transfers with a PosixFilesystem
/// source or destination don't support `ObjectConditions`.
class ObjectConditions {
  /// If you specify `exclude_prefixes`, Storage Transfer Service uses the items
  /// in the `exclude_prefixes` array to determine which objects to exclude from
  /// a transfer.
  ///
  /// Objects must not start with one of the matching `exclude_prefixes` for
  /// inclusion in a transfer. The following are requirements of
  /// `exclude_prefixes`: * Each exclude-prefix can contain any sequence of
  /// Unicode characters, to a max length of 1024 bytes when UTF8-encoded, and
  /// must not contain Carriage Return or Line Feed characters. Wildcard
  /// matching and regular expression matching are not supported. * Each
  /// exclude-prefix must omit the leading slash. For example, to exclude the
  /// object `s3://my-aws-bucket/logs/y=2015/requests.gz`, specify the
  /// exclude-prefix as `logs/y=2015/requests.gz`. * None of the exclude-prefix
  /// values can be empty, if specified. * Each exclude-prefix must exclude a
  /// distinct portion of the object namespace. No exclude-prefix may be a
  /// prefix of another exclude-prefix. * If include_prefixes is specified, then
  /// each exclude-prefix must start with the value of a path explicitly
  /// included by `include_prefixes`. The max size of `exclude_prefixes` is
  /// 1000. For more information, see \[Filtering objects from
  /// transfers\](/storage-transfer/docs/filtering-objects-from-transfers).
  core.List<core.String>? excludePrefixes;

  /// If you specify `include_prefixes`, Storage Transfer Service uses the items
  /// in the `include_prefixes` array to determine which objects to include in a
  /// transfer.
  ///
  /// Objects must start with one of the matching `include_prefixes` for
  /// inclusion in the transfer. If exclude_prefixes is specified, objects must
  /// not start with any of the `exclude_prefixes` specified for inclusion in
  /// the transfer. The following are requirements of `include_prefixes`: * Each
  /// include-prefix can contain any sequence of Unicode characters, to a max
  /// length of 1024 bytes when UTF8-encoded, and must not contain Carriage
  /// Return or Line Feed characters. Wildcard matching and regular expression
  /// matching are not supported. * Each include-prefix must omit the leading
  /// slash. For example, to include the object
  /// `s3://my-aws-bucket/logs/y=2015/requests.gz`, specify the include-prefix
  /// as `logs/y=2015/requests.gz`. * None of the include-prefix values can be
  /// empty, if specified. * Each include-prefix must include a distinct portion
  /// of the object namespace. No include-prefix may be a prefix of another
  /// include-prefix. The max size of `include_prefixes` is 1000. For more
  /// information, see \[Filtering objects from
  /// transfers\](/storage-transfer/docs/filtering-objects-from-transfers).
  core.List<core.String>? includePrefixes;

  /// If specified, only objects with a "last modification time" before this
  /// timestamp and objects that don't have a "last modification time" are
  /// transferred.
  core.String? lastModifiedBefore;

  /// If specified, only objects with a "last modification time" on or after
  /// this timestamp and objects that don't have a "last modification time" are
  /// transferred.
  ///
  /// The `last_modified_since` and `last_modified_before` fields can be used
  /// together for chunked data processing. For example, consider a script that
  /// processes each day's worth of data at a time. For that you'd set each of
  /// the fields as follows: * `last_modified_since` to the start of the day *
  /// `last_modified_before` to the end of the day
  core.String? lastModifiedSince;

  /// Ensures that objects are not transferred if a specific maximum time has
  /// elapsed since the "last modification time".
  ///
  /// When a TransferOperation begins, objects with a "last modification time"
  /// are transferred only if the elapsed time between the start_time of the
  /// \`TransferOperation\`and the "last modification time" of the object is
  /// less than the value of max_time_elapsed_since_last_modification\`. Objects
  /// that do not have a "last modification time" are also transferred.
  core.String? maxTimeElapsedSinceLastModification;

  /// Ensures that objects are not transferred until a specific minimum time has
  /// elapsed after the "last modification time".
  ///
  /// When a TransferOperation begins, objects with a "last modification time"
  /// are transferred only if the elapsed time between the start_time of the
  /// \`TransferOperation\` and the "last modification time" of the object is
  /// equal to or greater than the value of
  /// min_time_elapsed_since_last_modification\`. Objects that do not have a
  /// "last modification time" are also transferred.
  core.String? minTimeElapsedSinceLastModification;

  ObjectConditions({
    this.excludePrefixes,
    this.includePrefixes,
    this.lastModifiedBefore,
    this.lastModifiedSince,
    this.maxTimeElapsedSinceLastModification,
    this.minTimeElapsedSinceLastModification,
  });

  ObjectConditions.fromJson(core.Map _json)
      : this(
          excludePrefixes: _json.containsKey('excludePrefixes')
              ? (_json['excludePrefixes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includePrefixes: _json.containsKey('includePrefixes')
              ? (_json['includePrefixes'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          lastModifiedBefore: _json.containsKey('lastModifiedBefore')
              ? _json['lastModifiedBefore'] as core.String
              : null,
          lastModifiedSince: _json.containsKey('lastModifiedSince')
              ? _json['lastModifiedSince'] as core.String
              : null,
          maxTimeElapsedSinceLastModification:
              _json.containsKey('maxTimeElapsedSinceLastModification')
                  ? _json['maxTimeElapsedSinceLastModification'] as core.String
                  : null,
          minTimeElapsedSinceLastModification:
              _json.containsKey('minTimeElapsedSinceLastModification')
                  ? _json['minTimeElapsedSinceLastModification'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludePrefixes != null) 'excludePrefixes': excludePrefixes!,
        if (includePrefixes != null) 'includePrefixes': includePrefixes!,
        if (lastModifiedBefore != null)
          'lastModifiedBefore': lastModifiedBefore!,
        if (lastModifiedSince != null) 'lastModifiedSince': lastModifiedSince!,
        if (maxTimeElapsedSinceLastModification != null)
          'maxTimeElapsedSinceLastModification':
              maxTimeElapsedSinceLastModification!,
        if (minTimeElapsedSinceLastModification != null)
          'minTimeElapsedSinceLastModification':
              minTimeElapsedSinceLastModification!,
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

  /// Represents the transfer operation object.
  ///
  /// To request a TransferOperation object, use transferOperations.get.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned unique name.
  ///
  /// The format of `name` is `transferOperations/some/unique/name`.
  core.String? name;

  /// The normal response of the operation in case of success.
  ///
  /// If the original method returns no data on success, such as `Delete`, the
  /// response is `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
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

  Operation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? Status.fromJson(
                  _json['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          response: _json.containsKey('response')
              ? _json['response'] as core.Map<core.String, core.dynamic>
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

/// Request passed to PauseTransferOperation.
typedef PauseTransferOperationRequest = $Empty;

/// A POSIX filesystem resource.
class PosixFilesystem {
  /// Root directory path to the filesystem.
  core.String? rootDirectory;

  PosixFilesystem({
    this.rootDirectory,
  });

  PosixFilesystem.fromJson(core.Map _json)
      : this(
          rootDirectory: _json.containsKey('rootDirectory')
              ? _json['rootDirectory'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rootDirectory != null) 'rootDirectory': rootDirectory!,
      };
}

/// Request passed to ResumeTransferOperation.
typedef ResumeTransferOperationRequest = $Empty;

/// Request passed to RunTransferJob.
class RunTransferJobRequest {
  /// The ID of the Google Cloud project that owns the transfer job.
  ///
  /// Required.
  core.String? projectId;

  RunTransferJobRequest({
    this.projectId,
  });

  RunTransferJobRequest.fromJson(core.Map _json)
      : this(
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
      };
}

/// Transfers can be scheduled to recur or to run just once.
class Schedule {
  /// The time in UTC that no further transfer operations are scheduled.
  ///
  /// Combined with schedule_end_date, `end_time_of_day` specifies the end date
  /// and time for starting new transfer operations. This field must be greater
  /// than or equal to the timestamp corresponding to the combintation of
  /// schedule_start_date and start_time_of_day, and is subject to the
  /// following: * If `end_time_of_day` is not set and `schedule_end_date` is
  /// set, then a default value of `23:59:59` is used for `end_time_of_day`. *
  /// If `end_time_of_day` is set and `schedule_end_date` is not set, then
  /// INVALID_ARGUMENT is returned.
  TimeOfDay? endTimeOfDay;

  /// Interval between the start of each scheduled TransferOperation.
  ///
  /// If unspecified, the default value is 24 hours. This value may not be less
  /// than 1 hour.
  core.String? repeatInterval;

  /// The last day a transfer runs.
  ///
  /// Date boundaries are determined relative to UTC time. A job runs once per
  /// 24 hours within the following guidelines: * If `schedule_end_date` and
  /// schedule_start_date are the same and in the future relative to UTC, the
  /// transfer is executed only one time. * If `schedule_end_date` is later than
  /// `schedule_start_date` and `schedule_end_date` is in the future relative to
  /// UTC, the job runs each day at start_time_of_day through
  /// `schedule_end_date`.
  Date? scheduleEndDate;

  /// The start date of a transfer.
  ///
  /// Date boundaries are determined relative to UTC time. If
  /// `schedule_start_date` and start_time_of_day are in the past relative to
  /// the job's creation time, the transfer starts the day after you schedule
  /// the transfer request. **Note:** When starting jobs at or near midnight UTC
  /// it is possible that a job starts later than expected. For example, if you
  /// send an outbound request on June 1 one millisecond prior to midnight UTC
  /// and the Storage Transfer Service server receives the request on June 2,
  /// then it creates a TransferJob with `schedule_start_date` set to June 2 and
  /// a `start_time_of_day` set to midnight UTC. The first scheduled
  /// TransferOperation takes place on June 3 at midnight UTC.
  ///
  /// Required.
  Date? scheduleStartDate;

  /// The time in UTC that a transfer job is scheduled to run.
  ///
  /// Transfers may start later than this time. If `start_time_of_day` is not
  /// specified: * One-time transfers run immediately. * Recurring transfers run
  /// immediately, and each day at midnight UTC, through schedule_end_date. If
  /// `start_time_of_day` is specified: * One-time transfers run at the
  /// specified time. * Recurring transfers run at the specified time each day,
  /// through `schedule_end_date`.
  TimeOfDay? startTimeOfDay;

  Schedule({
    this.endTimeOfDay,
    this.repeatInterval,
    this.scheduleEndDate,
    this.scheduleStartDate,
    this.startTimeOfDay,
  });

  Schedule.fromJson(core.Map _json)
      : this(
          endTimeOfDay: _json.containsKey('endTimeOfDay')
              ? TimeOfDay.fromJson(
                  _json['endTimeOfDay'] as core.Map<core.String, core.dynamic>)
              : null,
          repeatInterval: _json.containsKey('repeatInterval')
              ? _json['repeatInterval'] as core.String
              : null,
          scheduleEndDate: _json.containsKey('scheduleEndDate')
              ? Date.fromJson(_json['scheduleEndDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          scheduleStartDate: _json.containsKey('scheduleStartDate')
              ? Date.fromJson(_json['scheduleStartDate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTimeOfDay: _json.containsKey('startTimeOfDay')
              ? TimeOfDay.fromJson(_json['startTimeOfDay']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endTimeOfDay != null) 'endTimeOfDay': endTimeOfDay!,
        if (repeatInterval != null) 'repeatInterval': repeatInterval!,
        if (scheduleEndDate != null) 'scheduleEndDate': scheduleEndDate!,
        if (scheduleStartDate != null) 'scheduleStartDate': scheduleStartDate!,
        if (startTimeOfDay != null) 'startTimeOfDay': startTimeOfDay!,
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

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// This resource represents the configuration of a transfer job that runs
/// periodically.
class TransferJob {
  /// The time that the transfer job was created.
  ///
  /// Output only.
  core.String? creationTime;

  /// The time that the transfer job was deleted.
  ///
  /// Output only.
  core.String? deletionTime;

  /// A description provided by the user for the job.
  ///
  /// Its max length is 1024 bytes when Unicode-encoded.
  core.String? description;

  /// The time that the transfer job was last modified.
  ///
  /// Output only.
  core.String? lastModificationTime;

  /// The name of the most recently started TransferOperation of this JobConfig.
  ///
  /// Present if a TransferOperation has been created for this JobConfig.
  core.String? latestOperationName;

  /// Logging configuration.
  LoggingConfig? loggingConfig;

  /// A unique name (within the transfer project) assigned when the job is
  /// created.
  ///
  /// If this field is empty in a CreateTransferJobRequest, Storage Transfer
  /// Service assigns a unique name. Otherwise, the specified name is used as
  /// the unique name for this job. If the specified name is in use by a job,
  /// the creation request fails with an ALREADY_EXISTS error. This name must
  /// start with `"transferJobs/"` prefix and end with a letter or a number, and
  /// should be no more than 128 characters. For transfers involving
  /// PosixFilesystem, this name must start with `transferJobs/OPI`
  /// specifically. For all other transfer types, this name must not start with
  /// `transferJobs/OPI`. Non-PosixFilesystem example:
  /// `"transferJobs/^(?!OPI)[A-Za-z0-9-._~]*[A-Za-z0-9]$"` PosixFilesystem
  /// example: `"transferJobs/OPI^[A-Za-z0-9-._~]*[A-Za-z0-9]$"` Applications
  /// must not rely on the enforcement of naming requirements involving OPI.
  /// Invalid job names fail with an INVALID_ARGUMENT error.
  core.String? name;

  /// Notification configuration.
  ///
  /// This is not supported for transfers involving PosixFilesystem.
  NotificationConfig? notificationConfig;

  /// The ID of the Google Cloud project that owns the job.
  core.String? projectId;

  /// Specifies schedule for the transfer job.
  ///
  /// This is an optional field. When the field is not set, the job never
  /// executes a transfer, unless you invoke RunTransferJob or update the job to
  /// have a non-empty schedule.
  Schedule? schedule;

  /// Status of the job.
  ///
  /// This value MUST be specified for `CreateTransferJobRequests`. **Note:**
  /// The effect of the new job status takes place during a subsequent job run.
  /// For example, if you change the job status from ENABLED to DISABLED, and an
  /// operation spawned by the transfer is running, the status change would not
  /// affect the current operation.
  /// Possible string values are:
  /// - "STATUS_UNSPECIFIED" : Zero is an illegal value.
  /// - "ENABLED" : New transfers are performed based on the schedule.
  /// - "DISABLED" : New transfers are not scheduled.
  /// - "DELETED" : This is a soft delete state. After a transfer job is set to
  /// this state, the job and all the transfer executions are subject to garbage
  /// collection. Transfer jobs become eligible for garbage collection 30 days
  /// after their status is set to `DELETED`.
  core.String? status;

  /// Transfer specification.
  TransferSpec? transferSpec;

  TransferJob({
    this.creationTime,
    this.deletionTime,
    this.description,
    this.lastModificationTime,
    this.latestOperationName,
    this.loggingConfig,
    this.name,
    this.notificationConfig,
    this.projectId,
    this.schedule,
    this.status,
    this.transferSpec,
  });

  TransferJob.fromJson(core.Map _json)
      : this(
          creationTime: _json.containsKey('creationTime')
              ? _json['creationTime'] as core.String
              : null,
          deletionTime: _json.containsKey('deletionTime')
              ? _json['deletionTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          lastModificationTime: _json.containsKey('lastModificationTime')
              ? _json['lastModificationTime'] as core.String
              : null,
          latestOperationName: _json.containsKey('latestOperationName')
              ? _json['latestOperationName'] as core.String
              : null,
          loggingConfig: _json.containsKey('loggingConfig')
              ? LoggingConfig.fromJson(
                  _json['loggingConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          notificationConfig: _json.containsKey('notificationConfig')
              ? NotificationConfig.fromJson(_json['notificationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          schedule: _json.containsKey('schedule')
              ? Schedule.fromJson(
                  _json['schedule'] as core.Map<core.String, core.dynamic>)
              : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
          transferSpec: _json.containsKey('transferSpec')
              ? TransferSpec.fromJson(
                  _json['transferSpec'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (creationTime != null) 'creationTime': creationTime!,
        if (deletionTime != null) 'deletionTime': deletionTime!,
        if (description != null) 'description': description!,
        if (lastModificationTime != null)
          'lastModificationTime': lastModificationTime!,
        if (latestOperationName != null)
          'latestOperationName': latestOperationName!,
        if (loggingConfig != null) 'loggingConfig': loggingConfig!,
        if (name != null) 'name': name!,
        if (notificationConfig != null)
          'notificationConfig': notificationConfig!,
        if (projectId != null) 'projectId': projectId!,
        if (schedule != null) 'schedule': schedule!,
        if (status != null) 'status': status!,
        if (transferSpec != null) 'transferSpec': transferSpec!,
      };
}

/// Specifies where the manifest is located.
class TransferManifest {
  /// Specifies the path to the manifest in Cloud Storage.
  ///
  /// The Google-managed service account for the transfer must have
  /// `storage.objects.get` permission for this object. An example path is
  /// `gs://bucket_name/path/manifest.csv`.
  core.String? location;

  TransferManifest({
    this.location,
  });

  TransferManifest.fromJson(core.Map _json)
      : this(
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (location != null) 'location': location!,
      };
}

/// TransferOptions define the actions to be performed on objects in a transfer.
class TransferOptions {
  /// Whether objects should be deleted from the source after they are
  /// transferred to the sink.
  ///
  /// **Note:** This option and delete_objects_unique_in_sink are mutually
  /// exclusive.
  core.bool? deleteObjectsFromSourceAfterTransfer;

  /// Whether objects that exist only in the sink should be deleted.
  ///
  /// **Note:** This option and delete_objects_from_source_after_transfer are
  /// mutually exclusive.
  core.bool? deleteObjectsUniqueInSink;

  /// Represents the selected metadata options for a transfer job.
  ///
  /// This feature is in Preview.
  MetadataOptions? metadataOptions;

  /// When to overwrite objects that already exist in the sink.
  ///
  /// The default is that only objects that are different from the source are
  /// ovewritten. If true, all objects in the sink whose name matches an object
  /// in the source are overwritten with the source object.
  core.bool? overwriteObjectsAlreadyExistingInSink;

  /// When to overwrite objects that already exist in the sink.
  ///
  /// If not set, overwrite behavior is determined by
  /// overwrite_objects_already_existing_in_sink.
  /// Possible string values are:
  /// - "OVERWRITE_WHEN_UNSPECIFIED" : Overwrite behavior is unspecified.
  /// - "DIFFERENT" : Overwrites destination objects with the source objects,
  /// only if the objects have the same name but different HTTP ETags or
  /// checksum values.
  /// - "NEVER" : Never overwrites a destination object if a source object has
  /// the same name. In this case, the source object is not transferred.
  /// - "ALWAYS" : Always overwrite the destination object with the source
  /// object, even if the HTTP Etags or checksum values are the same.
  core.String? overwriteWhen;

  TransferOptions({
    this.deleteObjectsFromSourceAfterTransfer,
    this.deleteObjectsUniqueInSink,
    this.metadataOptions,
    this.overwriteObjectsAlreadyExistingInSink,
    this.overwriteWhen,
  });

  TransferOptions.fromJson(core.Map _json)
      : this(
          deleteObjectsFromSourceAfterTransfer:
              _json.containsKey('deleteObjectsFromSourceAfterTransfer')
                  ? _json['deleteObjectsFromSourceAfterTransfer'] as core.bool
                  : null,
          deleteObjectsUniqueInSink:
              _json.containsKey('deleteObjectsUniqueInSink')
                  ? _json['deleteObjectsUniqueInSink'] as core.bool
                  : null,
          metadataOptions: _json.containsKey('metadataOptions')
              ? MetadataOptions.fromJson(_json['metadataOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          overwriteObjectsAlreadyExistingInSink:
              _json.containsKey('overwriteObjectsAlreadyExistingInSink')
                  ? _json['overwriteObjectsAlreadyExistingInSink'] as core.bool
                  : null,
          overwriteWhen: _json.containsKey('overwriteWhen')
              ? _json['overwriteWhen'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (deleteObjectsFromSourceAfterTransfer != null)
          'deleteObjectsFromSourceAfterTransfer':
              deleteObjectsFromSourceAfterTransfer!,
        if (deleteObjectsUniqueInSink != null)
          'deleteObjectsUniqueInSink': deleteObjectsUniqueInSink!,
        if (metadataOptions != null) 'metadataOptions': metadataOptions!,
        if (overwriteObjectsAlreadyExistingInSink != null)
          'overwriteObjectsAlreadyExistingInSink':
              overwriteObjectsAlreadyExistingInSink!,
        if (overwriteWhen != null) 'overwriteWhen': overwriteWhen!,
      };
}

/// Configuration for running a transfer.
class TransferSpec {
  /// An AWS S3 data source.
  AwsS3Data? awsS3DataSource;

  /// An Azure Blob Storage data source.
  AzureBlobStorageData? azureBlobStorageDataSource;

  /// A Cloud Storage data sink.
  GcsData? gcsDataSink;

  /// A Cloud Storage data source.
  GcsData? gcsDataSource;

  /// Cloud Storage intermediate data location.
  GcsData? gcsIntermediateDataLocation;

  /// An HTTP URL data source.
  HttpData? httpDataSource;

  /// Only objects that satisfy these object conditions are included in the set
  /// of data source and data sink objects.
  ///
  /// Object conditions based on objects' "last modification time" do not
  /// exclude objects in a data sink.
  ObjectConditions? objectConditions;

  /// A POSIX Filesystem data sink.
  PosixFilesystem? posixDataSink;

  /// A POSIX Filesystem data source.
  PosixFilesystem? posixDataSource;

  /// Specifies the agent pool name associated with the posix data sink.
  ///
  /// When unspecified, the default name is used.
  core.String? sinkAgentPoolName;

  /// Specifies the agent pool name associated with the posix data source.
  ///
  /// When unspecified, the default name is used.
  core.String? sourceAgentPoolName;

  /// A manifest file provides a list of objects to be transferred from the data
  /// source.
  ///
  /// This field points to the location of the manifest file. Otherwise, the
  /// entire source bucket is used. ObjectConditions still apply.
  TransferManifest? transferManifest;

  /// If the option delete_objects_unique_in_sink is `true` and time-based
  /// object conditions such as 'last modification time' are specified, the
  /// request fails with an INVALID_ARGUMENT error.
  TransferOptions? transferOptions;

  TransferSpec({
    this.awsS3DataSource,
    this.azureBlobStorageDataSource,
    this.gcsDataSink,
    this.gcsDataSource,
    this.gcsIntermediateDataLocation,
    this.httpDataSource,
    this.objectConditions,
    this.posixDataSink,
    this.posixDataSource,
    this.sinkAgentPoolName,
    this.sourceAgentPoolName,
    this.transferManifest,
    this.transferOptions,
  });

  TransferSpec.fromJson(core.Map _json)
      : this(
          awsS3DataSource: _json.containsKey('awsS3DataSource')
              ? AwsS3Data.fromJson(_json['awsS3DataSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          azureBlobStorageDataSource:
              _json.containsKey('azureBlobStorageDataSource')
                  ? AzureBlobStorageData.fromJson(
                      _json['azureBlobStorageDataSource']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          gcsDataSink: _json.containsKey('gcsDataSink')
              ? GcsData.fromJson(
                  _json['gcsDataSink'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsDataSource: _json.containsKey('gcsDataSource')
              ? GcsData.fromJson(
                  _json['gcsDataSource'] as core.Map<core.String, core.dynamic>)
              : null,
          gcsIntermediateDataLocation:
              _json.containsKey('gcsIntermediateDataLocation')
                  ? GcsData.fromJson(_json['gcsIntermediateDataLocation']
                      as core.Map<core.String, core.dynamic>)
                  : null,
          httpDataSource: _json.containsKey('httpDataSource')
              ? HttpData.fromJson(_json['httpDataSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          objectConditions: _json.containsKey('objectConditions')
              ? ObjectConditions.fromJson(_json['objectConditions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          posixDataSink: _json.containsKey('posixDataSink')
              ? PosixFilesystem.fromJson(
                  _json['posixDataSink'] as core.Map<core.String, core.dynamic>)
              : null,
          posixDataSource: _json.containsKey('posixDataSource')
              ? PosixFilesystem.fromJson(_json['posixDataSource']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sinkAgentPoolName: _json.containsKey('sinkAgentPoolName')
              ? _json['sinkAgentPoolName'] as core.String
              : null,
          sourceAgentPoolName: _json.containsKey('sourceAgentPoolName')
              ? _json['sourceAgentPoolName'] as core.String
              : null,
          transferManifest: _json.containsKey('transferManifest')
              ? TransferManifest.fromJson(_json['transferManifest']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transferOptions: _json.containsKey('transferOptions')
              ? TransferOptions.fromJson(_json['transferOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (awsS3DataSource != null) 'awsS3DataSource': awsS3DataSource!,
        if (azureBlobStorageDataSource != null)
          'azureBlobStorageDataSource': azureBlobStorageDataSource!,
        if (gcsDataSink != null) 'gcsDataSink': gcsDataSink!,
        if (gcsDataSource != null) 'gcsDataSource': gcsDataSource!,
        if (gcsIntermediateDataLocation != null)
          'gcsIntermediateDataLocation': gcsIntermediateDataLocation!,
        if (httpDataSource != null) 'httpDataSource': httpDataSource!,
        if (objectConditions != null) 'objectConditions': objectConditions!,
        if (posixDataSink != null) 'posixDataSink': posixDataSink!,
        if (posixDataSource != null) 'posixDataSource': posixDataSource!,
        if (sinkAgentPoolName != null) 'sinkAgentPoolName': sinkAgentPoolName!,
        if (sourceAgentPoolName != null)
          'sourceAgentPoolName': sourceAgentPoolName!,
        if (transferManifest != null) 'transferManifest': transferManifest!,
        if (transferOptions != null) 'transferOptions': transferOptions!,
      };
}

/// Request passed to UpdateTransferJob.
class UpdateTransferJobRequest {
  /// The ID of the Google Cloud project that owns the job.
  ///
  /// Required.
  core.String? projectId;

  /// The job to update.
  ///
  /// `transferJob` is expected to specify one or more of five fields:
  /// description, transfer_spec, notification_config, logging_config, and
  /// status. An `UpdateTransferJobRequest` that specifies other fields are
  /// rejected with the error INVALID_ARGUMENT. Updating a job status to DELETED
  /// requires `storagetransfer.jobs.delete` permissions.
  ///
  /// Required.
  TransferJob? transferJob;

  /// The field mask of the fields in `transferJob` that are to be updated in
  /// this request.
  ///
  /// Fields in `transferJob` that can be updated are: description,
  /// transfer_spec, notification_config, logging_config, and status. To update
  /// the `transfer_spec` of the job, a complete transfer specification must be
  /// provided. An incomplete specification missing any required fields is
  /// rejected with the error INVALID_ARGUMENT.
  core.String? updateTransferJobFieldMask;

  UpdateTransferJobRequest({
    this.projectId,
    this.transferJob,
    this.updateTransferJobFieldMask,
  });

  UpdateTransferJobRequest.fromJson(core.Map _json)
      : this(
          projectId: _json.containsKey('projectId')
              ? _json['projectId'] as core.String
              : null,
          transferJob: _json.containsKey('transferJob')
              ? TransferJob.fromJson(
                  _json['transferJob'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTransferJobFieldMask:
              _json.containsKey('updateTransferJobFieldMask')
                  ? _json['updateTransferJobFieldMask'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectId != null) 'projectId': projectId!,
        if (transferJob != null) 'transferJob': transferJob!,
        if (updateTransferJobFieldMask != null)
          'updateTransferJobFieldMask': updateTransferJobFieldMask!,
      };
}
