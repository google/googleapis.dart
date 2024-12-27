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

/// Backup and DR Service API - v1
///
/// For more information, see
/// <https://cloud.google.com/backup-disaster-recovery>
///
/// Create an instance of [BackupdrApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBackupPlanAssociationsResource]
///     - [ProjectsLocationsBackupPlansResource]
///     - [ProjectsLocationsBackupVaultsResource]
///       - [ProjectsLocationsBackupVaultsDataSourcesResource]
///         - [ProjectsLocationsBackupVaultsDataSourcesBackupsResource]
///     - [ProjectsLocationsManagementServersResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServiceConfigResource]
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

class BackupdrApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BackupdrApi(
    http.Client client, {
    core.String rootUrl = 'https://backupdr.googleapis.com/',
    core.String servicePath = '',
  }) : _requester = commons.ApiRequester(
          client,
          rootUrl,
          servicePath,
          requestHeaders,
        );
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupPlanAssociationsResource get backupPlanAssociations =>
      ProjectsLocationsBackupPlanAssociationsResource(_requester);
  ProjectsLocationsBackupPlansResource get backupPlans =>
      ProjectsLocationsBackupPlansResource(_requester);
  ProjectsLocationsBackupVaultsResource get backupVaults =>
      ProjectsLocationsBackupVaultsResource(_requester);
  ProjectsLocationsManagementServersResource get managementServers =>
      ProjectsLocationsManagementServersResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServiceConfigResource get serviceConfig =>
      ProjectsLocationsServiceConfigResource(_requester);

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
  async.Future<Location> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListLocationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBackupPlanAssociationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupPlanAssociationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a BackupPlanAssociation
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The backup plan association project and location in
  /// the format `projects/{project_id}/locations/{location}`. In Cloud BackupDR
  /// locations map to GCP regions, for example **us-central1**.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backupPlanAssociationId] - Required. The name of the backup plan
  /// association to create. The name must be unique for the specified project
  /// and location.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> create(
    BackupPlanAssociation request,
    core.String parent, {
    core.String? backupPlanAssociationId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupPlanAssociationId != null)
        'backupPlanAssociationId': [backupPlanAssociationId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/backupPlanAssociations';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single BackupPlanAssociation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup plan association resource, in the
  /// format
  /// `projects/{project}/locations/{location}/backupPlanAssociations/{backupPlanAssociationId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlanAssociations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single BackupPlanAssociation.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup plan association resource, in the
  /// format
  /// `projects/{project}/locations/{location}/backupPlanAssociations/{backupPlanAssociationId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlanAssociations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BackupPlanAssociation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BackupPlanAssociation> get(
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
    return BackupPlanAssociation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists BackupPlanAssociations in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve backup
  /// Plan Associations information, in the format
  /// `projects/{project_id}/locations/{location}`. In Cloud BackupDR, locations
  /// map to GCP regions, for example **us-central1**. To retrieve backup plan
  /// associations for all locations, use "-" for the `{location}` value.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupPlanAssociationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupPlanAssociationsResponse> list(
    core.String parent, {
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/backupPlanAssociations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupPlanAssociationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Triggers a new Backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup plan association resource, in the
  /// format
  /// `projects/{project}/locations/{location}/backupPlanAssociations/{backupPlanAssociationId}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlanAssociations/\[^/\]+$`.
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
  async.Future<Operation> triggerBackup(
    TriggerBackupRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':triggerBackup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackupPlansResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupPlansResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a BackupPlan
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The `BackupPlan` project and location in the format
  /// `projects/{project}/locations/{location}`. In Cloud BackupDR locations map
  /// to GCP regions, for example **us-central1**.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backupPlanId] - Required. The name of the `BackupPlan` to create. The
  /// name must be unique for the specified project and location.The name must
  /// start with a lowercase letter followed by up to 62 lowercase letters,
  /// numbers, or hyphens. Pattern, /a-z{,62}/.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> create(
    BackupPlan request,
    core.String parent, {
    core.String? backupPlanId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupPlanId != null) 'backupPlanId': [backupPlanId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupPlans';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single BackupPlan.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the `BackupPlan` to delete.
  /// Format:
  /// `projects/{project}/locations/{location}/backupPlans/{backup_plan}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single BackupPlan.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the `BackupPlan` to retrieve.
  /// Format:
  /// `projects/{project}/locations/{location}/backupPlans/{backup_plan}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BackupPlan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BackupPlan> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BackupPlan.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists BackupPlans in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve
  /// `BackupPlans` information. Format:
  /// `projects/{project}/locations/{location}`. In Cloud BackupDR, locations
  /// map to GCP regions, for e.g. **us-central1**. To retrieve backup plans for
  /// all locations, use "-" for the `{location}` value.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Field match expression used to filter the results.
  ///
  /// [orderBy] - Optional. Field by which to sort the results.
  ///
  /// [pageSize] - Optional. The maximum number of `BackupPlans` to return in a
  /// single response. If not specified, a default value will be chosen by the
  /// service. Note that the response may include a partial list and a caller
  /// should only rely on the response's next_page_token to determine if there
  /// are more instances left to be queried.
  ///
  /// [pageToken] - Optional. The value of next_page_token received from a
  /// previous `ListBackupPlans` call. Provide this to retrieve the subsequent
  /// page in a multi-page list of results. When paginating, all other
  /// parameters provided to `ListBackupPlans` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupPlansResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupPlansResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupPlans';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupPlansResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBackupVaultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupVaultsDataSourcesResource get dataSources =>
      ProjectsLocationsBackupVaultsDataSourcesResource(_requester);

  ProjectsLocationsBackupVaultsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new BackupVault in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backupVaultId] - Required. ID of the requesting object If auto-generating
  /// ID server-side, remove this field and backup_vault_id from the
  /// method_signature of Create RPC
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is 'false'.
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
  async.Future<Operation> create(
    BackupVault request,
    core.String parent, {
    core.String? backupVaultId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupVaultId != null) 'backupVaultId': [backupVaultId],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupVaults';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a BackupVault.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If true and the BackupVault is not found, the
  /// request will succeed but no action will be taken.
  ///
  /// [etag] - The current etag of the backup vault. If an etag is provided and
  /// does not match the current etag of the connection, deletion will be
  /// blocked.
  ///
  /// [force] - Optional. If set to true, any data source from this backup vault
  /// will also be deleted.
  ///
  /// [ignoreBackupPlanReferences] - Optional. If set to true, backupvault
  /// deletion will proceed even if there are backup plans referencing the
  /// backupvault. The default is 'false'.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is 'false'.
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
  async.Future<Operation> delete(
    core.String name, {
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.bool? ignoreBackupPlanReferences,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if (ignoreBackupPlanReferences != null)
        'ignoreBackupPlanReferences': ['${ignoreBackupPlanReferences}'],
      if (requestId != null) 'requestId': [requestId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// FetchUsableBackupVaults lists usable BackupVaults in a given project and
  /// location.
  ///
  /// Usable BackupVault are the ones that user has backupdr.backupVaults.get
  /// permission.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve
  /// backupvault stores information, in the format
  /// 'projects/{project_id}/locations/{location}'. In Cloud Backup and DR,
  /// locations map to Google Cloud regions, for example **us-central1**. To
  /// retrieve backupvault stores for all locations, use "-" for the
  /// '{location}' value.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchUsableBackupVaultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchUsableBackupVaultsResponse> fetchUsable(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/backupVaults:fetchUsable';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchUsableBackupVaultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a BackupVault.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backupvault store resource name, in the
  /// format
  /// 'projects/{project_id}/locations/{location}/backupVaults/{resource_name}'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
  ///
  /// [view] - Optional. Reserved for future use to provide a BASIC & FULL view
  /// of Backup Vault
  /// Possible string values are:
  /// - "BACKUP_VAULT_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// 'FULL' view is used.
  /// - "BACKUP_VAULT_VIEW_BASIC" : Includes basic data about the Backup Vault,
  /// but not the full contents.
  /// - "BACKUP_VAULT_VIEW_FULL" : Includes all data about the Backup Vault.
  /// This is the default value (for both ListBackupVaults and GetBackupVault).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BackupVault].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BackupVault> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return BackupVault.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists BackupVaults in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve
  /// backupvault stores information, in the format
  /// 'projects/{project_id}/locations/{location}'. In Cloud Backup and DR,
  /// locations map to Google Cloud regions, for example **us-central1**. To
  /// retrieve backupvault stores for all locations, use "-" for the
  /// '{location}' value.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [view] - Optional. Reserved for future use to provide a BASIC & FULL view
  /// of Backup Vault.
  /// Possible string values are:
  /// - "BACKUP_VAULT_VIEW_UNSPECIFIED" : If the value is not set, the default
  /// 'FULL' view is used.
  /// - "BACKUP_VAULT_VIEW_BASIC" : Includes basic data about the Backup Vault,
  /// but not the full contents.
  /// - "BACKUP_VAULT_VIEW_FULL" : Includes all data about the Backup Vault.
  /// This is the default value (for both ListBackupVaults and GetBackupVault).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupVaultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupVaultsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupVaults';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupVaultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the settings of a BackupVault.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. Name of the backup vault to create. It
  /// must have the
  /// format`"projects/{project}/locations/{location}/backupVaults/{backupvault}"`.
  /// `{backupvault}` cannot be changed after creation. It must be between 3-63
  /// characters long and must be unique within the project and location.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, will not check plan duration against
  /// backup vault enforcement duration.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the BackupVault resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then the request will fail.
  ///
  /// [validateOnly] - Optional. Only validate the request, but do not perform
  /// mutations. The default is 'false'.
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
  async.Future<Operation> patch(
    BackupVault request,
    core.String name, {
    core.bool? force,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the caller's permissions on a BackupVault resource.
  ///
  /// A caller is not required to have Google IAM permission to make this
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsBackupVaultsDataSourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupVaultsDataSourcesBackupsResource get backups =>
      ProjectsLocationsBackupVaultsDataSourcesBackupsResource(_requester);

  ProjectsLocationsBackupVaultsDataSourcesResource(commons.ApiRequester client)
      : _requester = client;

  /// Internal only.
  ///
  /// Abandons a backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [dataSource] - Required. The resource name of the instance, in the format
  /// 'projects / * /locations / * /backupVaults / * /dataSources/'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
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
  async.Future<Operation> abandonBackup(
    AbandonBackupRequest request,
    core.String dataSource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$dataSource') + ':abandonBackup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Internal only.
  ///
  /// Fetch access token for a given data source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for the location for which static IPs
  /// should be returned. Must be in the format 'projects / * /locations / *
  /// /backupVaults / * /dataSources'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchAccessTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchAccessTokenResponse> fetchAccessToken(
    FetchAccessTokenRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchAccessToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return FetchAccessTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Internal only.
  ///
  /// Finalize a backup that was started by a call to InitiateBackup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [dataSource] - Required. The resource name of the instance, in the format
  /// 'projects / * /locations / * /backupVaults / * /dataSources/'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
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
  async.Future<Operation> finalizeBackup(
    FinalizeBackupRequest request,
    core.String dataSource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$dataSource') + ':finalizeBackup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a DataSource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the data source resource name, in the format
  /// 'projects/{project_id}/locations/{location}/backupVaults/{resource_name}/dataSource/{resource_name}'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DataSource].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DataSource> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DataSource.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Internal only.
  ///
  /// Initiates a backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [dataSource] - Required. The resource name of the instance, in the format
  /// 'projects / * /locations / * /backupVaults / * /dataSources/'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InitiateBackupResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InitiateBackupResponse> initiateBackup(
    InitiateBackupRequest request,
    core.String dataSource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$dataSource') + ':initiateBackup';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return InitiateBackupResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists DataSources in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve data
  /// sources information, in the format
  /// 'projects/{project_id}/locations/{location}'. In Cloud Backup and DR,
  /// locations map to Google Cloud regions, for example **us-central1**. To
  /// retrieve data sources for all locations, use "-" for the '{location}'
  /// value.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDataSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDataSourcesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dataSources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDataSourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the settings of a DataSource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. Name of the datasource to create. It
  /// must have the
  /// format`"projects/{project}/locations/{location}/backupVaults/{backupvault}/dataSources/{datasource}"`.
  /// `{datasource}` cannot be changed after creation. It must be between 3-63
  /// characters long and must be unique within the backup vault.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. Enable upsert.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the DataSource resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then the request will fail.
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
  async.Future<Operation> patch(
    DataSource request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (allowMissing != null) 'allowMissing': ['${allowMissing}'],
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a DataSource.
  ///
  /// This is a custom method instead of a standard delete method because
  /// external clients will not delete DataSources except for BackupDR backup
  /// appliances.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
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
  async.Future<Operation> remove(
    RemoveDataSourceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':remove';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the internal status of a DataSource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [dataSource] - Required. The resource name of the instance, in the format
  /// 'projects / * /locations / * /backupVaults / * /dataSources/'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
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
  async.Future<Operation> setInternalStatus(
    SetInternalStatusRequest request,
    core.String dataSource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$dataSource') + ':setInternalStatus';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackupVaultsDataSourcesBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupVaultsDataSourcesBackupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Deletes a Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the data source resource name, in the format
  /// 'projects/{project_id}/locations/{location}/backupVaults/{backupVault}/dataSources/{datasource}/backups/{backup}'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [view] - Optional. Reserved for future use to provide a BASIC & FULL view
  /// of Backup resource.
  /// Possible string values are:
  /// - "BACKUP_VIEW_UNSPECIFIED" : If the value is not set, the default 'FULL'
  /// view is used.
  /// - "BACKUP_VIEW_BASIC" : Includes basic data about the Backup, but not the
  /// full contents.
  /// - "BACKUP_VIEW_FULL" : Includes all data about the Backup. This is the
  /// default value (for both ListBackups and GetBackup).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Backup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Backup> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Backup.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Backups in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve backup
  /// information, in the format 'projects/{project_id}/locations/{location}'.
  /// In Cloud Backup and DR, locations map to Google Cloud regions, for example
  /// **us-central1**. To retrieve data sources for all locations, use "-" for
  /// the '{location}' value.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [view] - Optional. Reserved for future use to provide a BASIC & FULL view
  /// of Backup resource.
  /// Possible string values are:
  /// - "BACKUP_VIEW_UNSPECIFIED" : If the value is not set, the default 'FULL'
  /// view is used.
  /// - "BACKUP_VIEW_BASIC" : Includes basic data about the Backup, but not the
  /// full contents.
  /// - "BACKUP_VIEW_FULL" : Includes all data about the Backup. This is the
  /// default value (for both ListBackups and GetBackup).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the settings of a Backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Identifier. Name of the backup to create. It must
  /// have the
  /// format`"projects//locations//backupVaults//dataSources/{datasource}/backups/{backup}"`.
  /// `{backup}` cannot be changed after creation. It must be between 3-63
  /// characters long and must be unique within the datasource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Backup resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then the request will fail.
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
  async.Future<Operation> patch(
    Backup request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restore from a Backup
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Backup instance, in the format
  /// 'projects / * /locations / * /backupVaults / * /dataSources / *
  /// /backups/'.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/dataSources/\[^/\]+/backups/\[^/\]+$`.
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
  async.Future<Operation> restore(
    RestoreBackupRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restore';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsManagementServersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsManagementServersResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new ManagementServer in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The management server project and location in the
  /// format 'projects/{project_id}/locations/{location}'. In Cloud Backup and
  /// DR locations map to Google Cloud regions, for example **us-central1**.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [managementServerId] - Required. The name of the management server to
  /// create. The name must be unique for the specified project and location.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> create(
    ManagementServer request,
    core.String parent, {
    core.String? managementServerId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (managementServerId != null)
        'managementServerId': [managementServerId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/managementServers';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ManagementServer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the resource
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/managementServers/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
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
  async.Future<Operation> delete(
    core.String name, {
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ManagementServer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the management server resource name, in the
  /// format
  /// 'projects/{project_id}/locations/{location}/managementServers/{resource_name}'
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/managementServers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagementServer].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagementServer> get(
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
    return ManagementServer.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns an empty policy if the resource exists and does not have a policy
  /// set.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/managementServers/\[^/\]+$`.
  ///
  /// [options_requestedPolicyVersion] - Optional. The maximum policy version
  /// that will be used to format the policy. Valid values are 0, 1, and 3.
  /// Requests specifying an invalid value will be rejected. Requests for
  /// policies with any conditional role bindings must specify version 3.
  /// Policies with no conditional role bindings may specify any valid value or
  /// leave the field unset. The policy in the response might use the policy
  /// version that you specified, or it might use a lower policy version. For
  /// example, if you specify version 3, but the policy has no conditional role
  /// bindings, the response uses version 1. To learn which resources support
  /// conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> getIamPolicy(
    core.String resource, {
    core.int? options_requestedPolicyVersion,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists ManagementServers in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The project and location for which to retrieve
  /// management servers information, in the format
  /// 'projects/{project_id}/locations/{location}'. In Cloud BackupDR, locations
  /// map to Google Cloud regions, for example **us-central1**. To retrieve
  /// management servers for all locations, use "-" for the '{location}' value.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListManagementServersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListManagementServersResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/managementServers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListManagementServersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Sets the access control policy on the specified resource.
  ///
  /// Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`,
  /// and `PERMISSION_DENIED` errors.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/managementServers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Policy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Policy> setIamPolicy(
    SetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns permissions that a caller has on the specified resource.
  ///
  /// If the resource does not exist, this will return an empty set of
  /// permissions, not a `NOT_FOUND` error. Note: This operation is designed to
  /// be used for building permission-aware UIs and command-line tools, not for
  /// authorization checking. This operation may "fail open" without warning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy detail is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/managementServers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestIamPermissionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestIamPermissionsResponse> testIamPermissions(
    TestIamPermissionsRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestIamPermissionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts asynchronous cancellation on a long-running operation.
  ///
  /// The server makes a best effort to cancel the operation, but success is not
  /// guaranteed. If the server doesn't support this method, it returns
  /// `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation
  /// or other methods to check whether the cancellation succeeded or whether
  /// the operation completed despite cancellation. On successful cancellation,
  /// the operation is not deleted; instead, it becomes an operation with an
  /// Operation.error value with a google.rpc.Status.code of `1`, corresponding
  /// to `Code.CANCELLED`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
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
  async.Future<Empty> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
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
  async.Future<Operation> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation's parent resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOperationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsServiceConfigResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServiceConfigResource(commons.ApiRequester client)
      : _requester = client;

  /// Initializes the service related config for a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the serviceConfig used to
  /// initialize the service. Format:
  /// `projects/{project_id}/locations/{location}/serviceConfig`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/serviceConfig$`.
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
  async.Future<Operation> initialize(
    InitializeServiceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':initialize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// request message for AbandonBackup.
class AbandonBackupRequest {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  AbandonBackupRequest({this.requestId});

  AbandonBackupRequest.fromJson(core.Map json_)
      : this(requestId: json_['requestId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// A specification of the type and number of accelerator cards attached to the
/// instance.
class AcceleratorConfig {
  /// The number of the guest accelerator cards exposed to this instance.
  ///
  /// Optional.
  core.int? acceleratorCount;

  /// Full or partial URL of the accelerator type resource to attach to this
  /// instance.
  ///
  /// Optional.
  core.String? acceleratorType;

  AcceleratorConfig({this.acceleratorCount, this.acceleratorType});

  AcceleratorConfig.fromJson(core.Map json_)
      : this(
          acceleratorCount: json_['acceleratorCount'] as core.int?,
          acceleratorType: json_['acceleratorType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (acceleratorCount != null) 'acceleratorCount': acceleratorCount!,
        if (acceleratorType != null) 'acceleratorType': acceleratorType!,
      };
}

/// An access configuration attached to an instance's network interface.
///
/// Only one access config per instance is supported.
class AccessConfig {
  /// The external IPv6 address of this access configuration.
  ///
  /// Optional.
  core.String? externalIpv6;

  /// The prefix length of the external IPv6 range.
  ///
  /// Optional.
  core.int? externalIpv6PrefixLength;

  /// The name of this access configuration.
  ///
  /// Optional.
  core.String? name;

  /// The external IP address of this access configuration.
  ///
  /// Optional.
  core.String? natIP;

  /// This signifies the networking tier used for configuring this access
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NETWORK_TIER_UNSPECIFIED" : Default value. This value is unused.
  /// - "PREMIUM" : High quality, Google-grade network tier, support for all
  /// networking products.
  /// - "STANDARD" : Public internet quality, only limited support for other
  /// networking products.
  core.String? networkTier;

  /// The DNS domain name for the public PTR record.
  ///
  /// Optional.
  core.String? publicPtrDomainName;

  /// Specifies whether a public DNS 'PTR' record should be created to map the
  /// external IP address of the instance to a DNS domain name.
  ///
  /// Optional.
  core.bool? setPublicPtr;

  /// In accessConfigs (IPv4), the default and only option is ONE_TO_ONE_NAT.
  ///
  /// In ipv6AccessConfigs, the default and only option is DIRECT_IPV6.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACCESS_TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "ONE_TO_ONE_NAT" : ONE_TO_ONE_NAT
  /// - "DIRECT_IPV6" : Direct IPv6 access.
  core.String? type;

  AccessConfig({
    this.externalIpv6,
    this.externalIpv6PrefixLength,
    this.name,
    this.natIP,
    this.networkTier,
    this.publicPtrDomainName,
    this.setPublicPtr,
    this.type,
  });

  AccessConfig.fromJson(core.Map json_)
      : this(
          externalIpv6: json_['externalIpv6'] as core.String?,
          externalIpv6PrefixLength:
              json_['externalIpv6PrefixLength'] as core.int?,
          name: json_['name'] as core.String?,
          natIP: json_['natIP'] as core.String?,
          networkTier: json_['networkTier'] as core.String?,
          publicPtrDomainName: json_['publicPtrDomainName'] as core.String?,
          setPublicPtr: json_['setPublicPtr'] as core.bool?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (externalIpv6 != null) 'externalIpv6': externalIpv6!,
        if (externalIpv6PrefixLength != null)
          'externalIpv6PrefixLength': externalIpv6PrefixLength!,
        if (name != null) 'name': name!,
        if (natIP != null) 'natIP': natIP!,
        if (networkTier != null) 'networkTier': networkTier!,
        if (publicPtrDomainName != null)
          'publicPtrDomainName': publicPtrDomainName!,
        if (setPublicPtr != null) 'setPublicPtr': setPublicPtr!,
        if (type != null) 'type': type!,
      };
}

/// Specifies options for controlling advanced machine features.
class AdvancedMachineFeatures {
  /// Whether to enable nested virtualization or not (default is false).
  ///
  /// Optional.
  core.bool? enableNestedVirtualization;

  /// Whether to enable UEFI networking for instance creation.
  ///
  /// Optional.
  core.bool? enableUefiNetworking;

  /// The number of threads per physical core.
  ///
  /// To disable simultaneous multithreading (SMT) set this to 1. If unset, the
  /// maximum number of threads supported per core by the underlying processor
  /// is assumed.
  ///
  /// Optional.
  core.int? threadsPerCore;

  /// The number of physical cores to expose to an instance.
  ///
  /// Multiply by the number of threads per core to compute the total number of
  /// virtual CPUs to expose to the instance. If unset, the number of cores is
  /// inferred from the instance's nominal CPU count and the underlying
  /// platform's SMT width.
  ///
  /// Optional.
  core.int? visibleCoreCount;

  AdvancedMachineFeatures({
    this.enableNestedVirtualization,
    this.enableUefiNetworking,
    this.threadsPerCore,
    this.visibleCoreCount,
  });

  AdvancedMachineFeatures.fromJson(core.Map json_)
      : this(
          enableNestedVirtualization:
              json_['enableNestedVirtualization'] as core.bool?,
          enableUefiNetworking: json_['enableUefiNetworking'] as core.bool?,
          threadsPerCore: json_['threadsPerCore'] as core.int?,
          visibleCoreCount: json_['visibleCoreCount'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableNestedVirtualization != null)
          'enableNestedVirtualization': enableNestedVirtualization!,
        if (enableUefiNetworking != null)
          'enableUefiNetworking': enableUefiNetworking!,
        if (threadsPerCore != null) 'threadsPerCore': threadsPerCore!,
        if (visibleCoreCount != null) 'visibleCoreCount': visibleCoreCount!,
      };
}

/// An alias IP range attached to an instance's network interface.
class AliasIpRange {
  /// The IP alias ranges to allocate for this interface.
  ///
  /// Optional.
  core.String? ipCidrRange;

  /// The name of a subnetwork secondary IP range from which to allocate an IP
  /// alias range.
  ///
  /// If not specified, the primary range of the subnetwork is used.
  ///
  /// Optional.
  core.String? subnetworkRangeName;

  AliasIpRange({this.ipCidrRange, this.subnetworkRangeName});

  AliasIpRange.fromJson(core.Map json_)
      : this(
          ipCidrRange: json_['ipCidrRange'] as core.String?,
          subnetworkRangeName: json_['subnetworkRangeName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ipCidrRange != null) 'ipCidrRange': ipCidrRange!,
        if (subnetworkRangeName != null)
          'subnetworkRangeName': subnetworkRangeName!,
      };
}

/// Specifies the reservations that this instance can consume from.
class AllocationAffinity {
  /// Specifies the type of reservation from which this instance can consume
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value. This value is unused.
  /// - "NO_RESERVATION" : Do not consume from any allocated capacity.
  /// - "ANY_RESERVATION" : Consume any allocation available.
  /// - "SPECIFIC_RESERVATION" : Must consume from a specific reservation. Must
  /// specify key value fields for specifying the reservations.
  core.String? consumeReservationType;

  /// Corresponds to the label key of a reservation resource.
  ///
  /// Optional.
  core.String? key;

  /// Corresponds to the label values of a reservation resource.
  ///
  /// Optional.
  core.List<core.String>? values;

  AllocationAffinity({this.consumeReservationType, this.key, this.values});

  AllocationAffinity.fromJson(core.Map json_)
      : this(
          consumeReservationType:
              json_['consumeReservationType'] as core.String?,
          key: json_['key'] as core.String?,
          values: (json_['values'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumeReservationType != null)
          'consumeReservationType': consumeReservationType!,
        if (key != null) 'key': key!,
        if (values != null) 'values': values!,
      };
}

/// An instance-attached disk resource.
class AttachedDisk {
  /// Specifies whether the disk will be auto-deleted when the instance is
  /// deleted (but not when the disk is detached from the instance).
  ///
  /// Optional.
  core.bool? autoDelete;

  /// Indicates that this is a boot disk.
  ///
  /// The virtual machine will use the first partition of the disk for its root
  /// filesystem.
  ///
  /// Optional.
  core.bool? boot;

  /// This is used as an identifier for the disks.
  ///
  /// This is the unique name has to provided to modify disk parameters like
  /// disk_name and replica_zones (in case of RePDs)
  ///
  /// Optional.
  core.String? deviceName;

  /// Encrypts or decrypts a disk using a customer-supplied encryption key.
  ///
  /// Optional.
  CustomerEncryptionKey? diskEncryptionKey;

  /// Specifies the disk interface to use for attaching this disk.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISK_INTERFACE_UNSPECIFIED" : Default value, which is unused.
  /// - "SCSI" : SCSI Disk Interface.
  /// - "NVME" : NVME Disk Interface.
  /// - "NVDIMM" : NVDIMM Disk Interface.
  /// - "ISCSI" : ISCSI Disk Interface.
  core.String? diskInterface;

  /// The size of the disk in GB.
  ///
  /// Optional.
  core.String? diskSizeGb;

  /// The URI of the disk type resource.
  ///
  /// For example: projects/project/zones/zone/diskTypes/pd-standard or pd-ssd
  ///
  /// Optional. Output only.
  core.String? diskType;

  /// Specifies the type of the disk.
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Default value, which is unused.
  /// - "SCRATCH" : A scratch disk type.
  /// - "PERSISTENT" : A persistent disk type.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? diskTypeDeprecated;

  /// A list of features to enable on the guest operating system.
  ///
  /// Applicable only for bootable images.
  ///
  /// Optional.
  core.List<GuestOsFeature>? guestOsFeature;

  /// A zero-based index to this disk, where 0 is reserved for the boot disk.
  ///
  /// Optional.
  core.String? index;

  /// Specifies the parameters to initialize this disk.
  ///
  /// Optional.
  InitializeParams? initializeParams;

  /// Type of the resource.
  ///
  /// Optional.
  core.String? kind;

  /// Any valid publicly visible licenses.
  ///
  /// Optional.
  core.List<core.String>? license;

  /// The mode in which to attach this disk.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISK_MODE_UNSPECIFIED" : Default value, which is unused.
  /// - "READ_WRITE" : Attaches this disk in read-write mode. Only one virtual
  /// machine at a time can be attached to a disk in read-write mode.
  /// - "READ_ONLY" : Attaches this disk in read-only mode. Multiple virtual
  /// machines can use a disk in read-only mode at a time.
  /// - "LOCKED" : The disk is locked for administrative reasons. Nobody else
  /// can use the disk. This mode is used (for example) when taking a snapshot
  /// of a disk to prevent mounting the disk while it is being snapshotted.
  core.String? mode;

  /// The state of the disk.
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "DISK_SAVED_STATE_UNSPECIFIED" : Default Disk state has not been
  /// preserved.
  /// - "PRESERVED" : Disk state has been preserved.
  core.String? savedState;

  /// Specifies a valid partial or full URL to an existing Persistent Disk
  /// resource.
  ///
  /// Optional.
  core.String? source;

  /// Specifies the type of the disk.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISK_TYPE_UNSPECIFIED" : Default value, which is unused.
  /// - "SCRATCH" : A scratch disk type.
  /// - "PERSISTENT" : A persistent disk type.
  core.String? type;

  AttachedDisk({
    this.autoDelete,
    this.boot,
    this.deviceName,
    this.diskEncryptionKey,
    this.diskInterface,
    this.diskSizeGb,
    this.diskType,
    this.diskTypeDeprecated,
    this.guestOsFeature,
    this.index,
    this.initializeParams,
    this.kind,
    this.license,
    this.mode,
    this.savedState,
    this.source,
    this.type,
  });

  AttachedDisk.fromJson(core.Map json_)
      : this(
          autoDelete: json_['autoDelete'] as core.bool?,
          boot: json_['boot'] as core.bool?,
          deviceName: json_['deviceName'] as core.String?,
          diskEncryptionKey: json_.containsKey('diskEncryptionKey')
              ? CustomerEncryptionKey.fromJson(
                  json_['diskEncryptionKey']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          diskInterface: json_['diskInterface'] as core.String?,
          diskSizeGb: json_['diskSizeGb'] as core.String?,
          diskType: json_['diskType'] as core.String?,
          diskTypeDeprecated: json_['diskTypeDeprecated'] as core.String?,
          guestOsFeature: (json_['guestOsFeature'] as core.List?)
              ?.map(
                (value) => GuestOsFeature.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          index: json_['index'] as core.String?,
          initializeParams: json_.containsKey('initializeParams')
              ? InitializeParams.fromJson(
                  json_['initializeParams']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          kind: json_['kind'] as core.String?,
          license: (json_['license'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          mode: json_['mode'] as core.String?,
          savedState: json_['savedState'] as core.String?,
          source: json_['source'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoDelete != null) 'autoDelete': autoDelete!,
        if (boot != null) 'boot': boot!,
        if (deviceName != null) 'deviceName': deviceName!,
        if (diskEncryptionKey != null) 'diskEncryptionKey': diskEncryptionKey!,
        if (diskInterface != null) 'diskInterface': diskInterface!,
        if (diskSizeGb != null) 'diskSizeGb': diskSizeGb!,
        if (diskType != null) 'diskType': diskType!,
        if (diskTypeDeprecated != null)
          'diskTypeDeprecated': diskTypeDeprecated!,
        if (guestOsFeature != null) 'guestOsFeature': guestOsFeature!,
        if (index != null) 'index': index!,
        if (initializeParams != null) 'initializeParams': initializeParams!,
        if (kind != null) 'kind': kind!,
        if (license != null) 'license': license!,
        if (mode != null) 'mode': mode!,
        if (savedState != null) 'savedState': savedState!,
        if (source != null) 'source': source!,
        if (type != null) 'type': type!,
      };
}

/// Specifies the audit configuration for a service.
///
/// The configuration determines which permission types are logged, and what
/// identities, if any, are exempted from logging. An AuditConfig must have one
/// or more AuditLogConfigs. If there are AuditConfigs for both `allServices`
/// and a specific service, the union of the two AuditConfigs is used for that
/// service: the log_types specified in each AuditConfig are enabled, and the
/// exempted_members in each AuditLogConfig are exempted. Example Policy with
/// multiple AuditConfigs: { "audit_configs": \[ { "service": "allServices",
/// "audit_log_configs": \[ { "log_type": "DATA_READ", "exempted_members": \[
/// "user:jose@example.com" \] }, { "log_type": "DATA_WRITE" }, { "log_type":
/// "ADMIN_READ" } \] }, { "service": "sampleservice.googleapis.com",
/// "audit_log_configs": \[ { "log_type": "DATA_READ" }, { "log_type":
/// "DATA_WRITE", "exempted_members": \[ "user:aliya@example.com" \] } \] } \] }
/// For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ
/// logging. It also exempts `jose@example.com` from DATA_READ logging, and
/// `aliya@example.com` from DATA_WRITE logging.
class AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  AuditConfig({this.auditLogConfigs, this.service});

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
              ?.map(
                (value) => AuditLogConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          service: json_['service'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditLogConfigs != null) 'auditLogConfigs': auditLogConfigs!,
        if (service != null) 'service': service!,
      };
}

/// Provides the configuration for logging a type of permissions.
///
/// Example: { "audit_log_configs": \[ { "log_type": "DATA_READ",
/// "exempted_members": \[ "user:jose@example.com" \] }, { "log_type":
/// "DATA_WRITE" } \] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while
/// exempting jose@example.com from DATA_READ logging.
typedef AuditLogConfig = $AuditLogConfig;

/// Message describing a Backup object.
class Backup {
  /// Backup Appliance specific backup properties.
  ///
  /// Output only.
  BackupApplianceBackupProperties? backupApplianceBackupProperties;

  /// The list of BackupLocks taken by the accessor Backup Appliance.
  ///
  /// Optional.
  core.List<BackupLock>? backupApplianceLocks;

  /// Type of the backup, unspecified, scheduled or ondemand.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BACKUP_TYPE_UNSPECIFIED" : Backup type is unspecified.
  /// - "SCHEDULED" : Scheduled backup.
  /// - "ON_DEMAND" : On demand backup.
  core.String? backupType;

  /// Compute Engine specific backup properties.
  ///
  /// Output only.
  ComputeInstanceBackupProperties? computeInstanceBackupProperties;

  /// The point in time when this backup was captured from the source.
  ///
  /// Output only.
  core.String? consistencyTime;

  /// The time when the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the Backup instance (2048 characters or less).
  ///
  /// Output only.
  core.String? description;

  /// The backup can not be deleted before this time.
  ///
  /// Optional.
  core.String? enforcedRetentionEndTime;

  /// Server specified ETag to prevent updates from overwriting each other.
  ///
  /// Optional.
  core.String? etag;

  /// When this backup is automatically expired.
  ///
  /// Optional.
  core.String? expireTime;

  /// Configuration for a Google Cloud resource.
  ///
  /// Output only.
  GCPBackupPlanInfo? gcpBackupPlanInfo;

  /// Resource labels to represent user provided metadata.
  ///
  /// No labels currently defined.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Name of the backup to create. It must have the
  /// format`"projects//locations//backupVaults//dataSources/{datasource}/backups/{backup}"`.
  /// `{backup}` cannot be changed after creation. It must be between 3-63
  /// characters long and must be unique within the datasource.
  ///
  /// Output only.
  core.String? name;

  /// source resource size in bytes at the time of the backup.
  ///
  /// Output only.
  core.String? resourceSizeBytes;

  /// Reserved for future use.
  ///
  /// Optional. Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Optional. Output only.
  core.bool? satisfiesPzs;

  /// The list of BackupLocks taken by the service to prevent the deletion of
  /// the backup.
  ///
  /// Output only.
  core.List<BackupLock>? serviceLocks;

  /// The Backup resource instance state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The backup is being created.
  /// - "ACTIVE" : The backup has been created and is fully usable.
  /// - "DELETING" : The backup is being deleted.
  /// - "ERROR" : The backup is experiencing an issue and might be unusable.
  core.String? state;

  /// The time when the instance was updated.
  ///
  /// Output only.
  core.String? updateTime;

  Backup({
    this.backupApplianceBackupProperties,
    this.backupApplianceLocks,
    this.backupType,
    this.computeInstanceBackupProperties,
    this.consistencyTime,
    this.createTime,
    this.description,
    this.enforcedRetentionEndTime,
    this.etag,
    this.expireTime,
    this.gcpBackupPlanInfo,
    this.labels,
    this.name,
    this.resourceSizeBytes,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.serviceLocks,
    this.state,
    this.updateTime,
  });

  Backup.fromJson(core.Map json_)
      : this(
          backupApplianceBackupProperties:
              json_.containsKey('backupApplianceBackupProperties')
                  ? BackupApplianceBackupProperties.fromJson(
                      json_['backupApplianceBackupProperties']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          backupApplianceLocks: (json_['backupApplianceLocks'] as core.List?)
              ?.map(
                (value) => BackupLock.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          backupType: json_['backupType'] as core.String?,
          computeInstanceBackupProperties:
              json_.containsKey('computeInstanceBackupProperties')
                  ? ComputeInstanceBackupProperties.fromJson(
                      json_['computeInstanceBackupProperties']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          consistencyTime: json_['consistencyTime'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          enforcedRetentionEndTime:
              json_['enforcedRetentionEndTime'] as core.String?,
          etag: json_['etag'] as core.String?,
          expireTime: json_['expireTime'] as core.String?,
          gcpBackupPlanInfo: json_.containsKey('gcpBackupPlanInfo')
              ? GCPBackupPlanInfo.fromJson(
                  json_['gcpBackupPlanInfo']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(key, value as core.String),
          ),
          name: json_['name'] as core.String?,
          resourceSizeBytes: json_['resourceSizeBytes'] as core.String?,
          satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
          satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
          serviceLocks: (json_['serviceLocks'] as core.List?)
              ?.map(
                (value) => BackupLock.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          state: json_['state'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupApplianceBackupProperties != null)
          'backupApplianceBackupProperties': backupApplianceBackupProperties!,
        if (backupApplianceLocks != null)
          'backupApplianceLocks': backupApplianceLocks!,
        if (backupType != null) 'backupType': backupType!,
        if (computeInstanceBackupProperties != null)
          'computeInstanceBackupProperties': computeInstanceBackupProperties!,
        if (consistencyTime != null) 'consistencyTime': consistencyTime!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (enforcedRetentionEndTime != null)
          'enforcedRetentionEndTime': enforcedRetentionEndTime!,
        if (etag != null) 'etag': etag!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (gcpBackupPlanInfo != null) 'gcpBackupPlanInfo': gcpBackupPlanInfo!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (resourceSizeBytes != null) 'resourceSizeBytes': resourceSizeBytes!,
        if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (serviceLocks != null) 'serviceLocks': serviceLocks!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// BackupApplianceBackupConfig captures the backup configuration for
/// applications that are protected by Backup Appliances.
class BackupApplianceBackupConfig {
  /// The name of the application.
  core.String? applicationName;

  /// The ID of the backup appliance.
  core.String? backupApplianceId;

  /// The name of the backup appliance.
  core.String? backupApplianceName;

  /// The name of the host where the application is running.
  core.String? hostName;

  /// The ID of the SLA of this application.
  core.String? slaId;

  /// The name of the SLP associated with the application.
  core.String? slpName;

  /// The name of the SLT associated with the application.
  core.String? sltName;

  BackupApplianceBackupConfig({
    this.applicationName,
    this.backupApplianceId,
    this.backupApplianceName,
    this.hostName,
    this.slaId,
    this.slpName,
    this.sltName,
  });

  BackupApplianceBackupConfig.fromJson(core.Map json_)
      : this(
          applicationName: json_['applicationName'] as core.String?,
          backupApplianceId: json_['backupApplianceId'] as core.String?,
          backupApplianceName: json_['backupApplianceName'] as core.String?,
          hostName: json_['hostName'] as core.String?,
          slaId: json_['slaId'] as core.String?,
          slpName: json_['slpName'] as core.String?,
          sltName: json_['sltName'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applicationName != null) 'applicationName': applicationName!,
        if (backupApplianceId != null) 'backupApplianceId': backupApplianceId!,
        if (backupApplianceName != null)
          'backupApplianceName': backupApplianceName!,
        if (hostName != null) 'hostName': hostName!,
        if (slaId != null) 'slaId': slaId!,
        if (slpName != null) 'slpName': slpName!,
        if (sltName != null) 'sltName': sltName!,
      };
}

/// BackupApplianceBackupProperties represents BackupDR backup appliance's
/// properties.
class BackupApplianceBackupProperties {
  /// The time when this backup object was finalized (if none, backup is not
  /// finalized).
  ///
  /// Output only.
  core.String? finalizeTime;

  /// The numeric generation ID of the backup (monotonically increasing).
  ///
  /// Output only.
  core.int? generationId;

  /// The latest timestamp of data available in this Backup.
  ///
  /// Optional.
  core.String? recoveryRangeEndTime;

  /// The earliest timestamp of data available in this Backup.
  ///
  /// Optional.
  core.String? recoveryRangeStartTime;

  BackupApplianceBackupProperties({
    this.finalizeTime,
    this.generationId,
    this.recoveryRangeEndTime,
    this.recoveryRangeStartTime,
  });

  BackupApplianceBackupProperties.fromJson(core.Map json_)
      : this(
          finalizeTime: json_['finalizeTime'] as core.String?,
          generationId: json_['generationId'] as core.int?,
          recoveryRangeEndTime: json_['recoveryRangeEndTime'] as core.String?,
          recoveryRangeStartTime:
              json_['recoveryRangeStartTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (finalizeTime != null) 'finalizeTime': finalizeTime!,
        if (generationId != null) 'generationId': generationId!,
        if (recoveryRangeEndTime != null)
          'recoveryRangeEndTime': recoveryRangeEndTime!,
        if (recoveryRangeStartTime != null)
          'recoveryRangeStartTime': recoveryRangeStartTime!,
      };
}

/// BackupApplianceLockInfo contains metadata about the backupappliance that
/// created the lock.
class BackupApplianceLockInfo {
  /// The ID of the backup/recovery appliance that created this lock.
  ///
  /// Required.
  core.String? backupApplianceId;

  /// The name of the backup/recovery appliance that created this lock.
  ///
  /// Required.
  core.String? backupApplianceName;

  /// The image name that depends on this Backup.
  core.String? backupImage;

  /// The job name on the backup/recovery appliance that created this lock.
  core.String? jobName;

  /// The reason for the lock: e.g. MOUNT/RESTORE/BACKUP/etc.
  ///
  /// The value of this string is only meaningful to the client and it is not
  /// interpreted by the BackupVault service.
  ///
  /// Required.
  core.String? lockReason;

  /// The SLA on the backup/recovery appliance that owns the lock.
  core.String? slaId;

  BackupApplianceLockInfo({
    this.backupApplianceId,
    this.backupApplianceName,
    this.backupImage,
    this.jobName,
    this.lockReason,
    this.slaId,
  });

  BackupApplianceLockInfo.fromJson(core.Map json_)
      : this(
          backupApplianceId: json_['backupApplianceId'] as core.String?,
          backupApplianceName: json_['backupApplianceName'] as core.String?,
          backupImage: json_['backupImage'] as core.String?,
          jobName: json_['jobName'] as core.String?,
          lockReason: json_['lockReason'] as core.String?,
          slaId: json_['slaId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupApplianceId != null) 'backupApplianceId': backupApplianceId!,
        if (backupApplianceName != null)
          'backupApplianceName': backupApplianceName!,
        if (backupImage != null) 'backupImage': backupImage!,
        if (jobName != null) 'jobName': jobName!,
        if (lockReason != null) 'lockReason': lockReason!,
        if (slaId != null) 'slaId': slaId!,
      };
}

/// BackupConfigInfo has information about how the resource is configured for
/// Backup and about the most recent backup to this vault.
class BackupConfigInfo {
  /// Configuration for an application backed up by a Backup Appliance.
  BackupApplianceBackupConfig? backupApplianceBackupConfig;

  /// Configuration for a Google Cloud resource.
  GcpBackupConfig? gcpBackupConfig;

  /// If the last backup failed, this field has the error message.
  ///
  /// Output only.
  Status? lastBackupError;

  /// The status of the last backup to this BackupVault
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAST_BACKUP_STATE_UNSPECIFIED" : Status not set.
  /// - "FIRST_BACKUP_PENDING" : The first backup has not yet completed
  /// - "SUCCEEDED" : The most recent backup was successful
  /// - "FAILED" : The most recent backup failed
  /// - "PERMISSION_DENIED" : The most recent backup could not be run/failed
  /// because of the lack of permissions
  core.String? lastBackupState;

  /// If the last backup were successful, this field has the consistency date.
  ///
  /// Output only.
  core.String? lastSuccessfulBackupConsistencyTime;

  BackupConfigInfo({
    this.backupApplianceBackupConfig,
    this.gcpBackupConfig,
    this.lastBackupError,
    this.lastBackupState,
    this.lastSuccessfulBackupConsistencyTime,
  });

  BackupConfigInfo.fromJson(core.Map json_)
      : this(
          backupApplianceBackupConfig:
              json_.containsKey('backupApplianceBackupConfig')
                  ? BackupApplianceBackupConfig.fromJson(
                      json_['backupApplianceBackupConfig']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          gcpBackupConfig: json_.containsKey('gcpBackupConfig')
              ? GcpBackupConfig.fromJson(
                  json_['gcpBackupConfig']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          lastBackupError: json_.containsKey('lastBackupError')
              ? Status.fromJson(
                  json_['lastBackupError']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          lastBackupState: json_['lastBackupState'] as core.String?,
          lastSuccessfulBackupConsistencyTime:
              json_['lastSuccessfulBackupConsistencyTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupApplianceBackupConfig != null)
          'backupApplianceBackupConfig': backupApplianceBackupConfig!,
        if (gcpBackupConfig != null) 'gcpBackupConfig': gcpBackupConfig!,
        if (lastBackupError != null) 'lastBackupError': lastBackupError!,
        if (lastBackupState != null) 'lastBackupState': lastBackupState!,
        if (lastSuccessfulBackupConsistencyTime != null)
          'lastSuccessfulBackupConsistencyTime':
              lastSuccessfulBackupConsistencyTime!,
      };
}

/// BackupLock represents a single lock on a Backup resource.
///
/// An unexpired lock on a Backup prevents the Backup from being deleted.
class BackupLock {
  /// If the client is a backup and recovery appliance, this contains metadata
  /// about why the lock exists.
  BackupApplianceLockInfo? backupApplianceLockInfo;

  /// The time after which this lock is not considered valid and will no longer
  /// protect the Backup from deletion.
  ///
  /// Required.
  core.String? lockUntilTime;

  /// Contains metadata about the lock exist for Google Cloud native backups.
  ///
  /// Output only.
  ServiceLockInfo? serviceLockInfo;

  BackupLock({
    this.backupApplianceLockInfo,
    this.lockUntilTime,
    this.serviceLockInfo,
  });

  BackupLock.fromJson(core.Map json_)
      : this(
          backupApplianceLockInfo: json_.containsKey('backupApplianceLockInfo')
              ? BackupApplianceLockInfo.fromJson(
                  json_['backupApplianceLockInfo']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          lockUntilTime: json_['lockUntilTime'] as core.String?,
          serviceLockInfo: json_.containsKey('serviceLockInfo')
              ? ServiceLockInfo.fromJson(
                  json_['serviceLockInfo']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupApplianceLockInfo != null)
          'backupApplianceLockInfo': backupApplianceLockInfo!,
        if (lockUntilTime != null) 'lockUntilTime': lockUntilTime!,
        if (serviceLockInfo != null) 'serviceLockInfo': serviceLockInfo!,
      };
}

/// A `BackupPlan` specifies some common fields, such as `description` as well
/// as one or more `BackupRule` messages.
///
/// Each `BackupRule` has a retention policy and defines a schedule by which the
/// system is to perform backup workloads.
class BackupPlan {
  /// The backup rules for this `BackupPlan`.
  ///
  /// There must be at least one `BackupRule` message.
  ///
  /// Required.
  core.List<BackupRule>? backupRules;

  /// Resource name of backup vault which will be used as storage location for
  /// backups.
  ///
  /// Format: projects/{project}/locations/{location}/backupVaults/{backupvault}
  ///
  /// Required.
  core.String? backupVault;

  /// The Google Cloud Platform Service Account to be used by the BackupVault
  /// for taking backups.
  ///
  /// Specify the email address of the Backup Vault Service Account.
  ///
  /// Output only.
  core.String? backupVaultServiceAccount;

  /// When the `BackupPlan` was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the `BackupPlan` resource.
  ///
  /// The description allows for additional details about `BackupPlan` and its
  /// use cases to be provided. An example description is the following: "This
  /// is a backup plan that performs a daily backup at 6pm and retains data for
  /// 3 months". The description must be at most 2048 characters.
  ///
  /// Optional.
  core.String? description;

  /// `etag` is returned from the service in the response.
  ///
  /// As a user of the service, you may provide an etag value in this field to
  /// prevent stale resources.
  ///
  /// Optional.
  core.String? etag;

  /// This collection of key/value pairs allows for custom labels to be supplied
  /// by the user.
  ///
  /// Example, {"tag": "Weekly"}.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the `BackupPlan`. Format:
  /// `projects/{project}/locations/{location}/backupPlans/{backup_plan}`
  ///
  /// Output only.
  core.String? name;

  /// The resource type to which the `BackupPlan` will be applied.
  ///
  /// Examples include, "compute.googleapis.com/Instance",
  /// "sqladmin.googleapis.com/Instance", or "alloydb.googleapis.com/Cluster".
  ///
  /// Required.
  core.String? resourceType;

  /// The `State` for the `BackupPlan`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The resource is being created.
  /// - "ACTIVE" : The resource has been created and is fully usable.
  /// - "DELETING" : The resource is being deleted.
  /// - "INACTIVE" : The resource has been created but is not usable.
  core.String? state;

  /// When the `BackupPlan` was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  BackupPlan({
    this.backupRules,
    this.backupVault,
    this.backupVaultServiceAccount,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.resourceType,
    this.state,
    this.updateTime,
  });

  BackupPlan.fromJson(core.Map json_)
      : this(
          backupRules: (json_['backupRules'] as core.List?)
              ?.map(
                (value) => BackupRule.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          backupVault: json_['backupVault'] as core.String?,
          backupVaultServiceAccount:
              json_['backupVaultServiceAccount'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(key, value as core.String),
          ),
          name: json_['name'] as core.String?,
          resourceType: json_['resourceType'] as core.String?,
          state: json_['state'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupRules != null) 'backupRules': backupRules!,
        if (backupVault != null) 'backupVault': backupVault!,
        if (backupVaultServiceAccount != null)
          'backupVaultServiceAccount': backupVaultServiceAccount!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A BackupPlanAssociation represents a single BackupPlanAssociation which
/// contains details like workload, backup plan etc
class BackupPlanAssociation {
  /// Resource name of backup plan which needs to be applied on workload.
  ///
  /// Format: projects/{project}/locations/{location}/backupPlans/{backupPlanId}
  ///
  /// Required.
  core.String? backupPlan;

  /// The time when the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Resource name of data source which will be used as storage location for
  /// backups taken.
  ///
  /// Format :
  /// projects/{project}/locations/{location}/backupVaults/{backupvault}/dataSources/{datasource}
  ///
  /// Output only.
  core.String? dataSource;

  /// Identifier.
  ///
  /// The resource name of BackupPlanAssociation in below format Format :
  /// projects/{project}/locations/{location}/backupPlanAssociations/{backupPlanAssociationId}
  ///
  /// Output only.
  core.String? name;

  /// Resource name of workload on which backupplan is applied
  ///
  /// Required. Immutable.
  core.String? resource;

  /// Resource type of workload on which backupplan is applied
  ///
  /// Required. Immutable.
  core.String? resourceType;

  /// The config info related to backup rules.
  ///
  /// Output only.
  core.List<RuleConfigInfo>? rulesConfigInfo;

  /// The BackupPlanAssociation resource state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The resource is being created.
  /// - "ACTIVE" : The resource has been created and is fully usable.
  /// - "DELETING" : The resource is being deleted.
  /// - "INACTIVE" : The resource has been created but is not usable.
  /// - "UPDATING" : The resource is being updated.
  core.String? state;

  /// The time when the instance was updated.
  ///
  /// Output only.
  core.String? updateTime;

  BackupPlanAssociation({
    this.backupPlan,
    this.createTime,
    this.dataSource,
    this.name,
    this.resource,
    this.resourceType,
    this.rulesConfigInfo,
    this.state,
    this.updateTime,
  });

  BackupPlanAssociation.fromJson(core.Map json_)
      : this(
          backupPlan: json_['backupPlan'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          dataSource: json_['dataSource'] as core.String?,
          name: json_['name'] as core.String?,
          resource: json_['resource'] as core.String?,
          resourceType: json_['resourceType'] as core.String?,
          rulesConfigInfo: (json_['rulesConfigInfo'] as core.List?)
              ?.map(
                (value) => RuleConfigInfo.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          state: json_['state'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupPlan != null) 'backupPlan': backupPlan!,
        if (createTime != null) 'createTime': createTime!,
        if (dataSource != null) 'dataSource': dataSource!,
        if (name != null) 'name': name!,
        if (resource != null) 'resource': resource!,
        if (resourceType != null) 'resourceType': resourceType!,
        if (rulesConfigInfo != null) 'rulesConfigInfo': rulesConfigInfo!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// `BackupRule` binds the backup schedule to a retention policy.
class BackupRule {
  /// Configures the duration for which backup data will be kept.
  ///
  /// It is defined in “days”. The value should be greater than or equal to
  /// minimum enforced retention of the backup vault. Minimum value is 1 and
  /// maximum value is 90 for hourly backups. Minimum value is 1 and maximum
  /// value is 90 for daily backups. Minimum value is 7 and maximum value is 186
  /// for weekly backups. Minimum value is 30 and maximum value is 732 for
  /// monthly backups. Minimum value is 365 and maximum value is 36159 for
  /// yearly backups.
  ///
  /// Required.
  core.int? backupRetentionDays;

  /// The unique id of this `BackupRule`.
  ///
  /// The `rule_id` is unique per `BackupPlan`.The `rule_id` must start with a
  /// lowercase letter followed by up to 62 lowercase letters, numbers, or
  /// hyphens. Pattern, /a-z{,62}/.
  ///
  /// Required. Immutable.
  core.String? ruleId;

  /// Defines a schedule that runs within the confines of a defined window of
  /// time.
  ///
  /// Required.
  StandardSchedule? standardSchedule;

  BackupRule({this.backupRetentionDays, this.ruleId, this.standardSchedule});

  BackupRule.fromJson(core.Map json_)
      : this(
          backupRetentionDays: json_['backupRetentionDays'] as core.int?,
          ruleId: json_['ruleId'] as core.String?,
          standardSchedule: json_.containsKey('standardSchedule')
              ? StandardSchedule.fromJson(
                  json_['standardSchedule']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupRetentionDays != null)
          'backupRetentionDays': backupRetentionDays!,
        if (ruleId != null) 'ruleId': ruleId!,
        if (standardSchedule != null) 'standardSchedule': standardSchedule!,
      };
}

/// Message describing a BackupVault object.
class BackupVault {
  /// Note: This field is added for future use case and will not be supported in
  /// the current release.
  ///
  /// Access restriction for the backup vault. Default value is
  /// WITHIN_ORGANIZATION if not provided during creation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ACCESS_RESTRICTION_UNSPECIFIED" : Access restriction not set. If user
  /// does not provide any value or pass this value, it will be changed to
  /// WITHIN_ORGANIZATION.
  /// - "WITHIN_PROJECT" : Access to or from resources outside your current
  /// project will be denied.
  /// - "WITHIN_ORGANIZATION" : Access to or from resources outside your current
  /// organization will be denied.
  /// - "UNRESTRICTED" : No access restriction.
  /// - "WITHIN_ORG_BUT_UNRESTRICTED_FOR_BA" : Access to or from resources
  /// outside your current organization will be denied except for backup
  /// appliance.
  core.String? accessRestriction;

  /// User annotations.
  ///
  /// See https://google.aip.dev/128#annotations Stores small amounts of
  /// arbitrary data.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// The number of backups in this backup vault.
  ///
  /// Output only.
  core.String? backupCount;

  /// The default and minimum enforced retention for each backup within the
  /// backup vault.
  ///
  /// The enforced retention for each backup can be extended.
  ///
  /// Required.
  core.String? backupMinimumEnforcedRetentionDuration;

  /// The time when the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Set to true when there are no backups nested under this resource.
  ///
  /// Output only.
  core.bool? deletable;

  /// The description of the BackupVault instance (2048 characters or less).
  ///
  /// Optional.
  core.String? description;

  /// Time after which the BackupVault resource is locked.
  ///
  /// Optional.
  core.String? effectiveTime;

  /// Server specified ETag for the backup vault resource to prevent
  /// simultaneous updates from overwiting each other.
  ///
  /// Optional.
  core.String? etag;

  /// Resource labels to represent user provided metadata.
  ///
  /// No labels currently defined:
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Name of the backup vault to create. It must have the
  /// format`"projects/{project}/locations/{location}/backupVaults/{backupvault}"`.
  /// `{backupvault}` cannot be changed after creation. It must be between 3-63
  /// characters long and must be unique within the project and location.
  ///
  /// Output only.
  core.String? name;

  /// Service account used by the BackupVault Service for this BackupVault.
  ///
  /// The user should grant this account permissions in their workload project
  /// to enable the service to run backups and restores there.
  ///
  /// Output only.
  core.String? serviceAccount;

  /// The BackupVault resource instance state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The backup vault is being created.
  /// - "ACTIVE" : The backup vault has been created and is fully usable.
  /// - "DELETING" : The backup vault is being deleted.
  /// - "ERROR" : The backup vault is experiencing an issue and might be
  /// unusable.
  core.String? state;

  /// Total size of the storage used by all backup resources.
  ///
  /// Output only.
  core.String? totalStoredBytes;

  /// Immutable after resource creation until resource deletion.
  ///
  /// Output only.
  core.String? uid;

  /// The time when the instance was updated.
  ///
  /// Output only.
  core.String? updateTime;

  BackupVault({
    this.accessRestriction,
    this.annotations,
    this.backupCount,
    this.backupMinimumEnforcedRetentionDuration,
    this.createTime,
    this.deletable,
    this.description,
    this.effectiveTime,
    this.etag,
    this.labels,
    this.name,
    this.serviceAccount,
    this.state,
    this.totalStoredBytes,
    this.uid,
    this.updateTime,
  });

  BackupVault.fromJson(core.Map json_)
      : this(
          accessRestriction: json_['accessRestriction'] as core.String?,
          annotations: (json_['annotations']
                  as core.Map<core.String, core.dynamic>?)
              ?.map((key, value) => core.MapEntry(key, value as core.String)),
          backupCount: json_['backupCount'] as core.String?,
          backupMinimumEnforcedRetentionDuration:
              json_['backupMinimumEnforcedRetentionDuration'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          deletable: json_['deletable'] as core.bool?,
          description: json_['description'] as core.String?,
          effectiveTime: json_['effectiveTime'] as core.String?,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(key, value as core.String),
          ),
          name: json_['name'] as core.String?,
          serviceAccount: json_['serviceAccount'] as core.String?,
          state: json_['state'] as core.String?,
          totalStoredBytes: json_['totalStoredBytes'] as core.String?,
          uid: json_['uid'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessRestriction != null) 'accessRestriction': accessRestriction!,
        if (annotations != null) 'annotations': annotations!,
        if (backupCount != null) 'backupCount': backupCount!,
        if (backupMinimumEnforcedRetentionDuration != null)
          'backupMinimumEnforcedRetentionDuration':
              backupMinimumEnforcedRetentionDuration!,
        if (createTime != null) 'createTime': createTime!,
        if (deletable != null) 'deletable': deletable!,
        if (description != null) 'description': description!,
        if (effectiveTime != null) 'effectiveTime': effectiveTime!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (totalStoredBytes != null) 'totalStoredBytes': totalStoredBytes!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// `BackupWindow` defines a window of the day during which backup jobs will
/// run.
class BackupWindow {
  /// The hour of day (1-24) when the window end for e.g. if value of end hour
  /// of day is 10 that mean backup window end time is 10:00.
  ///
  /// End hour of day should be greater than start hour of day. 0 \<=
  /// start_hour_of_day \< end_hour_of_day \<= 24 End hour of day is not include
  /// in backup window that mean if end_hour_of_day= 10 jobs should start before
  /// 10:00.
  ///
  /// Required.
  core.int? endHourOfDay;

  /// The hour of day (0-23) when the window starts for e.g. if value of start
  /// hour of day is 6 that mean backup window start at 6:00.
  ///
  /// Required.
  core.int? startHourOfDay;

  BackupWindow({this.endHourOfDay, this.startHourOfDay});

  BackupWindow.fromJson(core.Map json_)
      : this(
          endHourOfDay: json_['endHourOfDay'] as core.int?,
          startHourOfDay: json_['startHourOfDay'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endHourOfDay != null) 'endHourOfDay': endHourOfDay!,
        if (startHourOfDay != null) 'startHourOfDay': startHourOfDay!,
      };
}

/// Associates `members`, or principals, with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the principals requesting access for a Google Cloud resource.
  ///
  /// `members` can have the following values: * `allUsers`: A special
  /// identifier that represents anyone who is on the internet; with or without
  /// a Google account. * `allAuthenticatedUsers`: A special identifier that
  /// represents anyone who is authenticated with a Google account or a service
  /// account. Does not include identities that come from external identity
  /// providers (IdPs) through identity federation. * `user:{emailid}`: An email
  /// address that represents a specific Google account. For example,
  /// `alice@example.com` . * `serviceAccount:{emailid}`: An email address that
  /// represents a Google service account. For example,
  /// `my-other-app@appspot.gserviceaccount.com`. *
  /// `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An
  /// identifier for a
  /// [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
  /// For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `domain:{domain}`: The G Suite domain
  /// (primary) that represents all the users of that domain. For example,
  /// `google.com` or `example.com`. *
  /// `principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workforce identity pool. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/group/{group_id}`:
  /// All workforce identities in a group. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All workforce identities with a specific attribute value. *
  /// `principalSet://iam.googleapis.com/locations/global/workforcePools/{pool_id}
  /// / * `: All identities in a workforce identity pool. *
  /// `principal://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/subject/{subject_attribute_value}`:
  /// A single identity in a workload identity pool. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/group/{group_id}`:
  /// A workload identity pool group. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}/attribute.{attribute_name}/{attribute_value}`:
  /// All identities in a workload identity pool with a certain attribute. *
  /// `principalSet://iam.googleapis.com/projects/{project_number}/locations/global/workloadIdentityPools/{pool_id}
  /// / * `: All identities in a workload identity pool. *
  /// `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique
  /// identifier) representing a user that has been recently deleted. For
  /// example, `alice@example.com?uid=123456789012345678901`. If the user is
  /// recovered, this value reverts to `user:{emailid}` and the recovered user
  /// retains the role in the binding. *
  /// `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus
  /// unique identifier) representing a service account that has been recently
  /// deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. *
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/{pool_id}/subject/{subject_attribute_value}`:
  /// Deleted single identity in a workforce identity pool. For example,
  /// `deleted:principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`. For an
  /// overview of the IAM roles and permissions, see the
  /// [IAM documentation](https://cloud.google.com/iam/docs/roles-overview). For
  /// a list of the available pre-defined roles, see
  /// [here](https://cloud.google.com/iam/docs/understanding-roles).
  core.String? role;

  Binding({this.condition, this.members, this.role});

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          members: (json_['members'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          role: json_['role'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// ComputeInstanceBackupProperties represents Compute Engine instance backup
/// properties.
class ComputeInstanceBackupProperties {
  /// Enables instances created based on these properties to send packets with
  /// source IP addresses other than their own and receive packets with
  /// destination IP addresses other than their own.
  ///
  /// If these instances will be used as an IP gateway or it will be set as the
  /// next-hop in a Route resource, specify `true`. If unsure, leave this set to
  /// `false`. See the
  /// https://cloud.google.com/vpc/docs/using-routes#canipforward documentation
  /// for more information.
  core.bool? canIpForward;

  /// An optional text description for the instances that are created from these
  /// properties.
  core.String? description;

  /// An array of disks that are associated with the instances that are created
  /// from these properties.
  core.List<AttachedDisk>? disk;

  /// A list of guest accelerator cards' type and count to use for instances
  /// created from these properties.
  core.List<AcceleratorConfig>? guestAccelerator;

  /// KeyRevocationActionType of the instance.
  ///
  /// Supported options are "STOP" and "NONE". The default value is "NONE" if it
  /// is not specified.
  /// Possible string values are:
  /// - "KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "NONE" : Indicates user chose no operation.
  /// - "STOP" : Indicates user chose to opt for VM shutdown on key revocation.
  core.String? keyRevocationActionType;

  /// Labels to apply to instances that are created from these properties.
  core.Map<core.String, core.String>? labels;

  /// The machine type to use for instances that are created from these
  /// properties.
  core.String? machineType;

  /// The metadata key/value pairs to assign to instances that are created from
  /// these properties.
  ///
  /// These pairs can consist of custom metadata or predefined keys. See
  /// https://cloud.google.com/compute/docs/metadata/overview for more
  /// information.
  Metadata? metadata;

  /// Minimum cpu/platform to be used by instances.
  ///
  /// The instance may be scheduled on the specified or newer cpu/platform.
  /// Applicable values are the friendly names of CPU platforms, such as
  /// `minCpuPlatform: Intel Haswell` or `minCpuPlatform: Intel Sandy Bridge`.
  /// For more information, read
  /// https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform.
  core.String? minCpuPlatform;

  /// An array of network access configurations for this interface.
  core.List<NetworkInterface>? networkInterface;

  /// Specifies the scheduling options for the instances that are created from
  /// these properties.
  Scheduling? scheduling;

  /// A list of service accounts with specified scopes.
  ///
  /// Access tokens for these service accounts are available to the instances
  /// that are created from these properties. Use metadata queries to obtain the
  /// access tokens for these instances.
  core.List<ServiceAccount>? serviceAccount;

  /// The source instance used to create this backup.
  ///
  /// This can be a partial or full URL to the resource. For example, the
  /// following are valid values:
  /// -https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance
  /// -projects/project/zones/zone/instances/instance
  core.String? sourceInstance;

  /// A list of tags to apply to the instances that are created from these
  /// properties.
  ///
  /// The tags identify valid sources or targets for network firewalls. The
  /// setTags method can modify this list of tags. Each tag within the list must
  /// comply with RFC1035 (https://www.ietf.org/rfc/rfc1035.txt).
  Tags? tags;

  ComputeInstanceBackupProperties({
    this.canIpForward,
    this.description,
    this.disk,
    this.guestAccelerator,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.networkInterface,
    this.scheduling,
    this.serviceAccount,
    this.sourceInstance,
    this.tags,
  });

  ComputeInstanceBackupProperties.fromJson(core.Map json_)
      : this(
          canIpForward: json_['canIpForward'] as core.bool?,
          description: json_['description'] as core.String?,
          disk: (json_['disk'] as core.List?)
              ?.map(
                (value) => AttachedDisk.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          guestAccelerator: (json_['guestAccelerator'] as core.List?)
              ?.map(
                (value) => AcceleratorConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          keyRevocationActionType:
              json_['keyRevocationActionType'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(key, value as core.String),
          ),
          machineType: json_['machineType'] as core.String?,
          metadata: json_.containsKey('metadata')
              ? Metadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          minCpuPlatform: json_['minCpuPlatform'] as core.String?,
          networkInterface: (json_['networkInterface'] as core.List?)
              ?.map(
                (value) => NetworkInterface.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          scheduling: json_.containsKey('scheduling')
              ? Scheduling.fromJson(
                  json_['scheduling'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          serviceAccount: (json_['serviceAccount'] as core.List?)
              ?.map(
                (value) => ServiceAccount.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          sourceInstance: json_['sourceInstance'] as core.String?,
          tags: json_.containsKey('tags')
              ? Tags.fromJson(
                  json_['tags'] as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (canIpForward != null) 'canIpForward': canIpForward!,
        if (description != null) 'description': description!,
        if (disk != null) 'disk': disk!,
        if (guestAccelerator != null) 'guestAccelerator': guestAccelerator!,
        if (keyRevocationActionType != null)
          'keyRevocationActionType': keyRevocationActionType!,
        if (labels != null) 'labels': labels!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
        if (networkInterface != null) 'networkInterface': networkInterface!,
        if (scheduling != null) 'scheduling': scheduling!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (sourceInstance != null) 'sourceInstance': sourceInstance!,
        if (tags != null) 'tags': tags!,
      };
}

/// ComputeInstanceDataSourceProperties represents the properties of a
/// ComputeEngine resource that are stored in the DataSource.
class ComputeInstanceDataSourceProperties {
  /// The description of the Compute Engine instance.
  core.String? description;

  /// The machine type of the instance.
  core.String? machineType;

  /// Name of the compute instance backed up by the datasource.
  core.String? name;

  /// The total number of disks attached to the Instance.
  core.String? totalDiskCount;

  /// The sum of all the disk sizes.
  core.String? totalDiskSizeGb;

  ComputeInstanceDataSourceProperties({
    this.description,
    this.machineType,
    this.name,
    this.totalDiskCount,
    this.totalDiskSizeGb,
  });

  ComputeInstanceDataSourceProperties.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          machineType: json_['machineType'] as core.String?,
          name: json_['name'] as core.String?,
          totalDiskCount: json_['totalDiskCount'] as core.String?,
          totalDiskSizeGb: json_['totalDiskSizeGb'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (machineType != null) 'machineType': machineType!,
        if (name != null) 'name': name!,
        if (totalDiskCount != null) 'totalDiskCount': totalDiskCount!,
        if (totalDiskSizeGb != null) 'totalDiskSizeGb': totalDiskSizeGb!,
      };
}

/// ComputeInstanceRestoreProperties represents Compute Engine instance
/// properties to be overridden during restore.
class ComputeInstanceRestoreProperties {
  /// Controls for advanced machine-related behavior features.
  ///
  /// Optional.
  AdvancedMachineFeatures? advancedMachineFeatures;

  /// Allows this instance to send and receive packets with non-matching
  /// destination or source IPs.
  ///
  /// Optional.
  core.bool? canIpForward;

  /// Controls Confidential compute options on the instance
  ///
  /// Optional.
  ConfidentialInstanceConfig? confidentialInstanceConfig;

  /// Whether the resource should be protected against deletion.
  ///
  /// Optional.
  core.bool? deletionProtection;

  /// An optional description of this resource.
  ///
  /// Provide this property when you create the resource.
  ///
  /// Optional.
  core.String? description;

  /// Array of disks associated with this instance.
  ///
  /// Persistent disks must be created before you can assign them.
  ///
  /// Optional.
  core.List<AttachedDisk>? disks;

  /// Enables display device for the instance.
  ///
  /// Optional.
  DisplayDevice? displayDevice;

  /// A list of the type and count of accelerator cards attached to the
  /// instance.
  ///
  /// Optional.
  core.List<AcceleratorConfig>? guestAccelerators;

  /// Specifies the hostname of the instance.
  ///
  /// The specified hostname must be RFC1035 compliant. If hostname is not
  /// specified, the default hostname is
  /// \[INSTANCE_NAME\].c.\[PROJECT_ID\].internal when using the global DNS, and
  /// \[INSTANCE_NAME\].\[ZONE\].c.\[PROJECT_ID\].internal when using zonal DNS.
  ///
  /// Optional.
  core.String? hostname;

  /// Encrypts suspended data for an instance with a customer-managed encryption
  /// key.
  ///
  /// Optional.
  CustomerEncryptionKey? instanceEncryptionKey;

  /// KeyRevocationActionType of the instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "KEY_REVOCATION_ACTION_TYPE_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "NONE" : Indicates user chose no operation.
  /// - "STOP" : Indicates user chose to opt for VM shutdown on key revocation.
  core.String? keyRevocationActionType;

  /// Labels to apply to this instance.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Full or partial URL of the machine type resource to use for this instance.
  ///
  /// Optional.
  core.String? machineType;

  /// This includes custom metadata and predefined keys.
  ///
  /// Optional.
  Metadata? metadata;

  /// Minimum CPU platform to use for this instance.
  ///
  /// Optional.
  core.String? minCpuPlatform;

  /// Name of the compute instance.
  ///
  /// Required.
  core.String? name;

  /// An array of network configurations for this instance.
  ///
  /// These specify how interfaces are configured to interact with other network
  /// services, such as connecting to the internet. Multiple interfaces are
  /// supported per instance.
  ///
  /// Optional.
  core.List<NetworkInterface>? networkInterfaces;

  /// Configure network performance such as egress bandwidth tier.
  ///
  /// Optional.
  NetworkPerformanceConfig? networkPerformanceConfig;

  /// Input only.
  ///
  /// Additional params passed with the request, but not persisted as part of
  /// resource payload.
  InstanceParams? params;

  /// The private IPv6 google access type for the VM.
  ///
  /// If not specified, use INHERIT_FROM_SUBNETWORK as default.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INSTANCE_PRIVATE_IPV6_GOOGLE_ACCESS_UNSPECIFIED" : Default value. This
  /// value is unused.
  /// - "INHERIT_FROM_SUBNETWORK" : Each network interface inherits
  /// PrivateIpv6GoogleAccess from its subnetwork.
  /// - "ENABLE_OUTBOUND_VM_ACCESS_TO_GOOGLE" : Outbound private IPv6 access
  /// from VMs in this subnet to Google services. If specified, the subnetwork
  /// who is attached to the instance's default network interface will be
  /// assigned an internal IPv6 prefix if it doesn't have before.
  /// - "ENABLE_BIDIRECTIONAL_ACCESS_TO_GOOGLE" : Bidirectional private IPv6
  /// access to/from Google services. If specified, the subnetwork who is
  /// attached to the instance's default network interface will be assigned an
  /// internal IPv6 prefix if it doesn't have before.
  core.String? privateIpv6GoogleAccess;

  /// Specifies the reservations that this instance can consume from.
  ///
  /// Optional.
  AllocationAffinity? reservationAffinity;

  /// Resource policies applied to this instance.
  ///
  /// Optional.
  core.List<core.String>? resourcePolicies;

  /// Sets the scheduling options for this instance.
  ///
  /// Optional.
  Scheduling? scheduling;

  /// A list of service accounts, with their specified scopes, authorized for
  /// this instance.
  ///
  /// Only one service account per VM instance is supported.
  ///
  /// Optional.
  core.List<ServiceAccount>? serviceAccounts;

  /// Tags to apply to this instance.
  ///
  /// Tags are used to identify valid sources or targets for network firewalls
  /// and are specified by the client during instance creation.
  ///
  /// Optional.
  Tags? tags;

  ComputeInstanceRestoreProperties({
    this.advancedMachineFeatures,
    this.canIpForward,
    this.confidentialInstanceConfig,
    this.deletionProtection,
    this.description,
    this.disks,
    this.displayDevice,
    this.guestAccelerators,
    this.hostname,
    this.instanceEncryptionKey,
    this.keyRevocationActionType,
    this.labels,
    this.machineType,
    this.metadata,
    this.minCpuPlatform,
    this.name,
    this.networkInterfaces,
    this.networkPerformanceConfig,
    this.params,
    this.privateIpv6GoogleAccess,
    this.reservationAffinity,
    this.resourcePolicies,
    this.scheduling,
    this.serviceAccounts,
    this.tags,
  });

  ComputeInstanceRestoreProperties.fromJson(core.Map json_)
      : this(
          advancedMachineFeatures: json_.containsKey('advancedMachineFeatures')
              ? AdvancedMachineFeatures.fromJson(
                  json_['advancedMachineFeatures']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          canIpForward: json_['canIpForward'] as core.bool?,
          confidentialInstanceConfig:
              json_.containsKey('confidentialInstanceConfig')
                  ? ConfidentialInstanceConfig.fromJson(
                      json_['confidentialInstanceConfig']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          deletionProtection: json_['deletionProtection'] as core.bool?,
          description: json_['description'] as core.String?,
          disks: (json_['disks'] as core.List?)
              ?.map(
                (value) => AttachedDisk.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          displayDevice: json_.containsKey('displayDevice')
              ? DisplayDevice.fromJson(
                  json_['displayDevice'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          guestAccelerators: (json_['guestAccelerators'] as core.List?)
              ?.map(
                (value) => AcceleratorConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          hostname: json_['hostname'] as core.String?,
          instanceEncryptionKey: json_.containsKey('instanceEncryptionKey')
              ? CustomerEncryptionKey.fromJson(
                  json_['instanceEncryptionKey']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          keyRevocationActionType:
              json_['keyRevocationActionType'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(key, value as core.String),
          ),
          machineType: json_['machineType'] as core.String?,
          metadata: json_.containsKey('metadata')
              ? Metadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          minCpuPlatform: json_['minCpuPlatform'] as core.String?,
          name: json_['name'] as core.String?,
          networkInterfaces: (json_['networkInterfaces'] as core.List?)
              ?.map(
                (value) => NetworkInterface.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          networkPerformanceConfig:
              json_.containsKey('networkPerformanceConfig')
                  ? NetworkPerformanceConfig.fromJson(
                      json_['networkPerformanceConfig']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          params: json_.containsKey('params')
              ? InstanceParams.fromJson(
                  json_['params'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          privateIpv6GoogleAccess:
              json_['privateIpv6GoogleAccess'] as core.String?,
          reservationAffinity: json_.containsKey('reservationAffinity')
              ? AllocationAffinity.fromJson(
                  json_['reservationAffinity']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          resourcePolicies: (json_['resourcePolicies'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          scheduling: json_.containsKey('scheduling')
              ? Scheduling.fromJson(
                  json_['scheduling'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          serviceAccounts: (json_['serviceAccounts'] as core.List?)
              ?.map(
                (value) => ServiceAccount.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          tags: json_.containsKey('tags')
              ? Tags.fromJson(
                  json_['tags'] as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (advancedMachineFeatures != null)
          'advancedMachineFeatures': advancedMachineFeatures!,
        if (canIpForward != null) 'canIpForward': canIpForward!,
        if (confidentialInstanceConfig != null)
          'confidentialInstanceConfig': confidentialInstanceConfig!,
        if (deletionProtection != null)
          'deletionProtection': deletionProtection!,
        if (description != null) 'description': description!,
        if (disks != null) 'disks': disks!,
        if (displayDevice != null) 'displayDevice': displayDevice!,
        if (guestAccelerators != null) 'guestAccelerators': guestAccelerators!,
        if (hostname != null) 'hostname': hostname!,
        if (instanceEncryptionKey != null)
          'instanceEncryptionKey': instanceEncryptionKey!,
        if (keyRevocationActionType != null)
          'keyRevocationActionType': keyRevocationActionType!,
        if (labels != null) 'labels': labels!,
        if (machineType != null) 'machineType': machineType!,
        if (metadata != null) 'metadata': metadata!,
        if (minCpuPlatform != null) 'minCpuPlatform': minCpuPlatform!,
        if (name != null) 'name': name!,
        if (networkInterfaces != null) 'networkInterfaces': networkInterfaces!,
        if (networkPerformanceConfig != null)
          'networkPerformanceConfig': networkPerformanceConfig!,
        if (params != null) 'params': params!,
        if (privateIpv6GoogleAccess != null)
          'privateIpv6GoogleAccess': privateIpv6GoogleAccess!,
        if (reservationAffinity != null)
          'reservationAffinity': reservationAffinity!,
        if (resourcePolicies != null) 'resourcePolicies': resourcePolicies!,
        if (scheduling != null) 'scheduling': scheduling!,
        if (serviceAccounts != null) 'serviceAccounts': serviceAccounts!,
        if (tags != null) 'tags': tags!,
      };
}

/// ComputeInstanceTargetEnvironment represents Compute Engine target
/// environment to be used during restore.
class ComputeInstanceTargetEnvironment {
  /// Target project for the Compute Engine instance.
  ///
  /// Required.
  core.String? project;

  /// The zone of the Compute Engine instance.
  ///
  /// Required.
  core.String? zone;

  ComputeInstanceTargetEnvironment({this.project, this.zone});

  ComputeInstanceTargetEnvironment.fromJson(core.Map json_)
      : this(
          project: json_['project'] as core.String?,
          zone: json_['zone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (project != null) 'project': project!,
        if (zone != null) 'zone': zone!,
      };
}

/// A set of Confidential Instance options.
typedef ConfidentialInstanceConfig = $ConfidentialInstanceConfig;

/// A customer-supplied encryption key.
class CustomerEncryptionKey {
  /// The name of the encryption key that is stored in Google Cloud KMS.
  ///
  /// Optional.
  core.String? kmsKeyName;

  /// The service account being used for the encryption request for the given
  /// KMS key.
  ///
  /// If absent, the Compute Engine default service account is used.
  ///
  /// Optional.
  core.String? kmsKeyServiceAccount;

  /// Specifies a 256-bit customer-supplied encryption key.
  ///
  /// Optional.
  core.String? rawKey;

  /// RSA-wrapped 2048-bit customer-supplied encryption key to either encrypt or
  /// decrypt this resource.
  ///
  /// Optional.
  core.String? rsaEncryptedKey;

  CustomerEncryptionKey({
    this.kmsKeyName,
    this.kmsKeyServiceAccount,
    this.rawKey,
    this.rsaEncryptedKey,
  });

  CustomerEncryptionKey.fromJson(core.Map json_)
      : this(
          kmsKeyName: json_['kmsKeyName'] as core.String?,
          kmsKeyServiceAccount: json_['kmsKeyServiceAccount'] as core.String?,
          rawKey: json_['rawKey'] as core.String?,
          rsaEncryptedKey: json_['rsaEncryptedKey'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
        if (kmsKeyServiceAccount != null)
          'kmsKeyServiceAccount': kmsKeyServiceAccount!,
        if (rawKey != null) 'rawKey': rawKey!,
        if (rsaEncryptedKey != null) 'rsaEncryptedKey': rsaEncryptedKey!,
      };
}

/// Message describing a DataSource object.
///
/// Datasource object used to represent Datasource details for both admin and
/// basic view.
class DataSource {
  /// Details of how the resource is configured for backup.
  ///
  /// Output only.
  BackupConfigInfo? backupConfigInfo;

  /// Number of backups in the data source.
  core.String? backupCount;

  /// The backup configuration state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "BACKUP_CONFIG_STATE_UNSPECIFIED" : The possible states of backup
  /// configuration. Status not set.
  /// - "ACTIVE" : The data source is actively protected (i.e. there is a
  /// BackupPlanAssociation or Appliance SLA pointing to it)
  /// - "PASSIVE" : The data source is no longer protected (but may have backups
  /// under it)
  core.String? configState;

  /// The time when the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The backed up resource is a backup appliance application.
  DataSourceBackupApplianceApplication? dataSourceBackupApplianceApplication;

  /// The backed up resource is a Google Cloud resource.
  ///
  /// The word 'DataSource' was included in the names to indicate that this is
  /// the representation of the Google Cloud resource used within the DataSource
  /// object.
  DataSourceGcpResource? dataSourceGcpResource;

  /// Server specified ETag for the ManagementServer resource to prevent
  /// simultaneous updates from overwiting each other.
  core.String? etag;

  /// Resource labels to represent user provided metadata.
  ///
  /// No labels currently defined:
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Name of the datasource to create. It must have the
  /// format`"projects/{project}/locations/{location}/backupVaults/{backupvault}/dataSources/{datasource}"`.
  /// `{datasource}` cannot be changed after creation. It must be between 3-63
  /// characters long and must be unique within the backup vault.
  ///
  /// Output only.
  core.String? name;

  /// The DataSource resource instance state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The data source is being created.
  /// - "ACTIVE" : The data source has been created and is fully usable.
  /// - "DELETING" : The data source is being deleted.
  /// - "ERROR" : The data source is experiencing an issue and might be
  /// unusable.
  core.String? state;

  /// The number of bytes (metadata and data) stored in this datasource.
  core.String? totalStoredBytes;

  /// The time when the instance was updated.
  ///
  /// Output only.
  core.String? updateTime;

  DataSource({
    this.backupConfigInfo,
    this.backupCount,
    this.configState,
    this.createTime,
    this.dataSourceBackupApplianceApplication,
    this.dataSourceGcpResource,
    this.etag,
    this.labels,
    this.name,
    this.state,
    this.totalStoredBytes,
    this.updateTime,
  });

  DataSource.fromJson(core.Map json_)
      : this(
          backupConfigInfo: json_.containsKey('backupConfigInfo')
              ? BackupConfigInfo.fromJson(
                  json_['backupConfigInfo']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          backupCount: json_['backupCount'] as core.String?,
          configState: json_['configState'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          dataSourceBackupApplianceApplication:
              json_.containsKey('dataSourceBackupApplianceApplication')
                  ? DataSourceBackupApplianceApplication.fromJson(
                      json_['dataSourceBackupApplianceApplication']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          dataSourceGcpResource: json_.containsKey('dataSourceGcpResource')
              ? DataSourceGcpResource.fromJson(
                  json_['dataSourceGcpResource']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(key, value as core.String),
          ),
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          totalStoredBytes: json_['totalStoredBytes'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupConfigInfo != null) 'backupConfigInfo': backupConfigInfo!,
        if (backupCount != null) 'backupCount': backupCount!,
        if (configState != null) 'configState': configState!,
        if (createTime != null) 'createTime': createTime!,
        if (dataSourceBackupApplianceApplication != null)
          'dataSourceBackupApplianceApplication':
              dataSourceBackupApplianceApplication!,
        if (dataSourceGcpResource != null)
          'dataSourceGcpResource': dataSourceGcpResource!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (totalStoredBytes != null) 'totalStoredBytes': totalStoredBytes!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// BackupApplianceApplication describes a Source Resource when it is an
/// application backed up by a BackupAppliance.
class DataSourceBackupApplianceApplication {
  /// Appliance Id of the Backup Appliance.
  core.String? applianceId;

  /// The appid field of the application within the Backup Appliance.
  core.String? applicationId;

  /// The name of the Application as known to the Backup Appliance.
  core.String? applicationName;

  /// Appliance name.
  core.String? backupAppliance;

  /// Hostid of the application host.
  core.String? hostId;

  /// Hostname of the host where the application is running.
  core.String? hostname;

  /// The type of the application.
  ///
  /// e.g. VMBackup
  core.String? type;

  DataSourceBackupApplianceApplication({
    this.applianceId,
    this.applicationId,
    this.applicationName,
    this.backupAppliance,
    this.hostId,
    this.hostname,
    this.type,
  });

  DataSourceBackupApplianceApplication.fromJson(core.Map json_)
      : this(
          applianceId: json_['applianceId'] as core.String?,
          applicationId: json_['applicationId'] as core.String?,
          applicationName: json_['applicationName'] as core.String?,
          backupAppliance: json_['backupAppliance'] as core.String?,
          hostId: json_['hostId'] as core.String?,
          hostname: json_['hostname'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applianceId != null) 'applianceId': applianceId!,
        if (applicationId != null) 'applicationId': applicationId!,
        if (applicationName != null) 'applicationName': applicationName!,
        if (backupAppliance != null) 'backupAppliance': backupAppliance!,
        if (hostId != null) 'hostId': hostId!,
        if (hostname != null) 'hostname': hostname!,
        if (type != null) 'type': type!,
      };
}

/// DataSourceGcpResource is used for protected resources that are Google Cloud
/// Resources.
///
/// This name is easeier to understand than GcpResourceDataSource or
/// GcpDataSourceResource
class DataSourceGcpResource {
  /// ComputeInstanceDataSourceProperties has a subset of Compute Instance
  /// properties that are useful at the Datasource level.
  ComputeInstanceDataSourceProperties? computeInstanceDatasourceProperties;

  /// Full resource pathname URL of the source Google Cloud resource.
  ///
  /// Output only.
  core.String? gcpResourcename;

  /// Location of the resource: //"global"/"unspecified".
  core.String? location;

  /// The type of the Google Cloud resource.
  ///
  /// Use the Unified Resource Type, eg. compute.googleapis.com/Instance.
  core.String? type;

  DataSourceGcpResource({
    this.computeInstanceDatasourceProperties,
    this.gcpResourcename,
    this.location,
    this.type,
  });

  DataSourceGcpResource.fromJson(core.Map json_)
      : this(
          computeInstanceDatasourceProperties:
              json_.containsKey('computeInstanceDatasourceProperties')
                  ? ComputeInstanceDataSourceProperties.fromJson(
                      json_['computeInstanceDatasourceProperties']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          gcpResourcename: json_['gcpResourcename'] as core.String?,
          location: json_['location'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeInstanceDatasourceProperties != null)
          'computeInstanceDatasourceProperties':
              computeInstanceDatasourceProperties!,
        if (gcpResourcename != null) 'gcpResourcename': gcpResourcename!,
        if (location != null) 'location': location!,
        if (type != null) 'type': type!,
      };
}

/// A set of Display Device options
class DisplayDevice {
  /// Enables display for the Compute Engine VM
  ///
  /// Optional.
  core.bool? enableDisplay;

  DisplayDevice({this.enableDisplay});

  DisplayDevice.fromJson(core.Map json_)
      : this(enableDisplay: json_['enableDisplay'] as core.bool?);

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableDisplay != null) 'enableDisplay': enableDisplay!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// A key/value pair to be used for storing metadata.
class Entry {
  /// Key for the metadata entry.
  ///
  /// Optional.
  core.String? key;

  /// Value for the metadata entry.
  ///
  /// These are free-form strings, and only have meaning as interpreted by the
  /// image running in the instance. The only restriction placed on values is
  /// that their size must be less than or equal to 262144 bytes (256 KiB).
  ///
  /// Optional.
  core.String? value;

  Entry({this.key, this.value});

  Entry.fromJson(core.Map json_)
      : this(
          key: json_['key'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (value != null) 'value': value!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() \< 100" Example
/// (Equality): title: "Requestor is owner" description: "Determines if
/// requestor is the document owner" expression: "document.owner ==
/// request.auth.claims.email" Example (Logic): title: "Public documents"
/// description: "Determine whether the document should be publicly visible"
/// expression: "document.type != 'private' && document.type != 'internal'"
/// Example (Data Manipulation): title: "Notification string" description:
/// "Create a notification string with a timestamp." expression: "'New message
/// received at ' + string(document.create_time)" The exact variables and
/// functions that may be referenced within an expression are determined by the
/// service that evaluates it. See the service documentation for additional
/// information.
typedef Expr = $Expr;

/// Request message for FetchAccessToken.
class FetchAccessTokenRequest {
  /// The generation of the backup to update.
  ///
  /// Required.
  core.int? generationId;

  FetchAccessTokenRequest({this.generationId});

  FetchAccessTokenRequest.fromJson(core.Map json_)
      : this(generationId: json_['generationId'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() => {
        if (generationId != null) 'generationId': generationId!,
      };
}

/// Response message for FetchAccessToken.
class FetchAccessTokenResponse {
  /// The token is valid until this time.
  core.String? expireTime;

  /// The location in bucket that can be used for reading.
  core.String? readLocation;

  /// The downscoped token that was created.
  core.String? token;

  /// The location in bucket that can be used for writing.
  core.String? writeLocation;

  FetchAccessTokenResponse({
    this.expireTime,
    this.readLocation,
    this.token,
    this.writeLocation,
  });

  FetchAccessTokenResponse.fromJson(core.Map json_)
      : this(
          expireTime: json_['expireTime'] as core.String?,
          readLocation: json_['readLocation'] as core.String?,
          token: json_['token'] as core.String?,
          writeLocation: json_['writeLocation'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (readLocation != null) 'readLocation': readLocation!,
        if (token != null) 'token': token!,
        if (writeLocation != null) 'writeLocation': writeLocation!,
      };
}

/// Response message for fetching usable BackupVaults.
class FetchUsableBackupVaultsResponse {
  /// The list of BackupVault instances in the project for the specified
  /// location.
  ///
  /// If the '{location}' value in the request is "-", the response contains a
  /// list of instances from all locations. In case any location is unreachable,
  /// the response will only return backup vaults in reachable locations and the
  /// 'unreachable' field will be populated with a list of unreachable
  /// locations.
  core.List<BackupVault>? backupVaults;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  FetchUsableBackupVaultsResponse({
    this.backupVaults,
    this.nextPageToken,
    this.unreachable,
  });

  FetchUsableBackupVaultsResponse.fromJson(core.Map json_)
      : this(
          backupVaults: (json_['backupVaults'] as core.List?)
              ?.map(
                (value) => BackupVault.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupVaults != null) 'backupVaults': backupVaults!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for finalizing a Backup.
class FinalizeBackupRequest {
  /// Resource ID of the Backup resource to be finalized.
  ///
  /// This must be the same backup_id that was used in the
  /// InitiateBackupRequest.
  ///
  /// Required.
  core.String? backupId;

  /// The point in time when this backup was captured from the source.
  ///
  /// This will be assigned to the consistency_time field of the newly created
  /// Backup.
  core.String? consistencyTime;

  /// This will be assigned to the description field of the newly created
  /// Backup.
  core.String? description;

  /// The latest timestamp of data available in this Backup.
  ///
  /// This will be set on the newly created Backup.
  core.String? recoveryRangeEndTime;

  /// The earliest timestamp of data available in this Backup.
  ///
  /// This will set on the newly created Backup.
  core.String? recoveryRangeStartTime;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// The ExpireTime on the backup will be set to FinalizeTime plus this
  /// duration.
  ///
  /// If the resulting ExpireTime is less than EnforcedRetentionEndTime, then
  /// ExpireTime is set to EnforcedRetentionEndTime.
  core.String? retentionDuration;

  FinalizeBackupRequest({
    this.backupId,
    this.consistencyTime,
    this.description,
    this.recoveryRangeEndTime,
    this.recoveryRangeStartTime,
    this.requestId,
    this.retentionDuration,
  });

  FinalizeBackupRequest.fromJson(core.Map json_)
      : this(
          backupId: json_['backupId'] as core.String?,
          consistencyTime: json_['consistencyTime'] as core.String?,
          description: json_['description'] as core.String?,
          recoveryRangeEndTime: json_['recoveryRangeEndTime'] as core.String?,
          recoveryRangeStartTime:
              json_['recoveryRangeStartTime'] as core.String?,
          requestId: json_['requestId'] as core.String?,
          retentionDuration: json_['retentionDuration'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupId != null) 'backupId': backupId!,
        if (consistencyTime != null) 'consistencyTime': consistencyTime!,
        if (description != null) 'description': description!,
        if (recoveryRangeEndTime != null)
          'recoveryRangeEndTime': recoveryRangeEndTime!,
        if (recoveryRangeStartTime != null)
          'recoveryRangeStartTime': recoveryRangeStartTime!,
        if (requestId != null) 'requestId': requestId!,
        if (retentionDuration != null) 'retentionDuration': retentionDuration!,
      };
}

/// GCPBackupPlanInfo captures the plan configuration details of Google Cloud
/// resources at the time of backup.
class GCPBackupPlanInfo {
  /// Resource name of backup plan by which workload is protected at the time of
  /// the backup.
  ///
  /// Format: projects/{project}/locations/{location}/backupPlans/{backupPlanId}
  core.String? backupPlan;

  /// The rule id of the backup plan which triggered this backup in case of
  /// scheduled backup or used for
  core.String? backupPlanRuleId;

  GCPBackupPlanInfo({this.backupPlan, this.backupPlanRuleId});

  GCPBackupPlanInfo.fromJson(core.Map json_)
      : this(
          backupPlan: json_['backupPlan'] as core.String?,
          backupPlanRuleId: json_['backupPlanRuleId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupPlan != null) 'backupPlan': backupPlan!,
        if (backupPlanRuleId != null) 'backupPlanRuleId': backupPlanRuleId!,
      };
}

/// GcpBackupConfig captures the Backup configuration details for Google Cloud
/// resources.
///
/// All Google Cloud resources regardless of type are protected with backup plan
/// associations.
class GcpBackupConfig {
  /// The name of the backup plan.
  core.String? backupPlan;

  /// The name of the backup plan association.
  core.String? backupPlanAssociation;

  /// The description of the backup plan.
  core.String? backupPlanDescription;

  /// The names of the backup plan rules which point to this backupvault
  core.List<core.String>? backupPlanRules;

  GcpBackupConfig({
    this.backupPlan,
    this.backupPlanAssociation,
    this.backupPlanDescription,
    this.backupPlanRules,
  });

  GcpBackupConfig.fromJson(core.Map json_)
      : this(
          backupPlan: json_['backupPlan'] as core.String?,
          backupPlanAssociation: json_['backupPlanAssociation'] as core.String?,
          backupPlanDescription: json_['backupPlanDescription'] as core.String?,
          backupPlanRules: (json_['backupPlanRules'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupPlan != null) 'backupPlan': backupPlan!,
        if (backupPlanAssociation != null)
          'backupPlanAssociation': backupPlanAssociation!,
        if (backupPlanDescription != null)
          'backupPlanDescription': backupPlanDescription!,
        if (backupPlanRules != null) 'backupPlanRules': backupPlanRules!,
      };
}

/// Feature type of the Guest OS.
class GuestOsFeature {
  /// The ID of a supported feature.
  /// Possible string values are:
  /// - "FEATURE_TYPE_UNSPECIFIED" : Default value, which is unused.
  /// - "VIRTIO_SCSI_MULTIQUEUE" : VIRTIO_SCSI_MULTIQUEUE feature type.
  /// - "WINDOWS" : WINDOWS feature type.
  /// - "MULTI_IP_SUBNET" : MULTI_IP_SUBNET feature type.
  /// - "UEFI_COMPATIBLE" : UEFI_COMPATIBLE feature type.
  /// - "SECURE_BOOT" : SECURE_BOOT feature type.
  /// - "GVNIC" : GVNIC feature type.
  /// - "SEV_CAPABLE" : SEV_CAPABLE feature type.
  /// - "BARE_METAL_LINUX_COMPATIBLE" : BARE_METAL_LINUX_COMPATIBLE feature
  /// type.
  /// - "SUSPEND_RESUME_COMPATIBLE" : SUSPEND_RESUME_COMPATIBLE feature type.
  /// - "SEV_LIVE_MIGRATABLE" : SEV_LIVE_MIGRATABLE feature type.
  /// - "SEV_SNP_CAPABLE" : SEV_SNP_CAPABLE feature type.
  /// - "TDX_CAPABLE" : TDX_CAPABLE feature type.
  /// - "IDPF" : IDPF feature type.
  /// - "SEV_LIVE_MIGRATABLE_V2" : SEV_LIVE_MIGRATABLE_V2 feature type.
  core.String? type;

  GuestOsFeature({this.type});

  GuestOsFeature.fromJson(core.Map json_)
      : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
        if (type != null) 'type': type!,
      };
}

/// Specifies the parameters to initialize this disk.
class InitializeParams {
  /// Specifies the disk name.
  ///
  /// If not specified, the default is to use the name of the instance.
  ///
  /// Optional.
  core.String? diskName;

  /// URL of the zone where the disk should be created.
  ///
  /// Required for each regional disk associated with the instance.
  ///
  /// Optional.
  core.List<core.String>? replicaZones;

  InitializeParams({this.diskName, this.replicaZones});

  InitializeParams.fromJson(core.Map json_)
      : this(
          diskName: json_['diskName'] as core.String?,
          replicaZones: (json_['replicaZones'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diskName != null) 'diskName': diskName!,
        if (replicaZones != null) 'replicaZones': replicaZones!,
      };
}

/// Request message for initializing the service.
class InitializeServiceRequest {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and t he request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// The resource type to which the default service config will be applied.
  ///
  /// Examples include, "compute.googleapis.com/Instance" and
  /// "storage.googleapis.com/Bucket".
  ///
  /// Required.
  core.String? resourceType;

  InitializeServiceRequest({this.requestId, this.resourceType});

  InitializeServiceRequest.fromJson(core.Map json_)
      : this(
          requestId: json_['requestId'] as core.String?,
          resourceType: json_['resourceType'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
        if (resourceType != null) 'resourceType': resourceType!,
      };
}

/// request message for InitiateBackup.
class InitiateBackupRequest {
  /// Resource ID of the Backup resource.
  ///
  /// Required.
  core.String? backupId;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  InitiateBackupRequest({this.backupId, this.requestId});

  InitiateBackupRequest.fromJson(core.Map json_)
      : this(
          backupId: json_['backupId'] as core.String?,
          requestId: json_['requestId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupId != null) 'backupId': backupId!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Response message for InitiateBackup.
class InitiateBackupResponse {
  /// The name of the backup that was created.
  core.String? backup;

  /// The generation id of the base backup.
  ///
  /// It is needed for the incremental backups.
  core.int? baseBackupGenerationId;

  /// The generation id of the new backup.
  core.int? newBackupGenerationId;

  InitiateBackupResponse({
    this.backup,
    this.baseBackupGenerationId,
    this.newBackupGenerationId,
  });

  InitiateBackupResponse.fromJson(core.Map json_)
      : this(
          backup: json_['backup'] as core.String?,
          baseBackupGenerationId: json_['baseBackupGenerationId'] as core.int?,
          newBackupGenerationId: json_['newBackupGenerationId'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (baseBackupGenerationId != null)
          'baseBackupGenerationId': baseBackupGenerationId!,
        if (newBackupGenerationId != null)
          'newBackupGenerationId': newBackupGenerationId!,
      };
}

/// Additional instance params.
class InstanceParams {
  /// Resource manager tags to be bound to the instance.
  ///
  /// Optional.
  core.Map<core.String, core.String>? resourceManagerTags;

  InstanceParams({this.resourceManagerTags});

  InstanceParams.fromJson(core.Map json_)
      : this(
          resourceManagerTags: (json_['resourceManagerTags']
                  as core.Map<core.String, core.dynamic>?)
              ?.map((key, value) => core.MapEntry(key, value as core.String)),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceManagerTags != null)
          'resourceManagerTags': resourceManagerTags!,
      };
}

/// Response message for List BackupPlanAssociation
class ListBackupPlanAssociationsResponse {
  /// The list of Backup Plan Associations in the project for the specified
  /// location.
  ///
  /// If the `{location}` value in the request is "-", the response contains a
  /// list of instances from all locations. In case any location is unreachable,
  /// the response will only return backup plan associations in reachable
  /// locations and the 'unreachable' field will be populated with a list of
  /// unreachable locations.
  core.List<BackupPlanAssociation>? backupPlanAssociations;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupPlanAssociationsResponse({
    this.backupPlanAssociations,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupPlanAssociationsResponse.fromJson(core.Map json_)
      : this(
          backupPlanAssociations:
              (json_['backupPlanAssociations'] as core.List?)
                  ?.map(
                    (value) => BackupPlanAssociation.fromJson(
                      value as core.Map<core.String, core.dynamic>,
                    ),
                  )
                  .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupPlanAssociations != null)
          'backupPlanAssociations': backupPlanAssociations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for getting a list of `BackupPlan`.
class ListBackupPlansResponse {
  /// The list of `BackupPlans` in the project for the specified location.
  ///
  /// If the `{location}` value in the request is "-", the response contains a
  /// list of resources from all locations. In case any location is unreachable,
  /// the response will only return backup plans in reachable locations and the
  /// 'unreachable' field will be populated with a list of unreachable
  /// locations. BackupPlan
  core.List<BackupPlan>? backupPlans;

  /// A token which may be sent as page_token in a subsequent `ListBackupPlans`
  /// call to retrieve the next page of results.
  ///
  /// If this field is omitted or empty, then there are no more results to
  /// return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupPlansResponse({
    this.backupPlans,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupPlansResponse.fromJson(core.Map json_)
      : this(
          backupPlans: (json_['backupPlans'] as core.List?)
              ?.map(
                (value) => BackupPlan.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupPlans != null) 'backupPlans': backupPlans!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for listing BackupVaults.
class ListBackupVaultsResponse {
  /// The list of BackupVault instances in the project for the specified
  /// location.
  ///
  /// If the '{location}' value in the request is "-", the response contains a
  /// list of instances from all locations. In case any location is unreachable,
  /// the response will only return backup vaults in reachable locations and the
  /// 'unreachable' field will be populated with a list of unreachable
  /// locations.
  core.List<BackupVault>? backupVaults;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupVaultsResponse({
    this.backupVaults,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupVaultsResponse.fromJson(core.Map json_)
      : this(
          backupVaults: (json_['backupVaults'] as core.List?)
              ?.map(
                (value) => BackupVault.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupVaults != null) 'backupVaults': backupVaults!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for listing Backups.
class ListBackupsResponse {
  /// The list of Backup instances in the project for the specified location.
  ///
  /// If the '{location}' value in the request is "-", the response contains a
  /// list of instances from all locations. In case any location is unreachable,
  /// the response will only return data sources in reachable locations and the
  /// 'unreachable' field will be populated with a list of unreachable
  /// locations.
  core.List<Backup>? backups;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({this.backups, this.nextPageToken, this.unreachable});

  ListBackupsResponse.fromJson(core.Map json_)
      : this(
          backups: (json_['backups'] as core.List?)
              ?.map(
                (value) => Backup.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for listing DataSources.
class ListDataSourcesResponse {
  /// The list of DataSource instances in the project for the specified
  /// location.
  ///
  /// If the '{location}' value in the request is "-", the response contains a
  /// list of instances from all locations. In case any location is unreachable,
  /// the response will only return data sources in reachable locations and the
  /// 'unreachable' field will be populated with a list of unreachable
  /// locations.
  core.List<DataSource>? dataSources;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListDataSourcesResponse({
    this.dataSources,
    this.nextPageToken,
    this.unreachable,
  });

  ListDataSourcesResponse.fromJson(core.Map json_)
      : this(
          dataSources: (json_['dataSources'] as core.List?)
              ?.map(
                (value) => DataSource.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSources != null) 'dataSources': dataSources!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Locations.ListLocations.
class ListLocationsResponse {
  /// A list of locations that matches the specified filter in the request.
  core.List<Location>? locations;

  /// The standard List next-page token.
  core.String? nextPageToken;

  ListLocationsResponse({this.locations, this.nextPageToken});

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: (json_['locations'] as core.List?)
              ?.map(
                (value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for listing management servers.
class ListManagementServersResponse {
  /// The list of ManagementServer instances in the project for the specified
  /// location.
  ///
  /// If the '{location}' value in the request is "-", the response contains a
  /// list of instances from all locations. In case any location is unreachable,
  /// the response will only return management servers in reachable locations
  /// and the 'unreachable' field will be populated with a list of unreachable
  /// locations.
  core.List<ManagementServer>? managementServers;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListManagementServersResponse({
    this.managementServers,
    this.nextPageToken,
    this.unreachable,
  });

  ListManagementServersResponse.fromJson(core.Map json_)
      : this(
          managementServers: (json_['managementServers'] as core.List?)
              ?.map(
                (value) => ManagementServer.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (managementServers != null) 'managementServers': managementServers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  ListOperationsResponse({this.nextPageToken, this.operations});

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map(
                (value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// ManagementServer describes a single BackupDR ManagementServer instance.
class ManagementServer {
  /// The hostname or ip address of the exposed AGM endpoints, used by BAs to
  /// connect to BA proxy.
  ///
  /// Output only.
  core.List<core.String>? baProxyUri;

  /// The time when the instance was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The description of the ManagementServer instance (2048 characters or
  /// less).
  ///
  /// Optional.
  core.String? description;

  /// Server specified ETag for the ManagementServer resource to prevent
  /// simultaneous updates from overwiting each other.
  ///
  /// Optional.
  core.String? etag;

  /// Resource labels to represent user provided metadata.
  ///
  /// Labels currently defined: 1. migrate_from_go= If set to true, the MS is
  /// created in migration ready mode.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// The hostname or ip address of the exposed AGM endpoints, used by clients
  /// to connect to AGM/RD graphical user interface and APIs.
  ///
  /// Output only.
  ManagementURI? managementUri;

  /// Identifier.
  ///
  /// The resource name.
  ///
  /// Output only.
  core.String? name;

  /// VPC networks to which the ManagementServer instance is connected.
  ///
  /// For this version, only a single network is supported. This field is
  /// optional if MS is created without PSA
  ///
  /// Optional.
  core.List<NetworkConfig>? networks;

  /// The OAuth 2.0 client id is required to make API calls to the BackupDR
  /// instance API of this ManagementServer.
  ///
  /// This is the value that should be provided in the 'aud' field of the OIDC
  /// ID Token (see openid specification
  /// https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
  ///
  /// Output only.
  core.String? oauth2ClientId;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzi;

  /// Reserved for future use.
  ///
  /// Output only.
  core.bool? satisfiesPzs;

  /// The ManagementServer state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "INSTANCE_STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : The instance is being created.
  /// - "READY" : The instance has been created and is fully usable.
  /// - "UPDATING" : The instance configuration is being updated. Certain kinds
  /// of updates may cause the instance to become unusable while the update is
  /// in progress.
  /// - "DELETING" : The instance is being deleted.
  /// - "REPAIRING" : The instance is being repaired and may be unstable.
  /// - "MAINTENANCE" : Maintenance is being performed on this instance.
  /// - "ERROR" : The instance is experiencing an issue and might be unusable.
  /// You can get further details from the statusMessage field of Instance
  /// resource.
  core.String? state;

  /// The type of the ManagementServer resource.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INSTANCE_TYPE_UNSPECIFIED" : Instance type is not mentioned.
  /// - "BACKUP_RESTORE" : Instance for backup and restore management (i.e.,
  /// AGM).
  core.String? type;

  /// The time when the instance was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The hostnames of the exposed AGM endpoints for both types of user i.e. 1p
  /// and 3p, used to connect AGM/RM UI.
  ///
  /// Output only.
  WorkforceIdentityBasedManagementURI? workforceIdentityBasedManagementUri;

  /// The OAuth client IDs for both types of user i.e. 1p and 3p.
  ///
  /// Output only.
  WorkforceIdentityBasedOAuth2ClientID? workforceIdentityBasedOauth2ClientId;

  ManagementServer({
    this.baProxyUri,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.managementUri,
    this.name,
    this.networks,
    this.oauth2ClientId,
    this.satisfiesPzi,
    this.satisfiesPzs,
    this.state,
    this.type,
    this.updateTime,
    this.workforceIdentityBasedManagementUri,
    this.workforceIdentityBasedOauth2ClientId,
  });

  ManagementServer.fromJson(core.Map json_)
      : this(
          baProxyUri: (json_['baProxyUri'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          etag: json_['etag'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(key, value as core.String),
          ),
          managementUri: json_.containsKey('managementUri')
              ? ManagementURI.fromJson(
                  json_['managementUri'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          name: json_['name'] as core.String?,
          networks: (json_['networks'] as core.List?)
              ?.map(
                (value) => NetworkConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          oauth2ClientId: json_['oauth2ClientId'] as core.String?,
          satisfiesPzi: json_['satisfiesPzi'] as core.bool?,
          satisfiesPzs: json_['satisfiesPzs'] as core.bool?,
          state: json_['state'] as core.String?,
          type: json_['type'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
          workforceIdentityBasedManagementUri:
              json_.containsKey('workforceIdentityBasedManagementUri')
                  ? WorkforceIdentityBasedManagementURI.fromJson(
                      json_['workforceIdentityBasedManagementUri']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          workforceIdentityBasedOauth2ClientId:
              json_.containsKey('workforceIdentityBasedOauth2ClientId')
                  ? WorkforceIdentityBasedOAuth2ClientID.fromJson(
                      json_['workforceIdentityBasedOauth2ClientId']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (baProxyUri != null) 'baProxyUri': baProxyUri!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (managementUri != null) 'managementUri': managementUri!,
        if (name != null) 'name': name!,
        if (networks != null) 'networks': networks!,
        if (oauth2ClientId != null) 'oauth2ClientId': oauth2ClientId!,
        if (satisfiesPzi != null) 'satisfiesPzi': satisfiesPzi!,
        if (satisfiesPzs != null) 'satisfiesPzs': satisfiesPzs!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (workforceIdentityBasedManagementUri != null)
          'workforceIdentityBasedManagementUri':
              workforceIdentityBasedManagementUri!,
        if (workforceIdentityBasedOauth2ClientId != null)
          'workforceIdentityBasedOauth2ClientId':
              workforceIdentityBasedOauth2ClientId!,
      };
}

/// ManagementURI for the Management Server resource.
class ManagementURI {
  /// The ManagementServer AGM/RD API URL.
  ///
  /// Output only.
  core.String? api;

  /// The ManagementServer AGM/RD WebUI URL.
  ///
  /// Output only.
  core.String? webUi;

  ManagementURI({this.api, this.webUi});

  ManagementURI.fromJson(core.Map json_)
      : this(
          api: json_['api'] as core.String?,
          webUi: json_['webUi'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (api != null) 'api': api!,
        if (webUi != null) 'webUi': webUi!,
      };
}

/// A metadata key/value entry.
class Metadata {
  /// Array of key/value pairs.
  ///
  /// The total size of all keys and values must be less than 512 KB.
  ///
  /// Optional.
  core.List<Entry>? items;

  Metadata({this.items});

  Metadata.fromJson(core.Map json_)
      : this(
          items: (json_['items'] as core.List?)
              ?.map(
                (value) => Entry.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// Network configuration for ManagementServer instance.
class NetworkConfig {
  /// The resource name of the Google Compute Engine VPC network to which the
  /// ManagementServer instance is connected.
  ///
  /// Optional.
  core.String? network;

  /// The network connect mode of the ManagementServer instance.
  ///
  /// For this version, only PRIVATE_SERVICE_ACCESS is supported.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PEERING_MODE_UNSPECIFIED" : Peering mode not set.
  /// - "PRIVATE_SERVICE_ACCESS" : Connect using Private Service Access to the
  /// Management Server. Private services access provides an IP address range
  /// for multiple Google Cloud services, including Cloud BackupDR.
  core.String? peeringMode;

  NetworkConfig({this.network, this.peeringMode});

  NetworkConfig.fromJson(core.Map json_)
      : this(
          network: json_['network'] as core.String?,
          peeringMode: json_['peeringMode'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (network != null) 'network': network!,
        if (peeringMode != null) 'peeringMode': peeringMode!,
      };
}

/// A network interface resource attached to an instance.
///
/// s
class NetworkInterface {
  /// An array of configurations for this interface.
  ///
  /// Currently, only one access config,ONE_TO_ONE_NAT is supported. If there
  /// are no accessConfigs specified, then this instance will have no external
  /// internet access.
  ///
  /// Optional.
  core.List<AccessConfig>? accessConfigs;

  /// An array of alias IP ranges for this network interface.
  ///
  /// You can only specify this field for network interfaces in VPC networks.
  ///
  /// Optional.
  core.List<AliasIpRange>? aliasIpRanges;

  /// The prefix length of the primary internal IPv6 range.
  ///
  /// Optional.
  core.int? internalIpv6PrefixLength;

  /// An array of IPv6 access configurations for this interface.
  ///
  /// Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If
  /// there is no ipv6AccessConfig specified, then this instance will have no
  /// external IPv6 Internet access.
  ///
  /// Optional.
  core.List<AccessConfig>? ipv6AccessConfigs;

  /// One of EXTERNAL, INTERNAL to indicate whether the IP can be accessed from
  /// the Internet.
  ///
  /// This field is always inherited from its subnetwork.
  ///
  /// Optional. Output only.
  /// Possible string values are:
  /// - "UNSPECIFIED_IPV6_ACCESS_TYPE" : IPv6 access type not set. Means this
  /// network interface hasn't been turned on IPv6 yet.
  /// - "INTERNAL" : This network interface can have internal IPv6.
  /// - "EXTERNAL" : This network interface can have external IPv6.
  core.String? ipv6AccessType;

  /// An IPv6 internal network address for this network interface.
  ///
  /// To use a static internal IP address, it must be unused and in the same
  /// region as the instance's zone. If not specified, Google Cloud will
  /// automatically assign an internal IPv6 address from the instance's
  /// subnetwork.
  ///
  /// Optional.
  core.String? ipv6Address;

  /// The name of the network interface, which is generated by the server.
  ///
  /// Output only.
  core.String? name;

  /// URL of the VPC network resource for this instance.
  ///
  /// Optional.
  core.String? network;

  /// The URL of the network attachment that this interface should connect to in
  /// the following format:
  /// projects/{project_number}/regions/{region_name}/networkAttachments/{network_attachment_name}.
  ///
  /// Optional.
  core.String? networkAttachment;

  /// An IPv4 internal IP address to assign to the instance for this network
  /// interface.
  ///
  /// If not specified by the user, an unused internal IP is assigned by the
  /// system.
  ///
  /// Optional.
  core.String? networkIP;

  /// The type of vNIC to be used on this interface.
  ///
  /// This may be gVNIC or VirtioNet.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NIC_TYPE_UNSPECIFIED" : Default should be NIC_TYPE_UNSPECIFIED.
  /// - "VIRTIO_NET" : VIRTIO
  /// - "GVNIC" : GVNIC
  core.String? nicType;

  /// The networking queue count that's specified by users for the network
  /// interface.
  ///
  /// Both Rx and Tx queues will be set to this number. It'll be empty if not
  /// specified by the users.
  ///
  /// Optional.
  core.int? queueCount;

  /// The stack type for this network interface.
  /// Possible string values are:
  /// - "STACK_TYPE_UNSPECIFIED" : Default should be STACK_TYPE_UNSPECIFIED.
  /// - "IPV4_ONLY" : The network interface will be assigned IPv4 address.
  /// - "IPV4_IPV6" : The network interface can have both IPv4 and IPv6
  /// addresses.
  core.String? stackType;

  /// The URL of the Subnetwork resource for this instance.
  ///
  /// Optional.
  core.String? subnetwork;

  NetworkInterface({
    this.accessConfigs,
    this.aliasIpRanges,
    this.internalIpv6PrefixLength,
    this.ipv6AccessConfigs,
    this.ipv6AccessType,
    this.ipv6Address,
    this.name,
    this.network,
    this.networkAttachment,
    this.networkIP,
    this.nicType,
    this.queueCount,
    this.stackType,
    this.subnetwork,
  });

  NetworkInterface.fromJson(core.Map json_)
      : this(
          accessConfigs: (json_['accessConfigs'] as core.List?)
              ?.map(
                (value) => AccessConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          aliasIpRanges: (json_['aliasIpRanges'] as core.List?)
              ?.map(
                (value) => AliasIpRange.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          internalIpv6PrefixLength:
              json_['internalIpv6PrefixLength'] as core.int?,
          ipv6AccessConfigs: (json_['ipv6AccessConfigs'] as core.List?)
              ?.map(
                (value) => AccessConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          ipv6AccessType: json_['ipv6AccessType'] as core.String?,
          ipv6Address: json_['ipv6Address'] as core.String?,
          name: json_['name'] as core.String?,
          network: json_['network'] as core.String?,
          networkAttachment: json_['networkAttachment'] as core.String?,
          networkIP: json_['networkIP'] as core.String?,
          nicType: json_['nicType'] as core.String?,
          queueCount: json_['queueCount'] as core.int?,
          stackType: json_['stackType'] as core.String?,
          subnetwork: json_['subnetwork'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessConfigs != null) 'accessConfigs': accessConfigs!,
        if (aliasIpRanges != null) 'aliasIpRanges': aliasIpRanges!,
        if (internalIpv6PrefixLength != null)
          'internalIpv6PrefixLength': internalIpv6PrefixLength!,
        if (ipv6AccessConfigs != null) 'ipv6AccessConfigs': ipv6AccessConfigs!,
        if (ipv6AccessType != null) 'ipv6AccessType': ipv6AccessType!,
        if (ipv6Address != null) 'ipv6Address': ipv6Address!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (networkAttachment != null) 'networkAttachment': networkAttachment!,
        if (networkIP != null) 'networkIP': networkIP!,
        if (nicType != null) 'nicType': nicType!,
        if (queueCount != null) 'queueCount': queueCount!,
        if (stackType != null) 'stackType': stackType!,
        if (subnetwork != null) 'subnetwork': subnetwork!,
      };
}

/// Network performance configuration.
class NetworkPerformanceConfig {
  /// The tier of the total egress bandwidth.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TIER_UNSPECIFIED" : This value is unused.
  /// - "DEFAULT" : Default network performance config.
  /// - "TIER_1" : Tier 1 network performance config.
  core.String? totalEgressBandwidthTier;

  NetworkPerformanceConfig({this.totalEgressBandwidthTier});

  NetworkPerformanceConfig.fromJson(core.Map json_)
      : this(
          totalEgressBandwidthTier:
              json_['totalEgressBandwidthTier'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (totalEgressBandwidthTier != null)
          'totalEgressBandwidthTier': totalEgressBandwidthTier!,
      };
}

/// Node Affinity: the configuration of desired nodes onto which this Instance
/// could be scheduled.
class NodeAffinity {
  /// Corresponds to the label key of Node resource.
  ///
  /// Optional.
  core.String? key;

  /// Defines the operation of node selection.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : Default value. This value is unused.
  /// - "IN" : Requires Compute Engine to seek for matched nodes.
  /// - "NOT_IN" : Requires Compute Engine to avoid certain nodes.
  core.String? operator;

  /// Corresponds to the label values of Node resource.
  ///
  /// Optional.
  core.List<core.String>? values;

  NodeAffinity({this.key, this.operator, this.values});

  NodeAffinity.fromJson(core.Map json_)
      : this(
          key: json_['key'] as core.String?,
          operator: json_['operator'] as core.String?,
          values: (json_['values'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (key != null) 'key': key!,
        if (operator != null) 'operator': operator!,
        if (values != null) 'values': values!,
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

  /// Service-specific metadata associated with the operation.
  ///
  /// It typically contains progress information and common metadata such as
  /// create time. Some services might not provide such metadata. Any method
  /// that returns a long-running operation should document the metadata type,
  /// if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it.
  ///
  /// If you use the default HTTP mapping, the `name` should be a resource name
  /// ending with `operations/{unique_id}`.
  core.String? name;

  /// The normal, successful response of the operation.
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

  Operation({this.done, this.error, this.metadata, this.name, this.response});

  Operation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
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

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members`, or principals, to a single `role`. Principals can be user
/// accounts, service accounts, Google groups, and domains (such as G Suite). A
/// `role` is a named list of permissions; each `role` can be an IAM predefined
/// role or a user-created custom role. For some types of Google Cloud
/// resources, a `binding` can also specify a `condition`, which is a logical
/// expression that allows access to a resource only if the expression evaluates
/// to `true`. A condition can add constraints based on attributes of the
/// request, the resource, or both. To learn which resources support conditions
/// in their IAM policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** ``` { "bindings": [ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": [
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": [
/// "user:eve@example.com" ], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag":
/// "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: -
/// members: - user:mike@example.com - group:admins@example.com -
/// domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
/// role: roles/resourcemanager.organizationAdmin - members: -
/// user:eve@example.com role: roles/resourcemanager.organizationViewer
/// condition: title: expirable access description: Does not grant access after
/// Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z')
/// etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features,
/// see the [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<AuditConfig>? auditConfigs;

  /// Associates a list of `members`, or principals, with a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// principal. The `bindings` in a `Policy` can refer to up to 1,500
  /// principals; up to 250 of these principals can be Google groups. Each
  /// occurrence of a principal counts towards these limits. For example, if the
  /// `bindings` grant 50 different roles to `user:alice@example.com`, and not
  /// to any other principal, then you can add another 1,450 principals to the
  /// `bindings` in the `Policy`.
  core.List<Binding>? bindings;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a policy from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform policy updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `getIamPolicy`, and
  /// systems are expected to put that etag in the request to `setIamPolicy` to
  /// ensure that their change will be applied to the same version of the
  /// policy. **Important:** If you use IAM Conditions, you must include the
  /// `etag` field whenever you call `setIamPolicy`. If you omit this field,
  /// then IAM allows you to overwrite a version `3` policy with a version `1`
  /// policy, and all of the conditions in the version `3` policy are lost.
  core.String? etag;
  core.List<core.int> get etagAsBytes => convert.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Specifies the format of the policy.
  ///
  /// Valid values are `0`, `1`, and `3`. Requests that specify an invalid value
  /// are rejected. Any operation that affects conditional role bindings must
  /// specify version `3`. This requirement applies to the following operations:
  /// * Getting a policy that includes a conditional role binding * Adding a
  /// conditional role binding to a policy * Changing a conditional role binding
  /// in a policy * Removing any role binding, with or without a condition, from
  /// a policy that includes conditions **Important:** If you use IAM
  /// Conditions, you must include the `etag` field whenever you call
  /// `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a
  /// version `3` policy with a version `1` policy, and all of the conditions in
  /// the version `3` policy are lost. If a policy does not include any
  /// conditions, operations on that policy may specify any valid version or
  /// leave the field unset. To learn which resources support conditions in
  /// their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  core.int? version;

  Policy({this.auditConfigs, this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: (json_['auditConfigs'] as core.List?)
              ?.map(
                (value) => AuditConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          bindings: (json_['bindings'] as core.List?)
              ?.map(
                (value) => Binding.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          etag: json_['etag'] as core.String?,
          version: json_['version'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Message for deleting a DataSource.
typedef RemoveDataSourceRequest = $Request00;

/// Request message for restoring from a Backup.
class RestoreBackupRequest {
  /// Compute Engine instance properties to be overridden during restore.
  ComputeInstanceRestoreProperties? computeInstanceRestoreProperties;

  /// Compute Engine target environment to be used during restore.
  ComputeInstanceTargetEnvironment? computeInstanceTargetEnvironment;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  RestoreBackupRequest({
    this.computeInstanceRestoreProperties,
    this.computeInstanceTargetEnvironment,
    this.requestId,
  });

  RestoreBackupRequest.fromJson(core.Map json_)
      : this(
          computeInstanceRestoreProperties:
              json_.containsKey('computeInstanceRestoreProperties')
                  ? ComputeInstanceRestoreProperties.fromJson(
                      json_['computeInstanceRestoreProperties']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          computeInstanceTargetEnvironment:
              json_.containsKey('computeInstanceTargetEnvironment')
                  ? ComputeInstanceTargetEnvironment.fromJson(
                      json_['computeInstanceTargetEnvironment']
                          as core.Map<core.String, core.dynamic>,
                    )
                  : null,
          requestId: json_['requestId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (computeInstanceRestoreProperties != null)
          'computeInstanceRestoreProperties': computeInstanceRestoreProperties!,
        if (computeInstanceTargetEnvironment != null)
          'computeInstanceTargetEnvironment': computeInstanceTargetEnvironment!,
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Message for rules config info.
class RuleConfigInfo {
  /// google.rpc.Status object to store the last backup error.
  ///
  /// Output only.
  Status? lastBackupError;

  /// The last backup state for rule.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAST_BACKUP_STATE_UNSPECIFIED" : State not set.
  /// - "FIRST_BACKUP_PENDING" : The first backup is pending.
  /// - "PERMISSION_DENIED" : The most recent backup could not be run/failed
  /// because of the lack of permissions.
  /// - "SUCCEEDED" : The last backup operation succeeded.
  /// - "FAILED" : The last backup operation failed.
  core.String? lastBackupState;

  /// The point in time when the last successful backup was captured from the
  /// source.
  ///
  /// Output only.
  core.String? lastSuccessfulBackupConsistencyTime;

  /// Backup Rule id fetched from backup plan.
  ///
  /// Output only.
  core.String? ruleId;

  RuleConfigInfo({
    this.lastBackupError,
    this.lastBackupState,
    this.lastSuccessfulBackupConsistencyTime,
    this.ruleId,
  });

  RuleConfigInfo.fromJson(core.Map json_)
      : this(
          lastBackupError: json_.containsKey('lastBackupError')
              ? Status.fromJson(
                  json_['lastBackupError']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          lastBackupState: json_['lastBackupState'] as core.String?,
          lastSuccessfulBackupConsistencyTime:
              json_['lastSuccessfulBackupConsistencyTime'] as core.String?,
          ruleId: json_['ruleId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lastBackupError != null) 'lastBackupError': lastBackupError!,
        if (lastBackupState != null) 'lastBackupState': lastBackupState!,
        if (lastSuccessfulBackupConsistencyTime != null)
          'lastSuccessfulBackupConsistencyTime':
              lastSuccessfulBackupConsistencyTime!,
        if (ruleId != null) 'ruleId': ruleId!,
      };
}

/// Sets the scheduling options for an Instance.
class Scheduling {
  /// Specifies whether the instance should be automatically restarted if it is
  /// terminated by Compute Engine (not terminated by a user).
  ///
  /// Optional.
  core.bool? automaticRestart;

  /// Specifies the termination action for the instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "INSTANCE_TERMINATION_ACTION_UNSPECIFIED" : Default value. This value is
  /// unused.
  /// - "DELETE" : Delete the VM.
  /// - "STOP" : Stop the VM without storing in-memory content. default action.
  core.String? instanceTerminationAction;

  /// Specifies the maximum amount of time a Local Ssd Vm should wait while
  /// recovery of the Local Ssd state is attempted.
  ///
  /// Its value should be in between 0 and 168 hours with hour granularity and
  /// the default value being 1 hour.
  ///
  /// Optional.
  SchedulingDuration? localSsdRecoveryTimeout;

  /// The minimum number of virtual CPUs this instance will consume when running
  /// on a sole-tenant node.
  ///
  /// Optional.
  core.int? minNodeCpus;

  /// A set of node affinity and anti-affinity configurations.
  ///
  /// Overrides reservationAffinity.
  ///
  /// Optional.
  core.List<NodeAffinity>? nodeAffinities;

  /// Defines the maintenance behavior for this instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ON_HOST_MAINTENANCE_UNSPECIFIED" : Default value. This value is unused.
  /// - "TERMINATE" : Tells Compute Engine to terminate and (optionally) restart
  /// the instance away from the maintenance activity.
  /// - "MIGRATE" : Default, Allows Compute Engine to automatically migrate
  /// instances out of the way of maintenance events.
  core.String? onHostMaintenance;

  /// Defines whether the instance is preemptible.
  ///
  /// Optional.
  core.bool? preemptible;

  /// Specifies the provisioning model of the instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PROVISIONING_MODEL_UNSPECIFIED" : Default value. This value is not
  /// used.
  /// - "STANDARD" : Standard provisioning with user controlled runtime, no
  /// discounts.
  /// - "SPOT" : Heavily discounted, no guaranteed runtime.
  core.String? provisioningModel;

  Scheduling({
    this.automaticRestart,
    this.instanceTerminationAction,
    this.localSsdRecoveryTimeout,
    this.minNodeCpus,
    this.nodeAffinities,
    this.onHostMaintenance,
    this.preemptible,
    this.provisioningModel,
  });

  Scheduling.fromJson(core.Map json_)
      : this(
          automaticRestart: json_['automaticRestart'] as core.bool?,
          instanceTerminationAction:
              json_['instanceTerminationAction'] as core.String?,
          localSsdRecoveryTimeout: json_.containsKey('localSsdRecoveryTimeout')
              ? SchedulingDuration.fromJson(
                  json_['localSsdRecoveryTimeout']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
          minNodeCpus: json_['minNodeCpus'] as core.int?,
          nodeAffinities: (json_['nodeAffinities'] as core.List?)
              ?.map(
                (value) => NodeAffinity.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              )
              .toList(),
          onHostMaintenance: json_['onHostMaintenance'] as core.String?,
          preemptible: json_['preemptible'] as core.bool?,
          provisioningModel: json_['provisioningModel'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automaticRestart != null) 'automaticRestart': automaticRestart!,
        if (instanceTerminationAction != null)
          'instanceTerminationAction': instanceTerminationAction!,
        if (localSsdRecoveryTimeout != null)
          'localSsdRecoveryTimeout': localSsdRecoveryTimeout!,
        if (minNodeCpus != null) 'minNodeCpus': minNodeCpus!,
        if (nodeAffinities != null) 'nodeAffinities': nodeAffinities!,
        if (onHostMaintenance != null) 'onHostMaintenance': onHostMaintenance!,
        if (preemptible != null) 'preemptible': preemptible!,
        if (provisioningModel != null) 'provisioningModel': provisioningModel!,
      };
}

/// A SchedulingDuration represents a fixed-length span of time represented as a
/// count of seconds and fractions of seconds at nanosecond resolution.
///
/// It is independent of any calendar and concepts like "day" or "month". Range
/// is approximately 10,000 years.
class SchedulingDuration {
  /// Span of time that's a fraction of a second at nanosecond resolution.
  ///
  /// Optional.
  core.int? nanos;

  /// Span of time at a resolution of a second.
  ///
  /// Optional.
  core.String? seconds;

  SchedulingDuration({this.nanos, this.seconds});

  SchedulingDuration.fromJson(core.Map json_)
      : this(
          nanos: json_['nanos'] as core.int?,
          seconds: json_['seconds'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
      };
}

/// A service account.
class ServiceAccount {
  /// Email address of the service account.
  ///
  /// Optional.
  core.String? email;

  /// The list of scopes to be made available for this service account.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  ServiceAccount({this.email, this.scopes});

  ServiceAccount.fromJson(core.Map json_)
      : this(
          email: json_['email'] as core.String?,
          scopes: (json_['scopes'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
        if (scopes != null) 'scopes': scopes!,
      };
}

/// ServiceLockInfo represents the details of a lock taken by the service on a
/// Backup resource.
class ServiceLockInfo {
  /// The name of the operation that created this lock.
  ///
  /// The lock will automatically be released when the operation completes.
  ///
  /// Output only.
  core.String? operation;

  ServiceLockInfo({this.operation});

  ServiceLockInfo.fromJson(core.Map json_)
      : this(operation: json_['operation'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
        if (operation != null) 'operation': operation!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Google Cloud services (such as Projects) might
  /// reject them.
  Policy? policy;

  /// OPTIONAL: A FieldMask specifying which fields of the policy to modify.
  ///
  /// Only the fields in the mask will be modified. If no mask is provided, the
  /// following default mask is used: `paths: "bindings, etag"`
  core.String? updateMask;

  SetIamPolicyRequest({this.policy, this.updateMask});

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          updateMask: json_['updateMask'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// Request message for SetStatusInternal method.
class SetInternalStatusRequest {
  /// The new BackupConfigState to set for the DataSource.
  ///
  /// Required. Output only.
  /// Possible string values are:
  /// - "BACKUP_CONFIG_STATE_UNSPECIFIED" : The possible states of backup
  /// configuration. Status not set.
  /// - "ACTIVE" : The data source is actively protected (i.e. there is a
  /// BackupPlanAssociation or Appliance SLA pointing to it)
  /// - "PASSIVE" : The data source is no longer protected (but may have backups
  /// under it)
  core.String? backupConfigState;

  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. The request ID must be a valid UUID with the exception that zero
  /// UUID is not supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// The value required for this method to work.
  ///
  /// This field must be the 32-byte SHA256 hash of the DataSourceID. The
  /// DataSourceID used here is only the final piece of the fully qualified
  /// resource path for this DataSource (i.e. the part after
  /// '.../dataSources/'). This field exists to make this method difficult to
  /// call since it is intended for use only by Backup Appliances.
  ///
  /// Required.
  core.String? value;
  core.List<core.int> get valueAsBytes => convert.base64.decode(value!);

  set valueAsBytes(core.List<core.int> bytes_) {
    value =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  SetInternalStatusRequest({
    this.backupConfigState,
    this.requestId,
    this.value,
  });

  SetInternalStatusRequest.fromJson(core.Map json_)
      : this(
          backupConfigState: json_['backupConfigState'] as core.String?,
          requestId: json_['requestId'] as core.String?,
          value: json_['value'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupConfigState != null) 'backupConfigState': backupConfigState!,
        if (requestId != null) 'requestId': requestId!,
        if (value != null) 'value': value!,
      };
}

/// `StandardSchedule` defines a schedule that run within the confines of a
/// defined window of days.
///
/// We can define recurrence type for schedule as HOURLY, DAILY, WEEKLY, MONTHLY
/// or YEARLY.
class StandardSchedule {
  /// A BackupWindow defines the window of day during which backup jobs will
  /// run.
  ///
  /// Jobs are queued at the beginning of the window and will be marked as
  /// `NOT_RUN` if they do not start by the end of the window. Note: running
  /// jobs will not be cancelled at the end of the window.
  ///
  /// Required.
  BackupWindow? backupWindow;

  /// Specifies days of months like 1, 5, or 14 on which jobs will run.
  ///
  /// Values for `days_of_month` are only applicable for `recurrence_type`,
  /// `MONTHLY` and `YEARLY`. A validation error will occur if other values are
  /// supplied.
  ///
  /// Optional.
  core.List<core.int>? daysOfMonth;

  /// Specifies days of week like, MONDAY or TUESDAY, on which jobs will run.
  ///
  /// This is required for `recurrence_type`, `WEEKLY` and is not applicable
  /// otherwise. A validation error will occur if a value is supplied and
  /// `recurrence_type` is not `WEEKLY`.
  ///
  /// Optional.
  core.List<core.String>? daysOfWeek;

  /// Specifies frequency for hourly backups.
  ///
  /// A hourly frequency of 2 means jobs will run every 2 hours from start time
  /// till end time defined. This is required for `recurrence_type`, `HOURLY`
  /// and is not applicable otherwise. A validation error will occur if a value
  /// is supplied and `recurrence_type` is not `HOURLY`. Value of hourly
  /// frequency should be between 6 and 23. Reason for limit : We found that
  /// there is bandwidth limitation of 3GB/S for GMI while taking a backup and
  /// 5GB/S while doing a restore. Given the amount of parallel backups and
  /// restore we are targeting, this will potentially take the backup time to
  /// mins and hours (in worst case scenario).
  ///
  /// Optional.
  core.int? hourlyFrequency;

  /// Specifies the months of year, like `FEBRUARY` and/or `MAY`, on which jobs
  /// will run.
  ///
  /// This field is only applicable when `recurrence_type` is `YEARLY`. A
  /// validation error will occur if other values are supplied.
  ///
  /// Optional.
  core.List<core.String>? months;

  /// Specifies the `RecurrenceType` for the schedule.
  ///
  /// Required.
  /// Possible string values are:
  /// - "RECURRENCE_TYPE_UNSPECIFIED" : recurrence type not set
  /// - "HOURLY" : The `BackupRule` is to be applied hourly.
  /// - "DAILY" : The `BackupRule` is to be applied daily.
  /// - "WEEKLY" : The `BackupRule` is to be applied weekly.
  /// - "MONTHLY" : The `BackupRule` is to be applied monthly.
  /// - "YEARLY" : The `BackupRule` is to be applied yearly.
  core.String? recurrenceType;

  /// The time zone to be used when interpreting the schedule.
  ///
  /// The value of this field must be a time zone name from the IANA tz
  /// database. See https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  /// for the list of valid timezone names. For e.g., Europe/Paris.
  ///
  /// Required.
  core.String? timeZone;

  /// Specifies a week day of the month like, FIRST SUNDAY or LAST MONDAY, on
  /// which jobs will run.
  ///
  /// This will be specified by two fields in `WeekDayOfMonth`, one for the day,
  /// e.g. `MONDAY`, and one for the week, e.g. `LAST`. This field is only
  /// applicable for `recurrence_type`, `MONTHLY` and `YEARLY`. A validation
  /// error will occur if other values are supplied.
  ///
  /// Optional.
  WeekDayOfMonth? weekDayOfMonth;

  StandardSchedule({
    this.backupWindow,
    this.daysOfMonth,
    this.daysOfWeek,
    this.hourlyFrequency,
    this.months,
    this.recurrenceType,
    this.timeZone,
    this.weekDayOfMonth,
  });

  StandardSchedule.fromJson(core.Map json_)
      : this(
          backupWindow: json_.containsKey('backupWindow')
              ? BackupWindow.fromJson(
                  json_['backupWindow'] as core.Map<core.String, core.dynamic>,
                )
              : null,
          daysOfMonth: (json_['daysOfMonth'] as core.List?)
              ?.map((value) => value as core.int)
              .toList(),
          daysOfWeek: (json_['daysOfWeek'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          hourlyFrequency: json_['hourlyFrequency'] as core.int?,
          months: (json_['months'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          recurrenceType: json_['recurrenceType'] as core.String?,
          timeZone: json_['timeZone'] as core.String?,
          weekDayOfMonth: json_.containsKey('weekDayOfMonth')
              ? WeekDayOfMonth.fromJson(
                  json_['weekDayOfMonth']
                      as core.Map<core.String, core.dynamic>,
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupWindow != null) 'backupWindow': backupWindow!,
        if (daysOfMonth != null) 'daysOfMonth': daysOfMonth!,
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (hourlyFrequency != null) 'hourlyFrequency': hourlyFrequency!,
        if (months != null) 'months': months!,
        if (recurrenceType != null) 'recurrenceType': recurrenceType!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (weekDayOfMonth != null) 'weekDayOfMonth': weekDayOfMonth!,
      };
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// A set of instance tags.
class Tags {
  /// An array of tags.
  ///
  /// Each tag must be 1-63 characters long, and comply with RFC1035.
  ///
  /// Optional.
  core.List<core.String>? items;

  Tags({this.items});

  Tags.fromJson(core.Map json_)
      : this(
          items: (json_['items'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (items != null) 'items': items!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Request message for triggering a backup.
class TriggerBackupRequest {
  /// An optional request ID to identify requests.
  ///
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  /// backup rule_id for which a backup needs to be triggered.
  ///
  /// Required.
  core.String? ruleId;

  TriggerBackupRequest({this.requestId, this.ruleId});

  TriggerBackupRequest.fromJson(core.Map json_)
      : this(
          requestId: json_['requestId'] as core.String?,
          ruleId: json_['ruleId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
        if (ruleId != null) 'ruleId': ruleId!,
      };
}

/// `WeekDayOfMonth` defines the week day of the month on which the backups will
/// run.
///
/// The message combines a `WeekOfMonth` and `DayOfWeek` to produce values like
/// `FIRST`/`MONDAY` or `LAST`/`FRIDAY`.
class WeekDayOfMonth {
  /// Specifies the day of the week.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? dayOfWeek;

  /// Specifies the week of the month.
  ///
  /// Required.
  /// Possible string values are:
  /// - "WEEK_OF_MONTH_UNSPECIFIED" : The zero value. Do not use.
  /// - "FIRST" : The first week of the month.
  /// - "SECOND" : The second week of the month.
  /// - "THIRD" : The third week of the month.
  /// - "FOURTH" : The fourth week of the month.
  /// - "LAST" : The last week of the month.
  core.String? weekOfMonth;

  WeekDayOfMonth({this.dayOfWeek, this.weekOfMonth});

  WeekDayOfMonth.fromJson(core.Map json_)
      : this(
          dayOfWeek: json_['dayOfWeek'] as core.String?,
          weekOfMonth: json_['weekOfMonth'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (weekOfMonth != null) 'weekOfMonth': weekOfMonth!,
      };
}

/// ManagementURI depending on the Workforce Identity i.e. either 1p or 3p.
class WorkforceIdentityBasedManagementURI {
  /// First party Management URI for Google Identities.
  ///
  /// Output only.
  core.String? firstPartyManagementUri;

  /// Third party Management URI for External Identity Providers.
  ///
  /// Output only.
  core.String? thirdPartyManagementUri;

  WorkforceIdentityBasedManagementURI({
    this.firstPartyManagementUri,
    this.thirdPartyManagementUri,
  });

  WorkforceIdentityBasedManagementURI.fromJson(core.Map json_)
      : this(
          firstPartyManagementUri:
              json_['firstPartyManagementUri'] as core.String?,
          thirdPartyManagementUri:
              json_['thirdPartyManagementUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstPartyManagementUri != null)
          'firstPartyManagementUri': firstPartyManagementUri!,
        if (thirdPartyManagementUri != null)
          'thirdPartyManagementUri': thirdPartyManagementUri!,
      };
}

/// OAuth Client ID depending on the Workforce Identity i.e. either 1p or 3p,
class WorkforceIdentityBasedOAuth2ClientID {
  /// First party OAuth Client ID for Google Identities.
  ///
  /// Output only.
  core.String? firstPartyOauth2ClientId;

  /// Third party OAuth Client ID for External Identity Providers.
  ///
  /// Output only.
  core.String? thirdPartyOauth2ClientId;

  WorkforceIdentityBasedOAuth2ClientID({
    this.firstPartyOauth2ClientId,
    this.thirdPartyOauth2ClientId,
  });

  WorkforceIdentityBasedOAuth2ClientID.fromJson(core.Map json_)
      : this(
          firstPartyOauth2ClientId:
              json_['firstPartyOauth2ClientId'] as core.String?,
          thirdPartyOauth2ClientId:
              json_['thirdPartyOauth2ClientId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (firstPartyOauth2ClientId != null)
          'firstPartyOauth2ClientId': firstPartyOauth2ClientId!,
        if (thirdPartyOauth2ClientId != null)
          'thirdPartyOauth2ClientId': thirdPartyOauth2ClientId!,
      };
}
