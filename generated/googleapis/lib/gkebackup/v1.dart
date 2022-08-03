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

/// Backup for GKE API - v1
///
/// Backup for GKE is a managed Kubernetes workload backup and restore service
/// for GKE clusters.
///
/// For more information, see
/// <https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke>
///
/// Create an instance of [BackupForGKEApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsBackupPlansResource]
///       - [ProjectsLocationsBackupPlansBackupsResource]
///         - [ProjectsLocationsBackupPlansBackupsVolumeBackupsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRestorePlansResource]
///       - [ProjectsLocationsRestorePlansRestoresResource]
///         - [ProjectsLocationsRestorePlansRestoresVolumeRestoresResource]
library gkebackup.v1;

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

/// Backup for GKE is a managed Kubernetes workload backup and restore service
/// for GKE clusters.
class BackupForGKEApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BackupForGKEApi(http.Client client,
      {core.String rootUrl = 'https://gkebackup.googleapis.com/',
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

  ProjectsLocationsBackupPlansResource get backupPlans =>
      ProjectsLocationsBackupPlansResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRestorePlansResource get restorePlans =>
      ProjectsLocationsRestorePlansResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Deletes a long-running operation.
  ///
  /// This method indicates that the client is no longer interested in the
  /// operation result. It does not cancel the operation. If the server doesn't
  /// support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be deleted.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
  async.Future<Empty> deleteOperations(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Location.fromJson(_response as core.Map<core.String, core.dynamic>);
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/locations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListLocationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackupPlansResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupPlansBackupsResource get backups =>
      ProjectsLocationsBackupPlansBackupsResource(_requester);

  ProjectsLocationsBackupPlansResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new BackupPlan in a given location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location within which to create the BackupPlan.
  /// Format: `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backupPlanId] - Required. The client-provided short name for the
  /// BackupPlan resource. This name must: - be between 1 and 63 characters long
  /// (inclusive) - consist of only lower-case ASCII letters, numbers, and
  /// dashes - start with a lower-case letter - end with a lower-case letter or
  /// number - be unique within the set of BackupPlans in this location
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    BackupPlan request,
    core.String parent, {
    core.String? backupPlanId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (backupPlanId != null) 'backupPlanId': [backupPlanId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backupPlans';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing BackupPlan.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Fully qualified BackupPlan name. Format: `projects / *
  /// /locations / * /backupPlans / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
  ///
  /// [etag] - If provided, this value must match the current value of the
  /// target BackupPlan's etag field or the request is rejected.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the details of a single BackupPlan.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Fully qualified BackupPlan name. Format: `projects / *
  /// /locations / * /backupPlans / * `
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
  async.Future<BackupPlan> get(
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
    return BackupPlan.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists BackupPlans in a given location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location that contains the BackupPlans to list.
  /// Format: `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Field match expression used to filter the results.
  ///
  /// [orderBy] - Field by which to sort the results.
  ///
  /// [pageSize] - The target number of results to return in a single response.
  /// If not specified, a default value will be chosen by the service. Note that
  /// the response may inclue a partial list and a caller should only rely on
  /// the response's next_page_token to determine if there are more instances
  /// left to be queried.
  ///
  /// [pageToken] - The value of next_page_token received from a previous
  /// `ListBackupPlans` call. Provide this to retrieve the subsequent page in a
  /// multi-page list of results. When paginating, all other parameters provided
  /// to `ListBackupPlans` must match the call that provided the page token.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backupPlans';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBackupPlansResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a BackupPlan.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The full name of the BackupPlan resource. Format:
  /// `projects / * /locations / * /backupPlans / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
  ///
  /// [updateMask] - This is used to specify the fields to be overwritten in the
  /// BackupPlan targeted for update. The values for each of these updated
  /// fields will be taken from the `backup_plan` provided with this request.
  /// Field names are relative to the root of the resource (e.g., `description`,
  /// `backup_config.include_volume_data`, etc.) If no `update_mask` is
  /// provided, all fields in `backup_plan` will be written to the target
  /// BackupPlan resource. Note that OUTPUT_ONLY and IMMUTABLE fields in
  /// `backup_plan` are ignored and are not used to update the target
  /// BackupPlan.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    BackupPlan request,
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
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackupPlansBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupPlansBackupsVolumeBackupsResource get volumeBackups =>
      ProjectsLocationsBackupPlansBackupsVolumeBackupsResource(_requester);

  ProjectsLocationsBackupPlansBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a Backup for the given BackupPlan.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The BackupPlan within which to create the Backup.
  /// Format: `projects / * /locations / * /backupPlans / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
  ///
  /// [backupId] - The client-provided short name for the Backup resource. This
  /// name must: - be between 1 and 63 characters long (inclusive) - consist of
  /// only lower-case ASCII letters, numbers, and dashes - start with a
  /// lower-case letter - end with a lower-case letter or number - be unique
  /// within the set of Backups in this BackupPlan
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    Backup request,
    core.String parent, {
    core.String? backupId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the Backup resource. Format: `projects / *
  /// /locations / * /backupPlans / * /backups / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [etag] - If provided, this value must match the current value of the
  /// target Backup's etag field or the request is rejected.
  ///
  /// [force] - If set to true, any VolumeBackups below this Backup will also be
  /// deleted. Otherwise, the request will only succeed if the Backup has no
  /// VolumeBackups.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.bool? force,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the details of a single Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full name of the Backup resource. Format: `projects / *
  /// /locations / * /backupPlans / * /backups / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+$`.
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
    return Backup.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Backups for a given BackupPlan.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The BackupPlan that contains the Backups to list.
  /// Format: `projects / * /locations / * /backupPlans / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+$`.
  ///
  /// [filter] - Field match expression used to filter the results.
  ///
  /// [orderBy] - Field by which to sort the results.
  ///
  /// [pageSize] - The target number of results to return in a single response.
  /// If not specified, a default value will be chosen by the service. Note that
  /// the response may inclue a partial list and a caller should only rely on
  /// the response's next_page_token to determine if there are more instances
  /// left to be queried.
  ///
  /// [pageToken] - The value of next_page_token received from a previous
  /// `ListBackups` call. Provide this to retrieve the subsequent page in a
  /// multi-page list of results. When paginating, all other parameters provided
  /// to `ListBackups` must match the call that provided the page token.
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
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBackupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a Backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The fully qualified name of the Backup. `projects /
  /// * /locations / * /backupPlans / * /backups / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [updateMask] - This is used to specify the fields to be overwritten in the
  /// Backup targeted for update. The values for each of these updated fields
  /// will be taken from the `backup_plan` provided with this request. Field
  /// names are relative to the root of the resource. If no `update_mask` is
  /// provided, all fields in `backup` will be written to the target Backup
  /// resource. Note that OUTPUT_ONLY and IMMUTABLE fields in `backup` are
  /// ignored and are not used to update the target Backup.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    Backup request,
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
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsBackupPlansBackupsVolumeBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupPlansBackupsVolumeBackupsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Retrieve the details of a single VolumeBackup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full name of the VolumeBackup resource. Format:
  /// `projects / * /locations / * /backupPlans / * /backups / * /volumeBackups
  /// / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+/volumeBackups/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VolumeBackup].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VolumeBackup> get(
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
    return VolumeBackup.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+/volumeBackups/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the VolumeBackups for a given Backup.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Backup that contains the VolumeBackups to list.
  /// Format: `projects / * /locations / * /backupPlans / * /backups / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [filter] - Field match expression used to filter the results.
  ///
  /// [orderBy] - Field by which to sort the results.
  ///
  /// [pageSize] - The target number of results to return in a single response.
  /// If not specified, a default value will be chosen by the service. Note that
  /// the response may inclue a partial list and a caller should only rely on
  /// the response's next_page_token to determine if there are more instances
  /// left to be queried.
  ///
  /// [pageToken] - The value of next_page_token received from a previous
  /// `ListVolumeBackups` call. Provide this to retrieve the subsequent page in
  /// a multi-page list of results. When paginating, all other parameters
  /// provided to `ListVolumeBackups` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVolumeBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVolumeBackupsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/volumeBackups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVolumeBackupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+/volumeBackups/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPlans/\[^/\]+/backups/\[^/\]+/volumeBackups/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// Operation.error value with a google.rpc.Status.code of 1, corresponding to
  /// `Code.CANCELLED`.
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
    GoogleLongrunningCancelOperationRequest request,
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/operations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
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
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists operations that match the specified filter in the request.
  ///
  /// If the server doesn't support this method, it returns `UNIMPLEMENTED`.
  /// NOTE: the `name` binding allows API services to override the binding to
  /// use different resource name schemes, such as `users / * /operations`. To
  /// override the binding, API services can add a binding such as
  /// `"/v1/{name=users / * }/operations"` to their service configuration. For
  /// backwards compatibility, the default name includes the operations
  /// collection id, however overriding users must ensure the name binding is
  /// the parent resource, without the operations collection id.
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
  /// Completes with a [GoogleLongrunningListOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningListOperationsResponse> list(
    core.String name, {
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

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/operations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GoogleLongrunningListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRestorePlansResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRestorePlansRestoresResource get restores =>
      ProjectsLocationsRestorePlansRestoresResource(_requester);

  ProjectsLocationsRestorePlansResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new RestorePlan in a given location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location within which to create the RestorePlan.
  /// Format: `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [restorePlanId] - Required. The client-provided short name for the
  /// RestorePlan resource. This name must: - be between 1 and 63 characters
  /// long (inclusive) - consist of only lower-case ASCII letters, numbers, and
  /// dashes - start with a lower-case letter - end with a lower-case letter or
  /// number - be unique within the set of RestorePlans in this location
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    RestorePlan request,
    core.String parent, {
    core.String? restorePlanId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (restorePlanId != null) 'restorePlanId': [restorePlanId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/restorePlans';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing RestorePlan.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Fully qualified RestorePlan name. Format: `projects / *
  /// /locations / * /restorePlans / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+$`.
  ///
  /// [etag] - If provided, this value must match the current value of the
  /// target RestorePlan's etag field or the request is rejected.
  ///
  /// [force] - If set to true, any Restores below this RestorePlan will also be
  /// deleted. Otherwise, the request will only succeed if the RestorePlan has
  /// no Restores.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.bool? force,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieve the details of a single RestorePlan.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Fully qualified RestorePlan name. Format: `projects / *
  /// /locations / * /restorePlans / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RestorePlan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RestorePlan> get(
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
    return RestorePlan.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists RestorePlans in a given location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location that contains the RestorePlans to list.
  /// Format: `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Field match expression used to filter the results.
  ///
  /// [orderBy] - Field by which to sort the results.
  ///
  /// [pageSize] - The target number of results to return in a single response.
  /// If not specified, a default value will be chosen by the service. Note that
  /// the response may inclue a partial list and a caller should only rely on
  /// the response's next_page_token to determine if there are more instances
  /// left to be queried.
  ///
  /// [pageToken] - The value of next_page_token received from a previous
  /// `ListRestorePlans` call. Provide this to retrieve the subsequent page in a
  /// multi-page list of results. When paginating, all other parameters provided
  /// to `ListRestorePlans` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRestorePlansResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRestorePlansResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/restorePlans';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRestorePlansResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a RestorePlan.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The full name of the RestorePlan resource. Format:
  /// `projects / * /locations / * /restorePlans / * `.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+$`.
  ///
  /// [updateMask] - This is used to specify the fields to be overwritten in the
  /// RestorePlan targeted for update. The values for each of these updated
  /// fields will be taken from the `restore_plan` provided with this request.
  /// Field names are relative to the root of the resource. If no `update_mask`
  /// is provided, all fields in `restore_plan` will be written to the target
  /// RestorePlan resource. Note that OUTPUT_ONLY and IMMUTABLE fields in
  /// `restore_plan` are ignored and are not used to update the target
  /// RestorePlan.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    RestorePlan request,
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
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRestorePlansRestoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRestorePlansRestoresVolumeRestoresResource
      get volumeRestores =>
          ProjectsLocationsRestorePlansRestoresVolumeRestoresResource(
              _requester);

  ProjectsLocationsRestorePlansRestoresResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Restore for the given RestorePlan.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The RestorePlan within which to create the Restore.
  /// Format: `projects / * /locations / * /restorePlans / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+$`.
  ///
  /// [restoreId] - Required. The client-provided short name for the Restore
  /// resource. This name must: - be between 1 and 63 characters long
  /// (inclusive) - consist of only lower-case ASCII letters, numbers, and
  /// dashes - start with a lower-case letter - end with a lower-case letter or
  /// number - be unique within the set of Restores in this RestorePlan.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> create(
    Restore request,
    core.String parent, {
    core.String? restoreId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (restoreId != null) 'restoreId': [restoreId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/restores';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing Restore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full name of the Restore Format: `projects / *
  /// /locations / * /restorePlans / * /restores / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+$`.
  ///
  /// [etag] - If provided, this value must match the current value of the
  /// target Restore's etag field or the request is rejected.
  ///
  /// [force] - If set to true, any VolumeRestores below this restore will also
  /// be deleted. Otherwise, the request will only succeed if the restore has no
  /// VolumeRestores.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> delete(
    core.String name, {
    core.String? etag,
    core.bool? force,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (etag != null) 'etag': [etag],
      if (force != null) 'force': ['${force}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Retrieves the details of a single Restore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the restore resource. Format: `projects / *
  /// /locations / * /restorePlans / * /restores / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Restore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Restore> get(
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
    return Restore.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the Restores for a given RestorePlan.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The RestorePlan that contains the Restores to list.
  /// Format: `projects / * /locations / * /restorePlans / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+$`.
  ///
  /// [filter] - Field match expression used to filter the results.
  ///
  /// [orderBy] - Field by which to sort the results.
  ///
  /// [pageSize] - The target number of results to return in a single response.
  /// If not specified, a default value will be chosen by the service. Note that
  /// the response may inclue a partial list and a caller should only rely on
  /// the response's next_page_token to determine if there are more instances
  /// left to be queried.
  ///
  /// [pageToken] - The value of next_page_token received from a previous
  /// `ListRestores` call. Provide this to retrieve the subsequent page in a
  /// multi-page list of results. When paginating, all other parameters provided
  /// to `ListRestores` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRestoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRestoresResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/restores';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRestoresResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Update a Restore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The full name of the Restore resource. Format:
  /// `projects / * /locations / * /restorePlans / * /restores / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+$`.
  ///
  /// [updateMask] - This is used to specify the fields to be overwritten in the
  /// Restore targeted for update. The values for each of these updated fields
  /// will be taken from the `restore` provided with this request. Field names
  /// are relative to the root of the resource. If no `update_mask` is provided,
  /// all fields in `restore` will be written to the target Restore resource.
  /// Note that OUTPUT_ONLY and IMMUTABLE fields in `restore` are ignored and
  /// are not used to update the target Restore.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> patch(
    Restore request,
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
    return GoogleLongrunningOperation.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRestorePlansRestoresVolumeRestoresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRestorePlansRestoresVolumeRestoresResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Retrieve the details of a single VolumeRestore.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Full name of the VolumeRestore resource. Format:
  /// `projects / * /locations / * /restorePlans / * /restores / *
  /// /volumeRestores / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+/volumeRestores/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VolumeRestore].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VolumeRestore> get(
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
    return VolumeRestore.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+/volumeRestores/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (options_requestedPolicyVersion != null)
        'options.requestedPolicyVersion': ['${options_requestedPolicyVersion}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the VolumeRestores for a given Restore.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The Restore that contains the VolumeRestores to list.
  /// Format: `projects / * /locations / * /restorePlans / * /restores / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+$`.
  ///
  /// [filter] - Field match expression used to filter the results.
  ///
  /// [orderBy] - Field by which to sort the results.
  ///
  /// [pageSize] - The target number of results to return in a single response.
  /// If not specified, a default value will be chosen by the service. Note that
  /// the response may inclue a partial list and a caller should only rely on
  /// the response's next_page_token to determine if there are more instances
  /// left to be queried.
  ///
  /// [pageToken] - The value of next_page_token received from a previous
  /// `ListVolumeRestores` call. Provide this to retrieve the subsequent page in
  /// a multi-page list of results. When paginating, all other parameters
  /// provided to `ListVolumeRestores` must match the call that provided the
  /// page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVolumeRestoresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVolumeRestoresResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/volumeRestores';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListVolumeRestoresResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+/volumeRestores/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':setIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/restorePlans/\[^/\]+/restores/\[^/\]+/volumeRestores/\[^/\]+$`.
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
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$resource') + ':testIamPermissions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return TestIamPermissionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
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

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map _json)
      : this(
          auditLogConfigs: _json.containsKey('auditLogConfigs')
              ? (_json['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: _json.containsKey('service')
              ? _json['service'] as core.String
              : null,
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

/// Represents a request to perform a single point-in-time capture of some
/// portion of the state of a GKE cluster, the record of the backup operation
/// itself, and an anchor for the underlying artifacts that comprise the Backup
/// (the config backup and VolumeBackups).
///
/// Next id: 28
class Backup {
  /// If True, all namespaces were included in the Backup.
  ///
  /// Output only.
  core.bool? allNamespaces;

  /// Information about the GKE cluster from which this Backup was created.
  ///
  /// Output only.
  ClusterMetadata? clusterMetadata;

  /// Completion time of the Backup
  ///
  /// Output only.
  core.String? completeTime;

  /// The size of the config backup in bytes.
  ///
  /// Output only.
  core.String? configBackupSizeBytes;

  /// Whether or not the Backup contains Kubernetes Secrets.
  ///
  /// Controlled by the parent BackupPlan's include_secrets value.
  ///
  /// Output only.
  core.bool? containsSecrets;

  /// Whether or not the Backup contains volume data.
  ///
  /// Controlled by the parent BackupPlan's include_volume_data value.
  ///
  /// Output only.
  core.bool? containsVolumeData;

  /// The timestamp when this Backup resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Minimum age for this Backup (in days).
  ///
  /// If this field is set to a non-zero value, the Backup will be "locked"
  /// against deletion (either manual or automatic deletion) for the number of
  /// days provided (measured from the creation time of the Backup). MUST be an
  /// integer value between 0-90 (inclusive). Defaults to parent BackupPlan's
  /// backup_delete_lock_days setting and may only be increased (either at
  /// creation time or in a subsequent update).
  core.int? deleteLockDays;

  /// The time at which an existing delete lock will expire for this backup
  /// (calculated from create_time + delete_lock_days).
  ///
  /// Output only.
  core.String? deleteLockExpireTime;

  /// User specified descriptive string for this Backup.
  core.String? description;

  /// The customer managed encryption key that was used to encrypt the Backup's
  /// artifacts.
  ///
  /// Inherited from the parent BackupPlan's encryption_key value.
  ///
  /// Output only.
  EncryptionKey? encryptionKey;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a backup from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform backup updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `GetBackup`, and
  /// systems are expected to put that etag in the request to `UpdateBackup` or
  /// `DeleteBackup` to ensure that their change will be applied to the same
  /// version of the resource.
  ///
  /// Output only.
  core.String? etag;

  /// A set of custom labels supplied by user.
  core.Map<core.String, core.String>? labels;

  /// This flag indicates whether this Backup resource was created manually by a
  /// user or via a schedule in the BackupPlan.
  ///
  /// A value of True means that the Backup was created manually.
  ///
  /// Output only.
  core.bool? manual;

  /// The fully qualified name of the Backup.
  ///
  /// `projects / * /locations / * /backupPlans / * /backups / * `
  ///
  /// Output only.
  core.String? name;

  /// The total number of Kubernetes Pods contained in the Backup.
  ///
  /// Output only.
  core.int? podCount;

  /// The total number of Kubernetes resources included in the Backup.
  ///
  /// Output only.
  core.int? resourceCount;

  /// The age (in days) after which this Backup will be automatically deleted.
  ///
  /// Must be an integer value \>= 0: - If 0, no automatic deletion will occur
  /// for this Backup. - If not 0, this must be \>= delete_lock_days and \<=
  /// 365. Once a Backup is created, this value may only be increased. Defaults
  /// to the parent BackupPlan's backup_retain_days value.
  core.int? retainDays;

  /// The time at which this Backup will be automatically deleted (calculated
  /// from create_time + retain_days).
  ///
  /// Output only.
  core.String? retainExpireTime;

  /// If set, the list of ProtectedApplications whose resources were included in
  /// the Backup.
  ///
  /// Output only.
  NamespacedNames? selectedApplications;

  /// If set, the list of namespaces that were included in the Backup.
  ///
  /// Output only.
  Namespaces? selectedNamespaces;

  /// The total size of the Backup in bytes = config backup size + sum(volume
  /// backup sizes)
  ///
  /// Output only.
  core.String? sizeBytes;

  /// Current state of the Backup
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The Backup resource is in the process of being
  /// created.
  /// - "CREATING" : The Backup resource has been created and the associated
  /// BackupJob Kubernetes resource has been injected into the source cluster.
  /// - "IN_PROGRESS" : The gkebackup agent in the cluster has begun executing
  /// the backup operation.
  /// - "SUCCEEDED" : The backup operation has completed successfully.
  /// - "FAILED" : The backup operation has failed.
  /// - "DELETING" : This Backup resource (and its associated artifacts) is in
  /// the process of being deleted.
  core.String? state;

  /// Human-readable description of why the backup is in the current `state`.
  ///
  /// Output only.
  core.String? stateReason;

  /// Server generated global unique identifier of
  /// [UUID4](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when this Backup resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The total number of volume backups contained in the Backup.
  ///
  /// Output only.
  core.int? volumeCount;

  Backup({
    this.allNamespaces,
    this.clusterMetadata,
    this.completeTime,
    this.configBackupSizeBytes,
    this.containsSecrets,
    this.containsVolumeData,
    this.createTime,
    this.deleteLockDays,
    this.deleteLockExpireTime,
    this.description,
    this.encryptionKey,
    this.etag,
    this.labels,
    this.manual,
    this.name,
    this.podCount,
    this.resourceCount,
    this.retainDays,
    this.retainExpireTime,
    this.selectedApplications,
    this.selectedNamespaces,
    this.sizeBytes,
    this.state,
    this.stateReason,
    this.uid,
    this.updateTime,
    this.volumeCount,
  });

  Backup.fromJson(core.Map _json)
      : this(
          allNamespaces: _json.containsKey('allNamespaces')
              ? _json['allNamespaces'] as core.bool
              : null,
          clusterMetadata: _json.containsKey('clusterMetadata')
              ? ClusterMetadata.fromJson(_json['clusterMetadata']
                  as core.Map<core.String, core.dynamic>)
              : null,
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          configBackupSizeBytes: _json.containsKey('configBackupSizeBytes')
              ? _json['configBackupSizeBytes'] as core.String
              : null,
          containsSecrets: _json.containsKey('containsSecrets')
              ? _json['containsSecrets'] as core.bool
              : null,
          containsVolumeData: _json.containsKey('containsVolumeData')
              ? _json['containsVolumeData'] as core.bool
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deleteLockDays: _json.containsKey('deleteLockDays')
              ? _json['deleteLockDays'] as core.int
              : null,
          deleteLockExpireTime: _json.containsKey('deleteLockExpireTime')
              ? _json['deleteLockExpireTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          encryptionKey: _json.containsKey('encryptionKey')
              ? EncryptionKey.fromJson(
                  _json['encryptionKey'] as core.Map<core.String, core.dynamic>)
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          manual:
              _json.containsKey('manual') ? _json['manual'] as core.bool : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          podCount: _json.containsKey('podCount')
              ? _json['podCount'] as core.int
              : null,
          resourceCount: _json.containsKey('resourceCount')
              ? _json['resourceCount'] as core.int
              : null,
          retainDays: _json.containsKey('retainDays')
              ? _json['retainDays'] as core.int
              : null,
          retainExpireTime: _json.containsKey('retainExpireTime')
              ? _json['retainExpireTime'] as core.String
              : null,
          selectedApplications: _json.containsKey('selectedApplications')
              ? NamespacedNames.fromJson(_json['selectedApplications']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selectedNamespaces: _json.containsKey('selectedNamespaces')
              ? Namespaces.fromJson(_json['selectedNamespaces']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sizeBytes: _json.containsKey('sizeBytes')
              ? _json['sizeBytes'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateReason: _json.containsKey('stateReason')
              ? _json['stateReason'] as core.String
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          volumeCount: _json.containsKey('volumeCount')
              ? _json['volumeCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allNamespaces != null) 'allNamespaces': allNamespaces!,
        if (clusterMetadata != null) 'clusterMetadata': clusterMetadata!,
        if (completeTime != null) 'completeTime': completeTime!,
        if (configBackupSizeBytes != null)
          'configBackupSizeBytes': configBackupSizeBytes!,
        if (containsSecrets != null) 'containsSecrets': containsSecrets!,
        if (containsVolumeData != null)
          'containsVolumeData': containsVolumeData!,
        if (createTime != null) 'createTime': createTime!,
        if (deleteLockDays != null) 'deleteLockDays': deleteLockDays!,
        if (deleteLockExpireTime != null)
          'deleteLockExpireTime': deleteLockExpireTime!,
        if (description != null) 'description': description!,
        if (encryptionKey != null) 'encryptionKey': encryptionKey!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (manual != null) 'manual': manual!,
        if (name != null) 'name': name!,
        if (podCount != null) 'podCount': podCount!,
        if (resourceCount != null) 'resourceCount': resourceCount!,
        if (retainDays != null) 'retainDays': retainDays!,
        if (retainExpireTime != null) 'retainExpireTime': retainExpireTime!,
        if (selectedApplications != null)
          'selectedApplications': selectedApplications!,
        if (selectedNamespaces != null)
          'selectedNamespaces': selectedNamespaces!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (state != null) 'state': state!,
        if (stateReason != null) 'stateReason': stateReason!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (volumeCount != null) 'volumeCount': volumeCount!,
      };
}

/// BackupConfig defines the configuration of Backups created via this
/// BackupPlan.
class BackupConfig {
  /// If True, include all namespaced resources
  core.bool? allNamespaces;

  /// This defines a customer managed encryption key that will be used to
  /// encrypt the "config" portion (the Kubernetes resources) of Backups created
  /// via this plan.
  ///
  /// Default (empty): Config backup artifacts will not be encrypted.
  EncryptionKey? encryptionKey;

  /// This flag specifies whether Kubernetes Secret resources should be included
  /// when they fall into the scope of Backups.
  ///
  /// Default: False
  core.bool? includeSecrets;

  /// This flag specifies whether volume data should be backed up when PVCs are
  /// included in the scope of a Backup.
  ///
  /// Default: False
  core.bool? includeVolumeData;

  /// If set, include just the resources referenced by the listed
  /// ProtectedApplications.
  NamespacedNames? selectedApplications;

  /// If set, include just the resources in the listed namespaces.
  Namespaces? selectedNamespaces;

  BackupConfig({
    this.allNamespaces,
    this.encryptionKey,
    this.includeSecrets,
    this.includeVolumeData,
    this.selectedApplications,
    this.selectedNamespaces,
  });

  BackupConfig.fromJson(core.Map _json)
      : this(
          allNamespaces: _json.containsKey('allNamespaces')
              ? _json['allNamespaces'] as core.bool
              : null,
          encryptionKey: _json.containsKey('encryptionKey')
              ? EncryptionKey.fromJson(
                  _json['encryptionKey'] as core.Map<core.String, core.dynamic>)
              : null,
          includeSecrets: _json.containsKey('includeSecrets')
              ? _json['includeSecrets'] as core.bool
              : null,
          includeVolumeData: _json.containsKey('includeVolumeData')
              ? _json['includeVolumeData'] as core.bool
              : null,
          selectedApplications: _json.containsKey('selectedApplications')
              ? NamespacedNames.fromJson(_json['selectedApplications']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selectedNamespaces: _json.containsKey('selectedNamespaces')
              ? Namespaces.fromJson(_json['selectedNamespaces']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allNamespaces != null) 'allNamespaces': allNamespaces!,
        if (encryptionKey != null) 'encryptionKey': encryptionKey!,
        if (includeSecrets != null) 'includeSecrets': includeSecrets!,
        if (includeVolumeData != null) 'includeVolumeData': includeVolumeData!,
        if (selectedApplications != null)
          'selectedApplications': selectedApplications!,
        if (selectedNamespaces != null)
          'selectedNamespaces': selectedNamespaces!,
      };
}

/// Defines the configuration and scheduling for a "line" of Backups.
class BackupPlan {
  /// Defines the configuration of Backups created via this BackupPlan.
  BackupConfig? backupConfig;

  /// Defines a schedule for automatic Backup creation via this BackupPlan.
  Schedule? backupSchedule;

  /// The source cluster from which Backups will be created via this BackupPlan.
  ///
  /// Valid formats: - `projects / * /locations / * /clusters / * ` - `projects
  /// / * /zones / * /clusters / * `
  ///
  /// Required. Immutable.
  core.String? cluster;

  /// The timestamp when this BackupPlan resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// This flag indicates whether this BackupPlan has been deactivated.
  ///
  /// Setting this field to True locks the BackupPlan such that no further
  /// updates will be allowed (except deletes), including the deactivated field
  /// itself. It also prevents any new Backups from being created via this
  /// BackupPlan (including scheduled Backups). Default: False
  core.bool? deactivated;

  /// User specified descriptive string for this BackupPlan.
  core.String? description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a backup plan from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the 'etag' in the
  /// read-modify-write cycle to perform BackupPlan updates in order to avoid
  /// race conditions: An `etag` is returned in the response to `GetBackupPlan`,
  /// and systems are expected to put that etag in the request to
  /// `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change will
  /// be applied to the same version of the resource.
  ///
  /// Output only.
  core.String? etag;

  /// A set of custom labels supplied by user.
  core.Map<core.String, core.String>? labels;

  /// The full name of the BackupPlan resource.
  ///
  /// Format: `projects / * /locations / * /backupPlans / * `
  ///
  /// Output only.
  core.String? name;

  /// The number of Kubernetes Pods backed up in the last successful Backup
  /// created via this BackupPlan.
  ///
  /// Output only.
  core.int? protectedPodCount;

  /// RetentionPolicy governs lifecycle of Backups created under this plan.
  RetentionPolicy? retentionPolicy;

  /// Server generated global unique identifier of
  /// [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  /// format.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when this BackupPlan resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  BackupPlan({
    this.backupConfig,
    this.backupSchedule,
    this.cluster,
    this.createTime,
    this.deactivated,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.protectedPodCount,
    this.retentionPolicy,
    this.uid,
    this.updateTime,
  });

  BackupPlan.fromJson(core.Map _json)
      : this(
          backupConfig: _json.containsKey('backupConfig')
              ? BackupConfig.fromJson(
                  _json['backupConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          backupSchedule: _json.containsKey('backupSchedule')
              ? Schedule.fromJson(_json['backupSchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          cluster: _json.containsKey('cluster')
              ? _json['cluster'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          deactivated: _json.containsKey('deactivated')
              ? _json['deactivated'] as core.bool
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          protectedPodCount: _json.containsKey('protectedPodCount')
              ? _json['protectedPodCount'] as core.int
              : null,
          retentionPolicy: _json.containsKey('retentionPolicy')
              ? RetentionPolicy.fromJson(_json['retentionPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupConfig != null) 'backupConfig': backupConfig!,
        if (backupSchedule != null) 'backupSchedule': backupSchedule!,
        if (cluster != null) 'cluster': cluster!,
        if (createTime != null) 'createTime': createTime!,
        if (deactivated != null) 'deactivated': deactivated!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (protectedPodCount != null) 'protectedPodCount': protectedPodCount!,
        if (retentionPolicy != null) 'retentionPolicy': retentionPolicy!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
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
  /// account. * `user:{emailid}`: An email address that represents a specific
  /// Google account. For example, `alice@example.com` . *
  /// `serviceAccount:{emailid}`: An email address that represents a service
  /// account. For example, `my-other-app@appspot.gserviceaccount.com`. *
  /// `group:{emailid}`: An email address that represents a Google group. For
  /// example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a user that has
  /// been recently deleted. For example,
  /// `alice@example.com?uid=123456789012345678901`. If the user is recovered,
  /// this value reverts to `user:{emailid}` and the recovered user retains the
  /// role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`:
  /// An email address (plus unique identifier) representing a service account
  /// that has been recently deleted. For example,
  /// `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If
  /// the service account is undeleted, this value reverts to
  /// `serviceAccount:{emailid}` and the undeleted service account retains the
  /// role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email
  /// address (plus unique identifier) representing a Google group that has been
  /// recently deleted. For example,
  /// `admins@example.com?uid=123456789012345678901`. If the group is recovered,
  /// this value reverts to `group:{emailid}` and the recovered group retains
  /// the role in the binding. * `domain:{domain}`: The G Suite domain (primary)
  /// that represents all the users of that domain. For example, `google.com` or
  /// `example.com`.
  core.List<core.String>? members;

  /// Role that is assigned to the list of `members`, or principals.
  ///
  /// For example, `roles/viewer`, `roles/editor`, or `roles/owner`.
  core.String? role;

  Binding({
    this.condition,
    this.members,
    this.role,
  });

  Binding.fromJson(core.Map _json)
      : this(
          condition: _json.containsKey('condition')
              ? Expr.fromJson(
                  _json['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: _json.containsKey('members')
              ? (_json['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: _json.containsKey('role') ? _json['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// Information about the GKE cluster from which this Backup was created.
class ClusterMetadata {
  /// Anthos version
  core.String? anthosVersion;

  /// A list of the Backup for GKE CRD versions found in the cluster.
  core.Map<core.String, core.String>? backupCrdVersions;

  /// The source cluster from which this Backup was created.
  ///
  /// Valid formats: - `projects / * /locations / * /clusters / * ` - `projects
  /// / * /zones / * /clusters / * ` This is inherited from the parent
  /// BackupPlan's cluster field.
  core.String? cluster;

  /// GKE version
  core.String? gkeVersion;

  /// The Kubernetes server version of the source cluster.
  core.String? k8sVersion;

  ClusterMetadata({
    this.anthosVersion,
    this.backupCrdVersions,
    this.cluster,
    this.gkeVersion,
    this.k8sVersion,
  });

  ClusterMetadata.fromJson(core.Map _json)
      : this(
          anthosVersion: _json.containsKey('anthosVersion')
              ? _json['anthosVersion'] as core.String
              : null,
          backupCrdVersions: _json.containsKey('backupCrdVersions')
              ? (_json['backupCrdVersions']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          cluster: _json.containsKey('cluster')
              ? _json['cluster'] as core.String
              : null,
          gkeVersion: _json.containsKey('gkeVersion')
              ? _json['gkeVersion'] as core.String
              : null,
          k8sVersion: _json.containsKey('k8sVersion')
              ? _json['k8sVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (anthosVersion != null) 'anthosVersion': anthosVersion!,
        if (backupCrdVersions != null) 'backupCrdVersions': backupCrdVersions!,
        if (cluster != null) 'cluster': cluster!,
        if (gkeVersion != null) 'gkeVersion': gkeVersion!,
        if (k8sVersion != null) 'k8sVersion': k8sVersion!,
      };
}

/// Identifies the cluster-scoped resources to restore from the Backup.
class ClusterResourceRestoreScope {
  /// A list of "types" of cluster-scoped resources to be restored from the
  /// Backup.
  ///
  /// An empty list means that NO cluster-scoped resources will be restored.
  /// Note that Namespaces and PersistentVolume restoration is handled
  /// separately and is not governed by this field.
  core.List<GroupKind>? selectedGroupKinds;

  ClusterResourceRestoreScope({
    this.selectedGroupKinds,
  });

  ClusterResourceRestoreScope.fromJson(core.Map _json)
      : this(
          selectedGroupKinds: _json.containsKey('selectedGroupKinds')
              ? (_json['selectedGroupKinds'] as core.List)
                  .map((value) => GroupKind.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (selectedGroupKinds != null)
          'selectedGroupKinds': selectedGroupKinds!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// Defined a customer managed encryption key that will be used to encrypt
/// Backup artifacts.
class EncryptionKey {
  /// Google Cloud KMS encryption key.
  ///
  /// Format: `projects / * /locations / * /keyRings / * /cryptoKeys / * `
  core.String? gcpKmsEncryptionKey;

  EncryptionKey({
    this.gcpKmsEncryptionKey,
  });

  EncryptionKey.fromJson(core.Map _json)
      : this(
          gcpKmsEncryptionKey: _json.containsKey('gcpKmsEncryptionKey')
              ? _json['gcpKmsEncryptionKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcpKmsEncryptionKey != null)
          'gcpKmsEncryptionKey': gcpKmsEncryptionKey!,
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

/// The request message for Operations.CancelOperation.
typedef GoogleLongrunningCancelOperationRequest = $Empty;

/// The response message for Operations.ListOperations.
class GoogleLongrunningListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<GoogleLongrunningOperation>? operations;

  GoogleLongrunningListOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  GoogleLongrunningListOperationsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          operations: _json.containsKey('operations')
              ? (_json['operations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map _json)
      : this(
          done: _json.containsKey('done') ? _json['done'] as core.bool : null,
          error: _json.containsKey('error')
              ? GoogleRpcStatus.fromJson(
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// This is a direct map to the Kubernetes GroupKind type
/// [GroupKind](https://godoc.org/k8s.io/apimachinery/pkg/runtime/schema#GroupKind)
/// and is used for identifying specific "types" of resources to restore.
class GroupKind {
  /// API group string of a Kubernetes resource, e.g. "apiextensions.k8s.io",
  /// "storage.k8s.io", etc.
  ///
  /// Note: use empty string for core API group
  core.String? resourceGroup;

  /// Kind of a Kubernetes resource, e.g. "CustomResourceDefinition",
  /// "StorageClass", etc.
  core.String? resourceKind;

  GroupKind({
    this.resourceGroup,
    this.resourceKind,
  });

  GroupKind.fromJson(core.Map _json)
      : this(
          resourceGroup: _json.containsKey('resourceGroup')
              ? _json['resourceGroup'] as core.String
              : null,
          resourceKind: _json.containsKey('resourceKind')
              ? _json['resourceKind'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resourceGroup != null) 'resourceGroup': resourceGroup!,
        if (resourceKind != null) 'resourceKind': resourceKind!,
      };
}

/// Response message for ListBackupPlans.
class ListBackupPlansResponse {
  /// The list of BackupPlans matching the given criteria.
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

  ListBackupPlansResponse.fromJson(core.Map _json)
      : this(
          backupPlans: _json.containsKey('backupPlans')
              ? (_json['backupPlans'] as core.List)
                  .map((value) => BackupPlan.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupPlans != null) 'backupPlans': backupPlans!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for ListBackups.
class ListBackupsResponse {
  /// The list of Backups matching the given criteria.
  core.List<Backup>? backups;

  /// A token which may be sent as page_token in a subsequent `ListBackups` call
  /// to retrieve the next page of results.
  ///
  /// If this field is omitted or empty, then there are no more results to
  /// return.
  core.String? nextPageToken;

  ListBackupsResponse({
    this.backups,
    this.nextPageToken,
  });

  ListBackupsResponse.fromJson(core.Map _json)
      : this(
          backups: _json.containsKey('backups')
              ? (_json['backups'] as core.List)
                  .map((value) => Backup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListLocationsResponse.fromJson(core.Map _json)
      : this(
          locations: _json.containsKey('locations')
              ? (_json['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for ListRestorePlans.
class ListRestorePlansResponse {
  /// A token which may be sent as page_token in a subsequent `ListRestorePlans`
  /// call to retrieve the next page of results.
  ///
  /// If this field is omitted or empty, then there are no more results to
  /// return.
  core.String? nextPageToken;

  /// The list of RestorePlans matching the given criteria.
  core.List<RestorePlan>? restorePlans;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRestorePlansResponse({
    this.nextPageToken,
    this.restorePlans,
    this.unreachable,
  });

  ListRestorePlansResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          restorePlans: _json.containsKey('restorePlans')
              ? (_json['restorePlans'] as core.List)
                  .map((value) => RestorePlan.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (restorePlans != null) 'restorePlans': restorePlans!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for ListRestores.
class ListRestoresResponse {
  /// A token which may be sent as page_token in a subsequent `ListRestores`
  /// call to retrieve the next page of results.
  ///
  /// If this field is omitted or empty, then there are no more results to
  /// return.
  core.String? nextPageToken;

  /// The list of Restores matching the given criteria.
  core.List<Restore>? restores;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListRestoresResponse({
    this.nextPageToken,
    this.restores,
    this.unreachable,
  });

  ListRestoresResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          restores: _json.containsKey('restores')
              ? (_json['restores'] as core.List)
                  .map((value) => Restore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: _json.containsKey('unreachable')
              ? (_json['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (restores != null) 'restores': restores!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for ListVolumeBackups.
class ListVolumeBackupsResponse {
  /// A token which may be sent as page_token in a subsequent
  /// `ListVolumeBackups` call to retrieve the next page of results.
  ///
  /// If this field is omitted or empty, then there are no more results to
  /// return.
  core.String? nextPageToken;

  /// The list of VolumeBackups matching the given criteria.
  core.List<VolumeBackup>? volumeBackups;

  ListVolumeBackupsResponse({
    this.nextPageToken,
    this.volumeBackups,
  });

  ListVolumeBackupsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          volumeBackups: _json.containsKey('volumeBackups')
              ? (_json['volumeBackups'] as core.List)
                  .map((value) => VolumeBackup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (volumeBackups != null) 'volumeBackups': volumeBackups!,
      };
}

/// Response message for ListVolumeRestores.
class ListVolumeRestoresResponse {
  /// A token which may be sent as page_token in a subsequent
  /// `ListVolumeRestores` call to retrieve the next page of results.
  ///
  /// If this field is omitted or empty, then there are no more results to
  /// return.
  core.String? nextPageToken;

  /// The list of VolumeRestores matching the given criteria.
  core.List<VolumeRestore>? volumeRestores;

  ListVolumeRestoresResponse({
    this.nextPageToken,
    this.volumeRestores,
  });

  ListVolumeRestoresResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          volumeRestores: _json.containsKey('volumeRestores')
              ? (_json['volumeRestores'] as core.List)
                  .map((value) => VolumeRestore.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (volumeRestores != null) 'volumeRestores': volumeRestores!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// A reference to a namespaced resource in Kubernetes.
class NamespacedName {
  /// The name of the Kubernetes resource.
  core.String? name;

  /// The Namespace of the Kubernetes resource.
  core.String? namespace;

  NamespacedName({
    this.name,
    this.namespace,
  });

  NamespacedName.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          namespace: _json.containsKey('namespace')
              ? _json['namespace'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (namespace != null) 'namespace': namespace!,
      };
}

/// A list of namespaced Kubernetes resources.
class NamespacedNames {
  /// A list of namespaced Kubernetes resources.
  core.List<NamespacedName>? namespacedNames;

  NamespacedNames({
    this.namespacedNames,
  });

  NamespacedNames.fromJson(core.Map _json)
      : this(
          namespacedNames: _json.containsKey('namespacedNames')
              ? (_json['namespacedNames'] as core.List)
                  .map((value) => NamespacedName.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namespacedNames != null) 'namespacedNames': namespacedNames!,
      };
}

/// A list of Kubernetes Namespaces
class Namespaces {
  /// A list of Kubernetes Namespaces
  core.List<core.String>? namespaces;

  Namespaces({
    this.namespaces,
  });

  Namespaces.fromJson(core.Map _json)
      : this(
          namespaces: _json.containsKey('namespaces')
              ? (_json['namespaces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (namespaces != null) 'namespaces': namespaces!,
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
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time \< timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time \< timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
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

  set etagAsBytes(core.List<core.int> _bytes) {
    etag =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
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

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map _json)
      : this(
          auditConfigs: _json.containsKey('auditConfigs')
              ? (_json['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: _json.containsKey('bindings')
              ? (_json['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          version: _json.containsKey('version')
              ? _json['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Represents both a request to Restore some portion of a Backup into a target
/// GKE cluster and a record of the restore operation itself.
///
/// Next id: 18
class Restore {
  /// A reference to the Backup used as the source from which this Restore will
  /// restore.
  ///
  /// Note that this Backup must be a sub-resource of the RestorePlan's
  /// backup_plan. Format: `projects / * /locations / * /backupPlans / *
  /// /backups / * `.
  ///
  /// Required. Immutable.
  core.String? backup;

  /// The target cluster into which this Restore will restore data.
  ///
  /// Valid formats: - `projects / * /locations / * /clusters / * ` - `projects
  /// / * /zones / * /clusters / * ` Inherited from parent RestorePlan's cluster
  /// value.
  ///
  /// Output only.
  core.String? cluster;

  /// Timestamp of when the restore operation completed.
  ///
  /// Output only.
  core.String? completeTime;

  /// The timestamp when this Restore resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// User specified descriptive string for this Restore.
  core.String? description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a restore from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform restore updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `GetRestore`, and
  /// systems are expected to put that etag in the request to `UpdateRestore` or
  /// `DeleteRestore` to ensure that their change will be applied to the same
  /// version of the resource.
  ///
  /// Output only.
  core.String? etag;

  /// A set of custom labels supplied by user.
  core.Map<core.String, core.String>? labels;

  /// The full name of the Restore resource.
  ///
  /// Format: `projects / * /locations / * /restorePlans / * /restores / * `
  ///
  /// Output only.
  core.String? name;

  /// Number of resources excluded during the restore execution.
  ///
  /// Output only.
  core.int? resourcesExcludedCount;

  /// Number of resources that failed to be restored during the restore
  /// execution.
  ///
  /// Output only.
  core.int? resourcesFailedCount;

  /// Number of resources restored during the restore execution.
  ///
  /// Output only.
  core.int? resourcesRestoredCount;

  /// Configuration of the Restore.
  ///
  /// Inherited from parent RestorePlan's restore_config.
  ///
  /// Output only.
  RestoreConfig? restoreConfig;

  /// The current state of the Restore.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The Restore resource is in the process of being
  /// created.
  /// - "CREATING" : The Restore resource has been created and the associated
  /// RestoreJob Kubernetes resource has been injected into target cluster.
  /// - "IN_PROGRESS" : The gkebackup agent in the cluster has begun executing
  /// the restore operation.
  /// - "SUCCEEDED" : The restore operation has completed successfully. Restored
  /// workloads may not yet be operational.
  /// - "FAILED" : The restore operation has failed.
  /// - "DELETING" : This Restore resource is in the process of being deleted.
  core.String? state;

  /// Human-readable description of why the Restore is in its current state.
  ///
  /// Output only.
  core.String? stateReason;

  /// Server generated global unique identifier of
  /// [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  /// format.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when this Restore resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// Number of volumes restored during the restore execution.
  ///
  /// Output only.
  core.int? volumesRestoredCount;

  Restore({
    this.backup,
    this.cluster,
    this.completeTime,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.resourcesExcludedCount,
    this.resourcesFailedCount,
    this.resourcesRestoredCount,
    this.restoreConfig,
    this.state,
    this.stateReason,
    this.uid,
    this.updateTime,
    this.volumesRestoredCount,
  });

  Restore.fromJson(core.Map _json)
      : this(
          backup: _json.containsKey('backup')
              ? _json['backup'] as core.String
              : null,
          cluster: _json.containsKey('cluster')
              ? _json['cluster'] as core.String
              : null,
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          resourcesExcludedCount: _json.containsKey('resourcesExcludedCount')
              ? _json['resourcesExcludedCount'] as core.int
              : null,
          resourcesFailedCount: _json.containsKey('resourcesFailedCount')
              ? _json['resourcesFailedCount'] as core.int
              : null,
          resourcesRestoredCount: _json.containsKey('resourcesRestoredCount')
              ? _json['resourcesRestoredCount'] as core.int
              : null,
          restoreConfig: _json.containsKey('restoreConfig')
              ? RestoreConfig.fromJson(
                  _json['restoreConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateReason: _json.containsKey('stateReason')
              ? _json['stateReason'] as core.String
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          volumesRestoredCount: _json.containsKey('volumesRestoredCount')
              ? _json['volumesRestoredCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (cluster != null) 'cluster': cluster!,
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (resourcesExcludedCount != null)
          'resourcesExcludedCount': resourcesExcludedCount!,
        if (resourcesFailedCount != null)
          'resourcesFailedCount': resourcesFailedCount!,
        if (resourcesRestoredCount != null)
          'resourcesRestoredCount': resourcesRestoredCount!,
        if (restoreConfig != null) 'restoreConfig': restoreConfig!,
        if (state != null) 'state': state!,
        if (stateReason != null) 'stateReason': stateReason!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (volumesRestoredCount != null)
          'volumesRestoredCount': volumesRestoredCount!,
      };
}

/// Configuration of a restore.
///
/// Next id: 9
class RestoreConfig {
  /// Restore all namespaced resources in the Backup if set to "True".
  ///
  /// Specifying this field to "False" is an error.
  core.bool? allNamespaces;

  /// Defines the behavior for handling the situation where cluster-scoped
  /// resources being restored already exist in the target cluster.
  ///
  /// This MUST be set to a value other than
  /// CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED if
  /// cluster_resource_restore_scope is not empty.
  /// Possible string values are:
  /// - "CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED" : Unspecified. Only
  /// allowed if no cluster-scoped resources will be restored.
  /// - "USE_EXISTING_VERSION" : Do not attempt to restore the conflicting
  /// resource.
  /// - "USE_BACKUP_VERSION" : Delete the existing version before re-creating it
  /// from the Backup. Note that this is a dangerous option which could cause
  /// unintentional data loss if used inappropriately - for example, deleting a
  /// CRD will cause Kubernetes to delete all CRs of that type.
  core.String? clusterResourceConflictPolicy;

  /// Identifies the cluster-scoped resources to restore from the Backup.
  ///
  /// Not specifying it means NO cluster resource will be restored.
  ClusterResourceRestoreScope? clusterResourceRestoreScope;

  /// Defines the behavior for handling the situation where sets of namespaced
  /// resources being restored already exist in the target cluster.
  ///
  /// This MUST be set to a value other than
  /// NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED.
  /// Possible string values are:
  /// - "NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED" : Unspecified (invalid).
  /// - "DELETE_AND_RESTORE" : When conflicting top-level resources (either
  /// Namespaces or ProtectedApplications, depending upon the scope) are
  /// encountered, this will first trigger a delete of the conflicting resource
  /// AND ALL OF ITS REFERENCED RESOURCES (e.g., all resources in the Namespace
  /// or all resources referenced by the ProtectedApplication) before restoring
  /// the resources from the Backup. This mode should only be used when you are
  /// intending to revert some portion of a cluster to an earlier state.
  /// - "FAIL_ON_CONFLICT" : If conflicting top-level resources (either
  /// Namespaces or ProtectedApplications, depending upon the scope) are
  /// encountered at the beginning of a restore process, the Restore will fail.
  /// If a conflict occurs during the restore process itself (e.g., because an
  /// out of band process creates conflicting resources), a conflict will be
  /// reported.
  core.String? namespacedResourceRestoreMode;

  /// A list of selected ProtectedApplications to restore.
  ///
  /// The listed ProtectedApplications and all the resources to which they refer
  /// will be restored.
  NamespacedNames? selectedApplications;

  /// A list of selected Namespaces to restore from the Backup.
  ///
  /// The listed Namespaces and all resources contained in them will be
  /// restored.
  Namespaces? selectedNamespaces;

  /// A list of transformation rules to be applied against Kubernetes resources
  /// as they are selected for restoration from a Backup.
  ///
  /// Rules are executed in order defined - this order matters, as changes made
  /// by a rule may impact the filtering logic of subsequent rules. An empty
  /// list means no substitution will occur.
  core.List<SubstitutionRule>? substitutionRules;

  /// Specifies the mechanism to be used to restore volume data.
  ///
  /// Default: VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED (will be treated as
  /// NO_VOLUME_DATA_RESTORATION).
  /// Possible string values are:
  /// - "VOLUME_DATA_RESTORE_POLICY_UNSPECIFIED" : Unspecified (illegal).
  /// - "RESTORE_VOLUME_DATA_FROM_BACKUP" : For each PVC to be restored, will
  /// create a new underlying volume (and PV) from the corresponding
  /// VolumeBackup contained within the Backup.
  /// - "REUSE_VOLUME_HANDLE_FROM_BACKUP" : For each PVC to be restored, attempt
  /// to reuse the original PV contained in the Backup (with its original
  /// underlying volume). Note that option is likely only usable when restoring
  /// a workload to its original cluster.
  /// - "NO_VOLUME_DATA_RESTORATION" : For each PVC to be restored, PVCs will be
  /// created without any particular action to restore data. In this case, the
  /// normal Kubernetes provisioning logic would kick in, and this would likely
  /// result in either dynamically provisioning blank PVs or binding to
  /// statically provisioned PVs.
  core.String? volumeDataRestorePolicy;

  RestoreConfig({
    this.allNamespaces,
    this.clusterResourceConflictPolicy,
    this.clusterResourceRestoreScope,
    this.namespacedResourceRestoreMode,
    this.selectedApplications,
    this.selectedNamespaces,
    this.substitutionRules,
    this.volumeDataRestorePolicy,
  });

  RestoreConfig.fromJson(core.Map _json)
      : this(
          allNamespaces: _json.containsKey('allNamespaces')
              ? _json['allNamespaces'] as core.bool
              : null,
          clusterResourceConflictPolicy:
              _json.containsKey('clusterResourceConflictPolicy')
                  ? _json['clusterResourceConflictPolicy'] as core.String
                  : null,
          clusterResourceRestoreScope:
              _json.containsKey('clusterResourceRestoreScope')
                  ? ClusterResourceRestoreScope.fromJson(
                      _json['clusterResourceRestoreScope']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          namespacedResourceRestoreMode:
              _json.containsKey('namespacedResourceRestoreMode')
                  ? _json['namespacedResourceRestoreMode'] as core.String
                  : null,
          selectedApplications: _json.containsKey('selectedApplications')
              ? NamespacedNames.fromJson(_json['selectedApplications']
                  as core.Map<core.String, core.dynamic>)
              : null,
          selectedNamespaces: _json.containsKey('selectedNamespaces')
              ? Namespaces.fromJson(_json['selectedNamespaces']
                  as core.Map<core.String, core.dynamic>)
              : null,
          substitutionRules: _json.containsKey('substitutionRules')
              ? (_json['substitutionRules'] as core.List)
                  .map((value) => SubstitutionRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          volumeDataRestorePolicy: _json.containsKey('volumeDataRestorePolicy')
              ? _json['volumeDataRestorePolicy'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allNamespaces != null) 'allNamespaces': allNamespaces!,
        if (clusterResourceConflictPolicy != null)
          'clusterResourceConflictPolicy': clusterResourceConflictPolicy!,
        if (clusterResourceRestoreScope != null)
          'clusterResourceRestoreScope': clusterResourceRestoreScope!,
        if (namespacedResourceRestoreMode != null)
          'namespacedResourceRestoreMode': namespacedResourceRestoreMode!,
        if (selectedApplications != null)
          'selectedApplications': selectedApplications!,
        if (selectedNamespaces != null)
          'selectedNamespaces': selectedNamespaces!,
        if (substitutionRules != null) 'substitutionRules': substitutionRules!,
        if (volumeDataRestorePolicy != null)
          'volumeDataRestorePolicy': volumeDataRestorePolicy!,
      };
}

/// The configuration of a potential series of Restore operations to be
/// performed against Backups belong to a particular BackupPlan.
///
/// Next id: 11
class RestorePlan {
  /// A reference to the BackupPlan from which Backups may be used as the source
  /// for Restores created via this RestorePlan.
  ///
  /// Format: `projects / * /locations / * /backupPlans / * `.
  ///
  /// Required. Immutable.
  core.String? backupPlan;

  /// The target cluster into which Restores created via this RestorePlan will
  /// restore data.
  ///
  /// NOTE: the cluster's region must be the same as the RestorePlan. Valid
  /// formats: - `projects / * /locations / * /clusters / * ` - `projects / *
  /// /zones / * /clusters / * `
  ///
  /// Required. Immutable.
  core.String? cluster;

  /// The timestamp when this RestorePlan resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// User specified descriptive string for this RestorePlan.
  core.String? description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a restore from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform restore updates in order to avoid race
  /// conditions: An `etag` is returned in the response to `GetRestorePlan`, and
  /// systems are expected to put that etag in the request to
  /// `UpdateRestorePlan` or `DeleteRestorePlan` to ensure that their change
  /// will be applied to the same version of the resource.
  ///
  /// Output only.
  core.String? etag;

  /// A set of custom labels supplied by user.
  core.Map<core.String, core.String>? labels;

  /// The full name of the RestorePlan resource.
  ///
  /// Format: `projects / * /locations / * /restorePlans / * `.
  ///
  /// Output only.
  core.String? name;

  /// Configuration of Restores created via this RestorePlan.
  ///
  /// Required.
  RestoreConfig? restoreConfig;

  /// Server generated global unique identifier of
  /// [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  /// format.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when this RestorePlan resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  RestorePlan({
    this.backupPlan,
    this.cluster,
    this.createTime,
    this.description,
    this.etag,
    this.labels,
    this.name,
    this.restoreConfig,
    this.uid,
    this.updateTime,
  });

  RestorePlan.fromJson(core.Map _json)
      : this(
          backupPlan: _json.containsKey('backupPlan')
              ? _json['backupPlan'] as core.String
              : null,
          cluster: _json.containsKey('cluster')
              ? _json['cluster'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          restoreConfig: _json.containsKey('restoreConfig')
              ? RestoreConfig.fromJson(
                  _json['restoreConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupPlan != null) 'backupPlan': backupPlan!,
        if (cluster != null) 'cluster': cluster!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (etag != null) 'etag': etag!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (restoreConfig != null) 'restoreConfig': restoreConfig!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// RetentionPolicy defines a Backup retention policy for a BackupPlan.
class RetentionPolicy {
  /// Minimum age for Backups created via this BackupPlan (in days).
  ///
  /// This field MUST be an integer value between 0-90 (inclusive). A Backup
  /// created under this BackupPlan will NOT be deletable until it reaches
  /// Backup's (create_time + backup_delete_lock_days). Updating this field of a
  /// BackupPlan does NOT affect existing Backups under it. Backups created
  /// AFTER a successful update will inherit the new value. Default: 0 (no
  /// delete blocking)
  core.int? backupDeleteLockDays;

  /// The default maximum age of a Backup created via this BackupPlan.
  ///
  /// This field MUST be an integer value \>= 0 and \<= 365. If specified, a
  /// Backup created under this BackupPlan will be automatically deleted after
  /// its age reaches (create_time + backup_retain_days). If not specified,
  /// Backups created under this BackupPlan will NOT be subject to automatic
  /// deletion. Updating this field does NOT affect existing Backups under it.
  /// Backups created AFTER a successful update will automatically pick up the
  /// new value. NOTE: backup_retain_days must be \>= backup_delete_lock_days.
  /// If cron_schedule is defined, then this must be \<= 360 * the creation
  /// interval. Default: 0 (no automatic deletion)
  core.int? backupRetainDays;

  /// This flag denotes whether the retention policy of this BackupPlan is
  /// locked.
  ///
  /// If set to True, no further update is allowed on this policy, including the
  /// `locked` field itself. Default: False
  core.bool? locked;

  RetentionPolicy({
    this.backupDeleteLockDays,
    this.backupRetainDays,
    this.locked,
  });

  RetentionPolicy.fromJson(core.Map _json)
      : this(
          backupDeleteLockDays: _json.containsKey('backupDeleteLockDays')
              ? _json['backupDeleteLockDays'] as core.int
              : null,
          backupRetainDays: _json.containsKey('backupRetainDays')
              ? _json['backupRetainDays'] as core.int
              : null,
          locked:
              _json.containsKey('locked') ? _json['locked'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupDeleteLockDays != null)
          'backupDeleteLockDays': backupDeleteLockDays!,
        if (backupRetainDays != null) 'backupRetainDays': backupRetainDays!,
        if (locked != null) 'locked': locked!,
      };
}

/// Schedule defines scheduling parameters for automatically creating Backups
/// via this BackupPlan.
class Schedule {
  /// A standard [cron](https://wikipedia.com/wiki/cron) string that defines a
  /// repeating schedule for creating Backups via this BackupPlan.
  ///
  /// If this is defined, then backup_retain_days must also be defined. Default
  /// (empty): no automatic backup creation will occur.
  core.String? cronSchedule;

  /// This flag denotes whether automatic Backup creation is paused for this
  /// BackupPlan.
  ///
  /// Default: False
  core.bool? paused;

  Schedule({
    this.cronSchedule,
    this.paused,
  });

  Schedule.fromJson(core.Map _json)
      : this(
          cronSchedule: _json.containsKey('cronSchedule')
              ? _json['cronSchedule'] as core.String
              : null,
          paused:
              _json.containsKey('paused') ? _json['paused'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cronSchedule != null) 'cronSchedule': cronSchedule!,
        if (paused != null) 'paused': paused!,
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

  SetIamPolicyRequest({
    this.policy,
    this.updateMask,
  });

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: _json.containsKey('updateMask')
              ? _json['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// A transformation rule to be applied against Kubernetes resources as they are
/// selected for restoration from a Backup.
///
/// A rule contains both filtering logic (which resources are subject to
/// substitution) and substitution logic.
class SubstitutionRule {
  /// This is the new value to set for any fields that pass the filtering and
  /// selection criteria.
  ///
  /// To remove a value from a Kubernetes resource, either leave this field
  /// unspecified, or set it to the empty string ("").
  core.String? newValue;

  /// (Filtering parameter) This is a
  /// [regular expression](https://en.wikipedia.org/wiki/Regular_expression)
  /// that is compared against the fields matched by the target_json_path
  /// expression (and must also have passed the previous filters).
  ///
  /// Substitution will not be performed against fields whose value does not
  /// match this expression. If this field is NOT specified, then ALL fields
  /// matched by the target_json_path expression will undergo substitution. Note
  /// that an empty (e.g., "", rather than unspecified) value for for this field
  /// will only match empty fields.
  core.String? originalValuePattern;

  /// (Filtering parameter) Any resource subject to substitution must belong to
  /// one of the listed "types".
  ///
  /// If this field is not provided, no type filtering will be performed (all
  /// resources of all types matching previous filtering parameters will be
  /// candidates for substitution).
  core.List<GroupKind>? targetGroupKinds;

  /// This is a
  /// [JSONPath](https://kubernetes.io/docs/reference/kubectl/jsonpath/)
  /// expression that matches specific fields of candidate resources and it
  /// operates as both a filtering parameter (resources that are not matched
  /// with this expression will not be candidates for substitution) as well as a
  /// field identifier (identifies exactly which fields out of the candidate
  /// resources will be modified).
  ///
  /// Required.
  core.String? targetJsonPath;

  /// (Filtering parameter) Any resource subject to substitution must be
  /// contained within one of the listed Kubernetes Namespace in the Backup.
  ///
  /// If this field is not provided, no namespace filtering will be performed
  /// (all resources in all Namespaces, including all cluster-scoped resources,
  /// will be candidates for substitution). To mix cluster-scoped and namespaced
  /// resources in the same rule, use an empty string ("") as one of the target
  /// namespaces.
  core.List<core.String>? targetNamespaces;

  SubstitutionRule({
    this.newValue,
    this.originalValuePattern,
    this.targetGroupKinds,
    this.targetJsonPath,
    this.targetNamespaces,
  });

  SubstitutionRule.fromJson(core.Map _json)
      : this(
          newValue: _json.containsKey('newValue')
              ? _json['newValue'] as core.String
              : null,
          originalValuePattern: _json.containsKey('originalValuePattern')
              ? _json['originalValuePattern'] as core.String
              : null,
          targetGroupKinds: _json.containsKey('targetGroupKinds')
              ? (_json['targetGroupKinds'] as core.List)
                  .map((value) => GroupKind.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          targetJsonPath: _json.containsKey('targetJsonPath')
              ? _json['targetJsonPath'] as core.String
              : null,
          targetNamespaces: _json.containsKey('targetNamespaces')
              ? (_json['targetNamespaces'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newValue != null) 'newValue': newValue!,
        if (originalValuePattern != null)
          'originalValuePattern': originalValuePattern!,
        if (targetGroupKinds != null) 'targetGroupKinds': targetGroupKinds!,
        if (targetJsonPath != null) 'targetJsonPath': targetJsonPath!,
        if (targetNamespaces != null) 'targetNamespaces': targetNamespaces!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Represents the backup of a specific persistent volume as a component of a
/// Backup - both the record of the operation and a pointer to the underlying
/// storage-specific artifacts.
///
/// Next id: 14
class VolumeBackup {
  /// The timestamp when the associated underlying volume backup operation
  /// completed.
  ///
  /// Output only.
  core.String? completeTime;

  /// The timestamp when this VolumeBackup resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The minimum size of the disk to which this VolumeBackup can be restored.
  ///
  /// Output only.
  core.String? diskSizeBytes;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a volume backup from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform volume backup updates in order to avoid
  /// race conditions.
  ///
  /// Output only.
  core.String? etag;

  /// The format used for the volume backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VOLUME_BACKUP_FORMAT_UNSPECIFIED" : Default value, not specified.
  /// - "GCE_PERSISTENT_DISK" : Compute Engine Persistent Disk snapshot based
  /// volume backup.
  core.String? format;

  /// The full name of the VolumeBackup resource.
  ///
  /// Format: `projects / * /locations / * /backupPlans / * /backups / *
  /// /volumeBackups / * `.
  ///
  /// Output only.
  core.String? name;

  /// A reference to the source Kubernetes PVC from which this VolumeBackup was
  /// created.
  ///
  /// Output only.
  NamespacedName? sourcePvc;

  /// The current state of this VolumeBackup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : This is an illegal state and should not be
  /// encountered.
  /// - "CREATING" : A volume for the backup was identified and backup process
  /// is about to start.
  /// - "SNAPSHOTTING" : The volume backup operation has begun and is in the
  /// initial "snapshot" phase of the process. Any defined ProtectedApplication
  /// "pre" hooks will be executed before entering this state and "post" hooks
  /// will be executed upon leaving this state.
  /// - "UPLOADING" : The snapshot phase of the volume backup operation has
  /// completed and the snapshot is now being uploaded to backup storage.
  /// - "SUCCEEDED" : The volume backup operation has completed successfully.
  /// - "FAILED" : The volume backup operation has failed.
  /// - "DELETING" : This VolumeBackup resource (and its associated artifacts)
  /// is in the process of being deleted.
  core.String? state;

  /// A human readable message explaining why the VolumeBackup is in its current
  /// state.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The aggregate size of the underlying artifacts associated with this
  /// VolumeBackup in the backup storage.
  ///
  /// This may change over time when multiple backups of the same volume share
  /// the same backup storage location. In particular, this is likely to
  /// increase in size when the immediately preceding backup of the same volume
  /// is deleted.
  ///
  /// Output only.
  core.String? storageBytes;

  /// Server generated global unique identifier of
  /// [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  /// format.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when this VolumeBackup resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// A storage system-specific opaque handle to the underlying volume backup.
  ///
  /// Output only.
  core.String? volumeBackupHandle;

  VolumeBackup({
    this.completeTime,
    this.createTime,
    this.diskSizeBytes,
    this.etag,
    this.format,
    this.name,
    this.sourcePvc,
    this.state,
    this.stateMessage,
    this.storageBytes,
    this.uid,
    this.updateTime,
    this.volumeBackupHandle,
  });

  VolumeBackup.fromJson(core.Map _json)
      : this(
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          diskSizeBytes: _json.containsKey('diskSizeBytes')
              ? _json['diskSizeBytes'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          format: _json.containsKey('format')
              ? _json['format'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          sourcePvc: _json.containsKey('sourcePvc')
              ? NamespacedName.fromJson(
                  _json['sourcePvc'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          storageBytes: _json.containsKey('storageBytes')
              ? _json['storageBytes'] as core.String
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          volumeBackupHandle: _json.containsKey('volumeBackupHandle')
              ? _json['volumeBackupHandle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (diskSizeBytes != null) 'diskSizeBytes': diskSizeBytes!,
        if (etag != null) 'etag': etag!,
        if (format != null) 'format': format!,
        if (name != null) 'name': name!,
        if (sourcePvc != null) 'sourcePvc': sourcePvc!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (storageBytes != null) 'storageBytes': storageBytes!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (volumeBackupHandle != null)
          'volumeBackupHandle': volumeBackupHandle!,
      };
}

/// Represents the operation of restoring a volume from a VolumeBackup.
///
/// Next id: 13
class VolumeRestore {
  /// The timestamp when the associated underlying volume restoration completed.
  ///
  /// Output only.
  core.String? completeTime;

  /// The timestamp when this VolumeRestore resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// `etag` is used for optimistic concurrency control as a way to help prevent
  /// simultaneous updates of a volume restore from overwriting each other.
  ///
  /// It is strongly suggested that systems make use of the `etag` in the
  /// read-modify-write cycle to perform volume restore updates in order to
  /// avoid race conditions.
  ///
  /// Output only.
  core.String? etag;

  /// Full name of the VolumeRestore resource.
  ///
  /// Format: `projects / * /locations / * /restorePlans / * /restores / *
  /// /volumeRestores / * `
  ///
  /// Output only.
  core.String? name;

  /// The current state of this VolumeRestore.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : This is an illegal state and should not be
  /// encountered.
  /// - "CREATING" : A volume for the restore was identified and restore process
  /// is about to start.
  /// - "RESTORING" : The volume is currently being restored.
  /// - "SUCCEEDED" : The volume has been successfully restored.
  /// - "FAILED" : The volume restoration process failed.
  /// - "DELETING" : This VolumeRestore resource is in the process of being
  /// deleted.
  core.String? state;

  /// A human readable message explaining why the VolumeRestore is in its
  /// current state.
  ///
  /// Output only.
  core.String? stateMessage;

  /// The reference to the target Kubernetes PVC to be restored.
  ///
  /// Output only.
  NamespacedName? targetPvc;

  /// Server generated global unique identifier of
  /// [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  /// format.
  ///
  /// Output only.
  core.String? uid;

  /// The timestamp when this VolumeRestore resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The full name of the VolumeBackup from which the volume will be restored.
  ///
  /// Format: `projects / * /locations / * /backupPlans / * /backups / *
  /// /volumeBackups / * `.
  ///
  /// Output only.
  core.String? volumeBackup;

  /// A storage system-specific opaque handler to the underlying volume created
  /// for the target PVC from the volume backup.
  ///
  /// Output only.
  core.String? volumeHandle;

  /// The type of volume provisioned
  ///
  /// Output only.
  /// Possible string values are:
  /// - "VOLUME_TYPE_UNSPECIFIED" : Default
  /// - "GCE_PERSISTENT_DISK" : Compute Engine Persistent Disk volume
  core.String? volumeType;

  VolumeRestore({
    this.completeTime,
    this.createTime,
    this.etag,
    this.name,
    this.state,
    this.stateMessage,
    this.targetPvc,
    this.uid,
    this.updateTime,
    this.volumeBackup,
    this.volumeHandle,
    this.volumeType,
  });

  VolumeRestore.fromJson(core.Map _json)
      : this(
          completeTime: _json.containsKey('completeTime')
              ? _json['completeTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          etag: _json.containsKey('etag') ? _json['etag'] as core.String : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          stateMessage: _json.containsKey('stateMessage')
              ? _json['stateMessage'] as core.String
              : null,
          targetPvc: _json.containsKey('targetPvc')
              ? NamespacedName.fromJson(
                  _json['targetPvc'] as core.Map<core.String, core.dynamic>)
              : null,
          uid: _json.containsKey('uid') ? _json['uid'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          volumeBackup: _json.containsKey('volumeBackup')
              ? _json['volumeBackup'] as core.String
              : null,
          volumeHandle: _json.containsKey('volumeHandle')
              ? _json['volumeHandle'] as core.String
              : null,
          volumeType: _json.containsKey('volumeType')
              ? _json['volumeType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (completeTime != null) 'completeTime': completeTime!,
        if (createTime != null) 'createTime': createTime!,
        if (etag != null) 'etag': etag!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (stateMessage != null) 'stateMessage': stateMessage!,
        if (targetPvc != null) 'targetPvc': targetPvc!,
        if (uid != null) 'uid': uid!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (volumeBackup != null) 'volumeBackup': volumeBackup!,
        if (volumeHandle != null) 'volumeHandle': volumeHandle!,
        if (volumeType != null) 'volumeType': volumeType!,
      };
}
