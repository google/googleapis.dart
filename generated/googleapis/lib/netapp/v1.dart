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

/// NetApp API - v1
///
/// Google Cloud NetApp Volumes is a fully-managed, cloud-based data storage
/// service that provides advanced data management capabilities and highly
/// scalable performance with global availability.
///
/// For more information, see <https://cloud.google.com/netapp/>
///
/// Create an instance of [NetAppFilesApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsActiveDirectoriesResource]
///     - [ProjectsLocationsBackupPoliciesResource]
///     - [ProjectsLocationsBackupVaultsResource]
///       - [ProjectsLocationsBackupVaultsBackupsResource]
///     - [ProjectsLocationsKmsConfigsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsStoragePoolsResource]
///     - [ProjectsLocationsVolumesResource]
///       - [ProjectsLocationsVolumesReplicationsResource]
///       - [ProjectsLocationsVolumesSnapshotsResource]
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

/// Google Cloud NetApp Volumes is a fully-managed, cloud-based data storage
/// service that provides advanced data management capabilities and highly
/// scalable performance with global availability.
class NetAppFilesApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  NetAppFilesApi(http.Client client,
      {core.String rootUrl = 'https://netapp.googleapis.com/',
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

  ProjectsLocationsActiveDirectoriesResource get activeDirectories =>
      ProjectsLocationsActiveDirectoriesResource(_requester);
  ProjectsLocationsBackupPoliciesResource get backupPolicies =>
      ProjectsLocationsBackupPoliciesResource(_requester);
  ProjectsLocationsBackupVaultsResource get backupVaults =>
      ProjectsLocationsBackupVaultsResource(_requester);
  ProjectsLocationsKmsConfigsResource get kmsConfigs =>
      ProjectsLocationsKmsConfigsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsStoragePoolsResource get storagePools =>
      ProjectsLocationsStoragePoolsResource(_requester);
  ProjectsLocationsVolumesResource get volumes =>
      ProjectsLocationsVolumesResource(_requester);

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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsActiveDirectoriesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsActiveDirectoriesResource(commons.ApiRequester client)
      : _requester = client;

  /// CreateActiveDirectory Creates the active directory specified in the
  /// request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [activeDirectoryId] - Required. ID of the active directory to create. Must
  /// be unique within the parent resource. Must contain only letters, numbers
  /// and hyphen, with the first character a letter , the last a letter or a
  /// number, and a 63 character maximum.
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
    ActiveDirectory request,
    core.String parent, {
    core.String? activeDirectoryId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (activeDirectoryId != null) 'activeDirectoryId': [activeDirectoryId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/activeDirectories';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Delete the active directory specified in the request.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the active directory.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/activeDirectories/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Describes a specified active directory.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the active directory.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/activeDirectories/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ActiveDirectory].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ActiveDirectory> get(
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
    return ActiveDirectory.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists active directories.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListActiveDirectoriesRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [orderBy] - Hint for how to order the results
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListActiveDirectoriesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListActiveDirectoriesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/activeDirectories';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListActiveDirectoriesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the parameters of an active directories.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the active directory. Format:
  /// `projects/{project_number}/locations/{location_id}/activeDirectories/{active_directory_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/activeDirectories/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Active Directory resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    ActiveDirectory request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
}

class ProjectsLocationsBackupPoliciesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupPoliciesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates new backup policy
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to create the backup policies of, in the
  /// format `projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backupPolicyId] - Required. The ID to use for the backup policy. The ID
  /// must be unique within the specified location. Must contain only letters,
  /// numbers and hyphen, with the first character a letter, the last a letter
  /// or a number, and a 63 character maximum.
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
    BackupPolicy request,
    core.String parent, {
    core.String? backupPolicyId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupPolicyId != null) 'backupPolicyId': [backupPolicyId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupPolicies';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Warning! This operation will permanently delete the backup policy.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backup policy resource name, in the format
  /// `projects/{project_id}/locations/{location}/backupPolicies/{backup_policy_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPolicies/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Returns the description of the specified backup policy by
  /// backup_policy_id.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backupPolicy resource name, in the format
  /// `projects/{project_id}/locations/{location}/backupPolicies/{backup_policy_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPolicies/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BackupPolicy].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BackupPolicy> get(
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
    return BackupPolicy.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns list of all available backup policies.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListBackupPoliciesRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [orderBy] - Hint for how to order the results
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupPoliciesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupPoliciesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupPolicies';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupPoliciesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates settings of a specific backup policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the backup policy. Format:
  /// `projects/{project_id}/locations/{location}/backupPolicies/{backup_policy_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupPolicies/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Backup Policy resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    BackupPolicy request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
}

class ProjectsLocationsBackupVaultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupVaultsBackupsResource get backups =>
      ProjectsLocationsBackupVaultsBackupsResource(_requester);

  ProjectsLocationsBackupVaultsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates new backup vault
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location to create the backup vaults, in the
  /// format `projects/{project_id}/locations/{location}`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [backupVaultId] - Required. The ID to use for the backupVault. The ID must
  /// be unique within the specified location. Must contain only letters,
  /// numbers and hyphen, with the first character a letter, the last a letter
  /// or a number, and a 63 character maximum.
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupVaultId != null) 'backupVaultId': [backupVaultId],
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

  /// Warning! This operation will permanently delete the backup vault.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backupVault resource name, in the format
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Returns the description of the specified backup vault
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backupVault resource name, in the format
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
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
    return BackupVault.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns list of all available backup vaults.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The location for which to retrieve backupVault
  /// information, in the format `projects/{project_id}/locations/{location}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backupVaults';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupVaultsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific backup vault.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the backup vault. Format:
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Backup resource to be updated. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
}

class ProjectsLocationsBackupVaultsBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsBackupVaultsBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a backup from the volume specified in the request The backup can
  /// be created from the given snapshot if specified in the request.
  ///
  /// If no snapshot specified, there'll be a new snapshot taken to initiate the
  /// backup creation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The NetApp backupVault to create the backups of, in
  /// the format `projects / * /locations / * /backupVaults/{backup_vault_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
  ///
  /// [backupId] - Required. The ID to use for the backup. The ID must be unique
  /// within the specified backupVault. Must contain only letters, numbers and
  /// hyphen, with the first character a letter, the last a letter or a number,
  /// and a 63 character maximum.
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
    Backup request,
    core.String parent, {
    core.String? backupId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Warning! This operation will permanently delete the backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backup resource name, in the format
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}/backups/{backup_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/backups/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Returns the description of the specified backup
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The backup resource name, in the format
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}/backups/{backup_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/backups/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Returns descriptions of all backups for a backupVault.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The backupVault for which to retrieve backup
  /// information, in the format
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}`.
  /// To retrieve backup information for all locations, use "-" for the
  /// `{location}` value. To retrieve backup information for all backupVaults,
  /// use "-" for the `{backup_vault_id}` value. To retrieve backup information
  /// for a volume, use "-" for the `{backup_vault_id}` value and specify volume
  /// full name with the filter.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+$`.
  ///
  /// [filter] - The standard list filter. If specified, backups will be
  /// returned based on the attribute name that matches the filter expression.
  /// If empty, then no backups are filtered out. See https://google.aip.dev/160
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return. The service may return
  /// fewer than this value. The maximum value is 1000; values above 1000 will
  /// be coerced to 1000.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListBackupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update backup with full spec.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the backup. Format:
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}/backups/{backup_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/backupVaults/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Backup resource to be updated. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
}

class ProjectsLocationsKmsConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsKmsConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new KMS config.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [kmsConfigId] - Required. Id of the requesting KmsConfig. Must be unique
  /// within the parent resource. Must contain only letters, numbers and hyphen,
  /// with the first character a letter, the last a letter or a number, and a 63
  /// character maximum.
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
    KmsConfig request,
    core.String parent, {
    core.String? kmsConfigId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (kmsConfigId != null) 'kmsConfigId': [kmsConfigId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/kmsConfigs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Warning! This operation will permanently delete the Kms config.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the KmsConfig.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/kmsConfigs/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Encrypt the existing volumes without CMEK encryption with the desired the
  /// KMS config for the whole region.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the KmsConfig.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/kmsConfigs/\[^/\]+$`.
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
  async.Future<Operation> encrypt(
    EncryptVolumesRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':encrypt';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns the description of the specified KMS config by kms_config_id.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the KmsConfig
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/kmsConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [KmsConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<KmsConfig> get(
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
    return KmsConfig.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns descriptions of all KMS configs owned by the caller.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListKmsConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListKmsConfigsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/kmsConfigs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListKmsConfigsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the Kms config properties with the full spec
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the KmsConfig.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/kmsConfigs/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the KmsConfig resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    KmsConfig request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Verifies KMS config reachability.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the KMS Config to be verified.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/kmsConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [VerifyKmsConfigResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<VerifyKmsConfigResponse> verify(
    VerifyKmsConfigRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':verify';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return VerifyKmsConfigResponse.fromJson(
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
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> cancel(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  async.Future<Operation> get(
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsStoragePoolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsStoragePoolsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new storage pool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [storagePoolId] - Required. Id of the requesting storage pool. Must be
  /// unique within the parent resource. Must contain only letters, numbers and
  /// hyphen, with the first character a letter, the last a letter or a number,
  /// and a 63 character maximum.
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
    StoragePool request,
    core.String parent, {
    core.String? storagePoolId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (storagePoolId != null) 'storagePoolId': [storagePoolId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/storagePools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Warning! This operation will permanently delete the storage pool.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the storage pool
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/storagePools/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Returns the description of the specified storage pool by poolId.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the storage pool
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/storagePools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [StoragePool].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<StoragePool> get(
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
    return StoragePool.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns descriptions of all storage pools owned by the caller.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. List filter.
  ///
  /// [orderBy] - Optional. Sort results. Supported values are "name", "name
  /// desc" or "" (unsorted).
  ///
  /// [pageSize] - Optional. The maximum number of items to return.
  ///
  /// [pageToken] - Optional. The next_page_token value to use if there are
  /// additional results to retrieve for this list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListStoragePoolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListStoragePoolsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/storagePools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListStoragePoolsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the storage pool properties with the full spec
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the storage pool
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/storagePools/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the StoragePool resource by the update. The fields
  /// specified in the update_mask are relative to the resource, not the full
  /// request. A field will be overwritten if it is in the mask. If the user
  /// does not provide a mask then all fields will be overwritten.
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
    StoragePool request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// This operation will switch the active/replica zone for a regional
  /// storagePool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the storage pool
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/storagePools/\[^/\]+$`.
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
  async.Future<Operation> switch_(
    SwitchActiveReplicaZoneRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':switch';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVolumesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVolumesReplicationsResource get replications =>
      ProjectsLocationsVolumesReplicationsResource(_requester);
  ProjectsLocationsVolumesSnapshotsResource get snapshots =>
      ProjectsLocationsVolumesSnapshotsResource(_requester);

  ProjectsLocationsVolumesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Volume in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [volumeId] - Required. Id of the requesting volume. Must be unique within
  /// the parent resource. Must contain only letters, numbers and hyphen, with
  /// the first character a letter, the last a letter or a number, and a 63
  /// character maximum.
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
    Volume request,
    core.String parent, {
    core.String? volumeId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (volumeId != null) 'volumeId': [volumeId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/volumes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Volume.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the volume
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [force] - If this field is set as true, CCFE will not block the volume
  /// resource deletion even if it has any snapshots resource. (Otherwise, the
  /// request will only work if the volume has no snapshots.)
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
    core.bool? force,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (force != null) 'force': ['${force}'],
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

  /// Gets details of a single Volume.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the volume
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Volume].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Volume> get(
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
    return Volume.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Volumes in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListVolumesRequest
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filtering results
  ///
  /// [orderBy] - Hint for how to order the results
  ///
  /// [pageSize] - Requested page size. Server may return fewer items than
  /// requested. If unspecified, the server will pick an appropriate default.
  ///
  /// [pageToken] - A token identifying a page of results the server should
  /// return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListVolumesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListVolumesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/volumes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListVolumesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Volume.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Name of the volume
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Volume resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
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
    Volume request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Revert an existing volume to a specified snapshot.
  ///
  /// Warning! This operation will permanently revert all changes made after the
  /// snapshot was created.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the volume, in the format of
  /// projects/{project_id}/locations/{location}/volumes/{volume_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
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
  async.Future<Operation> revert(
    RevertVolumeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':revert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVolumesReplicationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVolumesReplicationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new replication for a volume.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The NetApp volume to create the replications of, in
  /// the format
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [replicationId] - Required. ID of the replication to create. Must be
  /// unique within the parent resource. Must contain only letters, numbers and
  /// hyphen, with the first character a letter, the last a letter or a number,
  /// and a 63 character maximum.
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
    Replication request,
    core.String parent, {
    core.String? replicationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (replicationId != null) 'replicationId': [replicationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/replications';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a replication.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The replication resource name, in the format `projects
  /// / * /locations / * /volumes / * /replications/{replication_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/replications/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Describe a replication for a volume.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The replication resource name, in the format
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}/replications/{replication_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/replications/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Replication].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Replication> get(
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
    return Replication.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns descriptions of all replications for a volume.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The volume for which to retrieve replication
  /// information, in the format
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListReplicationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListReplicationsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/replications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListReplicationsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific replication.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the Replication. Format:
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}/replications/{replication_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/replications/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field.
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
    Replication request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Resume Cross Region Replication.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the replication, in the format of
  /// projects/{project_id}/locations/{location}/volumes/{volume_id}/replications/{replication_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/replications/\[^/\]+$`.
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
  async.Future<Operation> resume(
    ResumeReplicationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':resume';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Reverses direction of replication.
  ///
  /// Source becomes destination and destination becomes source.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the replication, in the format of
  /// projects/{project_id}/locations/{location}/volumes/{volume_id}/replications/{replication_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/replications/\[^/\]+$`.
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
  async.Future<Operation> reverseDirection(
    ReverseReplicationDirectionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':reverseDirection';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stop Cross Region Replication.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the replication, in the format of
  /// projects/{project_id}/locations/{location}/volumes/{volume_id}/replications/{replication_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/replications/\[^/\]+$`.
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
  async.Future<Operation> stop(
    StopReplicationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':stop';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsVolumesSnapshotsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsVolumesSnapshotsResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a new snapshot for a volume.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The NetApp volume to create the snapshots of, in the
  /// format `projects/{project_id}/locations/{location}/volumes/{volume_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [snapshotId] - Required. ID of the snapshot to create. Must be unique
  /// within the parent resource. Must contain only letters, numbers and hyphen,
  /// with the first character a letter, the last a letter or a number, and a 63
  /// character maximum.
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
    Snapshot request,
    core.String parent, {
    core.String? snapshotId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (snapshotId != null) 'snapshotId': [snapshotId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/snapshots';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a snapshot.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The snapshot resource name, in the format `projects / *
  /// /locations / * /volumes / * /snapshots/{snapshot_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/snapshots/\[^/\]+$`.
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
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

  /// Describe a snapshot for a volume.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The snapshot resource name, in the format
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}/snapshots/{snapshot_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/snapshots/\[^/\]+$`.
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
    return Snapshot.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns descriptions of all snapshots for a volume.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The volume for which to retrieve snapshot
  /// information, in the format
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+$`.
  ///
  /// [filter] - List filter.
  ///
  /// [orderBy] - Sort results. Supported values are "name", "name desc" or ""
  /// (unsorted).
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value to use if there are additional
  /// results to retrieve for this list request.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/snapshots';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSnapshotsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the settings of a specific snapshot.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The resource name of the snapshot. Format:
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}/snapshots/{snapshot_id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/volumes/\[^/\]+/snapshots/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Mask of fields to update. At least one path must
  /// be supplied in this field.
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
    Snapshot request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
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
}

/// ActiveDirectory is the public representation of the active directory config.
class ActiveDirectory {
  /// Users to be added to the Built-in Admininstrators group.
  ///
  /// Optional.
  core.List<core.String>? administrators;

  /// If enabled, AES encryption will be enabled for SMB communication.
  core.bool? aesEncryption;

  /// Users to be added to the Built-in Backup Operator active directory group.
  ///
  /// Optional.
  core.List<core.String>? backupOperators;

  /// Create time of the active directory.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the active directory.
  core.String? description;

  /// Comma separated list of DNS server IP addresses for the Active Directory
  /// domain.
  ///
  /// Required.
  core.String? dns;

  /// Name of the Active Directory domain
  ///
  /// Required.
  core.String? domain;

  /// If enabled, traffic between the SMB server to Domain Controller (DC) will
  /// be encrypted.
  core.bool? encryptDcConnections;

  /// Name of the active directory machine.
  ///
  /// This optional parameter is used only while creating kerberos volume
  core.String? kdcHostname;

  /// KDC server IP address for the active directory machine.
  core.String? kdcIp;

  /// Labels for the active directory.
  core.Map<core.String, core.String>? labels;

  /// Specifies whether or not the LDAP traffic needs to be signed.
  core.bool? ldapSigning;

  /// Identifier.
  ///
  /// The resource name of the active directory. Format:
  /// `projects/{project_number}/locations/{location_id}/activeDirectories/{active_directory_id}`.
  core.String? name;

  /// NetBIOSPrefix is used as a prefix for SMB server name.
  ///
  /// Required.
  core.String? netBiosPrefix;

  /// If enabled, will allow access to local users and LDAP users.
  ///
  /// If access is needed for only LDAP users, it has to be disabled.
  core.bool? nfsUsersWithLdap;

  /// The Organizational Unit (OU) within the Windows Active Directory the user
  /// belongs to.
  core.String? organizationalUnit;

  /// Password of the Active Directory domain administrator.
  ///
  /// Required.
  core.String? password;

  /// Domain users to be given the SeSecurityPrivilege.
  ///
  /// Optional.
  core.List<core.String>? securityOperators;

  /// The Active Directory site the service will limit Domain Controller
  /// discovery too.
  core.String? site;

  /// The state of the AD.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified Active Directory State
  /// - "CREATING" : Active Directory State is Creating
  /// - "READY" : Active Directory State is Ready
  /// - "UPDATING" : Active Directory State is Updating
  /// - "IN_USE" : Active Directory State is In use
  /// - "DELETING" : Active Directory State is Deleting
  /// - "ERROR" : Active Directory State is Error
  /// - "DIAGNOSING" : Active Directory State is Diagnosing.
  core.String? state;

  /// The state details of the Active Directory.
  ///
  /// Output only.
  core.String? stateDetails;

  /// Username of the Active Directory domain administrator.
  ///
  /// Required.
  core.String? username;

  ActiveDirectory({
    this.administrators,
    this.aesEncryption,
    this.backupOperators,
    this.createTime,
    this.description,
    this.dns,
    this.domain,
    this.encryptDcConnections,
    this.kdcHostname,
    this.kdcIp,
    this.labels,
    this.ldapSigning,
    this.name,
    this.netBiosPrefix,
    this.nfsUsersWithLdap,
    this.organizationalUnit,
    this.password,
    this.securityOperators,
    this.site,
    this.state,
    this.stateDetails,
    this.username,
  });

  ActiveDirectory.fromJson(core.Map json_)
      : this(
          administrators: (json_['administrators'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          aesEncryption: json_['aesEncryption'] as core.bool?,
          backupOperators: (json_['backupOperators'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          dns: json_['dns'] as core.String?,
          domain: json_['domain'] as core.String?,
          encryptDcConnections: json_['encryptDcConnections'] as core.bool?,
          kdcHostname: json_['kdcHostname'] as core.String?,
          kdcIp: json_['kdcIp'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          ldapSigning: json_['ldapSigning'] as core.bool?,
          name: json_['name'] as core.String?,
          netBiosPrefix: json_['netBiosPrefix'] as core.String?,
          nfsUsersWithLdap: json_['nfsUsersWithLdap'] as core.bool?,
          organizationalUnit: json_['organizationalUnit'] as core.String?,
          password: json_['password'] as core.String?,
          securityOperators: (json_['securityOperators'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          site: json_['site'] as core.String?,
          state: json_['state'] as core.String?,
          stateDetails: json_['stateDetails'] as core.String?,
          username: json_['username'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (administrators != null) 'administrators': administrators!,
        if (aesEncryption != null) 'aesEncryption': aesEncryption!,
        if (backupOperators != null) 'backupOperators': backupOperators!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (dns != null) 'dns': dns!,
        if (domain != null) 'domain': domain!,
        if (encryptDcConnections != null)
          'encryptDcConnections': encryptDcConnections!,
        if (kdcHostname != null) 'kdcHostname': kdcHostname!,
        if (kdcIp != null) 'kdcIp': kdcIp!,
        if (labels != null) 'labels': labels!,
        if (ldapSigning != null) 'ldapSigning': ldapSigning!,
        if (name != null) 'name': name!,
        if (netBiosPrefix != null) 'netBiosPrefix': netBiosPrefix!,
        if (nfsUsersWithLdap != null) 'nfsUsersWithLdap': nfsUsersWithLdap!,
        if (organizationalUnit != null)
          'organizationalUnit': organizationalUnit!,
        if (password != null) 'password': password!,
        if (securityOperators != null) 'securityOperators': securityOperators!,
        if (site != null) 'site': site!,
        if (state != null) 'state': state!,
        if (stateDetails != null) 'stateDetails': stateDetails!,
        if (username != null) 'username': username!,
      };
}

/// A NetApp Backup.
class Backup {
  /// Type of backup, manually created or created by a backup policy.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified backup type.
  /// - "MANUAL" : Manual backup type.
  /// - "SCHEDULED" : Scheduled backup type.
  core.String? backupType;

  /// Total size of all backups in a chain in bytes = baseline backup size +
  /// sum(incremental backup size)
  ///
  /// Output only.
  core.String? chainStorageBytes;

  /// The time when the backup was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of the backup with 2048 characters or less.
  ///
  /// Requests with longer descriptions will be rejected.
  core.String? description;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the backup. Format:
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}/backups/{backup_id}`.
  core.String? name;

  /// If specified, backup will be created from the given snapshot.
  ///
  /// If not specified, there will be a new snapshot taken to initiate the
  /// backup creation. Format:
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}/snapshots/{snapshot_id}`
  core.String? sourceSnapshot;

  /// Volume full name of this backup belongs to.
  ///
  /// Format: `projects/{projects_id}/locations/{location}/volumes/{volume_id}`
  core.String? sourceVolume;

  /// The backup state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : Backup is being created. While in this state, the snapshot
  /// for the backup point-in-time may not have been created yet, and so the
  /// point-in-time may not have been fixed.
  /// - "UPLOADING" : Backup is being uploaded. While in this state, none of the
  /// writes to the volume will be included in the backup.
  /// - "READY" : Backup is available for use.
  /// - "DELETING" : Backup is being deleted.
  /// - "ERROR" : Backup is not valid and cannot be used for creating new
  /// volumes or restoring existing volumes.
  /// - "UPDATING" : Backup is being updated.
  core.String? state;

  /// Size of the file system when the backup was created.
  ///
  /// When creating a new volume from the backup, the volume capacity will have
  /// to be at least as big.
  ///
  /// Output only.
  core.String? volumeUsageBytes;

  Backup({
    this.backupType,
    this.chainStorageBytes,
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.sourceSnapshot,
    this.sourceVolume,
    this.state,
    this.volumeUsageBytes,
  });

  Backup.fromJson(core.Map json_)
      : this(
          backupType: json_['backupType'] as core.String?,
          chainStorageBytes: json_['chainStorageBytes'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          sourceSnapshot: json_['sourceSnapshot'] as core.String?,
          sourceVolume: json_['sourceVolume'] as core.String?,
          state: json_['state'] as core.String?,
          volumeUsageBytes: json_['volumeUsageBytes'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupType != null) 'backupType': backupType!,
        if (chainStorageBytes != null) 'chainStorageBytes': chainStorageBytes!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (sourceSnapshot != null) 'sourceSnapshot': sourceSnapshot!,
        if (sourceVolume != null) 'sourceVolume': sourceVolume!,
        if (state != null) 'state': state!,
        if (volumeUsageBytes != null) 'volumeUsageBytes': volumeUsageBytes!,
      };
}

/// BackupConfig contains backup related config on a volume.
class BackupConfig {
  /// Total size of all backups in a chain in bytes = baseline backup size +
  /// sum(incremental backup size).
  ///
  /// Output only.
  core.String? backupChainBytes;

  /// When specified, schedule backups will be created based on the policy
  /// configuration.
  ///
  /// Optional.
  core.List<core.String>? backupPolicies;

  /// Name of backup vault.
  ///
  /// Format:
  /// projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}
  ///
  /// Optional.
  core.String? backupVault;

  /// When set to true, scheduled backup is enabled on the volume.
  ///
  /// This field should be nil when there's no backup policy attached.
  ///
  /// Optional.
  core.bool? scheduledBackupEnabled;

  BackupConfig({
    this.backupChainBytes,
    this.backupPolicies,
    this.backupVault,
    this.scheduledBackupEnabled,
  });

  BackupConfig.fromJson(core.Map json_)
      : this(
          backupChainBytes: json_['backupChainBytes'] as core.String?,
          backupPolicies: (json_['backupPolicies'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          backupVault: json_['backupVault'] as core.String?,
          scheduledBackupEnabled: json_['scheduledBackupEnabled'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupChainBytes != null) 'backupChainBytes': backupChainBytes!,
        if (backupPolicies != null) 'backupPolicies': backupPolicies!,
        if (backupVault != null) 'backupVault': backupVault!,
        if (scheduledBackupEnabled != null)
          'scheduledBackupEnabled': scheduledBackupEnabled!,
      };
}

/// Backup Policy.
class BackupPolicy {
  /// The total number of volumes assigned by this backup policy.
  ///
  /// Output only.
  core.int? assignedVolumeCount;

  /// The time when the backup policy was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Number of daily backups to keep.
  ///
  /// Note that the minimum daily backup limit is 2.
  core.int? dailyBackupLimit;

  /// Description of the backup policy.
  core.String? description;

  /// If enabled, make backups automatically according to the schedules.
  ///
  /// This will be applied to all volumes that have this policy attached and
  /// enforced on volume level. If not specified, default is true.
  core.bool? enabled;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String>? labels;

  /// Number of monthly backups to keep.
  ///
  /// Note that the sum of daily, weekly and monthly backups should be greater
  /// than 1.
  core.int? monthlyBackupLimit;

  /// Identifier.
  ///
  /// The resource name of the backup policy. Format:
  /// `projects/{project_id}/locations/{location}/backupPolicies/{backup_policy_id}`.
  core.String? name;

  /// The backup policy state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : BackupPolicy is being created.
  /// - "READY" : BackupPolicy is available for use.
  /// - "DELETING" : BackupPolicy is being deleted.
  /// - "ERROR" : BackupPolicy is not valid and cannot be used.
  /// - "UPDATING" : BackupPolicy is being updated.
  core.String? state;

  /// Number of weekly backups to keep.
  ///
  /// Note that the sum of daily, weekly and monthly backups should be greater
  /// than 1.
  core.int? weeklyBackupLimit;

  BackupPolicy({
    this.assignedVolumeCount,
    this.createTime,
    this.dailyBackupLimit,
    this.description,
    this.enabled,
    this.labels,
    this.monthlyBackupLimit,
    this.name,
    this.state,
    this.weeklyBackupLimit,
  });

  BackupPolicy.fromJson(core.Map json_)
      : this(
          assignedVolumeCount: json_['assignedVolumeCount'] as core.int?,
          createTime: json_['createTime'] as core.String?,
          dailyBackupLimit: json_['dailyBackupLimit'] as core.int?,
          description: json_['description'] as core.String?,
          enabled: json_['enabled'] as core.bool?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          monthlyBackupLimit: json_['monthlyBackupLimit'] as core.int?,
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          weeklyBackupLimit: json_['weeklyBackupLimit'] as core.int?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (assignedVolumeCount != null)
          'assignedVolumeCount': assignedVolumeCount!,
        if (createTime != null) 'createTime': createTime!,
        if (dailyBackupLimit != null) 'dailyBackupLimit': dailyBackupLimit!,
        if (description != null) 'description': description!,
        if (enabled != null) 'enabled': enabled!,
        if (labels != null) 'labels': labels!,
        if (monthlyBackupLimit != null)
          'monthlyBackupLimit': monthlyBackupLimit!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (weeklyBackupLimit != null) 'weeklyBackupLimit': weeklyBackupLimit!,
      };
}

/// A NetApp BackupVault.
class BackupVault {
  /// Create time of the backup vault.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the backup vault.
  core.String? description;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the backup vault. Format:
  /// `projects/{project_id}/locations/{location}/backupVaults/{backup_vault_id}`.
  core.String? name;

  /// The backup vault state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State not set.
  /// - "CREATING" : BackupVault is being created.
  /// - "READY" : BackupVault is available for use.
  /// - "DELETING" : BackupVault is being deleted.
  /// - "ERROR" : BackupVault is not valid and cannot be used.
  /// - "UPDATING" : BackupVault is being updated.
  core.String? state;

  BackupVault({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.state,
  });

  BackupVault.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Make a snapshot every day e.g. at 04:00, 05:20, 23:50
class DailySchedule {
  /// Set the hour to start the snapshot (0-23), defaults to midnight (0).
  core.double? hour;

  /// Set the minute of the hour to start the snapshot (0-59), defaults to the
  /// top of the hour (0).
  core.double? minute;

  /// The maximum number of Snapshots to keep for the hourly schedule
  core.double? snapshotsToKeep;

  DailySchedule({
    this.hour,
    this.minute,
    this.snapshotsToKeep,
  });

  DailySchedule.fromJson(core.Map json_)
      : this(
          hour: (json_['hour'] as core.num?)?.toDouble(),
          minute: (json_['minute'] as core.num?)?.toDouble(),
          snapshotsToKeep: (json_['snapshotsToKeep'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (hour != null) 'hour': hour!,
        if (minute != null) 'minute': minute!,
        if (snapshotsToKeep != null) 'snapshotsToKeep': snapshotsToKeep!,
      };
}

/// DestinationVolumeParameters specify input parameters used for creating
/// destination volume.
class DestinationVolumeParameters {
  /// Description for the destination volume.
  core.String? description;

  /// Destination volume's share name.
  ///
  /// If not specified, source volume's share name will be used.
  core.String? shareName;

  /// Existing destination StoragePool name.
  ///
  /// Required.
  core.String? storagePool;

  /// Desired destination volume resource id.
  ///
  /// If not specified, source volume's resource id will be used. This value
  /// must start with a lowercase letter followed by up to 62 lowercase letters,
  /// numbers, or hyphens, and cannot end with a hyphen.
  core.String? volumeId;

  DestinationVolumeParameters({
    this.description,
    this.shareName,
    this.storagePool,
    this.volumeId,
  });

  DestinationVolumeParameters.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          shareName: json_['shareName'] as core.String?,
          storagePool: json_['storagePool'] as core.String?,
          volumeId: json_['volumeId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (shareName != null) 'shareName': shareName!,
        if (storagePool != null) 'storagePool': storagePool!,
        if (volumeId != null) 'volumeId': volumeId!,
      };
}

/// EncryptVolumesRequest specifies the KMS config to encrypt existing volumes.
typedef EncryptVolumesRequest = $Empty;

/// Defines the export policy for the volume.
class ExportPolicy {
  /// List of export policy rules
  ///
  /// Required.
  core.List<SimpleExportPolicyRule>? rules;

  ExportPolicy({
    this.rules,
  });

  ExportPolicy.fromJson(core.Map json_)
      : this(
          rules: (json_['rules'] as core.List?)
              ?.map((value) => SimpleExportPolicyRule.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rules != null) 'rules': rules!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// Make a snapshot every hour e.g. at 04:00, 05:00, 06:00.
class HourlySchedule {
  /// Set the minute of the hour to start the snapshot (0-59), defaults to the
  /// top of the hour (0).
  core.double? minute;

  /// The maximum number of Snapshots to keep for the hourly schedule
  core.double? snapshotsToKeep;

  HourlySchedule({
    this.minute,
    this.snapshotsToKeep,
  });

  HourlySchedule.fromJson(core.Map json_)
      : this(
          minute: (json_['minute'] as core.num?)?.toDouble(),
          snapshotsToKeep: (json_['snapshotsToKeep'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (minute != null) 'minute': minute!,
        if (snapshotsToKeep != null) 'snapshotsToKeep': snapshotsToKeep!,
      };
}

/// KmsConfig is the customer managed encryption key(CMEK) configuration.
class KmsConfig {
  /// Create time of the KmsConfig.
  ///
  /// Output only.
  core.String? createTime;

  /// Customer managed crypto key resource full name.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{key}.
  ///
  /// Required.
  core.String? cryptoKeyName;

  /// Description of the KmsConfig.
  core.String? description;

  /// Instructions to provide the access to the customer provided encryption
  /// key.
  ///
  /// Output only.
  core.String? instructions;

  /// Labels as key value pairs
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Name of the KmsConfig.
  core.String? name;

  /// The Service account which will have access to the customer provided
  /// encryption key.
  ///
  /// Output only.
  core.String? serviceAccount;

  /// State of the KmsConfig.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified KmsConfig State
  /// - "READY" : KmsConfig State is Ready
  /// - "CREATING" : KmsConfig State is Creating
  /// - "DELETING" : KmsConfig State is Deleting
  /// - "UPDATING" : KmsConfig State is Updating
  /// - "IN_USE" : KmsConfig State is In Use.
  /// - "ERROR" : KmsConfig State is Error
  /// - "KEY_CHECK_PENDING" : KmsConfig State is Pending to verify crypto key
  /// access.
  /// - "KEY_NOT_REACHABLE" : KmsConfig State is Not accessbile by the SDE
  /// service account to the crypto key.
  /// - "DISABLING" : KmsConfig State is Disabling.
  /// - "DISABLED" : KmsConfig State is Disabled.
  /// - "MIGRATING" : KmsConfig State is Migrating. The existing volumes are
  /// migrating from SMEK to CMEK.
  core.String? state;

  /// State details of the KmsConfig.
  ///
  /// Output only.
  core.String? stateDetails;

  KmsConfig({
    this.createTime,
    this.cryptoKeyName,
    this.description,
    this.instructions,
    this.labels,
    this.name,
    this.serviceAccount,
    this.state,
    this.stateDetails,
  });

  KmsConfig.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          cryptoKeyName: json_['cryptoKeyName'] as core.String?,
          description: json_['description'] as core.String?,
          instructions: json_['instructions'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          serviceAccount: json_['serviceAccount'] as core.String?,
          state: json_['state'] as core.String?,
          stateDetails: json_['stateDetails'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (cryptoKeyName != null) 'cryptoKeyName': cryptoKeyName!,
        if (description != null) 'description': description!,
        if (instructions != null) 'instructions': instructions!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (state != null) 'state': state!,
        if (stateDetails != null) 'stateDetails': stateDetails!,
      };
}

/// ListActiveDirectoriesResponse contains all the active directories requested.
class ListActiveDirectoriesResponse {
  /// The list of active directories.
  core.List<ActiveDirectory>? activeDirectories;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListActiveDirectoriesResponse({
    this.activeDirectories,
    this.nextPageToken,
    this.unreachable,
  });

  ListActiveDirectoriesResponse.fromJson(core.Map json_)
      : this(
          activeDirectories: (json_['activeDirectories'] as core.List?)
              ?.map((value) => ActiveDirectory.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeDirectories != null) 'activeDirectories': activeDirectories!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListBackupPoliciesResponse contains all the backup policies requested.
class ListBackupPoliciesResponse {
  /// The list of backup policies.
  core.List<BackupPolicy>? backupPolicies;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupPoliciesResponse({
    this.backupPolicies,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupPoliciesResponse.fromJson(core.Map json_)
      : this(
          backupPolicies: (json_['backupPolicies'] as core.List?)
              ?.map((value) => BackupPolicy.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupPolicies != null) 'backupPolicies': backupPolicies!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListBackupVaultsResponse is the result of ListBackupVaultsRequest.
class ListBackupVaultsResponse {
  /// A list of backupVaults in the project for the specified location.
  core.List<BackupVault>? backupVaults;

  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
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
              ?.map((value) => BackupVault.fromJson(
                  value as core.Map<core.String, core.dynamic>))
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

/// ListBackupsResponse is the result of ListBackupsRequest.
class ListBackupsResponse {
  /// A list of backups in the project.
  core.List<Backup>? backups;

  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListBackupsResponse({
    this.backups,
    this.nextPageToken,
    this.unreachable,
  });

  ListBackupsResponse.fromJson(core.Map json_)
      : this(
          backups: (json_['backups'] as core.List?)
              ?.map((value) =>
                  Backup.fromJson(value as core.Map<core.String, core.dynamic>))
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

/// ListKmsConfigsResponse is the response to a ListKmsConfigsRequest.
class ListKmsConfigsResponse {
  /// The list of KmsConfigs
  core.List<KmsConfig>? kmsConfigs;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListKmsConfigsResponse({
    this.kmsConfigs,
    this.nextPageToken,
    this.unreachable,
  });

  ListKmsConfigsResponse.fromJson(core.Map json_)
      : this(
          kmsConfigs: (json_['kmsConfigs'] as core.List?)
              ?.map((value) => KmsConfig.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsConfigs != null) 'kmsConfigs': kmsConfigs!,
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

  ListLocationsResponse({
    this.locations,
    this.nextPageToken,
  });

  ListLocationsResponse.fromJson(core.Map json_)
      : this(
          locations: (json_['locations'] as core.List?)
              ?.map((value) => Location.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
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
          nextPageToken: json_['nextPageToken'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => Operation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (operations != null) 'operations': operations!,
      };
}

/// ListReplicationsResponse is the result of ListReplicationsRequest.
class ListReplicationsResponse {
  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String? nextPageToken;

  /// A list of replications in the project for the specified volume.
  core.List<Replication>? replications;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListReplicationsResponse({
    this.nextPageToken,
    this.replications,
    this.unreachable,
  });

  ListReplicationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          replications: (json_['replications'] as core.List?)
              ?.map((value) => Replication.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (replications != null) 'replications': replications!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListSnapshotsResponse is the result of ListSnapshotsRequest.
class ListSnapshotsResponse {
  /// The token you can use to retrieve the next page of results.
  ///
  /// Not returned if there are no more results in the list.
  core.String? nextPageToken;

  /// A list of snapshots in the project for the specified volume.
  core.List<Snapshot>? snapshots;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListSnapshotsResponse({
    this.nextPageToken,
    this.snapshots,
    this.unreachable,
  });

  ListSnapshotsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          snapshots: (json_['snapshots'] as core.List?)
              ?.map((value) => Snapshot.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (snapshots != null) 'snapshots': snapshots!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// ListStoragePoolsResponse is the response to a ListStoragePoolsRequest.
class ListStoragePoolsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of StoragePools
  core.List<StoragePool>? storagePools;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListStoragePoolsResponse({
    this.nextPageToken,
    this.storagePools,
    this.unreachable,
  });

  ListStoragePoolsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          storagePools: (json_['storagePools'] as core.List?)
              ?.map((value) => StoragePool.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (storagePools != null) 'storagePools': storagePools!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Message for response to listing Volumes
class ListVolumesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  /// The list of Volume
  core.List<Volume>? volumes;

  ListVolumesResponse({
    this.nextPageToken,
    this.unreachable,
    this.volumes,
  });

  ListVolumesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          volumes: (json_['volumes'] as core.List?)
              ?.map((value) =>
                  Volume.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
        if (volumes != null) 'volumes': volumes!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Make a snapshot once a month e.g. at 2nd 04:00, 7th 05:20, 24th 23:50
class MonthlySchedule {
  /// Set the day or days of the month to make a snapshot (1-31).
  ///
  /// Accepts a comma separated number of days. Defaults to '1'.
  core.String? daysOfMonth;

  /// Set the hour to start the snapshot (0-23), defaults to midnight (0).
  core.double? hour;

  /// Set the minute of the hour to start the snapshot (0-59), defaults to the
  /// top of the hour (0).
  core.double? minute;

  /// The maximum number of Snapshots to keep for the hourly schedule
  core.double? snapshotsToKeep;

  MonthlySchedule({
    this.daysOfMonth,
    this.hour,
    this.minute,
    this.snapshotsToKeep,
  });

  MonthlySchedule.fromJson(core.Map json_)
      : this(
          daysOfMonth: json_['daysOfMonth'] as core.String?,
          hour: (json_['hour'] as core.num?)?.toDouble(),
          minute: (json_['minute'] as core.num?)?.toDouble(),
          snapshotsToKeep: (json_['snapshotsToKeep'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (daysOfMonth != null) 'daysOfMonth': daysOfMonth!,
        if (hour != null) 'hour': hour!,
        if (minute != null) 'minute': minute!,
        if (snapshotsToKeep != null) 'snapshotsToKeep': snapshotsToKeep!,
      };
}

/// View only mount options for a volume.
class MountOption {
  /// Export string
  core.String? export;

  /// Full export string
  core.String? exportFull;

  /// Instructions for mounting
  core.String? instructions;

  /// Protocol to mount with.
  /// Possible string values are:
  /// - "PROTOCOLS_UNSPECIFIED" : Unspecified protocol
  /// - "NFSV3" : NFS V3 protocol
  /// - "NFSV4" : NFS V4 protocol
  /// - "SMB" : SMB protocol
  core.String? protocol;

  MountOption({
    this.export,
    this.exportFull,
    this.instructions,
    this.protocol,
  });

  MountOption.fromJson(core.Map json_)
      : this(
          export: json_['export'] as core.String?,
          exportFull: json_['exportFull'] as core.String?,
          instructions: json_['instructions'] as core.String?,
          protocol: json_['protocol'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (export != null) 'export': export!,
        if (exportFull != null) 'exportFull': exportFull!,
        if (instructions != null) 'instructions': instructions!,
        if (protocol != null) 'protocol': protocol!,
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

  Operation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  Operation.fromJson(core.Map json_)
      : this(
          done: json_['done'] as core.bool?,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
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

/// Replication is a nested resource under Volume, that describes a cross-region
/// replication relationship between 2 volumes in different regions.
class Replication {
  /// Replication create time.
  ///
  /// Output only.
  core.String? createTime;

  /// A description about this replication relationship.
  core.String? description;

  /// Full name of destination volume resource.
  ///
  /// Example : "projects/{project}/locations/{location}/volumes/{volume_id}"
  ///
  /// Output only.
  core.String? destinationVolume;

  /// Input only.
  ///
  /// Destination volume parameters
  ///
  /// Required.
  DestinationVolumeParameters? destinationVolumeParameters;

  /// Condition of the relationship.
  ///
  /// Can be one of the following: - true: The replication relationship is
  /// healthy. It has not missed the most recent scheduled transfer. - false:
  /// The replication relationship is not healthy. It has missed the most recent
  /// scheduled transfer.
  ///
  /// Output only.
  core.bool? healthy;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String>? labels;

  /// Indicates the state of mirroring.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MIRROR_STATE_UNSPECIFIED" : Unspecified MirrorState
  /// - "PREPARING" : Destination volume is being prepared.
  /// - "MIRRORED" : Destination volume has been initialized and is ready to
  /// receive replication transfers.
  /// - "STOPPED" : Destination volume is not receiving replication transfers.
  /// - "TRANSFERRING" : Incremental replication is in progress.
  core.String? mirrorState;

  /// Identifier.
  ///
  /// The resource name of the Replication. Format:
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}/replications/{replication_id}`.
  core.String? name;

  /// Indicates the schedule for replication.
  ///
  /// Required.
  /// Possible string values are:
  /// - "REPLICATION_SCHEDULE_UNSPECIFIED" : Unspecified ReplicationSchedule
  /// - "EVERY_10_MINUTES" : Replication happens once every 10 minutes.
  /// - "HOURLY" : Replication happens once every hour.
  /// - "DAILY" : Replication happens once every day.
  core.String? replicationSchedule;

  /// Indicates whether this points to source or destination.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REPLICATION_ROLE_UNSPECIFIED" : Unspecified replication role
  /// - "SOURCE" : Indicates Source volume.
  /// - "DESTINATION" : Indicates Destination volume.
  core.String? role;

  /// Full name of source volume resource.
  ///
  /// Example : "projects/{project}/locations/{location}/volumes/{volume_id}"
  ///
  /// Output only.
  core.String? sourceVolume;

  /// State of the replication.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified replication State
  /// - "CREATING" : Replication is creating.
  /// - "READY" : Replication is ready.
  /// - "UPDATING" : Replication is updating.
  /// - "DELETING" : Replication is deleting.
  /// - "ERROR" : Replication is in error state.
  core.String? state;

  /// State details of the replication.
  ///
  /// Output only.
  core.String? stateDetails;

  /// Replication transfer statistics.
  ///
  /// Output only.
  TransferStats? transferStats;

  Replication({
    this.createTime,
    this.description,
    this.destinationVolume,
    this.destinationVolumeParameters,
    this.healthy,
    this.labels,
    this.mirrorState,
    this.name,
    this.replicationSchedule,
    this.role,
    this.sourceVolume,
    this.state,
    this.stateDetails,
    this.transferStats,
  });

  Replication.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          destinationVolume: json_['destinationVolume'] as core.String?,
          destinationVolumeParameters:
              json_.containsKey('destinationVolumeParameters')
                  ? DestinationVolumeParameters.fromJson(
                      json_['destinationVolumeParameters']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          healthy: json_['healthy'] as core.bool?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          mirrorState: json_['mirrorState'] as core.String?,
          name: json_['name'] as core.String?,
          replicationSchedule: json_['replicationSchedule'] as core.String?,
          role: json_['role'] as core.String?,
          sourceVolume: json_['sourceVolume'] as core.String?,
          state: json_['state'] as core.String?,
          stateDetails: json_['stateDetails'] as core.String?,
          transferStats: json_.containsKey('transferStats')
              ? TransferStats.fromJson(
                  json_['transferStats'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (destinationVolume != null) 'destinationVolume': destinationVolume!,
        if (destinationVolumeParameters != null)
          'destinationVolumeParameters': destinationVolumeParameters!,
        if (healthy != null) 'healthy': healthy!,
        if (labels != null) 'labels': labels!,
        if (mirrorState != null) 'mirrorState': mirrorState!,
        if (name != null) 'name': name!,
        if (replicationSchedule != null)
          'replicationSchedule': replicationSchedule!,
        if (role != null) 'role': role!,
        if (sourceVolume != null) 'sourceVolume': sourceVolume!,
        if (state != null) 'state': state!,
        if (stateDetails != null) 'stateDetails': stateDetails!,
        if (transferStats != null) 'transferStats': transferStats!,
      };
}

/// The RestoreParameters if volume is created from a snapshot or backup.
class RestoreParameters {
  /// Full name of the backup resource.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/backupVaults/{backup_vault_id}/backups/{backup_id}
  core.String? sourceBackup;

  /// Full name of the snapshot resource.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/volumes/{volume}/snapshots/{snapshot}
  core.String? sourceSnapshot;

  RestoreParameters({
    this.sourceBackup,
    this.sourceSnapshot,
  });

  RestoreParameters.fromJson(core.Map json_)
      : this(
          sourceBackup: json_['sourceBackup'] as core.String?,
          sourceSnapshot: json_['sourceSnapshot'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceBackup != null) 'sourceBackup': sourceBackup!,
        if (sourceSnapshot != null) 'sourceSnapshot': sourceSnapshot!,
      };
}

/// ResumeReplicationRequest resumes a stopped replication.
typedef ResumeReplicationRequest = $Empty;

/// ReverseReplicationDirectionRequest reverses direction of replication.
///
/// Source becomes destination and destination becomes source.
typedef ReverseReplicationDirectionRequest = $Empty;

/// RevertVolumeRequest reverts the given volume to the specified snapshot.
class RevertVolumeRequest {
  /// The snapshot resource ID, in the format 'my-snapshot', where the specified
  /// ID is the {snapshot_id} of the fully qualified name like
  /// projects/{project_id}/locations/{location_id}/volumes/{volume_id}/snapshots/{snapshot_id}
  ///
  /// Required.
  core.String? snapshotId;

  RevertVolumeRequest({
    this.snapshotId,
  });

  RevertVolumeRequest.fromJson(core.Map json_)
      : this(
          snapshotId: json_['snapshotId'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (snapshotId != null) 'snapshotId': snapshotId!,
      };
}

/// An export policy rule describing various export options.
class SimpleExportPolicyRule {
  /// Access type (ReadWrite, ReadOnly, None)
  /// Possible string values are:
  /// - "ACCESS_TYPE_UNSPECIFIED" : Unspecified Access Type
  /// - "READ_ONLY" : Read Only
  /// - "READ_WRITE" : Read Write
  /// - "READ_NONE" : None
  core.String? accessType;

  /// Comma separated list of allowed clients IP addresses
  core.String? allowedClients;

  /// Whether Unix root access will be granted.
  core.String? hasRootAccess;

  /// If enabled (true) the rule defines a read only access for clients matching
  /// the 'allowedClients' specification.
  ///
  /// It enables nfs clients to mount using 'authentication' kerberos security
  /// mode.
  core.bool? kerberos5ReadOnly;

  /// If enabled (true) the rule defines read and write access for clients
  /// matching the 'allowedClients' specification.
  ///
  /// It enables nfs clients to mount using 'authentication' kerberos security
  /// mode. The 'kerberos5ReadOnly' value be ignored if this is enabled.
  core.bool? kerberos5ReadWrite;

  /// If enabled (true) the rule defines a read only access for clients matching
  /// the 'allowedClients' specification.
  ///
  /// It enables nfs clients to mount using 'integrity' kerberos security mode.
  core.bool? kerberos5iReadOnly;

  /// If enabled (true) the rule defines read and write access for clients
  /// matching the 'allowedClients' specification.
  ///
  /// It enables nfs clients to mount using 'integrity' kerberos security mode.
  /// The 'kerberos5iReadOnly' value be ignored if this is enabled.
  core.bool? kerberos5iReadWrite;

  /// If enabled (true) the rule defines a read only access for clients matching
  /// the 'allowedClients' specification.
  ///
  /// It enables nfs clients to mount using 'privacy' kerberos security mode.
  core.bool? kerberos5pReadOnly;

  /// If enabled (true) the rule defines read and write access for clients
  /// matching the 'allowedClients' specification.
  ///
  /// It enables nfs clients to mount using 'privacy' kerberos security mode.
  /// The 'kerberos5pReadOnly' value be ignored if this is enabled.
  core.bool? kerberos5pReadWrite;

  /// NFS V3 protocol.
  core.bool? nfsv3;

  /// NFS V4 protocol.
  core.bool? nfsv4;

  SimpleExportPolicyRule({
    this.accessType,
    this.allowedClients,
    this.hasRootAccess,
    this.kerberos5ReadOnly,
    this.kerberos5ReadWrite,
    this.kerberos5iReadOnly,
    this.kerberos5iReadWrite,
    this.kerberos5pReadOnly,
    this.kerberos5pReadWrite,
    this.nfsv3,
    this.nfsv4,
  });

  SimpleExportPolicyRule.fromJson(core.Map json_)
      : this(
          accessType: json_['accessType'] as core.String?,
          allowedClients: json_['allowedClients'] as core.String?,
          hasRootAccess: json_['hasRootAccess'] as core.String?,
          kerberos5ReadOnly: json_['kerberos5ReadOnly'] as core.bool?,
          kerberos5ReadWrite: json_['kerberos5ReadWrite'] as core.bool?,
          kerberos5iReadOnly: json_['kerberos5iReadOnly'] as core.bool?,
          kerberos5iReadWrite: json_['kerberos5iReadWrite'] as core.bool?,
          kerberos5pReadOnly: json_['kerberos5pReadOnly'] as core.bool?,
          kerberos5pReadWrite: json_['kerberos5pReadWrite'] as core.bool?,
          nfsv3: json_['nfsv3'] as core.bool?,
          nfsv4: json_['nfsv4'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessType != null) 'accessType': accessType!,
        if (allowedClients != null) 'allowedClients': allowedClients!,
        if (hasRootAccess != null) 'hasRootAccess': hasRootAccess!,
        if (kerberos5ReadOnly != null) 'kerberos5ReadOnly': kerberos5ReadOnly!,
        if (kerberos5ReadWrite != null)
          'kerberos5ReadWrite': kerberos5ReadWrite!,
        if (kerberos5iReadOnly != null)
          'kerberos5iReadOnly': kerberos5iReadOnly!,
        if (kerberos5iReadWrite != null)
          'kerberos5iReadWrite': kerberos5iReadWrite!,
        if (kerberos5pReadOnly != null)
          'kerberos5pReadOnly': kerberos5pReadOnly!,
        if (kerberos5pReadWrite != null)
          'kerberos5pReadWrite': kerberos5pReadWrite!,
        if (nfsv3 != null) 'nfsv3': nfsv3!,
        if (nfsv4 != null) 'nfsv4': nfsv4!,
      };
}

/// Snapshot is a point-in-time version of a Volume's content.
class Snapshot {
  /// The time when the snapshot was created.
  ///
  /// Output only.
  core.String? createTime;

  /// A description of the snapshot with 2048 characters or less.
  ///
  /// Requests with longer descriptions will be rejected.
  core.String? description;

  /// Resource labels to represent user provided metadata.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the snapshot. Format:
  /// `projects/{project_id}/locations/{location}/volumes/{volume_id}/snapshots/{snapshot_id}`.
  core.String? name;

  /// The snapshot state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified Snapshot State
  /// - "READY" : Snapshot State is Ready
  /// - "CREATING" : Snapshot State is Creating
  /// - "DELETING" : Snapshot State is Deleting
  /// - "UPDATING" : Snapshot State is Updating
  /// - "DISABLED" : Snapshot State is Disabled
  /// - "ERROR" : Snapshot State is Error
  core.String? state;

  /// State details of the storage pool
  ///
  /// Output only.
  core.String? stateDetails;

  /// Current storage usage for the snapshot in bytes.
  ///
  /// Output only.
  core.double? usedBytes;

  Snapshot({
    this.createTime,
    this.description,
    this.labels,
    this.name,
    this.state,
    this.stateDetails,
    this.usedBytes,
  });

  Snapshot.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
          stateDetails: json_['stateDetails'] as core.String?,
          usedBytes: (json_['usedBytes'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (stateDetails != null) 'stateDetails': stateDetails!,
        if (usedBytes != null) 'usedBytes': usedBytes!,
      };
}

/// Snapshot Policy for a volume.
class SnapshotPolicy {
  /// Daily schedule policy.
  DailySchedule? dailySchedule;

  /// If enabled, make snapshots automatically according to the schedules.
  ///
  /// Default is false.
  core.bool? enabled;

  /// Hourly schedule policy.
  HourlySchedule? hourlySchedule;

  /// Monthly schedule policy.
  MonthlySchedule? monthlySchedule;

  /// Weekly schedule policy.
  WeeklySchedule? weeklySchedule;

  SnapshotPolicy({
    this.dailySchedule,
    this.enabled,
    this.hourlySchedule,
    this.monthlySchedule,
    this.weeklySchedule,
  });

  SnapshotPolicy.fromJson(core.Map json_)
      : this(
          dailySchedule: json_.containsKey('dailySchedule')
              ? DailySchedule.fromJson(
                  json_['dailySchedule'] as core.Map<core.String, core.dynamic>)
              : null,
          enabled: json_['enabled'] as core.bool?,
          hourlySchedule: json_.containsKey('hourlySchedule')
              ? HourlySchedule.fromJson(json_['hourlySchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          monthlySchedule: json_.containsKey('monthlySchedule')
              ? MonthlySchedule.fromJson(json_['monthlySchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
          weeklySchedule: json_.containsKey('weeklySchedule')
              ? WeeklySchedule.fromJson(json_['weeklySchedule']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dailySchedule != null) 'dailySchedule': dailySchedule!,
        if (enabled != null) 'enabled': enabled!,
        if (hourlySchedule != null) 'hourlySchedule': hourlySchedule!,
        if (monthlySchedule != null) 'monthlySchedule': monthlySchedule!,
        if (weeklySchedule != null) 'weeklySchedule': weeklySchedule!,
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

/// StopReplicationRequest stops a replication until resumed.
class StopReplicationRequest {
  /// Indicates whether to stop replication forcefully while data transfer is in
  /// progress.
  ///
  /// Warning! if force is true, this will abort any current transfers and can
  /// lead to data loss due to partial transfer. If force is false, stop
  /// replication will fail while data transfer is in progress and you will need
  /// to retry later.
  core.bool? force;

  StopReplicationRequest({
    this.force,
  });

  StopReplicationRequest.fromJson(core.Map json_)
      : this(
          force: json_['force'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (force != null) 'force': force!,
      };
}

/// StoragePool is a container for volumes with a service level and capacity.
///
/// Volumes can be created in a pool of sufficient available capacity.
/// StoragePool capacity is what you are billed for.
class StoragePool {
  /// Specifies the Active Directory to be used for creating a SMB volume.
  ///
  /// Optional.
  core.String? activeDirectory;

  /// True if the storage pool supports Auto Tiering enabled volumes.
  ///
  /// Default is false. Auto-tiering can be enabled after storage pool creation
  /// but it can't be disabled once enabled.
  ///
  /// Optional.
  core.bool? allowAutoTiering;

  /// Capacity in GIB of the pool
  ///
  /// Required.
  core.String? capacityGib;

  /// Create time of the storage pool
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the storage pool
  ///
  /// Optional.
  core.String? description;

  /// Specifies the current pool encryption key source.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENCRYPTION_TYPE_UNSPECIFIED" : The source of the encryption key is not
  /// specified.
  /// - "SERVICE_MANAGED" : Google managed encryption key.
  /// - "CLOUD_KMS" : Customer managed encryption key, which is stored in KMS.
  core.String? encryptionType;

  /// Used to allow SO pool to access AD or DNS server from other regions.
  ///
  /// Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? globalAccessAllowed;

  /// Specifies the KMS config to be used for volume encryption.
  ///
  /// Optional.
  core.String? kmsConfig;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Flag indicating if the pool is NFS LDAP enabled or not.
  ///
  /// Optional.
  core.bool? ldapEnabled;

  /// Identifier.
  ///
  /// Name of the storage pool
  core.String? name;

  /// VPC Network name.
  ///
  /// Format: projects/{project}/global/networks/{network}
  ///
  /// Required.
  core.String? network;

  /// This field is not implemented.
  ///
  /// The values provided in this field are ignored.
  ///
  /// Optional.
  core.String? psaRange;

  /// Specifies the replica zone for regional storagePool.
  ///
  /// Optional.
  core.String? replicaZone;

  /// Service level of the storage pool
  ///
  /// Required.
  /// Possible string values are:
  /// - "SERVICE_LEVEL_UNSPECIFIED" : Unspecified service level.
  /// - "PREMIUM" : Premium service level.
  /// - "EXTREME" : Extreme service level.
  /// - "STANDARD" : Standard service level.
  /// - "FLEX" : Flex service level.
  core.String? serviceLevel;

  /// State of the storage pool
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified Storage Pool State
  /// - "READY" : Storage Pool State is Ready
  /// - "CREATING" : Storage Pool State is Creating
  /// - "DELETING" : Storage Pool State is Deleting
  /// - "UPDATING" : Storage Pool State is Updating
  /// - "RESTORING" : Storage Pool State is Restoring
  /// - "DISABLED" : Storage Pool State is Disabled
  /// - "ERROR" : Storage Pool State is Error
  core.String? state;

  /// State details of the storage pool
  ///
  /// Output only.
  core.String? stateDetails;

  /// Allocated size of all volumes in GIB in the storage pool
  ///
  /// Output only.
  core.String? volumeCapacityGib;

  /// Volume count of the storage pool
  ///
  /// Output only.
  core.int? volumeCount;

  /// Specifies the active zone for regional storagePool.
  ///
  /// Optional.
  core.String? zone;

  StoragePool({
    this.activeDirectory,
    this.allowAutoTiering,
    this.capacityGib,
    this.createTime,
    this.description,
    this.encryptionType,
    this.globalAccessAllowed,
    this.kmsConfig,
    this.labels,
    this.ldapEnabled,
    this.name,
    this.network,
    this.psaRange,
    this.replicaZone,
    this.serviceLevel,
    this.state,
    this.stateDetails,
    this.volumeCapacityGib,
    this.volumeCount,
    this.zone,
  });

  StoragePool.fromJson(core.Map json_)
      : this(
          activeDirectory: json_['activeDirectory'] as core.String?,
          allowAutoTiering: json_['allowAutoTiering'] as core.bool?,
          capacityGib: json_['capacityGib'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          encryptionType: json_['encryptionType'] as core.String?,
          globalAccessAllowed: json_['globalAccessAllowed'] as core.bool?,
          kmsConfig: json_['kmsConfig'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          ldapEnabled: json_['ldapEnabled'] as core.bool?,
          name: json_['name'] as core.String?,
          network: json_['network'] as core.String?,
          psaRange: json_['psaRange'] as core.String?,
          replicaZone: json_['replicaZone'] as core.String?,
          serviceLevel: json_['serviceLevel'] as core.String?,
          state: json_['state'] as core.String?,
          stateDetails: json_['stateDetails'] as core.String?,
          volumeCapacityGib: json_['volumeCapacityGib'] as core.String?,
          volumeCount: json_['volumeCount'] as core.int?,
          zone: json_['zone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeDirectory != null) 'activeDirectory': activeDirectory!,
        if (allowAutoTiering != null) 'allowAutoTiering': allowAutoTiering!,
        if (capacityGib != null) 'capacityGib': capacityGib!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (encryptionType != null) 'encryptionType': encryptionType!,
        if (globalAccessAllowed != null)
          'globalAccessAllowed': globalAccessAllowed!,
        if (kmsConfig != null) 'kmsConfig': kmsConfig!,
        if (labels != null) 'labels': labels!,
        if (ldapEnabled != null) 'ldapEnabled': ldapEnabled!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (psaRange != null) 'psaRange': psaRange!,
        if (replicaZone != null) 'replicaZone': replicaZone!,
        if (serviceLevel != null) 'serviceLevel': serviceLevel!,
        if (state != null) 'state': state!,
        if (stateDetails != null) 'stateDetails': stateDetails!,
        if (volumeCapacityGib != null) 'volumeCapacityGib': volumeCapacityGib!,
        if (volumeCount != null) 'volumeCount': volumeCount!,
        if (zone != null) 'zone': zone!,
      };
}

/// SwitchActiveReplicaZoneRequest switch the active/replica zone for a regional
/// storagePool.
typedef SwitchActiveReplicaZoneRequest = $Empty;

/// Defines tiering policy for the volume.
class TieringPolicy {
  /// Time in days to mark the volume's data block as cold and make it eligible
  /// for tiering, can be range from 7-183.
  ///
  /// Default is 31.
  ///
  /// Optional.
  core.int? coolingThresholdDays;

  /// Flag indicating if the volume has tiering policy enable/pause.
  ///
  /// Default is PAUSED.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TIER_ACTION_UNSPECIFIED" : Unspecified.
  /// - "ENABLED" : When tiering is enabled, new cold data will be tiered.
  /// - "PAUSED" : When paused, tiering won't be performed on new data. Existing
  /// data stays tiered until accessed.
  core.String? tierAction;

  TieringPolicy({
    this.coolingThresholdDays,
    this.tierAction,
  });

  TieringPolicy.fromJson(core.Map json_)
      : this(
          coolingThresholdDays: json_['coolingThresholdDays'] as core.int?,
          tierAction: json_['tierAction'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (coolingThresholdDays != null)
          'coolingThresholdDays': coolingThresholdDays!,
        if (tierAction != null) 'tierAction': tierAction!,
      };
}

/// TransferStats reports all statistics related to replication transfer.
class TransferStats {
  /// Lag duration indicates the duration by which Destination region volume
  /// content lags behind the primary region volume content.
  core.String? lagDuration;

  /// Last transfer size in bytes.
  core.String? lastTransferBytes;

  /// Time taken during last transfer.
  core.String? lastTransferDuration;

  /// Time when last transfer completed.
  core.String? lastTransferEndTime;

  /// A message describing the cause of the last transfer failure.
  core.String? lastTransferError;

  /// Cumulative time taken across all transfers for the replication
  /// relationship.
  core.String? totalTransferDuration;

  /// Cumulative bytes trasferred so far for the replication relatinonship.
  core.String? transferBytes;

  /// Time when progress was updated last.
  core.String? updateTime;

  TransferStats({
    this.lagDuration,
    this.lastTransferBytes,
    this.lastTransferDuration,
    this.lastTransferEndTime,
    this.lastTransferError,
    this.totalTransferDuration,
    this.transferBytes,
    this.updateTime,
  });

  TransferStats.fromJson(core.Map json_)
      : this(
          lagDuration: json_['lagDuration'] as core.String?,
          lastTransferBytes: json_['lastTransferBytes'] as core.String?,
          lastTransferDuration: json_['lastTransferDuration'] as core.String?,
          lastTransferEndTime: json_['lastTransferEndTime'] as core.String?,
          lastTransferError: json_['lastTransferError'] as core.String?,
          totalTransferDuration: json_['totalTransferDuration'] as core.String?,
          transferBytes: json_['transferBytes'] as core.String?,
          updateTime: json_['updateTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (lagDuration != null) 'lagDuration': lagDuration!,
        if (lastTransferBytes != null) 'lastTransferBytes': lastTransferBytes!,
        if (lastTransferDuration != null)
          'lastTransferDuration': lastTransferDuration!,
        if (lastTransferEndTime != null)
          'lastTransferEndTime': lastTransferEndTime!,
        if (lastTransferError != null) 'lastTransferError': lastTransferError!,
        if (totalTransferDuration != null)
          'totalTransferDuration': totalTransferDuration!,
        if (transferBytes != null) 'transferBytes': transferBytes!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// VerifyKmsConfigRequest specifies the KMS config to be validated.
typedef VerifyKmsConfigRequest = $Empty;

/// VerifyKmsConfigResponse contains the information if the config is correctly
/// and error message.
class VerifyKmsConfigResponse {
  /// Error message if config is not healthy.
  ///
  /// Output only.
  core.String? healthError;

  /// If the customer key configured correctly to the encrypt volume.
  ///
  /// Output only.
  core.bool? healthy;

  /// Instructions for the customers to provide the access to the encryption
  /// key.
  ///
  /// Output only.
  core.String? instructions;

  VerifyKmsConfigResponse({
    this.healthError,
    this.healthy,
    this.instructions,
  });

  VerifyKmsConfigResponse.fromJson(core.Map json_)
      : this(
          healthError: json_['healthError'] as core.String?,
          healthy: json_['healthy'] as core.bool?,
          instructions: json_['instructions'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (healthError != null) 'healthError': healthError!,
        if (healthy != null) 'healthy': healthy!,
        if (instructions != null) 'instructions': instructions!,
      };
}

/// Volume provides a filesystem that you can mount.
class Volume {
  /// Specifies the ActiveDirectory name of a SMB volume.
  ///
  /// Output only.
  core.String? activeDirectory;

  /// BackupConfig of the volume.
  BackupConfig? backupConfig;

  /// Capacity in GIB of the volume
  ///
  /// Required.
  core.String? capacityGib;

  /// Size of the volume cold tier data in GiB.
  ///
  /// Output only.
  core.String? coldTierSizeGib;

  /// Create time of the volume
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the volume
  ///
  /// Optional.
  core.String? description;

  /// Specified the current volume encryption key source.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ENCRYPTION_TYPE_UNSPECIFIED" : The source of the encryption key is not
  /// specified.
  /// - "SERVICE_MANAGED" : Google managed encryption key.
  /// - "CLOUD_KMS" : Customer managed encryption key, which is stored in KMS.
  core.String? encryptionType;

  /// Export policy of the volume
  ///
  /// Optional.
  ExportPolicy? exportPolicy;

  /// Indicates whether the volume is part of a replication relationship.
  ///
  /// Output only.
  core.bool? hasReplication;

  /// Flag indicating if the volume is a kerberos volume or not, export policy
  /// rules control kerberos security modes (krb5, krb5i, krb5p).
  ///
  /// Optional.
  core.bool? kerberosEnabled;

  /// Specifies the KMS config to be used for volume encryption.
  ///
  /// Output only.
  core.String? kmsConfig;

  /// Labels as key value pairs
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Flag indicating if the volume will be a large capacity volume or a regular
  /// volume.
  ///
  /// Optional.
  core.bool? largeCapacity;

  /// Flag indicating if the volume is NFS LDAP enabled or not.
  ///
  /// Output only.
  core.bool? ldapEnabled;

  /// Mount options of this volume
  ///
  /// Output only.
  core.List<MountOption>? mountOptions;

  /// Flag indicating if the volume will have an IP address per node for volumes
  /// supporting multiple IP endpoints.
  ///
  /// Only the volume with large_capacity will be allowed to have multiple
  /// endpoints.
  ///
  /// Optional.
  core.bool? multipleEndpoints;

  /// Identifier.
  ///
  /// Name of the volume
  core.String? name;

  /// VPC Network name.
  ///
  /// Format: projects/{project}/global/networks/{network}
  ///
  /// Output only.
  core.String? network;

  /// Protocols required for the volume
  ///
  /// Required.
  core.List<core.String>? protocols;

  /// This field is not implemented.
  ///
  /// The values provided in this field are ignored.
  ///
  /// Output only.
  core.String? psaRange;

  /// Specifies the replica zone for regional volume.
  ///
  /// Output only.
  core.String? replicaZone;

  /// Specifies the source of the volume to be created from.
  ///
  /// Optional.
  RestoreParameters? restoreParameters;

  /// List of actions that are restricted on this volume.
  ///
  /// Optional.
  core.List<core.String>? restrictedActions;

  /// Security Style of the Volume
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SECURITY_STYLE_UNSPECIFIED" : SecurityStyle is unspecified
  /// - "NTFS" : SecurityStyle uses NTFS
  /// - "UNIX" : SecurityStyle uses UNIX
  core.String? securityStyle;

  /// Service level of the volume
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SERVICE_LEVEL_UNSPECIFIED" : Unspecified service level.
  /// - "PREMIUM" : Premium service level.
  /// - "EXTREME" : Extreme service level.
  /// - "STANDARD" : Standard service level.
  /// - "FLEX" : Flex service level.
  core.String? serviceLevel;

  /// Share name of the volume
  ///
  /// Required.
  core.String? shareName;

  /// SMB share settings for the volume.
  ///
  /// Optional.
  core.List<core.String>? smbSettings;

  /// Snap_reserve specifies percentage of volume storage reserved for snapshot
  /// storage.
  ///
  /// Default is 0 percent.
  ///
  /// Optional.
  core.double? snapReserve;

  /// Snapshot_directory if enabled (true) the volume will contain a read-only
  /// .snapshot directory which provides access to each of the volume's
  /// snapshots.
  ///
  /// Optional.
  core.bool? snapshotDirectory;

  /// SnapshotPolicy for a volume.
  ///
  /// Optional.
  SnapshotPolicy? snapshotPolicy;

  /// State of the volume
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified Volume State
  /// - "READY" : Volume State is Ready
  /// - "CREATING" : Volume State is Creating
  /// - "DELETING" : Volume State is Deleting
  /// - "UPDATING" : Volume State is Updating
  /// - "RESTORING" : Volume State is Restoring
  /// - "DISABLED" : Volume State is Disabled
  /// - "ERROR" : Volume State is Error
  core.String? state;

  /// State details of the volume
  ///
  /// Output only.
  core.String? stateDetails;

  /// StoragePool name of the volume
  ///
  /// Required.
  core.String? storagePool;

  /// Tiering policy for the volume.
  TieringPolicy? tieringPolicy;

  /// Default unix style permission (e.g. 777) the mount point will be created
  /// with.
  ///
  /// Applicable for NFS protocol types only.
  ///
  /// Optional.
  core.String? unixPermissions;

  /// Used capacity in GIB of the volume.
  ///
  /// This is computed periodically and it does not represent the realtime
  /// usage.
  ///
  /// Output only.
  core.String? usedGib;

  /// Specifies the active zone for regional volume.
  ///
  /// Output only.
  core.String? zone;

  Volume({
    this.activeDirectory,
    this.backupConfig,
    this.capacityGib,
    this.coldTierSizeGib,
    this.createTime,
    this.description,
    this.encryptionType,
    this.exportPolicy,
    this.hasReplication,
    this.kerberosEnabled,
    this.kmsConfig,
    this.labels,
    this.largeCapacity,
    this.ldapEnabled,
    this.mountOptions,
    this.multipleEndpoints,
    this.name,
    this.network,
    this.protocols,
    this.psaRange,
    this.replicaZone,
    this.restoreParameters,
    this.restrictedActions,
    this.securityStyle,
    this.serviceLevel,
    this.shareName,
    this.smbSettings,
    this.snapReserve,
    this.snapshotDirectory,
    this.snapshotPolicy,
    this.state,
    this.stateDetails,
    this.storagePool,
    this.tieringPolicy,
    this.unixPermissions,
    this.usedGib,
    this.zone,
  });

  Volume.fromJson(core.Map json_)
      : this(
          activeDirectory: json_['activeDirectory'] as core.String?,
          backupConfig: json_.containsKey('backupConfig')
              ? BackupConfig.fromJson(
                  json_['backupConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          capacityGib: json_['capacityGib'] as core.String?,
          coldTierSizeGib: json_['coldTierSizeGib'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          description: json_['description'] as core.String?,
          encryptionType: json_['encryptionType'] as core.String?,
          exportPolicy: json_.containsKey('exportPolicy')
              ? ExportPolicy.fromJson(
                  json_['exportPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          hasReplication: json_['hasReplication'] as core.bool?,
          kerberosEnabled: json_['kerberosEnabled'] as core.bool?,
          kmsConfig: json_['kmsConfig'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          largeCapacity: json_['largeCapacity'] as core.bool?,
          ldapEnabled: json_['ldapEnabled'] as core.bool?,
          mountOptions: (json_['mountOptions'] as core.List?)
              ?.map((value) => MountOption.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          multipleEndpoints: json_['multipleEndpoints'] as core.bool?,
          name: json_['name'] as core.String?,
          network: json_['network'] as core.String?,
          protocols: (json_['protocols'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          psaRange: json_['psaRange'] as core.String?,
          replicaZone: json_['replicaZone'] as core.String?,
          restoreParameters: json_.containsKey('restoreParameters')
              ? RestoreParameters.fromJson(json_['restoreParameters']
                  as core.Map<core.String, core.dynamic>)
              : null,
          restrictedActions: (json_['restrictedActions'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          securityStyle: json_['securityStyle'] as core.String?,
          serviceLevel: json_['serviceLevel'] as core.String?,
          shareName: json_['shareName'] as core.String?,
          smbSettings: (json_['smbSettings'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          snapReserve: (json_['snapReserve'] as core.num?)?.toDouble(),
          snapshotDirectory: json_['snapshotDirectory'] as core.bool?,
          snapshotPolicy: json_.containsKey('snapshotPolicy')
              ? SnapshotPolicy.fromJson(json_['snapshotPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state: json_['state'] as core.String?,
          stateDetails: json_['stateDetails'] as core.String?,
          storagePool: json_['storagePool'] as core.String?,
          tieringPolicy: json_.containsKey('tieringPolicy')
              ? TieringPolicy.fromJson(
                  json_['tieringPolicy'] as core.Map<core.String, core.dynamic>)
              : null,
          unixPermissions: json_['unixPermissions'] as core.String?,
          usedGib: json_['usedGib'] as core.String?,
          zone: json_['zone'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activeDirectory != null) 'activeDirectory': activeDirectory!,
        if (backupConfig != null) 'backupConfig': backupConfig!,
        if (capacityGib != null) 'capacityGib': capacityGib!,
        if (coldTierSizeGib != null) 'coldTierSizeGib': coldTierSizeGib!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (encryptionType != null) 'encryptionType': encryptionType!,
        if (exportPolicy != null) 'exportPolicy': exportPolicy!,
        if (hasReplication != null) 'hasReplication': hasReplication!,
        if (kerberosEnabled != null) 'kerberosEnabled': kerberosEnabled!,
        if (kmsConfig != null) 'kmsConfig': kmsConfig!,
        if (labels != null) 'labels': labels!,
        if (largeCapacity != null) 'largeCapacity': largeCapacity!,
        if (ldapEnabled != null) 'ldapEnabled': ldapEnabled!,
        if (mountOptions != null) 'mountOptions': mountOptions!,
        if (multipleEndpoints != null) 'multipleEndpoints': multipleEndpoints!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (protocols != null) 'protocols': protocols!,
        if (psaRange != null) 'psaRange': psaRange!,
        if (replicaZone != null) 'replicaZone': replicaZone!,
        if (restoreParameters != null) 'restoreParameters': restoreParameters!,
        if (restrictedActions != null) 'restrictedActions': restrictedActions!,
        if (securityStyle != null) 'securityStyle': securityStyle!,
        if (serviceLevel != null) 'serviceLevel': serviceLevel!,
        if (shareName != null) 'shareName': shareName!,
        if (smbSettings != null) 'smbSettings': smbSettings!,
        if (snapReserve != null) 'snapReserve': snapReserve!,
        if (snapshotDirectory != null) 'snapshotDirectory': snapshotDirectory!,
        if (snapshotPolicy != null) 'snapshotPolicy': snapshotPolicy!,
        if (state != null) 'state': state!,
        if (stateDetails != null) 'stateDetails': stateDetails!,
        if (storagePool != null) 'storagePool': storagePool!,
        if (tieringPolicy != null) 'tieringPolicy': tieringPolicy!,
        if (unixPermissions != null) 'unixPermissions': unixPermissions!,
        if (usedGib != null) 'usedGib': usedGib!,
        if (zone != null) 'zone': zone!,
      };
}

/// Make a snapshot every week e.g. at Monday 04:00, Wednesday 05:20, Sunday
/// 23:50
class WeeklySchedule {
  /// Set the day or days of the week to make a snapshot.
  ///
  /// Accepts a comma separated days of the week. Defaults to 'Sunday'.
  core.String? day;

  /// Set the hour to start the snapshot (0-23), defaults to midnight (0).
  core.double? hour;

  /// Set the minute of the hour to start the snapshot (0-59), defaults to the
  /// top of the hour (0).
  core.double? minute;

  /// The maximum number of Snapshots to keep for the hourly schedule
  core.double? snapshotsToKeep;

  WeeklySchedule({
    this.day,
    this.hour,
    this.minute,
    this.snapshotsToKeep,
  });

  WeeklySchedule.fromJson(core.Map json_)
      : this(
          day: json_['day'] as core.String?,
          hour: (json_['hour'] as core.num?)?.toDouble(),
          minute: (json_['minute'] as core.num?)?.toDouble(),
          snapshotsToKeep: (json_['snapshotsToKeep'] as core.num?)?.toDouble(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (hour != null) 'hour': hour!,
        if (minute != null) 'minute': minute!,
        if (snapshotsToKeep != null) 'snapshotsToKeep': snapshotsToKeep!,
      };
}
