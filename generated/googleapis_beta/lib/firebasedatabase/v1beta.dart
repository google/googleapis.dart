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

/// Firebase Realtime Database Management API - v1beta
///
/// The Firebase Realtime Database Management API enables programmatic
/// provisioning and management of Realtime Database instances.
///
/// For more information, see
/// <https://firebase.google.com/docs/reference/rest/database/database-management/rest/>
///
/// Create an instance of [FirebaseRealtimeDatabaseApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsInstancesResource]
library firebasedatabase.v1beta;

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

/// The Firebase Realtime Database Management API enables programmatic
/// provisioning and management of Realtime Database instances.
class FirebaseRealtimeDatabaseApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View your data across Google Cloud services and see the email address of
  /// your Google Account
  static const cloudPlatformReadOnlyScope =
      'https://www.googleapis.com/auth/cloud-platform.read-only';

  /// View and administer all your Firebase data and settings
  static const firebaseScope = 'https://www.googleapis.com/auth/firebase';

  /// View all your Firebase data and settings
  static const firebaseReadonlyScope =
      'https://www.googleapis.com/auth/firebase.readonly';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseRealtimeDatabaseApi(http.Client client,
      {core.String rootUrl = 'https://firebasedatabase.googleapis.com/',
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

  ProjectsLocationsInstancesResource get instances =>
      ProjectsLocationsInstancesResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsInstancesResource(commons.ApiRequester client)
      : _requester = client;

  /// Requests that a new DatabaseInstance be created.
  ///
  /// The state of a successfully created DatabaseInstance is ACTIVE. Only
  /// available for projects on the Blaze plan. Projects can be upgraded using
  /// the Cloud Billing API
  /// https://cloud.google.com/billing/reference/rest/v1/projects/updateBillingInfo.
  /// Note that it might take a few minutes for billing enablement state to
  /// propagate to Firebase systems.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent project for which to create a database instance, in
  /// the form: `projects/{project-number}/locations/{location-id}`.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [databaseId] - The globally unique identifier of the database instance.
  ///
  /// [validateOnly] - When set to true, the request will be validated but not
  /// submitted.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatabaseInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatabaseInstance> create(
    DatabaseInstance request,
    core.String parent, {
    core.String? databaseId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (databaseId != null) 'databaseId': [databaseId],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DatabaseInstance.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Marks a DatabaseInstance to be deleted.
  ///
  /// The DatabaseInstance will be purged within 30 days. The default database
  /// cannot be deleted. IDs for deleted database instances may never be
  /// recovered or re-used. The Database may only be deleted if it is already in
  /// a DISABLED state.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the database instance, in
  /// the form:
  /// `projects/{project-number}/locations/{location-id}/instances/{database-id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatabaseInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatabaseInstance> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return DatabaseInstance.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Disables a DatabaseInstance.
  ///
  /// The database can be re-enabled later using ReenableDatabaseInstance. When
  /// a database is disabled, all reads and writes are denied, including view
  /// access in the Firebase console.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the database instance, in
  /// the form:
  /// `projects/{project-number}/locations/{location-id}/instances/{database-id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatabaseInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatabaseInstance> disable(
    DisableDatabaseInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + ':disable';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DatabaseInstance.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the DatabaseInstance identified by the specified resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the database instance, in
  /// the form:
  /// `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  /// `database-id` is a globally unique identifier across all parent
  /// collections. For convenience, this method allows you to supply `-` as a
  /// wildcard character in place of specific collections under `projects` and
  /// `locations`. The resulting wildcarding form of the method is:
  /// `projects/-/locations/-/instances/{database-id}`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatabaseInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatabaseInstance> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return DatabaseInstance.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists each DatabaseInstance associated with the specified parent project.
  ///
  /// The list items are returned in no particular order, but will be a
  /// consistent view of the database instances when additional requests are
  /// made with a `pageToken`. The resulting list contains instances in any
  /// STATE. The list results may be stale by a few seconds. Use
  /// GetDatabaseInstance for consistent reads.
  ///
  /// Request parameters:
  ///
  /// [parent] - The parent project for which to list database instances, in the
  /// form: `projects/{project-number}/locations/{location-id}` To list across
  /// all locations, use a parent in the form:
  /// `projects/{project-number}/locations/-`
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of database instances to return in the
  /// response. The server may return fewer than this at its discretion. If no
  /// value is specified (or too large a value is specified), then the server
  /// will impose its own limit.
  ///
  /// [pageToken] - Token returned from a previous call to
  /// `ListDatabaseInstances` indicating where in the set of database instances
  /// to resume listing.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatabaseInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatabaseInstancesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDatabaseInstancesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Enables a DatabaseInstance.
  ///
  /// The database must have been disabled previously using
  /// DisableDatabaseInstance. The state of a successfully reenabled
  /// DatabaseInstance is ACTIVE.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The fully qualified resource name of the database instance, in
  /// the form:
  /// `projects/{project-number}/locations/{location-id}/instances/{database-id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DatabaseInstance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DatabaseInstance> reenable(
    ReenableDatabaseInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1beta/' + core.Uri.encodeFull('$name') + ':reenable';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return DatabaseInstance.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// Representation of a Realtime Database instance.
///
/// Details on interacting with contents of a DatabaseInstance can be found at:
/// https://firebase.google.com/docs/database/rest/start.
class DatabaseInstance {
  /// The globally unique hostname of the database.
  ///
  /// Immutable.
  core.String? databaseUrl;

  /// The fully qualified resource name of the database instance, in the form:
  /// `projects/{project-number}/locations/{location-id}/instances/{database-id}`.
  core.String? name;

  /// The resource name of the project this instance belongs to.
  ///
  /// For example: `projects/{project-number}`.
  core.String? project;

  /// The database's lifecycle state.
  ///
  /// Read-only.
  /// Possible string values are:
  /// - "LIFECYCLE_STATE_UNSPECIFIED" : Unspecified state, likely the result of
  /// an error on the backend. This is only used for distinguishing unset
  /// values.
  /// - "ACTIVE" : The normal and active state.
  /// - "DISABLED" : The database is in a disabled state. It can be re-enabled
  /// later.
  /// - "DELETED" : The database is in a deleted state.
  core.String? state;

  /// The database instance type.
  ///
  /// On creation only USER_DATABASE is allowed, which is also the default when
  /// omitted.
  /// Possible string values are:
  /// - "DATABASE_INSTANCE_TYPE_UNSPECIFIED" : Unknown state, likely the result
  /// of an error on the backend. This is only used for distinguishing unset
  /// values.
  /// - "DEFAULT_DATABASE" : The default database that is provisioned when a
  /// project is created.
  /// - "USER_DATABASE" : A database that the user created.
  core.String? type;

  DatabaseInstance({
    this.databaseUrl,
    this.name,
    this.project,
    this.state,
    this.type,
  });

  DatabaseInstance.fromJson(core.Map _json)
      : this(
          databaseUrl: _json.containsKey('databaseUrl')
              ? _json['databaseUrl'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          project: _json.containsKey('project')
              ? _json['project'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseUrl != null) 'databaseUrl': databaseUrl!,
        if (name != null) 'name': name!,
        if (project != null) 'project': project!,
        if (state != null) 'state': state!,
        if (type != null) 'type': type!,
      };
}

/// The request sent to the DisableDatabaseInstance method.
typedef DisableDatabaseInstanceRequest = $Empty;

/// The response from the ListDatabaseInstances method.
class ListDatabaseInstancesResponse {
  /// List of each DatabaseInstance that is in the parent Firebase project.
  core.List<DatabaseInstance>? instances;

  /// If the result list is too large to fit in a single response, then a token
  /// is returned.
  ///
  /// If the string is empty, then this response is the last page of results.
  /// This token can be used in a subsequent call to `ListDatabaseInstances` to
  /// find the next group of database instances. Page tokens are short-lived and
  /// should not be persisted.
  core.String? nextPageToken;

  ListDatabaseInstancesResponse({
    this.instances,
    this.nextPageToken,
  });

  ListDatabaseInstancesResponse.fromJson(core.Map _json)
      : this(
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) => DatabaseInstance.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instances != null) 'instances': instances!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The request sent to the ReenableDatabaseInstance method.
typedef ReenableDatabaseInstanceRequest = $Empty;
