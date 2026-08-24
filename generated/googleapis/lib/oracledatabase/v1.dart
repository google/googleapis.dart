// Copyright 2024 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

/// Oracle Database@Google Cloud API - v1
///
/// The Oracle Database@Google Cloud API provides a set of APIs to manage Oracle
/// database services, such as Exadata and Autonomous Databases.
///
/// For more information, see <https://cloud.google.com/oracle/database/docs>
///
/// Create an instance of [OracleDatabaseApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsAutonomousDatabaseBackupsResource]
///     - [ProjectsLocationsAutonomousDatabaseCharacterSetsResource]
///     - [ProjectsLocationsAutonomousDatabasesResource]
///     - [ProjectsLocationsAutonomousDbVersionsResource]
///     - [ProjectsLocationsCloudExadataInfrastructuresResource]
///       - [ProjectsLocationsCloudExadataInfrastructuresDbServersResource]
///     - [ProjectsLocationsCloudVmClustersResource]
///       - [ProjectsLocationsCloudVmClustersDbNodesResource]
///     - [ProjectsLocationsDatabaseCharacterSetsResource]
///     - [ProjectsLocationsDatabasesResource]
///     - [ProjectsLocationsDbSystemInitialStorageSizesResource]
///     - [ProjectsLocationsDbSystemShapesResource]
///     - [ProjectsLocationsDbSystemsResource]
///     - [ProjectsLocationsDbVersionsResource]
///     - [ProjectsLocationsEntitlementsResource]
///     - [ProjectsLocationsExadbVmClustersResource]
///       - [ProjectsLocationsExadbVmClustersDbNodesResource]
///     - [ProjectsLocationsExascaleDbStorageVaultsResource]
///     - [ProjectsLocationsGiVersionsResource]
///       - [ProjectsLocationsGiVersionsMinorVersionsResource]
///     - [ProjectsLocationsGoldengateConnectionAssignmentsResource]
///     - [ProjectsLocationsGoldengateConnectionTypesResource]
///     - [ProjectsLocationsGoldengateConnectionsResource]
///     - [ProjectsLocationsGoldengateDeploymentEnvironmentsResource]
///     - [ProjectsLocationsGoldengateDeploymentTypesResource]
///     - [ProjectsLocationsGoldengateDeploymentVersionsResource]
///     - [ProjectsLocationsGoldengateDeploymentsResource]
///     - [ProjectsLocationsOdbNetworksResource]
///       - [ProjectsLocationsOdbNetworksOdbSubnetsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPluggableDatabasesResource]
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

/// The Oracle Database@Google Cloud API provides a set of APIs to manage Oracle
/// database services, such as Exadata and Autonomous Databases.
class OracleDatabaseApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  OracleDatabaseApi(
    http.Client client, {
    core.String rootUrl = 'https://oracledatabase.googleapis.com/',
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

  ProjectsLocationsAutonomousDatabaseBackupsResource
  get autonomousDatabaseBackups =>
      ProjectsLocationsAutonomousDatabaseBackupsResource(_requester);
  ProjectsLocationsAutonomousDatabaseCharacterSetsResource
  get autonomousDatabaseCharacterSets =>
      ProjectsLocationsAutonomousDatabaseCharacterSetsResource(_requester);
  ProjectsLocationsAutonomousDatabasesResource get autonomousDatabases =>
      ProjectsLocationsAutonomousDatabasesResource(_requester);
  ProjectsLocationsAutonomousDbVersionsResource get autonomousDbVersions =>
      ProjectsLocationsAutonomousDbVersionsResource(_requester);
  ProjectsLocationsCloudExadataInfrastructuresResource
  get cloudExadataInfrastructures =>
      ProjectsLocationsCloudExadataInfrastructuresResource(_requester);
  ProjectsLocationsCloudVmClustersResource get cloudVmClusters =>
      ProjectsLocationsCloudVmClustersResource(_requester);
  ProjectsLocationsDatabaseCharacterSetsResource get databaseCharacterSets =>
      ProjectsLocationsDatabaseCharacterSetsResource(_requester);
  ProjectsLocationsDatabasesResource get databases =>
      ProjectsLocationsDatabasesResource(_requester);
  ProjectsLocationsDbSystemInitialStorageSizesResource
  get dbSystemInitialStorageSizes =>
      ProjectsLocationsDbSystemInitialStorageSizesResource(_requester);
  ProjectsLocationsDbSystemShapesResource get dbSystemShapes =>
      ProjectsLocationsDbSystemShapesResource(_requester);
  ProjectsLocationsDbSystemsResource get dbSystems =>
      ProjectsLocationsDbSystemsResource(_requester);
  ProjectsLocationsDbVersionsResource get dbVersions =>
      ProjectsLocationsDbVersionsResource(_requester);
  ProjectsLocationsEntitlementsResource get entitlements =>
      ProjectsLocationsEntitlementsResource(_requester);
  ProjectsLocationsExadbVmClustersResource get exadbVmClusters =>
      ProjectsLocationsExadbVmClustersResource(_requester);
  ProjectsLocationsExascaleDbStorageVaultsResource
  get exascaleDbStorageVaults =>
      ProjectsLocationsExascaleDbStorageVaultsResource(_requester);
  ProjectsLocationsGiVersionsResource get giVersions =>
      ProjectsLocationsGiVersionsResource(_requester);
  ProjectsLocationsGoldengateConnectionAssignmentsResource
  get goldengateConnectionAssignments =>
      ProjectsLocationsGoldengateConnectionAssignmentsResource(_requester);
  ProjectsLocationsGoldengateConnectionTypesResource
  get goldengateConnectionTypes =>
      ProjectsLocationsGoldengateConnectionTypesResource(_requester);
  ProjectsLocationsGoldengateConnectionsResource get goldengateConnections =>
      ProjectsLocationsGoldengateConnectionsResource(_requester);
  ProjectsLocationsGoldengateDeploymentEnvironmentsResource
  get goldengateDeploymentEnvironments =>
      ProjectsLocationsGoldengateDeploymentEnvironmentsResource(_requester);
  ProjectsLocationsGoldengateDeploymentTypesResource
  get goldengateDeploymentTypes =>
      ProjectsLocationsGoldengateDeploymentTypesResource(_requester);
  ProjectsLocationsGoldengateDeploymentVersionsResource
  get goldengateDeploymentVersions =>
      ProjectsLocationsGoldengateDeploymentVersionsResource(_requester);
  ProjectsLocationsGoldengateDeploymentsResource get goldengateDeployments =>
      ProjectsLocationsGoldengateDeploymentsResource(_requester);
  ProjectsLocationsOdbNetworksResource get odbNetworks =>
      ProjectsLocationsOdbNetworksResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPluggableDatabasesResource get pluggableDatabases =>
      ProjectsLocationsPluggableDatabasesResource(_requester);

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
      'fields': ?$fields == null ? null : [$fields],
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
  /// This method lists locations based on the resource scope provided in the
  /// ListLocationsRequest.name field: * **Global locations**: If `name` is
  /// empty, the method lists the public locations available to all projects. *
  /// **Project-specific locations**: If `name` follows the format
  /// `projects/{project}`, the method lists locations visible to that specific
  /// project. This includes public, private, or other project-specific
  /// locations enabled for the project. For gRPC and client library
  /// implementations, the resource name is passed as the `name` field. For
  /// direct service calls, the resource name is incorporated into the request
  /// path based on the specific service implementation and version.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource that owns the locations collection, if applicable.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [extraLocationTypes] - Optional. Do not use this field unless explicitly
  /// documented otherwise. This is primarily for internal usage.
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
    core.List<core.String>? extraLocationTypes,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsAutonomousDatabaseBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutonomousDatabaseBackupsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists the long-term and automatic backups of an Autonomous Database.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for ListAutonomousDatabaseBackups in
  /// the following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Only the **autonomous_database_id** field is supported in the
  /// following format: `autonomous_database_id="{autonomous_database_id}"`. The
  /// accepted values must be a valid Autonomous Database ID, limited to the
  /// naming restrictions of the ID: ^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$).
  /// The ID must start with a letter, end with a letter or a number, and be a
  /// maximum of 63 characters.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 Autonomous DB Backups will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAutonomousDatabaseBackupsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAutonomousDatabaseBackupsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autonomousDatabaseBackups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutonomousDatabaseBackupsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAutonomousDatabaseCharacterSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutonomousDatabaseCharacterSetsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists Autonomous Database Character Sets in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the Autonomous Database in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Only the **character_set_type** field is supported in the
  /// following format: `character_set_type="{characterSetType}"`. Accepted
  /// values include `DATABASE` and `NATIONAL`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 Autonomous DB Character Sets will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAutonomousDatabaseCharacterSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAutonomousDatabaseCharacterSetsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/autonomousDatabaseCharacterSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutonomousDatabaseCharacterSetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsAutonomousDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutonomousDatabasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Autonomous Database in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent in the following format:
  /// projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [autonomousDatabaseId] - Required. The ID of the Autonomous Database to
  /// create. This value is restricted to
  /// (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with a
  /// letter or a number.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    AutonomousDatabase request,
    core.String parent, {
    core.String? autonomousDatabaseId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'autonomousDatabaseId': ?autonomousDatabaseId == null
          ? null
          : [autonomousDatabaseId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autonomousDatabases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Autonomous Database.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource in the following format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Initiates a failover to target autonomous database from the associated
  /// primary database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Autonomous Database in the following
  /// format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
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
  async.Future<Operation> failover(
    FailoverAutonomousDatabaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':failover';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Generates a wallet for an Autonomous Database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Autonomous Database in the following
  /// format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GenerateAutonomousDatabaseWalletResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GenerateAutonomousDatabaseWalletResponse> generateWallet(
    GenerateAutonomousDatabaseWalletRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':generateWallet';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateAutonomousDatabaseWalletResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the details of a single Autonomous Database.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Autonomous Database in the following
  /// format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutonomousDatabase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutonomousDatabase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AutonomousDatabase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the refreshable clones for a given Autonomous Database.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The Autonomous Database resource whose refreshable
  /// clones are to be listed. Format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [AutonomousDatabaseRefreshableClones].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<AutonomousDatabaseRefreshableClones> getRefreshableClones(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getRefreshableClones';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AutonomousDatabaseRefreshableClones.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the Autonomous Databases in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the Autonomous Database in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 Autonomous Database will be returned. The maximum
  /// value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAutonomousDatabasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAutonomousDatabasesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autonomousDatabases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutonomousDatabasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Autonomous Database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the Autonomous Database resource in the
  /// following format:
  /// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Exadata resource by the update. The fields specified in
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
    AutonomousDatabase request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
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

  /// Refreshes the refreshable clone of an Autonomous Database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the AutonomousDatabase resource. Format:
  /// projects/{project}/location/{location}/autonomousDatabases/{autonomous_database}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
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
  async.Future<Operation> refresh(
    RefreshAutonomousDatabaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':refresh';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restarts an Autonomous Database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Autonomous Database in the following
  /// format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
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
  async.Future<Operation> restart(
    RestartAutonomousDatabaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':restart';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restores a single Autonomous Database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Autonomous Database in the following
  /// format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
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
    RestoreAutonomousDatabaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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

  /// Starts an Autonomous Database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Autonomous Database in the following
  /// format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
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
  async.Future<Operation> start(
    StartAutonomousDatabaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops an Autonomous Database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Autonomous Database in the following
  /// format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
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
    StopAutonomousDatabaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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

  /// Initiates a switchover of specified autonomous database to the associated
  /// peer database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Autonomous Database in the following
  /// format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/autonomousDatabases/\[^/\]+$`.
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
  async.Future<Operation> switchover(
    SwitchoverAutonomousDatabaseRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':switchover';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAutonomousDbVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutonomousDbVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists all the available Autonomous Database versions for a project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the Autonomous Database in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 Autonomous DB Versions will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListAutonomousDbVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListAutonomousDbVersionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autonomousDbVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutonomousDbVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCloudExadataInfrastructuresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCloudExadataInfrastructuresDbServersResource get dbServers =>
      ProjectsLocationsCloudExadataInfrastructuresDbServersResource(_requester);

  ProjectsLocationsCloudExadataInfrastructuresResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Configures Exascale for a single Exadata Infrastructure.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Cloud Exadata Infrastructure in the
  /// following format:
  /// projects/{project}/locations/{location}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cloudExadataInfrastructures/\[^/\]+$`.
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
  async.Future<Operation> configureExascale(
    ConfigureExascaleCloudExadataInfrastructureRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':configureExascale';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new Exadata Infrastructure in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for CloudExadataInfrastructure in
  /// the following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [cloudExadataInfrastructureId] - Required. The ID of the Exadata
  /// Infrastructure to create. This value is restricted to
  /// (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with a
  /// letter or a number.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    CloudExadataInfrastructure request,
    core.String parent, {
    core.String? cloudExadataInfrastructureId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId == null
          ? null
          : [cloudExadataInfrastructureId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/cloudExadataInfrastructures';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Exadata Infrastructure.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Cloud Exadata Infrastructure in the
  /// following format:
  /// projects/{project}/locations/{location}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cloudExadataInfrastructures/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, all VM clusters for this Exadata
  /// Infrastructure will be deleted. An Exadata Infrastructure can only be
  /// deleted once all its VM clusters have been deleted.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'force': ?force == null ? null : ['${force}'],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Exadata Infrastructure.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Cloud Exadata Infrastructure in the
  /// following format:
  /// projects/{project}/locations/{location}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cloudExadataInfrastructures/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloudExadataInfrastructure].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloudExadataInfrastructure> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CloudExadataInfrastructure.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Exadata Infrastructures in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for CloudExadataInfrastructure in
  /// the following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 Exadata infrastructures will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCloudExadataInfrastructuresResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCloudExadataInfrastructuresResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/cloudExadataInfrastructures';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCloudExadataInfrastructuresResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCloudExadataInfrastructuresDbServersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCloudExadataInfrastructuresDbServersResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists the database servers of an Exadata Infrastructure instance.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for database server in the following
  /// format:
  /// projects/{project}/locations/{location}/cloudExadataInfrastructures/{cloudExadataInfrastructure}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cloudExadataInfrastructures/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, a maximum of 50 db servers will be returned. The maximum
  /// value is 1000; values above 1000 will be reset to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDbServersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDbServersResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbServers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbServersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCloudVmClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCloudVmClustersDbNodesResource get dbNodes =>
      ProjectsLocationsCloudVmClustersDbNodesResource(_requester);

  ProjectsLocationsCloudVmClustersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new VM Cluster in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent in the following format:
  /// projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [cloudVmClusterId] - Required. The ID of the VM Cluster to create. This
  /// value is restricted to (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must
  /// be a maximum of 63 characters in length. The value must start with a
  /// letter and end with a letter or a number.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    CloudVmCluster request,
    core.String parent, {
    core.String? cloudVmClusterId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'cloudVmClusterId': ?cloudVmClusterId == null ? null : [cloudVmClusterId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cloudVmClusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single VM Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Cloud VM Cluster in the following
  /// format:
  /// projects/{project}/locations/{location}/cloudVmClusters/{cloud_vm_cluster}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cloudVmClusters/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, all child resources for the VM Cluster
  /// will be deleted. A VM Cluster can only be deleted once all its child
  /// resources have been deleted.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    core.String? requestId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'force': ?force == null ? null : ['${force}'],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single VM Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Cloud VM Cluster in the following
  /// format:
  /// projects/{project}/locations/{location}/cloudVmClusters/{cloud_vm_cluster}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cloudVmClusters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CloudVmCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CloudVmCluster> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CloudVmCluster.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the VM Clusters in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent in the following format:
  /// projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The number of VM clusters to return. If
  /// unspecified, at most 50 VM clusters will be returned. The maximum value is
  /// 1,000.
  ///
  /// [pageToken] - Optional. A token identifying the page of results the server
  /// returns.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCloudVmClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCloudVmClustersResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cloudVmClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCloudVmClustersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCloudVmClustersDbNodesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCloudVmClustersDbNodesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the database nodes of a VM Cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for database node in the following
  /// format:
  /// projects/{project}/locations/{location}/cloudVmClusters/{cloudVmCluster}.
  /// .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/cloudVmClusters/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 db nodes will be returned. The maximum value is
  /// 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the node
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDbNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDbNodesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbNodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbNodesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDatabaseCharacterSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatabaseCharacterSetsResource(commons.ApiRequester client)
    : _requester = client;

  /// List DatabaseCharacterSets for the given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for DatabaseCharacterSets in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Only the **character_set_type** field is supported in the
  /// following format: `character_set_type="{characterSetType}"`. Accepted
  /// values include `DATABASE` and `NATIONAL`.
  ///
  /// [pageSize] - Optional. The maximum number of DatabaseCharacterSets to
  /// return. The service may return fewer than this value. If unspecified, at
  /// most 50 DatabaseCharacterSets will be returned. The maximum value is 1000;
  /// values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListDatabaseCharacterSets` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListDatabaseCharacterSets` must match the call that provided the page
  /// token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatabaseCharacterSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatabaseCharacterSetsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/databaseCharacterSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDatabaseCharacterSetsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDatabasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single Database.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Database resource in the following
  /// format: projects/{project}/locations/{region}/databases/{database}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Database].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Database> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the Databases for the given project, location and DbSystem.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource name in the following format:
  /// projects/{project}/locations/{region}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. list for container databases is supported only with a valid
  /// dbSystem (full resource name) filter in this format:
  /// `dbSystem="projects/{project}/locations/{location}/dbSystems/{dbSystemId}"`
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, a maximum of 50 Databases will be returned. The maximum value
  /// is 1000; values above 1000 will be reset to 1000.
  ///
  /// [pageToken] - Optional. A token identifying the requested page of results
  /// to return. All fields except the filter should remain the same as in the
  /// request that provided this page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatabasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatabasesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDatabasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDbSystemInitialStorageSizesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDbSystemInitialStorageSizesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists all the DbSystemInitialStorageSizes for the given project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the DbSystemInitialStorageSize
  /// resource with the format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, a maximum of 50 DbSystemInitialStorageSizes will be returned.
  /// The maximum value is 1000; values above 1000 will be reset to 1000.
  ///
  /// [pageToken] - Optional. A token identifying the requested page of results
  /// to return. All fields except the filter should remain the same as in the
  /// request that provided this page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDbSystemInitialStorageSizesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDbSystemInitialStorageSizesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/dbSystemInitialStorageSizes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbSystemInitialStorageSizesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDbSystemShapesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDbSystemShapesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the database system shapes available for the project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for Database System Shapes in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. The `gcp_oracle_zone_id`, `shape_family`, and `database_edition`
  /// fields are supported in the following format:
  /// `gcp_oracle_zone_id="{gcp_oracle_zone_id}" AND
  /// shape_family="{shape_family}" AND database_edition="{database_edition}"`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 database system shapes will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDbSystemShapesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDbSystemShapesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbSystemShapes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbSystemShapesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDbSystemsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDbSystemsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new DbSystem in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The value for parent of the DbSystem in the following
  /// format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [dbSystemId] - Required. The ID of the DbSystem to create. This value is
  /// restricted to (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must be a
  /// maximum of 63 characters in length. The value must start with a letter and
  /// end with a letter or a number.
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
    DbSystem request,
    core.String parent, {
    core.String? dbSystemId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'dbSystemId': ?dbSystemId == null ? null : [dbSystemId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbSystems';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single DbSystem.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DbSystem in the following format:
  /// projects/{project}/locations/{location}/dbSystems/{db_system}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dbSystems/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single DbSystem.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the DbSystem in the following format:
  /// projects/{project}/locations/{location}/dbSystems/{db_system}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/dbSystems/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DbSystem].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DbSystem> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DbSystem.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the DbSystems for the given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for DbSystems in the following
  /// format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 DbSystems will be returned. The maximum value is
  /// 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDbSystemsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDbSystemsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbSystems';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbSystemsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsDbVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDbVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// List DbVersions for the given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the DbVersion resource with the
  /// format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filter expression that matches a subset of the
  /// DbVersions to show. The supported filter for dbSystem creation is
  /// `db_system_shape = {db_system_shape} AND storage_management =
  /// {storage_management}`. If no filter is provided, all DbVersions will be
  /// returned.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, a maximum of 50 DbVersions will be returned. The maximum
  /// value is 1000; values above 1000 will be reset to 1000.
  ///
  /// [pageToken] - Optional. A token identifying the requested page of results
  /// to return. All fields except the filter should remain the same as in the
  /// request that provided this page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDbVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDbVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsEntitlementsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEntitlementsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the entitlements in a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the entitlement in the following
  /// format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, a maximum of 50 entitlements will be returned. The maximum
  /// value is 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEntitlementsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEntitlementsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entitlements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEntitlementsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsExadbVmClustersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsExadbVmClustersDbNodesResource get dbNodes =>
      ProjectsLocationsExadbVmClustersDbNodesResource(_requester);

  ProjectsLocationsExadbVmClustersResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Exadb (Exascale) VM Cluster resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The value for parent of the ExadbVmCluster in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [exadbVmClusterId] - Required. The ID of the ExadbVmCluster to create.
  /// This value is restricted to (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and
  /// must be a maximum of 63 characters in length. The value must start with a
  /// letter and end with a letter or a number.
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
    ExadbVmCluster request,
    core.String parent, {
    core.String? exadbVmClusterId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'exadbVmClusterId': ?exadbVmClusterId == null ? null : [exadbVmClusterId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/exadbVmClusters';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Exadb (Exascale) VM Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExadbVmCluster in the following format:
  /// projects/{project}/locations/{location}/exadbVmClusters/{exadb_vm_cluster}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/exadbVmClusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Exadb (Exascale) VM Cluster.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExadbVmCluster in the following format:
  /// projects/{project}/locations/{location}/exadbVmClusters/{exadb_vm_cluster}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/exadbVmClusters/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExadbVmCluster].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExadbVmCluster> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ExadbVmCluster.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the Exadb (Exascale) VM Clusters for the given project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for ExadbVmClusters in the following
  /// format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 ExadbVmClusters will be returned. The maximum
  /// value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExadbVmClustersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExadbVmClustersResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/exadbVmClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExadbVmClustersResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a single Exadb (Exascale) VM Cluster.
  ///
  /// To add virtual machines to existing exadb vm cluster, only pass the node
  /// count.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The name of the ExadbVmCluster resource in the
  /// following format:
  /// projects/{project}/locations/{region}/exadbVmClusters/{exadb_vm_cluster}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/exadbVmClusters/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. A mask specifying which fields in th VM Cluster
  /// should be updated. A field specified in the mask is overwritten. If a mask
  /// isn't provided then all the fields in the VM Cluster are overwritten.
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
    ExadbVmCluster request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
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

  /// Removes virtual machines from an existing exadb vm cluster.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExadbVmCluster in the following format:
  /// projects/{project}/locations/{location}/exadbVmClusters/{exadb_vm_cluster}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/exadbVmClusters/\[^/\]+$`.
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
  async.Future<Operation> removeVirtualMachine(
    RemoveVirtualMachineExadbVmClusterRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':removeVirtualMachine';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsExadbVmClustersDbNodesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsExadbVmClustersDbNodesResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists the database nodes of a VM Cluster.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for database node in the following
  /// format:
  /// projects/{project}/locations/{location}/cloudVmClusters/{cloudVmCluster}.
  /// .
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/exadbVmClusters/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 db nodes will be returned. The maximum value is
  /// 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the node
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDbNodesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDbNodesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbNodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbNodesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsExascaleDbStorageVaultsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsExascaleDbStorageVaultsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new ExascaleDB Storage Vault resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The value for parent of the ExascaleDbStorageVault in
  /// the following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [exascaleDbStorageVaultId] - Required. The ID of the
  /// ExascaleDbStorageVault to create. This value is restricted to
  /// (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with a
  /// letter or a number.
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
    ExascaleDbStorageVault request,
    core.String parent, {
    core.String? exascaleDbStorageVaultId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'exascaleDbStorageVaultId': ?exascaleDbStorageVaultId == null
          ? null
          : [exascaleDbStorageVaultId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/exascaleDbStorageVaults';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ExascaleDB Storage Vault.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExascaleDbStorageVault in the following
  /// format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/exascaleDbStorageVaults/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ExascaleDB Storage Vault.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the ExascaleDbStorageVault in the following
  /// format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/exascaleDbStorageVaults/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExascaleDbStorageVault].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExascaleDbStorageVault> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ExascaleDbStorageVault.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the ExascaleDB Storage Vaults for the given project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for ExascaleDbStorageVault in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Filter the list as specified in https://google.aip.dev/160.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request. Order results as specified in https://google.aip.dev/132.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 ExascaleDbStorageVaults will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListExascaleDbStorageVaultsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListExascaleDbStorageVaultsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/exascaleDbStorageVaults';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListExascaleDbStorageVaultsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGiVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGiVersionsMinorVersionsResource get minorVersions =>
      ProjectsLocationsGiVersionsMinorVersionsResource(_requester);

  ProjectsLocationsGiVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists all the valid Oracle Grid Infrastructure (GI) versions for the given
  /// project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for Grid Infrastructure Version in
  /// the following format: Format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Only the `shape` and `gcp_oracle_zone_id` fields are supported in
  /// the following format: `shape="{shape}" AND
  /// gcp_oracle_zone_id="{gcp_oracle_zone_id}"`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, a maximum of 50 Oracle Grid Infrastructure (GI) versions will
  /// be returned. The maximum value is 1000; values above 1000 will be reset to
  /// 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGiVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGiVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/giVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGiVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGiVersionsMinorVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGiVersionsMinorVersionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Lists all the valid minor versions for the given project, location, gi
  /// version and shape family.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the MinorVersion resource with
  /// the format:
  /// projects/{project}/locations/{location}/giVersions/{gi_version}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/giVersions/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Only the `shape_family` and `gcp_oracle_zone_id` fields are
  /// supported in the following format: `shape_family="{shape_family}" AND
  /// gcp_oracle_zone_id="{gcp_oracle_zone_id}"`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, a maximum of 50 System Versions will be returned. The maximum
  /// value is 1000; values above 1000 will be reset to 1000.
  ///
  /// [pageToken] - Optional. A token identifying the requested page of results
  /// to return. All fields except the filter should remain the same as in the
  /// request that provided this page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMinorVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMinorVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/minorVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMinorVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGoldengateConnectionAssignmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGoldengateConnectionAssignmentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new GoldengateConnectionAssignment in a given project and
  /// location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this
  /// GoldengateConnectionAssignment will be created. Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [goldengateConnectionAssignmentId] - Required. The ID of the
  /// GoldengateConnectionAssignment to create.
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
    GoldengateConnectionAssignment request,
    core.String parent, {
    core.String? goldengateConnectionAssignmentId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'goldengateConnectionAssignmentId':
          ?goldengateConnectionAssignmentId == null
          ? null
          : [goldengateConnectionAssignmentId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/goldengateConnectionAssignments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single GoldengateConnectionAssignment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the GoldengateConnectionAssignment to
  /// delete. Format:
  /// projects/{project}/locations/{location}/goldengateConnectionAssignments/{goldengate_connection_assignment}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateConnectionAssignments/\[^/\]+$`.
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single GoldengateConnectionAssignment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the GoldengateConnectionAssignment to
  /// retrieve. Format:
  /// projects/{project}/locations/{location}/goldengateConnectionAssignments/{goldengate_connection_assignment}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateConnectionAssignments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoldengateConnectionAssignment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoldengateConnectionAssignment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoldengateConnectionAssignment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists GoldengateConnectionAssignments in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the
  /// GoldengateConnectionAssignments. Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. A filter expression that filters
  /// GoldengateConnectionAssignments listed in the response.
  ///
  /// [orderBy] - Optional. A comma-separated list of fields to order by, sorted
  /// in ascending order. Use "DESC" after a field name for descending.
  ///
  /// [pageSize] - Optional. The maximum number of
  /// GoldengateConnectionAssignments to return. The service may return fewer
  /// than this value. If unspecified, at most 50
  /// GoldengateConnectionAssignments will be returned. The maximum value is
  /// 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListGoldengateConnectionAssignments` call. Provide this to retrieve the
  /// subsequent page. When paginating, all other parameters provided to
  /// `ListGoldengateConnectionAssignments` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGoldengateConnectionAssignmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoldengateConnectionAssignmentsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/goldengateConnectionAssignments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoldengateConnectionAssignmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Tests a single GoldengateConnectionAssignment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the connection assignment for which to test
  /// connection.
  /// projects/{project}/locations/{region}/goldengateConnectionAssignments/{goldengate_connection_assignment}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateConnectionAssignments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TestGoldengateConnectionAssignmentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TestGoldengateConnectionAssignmentResponse> test(
    TestGoldengateConnectionAssignmentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':test';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TestGoldengateConnectionAssignmentResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGoldengateConnectionTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGoldengateConnectionTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists GoldengateConnectionTypes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for ListGoldengateConnectionTypesRequest
  /// Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. The connection_type field must be specified in the format:
  /// `connection_type="ORACLE"`.
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
  /// Completes with a [ListGoldengateConnectionTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoldengateConnectionTypesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/goldengateConnectionTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoldengateConnectionTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGoldengateConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGoldengateConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new GoldengateConnection in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The value for parent of the GoldengateConnection in
  /// the following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [goldengateConnectionId] - Required. The ID of the GoldengateConnection to
  /// create. This value is restricted to
  /// (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with a
  /// letter or a number.
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
    GoldengateConnection request,
    core.String parent, {
    core.String? goldengateConnectionId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'goldengateConnectionId': ?goldengateConnectionId == null
          ? null
          : [goldengateConnectionId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/goldengateConnections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single GoldengateConnection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the GoldengateConnection in the following
  /// format:
  /// projects/{project}/locations/{location}/goldengateConnections/{goldengate_connection}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateConnections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single GoldengateConnection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the GoldengateConnection in the following
  /// format:
  /// projects/{project}/locations/{location}/goldengateConnections/{goldengate_connection}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoldengateConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoldengateConnection> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoldengateConnection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the GoldengateConnections for the given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for GoldengateConnections in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 GoldengateConnections will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// ListGoldengateConnections call. Provide this to retrieve the subsequent
  /// page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGoldengateConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoldengateConnectionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/goldengateConnections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoldengateConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGoldengateDeploymentEnvironmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGoldengateDeploymentEnvironmentsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists GoldengateDeploymentEnvironments in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// GoldengateDeploymentEnvironments. Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 deployment environments will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGoldengateDeploymentEnvironmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoldengateDeploymentEnvironmentsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/goldengateDeploymentEnvironments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoldengateDeploymentEnvironmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGoldengateDeploymentTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGoldengateDeploymentTypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists GoldenGateDeploymentTypes in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource. Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Either the deployment_type and ogg_version fields must be
  /// specified in the format: `deployment_type="DATABASE_ORACLE"` or
  /// `ogg_version="version"`. Allowed values for deployment_type are:
  /// `DATABASE_ORACLE`, `BIGDATA`, `DATABASE_MICROSOFT_SQLSERVER`,
  /// `DATABASE_MYSQL`, `DATABASE_POSTGRESQL`, `DATABASE_DB2ZOS`,
  /// `DATABASE_DB2I`, `GGSA`, `DATA_TRANSFORMS`.
  ///
  /// [orderBy] - Optional. Hint for how to order the results
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
  /// Completes with a [ListGoldengateDeploymentTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoldengateDeploymentTypesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/goldengateDeploymentTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoldengateDeploymentTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGoldengateDeploymentVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGoldengateDeploymentVersionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Lists GoldengateDeploymentVersions in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent value for
  /// ListGoldengateDeploymentVersionsRequest Format:
  /// projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. Either the deployment_id and deployment_type fields must be
  /// specified in the format: `deployment_id="id"` or
  /// `deployment_type="DATABASE_ORACLE"`.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  /// The maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGoldengateDeploymentVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoldengateDeploymentVersionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/goldengateDeploymentVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoldengateDeploymentVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGoldengateDeploymentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGoldengateDeploymentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new GoldengateDeployment in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The value for parent of the GoldengateDeployment in
  /// the following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [goldengateDeploymentId] - Required. The ID of the GoldengateDeployment to
  /// create. This value is restricted to
  /// (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with a
  /// letter or a number.
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
    GoldengateDeployment request,
    core.String parent, {
    core.String? goldengateDeploymentId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'goldengateDeploymentId': ?goldengateDeploymentId == null
          ? null
          : [goldengateDeploymentId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/goldengateDeployments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single GoldengateDeployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the GoldengateDeployment in the following
  /// format:
  /// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateDeployments/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single GoldengateDeployment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the GoldengateDeployment in the following
  /// format:
  /// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateDeployments/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoldengateDeployment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoldengateDeployment> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoldengateDeployment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the GoldengateDeployments for the given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for GoldengateDeployments in the
  /// following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 GoldengateDeployments will be returned. The
  /// maximum value is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// ListGoldengateDeployments call. Provide this to retrieve the subsequent
  /// page.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListGoldengateDeploymentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListGoldengateDeploymentsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/goldengateDeployments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGoldengateDeploymentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Starts a single GoldengateDeployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Goldengate Deployment in the following
  /// format:
  /// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateDeployments/\[^/\]+$`.
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
  async.Future<Operation> start(
    StartGoldengateDeploymentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':start';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Stops a single GoldengateDeployment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the Goldengate Deployment in the following
  /// format:
  /// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/goldengateDeployments/\[^/\]+$`.
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
    StopGoldengateDeploymentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsOdbNetworksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOdbNetworksOdbSubnetsResource get odbSubnets =>
      ProjectsLocationsOdbNetworksOdbSubnetsResource(_requester);

  ProjectsLocationsOdbNetworksResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new ODB Network in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the OdbNetwork in the following
  /// format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [odbNetworkId] - Required. The ID of the OdbNetwork to create. This value
  /// is restricted to (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must be a
  /// maximum of 63 characters in length. The value must start with a letter and
  /// end with a letter or a number.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    OdbNetwork request,
    core.String parent, {
    core.String? odbNetworkId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'odbNetworkId': ?odbNetworkId == null ? null : [odbNetworkId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/odbNetworks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ODB Network.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource in the following format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/odbNetworks/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ODB Network.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the OdbNetwork in the following format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/odbNetworks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OdbNetwork].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OdbNetwork> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OdbNetwork.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the ODB Networks in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the ODB Network in the following
  /// format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 ODB Networks will be returned. The maximum value
  /// is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOdbNetworksResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOdbNetworksResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/odbNetworks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOdbNetworksResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsOdbNetworksOdbSubnetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOdbNetworksOdbSubnetsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new ODB Subnet in a given ODB Network.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the OdbSubnet in the following
  /// format: projects/{project}/locations/{location}/odbNetworks/{odb_network}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/odbNetworks/\[^/\]+$`.
  ///
  /// [odbSubnetId] - Required. The ID of the OdbSubnet to create. This value is
  /// restricted to (^\[a-z\](\[a-z0-9-\]{0,61}\[a-z0-9\])?$) and must be a
  /// maximum of 63 characters in length. The value must start with a letter and
  /// end with a letter or a number.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
    OdbSubnet request,
    core.String parent, {
    core.String? odbSubnetId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'odbSubnetId': ?odbSubnetId == null ? null : [odbSubnetId],
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/odbSubnets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ODB Subnet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the resource in the following format:
  /// projects/{project}/locations/{region}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/odbNetworks/\[^/\]+/odbSubnets/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional ID to identify the request. This value
  /// is used to identify duplicate requests. If you make a request with the
  /// same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
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
      'requestId': ?requestId == null ? null : [requestId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single ODB Subnet.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the OdbSubnet in the following format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/odbNetworks/\[^/\]+/odbSubnets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [OdbSubnet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<OdbSubnet> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return OdbSubnet.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists all the ODB Subnets in a given ODB Network.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for the OdbSubnet in the following
  /// format: projects/{project}/locations/{location}/odbNetworks/{odb_network}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/odbNetworks/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request.
  ///
  /// [orderBy] - Optional. An expression for ordering the results of the
  /// request.
  ///
  /// [pageSize] - Optional. The maximum number of items to return. If
  /// unspecified, at most 50 ODB Networks will be returned. The maximum value
  /// is 1000; values above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - Optional. A token identifying a page of results the server
  /// should return.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListOdbSubnetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListOdbSubnetsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/odbSubnets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOdbSubnetsResponse.fromJson(
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsPluggableDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPluggableDatabasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single PluggableDatabase.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the PluggableDatabase resource in the
  /// following format:
  /// projects/{project}/locations/{region}/pluggableDatabases/{pluggable_database}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/pluggableDatabases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PluggableDatabase].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PluggableDatabase> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return PluggableDatabase.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all the PluggableDatabases for the given project, location and
  /// Container Database.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// PluggableDatabases. Format: projects/{project}/locations/{location}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. An expression for filtering the results of the
  /// request. List for pluggable databases is supported only with a valid
  /// container database (full resource name) filter in this format:
  /// `database="projects/{project}/locations/{location}/databases/{database}"`
  ///
  /// [pageSize] - Optional. The maximum number of PluggableDatabases to return.
  /// The service may return fewer than this value.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListPluggableDatabases` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListPluggableDatabases` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPluggableDatabasesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPluggableDatabasesResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/pluggableDatabases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPluggableDatabasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A list of all connection strings that can be used to connect to the
/// Autonomous Database.
class AllConnectionStrings {
  /// The database service provides the highest level of resources to each SQL
  /// statement.
  ///
  /// Output only.
  core.String? high;

  /// The database service provides the least level of resources to each SQL
  /// statement.
  ///
  /// Output only.
  core.String? low;

  /// The database service provides a lower level of resources to each SQL
  /// statement.
  ///
  /// Output only.
  core.String? medium;

  AllConnectionStrings({this.high, this.low, this.medium});

  AllConnectionStrings.fromJson(core.Map json_)
    : this(
        high: json_['high'] as core.String?,
        low: json_['low'] as core.String?,
        medium: json_['medium'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final high = this.high;
    final low = this.low;
    final medium = this.medium;
    return {'high': ?high, 'low': ?low, 'medium': ?medium};
  }
}

/// The Amazon S3 Iceberg storage.
class AmazonS3IcebergStorage {
  /// The access key ID of Amazon S3.
  ///
  /// Required.
  core.String? accessKeyId;

  /// The bucket of Amazon S3.
  ///
  /// Required.
  core.String? bucket;

  /// The endpoint of Amazon S3.
  ///
  /// Optional.
  core.String? endpoint;

  /// The region of Amazon S3.
  ///
  /// Required.
  core.String? region;

  /// The scheme type of Amazon S3.
  ///
  /// Required.
  /// Possible string values are:
  /// - "SCHEME_TYPE_UNSPECIFIED" : Scheme type not specified.
  /// - "S3" : S3 scheme.
  /// - "S3A" : S3A scheme.
  core.String? schemeType;

  /// The secret access key of Amazon S3.
  ///
  /// Optional.
  core.String? secretAccessKeySecret;

  AmazonS3IcebergStorage({
    this.accessKeyId,
    this.bucket,
    this.endpoint,
    this.region,
    this.schemeType,
    this.secretAccessKeySecret,
  });

  AmazonS3IcebergStorage.fromJson(core.Map json_)
    : this(
        accessKeyId: json_['accessKeyId'] as core.String?,
        bucket: json_['bucket'] as core.String?,
        endpoint: json_['endpoint'] as core.String?,
        region: json_['region'] as core.String?,
        schemeType: json_['schemeType'] as core.String?,
        secretAccessKeySecret: json_['secretAccessKeySecret'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessKeyId = this.accessKeyId;
    final bucket = this.bucket;
    final endpoint = this.endpoint;
    final region = this.region;
    final schemeType = this.schemeType;
    final secretAccessKeySecret = this.secretAccessKeySecret;
    return {
      'accessKeyId': ?accessKeyId,
      'bucket': ?bucket,
      'endpoint': ?endpoint,
      'region': ?region,
      'schemeType': ?schemeType,
      'secretAccessKeySecret': ?secretAccessKeySecret,
    };
  }
}

/// Details of the Autonomous Database resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabase/
class AutonomousDatabase {
  /// The password for the default ADMIN user.
  ///
  /// Note: Only one of `admin_password_secret_version` or `admin_password` can
  /// be populated.
  ///
  /// Optional. Immutable.
  core.String? adminPassword;

  /// The resource name of a secret version in Secret Manager which contains the
  /// database admin user's password.
  ///
  /// Format: projects/{project}/secrets/{secret}/versions/{version}. Note: Only
  /// one of `admin_password_secret_version` or `admin_password` can be
  /// populated.
  ///
  /// Optional. Immutable.
  core.String? adminPasswordSecretVersion;

  /// The subnet CIDR range for the Autonomous Database.
  ///
  /// Optional. Immutable.
  core.String? cidr;

  /// The date and time that the Autonomous Database was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of the Autonomous Database.
  ///
  /// The database name must be unique in the project. The name must begin with
  /// a letter and can contain a maximum of 30 alphanumeric characters.
  ///
  /// Optional. Immutable.
  core.String? database;

  /// List of supported GCP region to clone the Autonomous Database for disaster
  /// recovery.
  ///
  /// Format: `project/{project}/locations/{location}`.
  ///
  /// Output only.
  core.List<core.String>? disasterRecoverySupportedLocations;

  /// The display name for the Autonomous Database.
  ///
  /// The name does not have to be unique within your project.
  ///
  /// Optional. Immutable.
  core.String? displayName;

  /// The ID of the subscription entitlement associated with the Autonomous
  /// Database.
  ///
  /// Output only.
  core.String? entitlementId;

  /// The labels or tags associated with the Autonomous Database.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the Autonomous Database resource in the following format:
  /// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
  core.String? name;

  /// The name of the VPC network used by the Autonomous Database in the
  /// following format: projects/{project}/global/networks/{network}
  ///
  /// Optional. Immutable.
  core.String? network;

  /// The name of the OdbNetwork associated with the Autonomous Database.
  ///
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork
  /// of the OdbSubnet.
  ///
  /// Optional. Immutable.
  core.String? odbNetwork;

  /// The name of the OdbSubnet associated with the Autonomous Database.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  ///
  /// Optional. Immutable.
  core.String? odbSubnet;

  /// The peer Autonomous Database names of the given Autonomous Database.
  ///
  /// Output only.
  core.List<core.String>? peerAutonomousDatabases;

  /// The properties of the Autonomous Database.
  ///
  /// Optional.
  AutonomousDatabaseProperties? properties;

  /// The source Autonomous Database configuration for the standby Autonomous
  /// Database.
  ///
  /// The source Autonomous Database is configured while creating the Peer
  /// Autonomous Database and can't be updated after creation.
  ///
  /// Optional. Immutable.
  SourceConfig? sourceConfig;

  AutonomousDatabase({
    this.adminPassword,
    this.adminPasswordSecretVersion,
    this.cidr,
    this.createTime,
    this.database,
    this.disasterRecoverySupportedLocations,
    this.displayName,
    this.entitlementId,
    this.labels,
    this.name,
    this.network,
    this.odbNetwork,
    this.odbSubnet,
    this.peerAutonomousDatabases,
    this.properties,
    this.sourceConfig,
  });

  AutonomousDatabase.fromJson(core.Map json_)
    : this(
        adminPassword: json_['adminPassword'] as core.String?,
        adminPasswordSecretVersion:
            json_['adminPasswordSecretVersion'] as core.String?,
        cidr: json_['cidr'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        database: json_['database'] as core.String?,
        disasterRecoverySupportedLocations:
            (json_['disasterRecoverySupportedLocations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        displayName: json_['displayName'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        odbNetwork: json_['odbNetwork'] as core.String?,
        odbSubnet: json_['odbSubnet'] as core.String?,
        peerAutonomousDatabases:
            (json_['peerAutonomousDatabases'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        properties: json_.containsKey('properties')
            ? AutonomousDatabaseProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        sourceConfig: json_.containsKey('sourceConfig')
            ? SourceConfig.fromJson(
                json_['sourceConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adminPassword = this.adminPassword;
    final adminPasswordSecretVersion = this.adminPasswordSecretVersion;
    final cidr = this.cidr;
    final createTime = this.createTime;
    final database = this.database;
    final disasterRecoverySupportedLocations =
        this.disasterRecoverySupportedLocations;
    final displayName = this.displayName;
    final entitlementId = this.entitlementId;
    final labels = this.labels;
    final name = this.name;
    final network = this.network;
    final odbNetwork = this.odbNetwork;
    final odbSubnet = this.odbSubnet;
    final peerAutonomousDatabases = this.peerAutonomousDatabases;
    final properties = this.properties;
    final sourceConfig = this.sourceConfig;
    return {
      'adminPassword': ?adminPassword,
      'adminPasswordSecretVersion': ?adminPasswordSecretVersion,
      'cidr': ?cidr,
      'createTime': ?createTime,
      'database': ?database,
      'disasterRecoverySupportedLocations': ?disasterRecoverySupportedLocations,
      'displayName': ?displayName,
      'entitlementId': ?entitlementId,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'peerAutonomousDatabases': ?peerAutonomousDatabases,
      'properties': ?properties,
      'sourceConfig': ?sourceConfig,
    };
  }
}

/// Oracle APEX Application Development.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseApex
class AutonomousDatabaseApex {
  /// The Oracle APEX Application Development version.
  ///
  /// Output only.
  core.String? apexVersion;

  /// The Oracle REST Data Services (ORDS) version.
  ///
  /// Output only.
  core.String? ordsVersion;

  AutonomousDatabaseApex({this.apexVersion, this.ordsVersion});

  AutonomousDatabaseApex.fromJson(core.Map json_)
    : this(
        apexVersion: json_['apexVersion'] as core.String?,
        ordsVersion: json_['ordsVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apexVersion = this.apexVersion;
    final ordsVersion = this.ordsVersion;
    return {'apexVersion': ?apexVersion, 'ordsVersion': ?ordsVersion};
  }
}

/// Details of the Autonomous Database Backup resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabaseBackup/
class AutonomousDatabaseBackup {
  /// The name of the Autonomous Database resource for which the backup is being
  /// created.
  ///
  /// Format:
  /// projects/{project}/locations/{region}/autonomousDatabases/{autonomous_database}
  ///
  /// Required.
  core.String? autonomousDatabase;

  /// User friendly name for the Backup.
  ///
  /// The name does not have to be unique.
  ///
  /// Optional.
  core.String? displayName;

  /// labels or tags associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the Autonomous Database Backup resource with the format:
  /// projects/{project}/locations/{region}/autonomousDatabaseBackups/{autonomous_database_backup}
  core.String? name;

  /// Various properties of the backup.
  ///
  /// Optional.
  AutonomousDatabaseBackupProperties? properties;

  AutonomousDatabaseBackup({
    this.autonomousDatabase,
    this.displayName,
    this.labels,
    this.name,
    this.properties,
  });

  AutonomousDatabaseBackup.fromJson(core.Map json_)
    : this(
        autonomousDatabase: json_['autonomousDatabase'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        properties: json_.containsKey('properties')
            ? AutonomousDatabaseBackupProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autonomousDatabase = this.autonomousDatabase;
    final displayName = this.displayName;
    final labels = this.labels;
    final name = this.name;
    final properties = this.properties;
    return {
      'autonomousDatabase': ?autonomousDatabase,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'properties': ?properties,
    };
  }
}

/// Properties of the Autonomous Database Backup resource.
class AutonomousDatabaseBackupProperties {
  /// Timestamp until when the backup will be available.
  ///
  /// Output only.
  core.String? availableTillTime;

  /// The OCID of the compartment.
  ///
  /// Output only.
  core.String? compartmentId;

  /// The quantity of data in the database, in terabytes.
  ///
  /// Output only.
  core.double? databaseSizeTb;

  /// A valid Oracle Database version for Autonomous Database.
  ///
  /// Output only.
  core.String? dbVersion;

  /// The date and time the backup completed.
  ///
  /// Output only.
  core.String? endTime;

  /// Indicates if the backup is automatic or user initiated.
  ///
  /// Output only.
  core.bool? isAutomaticBackup;

  /// Indicates if the backup is long term backup.
  ///
  /// Output only.
  core.bool? isLongTermBackup;

  /// Indicates if the backup can be used to restore the Autonomous Database.
  ///
  /// Output only.
  core.bool? isRestorable;

  /// The OCID of the key store of Oracle Vault.
  ///
  /// Optional.
  core.String? keyStoreId;

  /// The wallet name for Oracle Key Vault.
  ///
  /// Optional.
  core.String? keyStoreWallet;

  /// The OCID of the key container that is used as the master encryption key in
  /// database transparent data encryption (TDE) operations.
  ///
  /// Optional.
  core.String? kmsKeyId;

  /// The OCID of the key container version that is used in database transparent
  /// data encryption (TDE) operations KMS Key can have multiple key versions.
  ///
  /// If none is specified, the current key version (latest) of the Key Id is
  /// used for the operation. Autonomous Database Serverless does not use key
  /// versions, hence is not applicable for Autonomous Database Serverless
  /// instances.
  ///
  /// Optional.
  core.String? kmsKeyVersionId;

  /// Additional information about the current lifecycle state.
  ///
  /// Output only.
  core.String? lifecycleDetails;

  /// The lifecycle state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "CREATING" : Indicates that the resource is in creating state.
  /// - "ACTIVE" : Indicates that the resource is in active state.
  /// - "DELETING" : Indicates that the resource is in deleting state.
  /// - "DELETED" : Indicates that the resource is in deleted state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  /// - "UPDATING" : Indicates that the resource is in updating state.
  core.String? lifecycleState;

  /// OCID of the Autonomous Database backup.
  ///
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  ///
  /// Output only.
  core.String? ocid;

  /// Retention period in days for the backup.
  ///
  /// Optional.
  core.int? retentionPeriodDays;

  /// The backup size in terabytes.
  ///
  /// Output only.
  core.double? sizeTb;

  /// The date and time the backup started.
  ///
  /// Output only.
  core.String? startTime;

  /// The type of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "INCREMENTAL" : Incremental backups.
  /// - "FULL" : Full backups.
  /// - "LONG_TERM" : Long term backups.
  core.String? type;

  /// The OCID of the vault.
  ///
  /// Optional.
  core.String? vaultId;

  AutonomousDatabaseBackupProperties({
    this.availableTillTime,
    this.compartmentId,
    this.databaseSizeTb,
    this.dbVersion,
    this.endTime,
    this.isAutomaticBackup,
    this.isLongTermBackup,
    this.isRestorable,
    this.keyStoreId,
    this.keyStoreWallet,
    this.kmsKeyId,
    this.kmsKeyVersionId,
    this.lifecycleDetails,
    this.lifecycleState,
    this.ocid,
    this.retentionPeriodDays,
    this.sizeTb,
    this.startTime,
    this.type,
    this.vaultId,
  });

  AutonomousDatabaseBackupProperties.fromJson(core.Map json_)
    : this(
        availableTillTime: json_['availableTillTime'] as core.String?,
        compartmentId: json_['compartmentId'] as core.String?,
        databaseSizeTb: (json_['databaseSizeTb'] as core.num?)?.toDouble(),
        dbVersion: json_['dbVersion'] as core.String?,
        endTime: json_['endTime'] as core.String?,
        isAutomaticBackup: json_['isAutomaticBackup'] as core.bool?,
        isLongTermBackup: json_['isLongTermBackup'] as core.bool?,
        isRestorable: json_['isRestorable'] as core.bool?,
        keyStoreId: json_['keyStoreId'] as core.String?,
        keyStoreWallet: json_['keyStoreWallet'] as core.String?,
        kmsKeyId: json_['kmsKeyId'] as core.String?,
        kmsKeyVersionId: json_['kmsKeyVersionId'] as core.String?,
        lifecycleDetails: json_['lifecycleDetails'] as core.String?,
        lifecycleState: json_['lifecycleState'] as core.String?,
        ocid: json_['ocid'] as core.String?,
        retentionPeriodDays: json_['retentionPeriodDays'] as core.int?,
        sizeTb: (json_['sizeTb'] as core.num?)?.toDouble(),
        startTime: json_['startTime'] as core.String?,
        type: json_['type'] as core.String?,
        vaultId: json_['vaultId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availableTillTime = this.availableTillTime;
    final compartmentId = this.compartmentId;
    final databaseSizeTb = this.databaseSizeTb;
    final dbVersion = this.dbVersion;
    final endTime = this.endTime;
    final isAutomaticBackup = this.isAutomaticBackup;
    final isLongTermBackup = this.isLongTermBackup;
    final isRestorable = this.isRestorable;
    final keyStoreId = this.keyStoreId;
    final keyStoreWallet = this.keyStoreWallet;
    final kmsKeyId = this.kmsKeyId;
    final kmsKeyVersionId = this.kmsKeyVersionId;
    final lifecycleDetails = this.lifecycleDetails;
    final lifecycleState = this.lifecycleState;
    final ocid = this.ocid;
    final retentionPeriodDays = this.retentionPeriodDays;
    final sizeTb = this.sizeTb;
    final startTime = this.startTime;
    final type = this.type;
    final vaultId = this.vaultId;
    return {
      'availableTillTime': ?availableTillTime,
      'compartmentId': ?compartmentId,
      'databaseSizeTb': ?databaseSizeTb,
      'dbVersion': ?dbVersion,
      'endTime': ?endTime,
      'isAutomaticBackup': ?isAutomaticBackup,
      'isLongTermBackup': ?isLongTermBackup,
      'isRestorable': ?isRestorable,
      'keyStoreId': ?keyStoreId,
      'keyStoreWallet': ?keyStoreWallet,
      'kmsKeyId': ?kmsKeyId,
      'kmsKeyVersionId': ?kmsKeyVersionId,
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'ocid': ?ocid,
      'retentionPeriodDays': ?retentionPeriodDays,
      'sizeTb': ?sizeTb,
      'startTime': ?startTime,
      'type': ?type,
      'vaultId': ?vaultId,
    };
  }
}

/// Details of the Autonomous Database character set resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabaseCharacterSets/
class AutonomousDatabaseCharacterSet {
  /// The character set name for the Autonomous Database which is the ID in the
  /// resource name.
  ///
  /// Output only.
  core.String? characterSet;

  /// The character set type for the Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHARACTER_SET_TYPE_UNSPECIFIED" : Character set type is not specified.
  /// - "DATABASE" : Character set type is set to database.
  /// - "NATIONAL" : Character set type is set to national.
  core.String? characterSetType;

  /// Identifier.
  ///
  /// The name of the Autonomous Database Character Set resource in the
  /// following format:
  /// projects/{project}/locations/{region}/autonomousDatabaseCharacterSets/{autonomous_database_character_set}
  core.String? name;

  AutonomousDatabaseCharacterSet({
    this.characterSet,
    this.characterSetType,
    this.name,
  });

  AutonomousDatabaseCharacterSet.fromJson(core.Map json_)
    : this(
        characterSet: json_['characterSet'] as core.String?,
        characterSetType: json_['characterSetType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final characterSet = this.characterSet;
    final characterSetType = this.characterSetType;
    final name = this.name;
    return {
      'characterSet': ?characterSet,
      'characterSetType': ?characterSetType,
      'name': ?name,
    };
  }
}

/// The connection string used to connect to the Autonomous Database.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionStrings
class AutonomousDatabaseConnectionStrings {
  /// Returns all connection strings that can be used to connect to the
  /// Autonomous Database.
  ///
  /// Output only.
  AllConnectionStrings? allConnectionStrings;

  /// The database service provides the least level of resources to each SQL
  /// statement, but supports the most number of concurrent SQL statements.
  ///
  /// Output only.
  core.String? dedicated;

  /// The database service provides the highest level of resources to each SQL
  /// statement.
  ///
  /// Output only.
  core.String? high;

  /// The database service provides the least level of resources to each SQL
  /// statement.
  ///
  /// Output only.
  core.String? low;

  /// The database service provides a lower level of resources to each SQL
  /// statement.
  ///
  /// Output only.
  core.String? medium;

  /// A list of connection string profiles to allow clients to group, filter,
  /// and select values based on the structured metadata.
  ///
  /// Output only.
  core.List<DatabaseConnectionStringProfile>? profiles;

  AutonomousDatabaseConnectionStrings({
    this.allConnectionStrings,
    this.dedicated,
    this.high,
    this.low,
    this.medium,
    this.profiles,
  });

  AutonomousDatabaseConnectionStrings.fromJson(core.Map json_)
    : this(
        allConnectionStrings: json_.containsKey('allConnectionStrings')
            ? AllConnectionStrings.fromJson(
                json_['allConnectionStrings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dedicated: json_['dedicated'] as core.String?,
        high: json_['high'] as core.String?,
        low: json_['low'] as core.String?,
        medium: json_['medium'] as core.String?,
        profiles: (json_['profiles'] as core.List?)
            ?.map(
              (value) => DatabaseConnectionStringProfile.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allConnectionStrings = this.allConnectionStrings;
    final dedicated = this.dedicated;
    final high = this.high;
    final low = this.low;
    final medium = this.medium;
    final profiles = this.profiles;
    return {
      'allConnectionStrings': ?allConnectionStrings,
      'dedicated': ?dedicated,
      'high': ?high,
      'low': ?low,
      'medium': ?medium,
      'profiles': ?profiles,
    };
  }
}

/// The URLs for accessing Oracle Application Express (APEX) and SQL Developer
/// Web with a browser from a Compute instance.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls
class AutonomousDatabaseConnectionUrls {
  /// Oracle Application Express (APEX) URL.
  ///
  /// Output only.
  core.String? apexUri;

  /// The URL of the Database Transforms for the Autonomous Database.
  ///
  /// Output only.
  core.String? databaseTransformsUri;

  /// The URL of the Graph Studio for the Autonomous Database.
  ///
  /// Output only.
  core.String? graphStudioUri;

  /// The URL of the Oracle Machine Learning (OML) Notebook for the Autonomous
  /// Database.
  ///
  /// Output only.
  core.String? machineLearningNotebookUri;

  /// The URL of Machine Learning user management the Autonomous Database.
  ///
  /// Output only.
  core.String? machineLearningUserManagementUri;

  /// The URL of the MongoDB API for the Autonomous Database.
  ///
  /// Output only.
  core.String? mongoDbUri;

  /// The Oracle REST Data Services (ORDS) URL of the Web Access for the
  /// Autonomous Database.
  ///
  /// Output only.
  core.String? ordsUri;

  /// The URL of the Oracle SQL Developer Web for the Autonomous Database.
  ///
  /// Output only.
  core.String? sqlDevWebUri;

  AutonomousDatabaseConnectionUrls({
    this.apexUri,
    this.databaseTransformsUri,
    this.graphStudioUri,
    this.machineLearningNotebookUri,
    this.machineLearningUserManagementUri,
    this.mongoDbUri,
    this.ordsUri,
    this.sqlDevWebUri,
  });

  AutonomousDatabaseConnectionUrls.fromJson(core.Map json_)
    : this(
        apexUri: json_['apexUri'] as core.String?,
        databaseTransformsUri: json_['databaseTransformsUri'] as core.String?,
        graphStudioUri: json_['graphStudioUri'] as core.String?,
        machineLearningNotebookUri:
            json_['machineLearningNotebookUri'] as core.String?,
        machineLearningUserManagementUri:
            json_['machineLearningUserManagementUri'] as core.String?,
        mongoDbUri: json_['mongoDbUri'] as core.String?,
        ordsUri: json_['ordsUri'] as core.String?,
        sqlDevWebUri: json_['sqlDevWebUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final apexUri = this.apexUri;
    final databaseTransformsUri = this.databaseTransformsUri;
    final graphStudioUri = this.graphStudioUri;
    final machineLearningNotebookUri = this.machineLearningNotebookUri;
    final machineLearningUserManagementUri =
        this.machineLearningUserManagementUri;
    final mongoDbUri = this.mongoDbUri;
    final ordsUri = this.ordsUri;
    final sqlDevWebUri = this.sqlDevWebUri;
    return {
      'apexUri': ?apexUri,
      'databaseTransformsUri': ?databaseTransformsUri,
      'graphStudioUri': ?graphStudioUri,
      'machineLearningNotebookUri': ?machineLearningNotebookUri,
      'machineLearningUserManagementUri': ?machineLearningUserManagementUri,
      'mongoDbUri': ?mongoDbUri,
      'ordsUri': ?ordsUri,
      'sqlDevWebUri': ?sqlDevWebUri,
    };
  }
}

/// The properties of an Autonomous Database.
class AutonomousDatabaseProperties {
  /// The amount of storage currently being used for user and system data, in
  /// terabytes.
  ///
  /// Output only.
  core.double? actualUsedDataStorageSizeTb;

  /// The amount of storage currently allocated for the database tables and
  /// billed for, rounded up in terabytes.
  ///
  /// Output only.
  core.double? allocatedStorageSizeTb;

  /// The list of allowlisted IP addresses for the Autonomous Database.
  ///
  /// Optional. Immutable.
  core.List<core.String>? allowlistedIps;

  /// The details for the Oracle APEX Application Development.
  ///
  /// Output only.
  AutonomousDatabaseApex? apexDetails;

  /// This field indicates the status of Data Guard and Access control for the
  /// Autonomous Database.
  ///
  /// The field's value is null if Data Guard is disabled or Access Control is
  /// disabled. The field's value is TRUE if both Data Guard and Access Control
  /// are enabled, and the Autonomous Database is using primary IP access
  /// control list (ACL) for standby. The field's value is FALSE if both Data
  /// Guard and Access Control are enabled, and the Autonomous Database is using
  /// a different IP access control list (ACL) for standby compared to primary.
  ///
  /// Output only.
  core.bool? arePrimaryAllowlistedIpsUsed;

  /// The Autonomous Container Database OCID.
  ///
  /// Output only.
  core.String? autonomousContainerDatabaseId;

  /// The list of available Oracle Database upgrade versions for an Autonomous
  /// Database.
  ///
  /// Output only.
  core.List<core.String>? availableUpgradeVersions;

  /// The retention period for the Autonomous Database.
  ///
  /// This field is specified in days, can range from 1 day to 60 days, and has
  /// a default value of 60 days.
  ///
  /// Optional. Immutable.
  core.int? backupRetentionPeriodDays;

  /// The character set for the Autonomous Database.
  ///
  /// The default is AL32UTF8.
  ///
  /// Optional. Immutable.
  core.String? characterSet;

  /// The number of compute servers for the Autonomous Database.
  ///
  /// Optional. Immutable.
  core.double? computeCount;

  /// The connection strings used to connect to an Autonomous Database.
  ///
  /// Output only.
  AutonomousDatabaseConnectionStrings? connectionStrings;

  /// The Oracle Connection URLs for an Autonomous Database.
  ///
  /// Output only.
  AutonomousDatabaseConnectionUrls? connectionUrls;

  /// The number of CPU cores to be made available to the database.
  ///
  /// Optional. Immutable.
  core.int? cpuCoreCount;

  /// The list of customer contacts.
  ///
  /// Optional. Immutable.
  core.List<CustomerContact>? customerContacts;

  /// The date and time the Autonomous Data Guard role was changed for the
  /// standby Autonomous Database.
  ///
  /// Output only.
  core.String? dataGuardRoleChangedTime;

  /// The current state of the Data Safe registration for the Autonomous
  /// Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATA_SAFE_STATE_UNSPECIFIED" : Default unspecified value.
  /// - "REGISTERING" : Registering data safe state.
  /// - "REGISTERED" : Registered data safe state.
  /// - "DEREGISTERING" : Deregistering data safe state.
  /// - "NOT_REGISTERED" : Not registered data safe state.
  /// - "FAILED" : Failed data safe state.
  core.String? dataSafeState;

  /// The size of the data stored in the database, in gigabytes.
  ///
  /// Optional. Immutable.
  core.int? dataStorageSizeGb;

  /// The size of the data stored in the database, in terabytes.
  ///
  /// Optional. Immutable.
  core.int? dataStorageSizeTb;

  /// The current state of database management for the Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATABASE_MANAGEMENT_STATE_UNSPECIFIED" : Default unspecified value.
  /// - "ENABLING" : Enabling Database Management state
  /// - "ENABLED" : Enabled Database Management state
  /// - "DISABLING" : Disabling Database Management state
  /// - "NOT_ENABLED" : Not Enabled Database Management state
  /// - "FAILED_ENABLING" : Failed enabling Database Management state
  /// - "FAILED_DISABLING" : Failed disabling Database Management state
  core.String? databaseManagementState;

  /// The edition of the Autonomous Databases.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "DATABASE_EDITION_UNSPECIFIED" : Default unspecified value.
  /// - "STANDARD_EDITION" : Standard Database Edition
  /// - "ENTERPRISE_EDITION" : Enterprise Database Edition
  core.String? dbEdition;

  /// The Oracle Database version for the Autonomous Database.
  ///
  /// Optional. Immutable.
  core.String? dbVersion;

  /// The workload type of the Autonomous Database.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "DB_WORKLOAD_UNSPECIFIED" : Default unspecified value.
  /// - "OLTP" : Autonomous Transaction Processing database.
  /// - "DW" : Autonomous Data Warehouse database.
  /// - "AJD" : Autonomous JSON Database.
  /// - "APEX" : Autonomous Database with the Oracle APEX Application
  /// Development workload type.
  core.String? dbWorkload;

  /// The date and time the Disaster Recovery role was changed for the standby
  /// Autonomous Database.
  ///
  /// Output only.
  core.String? disasterRecoveryRoleChangedTime;

  /// The encryption key used to encrypt the Autonomous Database.
  ///
  /// Updating this field will add a new entry in the
  /// `encryption_key_history_entries` field with the former version.
  ///
  /// Optional.
  EncryptionKey? encryptionKey;

  /// The history of the encryption keys used to encrypt the Autonomous
  /// Database.
  ///
  /// Output only.
  core.List<EncryptionKeyHistoryEntry>? encryptionKeyHistoryEntries;

  /// This field indicates the number of seconds of data loss during a Data
  /// Guard failover.
  ///
  /// Output only.
  core.String? failedDataRecoveryDuration;

  /// This field indicates if auto scaling is enabled for the Autonomous
  /// Database CPU core count.
  ///
  /// Optional. Immutable.
  core.bool? isAutoScalingEnabled;

  /// Deprecated: Please use `local_data_guard_enabled` instead.
  ///
  /// This field indicates whether the Autonomous Database has local (in-region)
  /// Data Guard enabled.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? isLocalDataGuardEnabled;

  /// This field indicates if auto scaling is enabled for the Autonomous
  /// Database storage.
  ///
  /// Optional. Immutable.
  core.bool? isStorageAutoScalingEnabled;

  /// The license type used for the Autonomous Database.
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "LICENSE_TYPE_UNSPECIFIED" : Unspecified
  /// - "LICENSE_INCLUDED" : License included part of offer
  /// - "BRING_YOUR_OWN_LICENSE" : Bring your own license
  core.String? licenseType;

  /// The details of the current lifestyle state of the Autonomous Database.
  ///
  /// Output only.
  core.String? lifecycleDetails;

  /// Deprecated: Please use
  /// `local_adg_auto_failover_max_data_loss_limit_duration` instead.
  ///
  /// This field indicates the maximum data loss limit for an Autonomous
  /// Database, in seconds.
  ///
  /// Output only.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? localAdgAutoFailoverMaxDataLossLimit;

  /// This field indicates the maximum data loss limit for an Autonomous
  /// Database, in seconds.
  ///
  /// Optional.
  core.int? localAdgAutoFailoverMaxDataLossLimitDuration;

  /// Indicates whether the Autonomous Database has a local (in-region) standby
  /// database.
  ///
  /// Not applicable to cross-region Data Guard or dedicated Exadata
  /// infrastructure.
  ///
  /// Optional.
  core.bool? localDataGuardEnabled;

  /// This field indicates the local disaster recovery (DR) type of an
  /// Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LOCAL_DISASTER_RECOVERY_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "ADG" : Autonomous Data Guard recovery.
  /// - "BACKUP_BASED" : Backup based recovery.
  /// - "NOT_AVAILABLE" : Local disaster recovery is not available.
  core.String? localDisasterRecoveryType;

  /// The details of the Autonomous Data Guard standby database.
  ///
  /// Output only.
  AutonomousDatabaseStandbySummary? localStandbyDb;

  /// The date and time when maintenance will begin.
  ///
  /// Output only.
  core.String? maintenanceBeginTime;

  /// The date and time when maintenance will end.
  ///
  /// Output only.
  core.String? maintenanceEndTime;

  /// The maintenance schedule of the Autonomous Database.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "MAINTENANCE_SCHEDULE_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "EARLY" : An EARLY maintenance schedule patches the database before the
  /// regular scheduled maintenance.
  /// - "REGULAR" : A REGULAR maintenance schedule follows the normal
  /// maintenance cycle.
  core.String? maintenanceScheduleType;

  /// The amount of memory enabled per ECPU, in gigabytes.
  ///
  /// Output only.
  core.int? memoryPerOracleComputeUnitGbs;

  /// The memory assigned to in-memory tables in an Autonomous Database.
  ///
  /// Output only.
  core.int? memoryTableGbs;

  /// This field specifies if the Autonomous Database requires mTLS connections.
  ///
  /// Optional. Immutable.
  core.bool? mtlsConnectionRequired;

  /// The national character set for the Autonomous Database.
  ///
  /// The default is AL16UTF16.
  ///
  /// Optional. Immutable.
  core.String? nCharacterSet;

  /// The long term backup schedule of the Autonomous Database.
  ///
  /// Output only.
  core.String? nextLongTermBackupTime;

  /// The Oracle Cloud Infrastructure link for the Autonomous Database.
  ///
  /// Output only.
  core.String? ociUrl;

  /// OCID of the Autonomous Database.
  ///
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  ///
  /// Output only.
  core.String? ocid;

  /// This field indicates the current mode of the Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OPEN_MODE_UNSPECIFIED" : Default unspecified value.
  /// - "READ_ONLY" : Read Only Mode
  /// - "READ_WRITE" : Read Write Mode
  core.String? openMode;

  /// This field indicates the state of Operations Insights for the Autonomous
  /// Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OPERATIONS_INSIGHTS_STATE_UNSPECIFIED" : Default unspecified value.
  /// - "ENABLING" : Enabling status for operation insights.
  /// - "ENABLED" : Enabled status for operation insights.
  /// - "DISABLING" : Disabling status for operation insights.
  /// - "NOT_ENABLED" : Not Enabled status for operation insights.
  /// - "FAILED_ENABLING" : Failed enabling status for operation insights.
  /// - "FAILED_DISABLING" : Failed disabling status for operation insights.
  core.String? operationsInsightsState;

  /// The list of OCIDs of standby databases located in Autonomous Data Guard
  /// remote regions that are associated with the source database.
  ///
  /// Output only.
  core.List<core.String>? peerDbIds;

  /// The permission level of the Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PERMISSION_LEVEL_UNSPECIFIED" : Default unspecified value.
  /// - "RESTRICTED" : Restricted mode allows access only by admin users.
  /// - "UNRESTRICTED" : Normal access.
  core.String? permissionLevel;

  /// The private endpoint for the Autonomous Database.
  ///
  /// Output only.
  core.String? privateEndpoint;

  /// The private endpoint IP address for the Autonomous Database.
  ///
  /// Optional. Immutable.
  core.String? privateEndpointIp;

  /// The private endpoint label for the Autonomous Database.
  ///
  /// Optional. Immutable.
  core.String? privateEndpointLabel;

  /// Indicates if the Autonomous Database is a refreshable clone.
  ///
  /// This field is used in update flow to connect / disconnect a refreshable
  /// clone from its source database.
  ///
  /// Optional.
  core.bool? refreshableClone;

  /// The refresh mode of the cloned Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REFRESHABLE_MODE_UNSPECIFIED" : The default unspecified value.
  /// - "AUTOMATIC" : AUTOMATIC indicates that the cloned database is
  /// automatically refreshed with data from the source Autonomous Database.
  /// - "MANUAL" : MANUAL indicates that the cloned database is manually
  /// refreshed with data from the source Autonomous Database.
  core.String? refreshableMode;

  /// The refresh State of the clone.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "REFRESHABLE_STATE_UNSPECIFIED" : Default unspecified value.
  /// - "REFRESHING" : Refreshing
  /// - "NOT_REFRESHING" : Not refreshed
  core.String? refreshableState;

  /// The Data Guard role of the Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "ROLE_UNSPECIFIED" : Default unspecified value.
  /// - "PRIMARY" : Primary role
  /// - "STANDBY" : Standby role
  /// - "DISABLED_STANDBY" : Disabled standby role
  /// - "BACKUP_COPY" : Backup copy role
  /// - "SNAPSHOT_STANDBY" : Snapshot standby role
  core.String? role;

  /// The list and details of the scheduled operations of the Autonomous
  /// Database.
  ///
  /// Output only.
  core.List<ScheduledOperationDetails>? scheduledOperationDetails;

  /// The ID of the Oracle Cloud Infrastructure vault secret.
  ///
  /// Optional. Immutable.
  core.String? secretId;

  /// An Oracle-managed Google Cloud service account on which customers can
  /// grant roles to access resources in the customer project.
  ///
  /// Output only.
  core.String? serviceAgentEmail;

  /// The SQL Web Developer URL for the Autonomous Database.
  ///
  /// Output only.
  core.String? sqlWebDeveloperUrl;

  /// The current lifecycle state of the Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : Indicates that the Autonomous Database is in
  /// provisioning state.
  /// - "AVAILABLE" : Indicates that the Autonomous Database is in available
  /// state.
  /// - "STOPPING" : Indicates that the Autonomous Database is in stopping
  /// state.
  /// - "STOPPED" : Indicates that the Autonomous Database is in stopped state.
  /// - "STARTING" : Indicates that the Autonomous Database is in starting
  /// state.
  /// - "TERMINATING" : Indicates that the Autonomous Database is in terminating
  /// state.
  /// - "TERMINATED" : Indicates that the Autonomous Database is in terminated
  /// state.
  /// - "UNAVAILABLE" : Indicates that the Autonomous Database is in unavailable
  /// state.
  /// - "RESTORE_IN_PROGRESS" : Indicates that the Autonomous Database restore
  /// is in progress.
  /// - "RESTORE_FAILED" : Indicates that the Autonomous Database failed to
  /// restore.
  /// - "BACKUP_IN_PROGRESS" : Indicates that the Autonomous Database backup is
  /// in progress.
  /// - "SCALE_IN_PROGRESS" : Indicates that the Autonomous Database scale is in
  /// progress.
  /// - "AVAILABLE_NEEDS_ATTENTION" : Indicates that the Autonomous Database is
  /// available but needs attention state.
  /// - "UPDATING" : Indicates that the Autonomous Database is in updating
  /// state.
  /// - "MAINTENANCE_IN_PROGRESS" : Indicates that the Autonomous Database's
  /// maintenance is in progress state.
  /// - "RESTARTING" : Indicates that the Autonomous Database is in restarting
  /// state.
  /// - "RECREATING" : Indicates that the Autonomous Database is in recreating
  /// state.
  /// - "ROLE_CHANGE_IN_PROGRESS" : Indicates that the Autonomous Database's
  /// role change is in progress state.
  /// - "UPGRADING" : Indicates that the Autonomous Database is in upgrading
  /// state.
  /// - "INACCESSIBLE" : Indicates that the Autonomous Database is in
  /// inaccessible state.
  /// - "STANDBY" : Indicates that the Autonomous Database is in standby state.
  core.String? state;

  /// The list of available regions that can be used to create a clone for the
  /// Autonomous Database.
  ///
  /// Output only.
  core.List<core.String>? supportedCloneRegions;

  /// The storage space used by automatic backups of Autonomous Database, in
  /// gigabytes.
  ///
  /// Output only.
  core.double? totalAutoBackupStorageSizeGbs;

  /// The storage space used by Autonomous Database, in gigabytes.
  ///
  /// Output only.
  core.int? usedDataStorageSizeTbs;

  /// The ID of the Oracle Cloud Infrastructure vault.
  ///
  /// Optional. Immutable.
  core.String? vaultId;

  AutonomousDatabaseProperties({
    this.actualUsedDataStorageSizeTb,
    this.allocatedStorageSizeTb,
    this.allowlistedIps,
    this.apexDetails,
    this.arePrimaryAllowlistedIpsUsed,
    this.autonomousContainerDatabaseId,
    this.availableUpgradeVersions,
    this.backupRetentionPeriodDays,
    this.characterSet,
    this.computeCount,
    this.connectionStrings,
    this.connectionUrls,
    this.cpuCoreCount,
    this.customerContacts,
    this.dataGuardRoleChangedTime,
    this.dataSafeState,
    this.dataStorageSizeGb,
    this.dataStorageSizeTb,
    this.databaseManagementState,
    this.dbEdition,
    this.dbVersion,
    this.dbWorkload,
    this.disasterRecoveryRoleChangedTime,
    this.encryptionKey,
    this.encryptionKeyHistoryEntries,
    this.failedDataRecoveryDuration,
    this.isAutoScalingEnabled,
    this.isLocalDataGuardEnabled,
    this.isStorageAutoScalingEnabled,
    this.licenseType,
    this.lifecycleDetails,
    this.localAdgAutoFailoverMaxDataLossLimit,
    this.localAdgAutoFailoverMaxDataLossLimitDuration,
    this.localDataGuardEnabled,
    this.localDisasterRecoveryType,
    this.localStandbyDb,
    this.maintenanceBeginTime,
    this.maintenanceEndTime,
    this.maintenanceScheduleType,
    this.memoryPerOracleComputeUnitGbs,
    this.memoryTableGbs,
    this.mtlsConnectionRequired,
    this.nCharacterSet,
    this.nextLongTermBackupTime,
    this.ociUrl,
    this.ocid,
    this.openMode,
    this.operationsInsightsState,
    this.peerDbIds,
    this.permissionLevel,
    this.privateEndpoint,
    this.privateEndpointIp,
    this.privateEndpointLabel,
    this.refreshableClone,
    this.refreshableMode,
    this.refreshableState,
    this.role,
    this.scheduledOperationDetails,
    this.secretId,
    this.serviceAgentEmail,
    this.sqlWebDeveloperUrl,
    this.state,
    this.supportedCloneRegions,
    this.totalAutoBackupStorageSizeGbs,
    this.usedDataStorageSizeTbs,
    this.vaultId,
  });

  AutonomousDatabaseProperties.fromJson(core.Map json_)
    : this(
        actualUsedDataStorageSizeTb:
            (json_['actualUsedDataStorageSizeTb'] as core.num?)?.toDouble(),
        allocatedStorageSizeTb: (json_['allocatedStorageSizeTb'] as core.num?)
            ?.toDouble(),
        allowlistedIps: (json_['allowlistedIps'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        apexDetails: json_.containsKey('apexDetails')
            ? AutonomousDatabaseApex.fromJson(
                json_['apexDetails'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        arePrimaryAllowlistedIpsUsed:
            json_['arePrimaryAllowlistedIpsUsed'] as core.bool?,
        autonomousContainerDatabaseId:
            json_['autonomousContainerDatabaseId'] as core.String?,
        availableUpgradeVersions:
            (json_['availableUpgradeVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        backupRetentionPeriodDays:
            json_['backupRetentionPeriodDays'] as core.int?,
        characterSet: json_['characterSet'] as core.String?,
        computeCount: (json_['computeCount'] as core.num?)?.toDouble(),
        connectionStrings: json_.containsKey('connectionStrings')
            ? AutonomousDatabaseConnectionStrings.fromJson(
                json_['connectionStrings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        connectionUrls: json_.containsKey('connectionUrls')
            ? AutonomousDatabaseConnectionUrls.fromJson(
                json_['connectionUrls'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        cpuCoreCount: json_['cpuCoreCount'] as core.int?,
        customerContacts: (json_['customerContacts'] as core.List?)
            ?.map(
              (value) => CustomerContact.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataGuardRoleChangedTime:
            json_['dataGuardRoleChangedTime'] as core.String?,
        dataSafeState: json_['dataSafeState'] as core.String?,
        dataStorageSizeGb: json_['dataStorageSizeGb'] as core.int?,
        dataStorageSizeTb: json_['dataStorageSizeTb'] as core.int?,
        databaseManagementState:
            json_['databaseManagementState'] as core.String?,
        dbEdition: json_['dbEdition'] as core.String?,
        dbVersion: json_['dbVersion'] as core.String?,
        dbWorkload: json_['dbWorkload'] as core.String?,
        disasterRecoveryRoleChangedTime:
            json_['disasterRecoveryRoleChangedTime'] as core.String?,
        encryptionKey: json_.containsKey('encryptionKey')
            ? EncryptionKey.fromJson(
                json_['encryptionKey'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        encryptionKeyHistoryEntries:
            (json_['encryptionKeyHistoryEntries'] as core.List?)
                ?.map(
                  (value) => EncryptionKeyHistoryEntry.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        failedDataRecoveryDuration:
            json_['failedDataRecoveryDuration'] as core.String?,
        isAutoScalingEnabled: json_['isAutoScalingEnabled'] as core.bool?,
        isLocalDataGuardEnabled: json_['isLocalDataGuardEnabled'] as core.bool?,
        isStorageAutoScalingEnabled:
            json_['isStorageAutoScalingEnabled'] as core.bool?,
        licenseType: json_['licenseType'] as core.String?,
        lifecycleDetails: json_['lifecycleDetails'] as core.String?,
        localAdgAutoFailoverMaxDataLossLimit:
            json_['localAdgAutoFailoverMaxDataLossLimit'] as core.int?,
        localAdgAutoFailoverMaxDataLossLimitDuration:
            json_['localAdgAutoFailoverMaxDataLossLimitDuration'] as core.int?,
        localDataGuardEnabled: json_['localDataGuardEnabled'] as core.bool?,
        localDisasterRecoveryType:
            json_['localDisasterRecoveryType'] as core.String?,
        localStandbyDb: json_.containsKey('localStandbyDb')
            ? AutonomousDatabaseStandbySummary.fromJson(
                json_['localStandbyDb'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        maintenanceBeginTime: json_['maintenanceBeginTime'] as core.String?,
        maintenanceEndTime: json_['maintenanceEndTime'] as core.String?,
        maintenanceScheduleType:
            json_['maintenanceScheduleType'] as core.String?,
        memoryPerOracleComputeUnitGbs:
            json_['memoryPerOracleComputeUnitGbs'] as core.int?,
        memoryTableGbs: json_['memoryTableGbs'] as core.int?,
        mtlsConnectionRequired: json_['mtlsConnectionRequired'] as core.bool?,
        nCharacterSet: json_['nCharacterSet'] as core.String?,
        nextLongTermBackupTime: json_['nextLongTermBackupTime'] as core.String?,
        ociUrl: json_['ociUrl'] as core.String?,
        ocid: json_['ocid'] as core.String?,
        openMode: json_['openMode'] as core.String?,
        operationsInsightsState:
            json_['operationsInsightsState'] as core.String?,
        peerDbIds: (json_['peerDbIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        permissionLevel: json_['permissionLevel'] as core.String?,
        privateEndpoint: json_['privateEndpoint'] as core.String?,
        privateEndpointIp: json_['privateEndpointIp'] as core.String?,
        privateEndpointLabel: json_['privateEndpointLabel'] as core.String?,
        refreshableClone: json_['refreshableClone'] as core.bool?,
        refreshableMode: json_['refreshableMode'] as core.String?,
        refreshableState: json_['refreshableState'] as core.String?,
        role: json_['role'] as core.String?,
        scheduledOperationDetails:
            (json_['scheduledOperationDetails'] as core.List?)
                ?.map(
                  (value) => ScheduledOperationDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        secretId: json_['secretId'] as core.String?,
        serviceAgentEmail: json_['serviceAgentEmail'] as core.String?,
        sqlWebDeveloperUrl: json_['sqlWebDeveloperUrl'] as core.String?,
        state: json_['state'] as core.String?,
        supportedCloneRegions: (json_['supportedCloneRegions'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        totalAutoBackupStorageSizeGbs:
            (json_['totalAutoBackupStorageSizeGbs'] as core.num?)?.toDouble(),
        usedDataStorageSizeTbs: json_['usedDataStorageSizeTbs'] as core.int?,
        vaultId: json_['vaultId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actualUsedDataStorageSizeTb = this.actualUsedDataStorageSizeTb;
    final allocatedStorageSizeTb = this.allocatedStorageSizeTb;
    final allowlistedIps = this.allowlistedIps;
    final apexDetails = this.apexDetails;
    final arePrimaryAllowlistedIpsUsed = this.arePrimaryAllowlistedIpsUsed;
    final autonomousContainerDatabaseId = this.autonomousContainerDatabaseId;
    final availableUpgradeVersions = this.availableUpgradeVersions;
    final backupRetentionPeriodDays = this.backupRetentionPeriodDays;
    final characterSet = this.characterSet;
    final computeCount = this.computeCount;
    final connectionStrings = this.connectionStrings;
    final connectionUrls = this.connectionUrls;
    final cpuCoreCount = this.cpuCoreCount;
    final customerContacts = this.customerContacts;
    final dataGuardRoleChangedTime = this.dataGuardRoleChangedTime;
    final dataSafeState = this.dataSafeState;
    final dataStorageSizeGb = this.dataStorageSizeGb;
    final dataStorageSizeTb = this.dataStorageSizeTb;
    final databaseManagementState = this.databaseManagementState;
    final dbEdition = this.dbEdition;
    final dbVersion = this.dbVersion;
    final dbWorkload = this.dbWorkload;
    final disasterRecoveryRoleChangedTime =
        this.disasterRecoveryRoleChangedTime;
    final encryptionKey = this.encryptionKey;
    final encryptionKeyHistoryEntries = this.encryptionKeyHistoryEntries;
    final failedDataRecoveryDuration = this.failedDataRecoveryDuration;
    final isAutoScalingEnabled = this.isAutoScalingEnabled;
    final isLocalDataGuardEnabled = this.isLocalDataGuardEnabled;
    final isStorageAutoScalingEnabled = this.isStorageAutoScalingEnabled;
    final licenseType = this.licenseType;
    final lifecycleDetails = this.lifecycleDetails;
    final localAdgAutoFailoverMaxDataLossLimit =
        this.localAdgAutoFailoverMaxDataLossLimit;
    final localAdgAutoFailoverMaxDataLossLimitDuration =
        this.localAdgAutoFailoverMaxDataLossLimitDuration;
    final localDataGuardEnabled = this.localDataGuardEnabled;
    final localDisasterRecoveryType = this.localDisasterRecoveryType;
    final localStandbyDb = this.localStandbyDb;
    final maintenanceBeginTime = this.maintenanceBeginTime;
    final maintenanceEndTime = this.maintenanceEndTime;
    final maintenanceScheduleType = this.maintenanceScheduleType;
    final memoryPerOracleComputeUnitGbs = this.memoryPerOracleComputeUnitGbs;
    final memoryTableGbs = this.memoryTableGbs;
    final mtlsConnectionRequired = this.mtlsConnectionRequired;
    final nCharacterSet = this.nCharacterSet;
    final nextLongTermBackupTime = this.nextLongTermBackupTime;
    final ociUrl = this.ociUrl;
    final ocid = this.ocid;
    final openMode = this.openMode;
    final operationsInsightsState = this.operationsInsightsState;
    final peerDbIds = this.peerDbIds;
    final permissionLevel = this.permissionLevel;
    final privateEndpoint = this.privateEndpoint;
    final privateEndpointIp = this.privateEndpointIp;
    final privateEndpointLabel = this.privateEndpointLabel;
    final refreshableClone = this.refreshableClone;
    final refreshableMode = this.refreshableMode;
    final refreshableState = this.refreshableState;
    final role = this.role;
    final scheduledOperationDetails = this.scheduledOperationDetails;
    final secretId = this.secretId;
    final serviceAgentEmail = this.serviceAgentEmail;
    final sqlWebDeveloperUrl = this.sqlWebDeveloperUrl;
    final state = this.state;
    final supportedCloneRegions = this.supportedCloneRegions;
    final totalAutoBackupStorageSizeGbs = this.totalAutoBackupStorageSizeGbs;
    final usedDataStorageSizeTbs = this.usedDataStorageSizeTbs;
    final vaultId = this.vaultId;
    return {
      'actualUsedDataStorageSizeTb': ?actualUsedDataStorageSizeTb,
      'allocatedStorageSizeTb': ?allocatedStorageSizeTb,
      'allowlistedIps': ?allowlistedIps,
      'apexDetails': ?apexDetails,
      'arePrimaryAllowlistedIpsUsed': ?arePrimaryAllowlistedIpsUsed,
      'autonomousContainerDatabaseId': ?autonomousContainerDatabaseId,
      'availableUpgradeVersions': ?availableUpgradeVersions,
      'backupRetentionPeriodDays': ?backupRetentionPeriodDays,
      'characterSet': ?characterSet,
      'computeCount': ?computeCount,
      'connectionStrings': ?connectionStrings,
      'connectionUrls': ?connectionUrls,
      'cpuCoreCount': ?cpuCoreCount,
      'customerContacts': ?customerContacts,
      'dataGuardRoleChangedTime': ?dataGuardRoleChangedTime,
      'dataSafeState': ?dataSafeState,
      'dataStorageSizeGb': ?dataStorageSizeGb,
      'dataStorageSizeTb': ?dataStorageSizeTb,
      'databaseManagementState': ?databaseManagementState,
      'dbEdition': ?dbEdition,
      'dbVersion': ?dbVersion,
      'dbWorkload': ?dbWorkload,
      'disasterRecoveryRoleChangedTime': ?disasterRecoveryRoleChangedTime,
      'encryptionKey': ?encryptionKey,
      'encryptionKeyHistoryEntries': ?encryptionKeyHistoryEntries,
      'failedDataRecoveryDuration': ?failedDataRecoveryDuration,
      'isAutoScalingEnabled': ?isAutoScalingEnabled,
      'isLocalDataGuardEnabled': ?isLocalDataGuardEnabled,
      'isStorageAutoScalingEnabled': ?isStorageAutoScalingEnabled,
      'licenseType': ?licenseType,
      'lifecycleDetails': ?lifecycleDetails,
      'localAdgAutoFailoverMaxDataLossLimit':
          ?localAdgAutoFailoverMaxDataLossLimit,
      'localAdgAutoFailoverMaxDataLossLimitDuration':
          ?localAdgAutoFailoverMaxDataLossLimitDuration,
      'localDataGuardEnabled': ?localDataGuardEnabled,
      'localDisasterRecoveryType': ?localDisasterRecoveryType,
      'localStandbyDb': ?localStandbyDb,
      'maintenanceBeginTime': ?maintenanceBeginTime,
      'maintenanceEndTime': ?maintenanceEndTime,
      'maintenanceScheduleType': ?maintenanceScheduleType,
      'memoryPerOracleComputeUnitGbs': ?memoryPerOracleComputeUnitGbs,
      'memoryTableGbs': ?memoryTableGbs,
      'mtlsConnectionRequired': ?mtlsConnectionRequired,
      'nCharacterSet': ?nCharacterSet,
      'nextLongTermBackupTime': ?nextLongTermBackupTime,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'openMode': ?openMode,
      'operationsInsightsState': ?operationsInsightsState,
      'peerDbIds': ?peerDbIds,
      'permissionLevel': ?permissionLevel,
      'privateEndpoint': ?privateEndpoint,
      'privateEndpointIp': ?privateEndpointIp,
      'privateEndpointLabel': ?privateEndpointLabel,
      'refreshableClone': ?refreshableClone,
      'refreshableMode': ?refreshableMode,
      'refreshableState': ?refreshableState,
      'role': ?role,
      'scheduledOperationDetails': ?scheduledOperationDetails,
      'secretId': ?secretId,
      'serviceAgentEmail': ?serviceAgentEmail,
      'sqlWebDeveloperUrl': ?sqlWebDeveloperUrl,
      'state': ?state,
      'supportedCloneRegions': ?supportedCloneRegions,
      'totalAutoBackupStorageSizeGbs': ?totalAutoBackupStorageSizeGbs,
      'usedDataStorageSizeTbs': ?usedDataStorageSizeTbs,
      'vaultId': ?vaultId,
    };
  }
}

/// An Autonomous Database refreshable clone
class AutonomousDatabaseRefreshableClone {
  /// The GCP resource name of the Autonomous Database.
  ///
  /// Output only.
  core.String? name;

  /// The Google Cloud region where the refreshable clone exists.
  ///
  /// Output only.
  core.String? region;

  AutonomousDatabaseRefreshableClone({this.name, this.region});

  AutonomousDatabaseRefreshableClone.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        region: json_['region'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final region = this.region;
    return {'name': ?name, 'region': ?region};
  }
}

/// Response message for getting the Autonomous Database refreshable clones.
class AutonomousDatabaseRefreshableClones {
  /// The list of Autonomous Database refreshable clones.
  core.List<AutonomousDatabaseRefreshableClone>?
  autonomousDatabaseRefreshableClones;

  AutonomousDatabaseRefreshableClones({
    this.autonomousDatabaseRefreshableClones,
  });

  AutonomousDatabaseRefreshableClones.fromJson(core.Map json_)
    : this(
        autonomousDatabaseRefreshableClones:
            (json_['autonomousDatabaseRefreshableClones'] as core.List?)
                ?.map(
                  (value) => AutonomousDatabaseRefreshableClone.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autonomousDatabaseRefreshableClones =
        this.autonomousDatabaseRefreshableClones;
    return {
      'autonomousDatabaseRefreshableClones':
          ?autonomousDatabaseRefreshableClones,
    };
  }
}

/// Autonomous Data Guard standby database details.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary
class AutonomousDatabaseStandbySummary {
  /// The date and time the Autonomous Data Guard role was switched for the
  /// standby Autonomous Database.
  ///
  /// Output only.
  core.String? dataGuardRoleChangedTime;

  /// The date and time the Disaster Recovery role was switched for the standby
  /// Autonomous Database.
  ///
  /// Output only.
  core.String? disasterRecoveryRoleChangedTime;

  /// The amount of time, in seconds, that the data of the standby database lags
  /// in comparison to the data of the primary database.
  ///
  /// Output only.
  core.String? lagTimeDuration;

  /// The additional details about the current lifecycle state of the Autonomous
  /// Database.
  ///
  /// Output only.
  core.String? lifecycleDetails;

  /// The current lifecycle state of the Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : Indicates that the Autonomous Database is in
  /// provisioning state.
  /// - "AVAILABLE" : Indicates that the Autonomous Database is in available
  /// state.
  /// - "STOPPING" : Indicates that the Autonomous Database is in stopping
  /// state.
  /// - "STOPPED" : Indicates that the Autonomous Database is in stopped state.
  /// - "STARTING" : Indicates that the Autonomous Database is in starting
  /// state.
  /// - "TERMINATING" : Indicates that the Autonomous Database is in terminating
  /// state.
  /// - "TERMINATED" : Indicates that the Autonomous Database is in terminated
  /// state.
  /// - "UNAVAILABLE" : Indicates that the Autonomous Database is in unavailable
  /// state.
  /// - "RESTORE_IN_PROGRESS" : Indicates that the Autonomous Database restore
  /// is in progress.
  /// - "RESTORE_FAILED" : Indicates that the Autonomous Database failed to
  /// restore.
  /// - "BACKUP_IN_PROGRESS" : Indicates that the Autonomous Database backup is
  /// in progress.
  /// - "SCALE_IN_PROGRESS" : Indicates that the Autonomous Database scale is in
  /// progress.
  /// - "AVAILABLE_NEEDS_ATTENTION" : Indicates that the Autonomous Database is
  /// available but needs attention state.
  /// - "UPDATING" : Indicates that the Autonomous Database is in updating
  /// state.
  /// - "MAINTENANCE_IN_PROGRESS" : Indicates that the Autonomous Database's
  /// maintenance is in progress state.
  /// - "RESTARTING" : Indicates that the Autonomous Database is in restarting
  /// state.
  /// - "RECREATING" : Indicates that the Autonomous Database is in recreating
  /// state.
  /// - "ROLE_CHANGE_IN_PROGRESS" : Indicates that the Autonomous Database's
  /// role change is in progress state.
  /// - "UPGRADING" : Indicates that the Autonomous Database is in upgrading
  /// state.
  /// - "INACCESSIBLE" : Indicates that the Autonomous Database is in
  /// inaccessible state.
  /// - "STANDBY" : Indicates that the Autonomous Database is in standby state.
  core.String? state;

  AutonomousDatabaseStandbySummary({
    this.dataGuardRoleChangedTime,
    this.disasterRecoveryRoleChangedTime,
    this.lagTimeDuration,
    this.lifecycleDetails,
    this.state,
  });

  AutonomousDatabaseStandbySummary.fromJson(core.Map json_)
    : this(
        dataGuardRoleChangedTime:
            json_['dataGuardRoleChangedTime'] as core.String?,
        disasterRecoveryRoleChangedTime:
            json_['disasterRecoveryRoleChangedTime'] as core.String?,
        lagTimeDuration: json_['lagTimeDuration'] as core.String?,
        lifecycleDetails: json_['lifecycleDetails'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataGuardRoleChangedTime = this.dataGuardRoleChangedTime;
    final disasterRecoveryRoleChangedTime =
        this.disasterRecoveryRoleChangedTime;
    final lagTimeDuration = this.lagTimeDuration;
    final lifecycleDetails = this.lifecycleDetails;
    final state = this.state;
    return {
      'dataGuardRoleChangedTime': ?dataGuardRoleChangedTime,
      'disasterRecoveryRoleChangedTime': ?disasterRecoveryRoleChangedTime,
      'lagTimeDuration': ?lagTimeDuration,
      'lifecycleDetails': ?lifecycleDetails,
      'state': ?state,
    };
  }
}

/// Details of the Autonomous Database version.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDbVersionSummary/
class AutonomousDbVersion {
  /// The Autonomous Database workload type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DB_WORKLOAD_UNSPECIFIED" : Default unspecified value.
  /// - "OLTP" : Autonomous Transaction Processing database.
  /// - "DW" : Autonomous Data Warehouse database.
  /// - "AJD" : Autonomous JSON Database.
  /// - "APEX" : Autonomous Database with the Oracle APEX Application
  /// Development workload type.
  core.String? dbWorkload;

  /// Identifier.
  ///
  /// The name of the Autonomous Database Version resource with the format:
  /// projects/{project}/locations/{region}/autonomousDbVersions/{autonomous_db_version}
  core.String? name;

  /// An Oracle Database version for Autonomous Database.
  ///
  /// Output only.
  core.String? version;

  /// A URL that points to a detailed description of the Autonomous Database
  /// version.
  ///
  /// Output only.
  core.String? workloadUri;

  AutonomousDbVersion({
    this.dbWorkload,
    this.name,
    this.version,
    this.workloadUri,
  });

  AutonomousDbVersion.fromJson(core.Map json_)
    : this(
        dbWorkload: json_['dbWorkload'] as core.String?,
        name: json_['name'] as core.String?,
        version: json_['version'] as core.String?,
        workloadUri: json_['workloadUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dbWorkload = this.dbWorkload;
    final name = this.name;
    final version = this.version;
    final workloadUri = this.workloadUri;
    return {
      'dbWorkload': ?dbWorkload,
      'name': ?name,
      'version': ?version,
      'workloadUri': ?workloadUri,
    };
  }
}

/// The Azure Data Lake Storage Iceberg storage.
class AzureDataLakeStorageIcebergStorage {
  /// The account key of Azure Data Lake Storage.
  ///
  /// Optional.
  core.String? accountKeySecret;

  /// The account of Azure Data Lake Storage.
  ///
  /// Required.
  core.String? azureAccount;

  /// The container of Azure Data Lake Storage.
  ///
  /// Required.
  core.String? container;

  /// The endpoint of Azure Data Lake Storage.
  ///
  /// Optional.
  core.String? endpoint;

  AzureDataLakeStorageIcebergStorage({
    this.accountKeySecret,
    this.azureAccount,
    this.container,
    this.endpoint,
  });

  AzureDataLakeStorageIcebergStorage.fromJson(core.Map json_)
    : this(
        accountKeySecret: json_['accountKeySecret'] as core.String?,
        azureAccount: json_['azureAccount'] as core.String?,
        container: json_['container'] as core.String?,
        endpoint: json_['endpoint'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountKeySecret = this.accountKeySecret;
    final azureAccount = this.azureAccount;
    final container = this.container;
    final endpoint = this.endpoint;
    return {
      'accountKeySecret': ?accountKeySecret,
      'azureAccount': ?azureAccount,
      'container': ?container,
      'endpoint': ?endpoint,
    };
  }
}

/// The details of the database backup destination.
class BackupDestinationDetails {
  /// The type of the database backup destination.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BACKUP_DESTINATION_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "NFS" : Backup destination type is NFS.
  /// - "RECOVERY_APPLIANCE" : Backup destination type is Recovery Appliance.
  /// - "OBJECT_STORE" : Backup destination type is Object Store.
  /// - "LOCAL" : Backup destination type is Local.
  /// - "DBRS" : Backup destination type is DBRS.
  core.String? type;

  BackupDestinationDetails({this.type});

  BackupDestinationDetails.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Details of the OCI Cloud Account.
class CloudAccountDetails {
  /// URL to create a new account and link.
  ///
  /// Output only.
  core.String? accountCreationUri;

  /// OCI account name.
  ///
  /// Output only.
  core.String? cloudAccount;

  /// OCI account home region.
  ///
  /// Output only.
  core.String? cloudAccountHomeRegion;

  /// URL to link an existing account.
  ///
  /// Output only.
  core.String? linkExistingAccountUri;

  CloudAccountDetails({
    this.accountCreationUri,
    this.cloudAccount,
    this.cloudAccountHomeRegion,
    this.linkExistingAccountUri,
  });

  CloudAccountDetails.fromJson(core.Map json_)
    : this(
        accountCreationUri: json_['accountCreationUri'] as core.String?,
        cloudAccount: json_['cloudAccount'] as core.String?,
        cloudAccountHomeRegion: json_['cloudAccountHomeRegion'] as core.String?,
        linkExistingAccountUri: json_['linkExistingAccountUri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accountCreationUri = this.accountCreationUri;
    final cloudAccount = this.cloudAccount;
    final cloudAccountHomeRegion = this.cloudAccountHomeRegion;
    final linkExistingAccountUri = this.linkExistingAccountUri;
    return {
      'accountCreationUri': ?accountCreationUri,
      'cloudAccount': ?cloudAccount,
      'cloudAccountHomeRegion': ?cloudAccountHomeRegion,
      'linkExistingAccountUri': ?linkExistingAccountUri,
    };
  }
}

/// Represents CloudExadataInfrastructure resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/CloudExadataInfrastructure/
class CloudExadataInfrastructure {
  /// The date and time that the Exadata Infrastructure was created.
  ///
  /// Output only.
  core.String? createTime;

  /// User friendly name for this resource.
  ///
  /// Optional.
  core.String? displayName;

  /// Entitlement ID of the private offer against which this infrastructure
  /// resource is provisioned.
  ///
  /// Output only.
  core.String? entitlementId;

  /// The GCP Oracle zone where Oracle Exadata Infrastructure is hosted.
  ///
  /// Example: us-east4-b-r2. If not specified, the system will pick a zone
  /// based on availability.
  ///
  /// Optional.
  core.String? gcpOracleZone;

  /// Labels or tags associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the Exadata Infrastructure resource with the format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}
  core.String? name;

  /// Various properties of the infra.
  ///
  /// Optional.
  CloudExadataInfrastructureProperties? properties;

  CloudExadataInfrastructure({
    this.createTime,
    this.displayName,
    this.entitlementId,
    this.gcpOracleZone,
    this.labels,
    this.name,
    this.properties,
  });

  CloudExadataInfrastructure.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        properties: json_.containsKey('properties')
            ? CloudExadataInfrastructureProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final entitlementId = this.entitlementId;
    final gcpOracleZone = this.gcpOracleZone;
    final labels = this.labels;
    final name = this.name;
    final properties = this.properties;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'name': ?name,
      'properties': ?properties,
    };
  }
}

/// Various properties of Exadata Infrastructure.
class CloudExadataInfrastructureProperties {
  /// The requested number of additional storage servers activated for the
  /// Exadata Infrastructure.
  ///
  /// Output only.
  core.int? activatedStorageCount;

  /// The requested number of additional storage servers for the Exadata
  /// Infrastructure.
  ///
  /// Output only.
  core.int? additionalStorageCount;

  /// The available storage can be allocated to the Exadata Infrastructure
  /// resource, in gigabytes (GB).
  ///
  /// Output only.
  core.int? availableStorageSizeGb;

  /// The number of compute servers for the Exadata Infrastructure.
  ///
  /// Optional.
  core.int? computeCount;

  /// The compute model of the Exadata Infrastructure.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPUTE_MODEL_UNSPECIFIED" : Unspecified compute model.
  /// - "COMPUTE_MODEL_ECPU" : Abstract measure of compute resources. ECPUs are
  /// based on the number of cores elastically allocated from a pool of compute
  /// and storage servers.
  /// - "COMPUTE_MODEL_OCPU" : Physical measure of compute resources. OCPUs are
  /// based on the physical core of a processor.
  core.String? computeModel;

  /// The number of enabled CPU cores.
  ///
  /// Output only.
  core.int? cpuCount;

  /// The list of customer contacts.
  ///
  /// Optional.
  core.List<CustomerContact>? customerContacts;

  /// Size, in terabytes, of the DATA disk group.
  ///
  /// Output only.
  core.double? dataStorageSizeTb;

  /// The database server type of the Exadata Infrastructure.
  ///
  /// Optional.
  core.String? databaseServerType;

  /// The local node storage allocated in GBs.
  ///
  /// Output only.
  core.int? dbNodeStorageSizeGb;

  /// The software version of the database servers (dom0) in the Exadata
  /// Infrastructure.
  ///
  /// Output only.
  core.String? dbServerVersion;

  /// The Exascale configuration for the Exadata Infrastructure.
  ///
  /// Output only.
  ExascaleConfig? exascaleConfig;

  /// Maintenance window for repair.
  ///
  /// Optional.
  MaintenanceWindow? maintenanceWindow;

  /// The total number of CPU cores available.
  ///
  /// Output only.
  core.int? maxCpuCount;

  /// The total available DATA disk group size.
  ///
  /// Output only.
  core.double? maxDataStorageTb;

  /// The total local node storage available in GBs.
  ///
  /// Output only.
  core.int? maxDbNodeStorageSizeGb;

  /// The total memory available in GBs.
  ///
  /// Output only.
  core.int? maxMemoryGb;

  /// The memory allocated in GBs.
  ///
  /// Output only.
  core.int? memorySizeGb;

  /// The monthly software version of the database servers (dom0) in the Exadata
  /// Infrastructure.
  ///
  /// Example: 20.1.15
  ///
  /// Output only.
  core.String? monthlyDbServerVersion;

  /// The monthly software version of the storage servers (cells) in the Exadata
  /// Infrastructure.
  ///
  /// Example: 20.1.15
  ///
  /// Output only.
  core.String? monthlyStorageServerVersion;

  /// The OCID of the next maintenance run.
  ///
  /// Output only.
  core.String? nextMaintenanceRunId;

  /// The time when the next maintenance run will occur.
  ///
  /// Output only.
  core.String? nextMaintenanceRunTime;

  /// The time when the next security maintenance run will occur.
  ///
  /// Output only.
  core.String? nextSecurityMaintenanceRunTime;

  /// Deep link to the OCI console to view this resource.
  ///
  /// Output only.
  core.String? ociUrl;

  /// OCID of created infra.
  ///
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  ///
  /// Output only.
  core.String? ocid;

  /// The shape of the Exadata Infrastructure.
  ///
  /// The shape determines the amount of CPU, storage, and memory resources
  /// allocated to the instance.
  ///
  /// Required.
  core.String? shape;

  /// The current lifecycle state of the Exadata Infrastructure.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : The Exadata Infrastructure is being provisioned.
  /// - "AVAILABLE" : The Exadata Infrastructure is available for use.
  /// - "UPDATING" : The Exadata Infrastructure is being updated.
  /// - "TERMINATING" : The Exadata Infrastructure is being terminated.
  /// - "TERMINATED" : The Exadata Infrastructure is terminated.
  /// - "FAILED" : The Exadata Infrastructure is in failed state.
  /// - "MAINTENANCE_IN_PROGRESS" : The Exadata Infrastructure is in
  /// maintenance.
  core.String? state;

  /// The number of Cloud Exadata storage servers for the Exadata
  /// Infrastructure.
  ///
  /// Optional.
  core.int? storageCount;

  /// The storage server type of the Exadata Infrastructure.
  ///
  /// Optional.
  core.String? storageServerType;

  /// The software version of the storage servers (cells) in the Exadata
  /// Infrastructure.
  ///
  /// Output only.
  core.String? storageServerVersion;

  /// The total storage allocated to the Exadata Infrastructure resource, in
  /// gigabytes (GB).
  ///
  /// Optional.
  core.int? totalStorageSizeGb;

  CloudExadataInfrastructureProperties({
    this.activatedStorageCount,
    this.additionalStorageCount,
    this.availableStorageSizeGb,
    this.computeCount,
    this.computeModel,
    this.cpuCount,
    this.customerContacts,
    this.dataStorageSizeTb,
    this.databaseServerType,
    this.dbNodeStorageSizeGb,
    this.dbServerVersion,
    this.exascaleConfig,
    this.maintenanceWindow,
    this.maxCpuCount,
    this.maxDataStorageTb,
    this.maxDbNodeStorageSizeGb,
    this.maxMemoryGb,
    this.memorySizeGb,
    this.monthlyDbServerVersion,
    this.monthlyStorageServerVersion,
    this.nextMaintenanceRunId,
    this.nextMaintenanceRunTime,
    this.nextSecurityMaintenanceRunTime,
    this.ociUrl,
    this.ocid,
    this.shape,
    this.state,
    this.storageCount,
    this.storageServerType,
    this.storageServerVersion,
    this.totalStorageSizeGb,
  });

  CloudExadataInfrastructureProperties.fromJson(core.Map json_)
    : this(
        activatedStorageCount: json_['activatedStorageCount'] as core.int?,
        additionalStorageCount: json_['additionalStorageCount'] as core.int?,
        availableStorageSizeGb: json_['availableStorageSizeGb'] as core.int?,
        computeCount: json_['computeCount'] as core.int?,
        computeModel: json_['computeModel'] as core.String?,
        cpuCount: json_['cpuCount'] as core.int?,
        customerContacts: (json_['customerContacts'] as core.List?)
            ?.map(
              (value) => CustomerContact.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        dataStorageSizeTb: (json_['dataStorageSizeTb'] as core.num?)
            ?.toDouble(),
        databaseServerType: json_['databaseServerType'] as core.String?,
        dbNodeStorageSizeGb: json_['dbNodeStorageSizeGb'] as core.int?,
        dbServerVersion: json_['dbServerVersion'] as core.String?,
        exascaleConfig: json_.containsKey('exascaleConfig')
            ? ExascaleConfig.fromJson(
                json_['exascaleConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        maintenanceWindow: json_.containsKey('maintenanceWindow')
            ? MaintenanceWindow.fromJson(
                json_['maintenanceWindow']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        maxCpuCount: json_['maxCpuCount'] as core.int?,
        maxDataStorageTb: (json_['maxDataStorageTb'] as core.num?)?.toDouble(),
        maxDbNodeStorageSizeGb: json_['maxDbNodeStorageSizeGb'] as core.int?,
        maxMemoryGb: json_['maxMemoryGb'] as core.int?,
        memorySizeGb: json_['memorySizeGb'] as core.int?,
        monthlyDbServerVersion: json_['monthlyDbServerVersion'] as core.String?,
        monthlyStorageServerVersion:
            json_['monthlyStorageServerVersion'] as core.String?,
        nextMaintenanceRunId: json_['nextMaintenanceRunId'] as core.String?,
        nextMaintenanceRunTime: json_['nextMaintenanceRunTime'] as core.String?,
        nextSecurityMaintenanceRunTime:
            json_['nextSecurityMaintenanceRunTime'] as core.String?,
        ociUrl: json_['ociUrl'] as core.String?,
        ocid: json_['ocid'] as core.String?,
        shape: json_['shape'] as core.String?,
        state: json_['state'] as core.String?,
        storageCount: json_['storageCount'] as core.int?,
        storageServerType: json_['storageServerType'] as core.String?,
        storageServerVersion: json_['storageServerVersion'] as core.String?,
        totalStorageSizeGb: json_['totalStorageSizeGb'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activatedStorageCount = this.activatedStorageCount;
    final additionalStorageCount = this.additionalStorageCount;
    final availableStorageSizeGb = this.availableStorageSizeGb;
    final computeCount = this.computeCount;
    final computeModel = this.computeModel;
    final cpuCount = this.cpuCount;
    final customerContacts = this.customerContacts;
    final dataStorageSizeTb = this.dataStorageSizeTb;
    final databaseServerType = this.databaseServerType;
    final dbNodeStorageSizeGb = this.dbNodeStorageSizeGb;
    final dbServerVersion = this.dbServerVersion;
    final exascaleConfig = this.exascaleConfig;
    final maintenanceWindow = this.maintenanceWindow;
    final maxCpuCount = this.maxCpuCount;
    final maxDataStorageTb = this.maxDataStorageTb;
    final maxDbNodeStorageSizeGb = this.maxDbNodeStorageSizeGb;
    final maxMemoryGb = this.maxMemoryGb;
    final memorySizeGb = this.memorySizeGb;
    final monthlyDbServerVersion = this.monthlyDbServerVersion;
    final monthlyStorageServerVersion = this.monthlyStorageServerVersion;
    final nextMaintenanceRunId = this.nextMaintenanceRunId;
    final nextMaintenanceRunTime = this.nextMaintenanceRunTime;
    final nextSecurityMaintenanceRunTime = this.nextSecurityMaintenanceRunTime;
    final ociUrl = this.ociUrl;
    final ocid = this.ocid;
    final shape = this.shape;
    final state = this.state;
    final storageCount = this.storageCount;
    final storageServerType = this.storageServerType;
    final storageServerVersion = this.storageServerVersion;
    final totalStorageSizeGb = this.totalStorageSizeGb;
    return {
      'activatedStorageCount': ?activatedStorageCount,
      'additionalStorageCount': ?additionalStorageCount,
      'availableStorageSizeGb': ?availableStorageSizeGb,
      'computeCount': ?computeCount,
      'computeModel': ?computeModel,
      'cpuCount': ?cpuCount,
      'customerContacts': ?customerContacts,
      'dataStorageSizeTb': ?dataStorageSizeTb,
      'databaseServerType': ?databaseServerType,
      'dbNodeStorageSizeGb': ?dbNodeStorageSizeGb,
      'dbServerVersion': ?dbServerVersion,
      'exascaleConfig': ?exascaleConfig,
      'maintenanceWindow': ?maintenanceWindow,
      'maxCpuCount': ?maxCpuCount,
      'maxDataStorageTb': ?maxDataStorageTb,
      'maxDbNodeStorageSizeGb': ?maxDbNodeStorageSizeGb,
      'maxMemoryGb': ?maxMemoryGb,
      'memorySizeGb': ?memorySizeGb,
      'monthlyDbServerVersion': ?monthlyDbServerVersion,
      'monthlyStorageServerVersion': ?monthlyStorageServerVersion,
      'nextMaintenanceRunId': ?nextMaintenanceRunId,
      'nextMaintenanceRunTime': ?nextMaintenanceRunTime,
      'nextSecurityMaintenanceRunTime': ?nextSecurityMaintenanceRunTime,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'shape': ?shape,
      'state': ?state,
      'storageCount': ?storageCount,
      'storageServerType': ?storageServerType,
      'storageServerVersion': ?storageServerVersion,
      'totalStorageSizeGb': ?totalStorageSizeGb,
    };
  }
}

/// Details of the Cloud VM Cluster resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/CloudVmCluster/
class CloudVmCluster {
  /// The name of the backup OdbSubnet associated with the VM Cluster.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  ///
  /// Optional.
  core.String? backupOdbSubnet;

  /// CIDR range of the backup subnet.
  ///
  /// Optional.
  core.String? backupSubnetCidr;

  /// Network settings.
  ///
  /// CIDR to use for cluster IP allocation.
  ///
  /// Optional.
  core.String? cidr;

  /// The date and time that the VM cluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// User friendly name for this resource.
  ///
  /// Optional.
  core.String? displayName;

  /// The name of the Exadata Infrastructure resource on which VM cluster
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  ///
  /// Required.
  core.String? exadataInfrastructure;

  /// The name of ExascaleDbStorageVault associated with the VM Cluster.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  ///
  /// Optional.
  core.String? exascaleDbStorageVault;

  /// The GCP Oracle zone where Oracle CloudVmCluster is hosted.
  ///
  /// This will be the same as the gcp_oracle_zone of the
  /// CloudExadataInfrastructure. Example: us-east4-b-r2.
  ///
  /// Output only.
  core.String? gcpOracleZone;

  /// The identity connector details which will allow OCI to securely access the
  /// resources in the customer project.
  ///
  /// Output only.
  IdentityConnector? identityConnector;

  /// Labels or tags associated with the VM Cluster.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the VM Cluster resource with the format:
  /// projects/{project}/locations/{region}/cloudVmClusters/{cloud_vm_cluster}
  core.String? name;

  /// The name of the VPC network.
  ///
  /// Format: projects/{project}/global/networks/{network}
  ///
  /// Optional.
  core.String? network;

  /// The name of the OdbNetwork associated with the VM Cluster.
  ///
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork
  /// of the odb_subnet and backup_odb_subnet.
  ///
  /// Optional.
  core.String? odbNetwork;

  /// The name of the OdbSubnet associated with the VM Cluster for IP
  /// allocation.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  ///
  /// Optional.
  core.String? odbSubnet;

  /// Various properties of the VM Cluster.
  ///
  /// Optional.
  CloudVmClusterProperties? properties;

  CloudVmCluster({
    this.backupOdbSubnet,
    this.backupSubnetCidr,
    this.cidr,
    this.createTime,
    this.displayName,
    this.exadataInfrastructure,
    this.exascaleDbStorageVault,
    this.gcpOracleZone,
    this.identityConnector,
    this.labels,
    this.name,
    this.network,
    this.odbNetwork,
    this.odbSubnet,
    this.properties,
  });

  CloudVmCluster.fromJson(core.Map json_)
    : this(
        backupOdbSubnet: json_['backupOdbSubnet'] as core.String?,
        backupSubnetCidr: json_['backupSubnetCidr'] as core.String?,
        cidr: json_['cidr'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        exadataInfrastructure: json_['exadataInfrastructure'] as core.String?,
        exascaleDbStorageVault: json_['exascaleDbStorageVault'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        identityConnector: json_.containsKey('identityConnector')
            ? IdentityConnector.fromJson(
                json_['identityConnector']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        odbNetwork: json_['odbNetwork'] as core.String?,
        odbSubnet: json_['odbSubnet'] as core.String?,
        properties: json_.containsKey('properties')
            ? CloudVmClusterProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupOdbSubnet = this.backupOdbSubnet;
    final backupSubnetCidr = this.backupSubnetCidr;
    final cidr = this.cidr;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final exadataInfrastructure = this.exadataInfrastructure;
    final exascaleDbStorageVault = this.exascaleDbStorageVault;
    final gcpOracleZone = this.gcpOracleZone;
    final identityConnector = this.identityConnector;
    final labels = this.labels;
    final name = this.name;
    final network = this.network;
    final odbNetwork = this.odbNetwork;
    final odbSubnet = this.odbSubnet;
    final properties = this.properties;
    return {
      'backupOdbSubnet': ?backupOdbSubnet,
      'backupSubnetCidr': ?backupSubnetCidr,
      'cidr': ?cidr,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'exadataInfrastructure': ?exadataInfrastructure,
      'exascaleDbStorageVault': ?exascaleDbStorageVault,
      'gcpOracleZone': ?gcpOracleZone,
      'identityConnector': ?identityConnector,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'properties': ?properties,
    };
  }
}

/// Various properties and settings associated with Exadata VM cluster.
class CloudVmClusterProperties {
  /// OCI Cluster name.
  ///
  /// Optional.
  core.String? clusterName;

  /// Compartment ID of cluster.
  ///
  /// Output only.
  core.String? compartmentId;

  /// The compute model of the VM Cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "COMPUTE_MODEL_UNSPECIFIED" : Unspecified compute model.
  /// - "COMPUTE_MODEL_ECPU" : Abstract measure of compute resources. ECPUs are
  /// based on the number of cores elastically allocated from a pool of compute
  /// and storage servers.
  /// - "COMPUTE_MODEL_OCPU" : Physical measure of compute resources. OCPUs are
  /// based on the physical core of a processor.
  core.String? computeModel;

  /// Number of enabled CPU cores.
  ///
  /// Required.
  core.int? cpuCoreCount;

  /// The data disk group size to be allocated in TBs.
  ///
  /// Optional.
  core.double? dataStorageSizeTb;

  /// Local storage per VM.
  ///
  /// Optional.
  core.int? dbNodeStorageSizeGb;

  /// OCID of database servers.
  ///
  /// Optional.
  core.List<core.String>? dbServerOcids;

  /// Data collection options for diagnostics.
  ///
  /// Optional.
  DataCollectionOptions? diagnosticsDataCollectionOptions;

  /// The type of redundancy.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DISK_REDUNDANCY_UNSPECIFIED" : Unspecified.
  /// - "HIGH" : High - 3 way mirror.
  /// - "NORMAL" : Normal - 2 way mirror.
  core.String? diskRedundancy;

  /// DNS listener IP.
  ///
  /// Output only.
  core.String? dnsListenerIp;

  /// Parent DNS domain where SCAN DNS and hosts names are qualified.
  ///
  /// ex: ocispdelegated.ocisp10jvnet.oraclevcn.com
  ///
  /// Output only.
  core.String? domain;

  /// Grid Infrastructure Version.
  ///
  /// Optional.
  core.String? giVersion;

  /// host name without domain.
  ///
  /// format: "-" with some suffix. ex: sp2-yi0xq where "sp2" is the
  /// hostname_prefix.
  ///
  /// Output only.
  core.String? hostname;

  /// Prefix for VM cluster host names.
  ///
  /// Optional.
  core.String? hostnamePrefix;

  /// License type of VM Cluster.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LICENSE_TYPE_UNSPECIFIED" : Unspecified
  /// - "LICENSE_INCLUDED" : License included part of offer
  /// - "BRING_YOUR_OWN_LICENSE" : Bring your own license
  core.String? licenseType;

  /// Use local backup.
  ///
  /// Optional.
  core.bool? localBackupEnabled;

  /// Memory allocated in GBs.
  ///
  /// Optional.
  core.int? memorySizeGb;

  /// Number of database servers.
  ///
  /// Optional.
  core.int? nodeCount;

  /// Deep link to the OCI console to view this resource.
  ///
  /// Output only.
  core.String? ociUrl;

  /// Oracle Cloud Infrastructure ID of VM Cluster.
  ///
  /// Output only.
  core.String? ocid;

  /// OCPU count per VM.
  ///
  /// Minimum is 0.1.
  ///
  /// Optional.
  core.double? ocpuCount;

  /// SCAN DNS name.
  ///
  /// ex: sp2-yi0xq-scan.ocispdelegated.ocisp10jvnet.oraclevcn.com
  ///
  /// Output only.
  core.String? scanDns;

  /// OCID of scan DNS record.
  ///
  /// Output only.
  core.String? scanDnsRecordId;

  /// OCIDs of scan IPs.
  ///
  /// Output only.
  core.List<core.String>? scanIpIds;

  /// SCAN listener port - TCP
  ///
  /// Optional.
  core.int? scanListenerPortTcp;

  /// SCAN listener port - TLS
  ///
  /// Optional.
  core.int? scanListenerPortTcpSsl;

  /// Shape of VM Cluster.
  ///
  /// Output only.
  core.String? shape;

  /// Use exadata sparse snapshots.
  ///
  /// Optional.
  core.bool? sparseDiskgroupEnabled;

  /// SSH public keys to be stored with cluster.
  ///
  /// Optional.
  core.List<core.String>? sshPublicKeys;

  /// State of the cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : Indicates that the resource is in provisioning state.
  /// - "AVAILABLE" : Indicates that the resource is in available state.
  /// - "UPDATING" : Indicates that the resource is in updating state.
  /// - "TERMINATING" : Indicates that the resource is in terminating state.
  /// - "TERMINATED" : Indicates that the resource is in terminated state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  /// - "MAINTENANCE_IN_PROGRESS" : Indicates that the resource is in
  /// maintenance in progress state.
  core.String? state;

  /// The storage management type of the VM Cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STORAGE_MANAGEMENT_TYPE_UNSPECIFIED" : Unspecified storage management
  /// type.
  /// - "ASM" : Automatic Storage Management.
  /// - "EXASCALE" : Exascale storage management.
  core.String? storageManagementType;

  /// The storage allocation for the disk group, in gigabytes (GB).
  ///
  /// Output only.
  core.int? storageSizeGb;

  /// Operating system version of the image.
  ///
  /// Optional.
  core.String? systemVersion;

  /// Time zone of VM Cluster to set.
  ///
  /// Defaults to UTC if not specified.
  ///
  /// Optional.
  TimeZone? timeZone;

  /// Specifies whether VM backups are stored on local DB server storage or
  /// Exascale storage.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VM_BACKUP_STORAGE_TYPE_UNSPECIFIED" : Unspecified storage type.
  /// - "VM_BACKUP_STORAGE_TYPE_LOCAL" : Local DB server storage.
  /// - "VM_BACKUP_STORAGE_TYPE_EXASCALE" : Exascale storage.
  core.String? vmBackupStorageType;

  /// Specifies whether VM file system storage / VM images are stored on local
  /// DB server storage or Exascale storage.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VM_FILE_SYSTEM_STORAGE_TYPE_UNSPECIFIED" : Unspecified storage type.
  /// - "VM_FILE_SYSTEM_STORAGE_TYPE_LOCAL" : Local DB server storage.
  /// - "VM_FILE_SYSTEM_STORAGE_TYPE_EXASCALE" : Exascale storage.
  core.String? vmFileSystemStorageType;

  CloudVmClusterProperties({
    this.clusterName,
    this.compartmentId,
    this.computeModel,
    this.cpuCoreCount,
    this.dataStorageSizeTb,
    this.dbNodeStorageSizeGb,
    this.dbServerOcids,
    this.diagnosticsDataCollectionOptions,
    this.diskRedundancy,
    this.dnsListenerIp,
    this.domain,
    this.giVersion,
    this.hostname,
    this.hostnamePrefix,
    this.licenseType,
    this.localBackupEnabled,
    this.memorySizeGb,
    this.nodeCount,
    this.ociUrl,
    this.ocid,
    this.ocpuCount,
    this.scanDns,
    this.scanDnsRecordId,
    this.scanIpIds,
    this.scanListenerPortTcp,
    this.scanListenerPortTcpSsl,
    this.shape,
    this.sparseDiskgroupEnabled,
    this.sshPublicKeys,
    this.state,
    this.storageManagementType,
    this.storageSizeGb,
    this.systemVersion,
    this.timeZone,
    this.vmBackupStorageType,
    this.vmFileSystemStorageType,
  });

  CloudVmClusterProperties.fromJson(core.Map json_)
    : this(
        clusterName: json_['clusterName'] as core.String?,
        compartmentId: json_['compartmentId'] as core.String?,
        computeModel: json_['computeModel'] as core.String?,
        cpuCoreCount: json_['cpuCoreCount'] as core.int?,
        dataStorageSizeTb: (json_['dataStorageSizeTb'] as core.num?)
            ?.toDouble(),
        dbNodeStorageSizeGb: json_['dbNodeStorageSizeGb'] as core.int?,
        dbServerOcids: (json_['dbServerOcids'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        diagnosticsDataCollectionOptions:
            json_.containsKey('diagnosticsDataCollectionOptions')
            ? DataCollectionOptions.fromJson(
                json_['diagnosticsDataCollectionOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        diskRedundancy: json_['diskRedundancy'] as core.String?,
        dnsListenerIp: json_['dnsListenerIp'] as core.String?,
        domain: json_['domain'] as core.String?,
        giVersion: json_['giVersion'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        hostnamePrefix: json_['hostnamePrefix'] as core.String?,
        licenseType: json_['licenseType'] as core.String?,
        localBackupEnabled: json_['localBackupEnabled'] as core.bool?,
        memorySizeGb: json_['memorySizeGb'] as core.int?,
        nodeCount: json_['nodeCount'] as core.int?,
        ociUrl: json_['ociUrl'] as core.String?,
        ocid: json_['ocid'] as core.String?,
        ocpuCount: (json_['ocpuCount'] as core.num?)?.toDouble(),
        scanDns: json_['scanDns'] as core.String?,
        scanDnsRecordId: json_['scanDnsRecordId'] as core.String?,
        scanIpIds: (json_['scanIpIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        scanListenerPortTcp: json_['scanListenerPortTcp'] as core.int?,
        scanListenerPortTcpSsl: json_['scanListenerPortTcpSsl'] as core.int?,
        shape: json_['shape'] as core.String?,
        sparseDiskgroupEnabled: json_['sparseDiskgroupEnabled'] as core.bool?,
        sshPublicKeys: (json_['sshPublicKeys'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        state: json_['state'] as core.String?,
        storageManagementType: json_['storageManagementType'] as core.String?,
        storageSizeGb: json_['storageSizeGb'] as core.int?,
        systemVersion: json_['systemVersion'] as core.String?,
        timeZone: json_.containsKey('timeZone')
            ? TimeZone.fromJson(
                json_['timeZone'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vmBackupStorageType: json_['vmBackupStorageType'] as core.String?,
        vmFileSystemStorageType:
            json_['vmFileSystemStorageType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clusterName = this.clusterName;
    final compartmentId = this.compartmentId;
    final computeModel = this.computeModel;
    final cpuCoreCount = this.cpuCoreCount;
    final dataStorageSizeTb = this.dataStorageSizeTb;
    final dbNodeStorageSizeGb = this.dbNodeStorageSizeGb;
    final dbServerOcids = this.dbServerOcids;
    final diagnosticsDataCollectionOptions =
        this.diagnosticsDataCollectionOptions;
    final diskRedundancy = this.diskRedundancy;
    final dnsListenerIp = this.dnsListenerIp;
    final domain = this.domain;
    final giVersion = this.giVersion;
    final hostname = this.hostname;
    final hostnamePrefix = this.hostnamePrefix;
    final licenseType = this.licenseType;
    final localBackupEnabled = this.localBackupEnabled;
    final memorySizeGb = this.memorySizeGb;
    final nodeCount = this.nodeCount;
    final ociUrl = this.ociUrl;
    final ocid = this.ocid;
    final ocpuCount = this.ocpuCount;
    final scanDns = this.scanDns;
    final scanDnsRecordId = this.scanDnsRecordId;
    final scanIpIds = this.scanIpIds;
    final scanListenerPortTcp = this.scanListenerPortTcp;
    final scanListenerPortTcpSsl = this.scanListenerPortTcpSsl;
    final shape = this.shape;
    final sparseDiskgroupEnabled = this.sparseDiskgroupEnabled;
    final sshPublicKeys = this.sshPublicKeys;
    final state = this.state;
    final storageManagementType = this.storageManagementType;
    final storageSizeGb = this.storageSizeGb;
    final systemVersion = this.systemVersion;
    final timeZone = this.timeZone;
    final vmBackupStorageType = this.vmBackupStorageType;
    final vmFileSystemStorageType = this.vmFileSystemStorageType;
    return {
      'clusterName': ?clusterName,
      'compartmentId': ?compartmentId,
      'computeModel': ?computeModel,
      'cpuCoreCount': ?cpuCoreCount,
      'dataStorageSizeTb': ?dataStorageSizeTb,
      'dbNodeStorageSizeGb': ?dbNodeStorageSizeGb,
      'dbServerOcids': ?dbServerOcids,
      'diagnosticsDataCollectionOptions': ?diagnosticsDataCollectionOptions,
      'diskRedundancy': ?diskRedundancy,
      'dnsListenerIp': ?dnsListenerIp,
      'domain': ?domain,
      'giVersion': ?giVersion,
      'hostname': ?hostname,
      'hostnamePrefix': ?hostnamePrefix,
      'licenseType': ?licenseType,
      'localBackupEnabled': ?localBackupEnabled,
      'memorySizeGb': ?memorySizeGb,
      'nodeCount': ?nodeCount,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'ocpuCount': ?ocpuCount,
      'scanDns': ?scanDns,
      'scanDnsRecordId': ?scanDnsRecordId,
      'scanIpIds': ?scanIpIds,
      'scanListenerPortTcp': ?scanListenerPortTcp,
      'scanListenerPortTcpSsl': ?scanListenerPortTcpSsl,
      'shape': ?shape,
      'sparseDiskgroupEnabled': ?sparseDiskgroupEnabled,
      'sshPublicKeys': ?sshPublicKeys,
      'state': ?state,
      'storageManagementType': ?storageManagementType,
      'storageSizeGb': ?storageSizeGb,
      'systemVersion': ?systemVersion,
      'timeZone': ?timeZone,
      'vmBackupStorageType': ?vmBackupStorageType,
      'vmFileSystemStorageType': ?vmFileSystemStorageType,
    };
  }
}

/// The request for `CloudExadataInfrastructure.ConfigureExascale`.
class ConfigureExascaleCloudExadataInfrastructureRequest {
  /// An optional ID to identify the request.
  ///
  /// Optional.
  core.String? requestId;

  /// The total storage to be allocated to Exascale in GBs.
  ///
  /// Required.
  core.int? totalStorageSizeGb;

  /// Storage size needed for VM storage on Exascale in GBs.
  ///
  /// Optional.
  core.int? totalVmStorageSizeGb;

  ConfigureExascaleCloudExadataInfrastructureRequest({
    this.requestId,
    this.totalStorageSizeGb,
    this.totalVmStorageSizeGb,
  });

  ConfigureExascaleCloudExadataInfrastructureRequest.fromJson(core.Map json_)
    : this(
        requestId: json_['requestId'] as core.String?,
        totalStorageSizeGb: json_['totalStorageSizeGb'] as core.int?,
        totalVmStorageSizeGb: json_['totalVmStorageSizeGb'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final requestId = this.requestId;
    final totalStorageSizeGb = this.totalStorageSizeGb;
    final totalVmStorageSizeGb = this.totalVmStorageSizeGb;
    return {
      'requestId': ?requestId,
      'totalStorageSizeGb': ?totalStorageSizeGb,
      'totalVmStorageSizeGb': ?totalVmStorageSizeGb,
    };
  }
}

/// The CustomerContact reference as defined by Oracle.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/CustomerContact
class CustomerContact {
  /// The email address used by Oracle to send notifications regarding databases
  /// and infrastructure.
  ///
  /// Required.
  core.String? email;

  CustomerContact({this.email});

  CustomerContact.fromJson(core.Map json_)
    : this(email: json_['email'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final email = this.email;
    return {'email': ?email};
  }
}

/// Data collection options for diagnostics.
class DataCollectionOptions {
  /// Indicates whether diagnostic collection is enabled for the VM cluster
  ///
  /// Optional.
  core.bool? diagnosticsEventsEnabled;

  /// Indicates whether health monitoring is enabled for the VM cluster
  ///
  /// Optional.
  core.bool? healthMonitoringEnabled;

  /// Indicates whether incident logs and trace collection are enabled for the
  /// VM cluster
  ///
  /// Optional.
  core.bool? incidentLogsEnabled;

  DataCollectionOptions({
    this.diagnosticsEventsEnabled,
    this.healthMonitoringEnabled,
    this.incidentLogsEnabled,
  });

  DataCollectionOptions.fromJson(core.Map json_)
    : this(
        diagnosticsEventsEnabled:
            json_['diagnosticsEventsEnabled'] as core.bool?,
        healthMonitoringEnabled: json_['healthMonitoringEnabled'] as core.bool?,
        incidentLogsEnabled: json_['incidentLogsEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final diagnosticsEventsEnabled = this.diagnosticsEventsEnabled;
    final healthMonitoringEnabled = this.healthMonitoringEnabled;
    final incidentLogsEnabled = this.incidentLogsEnabled;
    return {
      'diagnosticsEventsEnabled': ?diagnosticsEventsEnabled,
      'healthMonitoringEnabled': ?healthMonitoringEnabled,
      'incidentLogsEnabled': ?incidentLogsEnabled,
    };
  }
}

/// Data collection options for diagnostics.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/DataCollectionOptions
class DataCollectionOptionsCommon {
  /// Indicates whether to enable data collection for diagnostics.
  ///
  /// Optional.
  core.bool? isDiagnosticsEventsEnabled;

  /// Indicates whether to enable health monitoring.
  ///
  /// Optional.
  core.bool? isHealthMonitoringEnabled;

  /// Indicates whether to enable incident logs and trace collection.
  ///
  /// Optional.
  core.bool? isIncidentLogsEnabled;

  DataCollectionOptionsCommon({
    this.isDiagnosticsEventsEnabled,
    this.isHealthMonitoringEnabled,
    this.isIncidentLogsEnabled,
  });

  DataCollectionOptionsCommon.fromJson(core.Map json_)
    : this(
        isDiagnosticsEventsEnabled:
            json_['isDiagnosticsEventsEnabled'] as core.bool?,
        isHealthMonitoringEnabled:
            json_['isHealthMonitoringEnabled'] as core.bool?,
        isIncidentLogsEnabled: json_['isIncidentLogsEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isDiagnosticsEventsEnabled = this.isDiagnosticsEventsEnabled;
    final isHealthMonitoringEnabled = this.isHealthMonitoringEnabled;
    final isIncidentLogsEnabled = this.isIncidentLogsEnabled;
    return {
      'isDiagnosticsEventsEnabled': ?isDiagnosticsEventsEnabled,
      'isHealthMonitoringEnabled': ?isHealthMonitoringEnabled,
      'isIncidentLogsEnabled': ?isIncidentLogsEnabled,
    };
  }
}

/// Data collection options for DbSystem.
class DataCollectionOptionsDbSystem {
  /// Indicates whether to enable data collection for diagnostics.
  ///
  /// Optional.
  core.bool? isDiagnosticsEventsEnabled;

  /// Indicates whether to enable incident logs and trace collection.
  ///
  /// Optional.
  core.bool? isIncidentLogsEnabled;

  DataCollectionOptionsDbSystem({
    this.isDiagnosticsEventsEnabled,
    this.isIncidentLogsEnabled,
  });

  DataCollectionOptionsDbSystem.fromJson(core.Map json_)
    : this(
        isDiagnosticsEventsEnabled:
            json_['isDiagnosticsEventsEnabled'] as core.bool?,
        isIncidentLogsEnabled: json_['isIncidentLogsEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isDiagnosticsEventsEnabled = this.isDiagnosticsEventsEnabled;
    final isIncidentLogsEnabled = this.isIncidentLogsEnabled;
    return {
      'isDiagnosticsEventsEnabled': ?isDiagnosticsEventsEnabled,
      'isIncidentLogsEnabled': ?isIncidentLogsEnabled,
    };
  }
}

/// Details of the Database resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/Database/
class Database {
  /// The password for the default ADMIN user.
  ///
  /// Note: Only one of `admin_password_secret_version` or `admin_password` can
  /// be populated.
  ///
  /// Optional.
  core.String? adminPassword;

  /// The resource name of a secret version in Secret Manager which contains the
  /// database admin user's password.
  ///
  /// Format: projects/{project}/secrets/{secret}/versions/{version}. Note: Only
  /// one of `admin_password_secret_version` or `admin_password` can be
  /// populated.
  ///
  /// Optional.
  core.String? adminPasswordSecretVersion;

  /// The character set for the database.
  ///
  /// The default is AL32UTF8.
  ///
  /// Optional.
  core.String? characterSet;

  /// The date and time that the Database was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The database ID of the Database.
  ///
  /// Optional.
  core.String? databaseId;

  /// The name of the DbHome resource associated with the Database.
  ///
  /// Optional.
  core.String? dbHomeName;

  /// The database name.
  ///
  /// The name must begin with an alphabetic character and can contain a maximum
  /// of eight alphanumeric characters. Special characters are not permitted.
  ///
  /// Optional.
  core.String? dbName;

  /// The DB_UNIQUE_NAME of the Oracle Database being backed up.
  ///
  /// Optional.
  core.String? dbUniqueName;

  /// The GCP Oracle zone where the Database is created.
  ///
  /// Output only.
  core.String? gcpOracleZone;

  /// Identifier.
  ///
  /// The name of the Database resource in the following format:
  /// projects/{project}/locations/{region}/databases/{database}
  core.String? name;

  /// The national character set for the database.
  ///
  /// The default is AL16UTF16.
  ///
  /// Optional.
  core.String? ncharacterSet;

  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  ///
  /// Output only.
  core.String? ociUrl;

  /// The Status of Operations Insights for this Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OPERATIONS_INSIGHTS_STATUS_UNSPECIFIED" : Default unspecified value.
  /// - "ENABLING" : Indicates that the operations insights are being enabled.
  /// - "ENABLED" : Indicates that the operations insights are enabled.
  /// - "DISABLING" : Indicates that the operations insights are being disabled.
  /// - "NOT_ENABLED" : Indicates that the operations insights are not enabled.
  /// - "FAILED_ENABLING" : Indicates that the operations insights failed to
  /// enable.
  /// - "FAILED_DISABLING" : Indicates that the operations insights failed to
  /// disable.
  core.String? opsInsightsStatus;

  /// The ID of the pluggable database associated with the Database.
  ///
  /// The ID must be unique within the project and location.
  ///
  /// Optional.
  core.String? pluggableDatabaseId;

  /// The pluggable database associated with the Database.
  ///
  /// The name must begin with an alphabetic character and can contain a maximum
  /// of thirty alphanumeric characters.
  ///
  /// Optional.
  core.String? pluggableDatabaseName;

  /// The properties of the Database.
  ///
  /// Optional.
  DatabaseProperties? properties;

  /// The TDE wallet password for the database.
  ///
  /// Note: Only one of `tde_wallet_password_secret_version` or
  /// `tde_wallet_password` can be populated.
  ///
  /// Optional.
  core.String? tdeWalletPassword;

  /// The resource name of a secret version in Secret Manager which contains the
  /// TDE wallet password for the database.
  ///
  /// Format: projects/{project}/secrets/{secret}/versions/{version}. Note: Only
  /// one of `tde_wallet_password_secret_version` or `tde_wallet_password` can
  /// be populated.
  ///
  /// Optional.
  core.String? tdeWalletPasswordSecretVersion;

  Database({
    this.adminPassword,
    this.adminPasswordSecretVersion,
    this.characterSet,
    this.createTime,
    this.databaseId,
    this.dbHomeName,
    this.dbName,
    this.dbUniqueName,
    this.gcpOracleZone,
    this.name,
    this.ncharacterSet,
    this.ociUrl,
    this.opsInsightsStatus,
    this.pluggableDatabaseId,
    this.pluggableDatabaseName,
    this.properties,
    this.tdeWalletPassword,
    this.tdeWalletPasswordSecretVersion,
  });

  Database.fromJson(core.Map json_)
    : this(
        adminPassword: json_['adminPassword'] as core.String?,
        adminPasswordSecretVersion:
            json_['adminPasswordSecretVersion'] as core.String?,
        characterSet: json_['characterSet'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        databaseId: json_['databaseId'] as core.String?,
        dbHomeName: json_['dbHomeName'] as core.String?,
        dbName: json_['dbName'] as core.String?,
        dbUniqueName: json_['dbUniqueName'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        name: json_['name'] as core.String?,
        ncharacterSet: json_['ncharacterSet'] as core.String?,
        ociUrl: json_['ociUrl'] as core.String?,
        opsInsightsStatus: json_['opsInsightsStatus'] as core.String?,
        pluggableDatabaseId: json_['pluggableDatabaseId'] as core.String?,
        pluggableDatabaseName: json_['pluggableDatabaseName'] as core.String?,
        properties: json_.containsKey('properties')
            ? DatabaseProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        tdeWalletPassword: json_['tdeWalletPassword'] as core.String?,
        tdeWalletPasswordSecretVersion:
            json_['tdeWalletPasswordSecretVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adminPassword = this.adminPassword;
    final adminPasswordSecretVersion = this.adminPasswordSecretVersion;
    final characterSet = this.characterSet;
    final createTime = this.createTime;
    final databaseId = this.databaseId;
    final dbHomeName = this.dbHomeName;
    final dbName = this.dbName;
    final dbUniqueName = this.dbUniqueName;
    final gcpOracleZone = this.gcpOracleZone;
    final name = this.name;
    final ncharacterSet = this.ncharacterSet;
    final ociUrl = this.ociUrl;
    final opsInsightsStatus = this.opsInsightsStatus;
    final pluggableDatabaseId = this.pluggableDatabaseId;
    final pluggableDatabaseName = this.pluggableDatabaseName;
    final properties = this.properties;
    final tdeWalletPassword = this.tdeWalletPassword;
    final tdeWalletPasswordSecretVersion = this.tdeWalletPasswordSecretVersion;
    return {
      'adminPassword': ?adminPassword,
      'adminPasswordSecretVersion': ?adminPasswordSecretVersion,
      'characterSet': ?characterSet,
      'createTime': ?createTime,
      'databaseId': ?databaseId,
      'dbHomeName': ?dbHomeName,
      'dbName': ?dbName,
      'dbUniqueName': ?dbUniqueName,
      'gcpOracleZone': ?gcpOracleZone,
      'name': ?name,
      'ncharacterSet': ?ncharacterSet,
      'ociUrl': ?ociUrl,
      'opsInsightsStatus': ?opsInsightsStatus,
      'pluggableDatabaseId': ?pluggableDatabaseId,
      'pluggableDatabaseName': ?pluggableDatabaseName,
      'properties': ?properties,
      'tdeWalletPassword': ?tdeWalletPassword,
      'tdeWalletPasswordSecretVersion': ?tdeWalletPasswordSecretVersion,
    };
  }
}

/// Details of the Database character set resource.
class DatabaseCharacterSet {
  /// The character set name for the Database which is the ID in the resource
  /// name.
  ///
  /// Output only.
  core.String? characterSet;

  /// The character set type for the Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CHARACTER_SET_TYPE_UNSPECIFIED" : Character set type is not specified.
  /// - "DATABASE" : Character set type is set to database.
  /// - "NATIONAL" : Character set type is set to national.
  core.String? characterSetType;

  /// Identifier.
  ///
  /// The name of the Database Character Set resource in the following format:
  /// projects/{project}/locations/{region}/databaseCharacterSets/{database_character_set}
  core.String? name;

  DatabaseCharacterSet({this.characterSet, this.characterSetType, this.name});

  DatabaseCharacterSet.fromJson(core.Map json_)
    : this(
        characterSet: json_['characterSet'] as core.String?,
        characterSetType: json_['characterSetType'] as core.String?,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final characterSet = this.characterSet;
    final characterSetType = this.characterSetType;
    final name = this.name;
    return {
      'characterSet': ?characterSet,
      'characterSetType': ?characterSetType,
      'name': ?name,
    };
  }
}

/// The connection string profile to allow clients to group.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/DatabaseConnectionStringProfile
class DatabaseConnectionStringProfile {
  /// The current consumer group being used by the connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONSUMER_GROUP_UNSPECIFIED" : Default unspecified value.
  /// - "HIGH" : High consumer group.
  /// - "MEDIUM" : Medium consumer group.
  /// - "LOW" : Low consumer group.
  /// - "TP" : TP consumer group.
  /// - "TPURGENT" : TPURGENT consumer group.
  core.String? consumerGroup;

  /// The display name for the database connection.
  ///
  /// Output only.
  core.String? displayName;

  /// The host name format being currently used in connection string.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "HOST_FORMAT_UNSPECIFIED" : Default unspecified value.
  /// - "FQDN" : FQDN
  /// - "IP" : IP
  core.String? hostFormat;

  /// This field indicates if the connection string is regional and is only
  /// applicable for cross-region Data Guard.
  ///
  /// Output only.
  core.bool? isRegional;

  /// The protocol being used by the connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PROTOCOL_UNSPECIFIED" : Default unspecified value.
  /// - "TCP" : Tcp
  /// - "TCPS" : Tcps
  core.String? protocol;

  /// The current session mode of the connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SESSION_MODE_UNSPECIFIED" : Default unspecified value.
  /// - "DIRECT" : Direct
  /// - "INDIRECT" : Indirect
  core.String? sessionMode;

  /// The syntax of the connection string.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SYNTAX_FORMAT_UNSPECIFIED" : Default unspecified value.
  /// - "LONG" : Long
  /// - "EZCONNECT" : Ezconnect
  /// - "EZCONNECTPLUS" : Ezconnectplus
  core.String? syntaxFormat;

  /// This field indicates the TLS authentication type of the connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TLS_AUTHENTICATION_UNSPECIFIED" : Default unspecified value.
  /// - "SERVER" : Server
  /// - "MUTUAL" : Mutual
  core.String? tlsAuthentication;

  /// The value of the connection string.
  ///
  /// Output only.
  core.String? value;

  DatabaseConnectionStringProfile({
    this.consumerGroup,
    this.displayName,
    this.hostFormat,
    this.isRegional,
    this.protocol,
    this.sessionMode,
    this.syntaxFormat,
    this.tlsAuthentication,
    this.value,
  });

  DatabaseConnectionStringProfile.fromJson(core.Map json_)
    : this(
        consumerGroup: json_['consumerGroup'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        hostFormat: json_['hostFormat'] as core.String?,
        isRegional: json_['isRegional'] as core.bool?,
        protocol: json_['protocol'] as core.String?,
        sessionMode: json_['sessionMode'] as core.String?,
        syntaxFormat: json_['syntaxFormat'] as core.String?,
        tlsAuthentication: json_['tlsAuthentication'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final consumerGroup = this.consumerGroup;
    final displayName = this.displayName;
    final hostFormat = this.hostFormat;
    final isRegional = this.isRegional;
    final protocol = this.protocol;
    final sessionMode = this.sessionMode;
    final syntaxFormat = this.syntaxFormat;
    final tlsAuthentication = this.tlsAuthentication;
    final value = this.value;
    return {
      'consumerGroup': ?consumerGroup,
      'displayName': ?displayName,
      'hostFormat': ?hostFormat,
      'isRegional': ?isRegional,
      'protocol': ?protocol,
      'sessionMode': ?sessionMode,
      'syntaxFormat': ?syntaxFormat,
      'tlsAuthentication': ?tlsAuthentication,
      'value': ?value,
    };
  }
}

/// The configuration of the Database Management service.
class DatabaseManagementConfig {
  /// The status of the Database Management service.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MANAGEMENT_STATE_UNSPECIFIED" : The status is not specified.
  /// - "ENABLING" : The Database Management service is enabling.
  /// - "ENABLED" : The Database Management service is enabled.
  /// - "DISABLING" : The Database Management service is disabling.
  /// - "DISABLED" : The Database Management service is disabled.
  /// - "UPDATING" : The Database Management service is updating.
  /// - "FAILED_ENABLING" : The Database Management service failed to enable.
  /// - "FAILED_DISABLING" : The Database Management service failed to disable.
  /// - "FAILED_UPDATING" : The Database Management service failed to update.
  core.String? managementState;

  /// The Database Management type.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MANAGEMENT_TYPE_UNSPECIFIED" : The type is not specified.
  /// - "BASIC" : Basic Database Management.
  /// - "ADVANCED" : Advanced Database Management.
  core.String? managementType;

  DatabaseManagementConfig({this.managementState, this.managementType});

  DatabaseManagementConfig.fromJson(core.Map json_)
    : this(
        managementState: json_['managementState'] as core.String?,
        managementType: json_['managementType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final managementState = this.managementState;
    final managementType = this.managementType;
    return {
      'managementState': ?managementState,
      'managementType': ?managementType,
    };
  }
}

/// The properties of a Database.
class DatabaseProperties {
  /// The Database Management config.
  ///
  /// Output only.
  DatabaseManagementConfig? databaseManagementConfig;

  /// Backup options for the Database.
  ///
  /// Optional.
  DbBackupConfig? dbBackupConfig;

  /// The Oracle Database version.
  ///
  /// Required.
  core.String? dbVersion;

  /// State of the Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DATABASE_LIFECYCLE_STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : Indicates that the resource is in provisioning state.
  /// - "AVAILABLE" : Indicates that the resource is in available state.
  /// - "UPDATING" : Indicates that the resource is in updating state.
  /// - "BACKUP_IN_PROGRESS" : Indicates that the resource is in backup in
  /// progress state.
  /// - "UPGRADING" : Indicates that the resource is in upgrading state.
  /// - "CONVERTING" : Indicates that the resource is in converting state.
  /// - "TERMINATING" : Indicates that the resource is in terminating state.
  /// - "TERMINATED" : Indicates that the resource is in terminated state.
  /// - "RESTORE_FAILED" : Indicates that the resource is in restore failed
  /// state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  core.String? state;

  DatabaseProperties({
    this.databaseManagementConfig,
    this.dbBackupConfig,
    this.dbVersion,
    this.state,
  });

  DatabaseProperties.fromJson(core.Map json_)
    : this(
        databaseManagementConfig: json_.containsKey('databaseManagementConfig')
            ? DatabaseManagementConfig.fromJson(
                json_['databaseManagementConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dbBackupConfig: json_.containsKey('dbBackupConfig')
            ? DbBackupConfig.fromJson(
                json_['dbBackupConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dbVersion: json_['dbVersion'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databaseManagementConfig = this.databaseManagementConfig;
    final dbBackupConfig = this.dbBackupConfig;
    final dbVersion = this.dbVersion;
    final state = this.state;
    return {
      'databaseManagementConfig': ?databaseManagementConfig,
      'dbBackupConfig': ?dbBackupConfig,
      'dbVersion': ?dbVersion,
      'state': ?state,
    };
  }
}

/// Backup Options for the Database.
class DbBackupConfig {
  /// If set to true, enables automatic backups on the database.
  ///
  /// Optional.
  core.bool? autoBackupEnabled;

  /// The day of the week on which the full backup should be performed on the
  /// database.
  ///
  /// If no value is provided, it will default to Sunday.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DAY_OF_WEEK_UNSPECIFIED" : The day of the week is unspecified.
  /// - "MONDAY" : Monday
  /// - "TUESDAY" : Tuesday
  /// - "WEDNESDAY" : Wednesday
  /// - "THURSDAY" : Thursday
  /// - "FRIDAY" : Friday
  /// - "SATURDAY" : Saturday
  /// - "SUNDAY" : Sunday
  core.String? autoFullBackupDay;

  /// The window in which the full backup should be performed on the database.
  ///
  /// If no value is provided, the default is anytime.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BACKUP_WINDOW_UNSPECIFIED" : Default unspecified value.
  /// - "SLOT_ONE" : 12:00 AM - 2:00 AM
  /// - "SLOT_TWO" : 2:00 AM - 4:00 AM
  /// - "SLOT_THREE" : 4:00 AM - 6:00 AM
  /// - "SLOT_FOUR" : 6:00 AM - 8:00 AM
  /// - "SLOT_FIVE" : 8:00 AM - 10:00 AM
  /// - "SLOT_SIX" : 10:00 AM - 12:00 PM
  /// - "SLOT_SEVEN" : 12:00 PM - 2:00 PM
  /// - "SLOT_EIGHT" : 2:00 PM - 4:00 PM
  /// - "SLOT_NINE" : 4:00 PM - 6:00 PM
  /// - "SLOT_TEN" : 6:00 PM - 8:00 PM
  /// - "SLOT_ELEVEN" : 8:00 PM - 10:00 PM
  /// - "SLOT_TWELVE" : 10:00 PM - 12:00 AM
  core.String? autoFullBackupWindow;

  /// The window in which the incremental backup should be performed on the
  /// database.
  ///
  /// If no value is provided, the default is anytime except the auto full
  /// backup day.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BACKUP_WINDOW_UNSPECIFIED" : Default unspecified value.
  /// - "SLOT_ONE" : 12:00 AM - 2:00 AM
  /// - "SLOT_TWO" : 2:00 AM - 4:00 AM
  /// - "SLOT_THREE" : 4:00 AM - 6:00 AM
  /// - "SLOT_FOUR" : 6:00 AM - 8:00 AM
  /// - "SLOT_FIVE" : 8:00 AM - 10:00 AM
  /// - "SLOT_SIX" : 10:00 AM - 12:00 PM
  /// - "SLOT_SEVEN" : 12:00 PM - 2:00 PM
  /// - "SLOT_EIGHT" : 2:00 PM - 4:00 PM
  /// - "SLOT_NINE" : 4:00 PM - 6:00 PM
  /// - "SLOT_TEN" : 6:00 PM - 8:00 PM
  /// - "SLOT_ELEVEN" : 8:00 PM - 10:00 PM
  /// - "SLOT_TWELVE" : 10:00 PM - 12:00 AM
  core.String? autoIncrementalBackupWindow;

  /// This defines when the backups will be deleted after Database termination.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "BACKUP_DELETION_POLICY_UNSPECIFIED" : Default unspecified value.
  /// - "DELETE_IMMEDIATELY" : Keeps the backup for predefined time i.e. 72
  /// hours and then delete permanently.
  /// - "DELETE_AFTER_RETENTION_PERIOD" : Keeps the backups as per the policy
  /// defined for database backups.
  core.String? backupDeletionPolicy;

  /// Details of the database backup destinations.
  ///
  /// Optional.
  core.List<BackupDestinationDetails>? backupDestinationDetails;

  /// The number of days an automatic backup is retained before being
  /// automatically deleted.
  ///
  /// This value determines the earliest point in time to which a database can
  /// be restored. Min: 1, Max: 60.
  ///
  /// Optional.
  core.int? retentionPeriodDays;

  DbBackupConfig({
    this.autoBackupEnabled,
    this.autoFullBackupDay,
    this.autoFullBackupWindow,
    this.autoIncrementalBackupWindow,
    this.backupDeletionPolicy,
    this.backupDestinationDetails,
    this.retentionPeriodDays,
  });

  DbBackupConfig.fromJson(core.Map json_)
    : this(
        autoBackupEnabled: json_['autoBackupEnabled'] as core.bool?,
        autoFullBackupDay: json_['autoFullBackupDay'] as core.String?,
        autoFullBackupWindow: json_['autoFullBackupWindow'] as core.String?,
        autoIncrementalBackupWindow:
            json_['autoIncrementalBackupWindow'] as core.String?,
        backupDeletionPolicy: json_['backupDeletionPolicy'] as core.String?,
        backupDestinationDetails:
            (json_['backupDestinationDetails'] as core.List?)
                ?.map(
                  (value) => BackupDestinationDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        retentionPeriodDays: json_['retentionPeriodDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoBackupEnabled = this.autoBackupEnabled;
    final autoFullBackupDay = this.autoFullBackupDay;
    final autoFullBackupWindow = this.autoFullBackupWindow;
    final autoIncrementalBackupWindow = this.autoIncrementalBackupWindow;
    final backupDeletionPolicy = this.backupDeletionPolicy;
    final backupDestinationDetails = this.backupDestinationDetails;
    final retentionPeriodDays = this.retentionPeriodDays;
    return {
      'autoBackupEnabled': ?autoBackupEnabled,
      'autoFullBackupDay': ?autoFullBackupDay,
      'autoFullBackupWindow': ?autoFullBackupWindow,
      'autoIncrementalBackupWindow': ?autoIncrementalBackupWindow,
      'backupDeletionPolicy': ?backupDeletionPolicy,
      'backupDestinationDetails': ?backupDestinationDetails,
      'retentionPeriodDays': ?retentionPeriodDays,
    };
  }
}

/// Details of the Database Home resource.
class DbHome {
  /// The Database resource.
  ///
  /// Required.
  Database? database;

  /// A valid Oracle Database version.
  ///
  /// For a list of supported versions, use the ListDbVersions operation.
  ///
  /// Required.
  core.String? dbVersion;

  /// The display name for the Database Home.
  ///
  /// The name does not have to be unique within your project.
  ///
  /// Optional.
  core.String? displayName;

  /// Whether unified auditing is enabled for the Database Home.
  ///
  /// Optional.
  core.bool? isUnifiedAuditingEnabled;

  DbHome({
    this.database,
    this.dbVersion,
    this.displayName,
    this.isUnifiedAuditingEnabled,
  });

  DbHome.fromJson(core.Map json_)
    : this(
        database: json_.containsKey('database')
            ? Database.fromJson(
                json_['database'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dbVersion: json_['dbVersion'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        isUnifiedAuditingEnabled:
            json_['isUnifiedAuditingEnabled'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final database = this.database;
    final dbVersion = this.dbVersion;
    final displayName = this.displayName;
    final isUnifiedAuditingEnabled = this.isUnifiedAuditingEnabled;
    return {
      'database': ?database,
      'dbVersion': ?dbVersion,
      'displayName': ?displayName,
      'isUnifiedAuditingEnabled': ?isUnifiedAuditingEnabled,
    };
  }
}

/// Details of the database node resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbNode/
class DbNode {
  /// Identifier.
  ///
  /// The name of the database node resource in the following format:
  /// projects/{project}/locations/{location}/cloudVmClusters/{cloud_vm_cluster}/dbNodes/{db_node}
  core.String? name;

  /// Various properties of the database node.
  ///
  /// Optional.
  DbNodeProperties? properties;

  DbNode({this.name, this.properties});

  DbNode.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        properties: json_.containsKey('properties')
            ? DbNodeProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final properties = this.properties;
    return {'name': ?name, 'properties': ?properties};
  }
}

/// Various properties and settings associated with Db node.
class DbNodeProperties {
  /// The date and time that the database node was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Local storage per database node.
  ///
  /// Optional.
  core.int? dbNodeStorageSizeGb;

  /// Database server OCID.
  ///
  /// Optional.
  core.String? dbServerOcid;

  /// DNS
  ///
  /// Optional.
  core.String? hostname;

  /// Memory allocated in GBs.
  core.int? memorySizeGb;

  /// OCID of database node.
  ///
  /// Output only.
  core.String? ocid;

  /// OCPU count per database node.
  ///
  /// Optional.
  core.int? ocpuCount;

  /// State of the database node.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : Indicates that the resource is in provisioning state.
  /// - "AVAILABLE" : Indicates that the resource is in available state.
  /// - "UPDATING" : Indicates that the resource is in updating state.
  /// - "STOPPING" : Indicates that the resource is in stopping state.
  /// - "STOPPED" : Indicates that the resource is in stopped state.
  /// - "STARTING" : Indicates that the resource is in starting state.
  /// - "TERMINATING" : Indicates that the resource is in terminating state.
  /// - "TERMINATED" : Indicates that the resource is in terminated state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  core.String? state;

  /// Total CPU core count of the database node.
  core.int? totalCpuCoreCount;

  DbNodeProperties({
    this.createTime,
    this.dbNodeStorageSizeGb,
    this.dbServerOcid,
    this.hostname,
    this.memorySizeGb,
    this.ocid,
    this.ocpuCount,
    this.state,
    this.totalCpuCoreCount,
  });

  DbNodeProperties.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        dbNodeStorageSizeGb: json_['dbNodeStorageSizeGb'] as core.int?,
        dbServerOcid: json_['dbServerOcid'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        memorySizeGb: json_['memorySizeGb'] as core.int?,
        ocid: json_['ocid'] as core.String?,
        ocpuCount: json_['ocpuCount'] as core.int?,
        state: json_['state'] as core.String?,
        totalCpuCoreCount: json_['totalCpuCoreCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final dbNodeStorageSizeGb = this.dbNodeStorageSizeGb;
    final dbServerOcid = this.dbServerOcid;
    final hostname = this.hostname;
    final memorySizeGb = this.memorySizeGb;
    final ocid = this.ocid;
    final ocpuCount = this.ocpuCount;
    final state = this.state;
    final totalCpuCoreCount = this.totalCpuCoreCount;
    return {
      'createTime': ?createTime,
      'dbNodeStorageSizeGb': ?dbNodeStorageSizeGb,
      'dbServerOcid': ?dbServerOcid,
      'hostname': ?hostname,
      'memorySizeGb': ?memorySizeGb,
      'ocid': ?ocid,
      'ocpuCount': ?ocpuCount,
      'state': ?state,
      'totalCpuCoreCount': ?totalCpuCoreCount,
    };
  }
}

/// Details of the database server resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbServer/
class DbServer {
  /// User friendly name for this resource.
  ///
  /// Optional.
  core.String? displayName;

  /// Identifier.
  ///
  /// The name of the database server resource with the format:
  /// projects/{project}/locations/{location}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}/dbServers/{db_server}
  core.String? name;

  /// Various properties of the database server.
  ///
  /// Optional.
  DbServerProperties? properties;

  DbServer({this.displayName, this.name, this.properties});

  DbServer.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        properties: json_.containsKey('properties')
            ? DbServerProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final displayName = this.displayName;
    final name = this.name;
    final properties = this.properties;
    return {
      'displayName': ?displayName,
      'name': ?name,
      'properties': ?properties,
    };
  }
}

/// Various properties and settings associated with Exadata database server.
class DbServerProperties {
  /// OCID of database nodes associated with the database server.
  ///
  /// Output only.
  core.List<core.String>? dbNodeIds;

  /// Local storage per VM.
  ///
  /// Optional.
  core.int? dbNodeStorageSizeGb;

  /// Maximum local storage per VM.
  ///
  /// Optional.
  core.int? maxDbNodeStorageSizeGb;

  /// Maximum memory allocated in GBs.
  ///
  /// Optional.
  core.int? maxMemorySizeGb;

  /// Maximum OCPU count per database.
  ///
  /// Optional.
  core.int? maxOcpuCount;

  /// Memory allocated in GBs.
  ///
  /// Optional.
  core.int? memorySizeGb;

  /// OCID of database server.
  ///
  /// Output only.
  core.String? ocid;

  /// OCPU count per database.
  ///
  /// Optional.
  core.int? ocpuCount;

  /// State of the database server.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "CREATING" : Indicates that the resource is in creating state.
  /// - "AVAILABLE" : Indicates that the resource is in available state.
  /// - "UNAVAILABLE" : Indicates that the resource is in unavailable state.
  /// - "DELETING" : Indicates that the resource is in deleting state.
  /// - "DELETED" : Indicates that the resource is in deleted state.
  core.String? state;

  /// Vm count per database.
  ///
  /// Optional.
  core.int? vmCount;

  DbServerProperties({
    this.dbNodeIds,
    this.dbNodeStorageSizeGb,
    this.maxDbNodeStorageSizeGb,
    this.maxMemorySizeGb,
    this.maxOcpuCount,
    this.memorySizeGb,
    this.ocid,
    this.ocpuCount,
    this.state,
    this.vmCount,
  });

  DbServerProperties.fromJson(core.Map json_)
    : this(
        dbNodeIds: (json_['dbNodeIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        dbNodeStorageSizeGb: json_['dbNodeStorageSizeGb'] as core.int?,
        maxDbNodeStorageSizeGb: json_['maxDbNodeStorageSizeGb'] as core.int?,
        maxMemorySizeGb: json_['maxMemorySizeGb'] as core.int?,
        maxOcpuCount: json_['maxOcpuCount'] as core.int?,
        memorySizeGb: json_['memorySizeGb'] as core.int?,
        ocid: json_['ocid'] as core.String?,
        ocpuCount: json_['ocpuCount'] as core.int?,
        state: json_['state'] as core.String?,
        vmCount: json_['vmCount'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dbNodeIds = this.dbNodeIds;
    final dbNodeStorageSizeGb = this.dbNodeStorageSizeGb;
    final maxDbNodeStorageSizeGb = this.maxDbNodeStorageSizeGb;
    final maxMemorySizeGb = this.maxMemorySizeGb;
    final maxOcpuCount = this.maxOcpuCount;
    final memorySizeGb = this.memorySizeGb;
    final ocid = this.ocid;
    final ocpuCount = this.ocpuCount;
    final state = this.state;
    final vmCount = this.vmCount;
    return {
      'dbNodeIds': ?dbNodeIds,
      'dbNodeStorageSizeGb': ?dbNodeStorageSizeGb,
      'maxDbNodeStorageSizeGb': ?maxDbNodeStorageSizeGb,
      'maxMemorySizeGb': ?maxMemorySizeGb,
      'maxOcpuCount': ?maxOcpuCount,
      'memorySizeGb': ?memorySizeGb,
      'ocid': ?ocid,
      'ocpuCount': ?ocpuCount,
      'state': ?state,
      'vmCount': ?vmCount,
    };
  }
}

/// Details of the DbSystem (BaseDB) resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbSystem/
class DbSystem {
  /// The date and time that the DbSystem was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The display name for the System db.
  ///
  /// The name does not have to be unique within your project.
  ///
  /// Required.
  core.String? displayName;

  /// The ID of the subscription entitlement associated with the DbSystem
  ///
  /// Output only.
  core.String? entitlementId;

  /// The GCP Oracle zone where Oracle DbSystem is hosted.
  ///
  /// Example: us-east4-b-r2. If not specified, the system will pick a zone
  /// based on availability.
  ///
  /// Optional.
  core.String? gcpOracleZone;

  /// The labels or tags associated with the DbSystem.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the DbSystem resource in the following format:
  /// projects/{project}/locations/{region}/dbSystems/{db_system}
  core.String? name;

  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  ///
  /// Output only.
  core.String? ociUrl;

  /// The name of the OdbNetwork associated with the DbSystem.
  ///
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork
  /// of the OdbSubnet.
  ///
  /// Optional.
  core.String? odbNetwork;

  /// The name of the OdbSubnet associated with the DbSystem for IP allocation.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  ///
  /// Required.
  core.String? odbSubnet;

  /// The properties of the DbSystem.
  ///
  /// Optional.
  DbSystemProperties? properties;

  DbSystem({
    this.createTime,
    this.displayName,
    this.entitlementId,
    this.gcpOracleZone,
    this.labels,
    this.name,
    this.ociUrl,
    this.odbNetwork,
    this.odbSubnet,
    this.properties,
  });

  DbSystem.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        ociUrl: json_['ociUrl'] as core.String?,
        odbNetwork: json_['odbNetwork'] as core.String?,
        odbSubnet: json_['odbSubnet'] as core.String?,
        properties: json_.containsKey('properties')
            ? DbSystemProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final entitlementId = this.entitlementId;
    final gcpOracleZone = this.gcpOracleZone;
    final labels = this.labels;
    final name = this.name;
    final ociUrl = this.ociUrl;
    final odbNetwork = this.odbNetwork;
    final odbSubnet = this.odbSubnet;
    final properties = this.properties;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'name': ?name,
      'ociUrl': ?ociUrl,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'properties': ?properties,
    };
  }
}

/// Summary of the DbSystem initial storage size.
class DbSystemInitialStorageSize {
  /// The name of the resource.
  ///
  /// Output only.
  core.String? name;

  /// The properties of the DbSystem initial storage size summary.
  ///
  /// Output only.
  DbSystemInitialStorageSizeProperties? properties;

  DbSystemInitialStorageSize({this.name, this.properties});

  DbSystemInitialStorageSize.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        properties: json_.containsKey('properties')
            ? DbSystemInitialStorageSizeProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final properties = this.properties;
    return {'name': ?name, 'properties': ?properties};
  }
}

/// The properties of a DbSystem initial storage size summary.
class DbSystemInitialStorageSizeProperties {
  /// List of storage disk details available for launches from backup.
  ///
  /// Output only.
  core.List<StorageSizeDetails>? launchFromBackupStorageSizeDetails;

  /// VM shape platform type
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SHAPE_TYPE_UNSPECIFIED" : Unspecified shape type.
  /// - "STANDARD_X86" : Standard X86.
  core.String? shapeType;

  /// The storage option used in DB system.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STORAGE_MANAGEMENT_UNSPECIFIED" : Unspecified storage management.
  /// - "ASM" : Automatic Storage Management.
  /// - "LVM" : Logical Volume Management.
  core.String? storageManagement;

  /// List of storage disk details.
  ///
  /// Output only.
  core.List<StorageSizeDetails>? storageSizeDetails;

  DbSystemInitialStorageSizeProperties({
    this.launchFromBackupStorageSizeDetails,
    this.shapeType,
    this.storageManagement,
    this.storageSizeDetails,
  });

  DbSystemInitialStorageSizeProperties.fromJson(core.Map json_)
    : this(
        launchFromBackupStorageSizeDetails:
            (json_['launchFromBackupStorageSizeDetails'] as core.List?)
                ?.map(
                  (value) => StorageSizeDetails.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        shapeType: json_['shapeType'] as core.String?,
        storageManagement: json_['storageManagement'] as core.String?,
        storageSizeDetails: (json_['storageSizeDetails'] as core.List?)
            ?.map(
              (value) => StorageSizeDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final launchFromBackupStorageSizeDetails =
        this.launchFromBackupStorageSizeDetails;
    final shapeType = this.shapeType;
    final storageManagement = this.storageManagement;
    final storageSizeDetails = this.storageSizeDetails;
    return {
      'launchFromBackupStorageSizeDetails': ?launchFromBackupStorageSizeDetails,
      'shapeType': ?shapeType,
      'storageManagement': ?storageManagement,
      'storageSizeDetails': ?storageSizeDetails,
    };
  }
}

/// Details of the DbSystem Options.
class DbSystemOptions {
  /// The storage option used in DB system.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STORAGE_MANAGEMENT_UNSPECIFIED" : The storage management is
  /// unspecified.
  /// - "ASM" : Automatic storage management. This option is not supported. Only
  /// LVM is supported.
  /// - "LVM" : Logical Volume management.
  core.String? storageManagement;

  DbSystemOptions({this.storageManagement});

  DbSystemOptions.fromJson(core.Map json_)
    : this(storageManagement: json_['storageManagement'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final storageManagement = this.storageManagement;
    return {'storageManagement': ?storageManagement};
  }
}

/// The properties of a DbSystem.
class DbSystemProperties {
  /// The number of CPU cores to enable for the DbSystem.
  ///
  /// Required.
  core.int? computeCount;

  /// The compute model of the DbSystem.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMPUTE_MODEL_UNSPECIFIED" : The compute model is unspecified.
  /// - "ECPU" : The compute model is virtual.
  /// - "OCPU" : Deprecated: This option is not supported. Please use ECPU
  /// instead. The compute model is physical.
  core.String? computeModel;

  /// Data collection options for diagnostics.
  ///
  /// Optional.
  DataCollectionOptionsDbSystem? dataCollectionOptions;

  /// The data storage size in GB that is currently available to DbSystems.
  ///
  /// The value is same as initial_data_storage_size_gb. This can be modified
  /// from OCI console.
  ///
  /// Optional.
  core.int? dataStorageSizeGb;

  /// The database edition of the DbSystem.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DB_SYSTEM_DATABASE_EDITION_UNSPECIFIED" : The database edition is
  /// unspecified.
  /// - "STANDARD_EDITION" : The database edition is Standard.
  /// - "ENTERPRISE_EDITION" : The database edition is Enterprise.
  /// - "ENTERPRISE_EDITION_HIGH_PERFORMANCE" : The database edition is
  /// Enterprise Edition.
  core.String? databaseEdition;

  /// Details for creating a Database Home.
  ///
  /// Optional.
  DbHome? dbHome;

  /// The options for the DbSystem.
  ///
  /// Optional.
  DbSystemOptions? dbSystemOptions;

  /// The host domain name of the DbSystem.
  ///
  /// Optional.
  core.String? domain;

  /// The hostname of the DbSystem.
  ///
  /// Output only.
  core.String? hostname;

  /// Prefix for DB System host names.
  ///
  /// Optional.
  core.String? hostnamePrefix;

  /// The initial data storage size in GB.
  ///
  /// Required.
  core.int? initialDataStorageSizeGb;

  /// The license model of the DbSystem.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LICENSE_MODEL_UNSPECIFIED" : The license model is unspecified.
  /// - "LICENSE_INCLUDED" : The license model is included.
  /// - "BRING_YOUR_OWN_LICENSE" : The license model is bring your own license.
  core.String? licenseModel;

  /// State of the DbSystem.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DB_SYSTEM_LIFECYCLE_STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : Indicates that the resource is in provisioning state.
  /// - "AVAILABLE" : Indicates that the resource is in available state.
  /// - "UPDATING" : Indicates that the resource is in updating state.
  /// - "TERMINATING" : Indicates that the resource is in terminating state.
  /// - "TERMINATED" : Indicates that the resource is in terminated state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  /// - "MIGRATED" : Indicates that the resource has been migrated.
  /// - "MAINTENANCE_IN_PROGRESS" : Indicates that the resource is in
  /// maintenance in progress state.
  /// - "NEEDS_ATTENTION" : Indicates that the resource needs attention.
  /// - "UPGRADING" : Indicates that the resource is upgrading.
  core.String? lifecycleState;

  /// The memory size in GB.
  ///
  /// This value can not be set and is automatically calculated based on the
  /// number of ECPUs allocated to the DbSystem.
  ///
  /// Optional.
  core.int? memorySizeGb;

  /// The number of nodes to launch for a virtual machine DbSystem.
  ///
  /// By default this will be set to 1.
  ///
  /// Optional.
  core.int? nodeCount;

  /// OCID of the DbSystem.
  ///
  /// Output only.
  core.String? ocid;

  /// The private IP address of the DbSystem.
  ///
  /// Optional.
  core.String? privateIp;

  /// The reco/redo storage size in GB.
  ///
  /// The value for recovery storage size is based on the available data storage
  /// size.
  ///
  /// Optional.
  core.int? recoStorageSizeGb;

  /// Shape of DB System.
  ///
  /// Required.
  core.String? shape;

  /// SSH public keys to be stored with the DbSystem.
  ///
  /// Required.
  core.List<core.String>? sshPublicKeys;

  /// Time zone of the DbSystem.
  ///
  /// Optional.
  TimeZone? timeZone;

  DbSystemProperties({
    this.computeCount,
    this.computeModel,
    this.dataCollectionOptions,
    this.dataStorageSizeGb,
    this.databaseEdition,
    this.dbHome,
    this.dbSystemOptions,
    this.domain,
    this.hostname,
    this.hostnamePrefix,
    this.initialDataStorageSizeGb,
    this.licenseModel,
    this.lifecycleState,
    this.memorySizeGb,
    this.nodeCount,
    this.ocid,
    this.privateIp,
    this.recoStorageSizeGb,
    this.shape,
    this.sshPublicKeys,
    this.timeZone,
  });

  DbSystemProperties.fromJson(core.Map json_)
    : this(
        computeCount: json_['computeCount'] as core.int?,
        computeModel: json_['computeModel'] as core.String?,
        dataCollectionOptions: json_.containsKey('dataCollectionOptions')
            ? DataCollectionOptionsDbSystem.fromJson(
                json_['dataCollectionOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        dataStorageSizeGb: json_['dataStorageSizeGb'] as core.int?,
        databaseEdition: json_['databaseEdition'] as core.String?,
        dbHome: json_.containsKey('dbHome')
            ? DbHome.fromJson(
                json_['dbHome'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dbSystemOptions: json_.containsKey('dbSystemOptions')
            ? DbSystemOptions.fromJson(
                json_['dbSystemOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        domain: json_['domain'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        hostnamePrefix: json_['hostnamePrefix'] as core.String?,
        initialDataStorageSizeGb:
            json_['initialDataStorageSizeGb'] as core.int?,
        licenseModel: json_['licenseModel'] as core.String?,
        lifecycleState: json_['lifecycleState'] as core.String?,
        memorySizeGb: json_['memorySizeGb'] as core.int?,
        nodeCount: json_['nodeCount'] as core.int?,
        ocid: json_['ocid'] as core.String?,
        privateIp: json_['privateIp'] as core.String?,
        recoStorageSizeGb: json_['recoStorageSizeGb'] as core.int?,
        shape: json_['shape'] as core.String?,
        sshPublicKeys: (json_['sshPublicKeys'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        timeZone: json_.containsKey('timeZone')
            ? TimeZone.fromJson(
                json_['timeZone'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final computeCount = this.computeCount;
    final computeModel = this.computeModel;
    final dataCollectionOptions = this.dataCollectionOptions;
    final dataStorageSizeGb = this.dataStorageSizeGb;
    final databaseEdition = this.databaseEdition;
    final dbHome = this.dbHome;
    final dbSystemOptions = this.dbSystemOptions;
    final domain = this.domain;
    final hostname = this.hostname;
    final hostnamePrefix = this.hostnamePrefix;
    final initialDataStorageSizeGb = this.initialDataStorageSizeGb;
    final licenseModel = this.licenseModel;
    final lifecycleState = this.lifecycleState;
    final memorySizeGb = this.memorySizeGb;
    final nodeCount = this.nodeCount;
    final ocid = this.ocid;
    final privateIp = this.privateIp;
    final recoStorageSizeGb = this.recoStorageSizeGb;
    final shape = this.shape;
    final sshPublicKeys = this.sshPublicKeys;
    final timeZone = this.timeZone;
    return {
      'computeCount': ?computeCount,
      'computeModel': ?computeModel,
      'dataCollectionOptions': ?dataCollectionOptions,
      'dataStorageSizeGb': ?dataStorageSizeGb,
      'databaseEdition': ?databaseEdition,
      'dbHome': ?dbHome,
      'dbSystemOptions': ?dbSystemOptions,
      'domain': ?domain,
      'hostname': ?hostname,
      'hostnamePrefix': ?hostnamePrefix,
      'initialDataStorageSizeGb': ?initialDataStorageSizeGb,
      'licenseModel': ?licenseModel,
      'lifecycleState': ?lifecycleState,
      'memorySizeGb': ?memorySizeGb,
      'nodeCount': ?nodeCount,
      'ocid': ?ocid,
      'privateIp': ?privateIp,
      'recoStorageSizeGb': ?recoStorageSizeGb,
      'shape': ?shape,
      'sshPublicKeys': ?sshPublicKeys,
      'timeZone': ?timeZone,
    };
  }
}

/// Details of the Database System Shapes resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbSystemShapeSummary/
class DbSystemShape {
  /// Available core count.
  ///
  /// Optional.
  core.int? availableCoreCount;

  /// Number of cores per node.
  ///
  /// Optional.
  core.int? availableCoreCountPerNode;

  /// Storage per storage server in terabytes.
  ///
  /// Optional.
  core.int? availableDataStorageTb;

  /// Memory per database server node in gigabytes.
  ///
  /// Optional.
  core.int? availableMemoryPerNodeGb;

  /// Core count increment.
  ///
  /// Optional.
  core.int? coreCountIncrement;

  /// Maximum number of database servers.
  ///
  /// Optional.
  core.int? maxNodeCount;

  /// Maximum number of storage servers.
  ///
  /// Optional.
  core.int? maxStorageCount;

  /// Minimum core count per node.
  ///
  /// Optional.
  core.int? minCoreCountPerNode;

  /// Minimum node storage per database server in gigabytes.
  ///
  /// Optional.
  core.int? minDbNodeStoragePerNodeGb;

  /// Minimum memory per node in gigabytes.
  ///
  /// Optional.
  core.int? minMemoryPerNodeGb;

  /// Minimum number of database servers.
  ///
  /// Optional.
  core.int? minNodeCount;

  /// Minimum number of storage servers.
  ///
  /// Optional.
  core.int? minStorageCount;

  /// Minimum core count per node.
  ///
  /// Optional.
  core.int? minimumCoreCount;

  /// Identifier.
  ///
  /// The name of the Database System Shape resource with the format:
  /// projects/{project}/locations/{region}/dbSystemShapes/{db_system_shape}
  core.String? name;

  /// shape
  ///
  /// Optional.
  core.String? shape;

  DbSystemShape({
    this.availableCoreCount,
    this.availableCoreCountPerNode,
    this.availableDataStorageTb,
    this.availableMemoryPerNodeGb,
    this.coreCountIncrement,
    this.maxNodeCount,
    this.maxStorageCount,
    this.minCoreCountPerNode,
    this.minDbNodeStoragePerNodeGb,
    this.minMemoryPerNodeGb,
    this.minNodeCount,
    this.minStorageCount,
    this.minimumCoreCount,
    this.name,
    this.shape,
  });

  DbSystemShape.fromJson(core.Map json_)
    : this(
        availableCoreCount: json_['availableCoreCount'] as core.int?,
        availableCoreCountPerNode:
            json_['availableCoreCountPerNode'] as core.int?,
        availableDataStorageTb: json_['availableDataStorageTb'] as core.int?,
        availableMemoryPerNodeGb:
            json_['availableMemoryPerNodeGb'] as core.int?,
        coreCountIncrement: json_['coreCountIncrement'] as core.int?,
        maxNodeCount: json_['maxNodeCount'] as core.int?,
        maxStorageCount: json_['maxStorageCount'] as core.int?,
        minCoreCountPerNode: json_['minCoreCountPerNode'] as core.int?,
        minDbNodeStoragePerNodeGb:
            json_['minDbNodeStoragePerNodeGb'] as core.int?,
        minMemoryPerNodeGb: json_['minMemoryPerNodeGb'] as core.int?,
        minNodeCount: json_['minNodeCount'] as core.int?,
        minStorageCount: json_['minStorageCount'] as core.int?,
        minimumCoreCount: json_['minimumCoreCount'] as core.int?,
        name: json_['name'] as core.String?,
        shape: json_['shape'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availableCoreCount = this.availableCoreCount;
    final availableCoreCountPerNode = this.availableCoreCountPerNode;
    final availableDataStorageTb = this.availableDataStorageTb;
    final availableMemoryPerNodeGb = this.availableMemoryPerNodeGb;
    final coreCountIncrement = this.coreCountIncrement;
    final maxNodeCount = this.maxNodeCount;
    final maxStorageCount = this.maxStorageCount;
    final minCoreCountPerNode = this.minCoreCountPerNode;
    final minDbNodeStoragePerNodeGb = this.minDbNodeStoragePerNodeGb;
    final minMemoryPerNodeGb = this.minMemoryPerNodeGb;
    final minNodeCount = this.minNodeCount;
    final minStorageCount = this.minStorageCount;
    final minimumCoreCount = this.minimumCoreCount;
    final name = this.name;
    final shape = this.shape;
    return {
      'availableCoreCount': ?availableCoreCount,
      'availableCoreCountPerNode': ?availableCoreCountPerNode,
      'availableDataStorageTb': ?availableDataStorageTb,
      'availableMemoryPerNodeGb': ?availableMemoryPerNodeGb,
      'coreCountIncrement': ?coreCountIncrement,
      'maxNodeCount': ?maxNodeCount,
      'maxStorageCount': ?maxStorageCount,
      'minCoreCountPerNode': ?minCoreCountPerNode,
      'minDbNodeStoragePerNodeGb': ?minDbNodeStoragePerNodeGb,
      'minMemoryPerNodeGb': ?minMemoryPerNodeGb,
      'minNodeCount': ?minNodeCount,
      'minStorageCount': ?minStorageCount,
      'minimumCoreCount': ?minimumCoreCount,
      'name': ?name,
      'shape': ?shape,
    };
  }
}

/// A valid Oracle Database version.
class DbVersion {
  /// The name of the DbVersion resource in the following format:
  /// projects/{project}/locations/{region}/dbVersions/{db_version}
  ///
  /// Output only.
  core.String? name;

  /// The properties of the DbVersion.
  ///
  /// Output only.
  DbVersionProperties? properties;

  DbVersion({this.name, this.properties});

  DbVersion.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        properties: json_.containsKey('properties')
            ? DbVersionProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final properties = this.properties;
    return {'name': ?name, 'properties': ?properties};
  }
}

/// The properties of a DbVersion.
class DbVersionProperties {
  /// True if this version of the Oracle Database software is the latest version
  /// for a release.
  ///
  /// Output only.
  core.bool? isLatestForMajorVersion;

  /// True if this version of the Oracle Database software is the preview
  /// version.
  ///
  /// Output only.
  core.bool? isPreviewDbVersion;

  /// True if this version of the Oracle Database software is supported for
  /// Upgrade.
  ///
  /// Output only.
  core.bool? isUpgradeSupported;

  /// True if this version of the Oracle Database software supports pluggable
  /// databases.
  ///
  /// Output only.
  core.bool? supportsPdb;

  /// A valid Oracle Database version.
  ///
  /// Output only.
  core.String? version;

  DbVersionProperties({
    this.isLatestForMajorVersion,
    this.isPreviewDbVersion,
    this.isUpgradeSupported,
    this.supportsPdb,
    this.version,
  });

  DbVersionProperties.fromJson(core.Map json_)
    : this(
        isLatestForMajorVersion: json_['isLatestForMajorVersion'] as core.bool?,
        isPreviewDbVersion: json_['isPreviewDbVersion'] as core.bool?,
        isUpgradeSupported: json_['isUpgradeSupported'] as core.bool?,
        supportsPdb: json_['supportsPdb'] as core.bool?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isLatestForMajorVersion = this.isLatestForMajorVersion;
    final isPreviewDbVersion = this.isPreviewDbVersion;
    final isUpgradeSupported = this.isUpgradeSupported;
    final supportsPdb = this.supportsPdb;
    final version = this.version;
    return {
      'isLatestForMajorVersion': ?isLatestForMajorVersion,
      'isPreviewDbVersion': ?isPreviewDbVersion,
      'isUpgradeSupported': ?isUpgradeSupported,
      'supportsPdb': ?supportsPdb,
      'version': ?version,
    };
  }
}

/// Wrapper message for the value of a defined tag.
class DefinedTagValue {
  /// The tags within the namespace.
  core.Map<core.String, core.String>? tags;

  DefinedTagValue({this.tags});

  DefinedTagValue.fromJson(core.Map json_)
    : this(
        tags: (json_['tags'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final tags = this.tags;
    return {'tags': ?tags};
  }
}

/// The deployment diagnostic data.
class DeploymentDiagnosticData {
  /// The bucket name.
  ///
  /// Output only.
  core.String? bucket;

  /// The time diagnostic end.
  ///
  /// Output only.
  core.String? diagnosticEndTime;

  /// The time diagnostic start.
  ///
  /// Output only.
  core.String? diagnosticStartTime;

  /// The diagnostic state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DIAGNOSTIC_STATE_UNSPECIFIED" : The diagnostic state is unspecified.
  /// - "IN_PROGRESS" : The diagnostic is in progress.
  /// - "SUCCEEDED" : The diagnostic completed successfully.
  /// - "FAILED" : The diagnostic failed.
  core.String? diagnosticState;

  /// The namespace name.
  ///
  /// Output only.
  core.String? namespace;

  /// The object name.
  ///
  /// Output only.
  core.String? object;

  DeploymentDiagnosticData({
    this.bucket,
    this.diagnosticEndTime,
    this.diagnosticStartTime,
    this.diagnosticState,
    this.namespace,
    this.object,
  });

  DeploymentDiagnosticData.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        diagnosticEndTime: json_['diagnosticEndTime'] as core.String?,
        diagnosticStartTime: json_['diagnosticStartTime'] as core.String?,
        diagnosticState: json_['diagnosticState'] as core.String?,
        namespace: json_['namespace'] as core.String?,
        object: json_['object'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucket = this.bucket;
    final diagnosticEndTime = this.diagnosticEndTime;
    final diagnosticStartTime = this.diagnosticStartTime;
    final diagnosticState = this.diagnosticState;
    final namespace = this.namespace;
    final object = this.object;
    return {
      'bucket': ?bucket,
      'diagnosticEndTime': ?diagnosticEndTime,
      'diagnosticStartTime': ?diagnosticStartTime,
      'diagnosticState': ?diagnosticState,
      'namespace': ?namespace,
      'object': ?object,
    };
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The encryption key used to encrypt the Autonomous Database.
class EncryptionKey {
  /// The KMS key used to encrypt the Autonomous Database.
  ///
  /// This field is required if the provider is GOOGLE_MANAGED. The name of the
  /// KMS key resource in the following format:
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  ///
  /// Optional.
  core.String? kmsKey;

  /// The provider of the encryption key.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PROVIDER_UNSPECIFIED" : Default unspecified value.
  /// - "GOOGLE_MANAGED" : Google Managed KMS key, if selected, please provide
  /// the KMS key name.
  /// - "ORACLE_MANAGED" : Oracle Managed.
  core.String? provider;

  EncryptionKey({this.kmsKey, this.provider});

  EncryptionKey.fromJson(core.Map json_)
    : this(
        kmsKey: json_['kmsKey'] as core.String?,
        provider: json_['provider'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final kmsKey = this.kmsKey;
    final provider = this.provider;
    return {'kmsKey': ?kmsKey, 'provider': ?provider};
  }
}

/// The history of the encryption keys used to encrypt the Autonomous Database.
class EncryptionKeyHistoryEntry {
  /// The date and time when the encryption key was activated on the Autonomous
  /// Database..
  ///
  /// Output only.
  core.String? activationTime;

  /// The encryption key used to encrypt the Autonomous Database.
  ///
  /// Output only.
  EncryptionKey? encryptionKey;

  EncryptionKeyHistoryEntry({this.activationTime, this.encryptionKey});

  EncryptionKeyHistoryEntry.fromJson(core.Map json_)
    : this(
        activationTime: json_['activationTime'] as core.String?,
        encryptionKey: json_.containsKey('encryptionKey')
            ? EncryptionKey.fromJson(
                json_['encryptionKey'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final activationTime = this.activationTime;
    final encryptionKey = this.encryptionKey;
    return {'activationTime': ?activationTime, 'encryptionKey': ?encryptionKey};
  }
}

/// Details of the Entitlement resource.
class Entitlement {
  /// Details of the OCI Cloud Account.
  CloudAccountDetails? cloudAccountDetails;

  /// Google Cloud Marketplace order ID (aka entitlement ID)
  ///
  /// Output only.
  core.String? entitlementId;

  /// Identifier.
  ///
  /// The name of the Entitlement resource with the format:
  /// projects/{project}/locations/{region}/entitlements/{entitlement}
  core.String? name;

  /// Entitlement State.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "ACCOUNT_NOT_LINKED" : Account not linked.
  /// - "ACCOUNT_NOT_ACTIVE" : Account is linked but not active.
  /// - "ACTIVE" : Entitlement and Account are active.
  /// - "ACCOUNT_SUSPENDED" : Account is suspended.
  /// - "NOT_APPROVED_IN_PRIVATE_MARKETPLACE" : Entitlement is not approved in
  /// private marketplace.
  core.String? state;

  Entitlement({
    this.cloudAccountDetails,
    this.entitlementId,
    this.name,
    this.state,
  });

  Entitlement.fromJson(core.Map json_)
    : this(
        cloudAccountDetails: json_.containsKey('cloudAccountDetails')
            ? CloudAccountDetails.fromJson(
                json_['cloudAccountDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        entitlementId: json_['entitlementId'] as core.String?,
        name: json_['name'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudAccountDetails = this.cloudAccountDetails;
    final entitlementId = this.entitlementId;
    final name = this.name;
    final state = this.state;
    return {
      'cloudAccountDetails': ?cloudAccountDetails,
      'entitlementId': ?entitlementId,
      'name': ?name,
      'state': ?state,
    };
  }
}

/// ExadbVmCluster represents a cluster of VMs that are used to run Exadata
/// workloads.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/ExadbVmCluster/
class ExadbVmCluster {
  /// The name of the backup OdbSubnet associated with the ExadbVmCluster.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  ///
  /// Required. Immutable.
  core.String? backupOdbSubnet;

  /// The date and time that the ExadbVmCluster was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The display name for the ExadbVmCluster.
  ///
  /// The name does not have to be unique within your project. The name must be
  /// 1-255 characters long and can only contain alphanumeric characters.
  ///
  /// Required. Immutable.
  core.String? displayName;

  /// The ID of the subscription entitlement associated with the ExadbVmCluster.
  ///
  /// Output only.
  core.String? entitlementId;

  /// The GCP Oracle zone where Oracle ExadbVmCluster is hosted.
  ///
  /// Example: us-east4-b-r2. During creation, the system will pick the zone
  /// assigned to the ExascaleDbStorageVault.
  ///
  /// Output only. Immutable.
  core.String? gcpOracleZone;

  /// The identity connector details which will allow OCI to securely access the
  /// resources in the customer project.
  ///
  /// Output only.
  IdentityConnector? identityConnector;

  /// The labels or tags associated with the ExadbVmCluster.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the ExadbVmCluster resource in the following format:
  /// projects/{project}/locations/{region}/exadbVmClusters/{exadb_vm_cluster}
  core.String? name;

  /// The name of the OdbNetwork associated with the ExadbVmCluster.
  ///
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork
  /// of the OdbSubnet.
  ///
  /// Optional. Immutable.
  core.String? odbNetwork;

  /// The name of the OdbSubnet associated with the ExadbVmCluster for IP
  /// allocation.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  ///
  /// Required. Immutable.
  core.String? odbSubnet;

  /// The properties of the ExadbVmCluster.
  ///
  /// Required.
  ExadbVmClusterProperties? properties;

  ExadbVmCluster({
    this.backupOdbSubnet,
    this.createTime,
    this.displayName,
    this.entitlementId,
    this.gcpOracleZone,
    this.identityConnector,
    this.labels,
    this.name,
    this.odbNetwork,
    this.odbSubnet,
    this.properties,
  });

  ExadbVmCluster.fromJson(core.Map json_)
    : this(
        backupOdbSubnet: json_['backupOdbSubnet'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        identityConnector: json_.containsKey('identityConnector')
            ? IdentityConnector.fromJson(
                json_['identityConnector']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        odbNetwork: json_['odbNetwork'] as core.String?,
        odbSubnet: json_['odbSubnet'] as core.String?,
        properties: json_.containsKey('properties')
            ? ExadbVmClusterProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupOdbSubnet = this.backupOdbSubnet;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final entitlementId = this.entitlementId;
    final gcpOracleZone = this.gcpOracleZone;
    final identityConnector = this.identityConnector;
    final labels = this.labels;
    final name = this.name;
    final odbNetwork = this.odbNetwork;
    final odbSubnet = this.odbSubnet;
    final properties = this.properties;
    return {
      'backupOdbSubnet': ?backupOdbSubnet,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'identityConnector': ?identityConnector,
      'labels': ?labels,
      'name': ?name,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'properties': ?properties,
    };
  }
}

/// The properties of an ExadbVmCluster.
class ExadbVmClusterProperties {
  /// The number of additional ECPUs per node for an Exadata VM cluster on
  /// exascale infrastructure.
  ///
  /// Optional. Immutable.
  core.int? additionalEcpuCountPerNode;

  /// The cluster name for Exascale vm cluster.
  ///
  /// The cluster name must begin with an alphabetic character and may contain
  /// hyphens(-) but can not contain underscores(_). It should be not more than
  /// 11 characters and is not case sensitive. OCI Cluster name.
  ///
  /// Optional. Immutable.
  core.String? clusterName;

  /// Indicates user preference for data collection options.
  ///
  /// Optional. Immutable.
  DataCollectionOptionsCommon? dataCollectionOptions;

  /// The number of ECPUs enabled per node for an exadata vm cluster on exascale
  /// infrastructure.
  ///
  /// Required. Immutable.
  core.int? enabledEcpuCountPerNode;

  /// The name of ExascaleDbStorageVault associated with the ExadbVmCluster.
  ///
  /// It can refer to an existing ExascaleDbStorageVault. Or a new one can be
  /// created during the ExadbVmCluster creation (requires
  /// storage_vault_properties to be set). Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  ///
  /// Required. Immutable.
  core.String? exascaleDbStorageVault;

  /// The Oracle Grid Infrastructure (GI) software version.
  ///
  /// Output only.
  core.String? giVersion;

  /// Grid Infrastructure Version.
  ///
  /// Required. Immutable.
  core.String? gridImageId;

  /// The hostname of the ExadbVmCluster.
  ///
  /// Output only.
  core.String? hostname;

  /// Prefix for VM cluster host names.
  ///
  /// Required. Immutable.
  core.String? hostnamePrefix;

  /// The license type of the ExadbVmCluster.
  ///
  /// Optional. Immutable.
  /// Possible string values are:
  /// - "LICENSE_MODEL_UNSPECIFIED" : Unspecified.
  /// - "LICENSE_INCLUDED" : Default is license included.
  /// - "BRING_YOUR_OWN_LICENSE" : Bring your own license.
  core.String? licenseModel;

  /// State of the cluster.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "EXADB_VM_CLUSTER_LIFECYCLE_STATE_UNSPECIFIED" : Default unspecified
  /// value.
  /// - "PROVISIONING" : Indicates that the resource is in provisioning state.
  /// - "AVAILABLE" : Indicates that the resource is in available state.
  /// - "UPDATING" : Indicates that the resource is in updating state.
  /// - "TERMINATING" : Indicates that the resource is in terminating state.
  /// - "TERMINATED" : Indicates that the resource is in terminated state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  /// - "MAINTENANCE_IN_PROGRESS" : Indicates that the resource is in
  /// maintenance in progress state.
  core.String? lifecycleState;

  /// Memory per VM (GB) (Read-only): Shows the amount of memory allocated to
  /// each VM.
  ///
  /// Memory is calculated based on 2.75 GB per Total ECPUs.
  ///
  /// Output only.
  core.int? memorySizeGb;

  /// The number of nodes/VMs in the ExadbVmCluster.
  ///
  /// Required.
  core.int? nodeCount;

  /// Deep link to the OCI console to view this resource.
  ///
  /// Output only.
  core.String? ociUri;

  /// SCAN listener port - TCP
  ///
  /// Optional. Immutable.
  core.int? scanListenerPortTcp;

  /// The shape attribute of the VM cluster.
  ///
  /// The type of Exascale storage used for Exadata VM cluster. The default is
  /// SMART_STORAGE which supports Oracle Database 23ai and later
  ///
  /// Required. Immutable.
  /// Possible string values are:
  /// - "SHAPE_ATTRIBUTE_UNSPECIFIED" : Default unspecified value.
  /// - "SMART_STORAGE" : Indicates that the resource is in smart storage.
  /// - "BLOCK_STORAGE" : Indicates that the resource is in block storage.
  core.String? shapeAttribute;

  /// The SSH public keys for the ExadbVmCluster.
  ///
  /// Required. Immutable.
  core.List<core.String>? sshPublicKeys;

  /// The time zone of the ExadbVmCluster.
  ///
  /// Optional. Immutable.
  TimeZone? timeZone;

  /// Total storage details for the ExadbVmCluster.
  ///
  /// Required. Immutable.
  ExadbVmClusterStorageDetails? vmFileSystemStorage;

  ExadbVmClusterProperties({
    this.additionalEcpuCountPerNode,
    this.clusterName,
    this.dataCollectionOptions,
    this.enabledEcpuCountPerNode,
    this.exascaleDbStorageVault,
    this.giVersion,
    this.gridImageId,
    this.hostname,
    this.hostnamePrefix,
    this.licenseModel,
    this.lifecycleState,
    this.memorySizeGb,
    this.nodeCount,
    this.ociUri,
    this.scanListenerPortTcp,
    this.shapeAttribute,
    this.sshPublicKeys,
    this.timeZone,
    this.vmFileSystemStorage,
  });

  ExadbVmClusterProperties.fromJson(core.Map json_)
    : this(
        additionalEcpuCountPerNode:
            json_['additionalEcpuCountPerNode'] as core.int?,
        clusterName: json_['clusterName'] as core.String?,
        dataCollectionOptions: json_.containsKey('dataCollectionOptions')
            ? DataCollectionOptionsCommon.fromJson(
                json_['dataCollectionOptions']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        enabledEcpuCountPerNode: json_['enabledEcpuCountPerNode'] as core.int?,
        exascaleDbStorageVault: json_['exascaleDbStorageVault'] as core.String?,
        giVersion: json_['giVersion'] as core.String?,
        gridImageId: json_['gridImageId'] as core.String?,
        hostname: json_['hostname'] as core.String?,
        hostnamePrefix: json_['hostnamePrefix'] as core.String?,
        licenseModel: json_['licenseModel'] as core.String?,
        lifecycleState: json_['lifecycleState'] as core.String?,
        memorySizeGb: json_['memorySizeGb'] as core.int?,
        nodeCount: json_['nodeCount'] as core.int?,
        ociUri: json_['ociUri'] as core.String?,
        scanListenerPortTcp: json_['scanListenerPortTcp'] as core.int?,
        shapeAttribute: json_['shapeAttribute'] as core.String?,
        sshPublicKeys: (json_['sshPublicKeys'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        timeZone: json_.containsKey('timeZone')
            ? TimeZone.fromJson(
                json_['timeZone'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vmFileSystemStorage: json_.containsKey('vmFileSystemStorage')
            ? ExadbVmClusterStorageDetails.fromJson(
                json_['vmFileSystemStorage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalEcpuCountPerNode = this.additionalEcpuCountPerNode;
    final clusterName = this.clusterName;
    final dataCollectionOptions = this.dataCollectionOptions;
    final enabledEcpuCountPerNode = this.enabledEcpuCountPerNode;
    final exascaleDbStorageVault = this.exascaleDbStorageVault;
    final giVersion = this.giVersion;
    final gridImageId = this.gridImageId;
    final hostname = this.hostname;
    final hostnamePrefix = this.hostnamePrefix;
    final licenseModel = this.licenseModel;
    final lifecycleState = this.lifecycleState;
    final memorySizeGb = this.memorySizeGb;
    final nodeCount = this.nodeCount;
    final ociUri = this.ociUri;
    final scanListenerPortTcp = this.scanListenerPortTcp;
    final shapeAttribute = this.shapeAttribute;
    final sshPublicKeys = this.sshPublicKeys;
    final timeZone = this.timeZone;
    final vmFileSystemStorage = this.vmFileSystemStorage;
    return {
      'additionalEcpuCountPerNode': ?additionalEcpuCountPerNode,
      'clusterName': ?clusterName,
      'dataCollectionOptions': ?dataCollectionOptions,
      'enabledEcpuCountPerNode': ?enabledEcpuCountPerNode,
      'exascaleDbStorageVault': ?exascaleDbStorageVault,
      'giVersion': ?giVersion,
      'gridImageId': ?gridImageId,
      'hostname': ?hostname,
      'hostnamePrefix': ?hostnamePrefix,
      'licenseModel': ?licenseModel,
      'lifecycleState': ?lifecycleState,
      'memorySizeGb': ?memorySizeGb,
      'nodeCount': ?nodeCount,
      'ociUri': ?ociUri,
      'scanListenerPortTcp': ?scanListenerPortTcp,
      'shapeAttribute': ?shapeAttribute,
      'sshPublicKeys': ?sshPublicKeys,
      'timeZone': ?timeZone,
      'vmFileSystemStorage': ?vmFileSystemStorage,
    };
  }
}

/// The storage allocation for the exadbvmcluster, in gigabytes (GB).
class ExadbVmClusterStorageDetails {
  /// The storage allocation for the exadbvmcluster per node, in gigabytes (GB).
  ///
  /// This field is used to calculate the total storage allocation for the
  /// exadbvmcluster.
  ///
  /// Required.
  core.int? sizeInGbsPerNode;

  ExadbVmClusterStorageDetails({this.sizeInGbsPerNode});

  ExadbVmClusterStorageDetails.fromJson(core.Map json_)
    : this(sizeInGbsPerNode: json_['sizeInGbsPerNode'] as core.int?);

  core.Map<core.String, core.dynamic> toJson() {
    final sizeInGbsPerNode = this.sizeInGbsPerNode;
    return {'sizeInGbsPerNode': ?sizeInGbsPerNode};
  }
}

/// Details of the Exascale configuration for the Exadata Infrastructure.
class ExascaleConfig {
  /// Available storage size for Exascale in GBs.
  ///
  /// Output only.
  core.int? availableStorageSizeGb;

  /// Available storage size for VM storage on Exascale in GBs.
  ///
  /// Output only.
  core.int? availableVmStorageSizeGb;

  /// Total storage size needed for Exascale in GBs.
  ///
  /// Output only.
  core.int? totalStorageSizeGb;

  /// Storage size needed for VM storage on Exascale in GBs.
  ///
  /// Output only.
  core.int? totalVmStorageSizeGb;

  ExascaleConfig({
    this.availableStorageSizeGb,
    this.availableVmStorageSizeGb,
    this.totalStorageSizeGb,
    this.totalVmStorageSizeGb,
  });

  ExascaleConfig.fromJson(core.Map json_)
    : this(
        availableStorageSizeGb: json_['availableStorageSizeGb'] as core.int?,
        availableVmStorageSizeGb:
            json_['availableVmStorageSizeGb'] as core.int?,
        totalStorageSizeGb: json_['totalStorageSizeGb'] as core.int?,
        totalVmStorageSizeGb: json_['totalVmStorageSizeGb'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availableStorageSizeGb = this.availableStorageSizeGb;
    final availableVmStorageSizeGb = this.availableVmStorageSizeGb;
    final totalStorageSizeGb = this.totalStorageSizeGb;
    final totalVmStorageSizeGb = this.totalVmStorageSizeGb;
    return {
      'availableStorageSizeGb': ?availableStorageSizeGb,
      'availableVmStorageSizeGb': ?availableVmStorageSizeGb,
      'totalStorageSizeGb': ?totalStorageSizeGb,
      'totalVmStorageSizeGb': ?totalVmStorageSizeGb,
    };
  }
}

/// The storage details of the ExascaleDbStorageVault.
class ExascaleDbStorageDetails {
  /// The available storage capacity for the ExascaleDbStorageVault, in
  /// gigabytes (GB).
  ///
  /// Output only.
  core.int? availableSizeGbs;

  /// The total storage allocation for the ExascaleDbStorageVault, in gigabytes
  /// (GB).
  ///
  /// Required.
  core.int? totalSizeGbs;

  ExascaleDbStorageDetails({this.availableSizeGbs, this.totalSizeGbs});

  ExascaleDbStorageDetails.fromJson(core.Map json_)
    : this(
        availableSizeGbs: json_['availableSizeGbs'] as core.int?,
        totalSizeGbs: json_['totalSizeGbs'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availableSizeGbs = this.availableSizeGbs;
    final totalSizeGbs = this.totalSizeGbs;
    return {
      'availableSizeGbs': ?availableSizeGbs,
      'totalSizeGbs': ?totalSizeGbs,
    };
  }
}

/// ExascaleDbStorageVault represents a storage vault exadb vm cluster resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/ExascaleDbStorageVault/
class ExascaleDbStorageVault {
  /// The date and time when the ExascaleDbStorageVault was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The display name for the ExascaleDbStorageVault.
  ///
  /// The name does not have to be unique within your project. The name must be
  /// 1-255 characters long and can only contain alphanumeric characters.
  ///
  /// Required.
  core.String? displayName;

  /// The ID of the subscription entitlement associated with the
  /// ExascaleDbStorageVault.
  ///
  /// Output only.
  core.String? entitlementId;

  /// The Exadata Infrastructure resource on which ExascaleDbStorageVault
  /// resource is created, in the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastuctures/{cloud_extradata_infrastructure}
  ///
  /// Optional.
  core.String? exadataInfrastructure;

  /// The GCP Oracle zone where Oracle ExascaleDbStorageVault is hosted.
  ///
  /// Example: us-east4-b-r2. If not specified, the system will pick a zone
  /// based on availability.
  ///
  /// Optional.
  core.String? gcpOracleZone;

  /// The labels or tags associated with the ExascaleDbStorageVault.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The resource name of the ExascaleDbStorageVault. Format:
  /// projects/{project}/locations/{location}/exascaleDbStorageVaults/{exascale_db_storage_vault}
  core.String? name;

  /// The properties of the ExascaleDbStorageVault.
  ///
  /// Required.
  ExascaleDbStorageVaultProperties? properties;

  ExascaleDbStorageVault({
    this.createTime,
    this.displayName,
    this.entitlementId,
    this.exadataInfrastructure,
    this.gcpOracleZone,
    this.labels,
    this.name,
    this.properties,
  });

  ExascaleDbStorageVault.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        exadataInfrastructure: json_['exadataInfrastructure'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        properties: json_.containsKey('properties')
            ? ExascaleDbStorageVaultProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final entitlementId = this.entitlementId;
    final exadataInfrastructure = this.exadataInfrastructure;
    final gcpOracleZone = this.gcpOracleZone;
    final labels = this.labels;
    final name = this.name;
    final properties = this.properties;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'entitlementId': ?entitlementId,
      'exadataInfrastructure': ?exadataInfrastructure,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'name': ?name,
      'properties': ?properties,
    };
  }
}

/// The properties of the ExascaleDbStorageVault.
///
/// next ID: 12
class ExascaleDbStorageVaultProperties {
  /// The size of additional flash cache in percentage of high capacity database
  /// storage.
  ///
  /// Optional.
  core.int? additionalFlashCachePercent;

  /// The shape attributes of the VM clusters attached to the
  /// ExascaleDbStorageVault.
  ///
  /// Output only.
  core.List<core.String>? attachedShapeAttributes;

  /// The shape attributes available for the VM clusters to be attached to the
  /// ExascaleDbStorageVault.
  ///
  /// Output only.
  core.List<core.String>? availableShapeAttributes;

  /// The description of the ExascaleDbStorageVault.
  ///
  /// Optional.
  core.String? description;

  /// The storage details of the ExascaleDbStorageVault.
  ///
  /// Required.
  ExascaleDbStorageDetails? exascaleDbStorageDetails;

  /// Deep link to the OCI console to view this resource.
  ///
  /// Output only.
  core.String? ociUri;

  /// The OCID for the ExascaleDbStorageVault.
  ///
  /// Output only.
  core.String? ocid;

  /// The state of the ExascaleDbStorageVault.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the ExascaleDbStorageVault is
  /// unspecified.
  /// - "PROVISIONING" : The ExascaleDbStorageVault is being provisioned.
  /// - "AVAILABLE" : The ExascaleDbStorageVault is available.
  /// - "UPDATING" : The ExascaleDbStorageVault is being updated.
  /// - "TERMINATING" : The ExascaleDbStorageVault is being deleted.
  /// - "TERMINATED" : The ExascaleDbStorageVault has been deleted.
  /// - "FAILED" : The ExascaleDbStorageVault has failed.
  core.String? state;

  /// The time zone of the ExascaleDbStorageVault.
  ///
  /// Output only.
  TimeZone? timeZone;

  /// The number of VM clusters associated with the ExascaleDbStorageVault.
  ///
  /// Output only.
  core.int? vmClusterCount;

  /// The list of VM cluster OCIDs associated with the ExascaleDbStorageVault.
  ///
  /// Output only.
  core.List<core.String>? vmClusterIds;

  ExascaleDbStorageVaultProperties({
    this.additionalFlashCachePercent,
    this.attachedShapeAttributes,
    this.availableShapeAttributes,
    this.description,
    this.exascaleDbStorageDetails,
    this.ociUri,
    this.ocid,
    this.state,
    this.timeZone,
    this.vmClusterCount,
    this.vmClusterIds,
  });

  ExascaleDbStorageVaultProperties.fromJson(core.Map json_)
    : this(
        additionalFlashCachePercent:
            json_['additionalFlashCachePercent'] as core.int?,
        attachedShapeAttributes:
            (json_['attachedShapeAttributes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        availableShapeAttributes:
            (json_['availableShapeAttributes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        description: json_['description'] as core.String?,
        exascaleDbStorageDetails: json_.containsKey('exascaleDbStorageDetails')
            ? ExascaleDbStorageDetails.fromJson(
                json_['exascaleDbStorageDetails']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ociUri: json_['ociUri'] as core.String?,
        ocid: json_['ocid'] as core.String?,
        state: json_['state'] as core.String?,
        timeZone: json_.containsKey('timeZone')
            ? TimeZone.fromJson(
                json_['timeZone'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        vmClusterCount: json_['vmClusterCount'] as core.int?,
        vmClusterIds: (json_['vmClusterIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalFlashCachePercent = this.additionalFlashCachePercent;
    final attachedShapeAttributes = this.attachedShapeAttributes;
    final availableShapeAttributes = this.availableShapeAttributes;
    final description = this.description;
    final exascaleDbStorageDetails = this.exascaleDbStorageDetails;
    final ociUri = this.ociUri;
    final ocid = this.ocid;
    final state = this.state;
    final timeZone = this.timeZone;
    final vmClusterCount = this.vmClusterCount;
    final vmClusterIds = this.vmClusterIds;
    return {
      'additionalFlashCachePercent': ?additionalFlashCachePercent,
      'attachedShapeAttributes': ?attachedShapeAttributes,
      'availableShapeAttributes': ?availableShapeAttributes,
      'description': ?description,
      'exascaleDbStorageDetails': ?exascaleDbStorageDetails,
      'ociUri': ?ociUri,
      'ocid': ?ocid,
      'state': ?state,
      'timeZone': ?timeZone,
      'vmClusterCount': ?vmClusterCount,
      'vmClusterIds': ?vmClusterIds,
    };
  }
}

/// The request for `OracleDatabase.FailoverAutonomousDatabase`.
class FailoverAutonomousDatabaseRequest {
  /// The peer database name to fail over to.
  ///
  /// Required for cross-region standby, and must be omitted for in-region Data
  /// Guard.
  ///
  /// Optional.
  core.String? peerAutonomousDatabase;

  FailoverAutonomousDatabaseRequest({this.peerAutonomousDatabase});

  FailoverAutonomousDatabaseRequest.fromJson(core.Map json_)
    : this(
        peerAutonomousDatabase: json_['peerAutonomousDatabase'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final peerAutonomousDatabase = this.peerAutonomousDatabase;
    return {'peerAutonomousDatabase': ?peerAutonomousDatabase};
  }
}

/// The request for `AutonomousDatabase.GenerateWallet`.
class GenerateAutonomousDatabaseWalletRequest {
  /// True when requesting regional connection strings in PDB connect info,
  /// applicable to cross-region Data Guard only.
  ///
  /// Optional.
  core.bool? isRegional;

  /// The password used to encrypt the keys inside the wallet.
  ///
  /// The password must be a minimum of 8 characters.
  ///
  /// Required.
  core.String? password;

  /// The type of wallet generation for the Autonomous Database.
  ///
  /// The default value is SINGLE.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GENERATE_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "ALL" : Used to generate wallet for all databases in the region.
  /// - "SINGLE" : Used to generate wallet for a single database.
  core.String? type;

  GenerateAutonomousDatabaseWalletRequest({
    this.isRegional,
    this.password,
    this.type,
  });

  GenerateAutonomousDatabaseWalletRequest.fromJson(core.Map json_)
    : this(
        isRegional: json_['isRegional'] as core.bool?,
        password: json_['password'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final isRegional = this.isRegional;
    final password = this.password;
    final type = this.type;
    return {'isRegional': ?isRegional, 'password': ?password, 'type': ?type};
  }
}

/// The response for `AutonomousDatabase.GenerateWallet`.
class GenerateAutonomousDatabaseWalletResponse {
  /// The base64 encoded wallet files.
  ///
  /// Output only.
  core.String? archiveContent;
  core.List<core.int> get archiveContentAsBytes =>
      convert.base64.decode(archiveContent!);

  set archiveContentAsBytes(core.List<core.int> bytes_) {
    archiveContent = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  GenerateAutonomousDatabaseWalletResponse({this.archiveContent});

  GenerateAutonomousDatabaseWalletResponse.fromJson(core.Map json_)
    : this(archiveContent: json_['archiveContent'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final archiveContent = this.archiveContent;
    return {'archiveContent': ?archiveContent};
  }
}

/// Details of the Oracle Grid Infrastructure (GI) version resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/GiVersionSummary/
class GiVersion {
  /// Identifier.
  ///
  /// The name of the Oracle Grid Infrastructure (GI) version resource with the
  /// format: projects/{project}/locations/{region}/giVersions/{gi_versions}
  core.String? name;

  /// version
  ///
  /// Optional.
  core.String? version;

  GiVersion({this.name, this.version});

  GiVersion.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final version = this.version;
    return {'name': ?name, 'version': ?version};
  }
}

/// The Glue Iceberg catalog.
class GlueIcebergCatalog {
  /// The catalog ID of Glue.
  ///
  /// Required.
  core.String? glueId;

  GlueIcebergCatalog({this.glueId});

  GlueIcebergCatalog.fromJson(core.Map json_)
    : this(glueId: json_['glueId'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final glueId = this.glueId;
    return {'glueId': ?glueId};
  }
}

/// The properties of GoldengateAmazonKinesisConnection.
class GoldengateAmazonKinesisConnectionProperties {
  /// Access key ID to access the Amazon Kinesis.
  ///
  /// Optional.
  core.String? accessKeyId;

  /// The name of the AWS region.
  ///
  /// If not provided, Goldengate will default to 'us-west-1'.
  ///
  /// Optional.
  core.String? awsRegion;

  /// The endpoint URL of the Amazon Kinesis service.
  ///
  /// e.g.: 'https://kinesis.us-east-1.amazonaws.com' If not provided,
  /// Goldengate will default to 'https://kinesis..amazonaws.com'.
  ///
  /// Optional.
  core.String? endpoint;

  /// Secret access key to access the Amazon Kinesis.
  ///
  /// Optional.
  core.String? secretAccessKeySecret;

  /// The technology type of AmazonKinesisConnection.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateAmazonKinesisConnectionProperties({
    this.accessKeyId,
    this.awsRegion,
    this.endpoint,
    this.secretAccessKeySecret,
    this.technologyType,
  });

  GoldengateAmazonKinesisConnectionProperties.fromJson(core.Map json_)
    : this(
        accessKeyId: json_['accessKeyId'] as core.String?,
        awsRegion: json_['awsRegion'] as core.String?,
        endpoint: json_['endpoint'] as core.String?,
        secretAccessKeySecret: json_['secretAccessKeySecret'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessKeyId = this.accessKeyId;
    final awsRegion = this.awsRegion;
    final endpoint = this.endpoint;
    final secretAccessKeySecret = this.secretAccessKeySecret;
    final technologyType = this.technologyType;
    return {
      'accessKeyId': ?accessKeyId,
      'awsRegion': ?awsRegion,
      'endpoint': ?endpoint,
      'secretAccessKeySecret': ?secretAccessKeySecret,
      'technologyType': ?technologyType,
    };
  }
}

/// The properties of GoldengateAmazonRedshiftConnection.
class GoldengateAmazonRedshiftConnectionProperties {
  /// Connection URL.
  ///
  /// e.g.:
  /// 'jdbc:redshift://aws-redshift-instance.aaaaaaaaaaaa.us-east-2.redshift.amazonaws.com:5439/mydb'
  ///
  /// Optional.
  core.String? connectionUrl;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses for Amazon Redshift connection in
  /// plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses for Amazon Redshift connection. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The technology type of AmazonRedshiftConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  ///
  /// Optional.
  core.String? username;

  GoldengateAmazonRedshiftConnectionProperties({
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.technologyType,
    this.username,
  });

  GoldengateAmazonRedshiftConnectionProperties.fromJson(core.Map json_)
    : this(
        connectionUrl: json_['connectionUrl'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionUrl = this.connectionUrl;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'connectionUrl': ?connectionUrl,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateAmazonS3Connection.
class GoldengateAmazonS3ConnectionProperties {
  /// Access key ID to access the Amazon S3 bucket.
  ///
  /// Optional.
  core.String? accessKeyId;

  /// The Amazon Endpoint for S3.
  ///
  /// Optional.
  core.String? endpoint;

  /// The name of the AWS region where the bucket is created.
  ///
  /// Optional.
  core.String? region;

  /// Secret access key to access the Amazon S3 bucket.
  ///
  /// Optional.
  core.String? secretAccessKeySecret;

  /// The technology type of AmazonS3Connection.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateAmazonS3ConnectionProperties({
    this.accessKeyId,
    this.endpoint,
    this.region,
    this.secretAccessKeySecret,
    this.technologyType,
  });

  GoldengateAmazonS3ConnectionProperties.fromJson(core.Map json_)
    : this(
        accessKeyId: json_['accessKeyId'] as core.String?,
        endpoint: json_['endpoint'] as core.String?,
        region: json_['region'] as core.String?,
        secretAccessKeySecret: json_['secretAccessKeySecret'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessKeyId = this.accessKeyId;
    final endpoint = this.endpoint;
    final region = this.region;
    final secretAccessKeySecret = this.secretAccessKeySecret;
    final technologyType = this.technologyType;
    return {
      'accessKeyId': ?accessKeyId,
      'endpoint': ?endpoint,
      'region': ?region,
      'secretAccessKeySecret': ?secretAccessKeySecret,
      'technologyType': ?technologyType,
    };
  }
}

/// The properties of GoldengateAzureDataLakeStorageConnection.
class GoldengateAzureDataLakeStorageConnectionProperties {
  /// Sets the Azure storage account name.
  ///
  /// Optional.
  core.String? account;

  /// Azure storage account key.
  ///
  /// This property is required when 'authentication_type' is set to
  /// 'SHARED_KEY'.
  ///
  /// Optional.
  core.String? accountKeySecret;

  /// Authentication mechanism to access Azure Data Lake Storage.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTHENTICATION_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "SHARED_KEY" : Shared key authentication.
  /// - "SHARED_ACCESS_SIGNATURE" : Shared access signature authentication.
  /// - "AZURE_ACTIVE_DIRECTORY" : Azure active directory authentication.
  core.String? authenticationType;

  /// The endpoint used for authentication with Microsoft Entra ID (formerly
  /// Azure Active Directory).
  ///
  /// Default value: https://login.microsoftonline.com
  ///
  /// Optional.
  core.String? azureAuthorityHost;

  /// Azure tenant ID of the application.
  ///
  /// This property is required when 'authentication_type' is set to
  /// 'AZURE_ACTIVE_DIRECTORY'.
  ///
  /// Optional.
  core.String? azureTenantId;

  /// Azure client ID of the application.
  ///
  /// This property is required when 'authentication_type' is set to
  /// 'AZURE_ACTIVE_DIRECTORY'.
  ///
  /// Optional.
  core.String? clientId;

  /// Azure client secret (aka application password) for authentication.
  ///
  /// Optional.
  core.String? clientSecret;

  /// Azure Storage service endpoint.
  ///
  /// e.g: https://test.blob.core.windows.net
  ///
  /// Optional.
  core.String? endpoint;

  /// Credential that uses a shared access signature (SAS) to authenticate to an
  /// Azure Service.
  ///
  /// Optional.
  core.String? sasTokenSecret;

  /// The technology type of AzureDataLakeStorageConnection.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateAzureDataLakeStorageConnectionProperties({
    this.account,
    this.accountKeySecret,
    this.authenticationType,
    this.azureAuthorityHost,
    this.azureTenantId,
    this.clientId,
    this.clientSecret,
    this.endpoint,
    this.sasTokenSecret,
    this.technologyType,
  });

  GoldengateAzureDataLakeStorageConnectionProperties.fromJson(core.Map json_)
    : this(
        account: json_['account'] as core.String?,
        accountKeySecret: json_['accountKeySecret'] as core.String?,
        authenticationType: json_['authenticationType'] as core.String?,
        azureAuthorityHost: json_['azureAuthorityHost'] as core.String?,
        azureTenantId: json_['azureTenantId'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        endpoint: json_['endpoint'] as core.String?,
        sasTokenSecret: json_['sasTokenSecret'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final account = this.account;
    final accountKeySecret = this.accountKeySecret;
    final authenticationType = this.authenticationType;
    final azureAuthorityHost = this.azureAuthorityHost;
    final azureTenantId = this.azureTenantId;
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final endpoint = this.endpoint;
    final sasTokenSecret = this.sasTokenSecret;
    final technologyType = this.technologyType;
    return {
      'account': ?account,
      'accountKeySecret': ?accountKeySecret,
      'authenticationType': ?authenticationType,
      'azureAuthorityHost': ?azureAuthorityHost,
      'azureTenantId': ?azureTenantId,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'endpoint': ?endpoint,
      'sasTokenSecret': ?sasTokenSecret,
      'technologyType': ?technologyType,
    };
  }
}

/// The properties of GoldengateAzureSynapseAnalyticsConnection.
class GoldengateAzureSynapseAnalyticsConnectionProperties {
  /// JDBC connection string.
  ///
  /// e.g.:
  /// 'jdbc:sqlserver://.sql.azuresynapse.net:1433;database=;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.sql.azuresynapse.net;loginTimeout=300;'
  ///
  /// Optional.
  core.String? connectionString;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses for Azure Synapse Analytics connection
  /// in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses for Azure Synapse Analytics connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The technology type of AzureSynapseAnalyticsConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  ///
  /// Optional.
  core.String? username;

  GoldengateAzureSynapseAnalyticsConnectionProperties({
    this.connectionString,
    this.password,
    this.passwordSecretVersion,
    this.technologyType,
    this.username,
  });

  GoldengateAzureSynapseAnalyticsConnectionProperties.fromJson(core.Map json_)
    : this(
        connectionString: json_['connectionString'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionString = this.connectionString;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'connectionString': ?connectionString,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// The backup schedule of the GoldengateDeployment.
class GoldengateBackupSchedule {
  /// The timestamp of when the backup was scheduled.
  ///
  /// Output only.
  core.String? backupScheduledTime;

  /// The bucket name.
  ///
  /// Output only.
  core.String? bucket;

  /// The compartment id.
  ///
  /// Output only.
  core.String? compartmentId;

  /// The frequency backup scheduled.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "FREQUENCY_BACKUP_SCHEDULED_UNSPECIFIED" : The frequency backup
  /// scheduled is unspecified.
  /// - "DAILY" : The frequency backup scheduled is daily.
  /// - "WEEKLY" : The frequency backup scheduled is weekly.
  /// - "MONTHLY" : The frequency backup scheduled is monthly.
  core.String? frequencyBackupScheduled;

  /// If metadata only.
  ///
  /// Output only.
  core.bool? metadataOnly;

  /// The namespace name.
  ///
  /// Output only.
  core.String? namespace;

  GoldengateBackupSchedule({
    this.backupScheduledTime,
    this.bucket,
    this.compartmentId,
    this.frequencyBackupScheduled,
    this.metadataOnly,
    this.namespace,
  });

  GoldengateBackupSchedule.fromJson(core.Map json_)
    : this(
        backupScheduledTime: json_['backupScheduledTime'] as core.String?,
        bucket: json_['bucket'] as core.String?,
        compartmentId: json_['compartmentId'] as core.String?,
        frequencyBackupScheduled:
            json_['frequencyBackupScheduled'] as core.String?,
        metadataOnly: json_['metadataOnly'] as core.bool?,
        namespace: json_['namespace'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupScheduledTime = this.backupScheduledTime;
    final bucket = this.bucket;
    final compartmentId = this.compartmentId;
    final frequencyBackupScheduled = this.frequencyBackupScheduled;
    final metadataOnly = this.metadataOnly;
    final namespace = this.namespace;
    return {
      'backupScheduledTime': ?backupScheduledTime,
      'bucket': ?bucket,
      'compartmentId': ?compartmentId,
      'frequencyBackupScheduled': ?frequencyBackupScheduled,
      'metadataOnly': ?metadataOnly,
      'namespace': ?namespace,
    };
  }
}

/// Details of the GoldengateConnection resource.
class GoldengateConnection {
  /// The date and time that the GoldengateConnection was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The ID of the subscription entitlement associated with the
  /// GoldengateConnection.
  ///
  /// Output only.
  core.String? entitlementId;

  /// The GCP Oracle zone where Oracle GoldengateConnection is hosted.
  ///
  /// Example: us-east4-b-r2. If not specified, the system will pick a zone
  /// based on availability.
  ///
  /// Optional.
  core.String? gcpOracleZone;

  /// The labels or tags associated with the GoldengateConnection.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the GoldengateConnection resource in the following format:
  /// projects/{project}/locations/{region}/goldengateConnections/{goldengate_connection}
  core.String? name;

  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  ///
  /// Output only.
  core.String? ociUrl;

  /// The name of the OdbNetwork associated with the GoldengateConnection.
  ///
  /// The format is
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}. It is
  /// optional but if specified, this should match the parent ODBNetwork of the
  /// OdbSubnet.
  ///
  /// Optional.
  core.String? odbNetwork;

  /// The name of the OdbSubnet associated with the GoldengateConnection for IP
  /// allocation.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  ///
  /// Optional.
  core.String? odbSubnet;

  /// The properties of the GoldengateConnection.
  ///
  /// Required.
  GoldengateConnectionProperties? properties;

  GoldengateConnection({
    this.createTime,
    this.entitlementId,
    this.gcpOracleZone,
    this.labels,
    this.name,
    this.ociUrl,
    this.odbNetwork,
    this.odbSubnet,
    this.properties,
  });

  GoldengateConnection.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        ociUrl: json_['ociUrl'] as core.String?,
        odbNetwork: json_['odbNetwork'] as core.String?,
        odbSubnet: json_['odbSubnet'] as core.String?,
        properties: json_.containsKey('properties')
            ? GoldengateConnectionProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final entitlementId = this.entitlementId;
    final gcpOracleZone = this.gcpOracleZone;
    final labels = this.labels;
    final name = this.name;
    final ociUrl = this.ociUrl;
    final odbNetwork = this.odbNetwork;
    final odbSubnet = this.odbSubnet;
    final properties = this.properties;
    return {
      'createTime': ?createTime,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'name': ?name,
      'ociUrl': ?ociUrl,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'properties': ?properties,
    };
  }
}

/// Represents the metadata of a Goldengate Connection Assignment.
class GoldengateConnectionAssignment {
  /// The time when the connection assignment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The display name for the GoldengateConnectionAssignment.
  ///
  /// Optional.
  core.String? displayName;

  /// The OCID of the entitlement linked to this resource.
  ///
  /// Output only.
  core.String? entitlementId;

  /// The labels or tags associated with the GoldengateConnectionAssignment.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the GoldengateConnectionAssignment resource in the following
  /// format:
  /// projects/{project}/locations/{region}/goldengateConnectionAssignments/{goldengate_connection_assignment}
  core.String? name;

  /// The properties of the GoldengateConnectionAssignment.
  ///
  /// Required.
  GoldengateConnectionAssignmentProperties? properties;

  GoldengateConnectionAssignment({
    this.createTime,
    this.displayName,
    this.entitlementId,
    this.labels,
    this.name,
    this.properties,
  });

  GoldengateConnectionAssignment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        properties: json_.containsKey('properties')
            ? GoldengateConnectionAssignmentProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final entitlementId = this.entitlementId;
    final labels = this.labels;
    final name = this.name;
    final properties = this.properties;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'entitlementId': ?entitlementId,
      'labels': ?labels,
      'name': ?name,
      'properties': ?properties,
    };
  }
}

/// The properties of a GoldengateConnectionAssignment.
class GoldengateConnectionAssignmentProperties {
  /// Credential store alias.
  ///
  /// Output only.
  core.String? alias;

  /// The GoldengateConnection resource to be assigned.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/goldengateConnections/{goldengate_connection}
  ///
  /// Required.
  core.String? goldengateConnection;

  /// The GoldenGateDeployment to assign the connection to.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}
  ///
  /// Required.
  core.String? goldengateDeployment;

  /// The
  /// [OCID](https://docs.cloud.oracle.com/Content/General/Concepts/identifiers.htm)
  /// of the connection assignment being referenced.
  ///
  /// Output only.
  core.String? ocid;

  /// The lifecycle state of the connection assignment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Lifecycle state is unspecified.
  /// - "CREATING" : Connection assignment is being created.
  /// - "ACTIVE" : Connection assignment is active.
  /// - "FAILED" : Connection assignment failed.
  /// - "UPDATING" : Connection assignment is being updated.
  /// - "DELETING" : Connection assignment is being deleted.
  core.String? state;

  GoldengateConnectionAssignmentProperties({
    this.alias,
    this.goldengateConnection,
    this.goldengateDeployment,
    this.ocid,
    this.state,
  });

  GoldengateConnectionAssignmentProperties.fromJson(core.Map json_)
    : this(
        alias: json_['alias'] as core.String?,
        goldengateConnection: json_['goldengateConnection'] as core.String?,
        goldengateDeployment: json_['goldengateDeployment'] as core.String?,
        ocid: json_['ocid'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final alias = this.alias;
    final goldengateConnection = this.goldengateConnection;
    final goldengateDeployment = this.goldengateDeployment;
    final ocid = this.ocid;
    final state = this.state;
    return {
      'alias': ?alias,
      'goldengateConnection': ?goldengateConnection,
      'goldengateDeployment': ?goldengateDeployment,
      'ocid': ?ocid,
      'state': ?state,
    };
  }
}

/// The properties of a GoldengateConnection.
class GoldengateConnectionProperties {
  /// Properties for an Amazon Kinesis connection.
  GoldengateAmazonKinesisConnectionProperties?
  amazonKinesisConnectionProperties;

  /// Properties for an Amazon Redshift connection.
  GoldengateAmazonRedshiftConnectionProperties?
  amazonRedshiftConnectionProperties;

  /// Properties for an Amazon S3 connection.
  GoldengateAmazonS3ConnectionProperties? amazonS3ConnectionProperties;

  /// Properties for an Azure Data Lake Storage Connection.
  GoldengateAzureDataLakeStorageConnectionProperties?
  azureDataLakeStorageConnectionProperties;

  /// Properties for an Azure Synapse Analytics connection.
  GoldengateAzureSynapseAnalyticsConnectionProperties?
  azureSynapseAnalyticsConnectionProperties;

  /// The connection type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "GOLDENGATE_CONNECTION_TYPE_UNSPECIFIED" : Connection type unspecified.
  /// - "GOLDENGATE" : Goldengate connection type.
  /// - "KAFKA" : Kafka connection type.
  /// - "KAFKA_SCHEMA_REGISTRY" : Kafka schema registry connection type.
  /// - "MYSQL" : MySQL connection type.
  /// - "JAVA_MESSAGE_SERVICE" : Java message service connection type.
  /// - "MICROSOFT_SQLSERVER" : Microsoft SQL Server connection type.
  /// - "OCI_OBJECT_STORAGE" : OCI object storage connection type.
  /// - "ORACLE" : Oracle connection type.
  /// - "AZURE_DATA_LAKE_STORAGE" : Azure data lake storage connection type.
  /// - "POSTGRESQL" : PostgreSQL connection type.
  /// - "AZURE_SYNAPSE_ANALYTICS" : Azure synapse analytics connection type.
  /// - "SNOWFLAKE" : Snowflake connection type.
  /// - "AMAZON_S3" : Amazon S3 connection type.
  /// - "HDFS" : HDFS connection type.
  /// - "ORACLE_AI_DATA_PLATFORM" : Oracle AI data platform connection type.
  /// - "ORACLE_NOSQL" : Oracle NoSQL connection type.
  /// - "MONGODB" : MongoDB connection type.
  /// - "AMAZON_KINESIS" : Amazon Kinesis connection type.
  /// - "AMAZON_REDSHIFT" : Amazon Redshift connection type.
  /// - "DB2" : DB2 connection type.
  /// - "REDIS" : Redis connection type.
  /// - "ELASTICSEARCH" : Elasticsearch connection type.
  /// - "GENERIC" : Generic connection type.
  /// - "GOOGLE_CLOUD_STORAGE" : Google Cloud Storage connection type.
  /// - "GOOGLE_BIGQUERY" : Google BigQuery connection type.
  /// - "DATABRICKS" : Databricks connection type.
  /// - "GOOGLE_PUBSUB" : Google Pub/Sub connection type.
  /// - "MICROSOFT_FABRIC" : Microsoft Fabric connection type.
  /// - "ICEBERG" : Iceberg connection type.
  core.String? connectionType;

  /// Properties for a Databricks connection.
  GoldengateDatabricksConnectionProperties? databricksConnectionProperties;

  /// Properties for a DB2 connection.
  GoldengateDb2ConnectionProperties? db2ConnectionProperties;

  /// Metadata about this specific object.
  ///
  /// Optional.
  core.String? description;

  /// An object's Display Name.
  ///
  /// Required.
  core.String? displayName;

  /// Properties for an Elasticsearch connection.
  GoldengateElasticsearchConnectionProperties?
  elasticsearchConnectionProperties;

  /// Properties for a Generic Connection.
  GoldengateGenericConnectionProperties? genericConnectionProperties;

  /// Properties for a Goldengate Connection.
  GoldengateGoldengateConnectionProperties? goldengateConnectionProperties;

  /// Properties for a Google BigQuery Connection.
  GoldengateGoogleBigQueryConnectionProperties?
  googleBigQueryConnectionProperties;

  /// Properties for a Google Cloud Storage Connection.
  GoldengateGoogleCloudStorageConnectionProperties?
  googleCloudStorageConnectionProperties;

  /// Properties for a Google Pub/Sub connection.
  GoldengateGooglePubsubConnectionProperties? googlePubsubConnectionProperties;

  /// Properties for an HDFS connection.
  GoldengateHdfsConnectionProperties? hdfsConnectionProperties;

  /// Properties for an Iceberg connection.
  GoldengateIcebergConnectionProperties? icebergConnectionProperties;

  /// The Ingress IPs of the GoldengateConnection.
  ///
  /// Output only.
  core.List<core.String>? ingressIpAddresses;

  /// Properties for a Java Message Service connection.
  GoldengateJavaMessageServiceConnectionProperties?
  javaMessageServiceConnectionProperties;

  /// Properties for a Kafka Connection.
  GoldengateKafkaConnectionProperties? kafkaConnectionProperties;

  /// Properties for a Kafka Schema Registry Connection.
  GoldengateKafkaSchemaRegistryConnectionProperties?
  kafkaSchemaRegistryConnectionProperties;

  /// Describes the object's current state in detail.
  ///
  /// For example, it can be used to provide actionable information for a
  /// resource in a Failed state.
  ///
  /// Output only.
  core.String? lifecycleDetails;

  /// The lifecycle state of the connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOLDENGATE_CONNECTION_LIFECYCLE_STATE_UNSPECIFIED" : Default
  /// unspecified value.
  /// - "CREATING" : Indicates that the resource is in provisioning state.
  /// - "ACTIVE" : Indicates that the resource is in active state.
  /// - "UPDATING" : Indicates that the resource is in updating state.
  /// - "DELETING" : Indicates that the resource is in deleting state.
  /// - "DELETED" : Indicates that the resource is in deleted state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  core.String? lifecycleState;

  /// Properties for a Microsoft Fabric connection.
  GoldengateMicrosoftFabricConnectionProperties?
  microsoftFabricConnectionProperties;

  /// Properties for a Microsoft SQL Server connection.
  GoldengateMicrosoftSqlserverConnectionProperties?
  microsoftSqlserverConnectionProperties;

  /// Properties for a MongoDB connection.
  GoldengateMongodbConnectionProperties? mongodbConnectionProperties;

  /// Properties for a Mysql Connection.
  GoldengateMysqlConnectionProperties? mysqlConnectionProperties;

  /// Properties for an OCI Object Storage Connection.
  GoldengateOciObjectStorageConnectionProperties?
  ociObjectStorageConnectionProperties;

  /// The \[OCID\] of the connection being referenced.
  ///
  /// Output only.
  core.String? ocid;

  /// Properties for an Oracle AI Data Platform connection.
  GoldengateOracleAIDataPlatformConnectionProperties?
  oracleAiDataPlatformConnectionProperties;

  /// Properties for an Oracle Database Connection.
  GoldengateOracleConnectionProperties? oracleConnectionProperties;

  /// Properties for an Oracle NoSQL connection.
  GoldengateOracleNosqlConnectionProperties? oracleNosqlConnectionProperties;

  /// Properties for a PostgreSQL connection.
  GoldengatePostgresqlConnectionProperties? postgresqlConnectionProperties;

  /// Properties for a Redis connection.
  GoldengateRedisConnectionProperties? redisConnectionProperties;

  /// The routing method for the GoldengateConnection.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "GOLDENGATE_CONNECTION_ROUTING_METHOD_UNSPECIFIED" : Default unspecified
  /// value.
  /// - "SHARED_DEPLOYMENT_ENDPOINT" : Network traffic flows from the assigned
  /// deployment's private endpoint through the deployment's subnet.
  /// - "DEDICATED_ENDPOINT" : A dedicated private endpoint is created in the
  /// target VCN subnet for the connection.
  core.String? routingMethod;

  /// Properties for a Snowflake connection.
  GoldengateSnowflakeConnectionProperties? snowflakeConnectionProperties;

  /// The time the resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoldengateConnectionProperties({
    this.amazonKinesisConnectionProperties,
    this.amazonRedshiftConnectionProperties,
    this.amazonS3ConnectionProperties,
    this.azureDataLakeStorageConnectionProperties,
    this.azureSynapseAnalyticsConnectionProperties,
    this.connectionType,
    this.databricksConnectionProperties,
    this.db2ConnectionProperties,
    this.description,
    this.displayName,
    this.elasticsearchConnectionProperties,
    this.genericConnectionProperties,
    this.goldengateConnectionProperties,
    this.googleBigQueryConnectionProperties,
    this.googleCloudStorageConnectionProperties,
    this.googlePubsubConnectionProperties,
    this.hdfsConnectionProperties,
    this.icebergConnectionProperties,
    this.ingressIpAddresses,
    this.javaMessageServiceConnectionProperties,
    this.kafkaConnectionProperties,
    this.kafkaSchemaRegistryConnectionProperties,
    this.lifecycleDetails,
    this.lifecycleState,
    this.microsoftFabricConnectionProperties,
    this.microsoftSqlserverConnectionProperties,
    this.mongodbConnectionProperties,
    this.mysqlConnectionProperties,
    this.ociObjectStorageConnectionProperties,
    this.ocid,
    this.oracleAiDataPlatformConnectionProperties,
    this.oracleConnectionProperties,
    this.oracleNosqlConnectionProperties,
    this.postgresqlConnectionProperties,
    this.redisConnectionProperties,
    this.routingMethod,
    this.snowflakeConnectionProperties,
    this.updateTime,
  });

  GoldengateConnectionProperties.fromJson(core.Map json_)
    : this(
        amazonKinesisConnectionProperties:
            json_.containsKey('amazonKinesisConnectionProperties')
            ? GoldengateAmazonKinesisConnectionProperties.fromJson(
                json_['amazonKinesisConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        amazonRedshiftConnectionProperties:
            json_.containsKey('amazonRedshiftConnectionProperties')
            ? GoldengateAmazonRedshiftConnectionProperties.fromJson(
                json_['amazonRedshiftConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        amazonS3ConnectionProperties:
            json_.containsKey('amazonS3ConnectionProperties')
            ? GoldengateAmazonS3ConnectionProperties.fromJson(
                json_['amazonS3ConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        azureDataLakeStorageConnectionProperties:
            json_.containsKey('azureDataLakeStorageConnectionProperties')
            ? GoldengateAzureDataLakeStorageConnectionProperties.fromJson(
                json_['azureDataLakeStorageConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        azureSynapseAnalyticsConnectionProperties:
            json_.containsKey('azureSynapseAnalyticsConnectionProperties')
            ? GoldengateAzureSynapseAnalyticsConnectionProperties.fromJson(
                json_['azureSynapseAnalyticsConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        connectionType: json_['connectionType'] as core.String?,
        databricksConnectionProperties:
            json_.containsKey('databricksConnectionProperties')
            ? GoldengateDatabricksConnectionProperties.fromJson(
                json_['databricksConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        db2ConnectionProperties: json_.containsKey('db2ConnectionProperties')
            ? GoldengateDb2ConnectionProperties.fromJson(
                json_['db2ConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        elasticsearchConnectionProperties:
            json_.containsKey('elasticsearchConnectionProperties')
            ? GoldengateElasticsearchConnectionProperties.fromJson(
                json_['elasticsearchConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        genericConnectionProperties:
            json_.containsKey('genericConnectionProperties')
            ? GoldengateGenericConnectionProperties.fromJson(
                json_['genericConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        goldengateConnectionProperties:
            json_.containsKey('goldengateConnectionProperties')
            ? GoldengateGoldengateConnectionProperties.fromJson(
                json_['goldengateConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleBigQueryConnectionProperties:
            json_.containsKey('googleBigQueryConnectionProperties')
            ? GoldengateGoogleBigQueryConnectionProperties.fromJson(
                json_['googleBigQueryConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleCloudStorageConnectionProperties:
            json_.containsKey('googleCloudStorageConnectionProperties')
            ? GoldengateGoogleCloudStorageConnectionProperties.fromJson(
                json_['googleCloudStorageConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googlePubsubConnectionProperties:
            json_.containsKey('googlePubsubConnectionProperties')
            ? GoldengateGooglePubsubConnectionProperties.fromJson(
                json_['googlePubsubConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        hdfsConnectionProperties: json_.containsKey('hdfsConnectionProperties')
            ? GoldengateHdfsConnectionProperties.fromJson(
                json_['hdfsConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        icebergConnectionProperties:
            json_.containsKey('icebergConnectionProperties')
            ? GoldengateIcebergConnectionProperties.fromJson(
                json_['icebergConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ingressIpAddresses: (json_['ingressIpAddresses'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        javaMessageServiceConnectionProperties:
            json_.containsKey('javaMessageServiceConnectionProperties')
            ? GoldengateJavaMessageServiceConnectionProperties.fromJson(
                json_['javaMessageServiceConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        kafkaConnectionProperties:
            json_.containsKey('kafkaConnectionProperties')
            ? GoldengateKafkaConnectionProperties.fromJson(
                json_['kafkaConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        kafkaSchemaRegistryConnectionProperties:
            json_.containsKey('kafkaSchemaRegistryConnectionProperties')
            ? GoldengateKafkaSchemaRegistryConnectionProperties.fromJson(
                json_['kafkaSchemaRegistryConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        lifecycleDetails: json_['lifecycleDetails'] as core.String?,
        lifecycleState: json_['lifecycleState'] as core.String?,
        microsoftFabricConnectionProperties:
            json_.containsKey('microsoftFabricConnectionProperties')
            ? GoldengateMicrosoftFabricConnectionProperties.fromJson(
                json_['microsoftFabricConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        microsoftSqlserverConnectionProperties:
            json_.containsKey('microsoftSqlserverConnectionProperties')
            ? GoldengateMicrosoftSqlserverConnectionProperties.fromJson(
                json_['microsoftSqlserverConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mongodbConnectionProperties:
            json_.containsKey('mongodbConnectionProperties')
            ? GoldengateMongodbConnectionProperties.fromJson(
                json_['mongodbConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        mysqlConnectionProperties:
            json_.containsKey('mysqlConnectionProperties')
            ? GoldengateMysqlConnectionProperties.fromJson(
                json_['mysqlConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ociObjectStorageConnectionProperties:
            json_.containsKey('ociObjectStorageConnectionProperties')
            ? GoldengateOciObjectStorageConnectionProperties.fromJson(
                json_['ociObjectStorageConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        ocid: json_['ocid'] as core.String?,
        oracleAiDataPlatformConnectionProperties:
            json_.containsKey('oracleAiDataPlatformConnectionProperties')
            ? GoldengateOracleAIDataPlatformConnectionProperties.fromJson(
                json_['oracleAiDataPlatformConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        oracleConnectionProperties:
            json_.containsKey('oracleConnectionProperties')
            ? GoldengateOracleConnectionProperties.fromJson(
                json_['oracleConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        oracleNosqlConnectionProperties:
            json_.containsKey('oracleNosqlConnectionProperties')
            ? GoldengateOracleNosqlConnectionProperties.fromJson(
                json_['oracleNosqlConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        postgresqlConnectionProperties:
            json_.containsKey('postgresqlConnectionProperties')
            ? GoldengatePostgresqlConnectionProperties.fromJson(
                json_['postgresqlConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        redisConnectionProperties:
            json_.containsKey('redisConnectionProperties')
            ? GoldengateRedisConnectionProperties.fromJson(
                json_['redisConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        routingMethod: json_['routingMethod'] as core.String?,
        snowflakeConnectionProperties:
            json_.containsKey('snowflakeConnectionProperties')
            ? GoldengateSnowflakeConnectionProperties.fromJson(
                json_['snowflakeConnectionProperties']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amazonKinesisConnectionProperties =
        this.amazonKinesisConnectionProperties;
    final amazonRedshiftConnectionProperties =
        this.amazonRedshiftConnectionProperties;
    final amazonS3ConnectionProperties = this.amazonS3ConnectionProperties;
    final azureDataLakeStorageConnectionProperties =
        this.azureDataLakeStorageConnectionProperties;
    final azureSynapseAnalyticsConnectionProperties =
        this.azureSynapseAnalyticsConnectionProperties;
    final connectionType = this.connectionType;
    final databricksConnectionProperties = this.databricksConnectionProperties;
    final db2ConnectionProperties = this.db2ConnectionProperties;
    final description = this.description;
    final displayName = this.displayName;
    final elasticsearchConnectionProperties =
        this.elasticsearchConnectionProperties;
    final genericConnectionProperties = this.genericConnectionProperties;
    final goldengateConnectionProperties = this.goldengateConnectionProperties;
    final googleBigQueryConnectionProperties =
        this.googleBigQueryConnectionProperties;
    final googleCloudStorageConnectionProperties =
        this.googleCloudStorageConnectionProperties;
    final googlePubsubConnectionProperties =
        this.googlePubsubConnectionProperties;
    final hdfsConnectionProperties = this.hdfsConnectionProperties;
    final icebergConnectionProperties = this.icebergConnectionProperties;
    final ingressIpAddresses = this.ingressIpAddresses;
    final javaMessageServiceConnectionProperties =
        this.javaMessageServiceConnectionProperties;
    final kafkaConnectionProperties = this.kafkaConnectionProperties;
    final kafkaSchemaRegistryConnectionProperties =
        this.kafkaSchemaRegistryConnectionProperties;
    final lifecycleDetails = this.lifecycleDetails;
    final lifecycleState = this.lifecycleState;
    final microsoftFabricConnectionProperties =
        this.microsoftFabricConnectionProperties;
    final microsoftSqlserverConnectionProperties =
        this.microsoftSqlserverConnectionProperties;
    final mongodbConnectionProperties = this.mongodbConnectionProperties;
    final mysqlConnectionProperties = this.mysqlConnectionProperties;
    final ociObjectStorageConnectionProperties =
        this.ociObjectStorageConnectionProperties;
    final ocid = this.ocid;
    final oracleAiDataPlatformConnectionProperties =
        this.oracleAiDataPlatformConnectionProperties;
    final oracleConnectionProperties = this.oracleConnectionProperties;
    final oracleNosqlConnectionProperties =
        this.oracleNosqlConnectionProperties;
    final postgresqlConnectionProperties = this.postgresqlConnectionProperties;
    final redisConnectionProperties = this.redisConnectionProperties;
    final routingMethod = this.routingMethod;
    final snowflakeConnectionProperties = this.snowflakeConnectionProperties;
    final updateTime = this.updateTime;
    return {
      'amazonKinesisConnectionProperties': ?amazonKinesisConnectionProperties,
      'amazonRedshiftConnectionProperties': ?amazonRedshiftConnectionProperties,
      'amazonS3ConnectionProperties': ?amazonS3ConnectionProperties,
      'azureDataLakeStorageConnectionProperties':
          ?azureDataLakeStorageConnectionProperties,
      'azureSynapseAnalyticsConnectionProperties':
          ?azureSynapseAnalyticsConnectionProperties,
      'connectionType': ?connectionType,
      'databricksConnectionProperties': ?databricksConnectionProperties,
      'db2ConnectionProperties': ?db2ConnectionProperties,
      'description': ?description,
      'displayName': ?displayName,
      'elasticsearchConnectionProperties': ?elasticsearchConnectionProperties,
      'genericConnectionProperties': ?genericConnectionProperties,
      'goldengateConnectionProperties': ?goldengateConnectionProperties,
      'googleBigQueryConnectionProperties': ?googleBigQueryConnectionProperties,
      'googleCloudStorageConnectionProperties':
          ?googleCloudStorageConnectionProperties,
      'googlePubsubConnectionProperties': ?googlePubsubConnectionProperties,
      'hdfsConnectionProperties': ?hdfsConnectionProperties,
      'icebergConnectionProperties': ?icebergConnectionProperties,
      'ingressIpAddresses': ?ingressIpAddresses,
      'javaMessageServiceConnectionProperties':
          ?javaMessageServiceConnectionProperties,
      'kafkaConnectionProperties': ?kafkaConnectionProperties,
      'kafkaSchemaRegistryConnectionProperties':
          ?kafkaSchemaRegistryConnectionProperties,
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'microsoftFabricConnectionProperties':
          ?microsoftFabricConnectionProperties,
      'microsoftSqlserverConnectionProperties':
          ?microsoftSqlserverConnectionProperties,
      'mongodbConnectionProperties': ?mongodbConnectionProperties,
      'mysqlConnectionProperties': ?mysqlConnectionProperties,
      'ociObjectStorageConnectionProperties':
          ?ociObjectStorageConnectionProperties,
      'ocid': ?ocid,
      'oracleAiDataPlatformConnectionProperties':
          ?oracleAiDataPlatformConnectionProperties,
      'oracleConnectionProperties': ?oracleConnectionProperties,
      'oracleNosqlConnectionProperties': ?oracleNosqlConnectionProperties,
      'postgresqlConnectionProperties': ?postgresqlConnectionProperties,
      'redisConnectionProperties': ?redisConnectionProperties,
      'routingMethod': ?routingMethod,
      'snowflakeConnectionProperties': ?snowflakeConnectionProperties,
      'updateTime': ?updateTime,
    };
  }
}

/// Details of the Goldengate Connection Type resource.
class GoldengateConnectionType {
  /// The connection type of the Goldengate Connection Type resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONNECTION_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "GOLDENGATE" : Goldengate Connection Type category is GOLDENGATE.
  /// - "KAFKA" : Goldengate Connection Type category is KAFKA.
  /// - "KAFKA_SCHEMA_REGISTRY" : Goldengate Connection Type category is
  /// KAFKA_SCHEMA_REGISTRY.
  /// - "MYSQL" : Goldengate Connection Type category is MYSQL.
  /// - "JAVA_MESSAGE_SERVICE" : Goldengate Connection Type category is
  /// JAVA_MESSAGE_SERVICE.
  /// - "MICROSOFT_SQLSERVER" : Goldengate Connection Type category is
  /// MICROSOFT_SQLSERVER.
  /// - "OCI_OBJECT_STORAGE" : Goldengate Connection Type category is
  /// OCI_OBJECT_STORAGE.
  /// - "ORACLE" : Goldengate Connection Type category is ORACLE.
  /// - "AZURE_DATA_LAKE_STORAGE" : Goldengate Connection Type category is
  /// AZURE_DATA_LAKE_STORAGE.
  /// - "POSTGRESQL" : Goldengate Connection Type category is POSTGRESQL.
  /// - "AZURE_SYNAPSE_ANALYTICS" : Goldengate Connection Type category is
  /// AZURE_SYNAPSE_ANALYTICS.
  /// - "SNOWFLAKE" : Goldengate Connection Type category is SNOWFLAKE.
  /// - "AMAZON_S3" : Goldengate Connection Type category is AMAZON_S3.
  /// - "HDFS" : Goldengate Connection Type category is HDFS.
  /// - "ORACLE_AI_DATA_PLATFORM" : Goldengate Connection Type category is
  /// ORACLE_AI_DATA_PLATFORM.
  /// - "ORACLE_NOSQL" : Goldengate Connection Type category is ORACLE_NOSQL.
  /// - "MONGODB" : Goldengate Connection Type category is MONGODB.
  /// - "AMAZON_KINESIS" : Goldengate Connection Type category is
  /// AMAZON_KINESIS.
  /// - "AMAZON_REDSHIFT" : Goldengate Connection Type category is
  /// AMAZON_REDSHIFT.
  /// - "DB2" : Goldengate Connection Type category is DB2.
  /// - "REDIS" : Goldengate Connection Type category is REDIS.
  /// - "ELASTICSEARCH" : Goldengate Connection Type category is ELASTICSEARCH.
  /// - "GENERIC" : Goldengate Connection Type category is GENERIC.
  /// - "GOOGLE_CLOUD_STORAGE" : Goldengate Connection Type category is
  /// GOOGLE_CLOUD_STORAGE.
  /// - "GOOGLE_BIGQUERY" : Goldengate Connection Type category is
  /// GOOGLE_BIGQUERY.
  /// - "DATABRICKS" : Goldengate Connection Type category is DATABRICKS.
  /// - "GOOGLE_PUBSUB" : Goldengate Connection Type category is GOOGLE_PUBSUB.
  /// - "MICROSOFT_FABRIC" : Goldengate Connection Type category is
  /// MICROSOFT_FABRIC.
  /// - "ICEBERG" : Goldengate Connection Type category is ICEBERG.
  core.String? connectionType;

  /// Identifier.
  ///
  /// The name of the Goldengate Connection Type resource with the format:
  /// projects/{project}/locations/{region}/goldengateConnectionTypes/{goldengate_connection_type}
  core.String? name;

  /// The technology type of the Goldengate Connection Type resource.
  ///
  /// Output only.
  core.List<core.String>? technologyTypes;

  GoldengateConnectionType({
    this.connectionType,
    this.name,
    this.technologyTypes,
  });

  GoldengateConnectionType.fromJson(core.Map json_)
    : this(
        connectionType: json_['connectionType'] as core.String?,
        name: json_['name'] as core.String?,
        technologyTypes: (json_['technologyTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionType = this.connectionType;
    final name = this.name;
    final technologyTypes = this.technologyTypes;
    return {
      'connectionType': ?connectionType,
      'name': ?name,
      'technologyTypes': ?technologyTypes,
    };
  }
}

/// The properties of GoldengateDatabricksConnection.
class GoldengateDatabricksConnectionProperties {
  /// Authentication type for Databricks.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATABRICKS_AUTHENTICATION_TYPE_UNSPECIFIED" : Authentication type not
  /// specified.
  /// - "PERSONAL_ACCESS_TOKEN" : Personal access token authentication.
  /// - "OAUTH_M2M" : OAuth M2M authentication.
  core.String? authenticationType;

  /// OAuth client id, only applicable for authentication_type == OAUTH_M2M
  ///
  /// Optional.
  core.String? clientId;

  /// OAuth client secret, only applicable for authentication_type == OAUTH_M2M
  ///
  /// Optional.
  core.String? clientSecret;

  /// Connection URL.
  ///
  /// e.g.:
  /// 'jdbc:databricks://adb-33934.4.azuredatabricks.net:443/default;transportMode=http;ssl=1;httpPath=sql/protocolv1/o/3393########44/0##3-7-hlrb'
  ///
  /// Optional.
  core.String? connectionUrl;

  /// Input only.
  ///
  /// The password used to connect to Databricks in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password used to connect to Databricks. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// External storage credential name to access files on object storage such as
  /// ADLS Gen2, S3 or Cloud Storage.
  ///
  /// Optional.
  core.String? storageCredential;

  /// The technology type of DatabricksConnection.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateDatabricksConnectionProperties({
    this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.storageCredential,
    this.technologyType,
  });

  GoldengateDatabricksConnectionProperties.fromJson(core.Map json_)
    : this(
        authenticationType: json_['authenticationType'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        connectionUrl: json_['connectionUrl'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        storageCredential: json_['storageCredential'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authenticationType = this.authenticationType;
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final connectionUrl = this.connectionUrl;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final storageCredential = this.storageCredential;
    final technologyType = this.technologyType;
    return {
      'authenticationType': ?authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'connectionUrl': ?connectionUrl,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'storageCredential': ?storageCredential,
      'technologyType': ?technologyType,
    };
  }
}

/// The properties of GoldengateDb2Connection.
class GoldengateDb2ConnectionProperties {
  /// An array of name-value pair attribute entries.
  ///
  /// Used as additional parameters in connection string.
  ///
  /// Optional.
  core.List<NameValuePair>? additionalAttributes;

  /// The name of the database.
  ///
  /// Optional.
  core.String? database;

  /// The name or address of a host.
  ///
  /// Optional.
  core.String? host;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses for Db2 connection in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses for Db2 connection. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The port of an endpoint usually specified for a connection.
  ///
  /// Optional.
  core.int? port;

  /// Security protocol for the DB2 database.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DB2_SECURITY_PROTOCOL_UNSPECIFIED" : Security protocol not specified.
  /// - "PLAIN" : Plain text communication.
  /// - "TLS" : Transport Layer Security.
  core.String? securityProtocol;

  /// The keystash file which contains the encrypted password to the key
  /// database file.
  ///
  /// Not supported for IBM Db2 for i.
  ///
  /// Optional.
  core.String? sslClientKeystashFile;

  /// The keystore file created at the client containing the server certificate
  /// / CA root certificate.
  ///
  /// Not supported for IBM Db2 for i.
  ///
  /// Optional.
  core.String? sslClientKeystoredbFile;

  /// The file which contains the self-signed server certificate / Certificate
  /// Authority (CA) certificate.
  ///
  /// Optional.
  core.String? sslServerCertificateFile;

  /// The technology type of Db2Connection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect to the DB2 database.
  ///
  /// Optional.
  core.String? username;

  GoldengateDb2ConnectionProperties({
    this.additionalAttributes,
    this.database,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.sslClientKeystashFile,
    this.sslClientKeystoredbFile,
    this.sslServerCertificateFile,
    this.technologyType,
    this.username,
  });

  GoldengateDb2ConnectionProperties.fromJson(core.Map json_)
    : this(
        additionalAttributes: (json_['additionalAttributes'] as core.List?)
            ?.map(
              (value) => NameValuePair.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        database: json_['database'] as core.String?,
        host: json_['host'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        port: json_['port'] as core.int?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        sslClientKeystashFile: json_['sslClientKeystashFile'] as core.String?,
        sslClientKeystoredbFile:
            json_['sslClientKeystoredbFile'] as core.String?,
        sslServerCertificateFile:
            json_['sslServerCertificateFile'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalAttributes = this.additionalAttributes;
    final database = this.database;
    final host = this.host;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final port = this.port;
    final securityProtocol = this.securityProtocol;
    final sslClientKeystashFile = this.sslClientKeystashFile;
    final sslClientKeystoredbFile = this.sslClientKeystoredbFile;
    final sslServerCertificateFile = this.sslServerCertificateFile;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'additionalAttributes': ?additionalAttributes,
      'database': ?database,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'securityProtocol': ?securityProtocol,
      'sslClientKeystashFile': ?sslClientKeystashFile,
      'sslClientKeystoredbFile': ?sslClientKeystoredbFile,
      'sslServerCertificateFile': ?sslServerCertificateFile,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// GoldengateDeployment Goldengate Deployment resource model.
class GoldengateDeployment {
  /// The date and time that the GoldengateDeployment was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The display name for the GoldengateDeployment.
  ///
  /// Required.
  core.String? displayName;

  /// The ID of the subscription entitlement associated with the
  /// GoldengateDeployment
  ///
  /// Output only.
  core.String? entitlementId;

  /// The GCP Oracle zone where Oracle GoldengateDeployment is hosted.
  ///
  /// Example: us-east4-b-r2. If not specified, the system will pick a zone
  /// based on availability.
  ///
  /// Optional.
  core.String? gcpOracleZone;

  /// The labels or tags associated with the GoldengateDeployment.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the GoldengateDeployment resource in the following format:
  /// projects/{project}/locations/{region}/goldengateDeployments/{goldengate_deployment}
  core.String? name;

  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  ///
  /// Output only.
  core.String? ociUrl;

  /// The name of the OdbNetwork associated with the GoldengateDeployment.
  ///
  /// Optional.
  core.String? odbNetwork;

  /// The name of the OdbSubnet associated with the GoldengateDeployment for IP
  /// allocation.
  ///
  /// Required.
  core.String? odbSubnet;

  /// The properties of the GoldengateDeployment.
  ///
  /// Required.
  GoldengateDeploymentProperties? properties;

  GoldengateDeployment({
    this.createTime,
    this.displayName,
    this.entitlementId,
    this.gcpOracleZone,
    this.labels,
    this.name,
    this.ociUrl,
    this.odbNetwork,
    this.odbSubnet,
    this.properties,
  });

  GoldengateDeployment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        ociUrl: json_['ociUrl'] as core.String?,
        odbNetwork: json_['odbNetwork'] as core.String?,
        odbSubnet: json_['odbSubnet'] as core.String?,
        properties: json_.containsKey('properties')
            ? GoldengateDeploymentProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final displayName = this.displayName;
    final entitlementId = this.entitlementId;
    final gcpOracleZone = this.gcpOracleZone;
    final labels = this.labels;
    final name = this.name;
    final ociUrl = this.ociUrl;
    final odbNetwork = this.odbNetwork;
    final odbSubnet = this.odbSubnet;
    final properties = this.properties;
    return {
      'createTime': ?createTime,
      'displayName': ?displayName,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'name': ?name,
      'ociUrl': ?ociUrl,
      'odbNetwork': ?odbNetwork,
      'odbSubnet': ?odbSubnet,
      'properties': ?properties,
    };
  }
}

/// Details of the Goldengate Deployment Environment resource.
class GoldengateDeploymentEnvironment {
  /// Whether auto scaling is enabled by default for the Goldengate Deployment
  /// Environment resource.
  ///
  /// Output only.
  core.bool? autoScalingEnabled;

  /// The category of the Goldengate Deployment Environment resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_CATEGORY_UNSPECIFIED" : Default unspecified value.
  /// - "DATA_REPLICATION_CATEGORY" : Goldengate Deployment Environment category
  /// is DATA_REPLICATION_CATEGORY.
  /// - "DATA_TRANSFORMS_CATEGORY" : Goldengate Deployment Environment category
  /// is DATA_TRANSFORMS_CATEGORY.
  core.String? category;

  /// The default CPU core count of the Goldengate Deployment Environment
  /// resource.
  ///
  /// Output only.
  core.int? defaultCpuCoreCount;

  /// The display name of the Goldengate Deployment Environment resource.
  core.String? displayName;

  /// The environment type of the Goldengate Deployment Environment resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_ENVIRONMENT_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "PRODUCTION" : Goldengate Deployment Environment type is PRODUCTION.
  /// - "DEVELOPMENT_OR_TESTING" : Goldengate Deployment Environment type is
  /// DEVELOPMENT_OR_TESTING.
  core.String? environmentType;

  /// The max CPU core count of the Goldengate Deployment Environment resource.
  ///
  /// Output only.
  core.int? maxCpuCoreCount;

  /// The memory per CPU core in GBs of the Goldengate Deployment Environment
  /// resource.
  ///
  /// Output only.
  core.int? memoryGbPerCpuCore;

  /// The min CPU core count of the Goldengate Deployment Environment resource.
  ///
  /// Output only.
  core.int? minCpuCoreCount;

  /// Identifier.
  ///
  /// The name of the Goldengate Deployment Environment resource with the
  /// format:
  /// projects/{project}/locations/{location}/goldengateDeploymentEnvironments/{goldengate_deployment_environment}
  core.String? name;

  /// The network bandwidth per CPU core in Gbps of the Goldengate Deployment
  /// Environment resource.
  ///
  /// Output only.
  core.int? networkBandwidthGbpsPerCpuCore;

  /// The storage usage limit per CPU core in GBs of the Goldengate Deployment
  /// Environment resource.
  ///
  /// Output only.
  core.int? storageUsageLimitGbPerCpuCore;

  GoldengateDeploymentEnvironment({
    this.autoScalingEnabled,
    this.category,
    this.defaultCpuCoreCount,
    this.displayName,
    this.environmentType,
    this.maxCpuCoreCount,
    this.memoryGbPerCpuCore,
    this.minCpuCoreCount,
    this.name,
    this.networkBandwidthGbpsPerCpuCore,
    this.storageUsageLimitGbPerCpuCore,
  });

  GoldengateDeploymentEnvironment.fromJson(core.Map json_)
    : this(
        autoScalingEnabled: json_['autoScalingEnabled'] as core.bool?,
        category: json_['category'] as core.String?,
        defaultCpuCoreCount: json_['defaultCpuCoreCount'] as core.int?,
        displayName: json_['displayName'] as core.String?,
        environmentType: json_['environmentType'] as core.String?,
        maxCpuCoreCount: json_['maxCpuCoreCount'] as core.int?,
        memoryGbPerCpuCore: json_['memoryGbPerCpuCore'] as core.int?,
        minCpuCoreCount: json_['minCpuCoreCount'] as core.int?,
        name: json_['name'] as core.String?,
        networkBandwidthGbpsPerCpuCore:
            json_['networkBandwidthGbpsPerCpuCore'] as core.int?,
        storageUsageLimitGbPerCpuCore:
            json_['storageUsageLimitGbPerCpuCore'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoScalingEnabled = this.autoScalingEnabled;
    final category = this.category;
    final defaultCpuCoreCount = this.defaultCpuCoreCount;
    final displayName = this.displayName;
    final environmentType = this.environmentType;
    final maxCpuCoreCount = this.maxCpuCoreCount;
    final memoryGbPerCpuCore = this.memoryGbPerCpuCore;
    final minCpuCoreCount = this.minCpuCoreCount;
    final name = this.name;
    final networkBandwidthGbpsPerCpuCore = this.networkBandwidthGbpsPerCpuCore;
    final storageUsageLimitGbPerCpuCore = this.storageUsageLimitGbPerCpuCore;
    return {
      'autoScalingEnabled': ?autoScalingEnabled,
      'category': ?category,
      'defaultCpuCoreCount': ?defaultCpuCoreCount,
      'displayName': ?displayName,
      'environmentType': ?environmentType,
      'maxCpuCoreCount': ?maxCpuCoreCount,
      'memoryGbPerCpuCore': ?memoryGbPerCpuCore,
      'minCpuCoreCount': ?minCpuCoreCount,
      'name': ?name,
      'networkBandwidthGbpsPerCpuCore': ?networkBandwidthGbpsPerCpuCore,
      'storageUsageLimitGbPerCpuCore': ?storageUsageLimitGbPerCpuCore,
    };
  }
}

/// The lock of the GoldengateDeployment.
class GoldengateDeploymentLock {
  /// The compartment id.
  ///
  /// Output only.
  core.String? compartmentId;

  /// The time created.
  ///
  /// Output only.
  core.String? createTime;

  /// The message.
  ///
  /// Output only.
  core.String? message;

  /// The related resource id.
  ///
  /// Output only.
  core.String? relatedResourceId;

  /// The type of lock.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LOCK_TYPE_UNSPECIFIED" : The lock type is unspecified.
  /// - "FULL" : The lock type is full.
  /// - "DELETE" : The lock type is delete.
  core.String? type;

  GoldengateDeploymentLock({
    this.compartmentId,
    this.createTime,
    this.message,
    this.relatedResourceId,
    this.type,
  });

  GoldengateDeploymentLock.fromJson(core.Map json_)
    : this(
        compartmentId: json_['compartmentId'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        message: json_['message'] as core.String?,
        relatedResourceId: json_['relatedResourceId'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compartmentId = this.compartmentId;
    final createTime = this.createTime;
    final message = this.message;
    final relatedResourceId = this.relatedResourceId;
    final type = this.type;
    return {
      'compartmentId': ?compartmentId,
      'createTime': ?createTime,
      'message': ?message,
      'relatedResourceId': ?relatedResourceId,
      'type': ?type,
    };
  }
}

/// Properties of GoldengateDeployment.
class GoldengateDeploymentProperties {
  /// The backup schedule of the GoldengateDeployment.
  ///
  /// Output only.
  GoldengateBackupSchedule? backupSchedule;

  /// The category of the GoldengateDeployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOLDENGATE_DEPLOYMENT_CATEGORY_UNSPECIFIED" : The category is
  /// unspecified.
  /// - "DATA_REPLICATION" : The deployment is data replication.
  /// - "DATA_TRANSFORMS" : The deployment is data transforms.
  core.String? category;

  /// The Minimum number of OCPUs to be made available for this Deployment.
  ///
  /// Optional.
  core.int? cpuCoreCount;

  /// The deployment backup id of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? deploymentBackupId;

  /// The deployment diagnostic data of the GoldengateDeployment.
  ///
  /// Output only.
  DeploymentDiagnosticData? deploymentDiagnosticData;

  /// The deployment role of the GoldengateDeployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOLDENGATE_DEPLOYMENT_ROLE_TYPE_UNSPECIFIED" : The deployment role type
  /// is unspecified.
  /// - "PRIMARY" : The deployment role type is primary.
  /// - "STANDBY" : The deployment role type is standby.
  core.String? deploymentRole;

  /// A valid Goldengate Deployment type.
  ///
  /// For a list of supported types, use the `ListGoldengateDeploymentTypes`
  /// operation.
  ///
  /// Required.
  core.String? deploymentType;

  /// The deployment url of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? deploymentUrl;

  /// The description of the GoldengateDeployment.
  ///
  /// Optional.
  core.String? description;

  /// The environment type of the GoldengateDeployment.
  ///
  /// Optional.
  core.String? environmentType;

  /// The Fully Qualified Domain Name of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? fqdn;

  /// Whether the GoldengateDeployment is healthy.
  ///
  /// Output only.
  core.bool? healthy;

  /// The ingress ips of the GoldengateDeployment.
  ///
  /// Output only.
  core.List<IngressIp>? ingressIps;

  /// Indicates if auto scaling is enabled for the Deployment's CPU core count.
  ///
  /// Optional.
  core.bool? isAutoScalingEnabled;

  /// Whether the GoldengateDeployment is of the latest version.
  ///
  /// Output only.
  core.bool? isLatestVersion;

  /// Whether the GoldengateDeployment is public.
  ///
  /// Output only.
  core.bool? isPublic;

  /// Whether storage utilization limit is exceeded of the GoldengateDeployment.
  ///
  /// Output only.
  core.bool? isStorageUtilizationLimitExceeded;

  /// The time last backup scheduled of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? lastBackupScheduleTime;

  /// The Oracle license model that applies to a Deployment.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LICENSE_MODEL_UNSPECIFIED" : The license model is unspecified.
  /// - "LICENSE_INCLUDED" : The license model is included.
  /// - "BRING_YOUR_OWN_LICENSE" : The license model is bring your own license.
  core.String? licenseModel;

  /// The lifecycle details of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? lifecycleDetails;

  /// State of the GoldengateDeployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOLDENGATE_DEPLOYMENT_LIFECYCLE_STATE_UNSPECIFIED" : Default
  /// unspecified value.
  /// - "CREATING" : The deployment is being created.
  /// - "UPDATING" : The deployment is being updated.
  /// - "ACTIVE" : The deployment is active.
  /// - "INACTIVE" : The deployment is inactive.
  /// - "DELETING" : The deployment is being deleted.
  /// - "DELETED" : The deployment is deleted.
  /// - "FAILED" : The deployment failed.
  /// - "NEEDS_ATTENTION" : The deployment needs attention.
  /// - "IN_PROGRESS" : The deployment is in progress.
  /// - "CANCELLING" : The deployment is canceling.
  /// - "CANCELLED" : The deployment is canceled.
  /// - "SUCCEEDED" : The deployment succeeded.
  /// - "WAITING" : The deployment is waiting.
  core.String? lifecycleState;

  /// The lifecycle sub-state of the GoldengateDeployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "GOLDENGATE_DEPLOYMENT_LIFECYCLE_SUB_STATE_UNSPECIFIED" : The lifecycle
  /// sub-state is unspecified.
  /// - "RECOVERING" : The deployment is recovering.
  /// - "STARTING" : The deployment is starting.
  /// - "STOPPING" : The deployment is stopping.
  /// - "MOVING" : The deployment is moving.
  /// - "UPGRADING" : The deployment is upgrading.
  /// - "RESTORING" : The deployment is restoring.
  /// - "BACKING_UP" : The deployment is backing up.
  /// - "ROLLING_BACK" : The deployment is rolling back.
  core.String? lifecycleSubState;

  /// The load balancer id of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? loadBalancerId;

  /// The load balancer subnet id of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? loadBalancerSubnetId;

  /// The locks of the GoldengateDeployment.
  ///
  /// Output only.
  core.List<GoldengateDeploymentLock>? locks;

  /// The maintenance configuration of the GoldengateDeployment.
  ///
  /// Optional.
  GoldengateMaintenanceConfig? maintenanceConfig;

  /// The maintenance window of the GoldengateDeployment.
  ///
  /// Optional.
  GoldengateMaintenanceWindow? maintenanceWindow;

  /// The time next backup scheduled of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? nextBackupScheduleTime;

  /// The next maintenance action type of the GoldengateDeployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NEXT_MAINTENANCE_ACTION_TYPE_UNSPECIFIED" : The next maintenance action
  /// type is unspecified.
  /// - "UPGRADE" : The next maintenance action type is upgrade.
  core.String? nextMaintenanceActionType;

  /// The next maintenance description of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? nextMaintenanceDescription;

  /// The time of next maintenance of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? nextMaintenanceTime;

  /// The nsg ids of the GoldengateDeployment.
  ///
  /// Output only.
  core.List<core.String>? nsgIds;

  /// OCID of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? ocid;

  /// The ogg data of the GoldengateDeployment.
  ///
  /// Required.
  GoldengateOggDeployment? oggData;

  /// The time ogg version supported until of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? oggVersionSupportEndTime;

  /// The placements of the GoldengateDeployment.
  ///
  /// Output only.
  core.List<GoldengatePlacement>? placements;

  /// The private ip address of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? privateIpAddress;

  /// The public ip address of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? publicIpAddress;

  /// The time when the role of the GoldengateDeployment was changed.
  ///
  /// Output only.
  core.String? roleChangeTime;

  /// The storage utilization in bytes of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? storageUtilizationBytes;

  /// The time the GoldengateDeployment was updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The time upgrade required of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? upgradeRequiredTime;

  GoldengateDeploymentProperties({
    this.backupSchedule,
    this.category,
    this.cpuCoreCount,
    this.deploymentBackupId,
    this.deploymentDiagnosticData,
    this.deploymentRole,
    this.deploymentType,
    this.deploymentUrl,
    this.description,
    this.environmentType,
    this.fqdn,
    this.healthy,
    this.ingressIps,
    this.isAutoScalingEnabled,
    this.isLatestVersion,
    this.isPublic,
    this.isStorageUtilizationLimitExceeded,
    this.lastBackupScheduleTime,
    this.licenseModel,
    this.lifecycleDetails,
    this.lifecycleState,
    this.lifecycleSubState,
    this.loadBalancerId,
    this.loadBalancerSubnetId,
    this.locks,
    this.maintenanceConfig,
    this.maintenanceWindow,
    this.nextBackupScheduleTime,
    this.nextMaintenanceActionType,
    this.nextMaintenanceDescription,
    this.nextMaintenanceTime,
    this.nsgIds,
    this.ocid,
    this.oggData,
    this.oggVersionSupportEndTime,
    this.placements,
    this.privateIpAddress,
    this.publicIpAddress,
    this.roleChangeTime,
    this.storageUtilizationBytes,
    this.updateTime,
    this.upgradeRequiredTime,
  });

  GoldengateDeploymentProperties.fromJson(core.Map json_)
    : this(
        backupSchedule: json_.containsKey('backupSchedule')
            ? GoldengateBackupSchedule.fromJson(
                json_['backupSchedule'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        category: json_['category'] as core.String?,
        cpuCoreCount: json_['cpuCoreCount'] as core.int?,
        deploymentBackupId: json_['deploymentBackupId'] as core.String?,
        deploymentDiagnosticData: json_.containsKey('deploymentDiagnosticData')
            ? DeploymentDiagnosticData.fromJson(
                json_['deploymentDiagnosticData']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        deploymentRole: json_['deploymentRole'] as core.String?,
        deploymentType: json_['deploymentType'] as core.String?,
        deploymentUrl: json_['deploymentUrl'] as core.String?,
        description: json_['description'] as core.String?,
        environmentType: json_['environmentType'] as core.String?,
        fqdn: json_['fqdn'] as core.String?,
        healthy: json_['healthy'] as core.bool?,
        ingressIps: (json_['ingressIps'] as core.List?)
            ?.map(
              (value) => IngressIp.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        isAutoScalingEnabled: json_['isAutoScalingEnabled'] as core.bool?,
        isLatestVersion: json_['isLatestVersion'] as core.bool?,
        isPublic: json_['isPublic'] as core.bool?,
        isStorageUtilizationLimitExceeded:
            json_['isStorageUtilizationLimitExceeded'] as core.bool?,
        lastBackupScheduleTime: json_['lastBackupScheduleTime'] as core.String?,
        licenseModel: json_['licenseModel'] as core.String?,
        lifecycleDetails: json_['lifecycleDetails'] as core.String?,
        lifecycleState: json_['lifecycleState'] as core.String?,
        lifecycleSubState: json_['lifecycleSubState'] as core.String?,
        loadBalancerId: json_['loadBalancerId'] as core.String?,
        loadBalancerSubnetId: json_['loadBalancerSubnetId'] as core.String?,
        locks: (json_['locks'] as core.List?)
            ?.map(
              (value) => GoldengateDeploymentLock.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        maintenanceConfig: json_.containsKey('maintenanceConfig')
            ? GoldengateMaintenanceConfig.fromJson(
                json_['maintenanceConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        maintenanceWindow: json_.containsKey('maintenanceWindow')
            ? GoldengateMaintenanceWindow.fromJson(
                json_['maintenanceWindow']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        nextBackupScheduleTime: json_['nextBackupScheduleTime'] as core.String?,
        nextMaintenanceActionType:
            json_['nextMaintenanceActionType'] as core.String?,
        nextMaintenanceDescription:
            json_['nextMaintenanceDescription'] as core.String?,
        nextMaintenanceTime: json_['nextMaintenanceTime'] as core.String?,
        nsgIds: (json_['nsgIds'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        ocid: json_['ocid'] as core.String?,
        oggData: json_.containsKey('oggData')
            ? GoldengateOggDeployment.fromJson(
                json_['oggData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        oggVersionSupportEndTime:
            json_['oggVersionSupportEndTime'] as core.String?,
        placements: (json_['placements'] as core.List?)
            ?.map(
              (value) => GoldengatePlacement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        privateIpAddress: json_['privateIpAddress'] as core.String?,
        publicIpAddress: json_['publicIpAddress'] as core.String?,
        roleChangeTime: json_['roleChangeTime'] as core.String?,
        storageUtilizationBytes:
            json_['storageUtilizationBytes'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        upgradeRequiredTime: json_['upgradeRequiredTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final backupSchedule = this.backupSchedule;
    final category = this.category;
    final cpuCoreCount = this.cpuCoreCount;
    final deploymentBackupId = this.deploymentBackupId;
    final deploymentDiagnosticData = this.deploymentDiagnosticData;
    final deploymentRole = this.deploymentRole;
    final deploymentType = this.deploymentType;
    final deploymentUrl = this.deploymentUrl;
    final description = this.description;
    final environmentType = this.environmentType;
    final fqdn = this.fqdn;
    final healthy = this.healthy;
    final ingressIps = this.ingressIps;
    final isAutoScalingEnabled = this.isAutoScalingEnabled;
    final isLatestVersion = this.isLatestVersion;
    final isPublic = this.isPublic;
    final isStorageUtilizationLimitExceeded =
        this.isStorageUtilizationLimitExceeded;
    final lastBackupScheduleTime = this.lastBackupScheduleTime;
    final licenseModel = this.licenseModel;
    final lifecycleDetails = this.lifecycleDetails;
    final lifecycleState = this.lifecycleState;
    final lifecycleSubState = this.lifecycleSubState;
    final loadBalancerId = this.loadBalancerId;
    final loadBalancerSubnetId = this.loadBalancerSubnetId;
    final locks = this.locks;
    final maintenanceConfig = this.maintenanceConfig;
    final maintenanceWindow = this.maintenanceWindow;
    final nextBackupScheduleTime = this.nextBackupScheduleTime;
    final nextMaintenanceActionType = this.nextMaintenanceActionType;
    final nextMaintenanceDescription = this.nextMaintenanceDescription;
    final nextMaintenanceTime = this.nextMaintenanceTime;
    final nsgIds = this.nsgIds;
    final ocid = this.ocid;
    final oggData = this.oggData;
    final oggVersionSupportEndTime = this.oggVersionSupportEndTime;
    final placements = this.placements;
    final privateIpAddress = this.privateIpAddress;
    final publicIpAddress = this.publicIpAddress;
    final roleChangeTime = this.roleChangeTime;
    final storageUtilizationBytes = this.storageUtilizationBytes;
    final updateTime = this.updateTime;
    final upgradeRequiredTime = this.upgradeRequiredTime;
    return {
      'backupSchedule': ?backupSchedule,
      'category': ?category,
      'cpuCoreCount': ?cpuCoreCount,
      'deploymentBackupId': ?deploymentBackupId,
      'deploymentDiagnosticData': ?deploymentDiagnosticData,
      'deploymentRole': ?deploymentRole,
      'deploymentType': ?deploymentType,
      'deploymentUrl': ?deploymentUrl,
      'description': ?description,
      'environmentType': ?environmentType,
      'fqdn': ?fqdn,
      'healthy': ?healthy,
      'ingressIps': ?ingressIps,
      'isAutoScalingEnabled': ?isAutoScalingEnabled,
      'isLatestVersion': ?isLatestVersion,
      'isPublic': ?isPublic,
      'isStorageUtilizationLimitExceeded': ?isStorageUtilizationLimitExceeded,
      'lastBackupScheduleTime': ?lastBackupScheduleTime,
      'licenseModel': ?licenseModel,
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'lifecycleSubState': ?lifecycleSubState,
      'loadBalancerId': ?loadBalancerId,
      'loadBalancerSubnetId': ?loadBalancerSubnetId,
      'locks': ?locks,
      'maintenanceConfig': ?maintenanceConfig,
      'maintenanceWindow': ?maintenanceWindow,
      'nextBackupScheduleTime': ?nextBackupScheduleTime,
      'nextMaintenanceActionType': ?nextMaintenanceActionType,
      'nextMaintenanceDescription': ?nextMaintenanceDescription,
      'nextMaintenanceTime': ?nextMaintenanceTime,
      'nsgIds': ?nsgIds,
      'ocid': ?ocid,
      'oggData': ?oggData,
      'oggVersionSupportEndTime': ?oggVersionSupportEndTime,
      'placements': ?placements,
      'privateIpAddress': ?privateIpAddress,
      'publicIpAddress': ?publicIpAddress,
      'roleChangeTime': ?roleChangeTime,
      'storageUtilizationBytes': ?storageUtilizationBytes,
      'updateTime': ?updateTime,
      'upgradeRequiredTime': ?upgradeRequiredTime,
    };
  }
}

/// Details of the Goldengate Deployment Type resource.
class GoldengateDeploymentType {
  /// The category of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_CATEGORY_UNSPECIFIED" : Default unspecified value.
  /// - "DATA_REPLICATION_CATEGORY" : Goldengate Deployment Type category is
  /// DATA_REPLICATION_CATEGORY.
  /// - "DATA_TRANSFORMS_CATEGORY" : Goldengate Deployment Type category is
  /// DATA_TRANSFORMS_CATEGORY.
  core.String? category;

  /// The connection types of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  core.List<core.String>? connectionTypes;

  /// The default username of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  core.String? defaultUsername;

  /// The deployment type of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "OGG" : Goldengate Deployment Type category is OGG.
  /// - "DATABASE_ORACLE" : Goldengate Deployment Type category is
  /// DATABASE_ORACLE.
  /// - "BIGDATA" : Goldengate Deployment Type category is BIGDATA.
  /// - "DATABASE_MICROSOFT_SQLSERVER" : Goldengate Deployment Type category is
  /// DATABASE_MICROSOFT_SQLSERVER.
  /// - "DATABASE_MYSQL" : Goldengate Deployment Type category is
  /// DATABASE_MYSQL.
  /// - "DATABASE_POSTGRESQL" : Goldengate Deployment Type category is
  /// DATABASE_POSTGRESQL.
  /// - "DATABASE_DB2ZOS" : Goldengate Deployment Type category is
  /// DATABASE_DB2ZOS.
  /// - "DATABASE_DB2I" : Goldengate Deployment Type category is DATABASE_DB2I.
  /// - "GGSA" : Goldengate Deployment Type category is GGSA.
  /// - "DATA_TRANSFORMS" : Goldengate Deployment Type category is
  /// DATA_TRANSFORMS.
  core.String? deploymentType;

  /// The display name of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  core.String? displayName;

  /// Identifier.
  ///
  /// The name of the Goldengate Deployment Type resource with the format:
  /// projects/{project}/locations/{region}/goldengateDeploymentTypes/{goldengate_deployment_type}
  core.String? name;

  /// The Ogg version of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  core.String? oggVersion;

  /// The source technologies of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  core.List<core.String>? sourceTechnologies;

  /// The supported capabilities of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  core.List<core.String>? supportedCapabilities;

  /// The supported technologies URL of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  core.String? supportedTechnologiesUrl;

  /// The target technologies of the Goldengate Deployment Type resource.
  ///
  /// Output only.
  core.List<core.String>? targetTechnologies;

  GoldengateDeploymentType({
    this.category,
    this.connectionTypes,
    this.defaultUsername,
    this.deploymentType,
    this.displayName,
    this.name,
    this.oggVersion,
    this.sourceTechnologies,
    this.supportedCapabilities,
    this.supportedTechnologiesUrl,
    this.targetTechnologies,
  });

  GoldengateDeploymentType.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        connectionTypes: (json_['connectionTypes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        defaultUsername: json_['defaultUsername'] as core.String?,
        deploymentType: json_['deploymentType'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        name: json_['name'] as core.String?,
        oggVersion: json_['oggVersion'] as core.String?,
        sourceTechnologies: (json_['sourceTechnologies'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        supportedCapabilities: (json_['supportedCapabilities'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        supportedTechnologiesUrl:
            json_['supportedTechnologiesUrl'] as core.String?,
        targetTechnologies: (json_['targetTechnologies'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final category = this.category;
    final connectionTypes = this.connectionTypes;
    final defaultUsername = this.defaultUsername;
    final deploymentType = this.deploymentType;
    final displayName = this.displayName;
    final name = this.name;
    final oggVersion = this.oggVersion;
    final sourceTechnologies = this.sourceTechnologies;
    final supportedCapabilities = this.supportedCapabilities;
    final supportedTechnologiesUrl = this.supportedTechnologiesUrl;
    final targetTechnologies = this.targetTechnologies;
    return {
      'category': ?category,
      'connectionTypes': ?connectionTypes,
      'defaultUsername': ?defaultUsername,
      'deploymentType': ?deploymentType,
      'displayName': ?displayName,
      'name': ?name,
      'oggVersion': ?oggVersion,
      'sourceTechnologies': ?sourceTechnologies,
      'supportedCapabilities': ?supportedCapabilities,
      'supportedTechnologiesUrl': ?supportedTechnologiesUrl,
      'targetTechnologies': ?targetTechnologies,
    };
  }
}

/// Details of the Goldengate Deployment Version resource.
class GoldengateDeploymentVersion {
  /// Identifier.
  ///
  /// The name of the Goldengate Deployment Version resource with the format:
  /// projects/{project}/locations/{location}/goldengateDeploymentVersions/{goldengate_deployment_version}
  core.String? name;

  /// The deployment version ocid of the Goldengate Deployment Version resource.
  ///
  /// Output only.
  core.String? ocid;

  /// The technology type of the Goldengate Deployment Version resource.
  ///
  /// Output only.
  GoldengateDeploymentVersionProperties? properties;

  GoldengateDeploymentVersion({this.name, this.ocid, this.properties});

  GoldengateDeploymentVersion.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        ocid: json_['ocid'] as core.String?,
        properties: json_.containsKey('properties')
            ? GoldengateDeploymentVersionProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final ocid = this.ocid;
    final properties = this.properties;
    return {'name': ?name, 'ocid': ?ocid, 'properties': ?properties};
  }
}

/// Properties of GoldengateDeploymentVersion.
class GoldengateDeploymentVersionProperties {
  /// The deployment type of the Goldengate Deployment Version resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "OGG" : Goldengate Deployment Type category is OGG.
  /// - "DATABASE_ORACLE" : Goldengate Deployment Type category is
  /// DATABASE_ORACLE.
  /// - "BIGDATA" : Goldengate Deployment Type category is BIGDATA.
  /// - "DATABASE_MICROSOFT_SQLSERVER" : Goldengate Deployment Type category is
  /// DATABASE_MICROSOFT_SQLSERVER.
  /// - "DATABASE_MYSQL" : Goldengate Deployment Type category is
  /// DATABASE_MYSQL.
  /// - "DATABASE_POSTGRESQL" : Goldengate Deployment Type category is
  /// DATABASE_POSTGRESQL.
  /// - "DATABASE_DB2ZOS" : Goldengate Deployment Type category is
  /// DATABASE_DB2ZOS.
  /// - "DATABASE_DB2I" : Goldengate Deployment Type category is DATABASE_DB2I.
  /// - "GGSA" : Goldengate Deployment Type category is GGSA.
  /// - "DATA_TRANSFORMS" : Goldengate Deployment Type category is
  /// DATA_TRANSFORMS.
  core.String? deploymentType;

  /// The OGG version of the Goldengate Deployment Version resource.
  ///
  /// Output only.
  core.String? oggVersion;

  /// The release time of the Goldengate Deployment Version resource.
  ///
  /// Output only.
  core.String? releaseTime;

  /// The release type of the Goldengate Deployment Version resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_RELEASE_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "MAJOR" : Goldengate Deployment Version release type is MAJOR.
  /// - "BUNDLE" : Goldengate Deployment Version release type is BUNDLE.
  /// - "MINOR" : Goldengate Deployment Version release type is MINOR.
  core.String? releaseType;

  /// Whether the Goldengate Deployment Version resource is a security fix.
  ///
  /// Optional.
  core.bool? securityFix;

  /// The support end time of the Goldengate Deployment Version resource.
  ///
  /// Output only.
  core.String? supportEndTime;

  GoldengateDeploymentVersionProperties({
    this.deploymentType,
    this.oggVersion,
    this.releaseTime,
    this.releaseType,
    this.securityFix,
    this.supportEndTime,
  });

  GoldengateDeploymentVersionProperties.fromJson(core.Map json_)
    : this(
        deploymentType: json_['deploymentType'] as core.String?,
        oggVersion: json_['oggVersion'] as core.String?,
        releaseTime: json_['releaseTime'] as core.String?,
        releaseType: json_['releaseType'] as core.String?,
        securityFix: json_['securityFix'] as core.bool?,
        supportEndTime: json_['supportEndTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final deploymentType = this.deploymentType;
    final oggVersion = this.oggVersion;
    final releaseTime = this.releaseTime;
    final releaseType = this.releaseType;
    final securityFix = this.securityFix;
    final supportEndTime = this.supportEndTime;
    return {
      'deploymentType': ?deploymentType,
      'oggVersion': ?oggVersion,
      'releaseTime': ?releaseTime,
      'releaseType': ?releaseType,
      'securityFix': ?securityFix,
      'supportEndTime': ?supportEndTime,
    };
  }
}

/// The properties of GoldengateElasticsearchConnection.
class GoldengateElasticsearchConnectionProperties {
  /// Authentication type for Elasticsearch.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ELASTICSEARCH_AUTHENTICATION_TYPE_UNSPECIFIED" : Authentication type
  /// not specified.
  /// - "NONE" : No authentication.
  /// - "BASIC" : Basic authentication.
  core.String? authenticationType;

  /// Fingerprint required by TLS security protocol.
  ///
  /// Eg.: '6152b2dfbff200f973c5074a5b91d06ab3b472c07c09a1ea57bb7fd406cdce9c'
  ///
  /// Optional.
  core.String? fingerprint;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses for Elastic Search connection in plain
  /// text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses for Elastic Search connection. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// Security protocol for Elasticsearch.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ELASTICSEARCH_SECURITY_PROTOCOL_UNSPECIFIED" : Security protocol not
  /// specified.
  /// - "PLAIN" : Plain text communication.
  /// - "TLS" : Transport Layer Security.
  core.String? securityProtocol;

  /// Comma separated list of Elasticsearch server addresses, specified as
  /// host:port entries, where :port is optional.
  ///
  /// If port is not specified, it defaults to 9200. Example:
  /// "server1.example.com:4000,server2.example.com:4000"
  ///
  /// Optional.
  core.String? servers;

  /// The technology type of ElasticsearchConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  ///
  /// Optional.
  core.String? username;

  GoldengateElasticsearchConnectionProperties({
    this.authenticationType,
    this.fingerprint,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.servers,
    this.technologyType,
    this.username,
  });

  GoldengateElasticsearchConnectionProperties.fromJson(core.Map json_)
    : this(
        authenticationType: json_['authenticationType'] as core.String?,
        fingerprint: json_['fingerprint'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        servers: json_['servers'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authenticationType = this.authenticationType;
    final fingerprint = this.fingerprint;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final securityProtocol = this.securityProtocol;
    final servers = this.servers;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'authenticationType': ?authenticationType,
      'fingerprint': ?fingerprint,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'securityProtocol': ?securityProtocol,
      'servers': ?servers,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateGenericConnectionProperties.
class GoldengateGenericConnectionProperties {
  /// The host of the GenericConnection.
  ///
  /// Optional.
  core.String? host;

  /// The technology type.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateGenericConnectionProperties({this.host, this.technologyType});

  GoldengateGenericConnectionProperties.fromJson(core.Map json_)
    : this(
        host: json_['host'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final host = this.host;
    final technologyType = this.technologyType;
    return {'host': ?host, 'technologyType': ?technologyType};
  }
}

/// The properties of GoldengateGoldengateConnectionProperties.
class GoldengateGoldengateConnectionProperties {
  /// The name of the GoldengateDeployment associated with the
  /// GoldengateConnection.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}
  ///
  /// Optional.
  core.String? goldengateDeploymentId;

  /// The host of the GoldengateConnection.
  ///
  /// Optional.
  core.String? host;

  /// Input only.
  ///
  /// The password used to connect to the Oracle Goldengate in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password used to connect to the Oracle Goldengate. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The port of the GoldengateConnection.
  ///
  /// Optional.
  core.int? port;

  /// The technology type.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username credential.
  ///
  /// Optional.
  core.String? username;

  GoldengateGoldengateConnectionProperties({
    this.goldengateDeploymentId,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.technologyType,
    this.username,
  });

  GoldengateGoldengateConnectionProperties.fromJson(core.Map json_)
    : this(
        goldengateDeploymentId: json_['goldengateDeploymentId'] as core.String?,
        host: json_['host'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        port: json_['port'] as core.int?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldengateDeploymentId = this.goldengateDeploymentId;
    final host = this.host;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final port = this.port;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'goldengateDeploymentId': ?goldengateDeploymentId,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateGoogleBigQueryConnectionProperties.
class GoldengateGoogleBigQueryConnectionProperties {
  /// The base64 encoded content of the service account key file containing the
  /// credentials required to use Google BigQuery.
  ///
  /// Optional.
  core.String? serviceAccountKeyFile;

  /// The technology type.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateGoogleBigQueryConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  GoldengateGoogleBigQueryConnectionProperties.fromJson(core.Map json_)
    : this(
        serviceAccountKeyFile: json_['serviceAccountKeyFile'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final serviceAccountKeyFile = this.serviceAccountKeyFile;
    final technologyType = this.technologyType;
    return {
      'serviceAccountKeyFile': ?serviceAccountKeyFile,
      'technologyType': ?technologyType,
    };
  }
}

/// The properties of GoldengateGoogleCloudStorageConnectionProperties.
class GoldengateGoogleCloudStorageConnectionProperties {
  /// The base64 encoded content of the service account key file containing the
  /// credentials required to use Google Cloud Storage.
  ///
  /// Optional.
  core.String? serviceAccountKeyFile;

  /// The technology type.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateGoogleCloudStorageConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  GoldengateGoogleCloudStorageConnectionProperties.fromJson(core.Map json_)
    : this(
        serviceAccountKeyFile: json_['serviceAccountKeyFile'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final serviceAccountKeyFile = this.serviceAccountKeyFile;
    final technologyType = this.technologyType;
    return {
      'serviceAccountKeyFile': ?serviceAccountKeyFile,
      'technologyType': ?technologyType,
    };
  }
}

/// The properties of GoldengateGooglePubsubConnection.
class GoldengateGooglePubsubConnectionProperties {
  /// The base64 encoded content of the service account key file containing the
  /// credentials required to use Google Pub/Sub.
  ///
  /// Optional.
  core.String? serviceAccountKeyFile;

  /// The technology type of GooglePubsubConnection.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateGooglePubsubConnectionProperties({
    this.serviceAccountKeyFile,
    this.technologyType,
  });

  GoldengateGooglePubsubConnectionProperties.fromJson(core.Map json_)
    : this(
        serviceAccountKeyFile: json_['serviceAccountKeyFile'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final serviceAccountKeyFile = this.serviceAccountKeyFile;
    final technologyType = this.technologyType;
    return {
      'serviceAccountKeyFile': ?serviceAccountKeyFile,
      'technologyType': ?technologyType,
    };
  }
}

/// The group to roles mapping of the GoldengateDeployment.
class GoldengateGroupToRolesMapping {
  /// The administrator group id.
  ///
  /// Output only.
  core.String? administratorGroupId;

  /// The operator group id.
  ///
  /// Output only.
  core.String? operatorGroupId;

  /// The security group id.
  ///
  /// Output only.
  core.String? securityGroupId;

  /// The user group id.
  ///
  /// Output only.
  core.String? userGroupId;

  GoldengateGroupToRolesMapping({
    this.administratorGroupId,
    this.operatorGroupId,
    this.securityGroupId,
    this.userGroupId,
  });

  GoldengateGroupToRolesMapping.fromJson(core.Map json_)
    : this(
        administratorGroupId: json_['administratorGroupId'] as core.String?,
        operatorGroupId: json_['operatorGroupId'] as core.String?,
        securityGroupId: json_['securityGroupId'] as core.String?,
        userGroupId: json_['userGroupId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final administratorGroupId = this.administratorGroupId;
    final operatorGroupId = this.operatorGroupId;
    final securityGroupId = this.securityGroupId;
    final userGroupId = this.userGroupId;
    return {
      'administratorGroupId': ?administratorGroupId,
      'operatorGroupId': ?operatorGroupId,
      'securityGroupId': ?securityGroupId,
      'userGroupId': ?userGroupId,
    };
  }
}

/// The properties of GoldengateHdfsConnection.
class GoldengateHdfsConnectionProperties {
  /// The content of the Hadoop Distributed File System configuration file
  /// (core-site.xml).
  ///
  /// Optional.
  core.String? coreSiteXml;

  /// The technology type of HdfsConnection.
  ///
  /// Optional.
  core.String? technologyType;

  GoldengateHdfsConnectionProperties({this.coreSiteXml, this.technologyType});

  GoldengateHdfsConnectionProperties.fromJson(core.Map json_)
    : this(
        coreSiteXml: json_['coreSiteXml'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final coreSiteXml = this.coreSiteXml;
    final technologyType = this.technologyType;
    return {'coreSiteXml': ?coreSiteXml, 'technologyType': ?technologyType};
  }
}

/// The properties of GoldengateIcebergConnection.
class GoldengateIcebergConnectionProperties {
  /// The Iceberg catalog.
  ///
  /// Required.
  IcebergCatalog? catalog;

  /// The Iceberg storage.
  ///
  /// Required.
  IcebergStorage? storage;

  /// The technology type of Iceberg connection.
  ///
  /// Required.
  core.String? technologyType;

  GoldengateIcebergConnectionProperties({
    this.catalog,
    this.storage,
    this.technologyType,
  });

  GoldengateIcebergConnectionProperties.fromJson(core.Map json_)
    : this(
        catalog: json_.containsKey('catalog')
            ? IcebergCatalog.fromJson(
                json_['catalog'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        storage: json_.containsKey('storage')
            ? IcebergStorage.fromJson(
                json_['storage'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        technologyType: json_['technologyType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final catalog = this.catalog;
    final storage = this.storage;
    final technologyType = this.technologyType;
    return {
      'catalog': ?catalog,
      'storage': ?storage,
      'technologyType': ?technologyType,
    };
  }
}

/// The properties of GoldengateJavaMessageServiceConnection.
class GoldengateJavaMessageServiceConnectionProperties {
  /// Authentication type for Java Message Service.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JMS_AUTHENTICATION_TYPE_UNSPECIFIED" : Authentication type not
  /// specified.
  /// - "NONE" : No authentication.
  /// - "BASIC" : Basic authentication.
  core.String? authenticationType;

  /// The Java class implementing javax.jms.ConnectionFactory interface supplied
  /// by the JMS provider.
  ///
  /// Optional.
  core.String? connectionFactory;

  /// Connection URL of the Java Message Service, specifying the protocol, host,
  /// and port.
  ///
  /// e.g.: 'mq://myjms.host.domain:7676'
  ///
  /// Optional.
  core.String? connectionUrl;

  /// The Connection Factory can be looked up using this name.
  ///
  /// e.g.: 'ConnectionFactory'
  ///
  /// Optional.
  core.String? jndiConnectionFactory;

  /// The implementation of javax.naming.spi.InitialContextFactory interface
  /// used to obtain initial naming context.
  ///
  /// Optional.
  core.String? jndiInitialContextFactory;

  /// The URL that Java Message Service will use to contact the JNDI provider.
  ///
  /// e.g.: 'tcp://myjms.host.domain:61616?jms.prefetchPolicy.all=1000'
  ///
  /// Optional.
  core.String? jndiProviderUrl;

  /// The password associated to the principal.
  ///
  /// Optional.
  core.String? jndiSecurityCredentialsSecret;

  /// Specifies the identity of the principal (user) to be authenticated.
  ///
  /// Optional.
  core.String? jndiSecurityPrincipal;

  /// The base64 encoded content of the KeyStore file.
  ///
  /// Optional.
  core.String? keyStoreFile;

  /// Input only.
  ///
  /// The KeyStore password in plain text.
  ///
  /// Optional.
  core.String? keyStorePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// KeyStore password. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? keyStorePasswordSecretVersion;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses to connect the Java Message Service in
  /// plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses to connect the associated Java Message
  /// Service. Format: projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// Security protocol for Java Message Service.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "JMS_SECURITY_PROTOCOL_UNSPECIFIED" : Security protocol not specified.
  /// - "PLAIN" : Plain text communication.
  /// - "TLS" : Transport Layer Security.
  /// - "MTLS" : Mutual Transport Layer Security.
  core.String? securityProtocol;

  /// Input only.
  ///
  /// The password for the cert inside of the KeyStore in plain text.
  ///
  /// Optional.
  core.String? sslKeyPassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password for the cert inside of the KeyStore. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? sslKeyPasswordSecretVersion;

  /// The technology type of JavaMessageServiceConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The base64 encoded content of the TrustStore file.
  ///
  /// Optional.
  core.String? trustStoreFile;

  /// Input only.
  ///
  /// The TrustStore password in plain text.
  ///
  /// Optional.
  core.String? trustStorePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// TrustStore password. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? trustStorePasswordSecretVersion;

  /// If set to true, Java Naming and Directory Interface (JNDI) properties
  /// should be provided.
  ///
  /// Optional.
  core.bool? useJndi;

  /// The username Oracle Goldengate uses to connect to the Java Message
  /// Service.
  ///
  /// Optional.
  core.String? username;

  GoldengateJavaMessageServiceConnectionProperties({
    this.authenticationType,
    this.connectionFactory,
    this.connectionUrl,
    this.jndiConnectionFactory,
    this.jndiInitialContextFactory,
    this.jndiProviderUrl,
    this.jndiSecurityCredentialsSecret,
    this.jndiSecurityPrincipal,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.useJndi,
    this.username,
  });

  GoldengateJavaMessageServiceConnectionProperties.fromJson(core.Map json_)
    : this(
        authenticationType: json_['authenticationType'] as core.String?,
        connectionFactory: json_['connectionFactory'] as core.String?,
        connectionUrl: json_['connectionUrl'] as core.String?,
        jndiConnectionFactory: json_['jndiConnectionFactory'] as core.String?,
        jndiInitialContextFactory:
            json_['jndiInitialContextFactory'] as core.String?,
        jndiProviderUrl: json_['jndiProviderUrl'] as core.String?,
        jndiSecurityCredentialsSecret:
            json_['jndiSecurityCredentialsSecret'] as core.String?,
        jndiSecurityPrincipal: json_['jndiSecurityPrincipal'] as core.String?,
        keyStoreFile: json_['keyStoreFile'] as core.String?,
        keyStorePassword: json_['keyStorePassword'] as core.String?,
        keyStorePasswordSecretVersion:
            json_['keyStorePasswordSecretVersion'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        sslKeyPassword: json_['sslKeyPassword'] as core.String?,
        sslKeyPasswordSecretVersion:
            json_['sslKeyPasswordSecretVersion'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        trustStoreFile: json_['trustStoreFile'] as core.String?,
        trustStorePassword: json_['trustStorePassword'] as core.String?,
        trustStorePasswordSecretVersion:
            json_['trustStorePasswordSecretVersion'] as core.String?,
        useJndi: json_['useJndi'] as core.bool?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authenticationType = this.authenticationType;
    final connectionFactory = this.connectionFactory;
    final connectionUrl = this.connectionUrl;
    final jndiConnectionFactory = this.jndiConnectionFactory;
    final jndiInitialContextFactory = this.jndiInitialContextFactory;
    final jndiProviderUrl = this.jndiProviderUrl;
    final jndiSecurityCredentialsSecret = this.jndiSecurityCredentialsSecret;
    final jndiSecurityPrincipal = this.jndiSecurityPrincipal;
    final keyStoreFile = this.keyStoreFile;
    final keyStorePassword = this.keyStorePassword;
    final keyStorePasswordSecretVersion = this.keyStorePasswordSecretVersion;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final securityProtocol = this.securityProtocol;
    final sslKeyPassword = this.sslKeyPassword;
    final sslKeyPasswordSecretVersion = this.sslKeyPasswordSecretVersion;
    final technologyType = this.technologyType;
    final trustStoreFile = this.trustStoreFile;
    final trustStorePassword = this.trustStorePassword;
    final trustStorePasswordSecretVersion =
        this.trustStorePasswordSecretVersion;
    final useJndi = this.useJndi;
    final username = this.username;
    return {
      'authenticationType': ?authenticationType,
      'connectionFactory': ?connectionFactory,
      'connectionUrl': ?connectionUrl,
      'jndiConnectionFactory': ?jndiConnectionFactory,
      'jndiInitialContextFactory': ?jndiInitialContextFactory,
      'jndiProviderUrl': ?jndiProviderUrl,
      'jndiSecurityCredentialsSecret': ?jndiSecurityCredentialsSecret,
      'jndiSecurityPrincipal': ?jndiSecurityPrincipal,
      'keyStoreFile': ?keyStoreFile,
      'keyStorePassword': ?keyStorePassword,
      'keyStorePasswordSecretVersion': ?keyStorePasswordSecretVersion,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'securityProtocol': ?securityProtocol,
      'sslKeyPassword': ?sslKeyPassword,
      'sslKeyPasswordSecretVersion': ?sslKeyPasswordSecretVersion,
      'technologyType': ?technologyType,
      'trustStoreFile': ?trustStoreFile,
      'trustStorePassword': ?trustStorePassword,
      'trustStorePasswordSecretVersion': ?trustStorePasswordSecretVersion,
      'useJndi': ?useJndi,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateKafkaConnection.
class GoldengateKafkaConnectionProperties {
  /// Kafka bootstrap.
  ///
  /// Equivalent of bootstrap.servers configuration property in Kafka: list of
  /// KafkaBootstrapServer objects specified by host/port. Used for establishing
  /// the initial connection to the Kafka cluster. Example:
  /// "server1.example.com:9092,server2.example.com:9092"
  ///
  /// Optional.
  core.List<KafkaBootstrapServer>? bootstrapServers;

  /// The OCID of the Kafka cluster being referenced from OCI Streaming with
  /// Apache Kafka.
  ///
  /// Optional.
  core.String? clusterId;

  /// The base64 encoded content of the consumer.properties file.
  ///
  /// Optional.
  core.String? consumerPropertiesFile;

  /// The base64 encoded content of the KeyStore file.
  ///
  /// Optional.
  core.String? keyStoreFile;

  /// Input only.
  ///
  /// The KeyStore password in plain text.
  ///
  /// Optional.
  core.String? keyStorePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// KeyStore password. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? keyStorePasswordSecretVersion;

  /// Input only.
  ///
  /// The password for Kafka basic/SASL auth in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password for Kafka basic/SASL auth. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The base64 encoded content of the producer.properties file.
  ///
  /// Optional.
  core.String? producerPropertiesFile;

  /// Security Type for Kafka.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "KAFKA_SECURITY_PROTOCOL_UNSPECIFIED" : Security type not specified.
  /// - "SSL" : SSL security protocol.
  /// - "SASL_SSL" : SASL SSL security protocol.
  /// - "PLAINTEXT" : Plaintext security protocol.
  /// - "SASL_PLAINTEXT" : SASL Plaintext security protocol.
  core.String? securityProtocol;

  /// Input only.
  ///
  /// The password for the cert inside of the KeyStore in plain text.
  ///
  /// Optional.
  core.String? sslKeyPassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password for the cert inside of the KeyStore. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? sslKeyPasswordSecretVersion;

  /// The OCID of the stream pool being referenced.
  ///
  /// Optional.
  core.String? streamPoolId;

  /// The technology type of KafkaConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The base64 encoded content of the TrustStore file.
  ///
  /// Optional.
  core.String? trustStoreFile;

  /// Input only.
  ///
  /// The TrustStore password in plain text.
  ///
  /// Optional.
  core.String? trustStorePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// TrustStore password. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? trustStorePasswordSecretVersion;

  /// Specifies that the user intends to authenticate to the instance using a
  /// resource principal.
  ///
  /// Applicable only for OCI Streaming connections.
  ///
  /// Optional.
  core.bool? useResourcePrincipal;

  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  ///
  /// Optional.
  core.String? username;

  GoldengateKafkaConnectionProperties({
    this.bootstrapServers,
    this.clusterId,
    this.consumerPropertiesFile,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.producerPropertiesFile,
    this.securityProtocol,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.streamPoolId,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.useResourcePrincipal,
    this.username,
  });

  GoldengateKafkaConnectionProperties.fromJson(core.Map json_)
    : this(
        bootstrapServers: (json_['bootstrapServers'] as core.List?)
            ?.map(
              (value) => KafkaBootstrapServer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        clusterId: json_['clusterId'] as core.String?,
        consumerPropertiesFile: json_['consumerPropertiesFile'] as core.String?,
        keyStoreFile: json_['keyStoreFile'] as core.String?,
        keyStorePassword: json_['keyStorePassword'] as core.String?,
        keyStorePasswordSecretVersion:
            json_['keyStorePasswordSecretVersion'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        producerPropertiesFile: json_['producerPropertiesFile'] as core.String?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        sslKeyPassword: json_['sslKeyPassword'] as core.String?,
        sslKeyPasswordSecretVersion:
            json_['sslKeyPasswordSecretVersion'] as core.String?,
        streamPoolId: json_['streamPoolId'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        trustStoreFile: json_['trustStoreFile'] as core.String?,
        trustStorePassword: json_['trustStorePassword'] as core.String?,
        trustStorePasswordSecretVersion:
            json_['trustStorePasswordSecretVersion'] as core.String?,
        useResourcePrincipal: json_['useResourcePrincipal'] as core.bool?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bootstrapServers = this.bootstrapServers;
    final clusterId = this.clusterId;
    final consumerPropertiesFile = this.consumerPropertiesFile;
    final keyStoreFile = this.keyStoreFile;
    final keyStorePassword = this.keyStorePassword;
    final keyStorePasswordSecretVersion = this.keyStorePasswordSecretVersion;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final producerPropertiesFile = this.producerPropertiesFile;
    final securityProtocol = this.securityProtocol;
    final sslKeyPassword = this.sslKeyPassword;
    final sslKeyPasswordSecretVersion = this.sslKeyPasswordSecretVersion;
    final streamPoolId = this.streamPoolId;
    final technologyType = this.technologyType;
    final trustStoreFile = this.trustStoreFile;
    final trustStorePassword = this.trustStorePassword;
    final trustStorePasswordSecretVersion =
        this.trustStorePasswordSecretVersion;
    final useResourcePrincipal = this.useResourcePrincipal;
    final username = this.username;
    return {
      'bootstrapServers': ?bootstrapServers,
      'clusterId': ?clusterId,
      'consumerPropertiesFile': ?consumerPropertiesFile,
      'keyStoreFile': ?keyStoreFile,
      'keyStorePassword': ?keyStorePassword,
      'keyStorePasswordSecretVersion': ?keyStorePasswordSecretVersion,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'producerPropertiesFile': ?producerPropertiesFile,
      'securityProtocol': ?securityProtocol,
      'sslKeyPassword': ?sslKeyPassword,
      'sslKeyPasswordSecretVersion': ?sslKeyPasswordSecretVersion,
      'streamPoolId': ?streamPoolId,
      'technologyType': ?technologyType,
      'trustStoreFile': ?trustStoreFile,
      'trustStorePassword': ?trustStorePassword,
      'trustStorePasswordSecretVersion': ?trustStorePasswordSecretVersion,
      'useResourcePrincipal': ?useResourcePrincipal,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateKafkaSchemaRegistryConnection.
class GoldengateKafkaSchemaRegistryConnectionProperties {
  /// Used authentication mechanism to access Schema Registry.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTHENTICATION_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "NONE" : No authentication.
  /// - "BASIC" : Basic authentication.
  /// - "MUTUAL" : Mutual authentication.
  core.String? authenticationType;

  /// The base64 encoded content of the KeyStore file.
  ///
  /// Optional.
  core.String? keyStoreFile;

  /// Input only.
  ///
  /// The KeyStore password in plain text.
  ///
  /// Optional.
  core.String? keyStorePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// KeyStore password. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? keyStorePasswordSecretVersion;

  /// Input only.
  ///
  /// The password to access Schema Registry in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password to access Schema Registry using basic authentication. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// Input only.
  ///
  /// The password for the cert inside the KeyStore in plain text.
  ///
  /// Optional.
  core.String? sslKeyPassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password for the cert inside the KeyStore. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? sslKeyPasswordSecretVersion;

  /// The technology type of KafkaSchemaRegistryConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The base64 encoded content of the TrustStore file.
  ///
  /// Optional.
  core.String? trustStoreFile;

  /// Input only.
  ///
  /// The TrustStore password in plain text.
  ///
  /// Optional.
  core.String? trustStorePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// TrustStore password. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? trustStorePasswordSecretVersion;

  /// Kafka Schema Registry URL.
  ///
  /// e.g.: 'https://server1.us.oracle.com:8081'
  ///
  /// Optional.
  core.String? url;

  /// The username to access Schema Registry using basic authentication.
  ///
  /// This value is injected into
  /// 'schema.registry.basic.auth.user.info=user:password' configuration
  /// property.
  ///
  /// Optional.
  core.String? username;

  GoldengateKafkaSchemaRegistryConnectionProperties({
    this.authenticationType,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.url,
    this.username,
  });

  GoldengateKafkaSchemaRegistryConnectionProperties.fromJson(core.Map json_)
    : this(
        authenticationType: json_['authenticationType'] as core.String?,
        keyStoreFile: json_['keyStoreFile'] as core.String?,
        keyStorePassword: json_['keyStorePassword'] as core.String?,
        keyStorePasswordSecretVersion:
            json_['keyStorePasswordSecretVersion'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        sslKeyPassword: json_['sslKeyPassword'] as core.String?,
        sslKeyPasswordSecretVersion:
            json_['sslKeyPasswordSecretVersion'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        trustStoreFile: json_['trustStoreFile'] as core.String?,
        trustStorePassword: json_['trustStorePassword'] as core.String?,
        trustStorePasswordSecretVersion:
            json_['trustStorePasswordSecretVersion'] as core.String?,
        url: json_['url'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authenticationType = this.authenticationType;
    final keyStoreFile = this.keyStoreFile;
    final keyStorePassword = this.keyStorePassword;
    final keyStorePasswordSecretVersion = this.keyStorePasswordSecretVersion;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final sslKeyPassword = this.sslKeyPassword;
    final sslKeyPasswordSecretVersion = this.sslKeyPasswordSecretVersion;
    final technologyType = this.technologyType;
    final trustStoreFile = this.trustStoreFile;
    final trustStorePassword = this.trustStorePassword;
    final trustStorePasswordSecretVersion =
        this.trustStorePasswordSecretVersion;
    final url = this.url;
    final username = this.username;
    return {
      'authenticationType': ?authenticationType,
      'keyStoreFile': ?keyStoreFile,
      'keyStorePassword': ?keyStorePassword,
      'keyStorePasswordSecretVersion': ?keyStorePasswordSecretVersion,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'sslKeyPassword': ?sslKeyPassword,
      'sslKeyPasswordSecretVersion': ?sslKeyPasswordSecretVersion,
      'technologyType': ?technologyType,
      'trustStoreFile': ?trustStoreFile,
      'trustStorePassword': ?trustStorePassword,
      'trustStorePasswordSecretVersion': ?trustStorePasswordSecretVersion,
      'url': ?url,
      'username': ?username,
    };
  }
}

/// The maintenance configuration of the GoldengateDeployment.
class GoldengateMaintenanceConfig {
  /// Defines auto upgrade period for bundle releases.
  ///
  /// Manually configured period cannot be longer than service defined period
  /// for bundle releases. This period must be shorter or equal to major release
  /// upgrade period. Not passing this field during create will equate to using
  /// the service default.
  ///
  /// Optional.
  core.int? bundleReleaseUpgradePeriodDays;

  /// Defines auto upgrade period for interim releases.
  ///
  /// This period must be shorter or equal to bundle release upgrade period.
  ///
  /// Optional.
  core.int? interimReleaseUpgradePeriodDays;

  /// By default auto upgrade for interim releases are not enabled.
  ///
  /// If auto-upgrade is enabled for interim release, you have to specify
  /// interim_release_upgrade_period_days too.
  ///
  /// Optional.
  core.bool? isInterimReleaseAutoUpgradeEnabled;

  /// Defines auto upgrade period for major releases.
  ///
  /// Manually configured period cannot be longer than service defined period
  /// for major releases. Not passing this field during create will equate to
  /// using the service default.
  ///
  /// Optional.
  core.int? majorReleaseUpgradePeriodDays;

  /// Defines auto upgrade period for releases with security fix.
  ///
  /// Manually configured period cannot be longer than service defined period
  /// for security releases. Not passing this field during create will equate to
  /// using the service default.
  ///
  /// Optional.
  core.int? securityPatchUpgradePeriodDays;

  GoldengateMaintenanceConfig({
    this.bundleReleaseUpgradePeriodDays,
    this.interimReleaseUpgradePeriodDays,
    this.isInterimReleaseAutoUpgradeEnabled,
    this.majorReleaseUpgradePeriodDays,
    this.securityPatchUpgradePeriodDays,
  });

  GoldengateMaintenanceConfig.fromJson(core.Map json_)
    : this(
        bundleReleaseUpgradePeriodDays:
            json_['bundleReleaseUpgradePeriodDays'] as core.int?,
        interimReleaseUpgradePeriodDays:
            json_['interimReleaseUpgradePeriodDays'] as core.int?,
        isInterimReleaseAutoUpgradeEnabled:
            json_['isInterimReleaseAutoUpgradeEnabled'] as core.bool?,
        majorReleaseUpgradePeriodDays:
            json_['majorReleaseUpgradePeriodDays'] as core.int?,
        securityPatchUpgradePeriodDays:
            json_['securityPatchUpgradePeriodDays'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bundleReleaseUpgradePeriodDays = this.bundleReleaseUpgradePeriodDays;
    final interimReleaseUpgradePeriodDays =
        this.interimReleaseUpgradePeriodDays;
    final isInterimReleaseAutoUpgradeEnabled =
        this.isInterimReleaseAutoUpgradeEnabled;
    final majorReleaseUpgradePeriodDays = this.majorReleaseUpgradePeriodDays;
    final securityPatchUpgradePeriodDays = this.securityPatchUpgradePeriodDays;
    return {
      'bundleReleaseUpgradePeriodDays': ?bundleReleaseUpgradePeriodDays,
      'interimReleaseUpgradePeriodDays': ?interimReleaseUpgradePeriodDays,
      'isInterimReleaseAutoUpgradeEnabled': ?isInterimReleaseAutoUpgradeEnabled,
      'majorReleaseUpgradePeriodDays': ?majorReleaseUpgradePeriodDays,
      'securityPatchUpgradePeriodDays': ?securityPatchUpgradePeriodDays,
    };
  }
}

/// The maintenance window of the GoldengateDeployment.
class GoldengateMaintenanceWindow {
  /// Days of the week.
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
  core.String? day;

  /// Start hour for maintenance period.
  ///
  /// Hour is in UTC.
  ///
  /// Required.
  core.int? startHour;

  GoldengateMaintenanceWindow({this.day, this.startHour});

  GoldengateMaintenanceWindow.fromJson(core.Map json_)
    : this(
        day: json_['day'] as core.String?,
        startHour: json_['startHour'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final day = this.day;
    final startHour = this.startHour;
    return {'day': ?day, 'startHour': ?startHour};
  }
}

/// The properties of GoldengateMicrosoftFabricConnection.
class GoldengateMicrosoftFabricConnectionProperties {
  /// Azure client ID of the application.
  ///
  /// Optional.
  core.String? clientId;

  /// Client secret associated with the client id.
  ///
  /// Optional.
  core.String? clientSecret;

  /// Optional Microsoft Fabric service endpoint.
  ///
  /// Default value: https://onelake.dfs.fabric.microsoft.com
  ///
  /// Optional.
  core.String? endpoint;

  /// The technology type of MicrosoftFabricConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// Azure tenant ID of the application.
  ///
  /// Optional.
  core.String? tenantId;

  GoldengateMicrosoftFabricConnectionProperties({
    this.clientId,
    this.clientSecret,
    this.endpoint,
    this.technologyType,
    this.tenantId,
  });

  GoldengateMicrosoftFabricConnectionProperties.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        endpoint: json_['endpoint'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        tenantId: json_['tenantId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final endpoint = this.endpoint;
    final technologyType = this.technologyType;
    final tenantId = this.tenantId;
    return {
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'endpoint': ?endpoint,
      'technologyType': ?technologyType,
      'tenantId': ?tenantId,
    };
  }
}

/// The properties of GoldengateMicrosoftSqlserverConnection.
class GoldengateMicrosoftSqlserverConnectionProperties {
  /// An array of name-value pair attribute entries.
  ///
  /// Used as additional parameters in connection string.
  ///
  /// Optional.
  core.List<NameValuePair>? additionalAttributes;

  /// The name of the database.
  ///
  /// Optional.
  core.String? database;

  /// The name or address of a host.
  ///
  /// Optional.
  core.String? host;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses for Microsoft SQL Server connection in
  /// plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses for Microsoft SQL Server connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The port of an endpoint usually specified for a connection.
  ///
  /// Optional.
  core.int? port;

  /// Security Type for Microsoft SQL Server.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MICROSOFT_SQLSERVER_SECURITY_PROTOCOL_UNSPECIFIED" : Security type not
  /// specified.
  /// - "PLAIN" : Plain text communication.
  /// - "TLS" : Transport Layer Security.
  core.String? securityProtocol;

  /// If set to true, the driver validates the certificate that is sent by the
  /// database server.
  ///
  /// Optional.
  core.bool? serverCertificateValidationRequired;

  /// Database Certificate - The base64 encoded content of a .pem or .crt file
  /// containing the server public key (for 1-way SSL).
  ///
  /// Optional.
  core.String? sslCaFile;

  /// The technology type of MicrosoftSqlserverConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect to the Microsoft SQL
  /// Server.
  ///
  /// Optional.
  core.String? username;

  GoldengateMicrosoftSqlserverConnectionProperties({
    this.additionalAttributes,
    this.database,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.serverCertificateValidationRequired,
    this.sslCaFile,
    this.technologyType,
    this.username,
  });

  GoldengateMicrosoftSqlserverConnectionProperties.fromJson(core.Map json_)
    : this(
        additionalAttributes: (json_['additionalAttributes'] as core.List?)
            ?.map(
              (value) => NameValuePair.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        database: json_['database'] as core.String?,
        host: json_['host'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        port: json_['port'] as core.int?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        serverCertificateValidationRequired:
            json_['serverCertificateValidationRequired'] as core.bool?,
        sslCaFile: json_['sslCaFile'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalAttributes = this.additionalAttributes;
    final database = this.database;
    final host = this.host;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final port = this.port;
    final securityProtocol = this.securityProtocol;
    final serverCertificateValidationRequired =
        this.serverCertificateValidationRequired;
    final sslCaFile = this.sslCaFile;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'additionalAttributes': ?additionalAttributes,
      'database': ?database,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'securityProtocol': ?securityProtocol,
      'serverCertificateValidationRequired':
          ?serverCertificateValidationRequired,
      'sslCaFile': ?sslCaFile,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateMongodbConnection.
class GoldengateMongodbConnectionProperties {
  /// MongoDB connection string.
  ///
  /// e.g.: 'mongodb://mongodb0.example.com:27017/recordsrecords'
  ///
  /// Optional.
  core.String? connectionString;

  /// The OCID of the Oracle Autonomous Json Database.
  ///
  /// Optional.
  core.String? databaseId;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses to connect the Mongodb connection in
  /// plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses to connect the Mongodb connection. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// Security Type for MongoDB.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MONGODB_SECURITY_PROTOCOL_UNSPECIFIED" : Security type not specified.
  /// - "PLAIN" : Plain text communication.
  /// - "TLS" : Transport Layer Security.
  /// - "MTLS" : Mutual Transport Layer Security.
  core.String? securityProtocol;

  /// The technology type of MongodbConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// Database Certificate - The base64 encoded content of a .pem file,
  /// containing the server public key (for 1 and 2-way SSL).
  ///
  /// Optional.
  core.String? tlsCaFile;

  /// Client Certificate - The base64 encoded content of a .pem file, containing
  /// the client public key (for 2-way SSL).
  ///
  /// Optional.
  core.String? tlsCertificateKeyFile;

  /// Input only.
  ///
  /// The Client Certificate key file password in plain text.
  ///
  /// Optional.
  core.String? tlsCertificateKeyFilePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// Client Certificate key file password in Secret Manager. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? tlsCertificateKeyFilePasswordSecretVersion;

  /// The username Oracle Goldengate uses to connect to the database.
  ///
  /// Optional.
  core.String? username;

  GoldengateMongodbConnectionProperties({
    this.connectionString,
    this.databaseId,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.technologyType,
    this.tlsCaFile,
    this.tlsCertificateKeyFile,
    this.tlsCertificateKeyFilePassword,
    this.tlsCertificateKeyFilePasswordSecretVersion,
    this.username,
  });

  GoldengateMongodbConnectionProperties.fromJson(core.Map json_)
    : this(
        connectionString: json_['connectionString'] as core.String?,
        databaseId: json_['databaseId'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        tlsCaFile: json_['tlsCaFile'] as core.String?,
        tlsCertificateKeyFile: json_['tlsCertificateKeyFile'] as core.String?,
        tlsCertificateKeyFilePassword:
            json_['tlsCertificateKeyFilePassword'] as core.String?,
        tlsCertificateKeyFilePasswordSecretVersion:
            json_['tlsCertificateKeyFilePasswordSecretVersion'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionString = this.connectionString;
    final databaseId = this.databaseId;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final securityProtocol = this.securityProtocol;
    final technologyType = this.technologyType;
    final tlsCaFile = this.tlsCaFile;
    final tlsCertificateKeyFile = this.tlsCertificateKeyFile;
    final tlsCertificateKeyFilePassword = this.tlsCertificateKeyFilePassword;
    final tlsCertificateKeyFilePasswordSecretVersion =
        this.tlsCertificateKeyFilePasswordSecretVersion;
    final username = this.username;
    return {
      'connectionString': ?connectionString,
      'databaseId': ?databaseId,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'securityProtocol': ?securityProtocol,
      'technologyType': ?technologyType,
      'tlsCaFile': ?tlsCaFile,
      'tlsCertificateKeyFile': ?tlsCertificateKeyFile,
      'tlsCertificateKeyFilePassword': ?tlsCertificateKeyFilePassword,
      'tlsCertificateKeyFilePasswordSecretVersion':
          ?tlsCertificateKeyFilePasswordSecretVersion,
      'username': ?username,
    };
  }
}

/// Properties of GoldengateMysqlConnection.
class GoldengateMysqlConnectionProperties {
  /// An array of name-value pair attribute entries.
  ///
  /// Used as additional parameters in connection string.
  ///
  /// Optional.
  core.List<NameValuePair>? additionalAttributes;

  /// The name of the database.
  ///
  /// Optional.
  core.String? database;

  /// The OCID of the database system being referenced.
  ///
  /// Optional.
  core.String? dbSystemId;

  /// The name or address of a host.
  ///
  /// Optional.
  core.String? host;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses to connect to MySQL in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses to connect to MySQL. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The port of an endpoint usually specified for a connection.
  ///
  /// Optional.
  core.int? port;

  /// Security Type for MySQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MYSQL_SECURITY_PROTOCOL_UNSPECIFIED" : Security type not specified.
  /// - "PLAIN" : Plain text communication.
  /// - "TLS" : Transport Layer Security.
  /// - "MTLS" : Mutual Transport Layer Security.
  core.String? securityProtocol;

  /// Database Certificate - The base64 encoded content of a .pem or .crt file
  /// containing the server public key (for 1 and 2-way SSL).
  ///
  /// Optional.
  core.String? sslCaFile;

  /// Client Certificate - The base64 encoded content of a .pem or .crt file
  /// containing the client public key (for 2-way SSL).
  ///
  /// Optional.
  core.String? sslCertFile;

  /// The base64 encoded list of certificates revoked by the trusted certificate
  /// authorities (Trusted CA).
  ///
  /// Optional.
  core.String? sslCrlFile;

  /// Client Key - The base64 encoded content of a .pem or .crt file containing
  /// the client private key (for 2-way SSL).
  ///
  /// Optional.
  core.String? sslKeyFile;

  /// SSL modes for MySQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SSL_MODE_UNSPECIFIED" : SSL mode not specified.
  /// - "DISABLED" : SSL is disabled.
  /// - "PREFERRED" : SSL is preferred.
  /// - "REQUIRED" : SSL is required.
  /// - "VERIFY_CA" : SSL is required and certificate is verified.
  /// - "VERIFY_IDENTITY" : SSL is required and certificate and hostname are
  /// verified.
  core.String? sslMode;

  /// The technology type of MysqlConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  ///
  /// Optional.
  core.String? username;

  GoldengateMysqlConnectionProperties({
    this.additionalAttributes,
    this.database,
    this.dbSystemId,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.sslCaFile,
    this.sslCertFile,
    this.sslCrlFile,
    this.sslKeyFile,
    this.sslMode,
    this.technologyType,
    this.username,
  });

  GoldengateMysqlConnectionProperties.fromJson(core.Map json_)
    : this(
        additionalAttributes: (json_['additionalAttributes'] as core.List?)
            ?.map(
              (value) => NameValuePair.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        database: json_['database'] as core.String?,
        dbSystemId: json_['dbSystemId'] as core.String?,
        host: json_['host'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        port: json_['port'] as core.int?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        sslCaFile: json_['sslCaFile'] as core.String?,
        sslCertFile: json_['sslCertFile'] as core.String?,
        sslCrlFile: json_['sslCrlFile'] as core.String?,
        sslKeyFile: json_['sslKeyFile'] as core.String?,
        sslMode: json_['sslMode'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalAttributes = this.additionalAttributes;
    final database = this.database;
    final dbSystemId = this.dbSystemId;
    final host = this.host;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final port = this.port;
    final securityProtocol = this.securityProtocol;
    final sslCaFile = this.sslCaFile;
    final sslCertFile = this.sslCertFile;
    final sslCrlFile = this.sslCrlFile;
    final sslKeyFile = this.sslKeyFile;
    final sslMode = this.sslMode;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'additionalAttributes': ?additionalAttributes,
      'database': ?database,
      'dbSystemId': ?dbSystemId,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'securityProtocol': ?securityProtocol,
      'sslCaFile': ?sslCaFile,
      'sslCertFile': ?sslCertFile,
      'sslCrlFile': ?sslCrlFile,
      'sslKeyFile': ?sslKeyFile,
      'sslMode': ?sslMode,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateOciObjectStorageConnection.
class GoldengateOciObjectStorageConnectionProperties {
  /// The content of the private key file (PEM file) corresponding to the API
  /// key of the fingerprint.
  ///
  /// Optional.
  core.String? privateKeyFile;

  /// The passphrase of the private key.
  ///
  /// Optional.
  core.String? privateKeyPassphraseSecret;

  /// The fingerprint of the API Key of the user specified by the userId.
  ///
  /// Optional.
  core.String? publicKeyFingerprint;

  /// The name of the region of OCI Object Storage.
  ///
  /// e.g.: us-ashburn-1 If the region is not provided, backend will default to
  /// the default region.
  ///
  /// Optional.
  core.String? region;

  /// The technology type of OciObjectStorageConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The OCID of the related OCI tenancy.
  ///
  /// Optional.
  core.String? tenancyId;

  /// Specifies that the user intends to authenticate to the instance using a
  /// resource principal.
  ///
  /// Optional.
  core.bool? useResourcePrincipal;

  /// The OCID of the OCI user who will access the Object Storage.
  ///
  /// The user must have write access to the bucket they want to connect to.
  ///
  /// Optional.
  core.String? userId;

  GoldengateOciObjectStorageConnectionProperties({
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.publicKeyFingerprint,
    this.region,
    this.technologyType,
    this.tenancyId,
    this.useResourcePrincipal,
    this.userId,
  });

  GoldengateOciObjectStorageConnectionProperties.fromJson(core.Map json_)
    : this(
        privateKeyFile: json_['privateKeyFile'] as core.String?,
        privateKeyPassphraseSecret:
            json_['privateKeyPassphraseSecret'] as core.String?,
        publicKeyFingerprint: json_['publicKeyFingerprint'] as core.String?,
        region: json_['region'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        tenancyId: json_['tenancyId'] as core.String?,
        useResourcePrincipal: json_['useResourcePrincipal'] as core.bool?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final privateKeyFile = this.privateKeyFile;
    final privateKeyPassphraseSecret = this.privateKeyPassphraseSecret;
    final publicKeyFingerprint = this.publicKeyFingerprint;
    final region = this.region;
    final technologyType = this.technologyType;
    final tenancyId = this.tenancyId;
    final useResourcePrincipal = this.useResourcePrincipal;
    final userId = this.userId;
    return {
      'privateKeyFile': ?privateKeyFile,
      'privateKeyPassphraseSecret': ?privateKeyPassphraseSecret,
      'publicKeyFingerprint': ?publicKeyFingerprint,
      'region': ?region,
      'technologyType': ?technologyType,
      'tenancyId': ?tenancyId,
      'useResourcePrincipal': ?useResourcePrincipal,
      'userId': ?userId,
    };
  }
}

/// The Ogg data of the GoldengateDeployment.
class GoldengateOggDeployment {
  /// The Goldengate deployment console password in plain text.
  ///
  /// Optional.
  core.String? adminPassword;

  /// Input only.
  ///
  /// The Goldengate deployment console password secret version.
  ///
  /// Optional.
  core.String? adminPasswordSecretVersion;

  /// The Goldengate deployment console username.
  ///
  /// Required.
  core.String? adminUsername;

  /// The certificate of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? certificate;

  /// The credential store of the GoldengateDeployment.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CREDENTIAL_STORE_UNSPECIFIED" : The credential store is unspecified.
  /// - "GOLDENGATE" : The credential store is Goldengate.
  /// - "IAM" : The credential store is IAM.
  core.String? credentialStore;

  /// The name given to the Goldengate service deployment.
  ///
  /// The name must be 1 to 32 characters long, must contain only alphanumeric
  /// characters and must start with a letter.
  ///
  /// Required.
  core.String? deployment;

  /// The group to roles mapping of the GoldengateDeployment.
  ///
  /// Output only.
  GoldengateGroupToRolesMapping? groupRolesMapping;

  /// The identity domain id of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? identityDomainId;

  /// Version of OGG
  ///
  /// Optional.
  core.String? oggVersion;

  /// The password secret id of the GoldengateDeployment.
  ///
  /// Output only.
  core.String? passwordSecretId;

  GoldengateOggDeployment({
    this.adminPassword,
    this.adminPasswordSecretVersion,
    this.adminUsername,
    this.certificate,
    this.credentialStore,
    this.deployment,
    this.groupRolesMapping,
    this.identityDomainId,
    this.oggVersion,
    this.passwordSecretId,
  });

  GoldengateOggDeployment.fromJson(core.Map json_)
    : this(
        adminPassword: json_['adminPassword'] as core.String?,
        adminPasswordSecretVersion:
            json_['adminPasswordSecretVersion'] as core.String?,
        adminUsername: json_['adminUsername'] as core.String?,
        certificate: json_['certificate'] as core.String?,
        credentialStore: json_['credentialStore'] as core.String?,
        deployment: json_['deployment'] as core.String?,
        groupRolesMapping: json_.containsKey('groupRolesMapping')
            ? GoldengateGroupToRolesMapping.fromJson(
                json_['groupRolesMapping']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        identityDomainId: json_['identityDomainId'] as core.String?,
        oggVersion: json_['oggVersion'] as core.String?,
        passwordSecretId: json_['passwordSecretId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final adminPassword = this.adminPassword;
    final adminPasswordSecretVersion = this.adminPasswordSecretVersion;
    final adminUsername = this.adminUsername;
    final certificate = this.certificate;
    final credentialStore = this.credentialStore;
    final deployment = this.deployment;
    final groupRolesMapping = this.groupRolesMapping;
    final identityDomainId = this.identityDomainId;
    final oggVersion = this.oggVersion;
    final passwordSecretId = this.passwordSecretId;
    return {
      'adminPassword': ?adminPassword,
      'adminPasswordSecretVersion': ?adminPasswordSecretVersion,
      'adminUsername': ?adminUsername,
      'certificate': ?certificate,
      'credentialStore': ?credentialStore,
      'deployment': ?deployment,
      'groupRolesMapping': ?groupRolesMapping,
      'identityDomainId': ?identityDomainId,
      'oggVersion': ?oggVersion,
      'passwordSecretId': ?passwordSecretId,
    };
  }
}

/// The properties of GoldengateOracleAIDataPlatformConnection.
class GoldengateOracleAIDataPlatformConnectionProperties {
  /// Connection URL.
  ///
  /// It must start with 'jdbc:spark://'
  ///
  /// Optional.
  core.String? connectionUrl;

  /// The content of the private key file (PEM file) corresponding to the API
  /// key of the fingerprint.
  ///
  /// Optional.
  core.String? privateKeyFile;

  /// The passphrase of the private key.
  ///
  /// Optional.
  core.String? privateKeyPassphraseSecret;

  /// The fingerprint of the API Key of the user specified by the user_id.
  ///
  /// Optional.
  core.String? publicKeyFingerprint;

  /// The name of the region.
  ///
  /// e.g.: us-ashburn-1
  ///
  /// Optional.
  core.String? region;

  /// The technology type of OracleAiDataPlatformConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The OCID of the related OCI tenancy.
  ///
  /// Optional.
  core.String? tenancyId;

  /// Specifies that the user intends to authenticate to the instance using a
  /// resource principal.
  ///
  /// Optional.
  core.bool? useResourcePrincipal;

  /// The OCID of the OCI user who will access.
  ///
  /// Optional.
  core.String? userId;

  GoldengateOracleAIDataPlatformConnectionProperties({
    this.connectionUrl,
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.publicKeyFingerprint,
    this.region,
    this.technologyType,
    this.tenancyId,
    this.useResourcePrincipal,
    this.userId,
  });

  GoldengateOracleAIDataPlatformConnectionProperties.fromJson(core.Map json_)
    : this(
        connectionUrl: json_['connectionUrl'] as core.String?,
        privateKeyFile: json_['privateKeyFile'] as core.String?,
        privateKeyPassphraseSecret:
            json_['privateKeyPassphraseSecret'] as core.String?,
        publicKeyFingerprint: json_['publicKeyFingerprint'] as core.String?,
        region: json_['region'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        tenancyId: json_['tenancyId'] as core.String?,
        useResourcePrincipal: json_['useResourcePrincipal'] as core.bool?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionUrl = this.connectionUrl;
    final privateKeyFile = this.privateKeyFile;
    final privateKeyPassphraseSecret = this.privateKeyPassphraseSecret;
    final publicKeyFingerprint = this.publicKeyFingerprint;
    final region = this.region;
    final technologyType = this.technologyType;
    final tenancyId = this.tenancyId;
    final useResourcePrincipal = this.useResourcePrincipal;
    final userId = this.userId;
    return {
      'connectionUrl': ?connectionUrl,
      'privateKeyFile': ?privateKeyFile,
      'privateKeyPassphraseSecret': ?privateKeyPassphraseSecret,
      'publicKeyFingerprint': ?publicKeyFingerprint,
      'region': ?region,
      'technologyType': ?technologyType,
      'tenancyId': ?tenancyId,
      'useResourcePrincipal': ?useResourcePrincipal,
      'userId': ?userId,
    };
  }
}

/// The properties of Goldengate Oracle Database Connection.
class GoldengateOracleConnectionProperties {
  /// Authentication mode.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ORACLE_AUTHENTICATION_MODE_UNSPECIFIED" : Authentication mode not
  /// specified.
  /// - "TLS" : TLS authentication mode.
  /// - "MTLS" : MTLS authentication mode.
  core.String? authenticationMode;

  /// Connect descriptor or Easy Connect Naming method used to connect to a
  /// database.
  ///
  /// Optional.
  core.String? connectionString;

  /// Autonomous AI Database instance id of database in Oracle Database @ Google
  /// Cloud.
  ///
  /// If gcp_oracle_database_id is provided, connection_string must be empty.
  /// Format:
  /// projects/{project}/locations/{location}/autonomousDatabases/{autonomous_database}
  ///
  /// Optional.
  core.String? gcpOracleDatabaseId;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The mode of the database connection session to be established by the data
  /// client.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SESSION_MODE_UNSPECIFIED" : Default unspecified value.
  /// - "DIRECT" : Indicates that the resource is using direct session mode.
  /// - "REDIRECT" : Indicates that the resource is using redirect session mode.
  core.String? sessionMode;

  /// The technology type.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect.
  ///
  /// Optional.
  core.String? username;

  /// The wallet contents Oracle Goldengate uses to make connections to a
  /// database.
  ///
  /// This attribute is expected to be base64 encoded.
  ///
  /// Optional.
  core.String? walletFile;

  GoldengateOracleConnectionProperties({
    this.authenticationMode,
    this.connectionString,
    this.gcpOracleDatabaseId,
    this.password,
    this.passwordSecretVersion,
    this.sessionMode,
    this.technologyType,
    this.username,
    this.walletFile,
  });

  GoldengateOracleConnectionProperties.fromJson(core.Map json_)
    : this(
        authenticationMode: json_['authenticationMode'] as core.String?,
        connectionString: json_['connectionString'] as core.String?,
        gcpOracleDatabaseId: json_['gcpOracleDatabaseId'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        sessionMode: json_['sessionMode'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
        walletFile: json_['walletFile'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authenticationMode = this.authenticationMode;
    final connectionString = this.connectionString;
    final gcpOracleDatabaseId = this.gcpOracleDatabaseId;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final sessionMode = this.sessionMode;
    final technologyType = this.technologyType;
    final username = this.username;
    final walletFile = this.walletFile;
    return {
      'authenticationMode': ?authenticationMode,
      'connectionString': ?connectionString,
      'gcpOracleDatabaseId': ?gcpOracleDatabaseId,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'sessionMode': ?sessionMode,
      'technologyType': ?technologyType,
      'username': ?username,
      'walletFile': ?walletFile,
    };
  }
}

/// The properties of GoldengateOracleNosqlConnection.
class GoldengateOracleNosqlConnectionProperties {
  /// The content of the private key file (PEM file) corresponding to the API
  /// key of the fingerprint.
  ///
  /// Optional.
  core.String? privateKeyFile;

  /// The passphrase of the private key.
  ///
  /// Optional.
  core.String? privateKeyPassphraseSecret;

  /// The fingerprint of the API Key of the user specified by the userId.
  ///
  /// Optional.
  core.String? publicKeyFingerprint;

  /// The name of the region.
  ///
  /// e.g.: us-ashburn-1
  ///
  /// Optional.
  core.String? region;

  /// The technology type of OracleNosqlConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The OCID of the OCI tenancy.
  ///
  /// Optional.
  core.String? tenancyId;

  /// Specifies that the user intends to authenticate to the instance using a
  /// resource principal.
  ///
  /// Optional.
  core.bool? useResourcePrincipal;

  /// The OCID of the OCI user who will access the Oracle NoSQL database.
  ///
  /// Optional.
  core.String? userId;

  GoldengateOracleNosqlConnectionProperties({
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.publicKeyFingerprint,
    this.region,
    this.technologyType,
    this.tenancyId,
    this.useResourcePrincipal,
    this.userId,
  });

  GoldengateOracleNosqlConnectionProperties.fromJson(core.Map json_)
    : this(
        privateKeyFile: json_['privateKeyFile'] as core.String?,
        privateKeyPassphraseSecret:
            json_['privateKeyPassphraseSecret'] as core.String?,
        publicKeyFingerprint: json_['publicKeyFingerprint'] as core.String?,
        region: json_['region'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        tenancyId: json_['tenancyId'] as core.String?,
        useResourcePrincipal: json_['useResourcePrincipal'] as core.bool?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final privateKeyFile = this.privateKeyFile;
    final privateKeyPassphraseSecret = this.privateKeyPassphraseSecret;
    final publicKeyFingerprint = this.publicKeyFingerprint;
    final region = this.region;
    final technologyType = this.technologyType;
    final tenancyId = this.tenancyId;
    final useResourcePrincipal = this.useResourcePrincipal;
    final userId = this.userId;
    return {
      'privateKeyFile': ?privateKeyFile,
      'privateKeyPassphraseSecret': ?privateKeyPassphraseSecret,
      'publicKeyFingerprint': ?publicKeyFingerprint,
      'region': ?region,
      'technologyType': ?technologyType,
      'tenancyId': ?tenancyId,
      'useResourcePrincipal': ?useResourcePrincipal,
      'userId': ?userId,
    };
  }
}

/// The placement of the GoldengateDeployment.
class GoldengatePlacement {
  /// The availability domain.
  ///
  /// Output only.
  core.String? availabilityDomain;

  /// The fault domain.
  ///
  /// Output only.
  core.String? faultDomain;

  GoldengatePlacement({this.availabilityDomain, this.faultDomain});

  GoldengatePlacement.fromJson(core.Map json_)
    : this(
        availabilityDomain: json_['availabilityDomain'] as core.String?,
        faultDomain: json_['faultDomain'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final availabilityDomain = this.availabilityDomain;
    final faultDomain = this.faultDomain;
    return {
      'availabilityDomain': ?availabilityDomain,
      'faultDomain': ?faultDomain,
    };
  }
}

/// The properties of GoldengatePostgresqlConnection.
class GoldengatePostgresqlConnectionProperties {
  /// An array of name-value pair attribute entries.
  ///
  /// Used as additional parameters in connection string.
  ///
  /// Optional.
  core.List<NameValuePair>? additionalAttributes;

  /// The name of the database.
  ///
  /// Optional.
  core.String? database;

  /// The OCID of the database system being referenced.
  ///
  /// Optional.
  core.String? dbSystemId;

  /// The name or address of a host.
  ///
  /// Optional.
  core.String? host;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses for PostgreSQL connection in plain
  /// text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses for PostgreSQL connection. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The port of an endpoint usually specified for a connection.
  ///
  /// Optional.
  core.int? port;

  /// Security protocol for PostgreSQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "POSTGRESQL_SECURITY_PROTOCOL_UNSPECIFIED" : Security protocol not
  /// specified.
  /// - "PLAIN" : Plain text communication.
  /// - "TLS" : Transport Layer Security.
  /// - "MTLS" : Mutual Transport Layer Security.
  core.String? securityProtocol;

  /// The base64 encoded certificate of the trusted certificate authorities
  /// (Trusted CA) for PostgreSQL.
  ///
  /// Optional.
  core.String? sslCaFile;

  /// The base64 encoded certificate of the PostgreSQL server.
  ///
  /// Optional.
  core.String? sslCertFile;

  /// The base64 encoded list of certificates revoked by the trusted certificate
  /// authorities (Trusted CA).
  ///
  /// Optional.
  core.String? sslCrlFile;

  /// The base64 encoded private key of the PostgreSQL server.
  ///
  /// Optional.
  core.String? sslKeyFile;

  /// SSL modes for PostgreSQL.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "POSTGRESQL_SSL_MODE_UNSPECIFIED" : SSL mode not specified.
  /// - "PREFER" : Prefer SSL.
  /// - "REQUIRE" : Require SSL.
  /// - "VERIFY_CA" : Verify Certificate Authority.
  /// - "VERIFY_FULL" : Verify Full.
  core.String? sslMode;

  /// The technology type of PostgresqlConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  ///
  /// Optional.
  core.String? username;

  GoldengatePostgresqlConnectionProperties({
    this.additionalAttributes,
    this.database,
    this.dbSystemId,
    this.host,
    this.password,
    this.passwordSecretVersion,
    this.port,
    this.securityProtocol,
    this.sslCaFile,
    this.sslCertFile,
    this.sslCrlFile,
    this.sslKeyFile,
    this.sslMode,
    this.technologyType,
    this.username,
  });

  GoldengatePostgresqlConnectionProperties.fromJson(core.Map json_)
    : this(
        additionalAttributes: (json_['additionalAttributes'] as core.List?)
            ?.map(
              (value) => NameValuePair.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        database: json_['database'] as core.String?,
        dbSystemId: json_['dbSystemId'] as core.String?,
        host: json_['host'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        port: json_['port'] as core.int?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        sslCaFile: json_['sslCaFile'] as core.String?,
        sslCertFile: json_['sslCertFile'] as core.String?,
        sslCrlFile: json_['sslCrlFile'] as core.String?,
        sslKeyFile: json_['sslKeyFile'] as core.String?,
        sslMode: json_['sslMode'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalAttributes = this.additionalAttributes;
    final database = this.database;
    final dbSystemId = this.dbSystemId;
    final host = this.host;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final port = this.port;
    final securityProtocol = this.securityProtocol;
    final sslCaFile = this.sslCaFile;
    final sslCertFile = this.sslCertFile;
    final sslCrlFile = this.sslCrlFile;
    final sslKeyFile = this.sslKeyFile;
    final sslMode = this.sslMode;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'additionalAttributes': ?additionalAttributes,
      'database': ?database,
      'dbSystemId': ?dbSystemId,
      'host': ?host,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'port': ?port,
      'securityProtocol': ?securityProtocol,
      'sslCaFile': ?sslCaFile,
      'sslCertFile': ?sslCertFile,
      'sslCrlFile': ?sslCrlFile,
      'sslKeyFile': ?sslKeyFile,
      'sslMode': ?sslMode,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateRedisConnection.
class GoldengateRedisConnectionProperties {
  /// Authentication type for Redis.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "REDIS_AUTHENTICATION_TYPE_UNSPECIFIED" : Authentication type not
  /// specified.
  /// - "NONE" : No authentication.
  /// - "BASIC" : Basic authentication.
  core.String? authenticationType;

  /// The base64 encoded content of the KeyStore file.
  ///
  /// Optional.
  core.String? keyStoreFile;

  /// Input only.
  ///
  /// The KeyStore password in plain text.
  ///
  /// Optional.
  core.String? keyStorePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// KeyStore password. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? keyStorePasswordSecretVersion;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses for Redis connection in plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses for Redis connection. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The OCID of the Redis cluster.
  ///
  /// Optional.
  core.String? redisClusterId;

  /// Security protocol for Redis.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "REDIS_SECURITY_PROTOCOL_UNSPECIFIED" : Security protocol not specified.
  /// - "PLAIN" : Plain text communication.
  /// - "TLS" : Transport Layer Security.
  /// - "MTLS" : Mutual Transport Layer Security.
  core.String? securityProtocol;

  /// Comma separated list of Redis server addresses, specified as host:port
  /// entries, where :port is optional.
  ///
  /// If port is not specified, it defaults to 6379. Example:
  /// "server1.example.com:6379,server2.example.com:6379"
  ///
  /// Optional.
  core.String? servers;

  /// The technology type of RedisConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The base64 encoded content of the TrustStore file.
  ///
  /// Optional.
  core.String? trustStoreFile;

  /// Input only.
  ///
  /// The TrustStore password in plain text.
  ///
  /// Optional.
  core.String? trustStorePassword;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// TrustStore password. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? trustStorePasswordSecretVersion;

  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  ///
  /// Optional.
  core.String? username;

  GoldengateRedisConnectionProperties({
    this.authenticationType,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.redisClusterId,
    this.securityProtocol,
    this.servers,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.username,
  });

  GoldengateRedisConnectionProperties.fromJson(core.Map json_)
    : this(
        authenticationType: json_['authenticationType'] as core.String?,
        keyStoreFile: json_['keyStoreFile'] as core.String?,
        keyStorePassword: json_['keyStorePassword'] as core.String?,
        keyStorePasswordSecretVersion:
            json_['keyStorePasswordSecretVersion'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        redisClusterId: json_['redisClusterId'] as core.String?,
        securityProtocol: json_['securityProtocol'] as core.String?,
        servers: json_['servers'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        trustStoreFile: json_['trustStoreFile'] as core.String?,
        trustStorePassword: json_['trustStorePassword'] as core.String?,
        trustStorePasswordSecretVersion:
            json_['trustStorePasswordSecretVersion'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authenticationType = this.authenticationType;
    final keyStoreFile = this.keyStoreFile;
    final keyStorePassword = this.keyStorePassword;
    final keyStorePasswordSecretVersion = this.keyStorePasswordSecretVersion;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final redisClusterId = this.redisClusterId;
    final securityProtocol = this.securityProtocol;
    final servers = this.servers;
    final technologyType = this.technologyType;
    final trustStoreFile = this.trustStoreFile;
    final trustStorePassword = this.trustStorePassword;
    final trustStorePasswordSecretVersion =
        this.trustStorePasswordSecretVersion;
    final username = this.username;
    return {
      'authenticationType': ?authenticationType,
      'keyStoreFile': ?keyStoreFile,
      'keyStorePassword': ?keyStorePassword,
      'keyStorePasswordSecretVersion': ?keyStorePasswordSecretVersion,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'redisClusterId': ?redisClusterId,
      'securityProtocol': ?securityProtocol,
      'servers': ?servers,
      'technologyType': ?technologyType,
      'trustStoreFile': ?trustStoreFile,
      'trustStorePassword': ?trustStorePassword,
      'trustStorePasswordSecretVersion': ?trustStorePasswordSecretVersion,
      'username': ?username,
    };
  }
}

/// The properties of GoldengateSnowflakeConnection.
class GoldengateSnowflakeConnectionProperties {
  /// Used authentication mechanism to access Snowflake.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTHENTICATION_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "BASIC" : Basic authentication.
  /// - "KEY_PAIR" : Key pair authentication.
  core.String? authenticationType;

  /// JDBC connection URL.
  ///
  /// e.g.: 'jdbc:snowflake://.snowflakecomputing.com/?warehouse=&db='
  ///
  /// Optional.
  core.String? connectionUrl;

  /// Input only.
  ///
  /// The password Oracle Goldengate uses to connect to Snowflake platform in
  /// plain text.
  ///
  /// Optional.
  core.String? password;

  /// Input only.
  ///
  /// The resource name of a secret version in Secret Manager which contains the
  /// password Oracle Goldengate uses to connect to Snowflake platform. Format:
  /// projects/{project}/secrets/{secret}/versions/{version}.
  ///
  /// Optional.
  core.String? passwordSecretVersion;

  /// The content of private key file in PEM format.
  ///
  /// Optional.
  core.String? privateKeyFile;

  /// Password if the private key file is encrypted.
  ///
  /// Optional.
  core.String? privateKeyPassphraseSecret;

  /// The technology type of SnowflakeConnection.
  ///
  /// Optional.
  core.String? technologyType;

  /// The username Oracle Goldengate uses to connect to Snowflake.
  ///
  /// Optional.
  core.String? username;

  GoldengateSnowflakeConnectionProperties({
    this.authenticationType,
    this.connectionUrl,
    this.password,
    this.passwordSecretVersion,
    this.privateKeyFile,
    this.privateKeyPassphraseSecret,
    this.technologyType,
    this.username,
  });

  GoldengateSnowflakeConnectionProperties.fromJson(core.Map json_)
    : this(
        authenticationType: json_['authenticationType'] as core.String?,
        connectionUrl: json_['connectionUrl'] as core.String?,
        password: json_['password'] as core.String?,
        passwordSecretVersion: json_['passwordSecretVersion'] as core.String?,
        privateKeyFile: json_['privateKeyFile'] as core.String?,
        privateKeyPassphraseSecret:
            json_['privateKeyPassphraseSecret'] as core.String?,
        technologyType: json_['technologyType'] as core.String?,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authenticationType = this.authenticationType;
    final connectionUrl = this.connectionUrl;
    final password = this.password;
    final passwordSecretVersion = this.passwordSecretVersion;
    final privateKeyFile = this.privateKeyFile;
    final privateKeyPassphraseSecret = this.privateKeyPassphraseSecret;
    final technologyType = this.technologyType;
    final username = this.username;
    return {
      'authenticationType': ?authenticationType,
      'connectionUrl': ?connectionUrl,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'privateKeyFile': ?privateKeyFile,
      'privateKeyPassphraseSecret': ?privateKeyPassphraseSecret,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }
}

/// The Google Cloud Storage Iceberg storage.
class GoogleCloudStorageIcebergStorage {
  /// The bucket of Google Cloud Storage.
  ///
  /// Required.
  core.String? bucket;

  /// The project ID of Google Cloud Storage.
  ///
  /// Required.
  core.String? projectId;

  /// The base64 encoded content of the service account key file of Google Cloud
  /// Storage.
  ///
  /// Optional.
  core.String? serviceAccountKeyFile;

  GoogleCloudStorageIcebergStorage({
    this.bucket,
    this.projectId,
    this.serviceAccountKeyFile,
  });

  GoogleCloudStorageIcebergStorage.fromJson(core.Map json_)
    : this(
        bucket: json_['bucket'] as core.String?,
        projectId: json_['projectId'] as core.String?,
        serviceAccountKeyFile: json_['serviceAccountKeyFile'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final bucket = this.bucket;
    final projectId = this.projectId;
    final serviceAccountKeyFile = this.serviceAccountKeyFile;
    return {
      'bucket': ?bucket,
      'projectId': ?projectId,
      'serviceAccountKeyFile': ?serviceAccountKeyFile,
    };
  }
}

/// The Iceberg catalog details.
class IcebergCatalog {
  /// The type of Iceberg catalog.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CATALOG_TYPE_UNSPECIFIED" : Catalog type not specified.
  /// - "GLUE" : Glue catalog.
  /// - "HADOOP" : Hadoop catalog.
  /// - "NESSIE" : Nessie catalog.
  /// - "POLARIS" : Polaris catalog.
  /// - "REST" : REST catalog.
  core.String? catalogType;

  /// The Glue Iceberg catalog.
  GlueIcebergCatalog? glueIcebergCatalog;

  /// The Nessie Iceberg catalog.
  NessieIcebergCatalog? nessieIcebergCatalog;

  /// The Polaris Iceberg catalog.
  PolarisIcebergCatalog? polarisIcebergCatalog;

  /// The REST Iceberg catalog.
  RestIcebergCatalog? restIcebergCatalog;

  IcebergCatalog({
    this.catalogType,
    this.glueIcebergCatalog,
    this.nessieIcebergCatalog,
    this.polarisIcebergCatalog,
    this.restIcebergCatalog,
  });

  IcebergCatalog.fromJson(core.Map json_)
    : this(
        catalogType: json_['catalogType'] as core.String?,
        glueIcebergCatalog: json_.containsKey('glueIcebergCatalog')
            ? GlueIcebergCatalog.fromJson(
                json_['glueIcebergCatalog']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        nessieIcebergCatalog: json_.containsKey('nessieIcebergCatalog')
            ? NessieIcebergCatalog.fromJson(
                json_['nessieIcebergCatalog']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        polarisIcebergCatalog: json_.containsKey('polarisIcebergCatalog')
            ? PolarisIcebergCatalog.fromJson(
                json_['polarisIcebergCatalog']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        restIcebergCatalog: json_.containsKey('restIcebergCatalog')
            ? RestIcebergCatalog.fromJson(
                json_['restIcebergCatalog']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final catalogType = this.catalogType;
    final glueIcebergCatalog = this.glueIcebergCatalog;
    final nessieIcebergCatalog = this.nessieIcebergCatalog;
    final polarisIcebergCatalog = this.polarisIcebergCatalog;
    final restIcebergCatalog = this.restIcebergCatalog;
    return {
      'catalogType': ?catalogType,
      'glueIcebergCatalog': ?glueIcebergCatalog,
      'nessieIcebergCatalog': ?nessieIcebergCatalog,
      'polarisIcebergCatalog': ?polarisIcebergCatalog,
      'restIcebergCatalog': ?restIcebergCatalog,
    };
  }
}

/// The Iceberg storage details.
class IcebergStorage {
  /// The Amazon S3 Iceberg storage.
  AmazonS3IcebergStorage? amazonS3IcebergStorage;

  /// The Azure Data Lake Storage Iceberg storage.
  AzureDataLakeStorageIcebergStorage? azureDataLakeStorageIcebergStorage;

  /// The Google Cloud Storage Iceberg storage.
  GoogleCloudStorageIcebergStorage? googleCloudStorageIcebergStorage;

  /// The type of Iceberg storage.
  ///
  /// Required.
  /// Possible string values are:
  /// - "STORAGE_TYPE_UNSPECIFIED" : Storage type not specified.
  /// - "AMAZON_S3" : Amazon S3 storage.
  /// - "GOOGLE_CLOUD_STORAGE" : Google Cloud Storage storage.
  /// - "AZURE_DATA_LAKE_STORAGE" : Azure Data Lake Storage storage.
  core.String? storageType;

  IcebergStorage({
    this.amazonS3IcebergStorage,
    this.azureDataLakeStorageIcebergStorage,
    this.googleCloudStorageIcebergStorage,
    this.storageType,
  });

  IcebergStorage.fromJson(core.Map json_)
    : this(
        amazonS3IcebergStorage: json_.containsKey('amazonS3IcebergStorage')
            ? AmazonS3IcebergStorage.fromJson(
                json_['amazonS3IcebergStorage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        azureDataLakeStorageIcebergStorage:
            json_.containsKey('azureDataLakeStorageIcebergStorage')
            ? AzureDataLakeStorageIcebergStorage.fromJson(
                json_['azureDataLakeStorageIcebergStorage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        googleCloudStorageIcebergStorage:
            json_.containsKey('googleCloudStorageIcebergStorage')
            ? GoogleCloudStorageIcebergStorage.fromJson(
                json_['googleCloudStorageIcebergStorage']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        storageType: json_['storageType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final amazonS3IcebergStorage = this.amazonS3IcebergStorage;
    final azureDataLakeStorageIcebergStorage =
        this.azureDataLakeStorageIcebergStorage;
    final googleCloudStorageIcebergStorage =
        this.googleCloudStorageIcebergStorage;
    final storageType = this.storageType;
    return {
      'amazonS3IcebergStorage': ?amazonS3IcebergStorage,
      'azureDataLakeStorageIcebergStorage': ?azureDataLakeStorageIcebergStorage,
      'googleCloudStorageIcebergStorage': ?googleCloudStorageIcebergStorage,
      'storageType': ?storageType,
    };
  }
}

/// The identity connector details which will allow OCI to securely access the
/// resources in the customer project.
class IdentityConnector {
  /// The connection state of the identity connector.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONNECTION_STATE_UNSPECIFIED" : Default unspecified value.
  /// - "CONNECTED" : The identity pool connection is connected.
  /// - "PARTIALLY_CONNECTED" : The identity pool connection is partially
  /// connected.
  /// - "DISCONNECTED" : The identity pool connection is disconnected.
  /// - "UNKNOWN" : The identity pool connection is in an unknown state.
  core.String? connectionState;

  /// A google managed service account on which customers can grant roles to
  /// access resources in the customer project.
  ///
  /// Example:
  /// `p176944527254-55-75119d87fd8f@gcp-sa-oci.iam.gserviceaccount.com`
  ///
  /// Output only.
  core.String? serviceAgentEmail;

  IdentityConnector({this.connectionState, this.serviceAgentEmail});

  IdentityConnector.fromJson(core.Map json_)
    : this(
        connectionState: json_['connectionState'] as core.String?,
        serviceAgentEmail: json_['serviceAgentEmail'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectionState = this.connectionState;
    final serviceAgentEmail = this.serviceAgentEmail;
    return {
      'connectionState': ?connectionState,
      'serviceAgentEmail': ?serviceAgentEmail,
    };
  }
}

/// The ingress IPs of the GoldengateDeployment.
class IngressIp {
  /// The ingress IP.
  ///
  /// Output only.
  core.String? ingressIpAddress;

  IngressIp({this.ingressIpAddress});

  IngressIp.fromJson(core.Map json_)
    : this(ingressIpAddress: json_['ingressIpAddress'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final ingressIpAddress = this.ingressIpAddress;
    return {'ingressIpAddress': ?ingressIpAddress};
  }
}

/// Represents a Kafka bootstrap server with host name, optional port defaults
/// to 9092, and an optional private ip.
class KafkaBootstrapServer {
  /// The name or address of a host.
  ///
  /// Required.
  core.String? host;

  /// The port of an endpoint usually specified for a connection.
  ///
  /// Optional.
  core.int? port;

  /// The private IP address of the connection's endpoint in the customer's VCN,
  /// typically a database endpoint or a big data endpoint (e.g. Kafka bootstrap
  /// server).
  ///
  /// In case the privateIp is provided, the subnetId must also be provided. In
  /// case the privateIp (and the subnetId) is not provided it is assumed the
  /// datasource is publicly accessible. In case the connection is accessible
  /// only privately, the lack of privateIp will result in not being able to
  /// access the connection.
  ///
  /// Optional.
  core.String? privateIpAddress;

  KafkaBootstrapServer({this.host, this.port, this.privateIpAddress});

  KafkaBootstrapServer.fromJson(core.Map json_)
    : this(
        host: json_['host'] as core.String?,
        port: json_['port'] as core.int?,
        privateIpAddress: json_['privateIpAddress'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final host = this.host;
    final port = this.port;
    final privateIpAddress = this.privateIpAddress;
    return {
      'host': ?host,
      'port': ?port,
      'privateIpAddress': ?privateIpAddress,
    };
  }
}

/// The response for `AutonomousDatabaseBackup.List`.
class ListAutonomousDatabaseBackupsResponse {
  /// The list of Autonomous Database Backups.
  core.List<AutonomousDatabaseBackup>? autonomousDatabaseBackups;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListAutonomousDatabaseBackupsResponse({
    this.autonomousDatabaseBackups,
    this.nextPageToken,
  });

  ListAutonomousDatabaseBackupsResponse.fromJson(core.Map json_)
    : this(
        autonomousDatabaseBackups:
            (json_['autonomousDatabaseBackups'] as core.List?)
                ?.map(
                  (value) => AutonomousDatabaseBackup.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autonomousDatabaseBackups = this.autonomousDatabaseBackups;
    final nextPageToken = this.nextPageToken;
    return {
      'autonomousDatabaseBackups': ?autonomousDatabaseBackups,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// The response for `AutonomousDatabaseCharacterSet.List`.
class ListAutonomousDatabaseCharacterSetsResponse {
  /// The list of Autonomous Database Character Sets.
  core.List<AutonomousDatabaseCharacterSet>? autonomousDatabaseCharacterSets;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListAutonomousDatabaseCharacterSetsResponse({
    this.autonomousDatabaseCharacterSets,
    this.nextPageToken,
  });

  ListAutonomousDatabaseCharacterSetsResponse.fromJson(core.Map json_)
    : this(
        autonomousDatabaseCharacterSets:
            (json_['autonomousDatabaseCharacterSets'] as core.List?)
                ?.map(
                  (value) => AutonomousDatabaseCharacterSet.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autonomousDatabaseCharacterSets =
        this.autonomousDatabaseCharacterSets;
    final nextPageToken = this.nextPageToken;
    return {
      'autonomousDatabaseCharacterSets': ?autonomousDatabaseCharacterSets,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// The response for `AutonomousDatabase.List`.
class ListAutonomousDatabasesResponse {
  /// The list of Autonomous Databases.
  core.List<AutonomousDatabase>? autonomousDatabases;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListAutonomousDatabasesResponse({
    this.autonomousDatabases,
    this.nextPageToken,
    this.unreachable,
  });

  ListAutonomousDatabasesResponse.fromJson(core.Map json_)
    : this(
        autonomousDatabases: (json_['autonomousDatabases'] as core.List?)
            ?.map(
              (value) => AutonomousDatabase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autonomousDatabases = this.autonomousDatabases;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'autonomousDatabases': ?autonomousDatabases,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `AutonomousDbVersion.List`.
class ListAutonomousDbVersionsResponse {
  /// The list of Autonomous Database versions.
  core.List<AutonomousDbVersion>? autonomousDbVersions;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListAutonomousDbVersionsResponse({
    this.autonomousDbVersions,
    this.nextPageToken,
  });

  ListAutonomousDbVersionsResponse.fromJson(core.Map json_)
    : this(
        autonomousDbVersions: (json_['autonomousDbVersions'] as core.List?)
            ?.map(
              (value) => AutonomousDbVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autonomousDbVersions = this.autonomousDbVersions;
    final nextPageToken = this.nextPageToken;
    return {
      'autonomousDbVersions': ?autonomousDbVersions,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// The response for `CloudExadataInfrastructures.list`.
class ListCloudExadataInfrastructuresResponse {
  /// The list of Exadata Infrastructures.
  core.List<CloudExadataInfrastructure>? cloudExadataInfrastructures;

  /// A token for fetching next page of response.
  core.String? nextPageToken;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListCloudExadataInfrastructuresResponse({
    this.cloudExadataInfrastructures,
    this.nextPageToken,
    this.unreachable,
  });

  ListCloudExadataInfrastructuresResponse.fromJson(core.Map json_)
    : this(
        cloudExadataInfrastructures:
            (json_['cloudExadataInfrastructures'] as core.List?)
                ?.map(
                  (value) => CloudExadataInfrastructure.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudExadataInfrastructures = this.cloudExadataInfrastructures;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'cloudExadataInfrastructures': ?cloudExadataInfrastructures,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `CloudVmCluster.List`.
class ListCloudVmClustersResponse {
  /// The list of VM Clusters.
  core.List<CloudVmCluster>? cloudVmClusters;

  /// A token to fetch the next page of results.
  core.String? nextPageToken;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListCloudVmClustersResponse({
    this.cloudVmClusters,
    this.nextPageToken,
    this.unreachable,
  });

  ListCloudVmClustersResponse.fromJson(core.Map json_)
    : this(
        cloudVmClusters: (json_['cloudVmClusters'] as core.List?)
            ?.map(
              (value) => CloudVmCluster.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudVmClusters = this.cloudVmClusters;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'cloudVmClusters': ?cloudVmClusters,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `DatabaseCharacterSet.List`.
class ListDatabaseCharacterSetsResponse {
  /// The list of DatabaseCharacterSets.
  core.List<DatabaseCharacterSet>? databaseCharacterSets;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListDatabaseCharacterSetsResponse({
    this.databaseCharacterSets,
    this.nextPageToken,
  });

  ListDatabaseCharacterSetsResponse.fromJson(core.Map json_)
    : this(
        databaseCharacterSets: (json_['databaseCharacterSets'] as core.List?)
            ?.map(
              (value) => DatabaseCharacterSet.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databaseCharacterSets = this.databaseCharacterSets;
    final nextPageToken = this.nextPageToken;
    return {
      'databaseCharacterSets': ?databaseCharacterSets,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// The response for `Database.List`.
class ListDatabasesResponse {
  /// The list of Databases.
  core.List<Database>? databases;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListDatabasesResponse({this.databases, this.nextPageToken});

  ListDatabasesResponse.fromJson(core.Map json_)
    : this(
        databases: (json_['databases'] as core.List?)
            ?.map(
              (value) => Database.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databases = this.databases;
    final nextPageToken = this.nextPageToken;
    return {'databases': ?databases, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for `DbNode.List`.
class ListDbNodesResponse {
  /// The list of DB Nodes
  core.List<DbNode>? dbNodes;

  /// A token identifying a page of results the node should return.
  core.String? nextPageToken;

  ListDbNodesResponse({this.dbNodes, this.nextPageToken});

  ListDbNodesResponse.fromJson(core.Map json_)
    : this(
        dbNodes: (json_['dbNodes'] as core.List?)
            ?.map(
              (value) =>
                  DbNode.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dbNodes = this.dbNodes;
    final nextPageToken = this.nextPageToken;
    return {'dbNodes': ?dbNodes, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for `DbServer.List`.
class ListDbServersResponse {
  /// The list of database servers.
  core.List<DbServer>? dbServers;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListDbServersResponse({this.dbServers, this.nextPageToken});

  ListDbServersResponse.fromJson(core.Map json_)
    : this(
        dbServers: (json_['dbServers'] as core.List?)
            ?.map(
              (value) => DbServer.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dbServers = this.dbServers;
    final nextPageToken = this.nextPageToken;
    return {'dbServers': ?dbServers, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for `DbSystemInitialStorageSizes.List`.
class ListDbSystemInitialStorageSizesResponse {
  /// The list of DbSystemInitialStorageSizes.
  core.List<DbSystemInitialStorageSize>? dbSystemInitialStorageSizes;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListDbSystemInitialStorageSizesResponse({
    this.dbSystemInitialStorageSizes,
    this.nextPageToken,
  });

  ListDbSystemInitialStorageSizesResponse.fromJson(core.Map json_)
    : this(
        dbSystemInitialStorageSizes:
            (json_['dbSystemInitialStorageSizes'] as core.List?)
                ?.map(
                  (value) => DbSystemInitialStorageSize.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dbSystemInitialStorageSizes = this.dbSystemInitialStorageSizes;
    final nextPageToken = this.nextPageToken;
    return {
      'dbSystemInitialStorageSizes': ?dbSystemInitialStorageSizes,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// The response for `DbSystemShape.List`.
class ListDbSystemShapesResponse {
  /// The list of Database System shapes.
  core.List<DbSystemShape>? dbSystemShapes;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListDbSystemShapesResponse({this.dbSystemShapes, this.nextPageToken});

  ListDbSystemShapesResponse.fromJson(core.Map json_)
    : this(
        dbSystemShapes: (json_['dbSystemShapes'] as core.List?)
            ?.map(
              (value) => DbSystemShape.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dbSystemShapes = this.dbSystemShapes;
    final nextPageToken = this.nextPageToken;
    return {'dbSystemShapes': ?dbSystemShapes, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for `DbSystem.List`.
class ListDbSystemsResponse {
  /// The list of DbSystems.
  core.List<DbSystem>? dbSystems;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListDbSystemsResponse({this.dbSystems, this.nextPageToken, this.unreachable});

  ListDbSystemsResponse.fromJson(core.Map json_)
    : this(
        dbSystems: (json_['dbSystems'] as core.List?)
            ?.map(
              (value) => DbSystem.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dbSystems = this.dbSystems;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'dbSystems': ?dbSystems,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `DbVersions.List`.
class ListDbVersionsResponse {
  /// The list of DbVersions.
  core.List<DbVersion>? dbVersions;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListDbVersionsResponse({this.dbVersions, this.nextPageToken});

  ListDbVersionsResponse.fromJson(core.Map json_)
    : this(
        dbVersions: (json_['dbVersions'] as core.List?)
            ?.map(
              (value) => DbVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dbVersions = this.dbVersions;
    final nextPageToken = this.nextPageToken;
    return {'dbVersions': ?dbVersions, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for `Entitlement.List`.
class ListEntitlementsResponse {
  /// The list of Entitlements
  core.List<Entitlement>? entitlements;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListEntitlementsResponse({this.entitlements, this.nextPageToken});

  ListEntitlementsResponse.fromJson(core.Map json_)
    : this(
        entitlements: (json_['entitlements'] as core.List?)
            ?.map(
              (value) => Entitlement.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entitlements = this.entitlements;
    final nextPageToken = this.nextPageToken;
    return {'entitlements': ?entitlements, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for `ExadbVmCluster.List`.
class ListExadbVmClustersResponse {
  /// The list of ExadbVmClusters.
  core.List<ExadbVmCluster>? exadbVmClusters;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListExadbVmClustersResponse({
    this.exadbVmClusters,
    this.nextPageToken,
    this.unreachable,
  });

  ListExadbVmClustersResponse.fromJson(core.Map json_)
    : this(
        exadbVmClusters: (json_['exadbVmClusters'] as core.List?)
            ?.map(
              (value) => ExadbVmCluster.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exadbVmClusters = this.exadbVmClusters;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'exadbVmClusters': ?exadbVmClusters,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `ExascaleDbStorageVault.List`.
class ListExascaleDbStorageVaultsResponse {
  /// The ExascaleDbStorageVaults.
  core.List<ExascaleDbStorageVault>? exascaleDbStorageVaults;

  /// A token identifying a page of results the server should return.
  ///
  /// If present, the next page token can be provided to a subsequent
  /// ListExascaleDbStorageVaults call to list the next page. If empty, there
  /// are no more pages.
  core.String? nextPageToken;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListExascaleDbStorageVaultsResponse({
    this.exascaleDbStorageVaults,
    this.nextPageToken,
    this.unreachable,
  });

  ListExascaleDbStorageVaultsResponse.fromJson(core.Map json_)
    : this(
        exascaleDbStorageVaults:
            (json_['exascaleDbStorageVaults'] as core.List?)
                ?.map(
                  (value) => ExascaleDbStorageVault.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final exascaleDbStorageVaults = this.exascaleDbStorageVaults;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'exascaleDbStorageVaults': ?exascaleDbStorageVaults,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `GiVersion.List`.
class ListGiVersionsResponse {
  /// The list of Oracle Grid Infrastructure (GI) versions.
  core.List<GiVersion>? giVersions;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListGiVersionsResponse({this.giVersions, this.nextPageToken});

  ListGiVersionsResponse.fromJson(core.Map json_)
    : this(
        giVersions: (json_['giVersions'] as core.List?)
            ?.map(
              (value) => GiVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final giVersions = this.giVersions;
    final nextPageToken = this.nextPageToken;
    return {'giVersions': ?giVersions, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for listing GoldengateConnectionAssignments.
class ListGoldengateConnectionAssignmentsResponse {
  /// The list of GoldengateConnectionAssignments.
  core.List<GoldengateConnectionAssignment>? goldengateConnectionAssignments;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListGoldengateConnectionAssignmentsResponse({
    this.goldengateConnectionAssignments,
    this.nextPageToken,
    this.unreachable,
  });

  ListGoldengateConnectionAssignmentsResponse.fromJson(core.Map json_)
    : this(
        goldengateConnectionAssignments:
            (json_['goldengateConnectionAssignments'] as core.List?)
                ?.map(
                  (value) => GoldengateConnectionAssignment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldengateConnectionAssignments =
        this.goldengateConnectionAssignments;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'goldengateConnectionAssignments': ?goldengateConnectionAssignments,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing GoldengateConnectionTypes
class ListGoldengateConnectionTypesResponse {
  /// The list of GoldengateConnectionType
  core.List<GoldengateConnectionType>? goldengateConnectionTypes;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGoldengateConnectionTypesResponse({
    this.goldengateConnectionTypes,
    this.nextPageToken,
    this.unreachable,
  });

  ListGoldengateConnectionTypesResponse.fromJson(core.Map json_)
    : this(
        goldengateConnectionTypes:
            (json_['goldengateConnectionTypes'] as core.List?)
                ?.map(
                  (value) => GoldengateConnectionType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldengateConnectionTypes = this.goldengateConnectionTypes;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'goldengateConnectionTypes': ?goldengateConnectionTypes,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `GoldengateConnection.List`.
class ListGoldengateConnectionsResponse {
  /// The list of GoldengateConnections.
  core.List<GoldengateConnection>? goldengateConnections;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Optional.
  core.List<core.String>? unreachable;

  ListGoldengateConnectionsResponse({
    this.goldengateConnections,
    this.nextPageToken,
    this.unreachable,
  });

  ListGoldengateConnectionsResponse.fromJson(core.Map json_)
    : this(
        goldengateConnections: (json_['goldengateConnections'] as core.List?)
            ?.map(
              (value) => GoldengateConnection.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldengateConnections = this.goldengateConnections;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'goldengateConnections': ?goldengateConnections,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing GoldengateDeploymentEnvironments
class ListGoldengateDeploymentEnvironmentsResponse {
  /// The list of GoldengateDeploymentEnvironment
  core.List<GoldengateDeploymentEnvironment>? goldengateDeploymentEnvironments;

  /// A token identifying a page of results the server should return.
  ///
  /// If this field is empty, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGoldengateDeploymentEnvironmentsResponse({
    this.goldengateDeploymentEnvironments,
    this.nextPageToken,
    this.unreachable,
  });

  ListGoldengateDeploymentEnvironmentsResponse.fromJson(core.Map json_)
    : this(
        goldengateDeploymentEnvironments:
            (json_['goldengateDeploymentEnvironments'] as core.List?)
                ?.map(
                  (value) => GoldengateDeploymentEnvironment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldengateDeploymentEnvironments =
        this.goldengateDeploymentEnvironments;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'goldengateDeploymentEnvironments': ?goldengateDeploymentEnvironments,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing GoldengateDeploymentTypes
class ListGoldengateDeploymentTypesResponse {
  /// The list of GoldengateDeploymentType
  core.List<GoldengateDeploymentType>? goldengateDeploymentTypes;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// The resource names of locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGoldengateDeploymentTypesResponse({
    this.goldengateDeploymentTypes,
    this.nextPageToken,
    this.unreachable,
  });

  ListGoldengateDeploymentTypesResponse.fromJson(core.Map json_)
    : this(
        goldengateDeploymentTypes:
            (json_['goldengateDeploymentTypes'] as core.List?)
                ?.map(
                  (value) => GoldengateDeploymentType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldengateDeploymentTypes = this.goldengateDeploymentTypes;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'goldengateDeploymentTypes': ?goldengateDeploymentTypes,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing GoldengateDeploymentVersions
class ListGoldengateDeploymentVersionsResponse {
  /// The list of GoldengateDeploymentVersion
  core.List<GoldengateDeploymentVersion>? goldengateDeploymentVersions;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Unordered list.
  ///
  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListGoldengateDeploymentVersionsResponse({
    this.goldengateDeploymentVersions,
    this.nextPageToken,
    this.unreachable,
  });

  ListGoldengateDeploymentVersionsResponse.fromJson(core.Map json_)
    : this(
        goldengateDeploymentVersions:
            (json_['goldengateDeploymentVersions'] as core.List?)
                ?.map(
                  (value) => GoldengateDeploymentVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldengateDeploymentVersions = this.goldengateDeploymentVersions;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'goldengateDeploymentVersions': ?goldengateDeploymentVersions,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `GoldengateDeployment.List`.
class ListGoldengateDeploymentsResponse {
  /// The list of GoldengateDeployments.
  core.List<GoldengateDeployment>? goldengateDeployments;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  ///
  /// Optional.
  core.List<core.String>? unreachable;

  ListGoldengateDeploymentsResponse({
    this.goldengateDeployments,
    this.nextPageToken,
    this.unreachable,
  });

  ListGoldengateDeploymentsResponse.fromJson(core.Map json_)
    : this(
        goldengateDeployments: (json_['goldengateDeployments'] as core.List?)
            ?.map(
              (value) => GoldengateDeployment.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final goldengateDeployments = this.goldengateDeployments;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'goldengateDeployments': ?goldengateDeployments,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
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

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for `MinorVersion.List`.
class ListMinorVersionsResponse {
  /// The list of MinorVersions.
  core.List<MinorVersion>? minorVersions;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListMinorVersionsResponse({this.minorVersions, this.nextPageToken});

  ListMinorVersionsResponse.fromJson(core.Map json_)
    : this(
        minorVersions: (json_['minorVersions'] as core.List?)
            ?.map(
              (value) => MinorVersion.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final minorVersions = this.minorVersions;
    final nextPageToken = this.nextPageToken;
    return {'minorVersions': ?minorVersions, 'nextPageToken': ?nextPageToken};
  }
}

/// The response for `OdbNetwork.List`.
class ListOdbNetworksResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of ODB Networks.
  core.List<OdbNetwork>? odbNetworks;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListOdbNetworksResponse({
    this.nextPageToken,
    this.odbNetworks,
    this.unreachable,
  });

  ListOdbNetworksResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        odbNetworks: (json_['odbNetworks'] as core.List?)
            ?.map(
              (value) => OdbNetwork.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final odbNetworks = this.odbNetworks;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'odbNetworks': ?odbNetworks,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `OdbSubnet.List`.
class ListOdbSubnetsResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of ODB Subnets.
  core.List<OdbSubnet>? odbSubnets;

  /// Unreachable locations when listing resources across all locations using
  /// wildcard location '-'.
  core.List<core.String>? unreachable;

  ListOdbSubnetsResponse({
    this.nextPageToken,
    this.odbSubnets,
    this.unreachable,
  });

  ListOdbSubnetsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        odbSubnets: (json_['odbSubnets'] as core.List?)
            ?.map(
              (value) => OdbSubnet.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final odbSubnets = this.odbSubnets;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'odbSubnets': ?odbSubnets,
      'unreachable': ?unreachable,
    };
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

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
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// The response for `PluggableDatabase.List`.
class ListPluggableDatabasesResponse {
  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  /// The list of PluggableDatabases.
  core.List<PluggableDatabase>? pluggableDatabases;

  ListPluggableDatabasesResponse({this.nextPageToken, this.pluggableDatabases});

  ListPluggableDatabasesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        pluggableDatabases: (json_['pluggableDatabases'] as core.List?)
            ?.map(
              (value) => PluggableDatabase.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final pluggableDatabases = this.pluggableDatabases;
    return {
      'nextPageToken': ?nextPageToken,
      'pluggableDatabases': ?pluggableDatabases,
    };
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Maintenance window as defined by Oracle.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/MaintenanceWindow
class MaintenanceWindow {
  /// Determines the amount of time the system will wait before the start of
  /// each database server patching operation.
  ///
  /// Custom action timeout is in minutes and valid value is between 15 to 120
  /// (inclusive).
  ///
  /// Optional.
  core.int? customActionTimeoutMins;

  /// Days during the week when maintenance should be performed.
  ///
  /// Optional.
  core.List<core.String>? daysOfWeek;

  /// The window of hours during the day when maintenance should be performed.
  ///
  /// The window is a 4 hour slot. Valid values are: 0 - represents time slot
  /// 0:00 - 3:59 UTC 4 - represents time slot 4:00 - 7:59 UTC 8 - represents
  /// time slot 8:00 - 11:59 UTC 12 - represents time slot 12:00 - 15:59 UTC 16
  /// - represents time slot 16:00 - 19:59 UTC 20 - represents time slot 20:00 -
  /// 23:59 UTC
  ///
  /// Optional.
  core.List<core.int>? hoursOfDay;

  /// If true, enables the configuration of a custom action timeout (waiting
  /// period) between database server patching operations.
  ///
  /// Optional.
  core.bool? isCustomActionTimeoutEnabled;

  /// Lead time window allows user to set a lead time to prepare for a down
  /// time.
  ///
  /// The lead time is in weeks and valid value is between 1 to 4.
  ///
  /// Optional.
  core.int? leadTimeWeek;

  /// Months during the year when maintenance should be performed.
  ///
  /// Optional.
  core.List<core.String>? months;

  /// Cloud CloudExadataInfrastructure node patching method, either "ROLLING" or
  /// "NONROLLING".
  ///
  /// Default value is ROLLING.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PATCHING_MODE_UNSPECIFIED" : Default unspecified value.
  /// - "ROLLING" : Updates the Cloud Exadata database server hosts in a rolling
  /// fashion.
  /// - "NON_ROLLING" : The non-rolling maintenance method first updates your
  /// storage servers at the same time, then your database servers at the same
  /// time.
  core.String? patchingMode;

  /// The maintenance window scheduling preference.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "MAINTENANCE_WINDOW_PREFERENCE_UNSPECIFIED" : Default unspecified value.
  /// - "CUSTOM_PREFERENCE" : Custom preference.
  /// - "NO_PREFERENCE" : No preference.
  core.String? preference;

  /// Weeks during the month when maintenance should be performed.
  ///
  /// Weeks start on the 1st, 8th, 15th, and 22nd days of the month, and have a
  /// duration of 7 days. Weeks start and end based on calendar dates, not days
  /// of the week.
  ///
  /// Optional.
  core.List<core.int>? weeksOfMonth;

  MaintenanceWindow({
    this.customActionTimeoutMins,
    this.daysOfWeek,
    this.hoursOfDay,
    this.isCustomActionTimeoutEnabled,
    this.leadTimeWeek,
    this.months,
    this.patchingMode,
    this.preference,
    this.weeksOfMonth,
  });

  MaintenanceWindow.fromJson(core.Map json_)
    : this(
        customActionTimeoutMins: json_['customActionTimeoutMins'] as core.int?,
        daysOfWeek: (json_['daysOfWeek'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        hoursOfDay: (json_['hoursOfDay'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
        isCustomActionTimeoutEnabled:
            json_['isCustomActionTimeoutEnabled'] as core.bool?,
        leadTimeWeek: json_['leadTimeWeek'] as core.int?,
        months: (json_['months'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        patchingMode: json_['patchingMode'] as core.String?,
        preference: json_['preference'] as core.String?,
        weeksOfMonth: (json_['weeksOfMonth'] as core.List?)
            ?.map((value) => value as core.int)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final customActionTimeoutMins = this.customActionTimeoutMins;
    final daysOfWeek = this.daysOfWeek;
    final hoursOfDay = this.hoursOfDay;
    final isCustomActionTimeoutEnabled = this.isCustomActionTimeoutEnabled;
    final leadTimeWeek = this.leadTimeWeek;
    final months = this.months;
    final patchingMode = this.patchingMode;
    final preference = this.preference;
    final weeksOfMonth = this.weeksOfMonth;
    return {
      'customActionTimeoutMins': ?customActionTimeoutMins,
      'daysOfWeek': ?daysOfWeek,
      'hoursOfDay': ?hoursOfDay,
      'isCustomActionTimeoutEnabled': ?isCustomActionTimeoutEnabled,
      'leadTimeWeek': ?leadTimeWeek,
      'months': ?months,
      'patchingMode': ?patchingMode,
      'preference': ?preference,
      'weeksOfMonth': ?weeksOfMonth,
    };
  }
}

/// MinorVersion represents a minor version of a GI.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/GiMinorVersionSummary/
class MinorVersion {
  /// The ID of the Grid Image.
  ///
  /// Optional.
  core.String? gridImageId;

  /// Identifier.
  ///
  /// The name of the MinorVersion resource with the format:
  /// projects/{project}/locations/{region}/giVersions/{gi_version}/minorVersions/{minor_version}
  core.String? name;

  /// The valid Oracle grid infrastructure software version.
  ///
  /// Optional.
  core.String? version;

  MinorVersion({this.gridImageId, this.name, this.version});

  MinorVersion.fromJson(core.Map json_)
    : this(
        gridImageId: json_['gridImageId'] as core.String?,
        name: json_['name'] as core.String?,
        version: json_['version'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final gridImageId = this.gridImageId;
    final name = this.name;
    final version = this.version;
    return {'gridImageId': ?gridImageId, 'name': ?name, 'version': ?version};
  }
}

/// A name-value pair representing an attribute entry usable in a list of
/// attributes.
class NameValuePair {
  /// The name of the property entry.
  ///
  /// Required.
  core.String? key;

  /// The value of the property entry.
  ///
  /// Required.
  core.String? value;

  NameValuePair({this.key, this.value});

  NameValuePair.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final key = this.key;
    final value = this.value;
    return {'key': ?key, 'value': ?value};
  }
}

/// The Nessie Iceberg catalog.
class NessieIcebergCatalog {
  /// The Nessie branch.
  ///
  /// Required.
  core.String? branch;

  /// The Nessie uri.
  ///
  /// Required.
  core.String? uri;

  NessieIcebergCatalog({this.branch, this.uri});

  NessieIcebergCatalog.fromJson(core.Map json_)
    : this(
        branch: json_['branch'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final branch = this.branch;
    final uri = this.uri;
    return {'branch': ?branch, 'uri': ?uri};
  }
}

/// Represents OdbNetwork resource.
class OdbNetwork {
  /// The date and time that the OdbNetwork was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The ID of the subscription entitlement associated with the OdbNetwork.
  ///
  /// Output only.
  core.String? entitlementId;

  /// The GCP Oracle zone where OdbNetwork is hosted.
  ///
  /// Example: us-east4-b-r2. If not specified, the system will pick a zone
  /// based on availability.
  ///
  /// Optional.
  core.String? gcpOracleZone;

  /// Labels or tags associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the OdbNetwork resource in the following format:
  /// projects/{project}/locations/{region}/odbNetworks/{odb_network}
  core.String? name;

  /// The name of the VPC network in the following format:
  /// projects/{project}/global/networks/{network}
  ///
  /// Required.
  core.String? network;

  /// State of the ODB Network.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : Indicates that the resource is in provisioning state.
  /// - "AVAILABLE" : Indicates that the resource is in available state.
  /// - "TERMINATING" : Indicates that the resource is in terminating state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  core.String? state;

  OdbNetwork({
    this.createTime,
    this.entitlementId,
    this.gcpOracleZone,
    this.labels,
    this.name,
    this.network,
    this.state,
  });

  OdbNetwork.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        entitlementId: json_['entitlementId'] as core.String?,
        gcpOracleZone: json_['gcpOracleZone'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        network: json_['network'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final entitlementId = this.entitlementId;
    final gcpOracleZone = this.gcpOracleZone;
    final labels = this.labels;
    final name = this.name;
    final network = this.network;
    final state = this.state;
    return {
      'createTime': ?createTime,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'name': ?name,
      'network': ?network,
      'state': ?state,
    };
  }
}

/// Represents OdbSubnet resource.
class OdbSubnet {
  /// The CIDR range of the subnet.
  ///
  /// Required.
  core.String? cidrRange;

  /// The date and time that the OdbNetwork was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Labels or tags associated with the resource.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The name of the OdbSubnet resource in the following format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  core.String? name;

  /// Purpose of the subnet.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PURPOSE_UNSPECIFIED" : Default unspecified value.
  /// - "CLIENT_SUBNET" : Subnet to be used for client connections.
  /// - "BACKUP_SUBNET" : Subnet to be used for backup.
  core.String? purpose;

  /// State of the ODB Subnet.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default unspecified value.
  /// - "PROVISIONING" : Indicates that the resource is in provisioning state.
  /// - "AVAILABLE" : Indicates that the resource is in available state.
  /// - "TERMINATING" : Indicates that the resource is in terminating state.
  /// - "FAILED" : Indicates that the resource is in failed state.
  core.String? state;

  OdbSubnet({
    this.cidrRange,
    this.createTime,
    this.labels,
    this.name,
    this.purpose,
    this.state,
  });

  OdbSubnet.fromJson(core.Map json_)
    : this(
        cidrRange: json_['cidrRange'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        purpose: json_['purpose'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cidrRange = this.cidrRange;
    final createTime = this.createTime;
    final labels = this.labels;
    final name = this.name;
    final purpose = this.purpose;
    final state = this.state;
    return {
      'cidrRange': ?cidrRange,
      'createTime': ?createTime,
      'labels': ?labels,
      'name': ?name,
      'purpose': ?purpose,
      'state': ?state,
    };
  }
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

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// The PluggableDatabase resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/PluggableDatabase/
class PluggableDatabase {
  /// The date and time that the PluggableDatabase was created.
  ///
  /// Output only.
  core.String? createTime;

  /// Identifier.
  ///
  /// The name of the PluggableDatabase resource in the following format:
  /// projects/{project}/locations/{region}/pluggableDatabases/{pluggable_database}
  core.String? name;

  /// HTTPS link to OCI resources exposed to Customer via UI Interface.
  ///
  /// Output only.
  core.String? ociUrl;

  /// The properties of the PluggableDatabase.
  ///
  /// Optional.
  PluggableDatabaseProperties? properties;

  PluggableDatabase({this.createTime, this.name, this.ociUrl, this.properties});

  PluggableDatabase.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        name: json_['name'] as core.String?,
        ociUrl: json_['ociUrl'] as core.String?,
        properties: json_.containsKey('properties')
            ? PluggableDatabaseProperties.fromJson(
                json_['properties'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final name = this.name;
    final ociUrl = this.ociUrl;
    final properties = this.properties;
    return {
      'createTime': ?createTime,
      'name': ?name,
      'ociUrl': ?ociUrl,
      'properties': ?properties,
    };
  }
}

/// The connection strings used to connect to the Oracle Database.
class PluggableDatabaseConnectionStrings {
  /// All connection strings to use to connect to the pluggable database.
  ///
  /// Optional.
  core.Map<core.String, core.String>? allConnectionStrings;

  /// The default connection string to use to connect to the pluggable database.
  ///
  /// Optional.
  core.String? pdbDefault;

  /// The default connection string to use to connect to the pluggable database
  /// using IP.
  ///
  /// Optional.
  core.String? pdbIpDefault;

  PluggableDatabaseConnectionStrings({
    this.allConnectionStrings,
    this.pdbDefault,
    this.pdbIpDefault,
  });

  PluggableDatabaseConnectionStrings.fromJson(core.Map json_)
    : this(
        allConnectionStrings:
            (json_['allConnectionStrings']
                    as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        pdbDefault: json_['pdbDefault'] as core.String?,
        pdbIpDefault: json_['pdbIpDefault'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final allConnectionStrings = this.allConnectionStrings;
    final pdbDefault = this.pdbDefault;
    final pdbIpDefault = this.pdbIpDefault;
    return {
      'allConnectionStrings': ?allConnectionStrings,
      'pdbDefault': ?pdbDefault,
      'pdbIpDefault': ?pdbIpDefault,
    };
  }
}

/// The Pluggable Database Node Level Details.
class PluggableDatabaseNodeLevelDetails {
  /// The Node name of the Database home.
  ///
  /// Required.
  core.String? nodeName;

  /// The mode that the pluggable database is in to open it.
  ///
  /// Required.
  /// Possible string values are:
  /// - "PLUGGABLE_DATABASE_OPEN_MODE_UNSPECIFIED" : The open mode is
  /// unspecified.
  /// - "READ_ONLY" : The pluggable database is opened in read-only mode.
  /// - "READ_WRITE" : The pluggable database is opened in read-write mode.
  /// - "MOUNTED" : The pluggable database is mounted.
  /// - "MIGRATE" : The pluggable database is migrated.
  core.String? openMode;

  /// The OCID of the Pluggable Database.
  ///
  /// Required.
  core.String? pluggableDatabaseId;

  PluggableDatabaseNodeLevelDetails({
    this.nodeName,
    this.openMode,
    this.pluggableDatabaseId,
  });

  PluggableDatabaseNodeLevelDetails.fromJson(core.Map json_)
    : this(
        nodeName: json_['nodeName'] as core.String?,
        openMode: json_['openMode'] as core.String?,
        pluggableDatabaseId: json_['pluggableDatabaseId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nodeName = this.nodeName;
    final openMode = this.openMode;
    final pluggableDatabaseId = this.pluggableDatabaseId;
    return {
      'nodeName': ?nodeName,
      'openMode': ?openMode,
      'pluggableDatabaseId': ?pluggableDatabaseId,
    };
  }
}

/// The properties of a PluggableDatabase.
class PluggableDatabaseProperties {
  /// The OCID of the compartment.
  ///
  /// Required.
  core.String? compartmentId;

  /// The Connection strings used to connect to the Oracle Database.
  ///
  /// Optional.
  PluggableDatabaseConnectionStrings? connectionStrings;

  /// The OCID of the CDB.
  ///
  /// Required.
  core.String? containerDatabaseOcid;

  /// The configuration of the Database Management service.
  ///
  /// Output only.
  DatabaseManagementConfig? databaseManagementConfig;

  /// Defined tags for this resource.
  ///
  /// Each key is predefined and scoped to a namespace.
  ///
  /// Optional.
  core.Map<core.String, DefinedTagValue>? definedTags;

  /// Free-form tags for this resource.
  ///
  /// Each tag is a simple key-value pair with no predefined name, type, or
  /// namespace.
  ///
  /// Optional.
  core.Map<core.String, core.String>? freeformTags;

  /// The restricted mode of the pluggable database.
  ///
  /// If a pluggable database is opened in restricted mode, the user needs both
  /// create a session and have restricted session privileges to connect to it.
  ///
  /// Optional.
  core.bool? isRestricted;

  /// Additional information about the current lifecycle state.
  ///
  /// Output only.
  core.String? lifecycleDetails;

  /// The current state of the pluggable database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PLUGGABLE_DATABASE_LIFECYCLE_STATE_UNSPECIFIED" : The lifecycle state
  /// is unspecified.
  /// - "PROVISIONING" : The pluggable database is provisioning.
  /// - "AVAILABLE" : The pluggable database is available.
  /// - "TERMINATING" : The pluggable database is terminating.
  /// - "TERMINATED" : The pluggable database is terminated.
  /// - "UPDATING" : The pluggable database is updating.
  /// - "FAILED" : The pluggable database is in a failed state.
  /// - "RELOCATING" : The pluggable database is relocating.
  /// - "RELOCATED" : The pluggable database is relocated.
  /// - "REFRESHING" : The pluggable database is refreshing.
  /// - "RESTORE_IN_PROGRESS" : The pluggable database is restoring.
  /// - "RESTORE_FAILED" : The pluggable database restore failed.
  /// - "BACKUP_IN_PROGRESS" : The pluggable database is backing up.
  /// - "DISABLED" : The pluggable database is disabled.
  core.String? lifecycleState;

  /// The OCID of the pluggable database.
  ///
  /// Output only.
  core.String? ocid;

  /// The status of Operations Insights for this Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "OPERATIONS_INSIGHTS_STATE_UNSPECIFIED" : The status is not specified.
  /// - "ENABLING" : Operations Insights is enabling.
  /// - "ENABLED" : Operations Insights is enabled.
  /// - "DISABLING" : Operations Insights is disabling.
  /// - "NOT_ENABLED" : Operations Insights is not enabled.
  /// - "FAILED_ENABLING" : Operations Insights failed to enable.
  /// - "FAILED_DISABLING" : Operations Insights failed to disable.
  core.String? operationsInsightsState;

  /// The database name.
  ///
  /// Required.
  core.String? pdbName;

  /// Pluggable Database Node Level Details
  ///
  /// Optional.
  core.List<PluggableDatabaseNodeLevelDetails>? pdbNodeLevelDetails;

  PluggableDatabaseProperties({
    this.compartmentId,
    this.connectionStrings,
    this.containerDatabaseOcid,
    this.databaseManagementConfig,
    this.definedTags,
    this.freeformTags,
    this.isRestricted,
    this.lifecycleDetails,
    this.lifecycleState,
    this.ocid,
    this.operationsInsightsState,
    this.pdbName,
    this.pdbNodeLevelDetails,
  });

  PluggableDatabaseProperties.fromJson(core.Map json_)
    : this(
        compartmentId: json_['compartmentId'] as core.String?,
        connectionStrings: json_.containsKey('connectionStrings')
            ? PluggableDatabaseConnectionStrings.fromJson(
                json_['connectionStrings']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        containerDatabaseOcid: json_['containerDatabaseOcid'] as core.String?,
        databaseManagementConfig: json_.containsKey('databaseManagementConfig')
            ? DatabaseManagementConfig.fromJson(
                json_['databaseManagementConfig']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        definedTags:
            (json_['definedTags'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                DefinedTagValue.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        freeformTags:
            (json_['freeformTags'] as core.Map<core.String, core.dynamic>?)
                ?.map((key, value) => core.MapEntry(key, value as core.String)),
        isRestricted: json_['isRestricted'] as core.bool?,
        lifecycleDetails: json_['lifecycleDetails'] as core.String?,
        lifecycleState: json_['lifecycleState'] as core.String?,
        ocid: json_['ocid'] as core.String?,
        operationsInsightsState:
            json_['operationsInsightsState'] as core.String?,
        pdbName: json_['pdbName'] as core.String?,
        pdbNodeLevelDetails: (json_['pdbNodeLevelDetails'] as core.List?)
            ?.map(
              (value) => PluggableDatabaseNodeLevelDetails.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final compartmentId = this.compartmentId;
    final connectionStrings = this.connectionStrings;
    final containerDatabaseOcid = this.containerDatabaseOcid;
    final databaseManagementConfig = this.databaseManagementConfig;
    final definedTags = this.definedTags;
    final freeformTags = this.freeformTags;
    final isRestricted = this.isRestricted;
    final lifecycleDetails = this.lifecycleDetails;
    final lifecycleState = this.lifecycleState;
    final ocid = this.ocid;
    final operationsInsightsState = this.operationsInsightsState;
    final pdbName = this.pdbName;
    final pdbNodeLevelDetails = this.pdbNodeLevelDetails;
    return {
      'compartmentId': ?compartmentId,
      'connectionStrings': ?connectionStrings,
      'containerDatabaseOcid': ?containerDatabaseOcid,
      'databaseManagementConfig': ?databaseManagementConfig,
      'definedTags': ?definedTags,
      'freeformTags': ?freeformTags,
      'isRestricted': ?isRestricted,
      'lifecycleDetails': ?lifecycleDetails,
      'lifecycleState': ?lifecycleState,
      'ocid': ?ocid,
      'operationsInsightsState': ?operationsInsightsState,
      'pdbName': ?pdbName,
      'pdbNodeLevelDetails': ?pdbNodeLevelDetails,
    };
  }
}

/// The Polaris Iceberg catalog.
class PolarisIcebergCatalog {
  /// The Polaris client ID.
  ///
  /// Required.
  core.String? clientId;

  /// The Polaris client secret.
  ///
  /// Optional.
  core.String? clientSecret;

  /// The catalog name within Polaris.
  ///
  /// Required.
  core.String? polarisCatalog;

  /// The Polaris principal role.
  ///
  /// Required.
  core.String? principalRole;

  /// The Polaris uri.
  ///
  /// Required.
  core.String? uri;

  PolarisIcebergCatalog({
    this.clientId,
    this.clientSecret,
    this.polarisCatalog,
    this.principalRole,
    this.uri,
  });

  PolarisIcebergCatalog.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
        polarisCatalog: json_['polarisCatalog'] as core.String?,
        principalRole: json_['principalRole'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    final polarisCatalog = this.polarisCatalog;
    final principalRole = this.principalRole;
    final uri = this.uri;
    return {
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'polarisCatalog': ?polarisCatalog,
      'principalRole': ?principalRole,
      'uri': ?uri,
    };
  }
}

/// Request message for RefreshAutonomousDatabase method.
class RefreshAutonomousDatabaseRequest {
  /// The timestamp to which the Autonomous Database refreshable clone will be
  /// refreshed.
  ///
  /// Changes made in the primary database after this timestamp are not part of
  /// the data refresh.
  ///
  /// Required.
  core.String? refreshCutoffTime;

  RefreshAutonomousDatabaseRequest({this.refreshCutoffTime});

  RefreshAutonomousDatabaseRequest.fromJson(core.Map json_)
    : this(refreshCutoffTime: json_['refreshCutoffTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final refreshCutoffTime = this.refreshCutoffTime;
    return {'refreshCutoffTime': ?refreshCutoffTime};
  }
}

/// The request for `ExadbVmCluster.RemoveVirtualMachine`.
class RemoveVirtualMachineExadbVmClusterRequest {
  /// The list of host names of db nodes to be removed from the ExadbVmCluster.
  ///
  /// Required.
  core.List<core.String>? hostnames;

  /// An optional ID to identify the request.
  ///
  /// This value is used to identify duplicate requests. If you make a request
  /// with the same request ID and the original request is still in progress or
  /// completed, the server ignores the second request. This prevents clients
  /// from accidentally creating duplicate commitments. The request ID must be a
  /// valid UUID with the exception that zero UUID is not supported
  /// (00000000-0000-0000-0000-000000000000).
  ///
  /// Optional.
  core.String? requestId;

  RemoveVirtualMachineExadbVmClusterRequest({this.hostnames, this.requestId});

  RemoveVirtualMachineExadbVmClusterRequest.fromJson(core.Map json_)
    : this(
        hostnames: (json_['hostnames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        requestId: json_['requestId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final hostnames = this.hostnames;
    final requestId = this.requestId;
    return {'hostnames': ?hostnames, 'requestId': ?requestId};
  }
}

/// The REST Iceberg catalog.
class RestIcebergCatalog {
  /// The base64 encoded content of the configuration file containing additional
  /// properties for the REST catalog.
  ///
  /// Optional.
  core.String? properties;

  /// The REST uri.
  ///
  /// Required.
  core.String? uri;

  RestIcebergCatalog({this.properties, this.uri});

  RestIcebergCatalog.fromJson(core.Map json_)
    : this(
        properties: json_['properties'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final properties = this.properties;
    final uri = this.uri;
    return {'properties': ?properties, 'uri': ?uri};
  }
}

/// The request for `AutonomousDatabase.Restart`.
typedef RestartAutonomousDatabaseRequest = $Empty;

/// The request for `AutonomousDatabase.Restore`.
class RestoreAutonomousDatabaseRequest {
  /// The time and date to restore the database to.
  ///
  /// Required.
  core.String? restoreTime;

  RestoreAutonomousDatabaseRequest({this.restoreTime});

  RestoreAutonomousDatabaseRequest.fromJson(core.Map json_)
    : this(restoreTime: json_['restoreTime'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final restoreTime = this.restoreTime;
    return {'restoreTime': ?restoreTime};
  }
}

/// Details of scheduled operation.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/ScheduledOperationDetails
class ScheduledOperationDetails {
  /// Day of week.
  ///
  /// Output only.
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

  /// Auto start time.
  ///
  /// Output only.
  TimeOfDay? startTime;

  /// Auto stop time.
  ///
  /// Output only.
  TimeOfDay? stopTime;

  ScheduledOperationDetails({this.dayOfWeek, this.startTime, this.stopTime});

  ScheduledOperationDetails.fromJson(core.Map json_)
    : this(
        dayOfWeek: json_['dayOfWeek'] as core.String?,
        startTime: json_.containsKey('startTime')
            ? TimeOfDay.fromJson(
                json_['startTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        stopTime: json_.containsKey('stopTime')
            ? TimeOfDay.fromJson(
                json_['stopTime'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dayOfWeek = this.dayOfWeek;
    final startTime = this.startTime;
    final stopTime = this.stopTime;
    return {
      'dayOfWeek': ?dayOfWeek,
      'startTime': ?startTime,
      'stopTime': ?stopTime,
    };
  }
}

/// The source configuration for the standby Autonomous Database.
class SourceConfig {
  /// The frequency in seconds a refreshable clone is refreshed after
  /// auto-refresh is enabled.
  ///
  /// Optional.
  core.int? autoRefreshFrequencySeconds;

  /// The time, in seconds, the data of the automatic refreshable clone lags the
  /// primary database at the point of refresh.
  ///
  /// Optional.
  core.int? autoRefreshPointLagSeconds;

  /// The date and time that auto-refreshing will begin for an Autonomous
  /// Database refreshable clone.
  ///
  /// This value controls only the start time for the first refresh operation.
  ///
  /// Optional.
  core.String? autoRefreshStartTime;

  /// This field specifies if the replication of automatic backups is enabled
  /// when creating a Data Guard.
  ///
  /// Optional.
  core.bool? automaticBackupsReplicationEnabled;

  /// The name of the primary Autonomous Database that is used to create a Peer
  /// Autonomous Database from a source.
  ///
  /// Optional.
  core.String? autonomousDatabase;

  /// The name of the Autonomous Database Backup resource with the format:
  /// projects/{project}/locations/{region}/autonomousDatabaseBackups/{autonomous_database_backup}
  /// Required when source_type is BACKUP_FROM_ID.
  ///
  /// Optional.
  core.String? autonomousDatabaseBackup;

  /// The timestamp specified for the point-in-time clone of the source
  /// Autonomous Database.
  ///
  /// This field is only applicable in case of BACKUP_FROM_TIMESTAMP source type
  /// and when use_latest_available_backup is false.
  ///
  /// Optional.
  core.String? backupTime;

  /// The clone type of the Autonomous Database.
  ///
  /// This field is only applicable in case of cloning
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CLONE_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "FULL" : Creates a new database with the source database's data and
  /// metadata.
  /// - "METADATA" : Creates a new database that includes all the source
  /// database schema metadata, but none of the source database data.
  core.String? cloneType;

  /// The refresh mode of the clone.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "REFRESHABLE_MODE_UNSPECIFIED" : Default unspecified value.
  /// - "AUTOMATIC" : Automatic refresh.
  /// - "MANUAL" : Manual refresh.
  core.String? refreshableMode;

  /// The source type of the Autonomous Database.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "CLONE_DATABASE" : Clone database from an existing database specified in
  /// autonomous_database field.
  /// - "CROSS_REGION_DISASTER_RECOVERY" : Create a cross-region disaster
  /// recovery peer adb from an existing adb.
  /// - "CLONE_TO_REFRESHABLE" : Create a refreshable clone from an existing
  /// database specified in autonomous_database field.
  /// - "BACKUP_FROM_ID" : Create clone from the backup resource.
  /// - "BACKUP_FROM_TIMESTAMP" : Create clone from backup specified by
  /// backup_time field, or use latest available backup if
  /// use_latest_available_backup is true. The autonomous_database field must
  /// specify the source database to clone from.
  core.String? sourceType;

  /// Clone from latest available backup timestamp.
  ///
  /// This field is only applicable in case of BACKUP_FROM_TIMESTAMP source
  /// type.
  ///
  /// Optional.
  core.bool? useLatestAvailableBackup;

  SourceConfig({
    this.autoRefreshFrequencySeconds,
    this.autoRefreshPointLagSeconds,
    this.autoRefreshStartTime,
    this.automaticBackupsReplicationEnabled,
    this.autonomousDatabase,
    this.autonomousDatabaseBackup,
    this.backupTime,
    this.cloneType,
    this.refreshableMode,
    this.sourceType,
    this.useLatestAvailableBackup,
  });

  SourceConfig.fromJson(core.Map json_)
    : this(
        autoRefreshFrequencySeconds:
            json_['autoRefreshFrequencySeconds'] as core.int?,
        autoRefreshPointLagSeconds:
            json_['autoRefreshPointLagSeconds'] as core.int?,
        autoRefreshStartTime: json_['autoRefreshStartTime'] as core.String?,
        automaticBackupsReplicationEnabled:
            json_['automaticBackupsReplicationEnabled'] as core.bool?,
        autonomousDatabase: json_['autonomousDatabase'] as core.String?,
        autonomousDatabaseBackup:
            json_['autonomousDatabaseBackup'] as core.String?,
        backupTime: json_['backupTime'] as core.String?,
        cloneType: json_['cloneType'] as core.String?,
        refreshableMode: json_['refreshableMode'] as core.String?,
        sourceType: json_['sourceType'] as core.String?,
        useLatestAvailableBackup:
            json_['useLatestAvailableBackup'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final autoRefreshFrequencySeconds = this.autoRefreshFrequencySeconds;
    final autoRefreshPointLagSeconds = this.autoRefreshPointLagSeconds;
    final autoRefreshStartTime = this.autoRefreshStartTime;
    final automaticBackupsReplicationEnabled =
        this.automaticBackupsReplicationEnabled;
    final autonomousDatabase = this.autonomousDatabase;
    final autonomousDatabaseBackup = this.autonomousDatabaseBackup;
    final backupTime = this.backupTime;
    final cloneType = this.cloneType;
    final refreshableMode = this.refreshableMode;
    final sourceType = this.sourceType;
    final useLatestAvailableBackup = this.useLatestAvailableBackup;
    return {
      'autoRefreshFrequencySeconds': ?autoRefreshFrequencySeconds,
      'autoRefreshPointLagSeconds': ?autoRefreshPointLagSeconds,
      'autoRefreshStartTime': ?autoRefreshStartTime,
      'automaticBackupsReplicationEnabled': ?automaticBackupsReplicationEnabled,
      'autonomousDatabase': ?autonomousDatabase,
      'autonomousDatabaseBackup': ?autonomousDatabaseBackup,
      'backupTime': ?backupTime,
      'cloneType': ?cloneType,
      'refreshableMode': ?refreshableMode,
      'sourceType': ?sourceType,
      'useLatestAvailableBackup': ?useLatestAvailableBackup,
    };
  }
}

/// The request for `AutonomousDatabase.Start`.
typedef StartAutonomousDatabaseRequest = $Empty;

/// The request for `GoldengateDeployment.Start`.
typedef StartGoldengateDeploymentRequest = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// The request for `AutonomousDatabase.Stop`.
typedef StopAutonomousDatabaseRequest = $Empty;

/// The request for `GoldengateDeployment.Stop`.
typedef StopGoldengateDeploymentRequest = $Empty;

/// The initial storage size, in gigabytes, that is applicable for virtual
/// machine DBSystem.
class StorageSizeDetails {
  /// The data storage size, in gigabytes, that is applicable for virtual
  /// machine DBSystem.
  ///
  /// Output only.
  core.int? dataStorageSizeInGbs;

  /// The RECO/REDO storage size, in gigabytes, that is applicable for virtual
  /// machine DBSystem.
  ///
  /// Output only.
  core.int? recoStorageSizeInGbs;

  StorageSizeDetails({this.dataStorageSizeInGbs, this.recoStorageSizeInGbs});

  StorageSizeDetails.fromJson(core.Map json_)
    : this(
        dataStorageSizeInGbs: json_['dataStorageSizeInGbs'] as core.int?,
        recoStorageSizeInGbs: json_['recoStorageSizeInGbs'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataStorageSizeInGbs = this.dataStorageSizeInGbs;
    final recoStorageSizeInGbs = this.recoStorageSizeInGbs;
    return {
      'dataStorageSizeInGbs': ?dataStorageSizeInGbs,
      'recoStorageSizeInGbs': ?recoStorageSizeInGbs,
    };
  }
}

/// The request for `OracleDatabase.SwitchoverAutonomousDatabase`.
class SwitchoverAutonomousDatabaseRequest {
  /// The peer database name to switch over to.
  ///
  /// Required for cross-region standby, and must be omitted for in-region Data
  /// Guard.
  ///
  /// Optional.
  core.String? peerAutonomousDatabase;

  SwitchoverAutonomousDatabaseRequest({this.peerAutonomousDatabase});

  SwitchoverAutonomousDatabaseRequest.fromJson(core.Map json_)
    : this(
        peerAutonomousDatabase: json_['peerAutonomousDatabase'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final peerAutonomousDatabase = this.peerAutonomousDatabase;
    return {'peerAutonomousDatabase': ?peerAutonomousDatabase};
  }
}

/// Error details for TestGoldengateConnectionAssignment.
class TestConnectionAssignmentError {
  /// The text describing the action required to fix the issue.
  core.String? action;

  /// A short error code that defines the error, meant for programmatic parsing.
  core.String? code;

  /// The text describing the root cause of the reported issue.
  core.String? issue;

  /// A human-readable error message.
  core.String? message;

  TestConnectionAssignmentError({
    this.action,
    this.code,
    this.issue,
    this.message,
  });

  TestConnectionAssignmentError.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        code: json_['code'] as core.String?,
        issue: json_['issue'] as core.String?,
        message: json_['message'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final action = this.action;
    final code = this.code;
    final issue = this.issue;
    final message = this.message;
    return {
      'action': ?action,
      'code': ?code,
      'issue': ?issue,
      'message': ?message,
    };
  }
}

/// Request message for TestGoldengateConnectionAssignment.
class TestGoldengateConnectionAssignmentRequest {
  /// The type of the test of the assigned connection.
  ///
  /// The only type actually supported is DEFAULT.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TEST_TYPE_UNSPECIFIED" : The default value. This value is unused.
  /// - "DEFAULT" : The default connection test.
  core.String? type;

  TestGoldengateConnectionAssignmentRequest({this.type});

  TestGoldengateConnectionAssignmentRequest.fromJson(core.Map json_)
    : this(type: json_['type'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final type = this.type;
    return {'type': ?type};
  }
}

/// The result of the connectivity test performed between the Goldengate
/// deployment and the associated database / service.
class TestGoldengateConnectionAssignmentResponse {
  /// Error details if test connection failed.
  TestConnectionAssignmentError? error;

  /// List of test connection assignment error objects.
  core.List<TestConnectionAssignmentError>? errors;

  /// Type of the result i.e. Success, Failure or Timeout.
  /// Possible string values are:
  /// - "RESULT_TYPE_UNSPECIFIED" : Result type is unspecified.
  /// - "SUCCEEDED" : Test connection succeeded.
  /// - "FAILED" : Test connection failed.
  /// - "TIMED_OUT" : Test connection timed out.
  core.String? resultType;

  TestGoldengateConnectionAssignmentResponse({
    this.error,
    this.errors,
    this.resultType,
  });

  TestGoldengateConnectionAssignmentResponse.fromJson(core.Map json_)
    : this(
        error: json_.containsKey('error')
            ? TestConnectionAssignmentError.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) => TestConnectionAssignmentError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        resultType: json_['resultType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final error = this.error;
    final errors = this.errors;
    final resultType = this.resultType;
    return {'error': ?error, 'errors': ?errors, 'resultType': ?resultType};
  }
}

/// Represents a time of day.
///
/// The date and time zone are either not significant or are specified
/// elsewhere. An API may choose to allow leap seconds. Related types are
/// google.type.Date and `google.protobuf.Timestamp`.
typedef TimeOfDay = $TimeOfDay;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef TimeZone = $TimeZone;
