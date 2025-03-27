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
///     - [ProjectsLocationsDbSystemShapesResource]
///     - [ProjectsLocationsEntitlementsResource]
///     - [ProjectsLocationsGiVersionsResource]
///     - [ProjectsLocationsOdbNetworksResource]
///       - [ProjectsLocationsOdbNetworksOdbSubnetsResource]
///     - [ProjectsLocationsOperationsResource]
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

  OracleDatabaseApi(http.Client client,
      {core.String rootUrl = 'https://oracledatabase.googleapis.com/',
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
  ProjectsLocationsDbSystemShapesResource get dbSystemShapes =>
      ProjectsLocationsDbSystemShapesResource(_requester);
  ProjectsLocationsEntitlementsResource get entitlements =>
      ProjectsLocationsEntitlementsResource(_requester);
  ProjectsLocationsGiVersionsResource get giVersions =>
      ProjectsLocationsGiVersionsResource(_requester);
  ProjectsLocationsOdbNetworksResource get odbNetworks =>
      ProjectsLocationsOdbNetworksResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);

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
  /// [extraLocationTypes] - Optional. A list of extra location types that
  /// should be used as conditions for controlling the visibility of the
  /// locations.
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
      if (extraLocationTypes != null) 'extraLocationTypes': extraLocationTypes,
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

class ProjectsLocationsAutonomousDatabaseBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutonomousDatabaseBackupsResource(
      commons.ApiRequester client)
      : _requester = client;

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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autonomousDatabaseBackups';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutonomousDatabaseBackupsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsAutonomousDatabaseCharacterSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsAutonomousDatabaseCharacterSetsResource(
      commons.ApiRequester client)
      : _requester = client;

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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$parent') +
        '/autonomousDatabaseCharacterSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutonomousDatabaseCharacterSetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (autonomousDatabaseId != null)
        'autonomousDatabaseId': [autonomousDatabaseId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':generateWallet';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GenerateAutonomousDatabaseWalletResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return AutonomousDatabase.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autonomousDatabases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutonomousDatabasesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
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
      if ($fields != null) 'fields': [$fields],
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/autonomousDbVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListAutonomousDbVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCloudExadataInfrastructuresResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCloudExadataInfrastructuresDbServersResource get dbServers =>
      ProjectsLocationsCloudExadataInfrastructuresDbServersResource(_requester);

  ProjectsLocationsCloudExadataInfrastructuresResource(
      commons.ApiRequester client)
      : _requester = client;

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
      if (cloudExadataInfrastructureId != null)
        'cloudExadataInfrastructureId': [cloudExadataInfrastructureId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
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
      if (force != null) 'force': ['${force}'],
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CloudExadataInfrastructure.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Exadata Infrastructures in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent value for CloudExadataInfrastructure in
  /// the following format: projects/{project}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/cloudExadataInfrastructures';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCloudExadataInfrastructuresResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCloudExadataInfrastructuresDbServersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCloudExadataInfrastructuresDbServersResource(
      commons.ApiRequester client)
      : _requester = client;

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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbServers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbServersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (cloudVmClusterId != null) 'cloudVmClusterId': [cloudVmClusterId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
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
      if (force != null) 'force': ['${force}'],
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CloudVmCluster.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/cloudVmClusters';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCloudVmClustersResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbNodes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbNodesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/dbSystemShapes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDbSystemShapesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/entitlements';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEntitlementsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGiVersionsResource {
  final commons.ApiRequester _requester;

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
  /// request. Only the shape and gi_version fields are supported in this
  /// format: `shape="{shape}"`.
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
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/giVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListGiVersionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (odbNetworkId != null) 'odbNetworkId': [odbNetworkId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
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
  async.Future<OdbNetwork> get(
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
    return OdbNetwork.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/odbNetworks';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOdbNetworksResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if (odbSubnetId != null) 'odbSubnetId': [odbSubnetId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
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
  async.Future<OdbSubnet> get(
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
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/odbSubnets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListOdbSubnetsResponse.fromJson(
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
  async.Future<Empty> delete(
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

  AllConnectionStrings({
    this.high,
    this.low,
    this.medium,
  });

  AllConnectionStrings.fromJson(core.Map json_)
      : this(
          high: json_['high'] as core.String?,
          low: json_['low'] as core.String?,
          medium: json_['medium'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (high != null) 'high': high!,
        if (low != null) 'low': low!,
        if (medium != null) 'medium': medium!,
      };
}

/// Details of the Autonomous Database resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/AutonomousDatabase/
class AutonomousDatabase {
  /// The password for the default ADMIN user.
  ///
  /// Optional.
  core.String? adminPassword;

  /// The subnet CIDR range for the Autonomous Database.
  ///
  /// Optional.
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
  /// Optional.
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
  /// Optional.
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
  /// Optional.
  core.String? network;

  /// The name of the OdbNetwork associated with the Autonomous Database.
  ///
  /// Format: projects/{project}/locations/{location}/odbNetworks/{odb_network}
  /// It is optional but if specified, this should match the parent ODBNetwork
  /// of the OdbSubnet.
  ///
  /// Optional.
  core.String? odbNetwork;

  /// The name of the OdbSubnet associated with the Autonomous Database.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
  ///
  /// Optional.
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
  /// Optional.
  SourceConfig? sourceConfig;

  AutonomousDatabase({
    this.adminPassword,
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
          cidr: json_['cidr'] as core.String?,
          createTime: json_['createTime'] as core.String?,
          database: json_['database'] as core.String?,
          disasterRecoverySupportedLocations:
              (json_['disasterRecoverySupportedLocations'] as core.List?)
                  ?.map((value) => value as core.String)
                  .toList(),
          displayName: json_['displayName'] as core.String?,
          entitlementId: json_['entitlementId'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
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
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceConfig: json_.containsKey('sourceConfig')
              ? SourceConfig.fromJson(
                  json_['sourceConfig'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (adminPassword != null) 'adminPassword': adminPassword!,
        if (cidr != null) 'cidr': cidr!,
        if (createTime != null) 'createTime': createTime!,
        if (database != null) 'database': database!,
        if (disasterRecoverySupportedLocations != null)
          'disasterRecoverySupportedLocations':
              disasterRecoverySupportedLocations!,
        if (displayName != null) 'displayName': displayName!,
        if (entitlementId != null) 'entitlementId': entitlementId!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (odbNetwork != null) 'odbNetwork': odbNetwork!,
        if (odbSubnet != null) 'odbSubnet': odbSubnet!,
        if (peerAutonomousDatabases != null)
          'peerAutonomousDatabases': peerAutonomousDatabases!,
        if (properties != null) 'properties': properties!,
        if (sourceConfig != null) 'sourceConfig': sourceConfig!,
      };
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

  AutonomousDatabaseApex({
    this.apexVersion,
    this.ordsVersion,
  });

  AutonomousDatabaseApex.fromJson(core.Map json_)
      : this(
          apexVersion: json_['apexVersion'] as core.String?,
          ordsVersion: json_['ordsVersion'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (apexVersion != null) 'apexVersion': apexVersion!,
        if (ordsVersion != null) 'ordsVersion': ordsVersion!,
      };
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
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          properties: json_.containsKey('properties')
              ? AutonomousDatabaseBackupProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autonomousDatabase != null)
          'autonomousDatabase': autonomousDatabase!,
        if (displayName != null) 'displayName': displayName!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableTillTime != null) 'availableTillTime': availableTillTime!,
        if (compartmentId != null) 'compartmentId': compartmentId!,
        if (databaseSizeTb != null) 'databaseSizeTb': databaseSizeTb!,
        if (dbVersion != null) 'dbVersion': dbVersion!,
        if (endTime != null) 'endTime': endTime!,
        if (isAutomaticBackup != null) 'isAutomaticBackup': isAutomaticBackup!,
        if (isLongTermBackup != null) 'isLongTermBackup': isLongTermBackup!,
        if (isRestorable != null) 'isRestorable': isRestorable!,
        if (keyStoreId != null) 'keyStoreId': keyStoreId!,
        if (keyStoreWallet != null) 'keyStoreWallet': keyStoreWallet!,
        if (kmsKeyId != null) 'kmsKeyId': kmsKeyId!,
        if (kmsKeyVersionId != null) 'kmsKeyVersionId': kmsKeyVersionId!,
        if (lifecycleDetails != null) 'lifecycleDetails': lifecycleDetails!,
        if (lifecycleState != null) 'lifecycleState': lifecycleState!,
        if (ocid != null) 'ocid': ocid!,
        if (retentionPeriodDays != null)
          'retentionPeriodDays': retentionPeriodDays!,
        if (sizeTb != null) 'sizeTb': sizeTb!,
        if (startTime != null) 'startTime': startTime!,
        if (type != null) 'type': type!,
        if (vaultId != null) 'vaultId': vaultId!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (characterSet != null) 'characterSet': characterSet!,
        if (characterSetType != null) 'characterSetType': characterSetType!,
        if (name != null) 'name': name!,
      };
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
              ? AllConnectionStrings.fromJson(json_['allConnectionStrings']
                  as core.Map<core.String, core.dynamic>)
              : null,
          dedicated: json_['dedicated'] as core.String?,
          high: json_['high'] as core.String?,
          low: json_['low'] as core.String?,
          medium: json_['medium'] as core.String?,
          profiles: (json_['profiles'] as core.List?)
              ?.map((value) => DatabaseConnectionStringProfile.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (allConnectionStrings != null)
          'allConnectionStrings': allConnectionStrings!,
        if (dedicated != null) 'dedicated': dedicated!,
        if (high != null) 'high': high!,
        if (low != null) 'low': low!,
        if (medium != null) 'medium': medium!,
        if (profiles != null) 'profiles': profiles!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (apexUri != null) 'apexUri': apexUri!,
        if (databaseTransformsUri != null)
          'databaseTransformsUri': databaseTransformsUri!,
        if (graphStudioUri != null) 'graphStudioUri': graphStudioUri!,
        if (machineLearningNotebookUri != null)
          'machineLearningNotebookUri': machineLearningNotebookUri!,
        if (machineLearningUserManagementUri != null)
          'machineLearningUserManagementUri': machineLearningUserManagementUri!,
        if (mongoDbUri != null) 'mongoDbUri': mongoDbUri!,
        if (ordsUri != null) 'ordsUri': ordsUri!,
        if (sqlDevWebUri != null) 'sqlDevWebUri': sqlDevWebUri!,
      };
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
  /// Optional.
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
  /// Optional.
  core.int? backupRetentionPeriodDays;

  /// The character set for the Autonomous Database.
  ///
  /// The default is AL32UTF8.
  ///
  /// Optional.
  core.String? characterSet;

  /// The number of compute servers for the Autonomous Database.
  ///
  /// Optional.
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
  /// Optional.
  core.int? cpuCoreCount;

  /// The list of customer contacts.
  ///
  /// Optional.
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
  /// Optional.
  core.int? dataStorageSizeGb;

  /// The size of the data stored in the database, in terabytes.
  ///
  /// Optional.
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
  /// Optional.
  /// Possible string values are:
  /// - "DATABASE_EDITION_UNSPECIFIED" : Default unspecified value.
  /// - "STANDARD_EDITION" : Standard Database Edition
  /// - "ENTERPRISE_EDITION" : Enterprise Database Edition
  core.String? dbEdition;

  /// The Oracle Database version for the Autonomous Database.
  ///
  /// Optional.
  core.String? dbVersion;

  /// The workload type of the Autonomous Database.
  ///
  /// Required.
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

  /// This field indicates the number of seconds of data loss during a Data
  /// Guard failover.
  ///
  /// Output only.
  core.String? failedDataRecoveryDuration;

  /// This field indicates if auto scaling is enabled for the Autonomous
  /// Database CPU core count.
  ///
  /// Optional.
  core.bool? isAutoScalingEnabled;

  /// This field indicates whether the Autonomous Database has local (in-region)
  /// Data Guard enabled.
  ///
  /// Output only.
  core.bool? isLocalDataGuardEnabled;

  /// This field indicates if auto scaling is enabled for the Autonomous
  /// Database storage.
  ///
  /// Optional.
  core.bool? isStorageAutoScalingEnabled;

  /// The license type used for the Autonomous Database.
  ///
  /// Required.
  /// Possible string values are:
  /// - "LICENSE_TYPE_UNSPECIFIED" : Unspecified
  /// - "LICENSE_INCLUDED" : License included part of offer
  /// - "BRING_YOUR_OWN_LICENSE" : Bring your own license
  core.String? licenseType;

  /// The details of the current lifestyle state of the Autonomous Database.
  ///
  /// Output only.
  core.String? lifecycleDetails;

  /// This field indicates the maximum data loss limit for an Autonomous
  /// Database, in seconds.
  ///
  /// Output only.
  core.int? localAdgAutoFailoverMaxDataLossLimit;

  /// This field indicates the local disaster recovery (DR) type of an
  /// Autonomous Database.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LOCAL_DISASTER_RECOVERY_TYPE_UNSPECIFIED" : Default unspecified value.
  /// - "ADG" : Autonomous Data Guard recovery.
  /// - "BACKUP_BASED" : Backup based recovery.
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
  /// Optional.
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
  /// Optional.
  core.bool? mtlsConnectionRequired;

  /// The national character set for the Autonomous Database.
  ///
  /// The default is AL16UTF16.
  ///
  /// Optional.
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
  /// Optional.
  core.String? privateEndpointIp;

  /// The private endpoint label for the Autonomous Database.
  ///
  /// Optional.
  core.String? privateEndpointLabel;

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
  /// Optional.
  core.String? secretId;

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
  /// Optional.
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
    this.failedDataRecoveryDuration,
    this.isAutoScalingEnabled,
    this.isLocalDataGuardEnabled,
    this.isStorageAutoScalingEnabled,
    this.licenseType,
    this.lifecycleDetails,
    this.localAdgAutoFailoverMaxDataLossLimit,
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
    this.refreshableMode,
    this.refreshableState,
    this.role,
    this.scheduledOperationDetails,
    this.secretId,
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
          allocatedStorageSizeTb:
              (json_['allocatedStorageSizeTb'] as core.num?)?.toDouble(),
          allowlistedIps: (json_['allowlistedIps'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          apexDetails: json_.containsKey('apexDetails')
              ? AutonomousDatabaseApex.fromJson(
                  json_['apexDetails'] as core.Map<core.String, core.dynamic>)
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
                      as core.Map<core.String, core.dynamic>)
              : null,
          connectionUrls: json_.containsKey('connectionUrls')
              ? AutonomousDatabaseConnectionUrls.fromJson(
                  json_['connectionUrls']
                      as core.Map<core.String, core.dynamic>)
              : null,
          cpuCoreCount: json_['cpuCoreCount'] as core.int?,
          customerContacts: (json_['customerContacts'] as core.List?)
              ?.map((value) => CustomerContact.fromJson(
                  value as core.Map<core.String, core.dynamic>))
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
          failedDataRecoveryDuration:
              json_['failedDataRecoveryDuration'] as core.String?,
          isAutoScalingEnabled: json_['isAutoScalingEnabled'] as core.bool?,
          isLocalDataGuardEnabled:
              json_['isLocalDataGuardEnabled'] as core.bool?,
          isStorageAutoScalingEnabled:
              json_['isStorageAutoScalingEnabled'] as core.bool?,
          licenseType: json_['licenseType'] as core.String?,
          lifecycleDetails: json_['lifecycleDetails'] as core.String?,
          localAdgAutoFailoverMaxDataLossLimit:
              json_['localAdgAutoFailoverMaxDataLossLimit'] as core.int?,
          localDisasterRecoveryType:
              json_['localDisasterRecoveryType'] as core.String?,
          localStandbyDb: json_.containsKey('localStandbyDb')
              ? AutonomousDatabaseStandbySummary.fromJson(
                  json_['localStandbyDb']
                      as core.Map<core.String, core.dynamic>)
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
          nextLongTermBackupTime:
              json_['nextLongTermBackupTime'] as core.String?,
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
          refreshableMode: json_['refreshableMode'] as core.String?,
          refreshableState: json_['refreshableState'] as core.String?,
          role: json_['role'] as core.String?,
          scheduledOperationDetails:
              (json_['scheduledOperationDetails'] as core.List?)
                  ?.map((value) => ScheduledOperationDetails.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          secretId: json_['secretId'] as core.String?,
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (actualUsedDataStorageSizeTb != null)
          'actualUsedDataStorageSizeTb': actualUsedDataStorageSizeTb!,
        if (allocatedStorageSizeTb != null)
          'allocatedStorageSizeTb': allocatedStorageSizeTb!,
        if (allowlistedIps != null) 'allowlistedIps': allowlistedIps!,
        if (apexDetails != null) 'apexDetails': apexDetails!,
        if (arePrimaryAllowlistedIpsUsed != null)
          'arePrimaryAllowlistedIpsUsed': arePrimaryAllowlistedIpsUsed!,
        if (autonomousContainerDatabaseId != null)
          'autonomousContainerDatabaseId': autonomousContainerDatabaseId!,
        if (availableUpgradeVersions != null)
          'availableUpgradeVersions': availableUpgradeVersions!,
        if (backupRetentionPeriodDays != null)
          'backupRetentionPeriodDays': backupRetentionPeriodDays!,
        if (characterSet != null) 'characterSet': characterSet!,
        if (computeCount != null) 'computeCount': computeCount!,
        if (connectionStrings != null) 'connectionStrings': connectionStrings!,
        if (connectionUrls != null) 'connectionUrls': connectionUrls!,
        if (cpuCoreCount != null) 'cpuCoreCount': cpuCoreCount!,
        if (customerContacts != null) 'customerContacts': customerContacts!,
        if (dataGuardRoleChangedTime != null)
          'dataGuardRoleChangedTime': dataGuardRoleChangedTime!,
        if (dataSafeState != null) 'dataSafeState': dataSafeState!,
        if (dataStorageSizeGb != null) 'dataStorageSizeGb': dataStorageSizeGb!,
        if (dataStorageSizeTb != null) 'dataStorageSizeTb': dataStorageSizeTb!,
        if (databaseManagementState != null)
          'databaseManagementState': databaseManagementState!,
        if (dbEdition != null) 'dbEdition': dbEdition!,
        if (dbVersion != null) 'dbVersion': dbVersion!,
        if (dbWorkload != null) 'dbWorkload': dbWorkload!,
        if (disasterRecoveryRoleChangedTime != null)
          'disasterRecoveryRoleChangedTime': disasterRecoveryRoleChangedTime!,
        if (failedDataRecoveryDuration != null)
          'failedDataRecoveryDuration': failedDataRecoveryDuration!,
        if (isAutoScalingEnabled != null)
          'isAutoScalingEnabled': isAutoScalingEnabled!,
        if (isLocalDataGuardEnabled != null)
          'isLocalDataGuardEnabled': isLocalDataGuardEnabled!,
        if (isStorageAutoScalingEnabled != null)
          'isStorageAutoScalingEnabled': isStorageAutoScalingEnabled!,
        if (licenseType != null) 'licenseType': licenseType!,
        if (lifecycleDetails != null) 'lifecycleDetails': lifecycleDetails!,
        if (localAdgAutoFailoverMaxDataLossLimit != null)
          'localAdgAutoFailoverMaxDataLossLimit':
              localAdgAutoFailoverMaxDataLossLimit!,
        if (localDisasterRecoveryType != null)
          'localDisasterRecoveryType': localDisasterRecoveryType!,
        if (localStandbyDb != null) 'localStandbyDb': localStandbyDb!,
        if (maintenanceBeginTime != null)
          'maintenanceBeginTime': maintenanceBeginTime!,
        if (maintenanceEndTime != null)
          'maintenanceEndTime': maintenanceEndTime!,
        if (maintenanceScheduleType != null)
          'maintenanceScheduleType': maintenanceScheduleType!,
        if (memoryPerOracleComputeUnitGbs != null)
          'memoryPerOracleComputeUnitGbs': memoryPerOracleComputeUnitGbs!,
        if (memoryTableGbs != null) 'memoryTableGbs': memoryTableGbs!,
        if (mtlsConnectionRequired != null)
          'mtlsConnectionRequired': mtlsConnectionRequired!,
        if (nCharacterSet != null) 'nCharacterSet': nCharacterSet!,
        if (nextLongTermBackupTime != null)
          'nextLongTermBackupTime': nextLongTermBackupTime!,
        if (ociUrl != null) 'ociUrl': ociUrl!,
        if (ocid != null) 'ocid': ocid!,
        if (openMode != null) 'openMode': openMode!,
        if (operationsInsightsState != null)
          'operationsInsightsState': operationsInsightsState!,
        if (peerDbIds != null) 'peerDbIds': peerDbIds!,
        if (permissionLevel != null) 'permissionLevel': permissionLevel!,
        if (privateEndpoint != null) 'privateEndpoint': privateEndpoint!,
        if (privateEndpointIp != null) 'privateEndpointIp': privateEndpointIp!,
        if (privateEndpointLabel != null)
          'privateEndpointLabel': privateEndpointLabel!,
        if (refreshableMode != null) 'refreshableMode': refreshableMode!,
        if (refreshableState != null) 'refreshableState': refreshableState!,
        if (role != null) 'role': role!,
        if (scheduledOperationDetails != null)
          'scheduledOperationDetails': scheduledOperationDetails!,
        if (secretId != null) 'secretId': secretId!,
        if (sqlWebDeveloperUrl != null)
          'sqlWebDeveloperUrl': sqlWebDeveloperUrl!,
        if (state != null) 'state': state!,
        if (supportedCloneRegions != null)
          'supportedCloneRegions': supportedCloneRegions!,
        if (totalAutoBackupStorageSizeGbs != null)
          'totalAutoBackupStorageSizeGbs': totalAutoBackupStorageSizeGbs!,
        if (usedDataStorageSizeTbs != null)
          'usedDataStorageSizeTbs': usedDataStorageSizeTbs!,
        if (vaultId != null) 'vaultId': vaultId!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataGuardRoleChangedTime != null)
          'dataGuardRoleChangedTime': dataGuardRoleChangedTime!,
        if (disasterRecoveryRoleChangedTime != null)
          'disasterRecoveryRoleChangedTime': disasterRecoveryRoleChangedTime!,
        if (lagTimeDuration != null) 'lagTimeDuration': lagTimeDuration!,
        if (lifecycleDetails != null) 'lifecycleDetails': lifecycleDetails!,
        if (state != null) 'state': state!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (dbWorkload != null) 'dbWorkload': dbWorkload!,
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
        if (workloadUri != null) 'workloadUri': workloadUri!,
      };
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
          cloudAccountHomeRegion:
              json_['cloudAccountHomeRegion'] as core.String?,
          linkExistingAccountUri:
              json_['linkExistingAccountUri'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accountCreationUri != null)
          'accountCreationUri': accountCreationUri!,
        if (cloudAccount != null) 'cloudAccount': cloudAccount!,
        if (cloudAccountHomeRegion != null)
          'cloudAccountHomeRegion': cloudAccountHomeRegion!,
        if (linkExistingAccountUri != null)
          'linkExistingAccountUri': linkExistingAccountUri!,
      };
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

  /// Google Cloud Platform location where Oracle Exadata is hosted.
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
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          properties: json_.containsKey('properties')
              ? CloudExadataInfrastructureProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (entitlementId != null) 'entitlementId': entitlementId!,
        if (gcpOracleZone != null) 'gcpOracleZone': gcpOracleZone!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
      };
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
  /// Output only.
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
  /// Output only.
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
              ?.map((value) => CustomerContact.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          dataStorageSizeTb:
              (json_['dataStorageSizeTb'] as core.num?)?.toDouble(),
          databaseServerType: json_['databaseServerType'] as core.String?,
          dbNodeStorageSizeGb: json_['dbNodeStorageSizeGb'] as core.int?,
          dbServerVersion: json_['dbServerVersion'] as core.String?,
          maintenanceWindow: json_.containsKey('maintenanceWindow')
              ? MaintenanceWindow.fromJson(json_['maintenanceWindow']
                  as core.Map<core.String, core.dynamic>)
              : null,
          maxCpuCount: json_['maxCpuCount'] as core.int?,
          maxDataStorageTb:
              (json_['maxDataStorageTb'] as core.num?)?.toDouble(),
          maxDbNodeStorageSizeGb: json_['maxDbNodeStorageSizeGb'] as core.int?,
          maxMemoryGb: json_['maxMemoryGb'] as core.int?,
          memorySizeGb: json_['memorySizeGb'] as core.int?,
          monthlyDbServerVersion:
              json_['monthlyDbServerVersion'] as core.String?,
          monthlyStorageServerVersion:
              json_['monthlyStorageServerVersion'] as core.String?,
          nextMaintenanceRunId: json_['nextMaintenanceRunId'] as core.String?,
          nextMaintenanceRunTime:
              json_['nextMaintenanceRunTime'] as core.String?,
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (activatedStorageCount != null)
          'activatedStorageCount': activatedStorageCount!,
        if (additionalStorageCount != null)
          'additionalStorageCount': additionalStorageCount!,
        if (availableStorageSizeGb != null)
          'availableStorageSizeGb': availableStorageSizeGb!,
        if (computeCount != null) 'computeCount': computeCount!,
        if (computeModel != null) 'computeModel': computeModel!,
        if (cpuCount != null) 'cpuCount': cpuCount!,
        if (customerContacts != null) 'customerContacts': customerContacts!,
        if (dataStorageSizeTb != null) 'dataStorageSizeTb': dataStorageSizeTb!,
        if (databaseServerType != null)
          'databaseServerType': databaseServerType!,
        if (dbNodeStorageSizeGb != null)
          'dbNodeStorageSizeGb': dbNodeStorageSizeGb!,
        if (dbServerVersion != null) 'dbServerVersion': dbServerVersion!,
        if (maintenanceWindow != null) 'maintenanceWindow': maintenanceWindow!,
        if (maxCpuCount != null) 'maxCpuCount': maxCpuCount!,
        if (maxDataStorageTb != null) 'maxDataStorageTb': maxDataStorageTb!,
        if (maxDbNodeStorageSizeGb != null)
          'maxDbNodeStorageSizeGb': maxDbNodeStorageSizeGb!,
        if (maxMemoryGb != null) 'maxMemoryGb': maxMemoryGb!,
        if (memorySizeGb != null) 'memorySizeGb': memorySizeGb!,
        if (monthlyDbServerVersion != null)
          'monthlyDbServerVersion': monthlyDbServerVersion!,
        if (monthlyStorageServerVersion != null)
          'monthlyStorageServerVersion': monthlyStorageServerVersion!,
        if (nextMaintenanceRunId != null)
          'nextMaintenanceRunId': nextMaintenanceRunId!,
        if (nextMaintenanceRunTime != null)
          'nextMaintenanceRunTime': nextMaintenanceRunTime!,
        if (nextSecurityMaintenanceRunTime != null)
          'nextSecurityMaintenanceRunTime': nextSecurityMaintenanceRunTime!,
        if (ociUrl != null) 'ociUrl': ociUrl!,
        if (ocid != null) 'ocid': ocid!,
        if (shape != null) 'shape': shape!,
        if (state != null) 'state': state!,
        if (storageCount != null) 'storageCount': storageCount!,
        if (storageServerType != null) 'storageServerType': storageServerType!,
        if (storageServerVersion != null)
          'storageServerVersion': storageServerVersion!,
        if (totalStorageSizeGb != null)
          'totalStorageSizeGb': totalStorageSizeGb!,
      };
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

  /// Google Cloud Platform location where Oracle Exadata is hosted.
  ///
  /// It is same as Google Cloud Platform Oracle zone of Exadata infrastructure.
  ///
  /// Output only.
  core.String? gcpOracleZone;

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
    this.gcpOracleZone,
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
          gcpOracleZone: json_['gcpOracleZone'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          network: json_['network'] as core.String?,
          odbNetwork: json_['odbNetwork'] as core.String?,
          odbSubnet: json_['odbSubnet'] as core.String?,
          properties: json_.containsKey('properties')
              ? CloudVmClusterProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupOdbSubnet != null) 'backupOdbSubnet': backupOdbSubnet!,
        if (backupSubnetCidr != null) 'backupSubnetCidr': backupSubnetCidr!,
        if (cidr != null) 'cidr': cidr!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (exadataInfrastructure != null)
          'exadataInfrastructure': exadataInfrastructure!,
        if (gcpOracleZone != null) 'gcpOracleZone': gcpOracleZone!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (odbNetwork != null) 'odbNetwork': odbNetwork!,
        if (odbSubnet != null) 'odbSubnet': odbSubnet!,
        if (properties != null) 'properties': properties!,
      };
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
  /// Output only.
  core.int? scanListenerPortTcp;

  /// SCAN listener port - TLS
  ///
  /// Output only.
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
    this.storageSizeGb,
    this.systemVersion,
    this.timeZone,
  });

  CloudVmClusterProperties.fromJson(core.Map json_)
      : this(
          clusterName: json_['clusterName'] as core.String?,
          compartmentId: json_['compartmentId'] as core.String?,
          computeModel: json_['computeModel'] as core.String?,
          cpuCoreCount: json_['cpuCoreCount'] as core.int?,
          dataStorageSizeTb:
              (json_['dataStorageSizeTb'] as core.num?)?.toDouble(),
          dbNodeStorageSizeGb: json_['dbNodeStorageSizeGb'] as core.int?,
          dbServerOcids: (json_['dbServerOcids'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          diagnosticsDataCollectionOptions:
              json_.containsKey('diagnosticsDataCollectionOptions')
                  ? DataCollectionOptions.fromJson(
                      json_['diagnosticsDataCollectionOptions']
                          as core.Map<core.String, core.dynamic>)
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
          storageSizeGb: json_['storageSizeGb'] as core.int?,
          systemVersion: json_['systemVersion'] as core.String?,
          timeZone: json_.containsKey('timeZone')
              ? TimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterName != null) 'clusterName': clusterName!,
        if (compartmentId != null) 'compartmentId': compartmentId!,
        if (computeModel != null) 'computeModel': computeModel!,
        if (cpuCoreCount != null) 'cpuCoreCount': cpuCoreCount!,
        if (dataStorageSizeTb != null) 'dataStorageSizeTb': dataStorageSizeTb!,
        if (dbNodeStorageSizeGb != null)
          'dbNodeStorageSizeGb': dbNodeStorageSizeGb!,
        if (dbServerOcids != null) 'dbServerOcids': dbServerOcids!,
        if (diagnosticsDataCollectionOptions != null)
          'diagnosticsDataCollectionOptions': diagnosticsDataCollectionOptions!,
        if (diskRedundancy != null) 'diskRedundancy': diskRedundancy!,
        if (dnsListenerIp != null) 'dnsListenerIp': dnsListenerIp!,
        if (domain != null) 'domain': domain!,
        if (giVersion != null) 'giVersion': giVersion!,
        if (hostname != null) 'hostname': hostname!,
        if (hostnamePrefix != null) 'hostnamePrefix': hostnamePrefix!,
        if (licenseType != null) 'licenseType': licenseType!,
        if (localBackupEnabled != null)
          'localBackupEnabled': localBackupEnabled!,
        if (memorySizeGb != null) 'memorySizeGb': memorySizeGb!,
        if (nodeCount != null) 'nodeCount': nodeCount!,
        if (ociUrl != null) 'ociUrl': ociUrl!,
        if (ocid != null) 'ocid': ocid!,
        if (ocpuCount != null) 'ocpuCount': ocpuCount!,
        if (scanDns != null) 'scanDns': scanDns!,
        if (scanDnsRecordId != null) 'scanDnsRecordId': scanDnsRecordId!,
        if (scanIpIds != null) 'scanIpIds': scanIpIds!,
        if (scanListenerPortTcp != null)
          'scanListenerPortTcp': scanListenerPortTcp!,
        if (scanListenerPortTcpSsl != null)
          'scanListenerPortTcpSsl': scanListenerPortTcpSsl!,
        if (shape != null) 'shape': shape!,
        if (sparseDiskgroupEnabled != null)
          'sparseDiskgroupEnabled': sparseDiskgroupEnabled!,
        if (sshPublicKeys != null) 'sshPublicKeys': sshPublicKeys!,
        if (state != null) 'state': state!,
        if (storageSizeGb != null) 'storageSizeGb': storageSizeGb!,
        if (systemVersion != null) 'systemVersion': systemVersion!,
        if (timeZone != null) 'timeZone': timeZone!,
      };
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

  CustomerContact({
    this.email,
  });

  CustomerContact.fromJson(core.Map json_)
      : this(
          email: json_['email'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (email != null) 'email': email!,
      };
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
          healthMonitoringEnabled:
              json_['healthMonitoringEnabled'] as core.bool?,
          incidentLogsEnabled: json_['incidentLogsEnabled'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (diagnosticsEventsEnabled != null)
          'diagnosticsEventsEnabled': diagnosticsEventsEnabled!,
        if (healthMonitoringEnabled != null)
          'healthMonitoringEnabled': healthMonitoringEnabled!,
        if (incidentLogsEnabled != null)
          'incidentLogsEnabled': incidentLogsEnabled!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (consumerGroup != null) 'consumerGroup': consumerGroup!,
        if (displayName != null) 'displayName': displayName!,
        if (hostFormat != null) 'hostFormat': hostFormat!,
        if (isRegional != null) 'isRegional': isRegional!,
        if (protocol != null) 'protocol': protocol!,
        if (sessionMode != null) 'sessionMode': sessionMode!,
        if (syntaxFormat != null) 'syntaxFormat': syntaxFormat!,
        if (tlsAuthentication != null) 'tlsAuthentication': tlsAuthentication!,
        if (value != null) 'value': value!,
      };
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

  DbNode({
    this.name,
    this.properties,
  });

  DbNode.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          properties: json_.containsKey('properties')
              ? DbNodeProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (dbNodeStorageSizeGb != null)
          'dbNodeStorageSizeGb': dbNodeStorageSizeGb!,
        if (dbServerOcid != null) 'dbServerOcid': dbServerOcid!,
        if (hostname != null) 'hostname': hostname!,
        if (memorySizeGb != null) 'memorySizeGb': memorySizeGb!,
        if (ocid != null) 'ocid': ocid!,
        if (ocpuCount != null) 'ocpuCount': ocpuCount!,
        if (state != null) 'state': state!,
        if (totalCpuCoreCount != null) 'totalCpuCoreCount': totalCpuCoreCount!,
      };
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

  DbServer({
    this.displayName,
    this.name,
    this.properties,
  });

  DbServer.fromJson(core.Map json_)
      : this(
          displayName: json_['displayName'] as core.String?,
          name: json_['name'] as core.String?,
          properties: json_.containsKey('properties')
              ? DbServerProperties.fromJson(
                  json_['properties'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (name != null) 'name': name!,
        if (properties != null) 'properties': properties!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (dbNodeIds != null) 'dbNodeIds': dbNodeIds!,
        if (dbNodeStorageSizeGb != null)
          'dbNodeStorageSizeGb': dbNodeStorageSizeGb!,
        if (maxDbNodeStorageSizeGb != null)
          'maxDbNodeStorageSizeGb': maxDbNodeStorageSizeGb!,
        if (maxMemorySizeGb != null) 'maxMemorySizeGb': maxMemorySizeGb!,
        if (maxOcpuCount != null) 'maxOcpuCount': maxOcpuCount!,
        if (memorySizeGb != null) 'memorySizeGb': memorySizeGb!,
        if (ocid != null) 'ocid': ocid!,
        if (ocpuCount != null) 'ocpuCount': ocpuCount!,
        if (state != null) 'state': state!,
        if (vmCount != null) 'vmCount': vmCount!,
      };
}

/// Details of the Database System Shapes resource.
///
/// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/DbSystemShapeSummary/
class DbSystemShape {
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
    this.availableCoreCountPerNode,
    this.availableDataStorageTb,
    this.availableMemoryPerNodeGb,
    this.maxNodeCount,
    this.maxStorageCount,
    this.minCoreCountPerNode,
    this.minDbNodeStoragePerNodeGb,
    this.minMemoryPerNodeGb,
    this.minNodeCount,
    this.minStorageCount,
    this.name,
    this.shape,
  });

  DbSystemShape.fromJson(core.Map json_)
      : this(
          availableCoreCountPerNode:
              json_['availableCoreCountPerNode'] as core.int?,
          availableDataStorageTb: json_['availableDataStorageTb'] as core.int?,
          availableMemoryPerNodeGb:
              json_['availableMemoryPerNodeGb'] as core.int?,
          maxNodeCount: json_['maxNodeCount'] as core.int?,
          maxStorageCount: json_['maxStorageCount'] as core.int?,
          minCoreCountPerNode: json_['minCoreCountPerNode'] as core.int?,
          minDbNodeStoragePerNodeGb:
              json_['minDbNodeStoragePerNodeGb'] as core.int?,
          minMemoryPerNodeGb: json_['minMemoryPerNodeGb'] as core.int?,
          minNodeCount: json_['minNodeCount'] as core.int?,
          minStorageCount: json_['minStorageCount'] as core.int?,
          name: json_['name'] as core.String?,
          shape: json_['shape'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (availableCoreCountPerNode != null)
          'availableCoreCountPerNode': availableCoreCountPerNode!,
        if (availableDataStorageTb != null)
          'availableDataStorageTb': availableDataStorageTb!,
        if (availableMemoryPerNodeGb != null)
          'availableMemoryPerNodeGb': availableMemoryPerNodeGb!,
        if (maxNodeCount != null) 'maxNodeCount': maxNodeCount!,
        if (maxStorageCount != null) 'maxStorageCount': maxStorageCount!,
        if (minCoreCountPerNode != null)
          'minCoreCountPerNode': minCoreCountPerNode!,
        if (minDbNodeStoragePerNodeGb != null)
          'minDbNodeStoragePerNodeGb': minDbNodeStoragePerNodeGb!,
        if (minMemoryPerNodeGb != null)
          'minMemoryPerNodeGb': minMemoryPerNodeGb!,
        if (minNodeCount != null) 'minNodeCount': minNodeCount!,
        if (minStorageCount != null) 'minStorageCount': minStorageCount!,
        if (name != null) 'name': name!,
        if (shape != null) 'shape': shape!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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
              ? CloudAccountDetails.fromJson(json_['cloudAccountDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          entitlementId: json_['entitlementId'] as core.String?,
          name: json_['name'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudAccountDetails != null)
          'cloudAccountDetails': cloudAccountDetails!,
        if (entitlementId != null) 'entitlementId': entitlementId!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
      };
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (isRegional != null) 'isRegional': isRegional!,
        if (password != null) 'password': password!,
        if (type != null) 'type': type!,
      };
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
    archiveContent =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  GenerateAutonomousDatabaseWalletResponse({
    this.archiveContent,
  });

  GenerateAutonomousDatabaseWalletResponse.fromJson(core.Map json_)
      : this(
          archiveContent: json_['archiveContent'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (archiveContent != null) 'archiveContent': archiveContent!,
      };
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

  GiVersion({
    this.name,
    this.version,
  });

  GiVersion.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          version: json_['version'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (version != null) 'version': version!,
      };
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
                  ?.map((value) => AutonomousDatabaseBackup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autonomousDatabaseBackups != null)
          'autonomousDatabaseBackups': autonomousDatabaseBackups!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
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
                  ?.map((value) => AutonomousDatabaseCharacterSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autonomousDatabaseCharacterSets != null)
          'autonomousDatabaseCharacterSets': autonomousDatabaseCharacterSets!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for `AutonomousDatabase.List`.
class ListAutonomousDatabasesResponse {
  /// The list of Autonomous Databases.
  core.List<AutonomousDatabase>? autonomousDatabases;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListAutonomousDatabasesResponse({
    this.autonomousDatabases,
    this.nextPageToken,
  });

  ListAutonomousDatabasesResponse.fromJson(core.Map json_)
      : this(
          autonomousDatabases: (json_['autonomousDatabases'] as core.List?)
              ?.map((value) => AutonomousDatabase.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autonomousDatabases != null)
          'autonomousDatabases': autonomousDatabases!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
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
              ?.map((value) => AutonomousDbVersion.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autonomousDbVersions != null)
          'autonomousDbVersions': autonomousDbVersions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for `CloudExadataInfrastructures.list`.
class ListCloudExadataInfrastructuresResponse {
  /// The list of Exadata Infrastructures.
  core.List<CloudExadataInfrastructure>? cloudExadataInfrastructures;

  /// A token for fetching next page of response.
  core.String? nextPageToken;

  ListCloudExadataInfrastructuresResponse({
    this.cloudExadataInfrastructures,
    this.nextPageToken,
  });

  ListCloudExadataInfrastructuresResponse.fromJson(core.Map json_)
      : this(
          cloudExadataInfrastructures:
              (json_['cloudExadataInfrastructures'] as core.List?)
                  ?.map((value) => CloudExadataInfrastructure.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudExadataInfrastructures != null)
          'cloudExadataInfrastructures': cloudExadataInfrastructures!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for `CloudVmCluster.List`.
class ListCloudVmClustersResponse {
  /// The list of VM Clusters.
  core.List<CloudVmCluster>? cloudVmClusters;

  /// A token to fetch the next page of results.
  core.String? nextPageToken;

  ListCloudVmClustersResponse({
    this.cloudVmClusters,
    this.nextPageToken,
  });

  ListCloudVmClustersResponse.fromJson(core.Map json_)
      : this(
          cloudVmClusters: (json_['cloudVmClusters'] as core.List?)
              ?.map((value) => CloudVmCluster.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudVmClusters != null) 'cloudVmClusters': cloudVmClusters!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for `DbNode.List`.
class ListDbNodesResponse {
  /// The list of DB Nodes
  core.List<DbNode>? dbNodes;

  /// A token identifying a page of results the node should return.
  core.String? nextPageToken;

  ListDbNodesResponse({
    this.dbNodes,
    this.nextPageToken,
  });

  ListDbNodesResponse.fromJson(core.Map json_)
      : this(
          dbNodes: (json_['dbNodes'] as core.List?)
              ?.map((value) =>
                  DbNode.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dbNodes != null) 'dbNodes': dbNodes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for `DbServer.List`.
class ListDbServersResponse {
  /// The list of database servers.
  core.List<DbServer>? dbServers;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListDbServersResponse({
    this.dbServers,
    this.nextPageToken,
  });

  ListDbServersResponse.fromJson(core.Map json_)
      : this(
          dbServers: (json_['dbServers'] as core.List?)
              ?.map((value) => DbServer.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dbServers != null) 'dbServers': dbServers!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for `DbSystemShape.List`.
class ListDbSystemShapesResponse {
  /// The list of Database System shapes.
  core.List<DbSystemShape>? dbSystemShapes;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListDbSystemShapesResponse({
    this.dbSystemShapes,
    this.nextPageToken,
  });

  ListDbSystemShapesResponse.fromJson(core.Map json_)
      : this(
          dbSystemShapes: (json_['dbSystemShapes'] as core.List?)
              ?.map((value) => DbSystemShape.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dbSystemShapes != null) 'dbSystemShapes': dbSystemShapes!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for `Entitlement.List`.
class ListEntitlementsResponse {
  /// The list of Entitlements
  core.List<Entitlement>? entitlements;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListEntitlementsResponse({
    this.entitlements,
    this.nextPageToken,
  });

  ListEntitlementsResponse.fromJson(core.Map json_)
      : this(
          entitlements: (json_['entitlements'] as core.List?)
              ?.map((value) => Entitlement.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entitlements != null) 'entitlements': entitlements!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for `GiVersion.List`.
class ListGiVersionsResponse {
  /// The list of Oracle Grid Infrastructure (GI) versions.
  core.List<GiVersion>? giVersions;

  /// A token identifying a page of results the server should return.
  core.String? nextPageToken;

  ListGiVersionsResponse({
    this.giVersions,
    this.nextPageToken,
  });

  ListGiVersionsResponse.fromJson(core.Map json_)
      : this(
          giVersions: (json_['giVersions'] as core.List?)
              ?.map((value) => GiVersion.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (giVersions != null) 'giVersions': giVersions!,
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
              ?.map((value) => OdbNetwork.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (odbNetworks != null) 'odbNetworks': odbNetworks!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
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
              ?.map((value) => OdbSubnet.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unreachable: (json_['unreachable'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (odbSubnets != null) 'odbSubnets': odbSubnets!,
        if (unreachable != null) 'unreachable': unreachable!,
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
          customActionTimeoutMins:
              json_['customActionTimeoutMins'] as core.int?,
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

  core.Map<core.String, core.dynamic> toJson() => {
        if (customActionTimeoutMins != null)
          'customActionTimeoutMins': customActionTimeoutMins!,
        if (daysOfWeek != null) 'daysOfWeek': daysOfWeek!,
        if (hoursOfDay != null) 'hoursOfDay': hoursOfDay!,
        if (isCustomActionTimeoutEnabled != null)
          'isCustomActionTimeoutEnabled': isCustomActionTimeoutEnabled!,
        if (leadTimeWeek != null) 'leadTimeWeek': leadTimeWeek!,
        if (months != null) 'months': months!,
        if (patchingMode != null) 'patchingMode': patchingMode!,
        if (preference != null) 'preference': preference!,
        if (weeksOfMonth != null) 'weeksOfMonth': weeksOfMonth!,
      };
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
    this.labels,
    this.name,
    this.network,
    this.state,
  });

  OdbNetwork.fromJson(core.Map json_)
      : this(
          createTime: json_['createTime'] as core.String?,
          entitlementId: json_['entitlementId'] as core.String?,
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          network: json_['network'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (entitlementId != null) 'entitlementId': entitlementId!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (network != null) 'network': network!,
        if (state != null) 'state': state!,
      };
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
          labels:
              (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
            (key, value) => core.MapEntry(
              key,
              value as core.String,
            ),
          ),
          name: json_['name'] as core.String?,
          purpose: json_['purpose'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cidrRange != null) 'cidrRange': cidrRange!,
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (purpose != null) 'purpose': purpose!,
        if (state != null) 'state': state!,
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

/// The request for `AutonomousDatabase.Restart`.
typedef RestartAutonomousDatabaseRequest = $Empty;

/// The request for `AutonomousDatabase.Restore`.
class RestoreAutonomousDatabaseRequest {
  /// The time and date to restore the database to.
  ///
  /// Required.
  core.String? restoreTime;

  RestoreAutonomousDatabaseRequest({
    this.restoreTime,
  });

  RestoreAutonomousDatabaseRequest.fromJson(core.Map json_)
      : this(
          restoreTime: json_['restoreTime'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (restoreTime != null) 'restoreTime': restoreTime!,
      };
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

  ScheduledOperationDetails({
    this.dayOfWeek,
    this.startTime,
    this.stopTime,
  });

  ScheduledOperationDetails.fromJson(core.Map json_)
      : this(
          dayOfWeek: json_['dayOfWeek'] as core.String?,
          startTime: json_.containsKey('startTime')
              ? TimeOfDay.fromJson(
                  json_['startTime'] as core.Map<core.String, core.dynamic>)
              : null,
          stopTime: json_.containsKey('stopTime')
              ? TimeOfDay.fromJson(
                  json_['stopTime'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dayOfWeek != null) 'dayOfWeek': dayOfWeek!,
        if (startTime != null) 'startTime': startTime!,
        if (stopTime != null) 'stopTime': stopTime!,
      };
}

/// The source configuration for the standby Autonomous Database.
class SourceConfig {
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

  SourceConfig({
    this.automaticBackupsReplicationEnabled,
    this.autonomousDatabase,
  });

  SourceConfig.fromJson(core.Map json_)
      : this(
          automaticBackupsReplicationEnabled:
              json_['automaticBackupsReplicationEnabled'] as core.bool?,
          autonomousDatabase: json_['autonomousDatabase'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (automaticBackupsReplicationEnabled != null)
          'automaticBackupsReplicationEnabled':
              automaticBackupsReplicationEnabled!,
        if (autonomousDatabase != null)
          'autonomousDatabase': autonomousDatabase!,
      };
}

/// The request for `AutonomousDatabase.Start`.
typedef StartAutonomousDatabaseRequest = $Empty;

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

/// The request for `OracleDatabase.SwitchoverAutonomousDatabase`.
class SwitchoverAutonomousDatabaseRequest {
  /// The peer database name to switch over to.
  ///
  /// Required.
  core.String? peerAutonomousDatabase;

  SwitchoverAutonomousDatabaseRequest({
    this.peerAutonomousDatabase,
  });

  SwitchoverAutonomousDatabaseRequest.fromJson(core.Map json_)
      : this(
          peerAutonomousDatabase:
              json_['peerAutonomousDatabase'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (peerAutonomousDatabase != null)
          'peerAutonomousDatabase': peerAutonomousDatabase!,
      };
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
