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

/// Cloud Spanner API - v1
///
/// Cloud Spanner is a managed, mission-critical, globally consistent and
/// scalable relational database service.
///
/// For more information, see <https://cloud.google.com/spanner/>
///
/// Create an instance of [SpannerApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsInstanceConfigsResource]
///   - [ProjectsInstancesResource]
///     - [ProjectsInstancesBackupOperationsResource]
///     - [ProjectsInstancesBackupsResource]
///       - [ProjectsInstancesBackupsOperationsResource]
///     - [ProjectsInstancesDatabaseOperationsResource]
///     - [ProjectsInstancesDatabasesResource]
///       - [ProjectsInstancesDatabasesOperationsResource]
///       - [ProjectsInstancesDatabasesSessionsResource]
///     - [ProjectsInstancesOperationsResource]
/// - [ScansResource]
library spanner.v1;

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

/// Cloud Spanner is a managed, mission-critical, globally consistent and
/// scalable relational database service.
class SpannerApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// Administer your Spanner databases
  static const spannerAdminScope =
      'https://www.googleapis.com/auth/spanner.admin';

  /// View and manage the contents of your Spanner databases
  static const spannerDataScope =
      'https://www.googleapis.com/auth/spanner.data';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);
  ScansResource get scans => ScansResource(_requester);

  SpannerApi(http.Client client,
      {core.String rootUrl = 'https://spanner.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsInstanceConfigsResource get instanceConfigs =>
      ProjectsInstanceConfigsResource(_requester);
  ProjectsInstancesResource get instances =>
      ProjectsInstancesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsInstanceConfigsResource {
  final commons.ApiRequester _requester;

  ProjectsInstanceConfigsResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets information about a particular instance configuration.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested instance configuration.
  /// Values are of the form `projects//instanceConfigs/`.
  /// Value must have pattern `^projects/\[^/\]+/instanceConfigs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [InstanceConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<InstanceConfig> get(
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
    return InstanceConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists the supported instance configurations for a given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project for which a list of supported
  /// instance configurations is requested. Values are of the form `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [pageSize] - Number of instance configurations to be returned in the
  /// response. If 0 or less, defaults to the server's maximum allowed page
  /// size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListInstanceConfigsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstanceConfigsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstanceConfigsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/instanceConfigs';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListInstanceConfigsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesBackupOperationsResource get backupOperations =>
      ProjectsInstancesBackupOperationsResource(_requester);
  ProjectsInstancesBackupsResource get backups =>
      ProjectsInstancesBackupsResource(_requester);
  ProjectsInstancesDatabaseOperationsResource get databaseOperations =>
      ProjectsInstancesDatabaseOperationsResource(_requester);
  ProjectsInstancesDatabasesResource get databases =>
      ProjectsInstancesDatabasesResource(_requester);
  ProjectsInstancesOperationsResource get operations =>
      ProjectsInstancesOperationsResource(_requester);

  ProjectsInstancesResource(commons.ApiRequester client) : _requester = client;

  /// Creates an instance and begins preparing it to begin serving.
  ///
  /// The returned long-running operation can be used to track the progress of
  /// preparing the new instance. The instance name is assigned by the caller.
  /// If the named instance already exists, `CreateInstance` returns
  /// `ALREADY_EXISTS`. Immediately upon completion of this request: * The
  /// instance is readable via the API, with all requested attributes but no
  /// allocated resources. Its state is `CREATING`. Until completion of the
  /// returned operation: * Cancelling the operation renders the instance
  /// immediately unreadable via the API. * The instance can be deleted. * All
  /// other attempts to modify the instance are rejected. Upon completion of the
  /// returned operation: * Billing for all successfully-allocated resources
  /// begins (some types may have lower than the requested levels). * Databases
  /// can be created in the instance. * The instance's allocated resource levels
  /// are readable via the API. * The instance's state becomes `READY`. The
  /// returned long-running operation will have a name of the format
  /// `/operations/` and can be used to track creation of the instance. The
  /// metadata field type is CreateInstanceMetadata. The response field type is
  /// Instance, if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project in which to create the
  /// instance. Values are of the form `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    CreateInstanceRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an instance.
  ///
  /// Immediately upon completion of the request: * Billing ceases for all of
  /// the instance's reserved resources. Soon afterward: * The instance and *all
  /// of its databases* immediately and irrevocably disappear from the API. All
  /// data in the databases is permanently deleted.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the instance to be deleted. Values are of
  /// the form `projects//instances/`
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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

  /// Gets information about a particular instance.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested instance. Values are of the
  /// form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [fieldMask] - If field_mask is present, specifies the subset of Instance
  /// fields that should be returned. If absent, all Instance fields are
  /// returned.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Instance].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Instance> get(
    core.String name, {
    core.String? fieldMask,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (fieldMask != null) 'fieldMask': [fieldMask],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Instance.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for an instance resource.
  ///
  /// Returns an empty policy if an instance exists but does not have a policy
  /// set. Authorization requires `spanner.instances.getIamPolicy` on resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being retrieved. The format is `projects//instances/` for instance
  /// resources and `projects//instances//databases/` for database resources.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all instances in the given project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the project for which a list of instances
  /// is requested. Values are of the form `projects/`.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - An expression for filtering the results of the request. Filter
  /// rules are case insensitive. The fields eligible for filtering are: *
  /// `name` * `display_name` * `labels.key` where key is the name of a label
  /// Some examples of using filters are: * `name:*` --> The instance has a
  /// name. * `name:Howl` --> The instance's name contains the string "howl". *
  /// `name:HOWL` --> Equivalent to above. * `NAME:howl` --> Equivalent to
  /// above. * `labels.env:*` --> The instance has the label "env". *
  /// `labels.env:dev` --> The instance has the label "env" and the value of the
  /// label contains the string "dev". * `name:howl labels.env:dev` --> The
  /// instance's name contains "howl" and it has the label "env" with its value
  /// containing "dev".
  ///
  /// [instanceDeadline] - Deadline used while retrieving metadata for
  /// instances. Instances whose metadata cannot be retrieved within this
  /// deadline will be added to unreachable in ListInstancesResponse.
  ///
  /// [pageSize] - Number of instances to be returned in the response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListInstancesResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListInstancesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListInstancesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? instanceDeadline,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (instanceDeadline != null) 'instanceDeadline': [instanceDeadline],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/instances';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListInstancesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates an instance, and begins allocating or releasing resources as
  /// requested.
  ///
  /// The returned long-running operation can be used to track the progress of
  /// updating the instance. If the named instance does not exist, returns
  /// `NOT_FOUND`. Immediately upon completion of this request: * For resource
  /// types for which a decrease in the instance's allocation has been
  /// requested, billing is based on the newly-requested level. Until completion
  /// of the returned operation: * Cancelling the operation sets its metadata's
  /// cancel_time, and begins restoring resources to their pre-request values.
  /// The operation is guaranteed to succeed at undoing all resource changes,
  /// after which point it terminates with a `CANCELLED` status. * All other
  /// attempts to modify the instance are rejected. * Reading the instance via
  /// the API continues to give the pre-request resource levels. Upon completion
  /// of the returned operation: * Billing begins for all successfully-allocated
  /// resources (some types may have lower than the requested levels). * All
  /// newly-reserved resources are available for serving the instance's tables.
  /// * The instance's new resource levels are readable via the API. The
  /// returned long-running operation will have a name of the format
  /// `/operations/` and can be used to track the instance modification. The
  /// metadata field type is UpdateInstanceMetadata. The response field type is
  /// Instance, if successful. Authorization requires `spanner.instances.update`
  /// permission on the resource name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. A unique identifier for the instance, which cannot be
  /// changed after the instance is created. Values are of the form
  /// `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be
  /// between 2 and 64 characters in length.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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
    UpdateInstanceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on an instance resource.
  ///
  /// Replaces any existing policy. Authorization requires
  /// `spanner.instances.setIamPolicy` on resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being set. The format is `projects//instances/` for instance resources and
  /// `projects//instances//databases/` for databases resources.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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

  /// Returns permissions that the caller has on the specified instance
  /// resource.
  ///
  /// Attempting this RPC on a non-existent Cloud Spanner instance resource will
  /// result in a NOT_FOUND error if the user has `spanner.instances.list`
  /// permission on the containing Google Cloud Project. Otherwise returns an
  /// empty set of permissions.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which permissions
  /// are being tested. The format is `projects//instances/` for instance
  /// resources and `projects//instances//databases/` for database resources.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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

class ProjectsInstancesBackupOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesBackupOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists the backup long-running operations in the given instance.
  ///
  /// A backup operation has a name of the form
  /// `projects//instances//backups//operations/`. The long-running operation
  /// metadata field type `metadata.type_url` describes the type of the
  /// metadata. Operations returned include those that have
  /// completed/failed/canceled within the last 7 days, and pending operations.
  /// Operations returned are ordered by
  /// `operation.metadata.value.progress.start_time` in descending order
  /// starting from the most recently started operation.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The instance of the backup operations. Values are of
  /// the form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [filter] - An expression that filters the list of returned backup
  /// operations. A filter expression consists of a field name, a comparison
  /// operator, and a value for filtering. The value must be a string, a number,
  /// or a boolean. The comparison operator must be one of: `<`, `>`, `<=`,
  /// `>=`, `!=`, `=`, or `:`. Colon `:` is the contains operator. Filter rules
  /// are not case sensitive. The following fields in the operation are eligible
  /// for filtering: * `name` - The name of the long-running operation * `done`
  /// - False if the operation is in progress, else true. * `metadata.@type` -
  /// the type of metadata. For example, the type string for
  /// CreateBackupMetadata is
  /// `type.googleapis.com/google.spanner.admin.database.v1.CreateBackupMetadata`.
  /// * `metadata.` - any field in metadata.value. * `error` - Error associated
  /// with the long-running operation. * `response.@type` - the type of
  /// response. * `response.` - any field in response.value. You can combine
  /// multiple expressions by enclosing each expression in parentheses. By
  /// default, expressions are combined with AND logic, but you can specify AND,
  /// OR, and NOT logic explicitly. Here are a few examples: * `done:true` - The
  /// operation is complete. * `metadata.database:prod` - The database the
  /// backup was taken from has a name containing the string "prod". *
  /// `(metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.CreateBackupMetadata)
  /// AND` \ `(metadata.name:howl) AND` \ `(metadata.progress.start_time <
  /// \"2018-03-28T14:50:00Z\") AND` \ `(error:*)` - Returns operations where: *
  /// The operation's metadata type is CreateBackupMetadata. * The backup name
  /// contains the string "howl". * The operation started before
  /// 2018-03-28T14:50:00Z. * The operation resulted in an error.
  ///
  /// [pageSize] - Number of operations to be returned in the response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListBackupOperationsResponse to the same `parent` and with
  /// the same `filter`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListBackupOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListBackupOperationsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backupOperations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBackupOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesBackupsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesBackupsOperationsResource get operations =>
      ProjectsInstancesBackupsOperationsResource(_requester);

  ProjectsInstancesBackupsResource(commons.ApiRequester client)
      : _requester = client;

  /// Starts creating a new Cloud Spanner Backup.
  ///
  /// The returned backup long-running operation will have a name of the format
  /// `projects//instances//backups//operations/` and can be used to track
  /// creation of the backup. The metadata field type is CreateBackupMetadata.
  /// The response field type is Backup, if successful. Cancelling the returned
  /// operation will stop the creation and delete the backup. There can be only
  /// one pending backup creation per database. Backup creation of different
  /// databases can run concurrently.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the instance in which the backup will be
  /// created. This must be the same instance that contains the database the
  /// backup will be created from. The backup will be stored in the location(s)
  /// specified in the instance configuration of this instance. Values are of
  /// the form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [backupId] - Required. The id of the backup to be created. The `backup_id`
  /// appended to `parent` forms the full backup name of the form
  /// `projects//instances//backups/`.
  ///
  /// [encryptionConfig_encryptionType] - Required. The encryption type of the
  /// backup.
  /// Possible string values are:
  /// - "ENCRYPTION_TYPE_UNSPECIFIED" : Unspecified. Do not use.
  /// - "USE_DATABASE_ENCRYPTION" : Use the same encryption configuration as the
  /// database. This is the default option when encryption_config is empty. For
  /// example, if the database is using `Customer_Managed_Encryption`, the
  /// backup will be using the same Cloud KMS key as the database.
  /// - "GOOGLE_DEFAULT_ENCRYPTION" : Use Google default encryption.
  /// - "CUSTOMER_MANAGED_ENCRYPTION" : Use customer managed encryption. If
  /// specified, `kms_key_name` must contain a valid Cloud KMS key.
  ///
  /// [encryptionConfig_kmsKeyName] - Optional. The Cloud KMS key that will be
  /// used to protect the backup. This field should be set only when
  /// encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form
  /// `projects//locations//keyRings//cryptoKeys/`.
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
    core.String? encryptionConfig_encryptionType,
    core.String? encryptionConfig_kmsKeyName,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (backupId != null) 'backupId': [backupId],
      if (encryptionConfig_encryptionType != null)
        'encryptionConfig.encryptionType': [encryptionConfig_encryptionType],
      if (encryptionConfig_kmsKeyName != null)
        'encryptionConfig.kmsKeyName': [encryptionConfig_kmsKeyName],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a pending or completed Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup to delete. Values are of the form
  /// `projects//instances//backups/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+$`.
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

  /// Gets metadata on a pending or completed Backup.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the backup. Values are of the form
  /// `projects//instances//backups/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+$`.
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

  /// Gets the access control policy for a database or backup resource.
  ///
  /// Returns an empty policy if a database or backup exists but does not have a
  /// policy set. Authorization requires `spanner.databases.getIamPolicy`
  /// permission on resource. For backups, authorization requires
  /// `spanner.backups.getIamPolicy` permission on resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being retrieved. The format is `projects//instances/` for instance
  /// resources and `projects//instances//databases/` for database resources.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists completed and pending backups.
  ///
  /// Backups returned are ordered by `create_time` in descending order,
  /// starting from the most recent `create_time`.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The instance to list backups from. Values are of the
  /// form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [filter] - An expression that filters the list of returned backups. A
  /// filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string, a number, or a boolean.
  /// The comparison operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`,
  /// or `:`. Colon `:` is the contains operator. Filter rules are not case
  /// sensitive. The following fields in the Backup are eligible for filtering:
  /// * `name` * `database` * `state` * `create_time` (and values are of the
  /// format YYYY-MM-DDTHH:MM:SSZ) * `expire_time` (and values are of the format
  /// YYYY-MM-DDTHH:MM:SSZ) * `version_time` (and values are of the format
  /// YYYY-MM-DDTHH:MM:SSZ) * `size_bytes` You can combine multiple expressions
  /// by enclosing each expression in parentheses. By default, expressions are
  /// combined with AND logic, but you can specify AND, OR, and NOT logic
  /// explicitly. Here are a few examples: * `name:Howl` - The backup's name
  /// contains the string "howl". * `database:prod` - The database's name
  /// contains the string "prod". * `state:CREATING` - The backup is pending
  /// creation. * `state:READY` - The backup is fully created and ready for use.
  /// * `(name:howl) AND (create_time < \"2018-03-28T14:50:00Z\")` - The backup
  /// name contains the string "howl" and `create_time` of the backup is before
  /// 2018-03-28T14:50:00Z. * `expire_time < \"2018-03-28T14:50:00Z\"` - The
  /// backup `expire_time` is before 2018-03-28T14:50:00Z. * `size_bytes >
  /// 10000000000` - The backup's size is greater than 10GB
  ///
  /// [pageSize] - Number of backups to be returned in the response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListBackupsResponse to the same `parent` and with the same
  /// `filter`.
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/backups';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListBackupsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates a pending or completed Backup.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only for the CreateBackup operation. Required for the
  /// UpdateBackup operation. A globally unique identifier for the backup which
  /// cannot be changed. Values are of the form
  /// `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name
  /// must be between 2 and 60 characters in length. The backup is stored in the
  /// location(s) specified in the instance configuration of the instance
  /// containing the backup, identified by the prefix of the backup name of the
  /// form `projects//instances/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+$`.
  ///
  /// [updateMask] - Required. A mask specifying which fields (e.g.
  /// `expire_time`) in the Backup resource should be updated. This mask is
  /// relative to the Backup resource, not to the request message. The field
  /// mask must always be specified; this prevents any future fields from being
  /// erased accidentally by clients that do not know about them.
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
  async.Future<Backup> patch(
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
    return Backup.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on a database or backup resource.
  ///
  /// Replaces any existing policy. Authorization requires
  /// `spanner.databases.setIamPolicy` permission on resource. For backups,
  /// authorization requires `spanner.backups.setIamPolicy` permission on
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being set. The format is `projects//instances/` for instance resources and
  /// `projects//instances//databases/` for databases resources.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+$`.
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

  /// Returns permissions that the caller has on the specified database or
  /// backup resource.
  ///
  /// Attempting this RPC on a non-existent Cloud Spanner database will result
  /// in a NOT_FOUND error if the user has `spanner.databases.list` permission
  /// on the containing Cloud Spanner instance. Otherwise returns an empty set
  /// of permissions. Calling this method on a backup that does not exist will
  /// result in a NOT_FOUND error if the user has `spanner.backups.list`
  /// permission on the containing instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which permissions
  /// are being tested. The format is `projects//instances/` for instance
  /// resources and `projects//instances//databases/` for database resources.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+$`.
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

class ProjectsInstancesBackupsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesBackupsOperationsResource(commons.ApiRequester client)
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
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+/operations/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+/operations/\[^/\]+$`.
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+/operations/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/backups/\[^/\]+/operations$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
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
}

class ProjectsInstancesDatabaseOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesDatabaseOperationsResource(commons.ApiRequester client)
      : _requester = client;

  /// Lists database longrunning-operations.
  ///
  /// A database operation has a name of the form
  /// `projects//instances//databases//operations/`. The long-running operation
  /// metadata field type `metadata.type_url` describes the type of the
  /// metadata. Operations returned include those that have
  /// completed/failed/canceled within the last 7 days, and pending operations.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The instance of the database operations. Values are
  /// of the form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [filter] - An expression that filters the list of returned operations. A
  /// filter expression consists of a field name, a comparison operator, and a
  /// value for filtering. The value must be a string, a number, or a boolean.
  /// The comparison operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`,
  /// or `:`. Colon `:` is the contains operator. Filter rules are not case
  /// sensitive. The following fields in the Operation are eligible for
  /// filtering: * `name` - The name of the long-running operation * `done` -
  /// False if the operation is in progress, else true. * `metadata.@type` - the
  /// type of metadata. For example, the type string for RestoreDatabaseMetadata
  /// is
  /// `type.googleapis.com/google.spanner.admin.database.v1.RestoreDatabaseMetadata`.
  /// * `metadata.` - any field in metadata.value. * `error` - Error associated
  /// with the long-running operation. * `response.@type` - the type of
  /// response. * `response.` - any field in response.value. You can combine
  /// multiple expressions by enclosing each expression in parentheses. By
  /// default, expressions are combined with AND logic. However, you can specify
  /// AND, OR, and NOT logic explicitly. Here are a few examples: * `done:true`
  /// - The operation is complete. *
  /// `(metadata.@type=type.googleapis.com/google.spanner.admin.database.v1.RestoreDatabaseMetadata)
  /// AND` \ `(metadata.source_type:BACKUP) AND` \
  /// `(metadata.backup_info.backup:backup_howl) AND` \
  /// `(metadata.name:restored_howl) AND` \ `(metadata.progress.start_time <
  /// \"2018-03-28T14:50:00Z\") AND` \ `(error:*)` - Return operations where: *
  /// The operation's metadata type is RestoreDatabaseMetadata. * The database
  /// is restored from a backup. * The backup name contains "backup_howl". * The
  /// restored database's name contains "restored_howl". * The operation started
  /// before 2018-03-28T14:50:00Z. * The operation resulted in an error.
  ///
  /// [pageSize] - Number of operations to be returned in the response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListDatabaseOperationsResponse to the same `parent` and
  /// with the same `filter`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListDatabaseOperationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListDatabaseOperationsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/databaseOperations';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDatabaseOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesDatabasesOperationsResource get operations =>
      ProjectsInstancesDatabasesOperationsResource(_requester);
  ProjectsInstancesDatabasesSessionsResource get sessions =>
      ProjectsInstancesDatabasesSessionsResource(_requester);

  ProjectsInstancesDatabasesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Cloud Spanner database and starts to prepare it for serving.
  ///
  /// The returned long-running operation will have a name of the format
  /// `/operations/` and can be used to track preparation of the database. The
  /// metadata field type is CreateDatabaseMetadata. The response field type is
  /// Database, if successful.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the instance that will serve the new
  /// database. Values are of the form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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
    CreateDatabaseRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Drops (aka deletes) a Cloud Spanner database.
  ///
  /// Completed backups for the database will be retained according to their
  /// `expire_time`.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database to be dropped.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<Empty> dropDatabase(
    core.String database, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$database');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the state of a Cloud Spanner database.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the requested database. Values are of the
  /// form `projects//instances//databases/`.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<Database> get(
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
    return Database.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Returns the schema of a Cloud Spanner database as a list of formatted DDL
  /// statements.
  ///
  /// This method does not show pending schema updates, those may be queried
  /// using the Operations API.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database whose schema we wish to get. Values
  /// are of the form `projects//instances//databases/`
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetDatabaseDdlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetDatabaseDdlResponse> getDdl(
    core.String database, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$database') + '/ddl';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return GetDatabaseDdlResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a database or backup resource.
  ///
  /// Returns an empty policy if a database or backup exists but does not have a
  /// policy set. Authorization requires `spanner.databases.getIamPolicy`
  /// permission on resource. For backups, authorization requires
  /// `spanner.backups.getIamPolicy` permission on resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being retrieved. The format is `projects//instances/` for instance
  /// resources and `projects//instances//databases/` for database resources.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
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
    GetIamPolicyRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Policy.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Request a specific scan with Database-specific data for Cloud Key
  /// Visualizer.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The unique name of the scan containing the requested
  /// information, specific to the Database service implementing this interface.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [endTime] - The upper bound for the time range to retrieve Scan data for.
  ///
  /// [startTime] - These fields restrict the Database-specific information
  /// returned in the `Scan.data` field. If a `View` is provided that does not
  /// include the `Scan.data` field, these are ignored. This range of time must
  /// be entirely contained within the defined time range of the targeted scan.
  /// The lower bound for the time range to retrieve Scan data for.
  ///
  /// [view] - Specifies which parts of the Scan should be returned in the
  /// response. Note, if left unspecified, the FULL view is assumed.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Not specified, equivalent to SUMMARY.
  /// - "SUMMARY" : Server responses only include `name`, `details`,
  /// `start_time` and `end_time`. The default value. Note, the ListScans method
  /// may only use this view type, others view types are not supported.
  /// - "FULL" : Full representation of the scan is returned in the server
  /// response, including `data`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Scan].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Scan> getScans(
    core.String name, {
    core.String? endTime,
    core.String? startTime,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (endTime != null) 'endTime': [endTime],
      if (startTime != null) 'startTime': [startTime],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + '/scans';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Scan.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Cloud Spanner databases.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The instance whose databases should be listed. Values
  /// are of the form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
  ///
  /// [pageSize] - Number of databases to be returned in the response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListDatabasesResponse.
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
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListDatabasesResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Create a new database by restoring from a completed backup.
  ///
  /// The new database must be in the same project and in an instance with the
  /// same instance configuration as the instance containing the backup. The
  /// returned database long-running operation has a name of the format
  /// `projects//instances//databases//operations/`, and can be used to track
  /// the progress of the operation, and to cancel it. The metadata field type
  /// is RestoreDatabaseMetadata. The response type is Database, if successful.
  /// Cancelling the returned operation will stop the restore and delete the
  /// database. There can be only one database being restored into an instance
  /// at a time. Once the restore operation completes, a new restore operation
  /// can be initiated, without waiting for the optimize operation associated
  /// with the first restore to complete.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the instance in which to create the
  /// restored database. This instance must be in the same project and have the
  /// same instance configuration as the instance containing the source backup.
  /// Values are of the form `projects//instances/`.
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+$`.
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
    RestoreDatabaseRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/databases:restore';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy on a database or backup resource.
  ///
  /// Replaces any existing policy. Authorization requires
  /// `spanner.databases.setIamPolicy` permission on resource. For backups,
  /// authorization requires `spanner.backups.setIamPolicy` permission on
  /// resource.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which the policy is
  /// being set. The format is `projects//instances/` for instance resources and
  /// `projects//instances//databases/` for databases resources.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
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

  /// Returns permissions that the caller has on the specified database or
  /// backup resource.
  ///
  /// Attempting this RPC on a non-existent Cloud Spanner database will result
  /// in a NOT_FOUND error if the user has `spanner.databases.list` permission
  /// on the containing Cloud Spanner instance. Otherwise returns an empty set
  /// of permissions. Calling this method on a backup that does not exist will
  /// result in a NOT_FOUND error if the user has `spanner.backups.list`
  /// permission on the containing instance.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The Cloud Spanner resource for which permissions
  /// are being tested. The format is `projects//instances/` for instance
  /// resources and `projects//instances//databases/` for database resources.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
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

  /// Updates the schema of a Cloud Spanner database by
  /// creating/altering/dropping tables, columns, indexes, etc.
  ///
  /// The returned long-running operation will have a name of the format
  /// `/operations/` and can be used to track execution of the schema change(s).
  /// The metadata field type is UpdateDatabaseDdlMetadata. The operation has no
  /// response.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database to update.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<Operation> updateDdl(
    UpdateDatabaseDdlRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$database') + '/ddl';

    final _response = await _requester.request(
      _url,
      'PATCH',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesDatabasesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesDatabasesOperationsResource(commons.ApiRequester client)
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
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/operations/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/operations/\[^/\]+$`.
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/operations/\[^/\]+$`.
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
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/operations$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
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
}

class ProjectsInstancesDatabasesSessionsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesDatabasesSessionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates multiple new sessions.
  ///
  /// This API can be used to initialize a session cache on the clients. See
  /// https://goo.gl/TgSFN2 for best practices on session cache management.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database in which the new sessions are created.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [BatchCreateSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<BatchCreateSessionsResponse> batchCreate(
    BatchCreateSessionsRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$database') + '/sessions:batchCreate';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return BatchCreateSessionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Begins a new transaction.
  ///
  /// This step can often be skipped: Read, ExecuteSql and Commit can begin a
  /// new transaction as a side-effect.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the transaction runs.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Transaction].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Transaction> beginTransaction(
    BeginTransactionRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':beginTransaction';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Transaction.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Commits a transaction.
  ///
  /// The request includes the mutations to be applied to rows in the database.
  /// `Commit` might return an `ABORTED` error. This can occur at any time;
  /// commonly, the cause is conflicts with concurrent transactions. However, it
  /// can also happen for a variety of other reasons. If `Commit` returns
  /// `ABORTED`, the caller should re-attempt the transaction from the
  /// beginning, re-using the same session. On very rare occasions, `Commit`
  /// might return `UNKNOWN`. This can happen, for example, if the client job
  /// experiences a 1+ hour networking failure. At that point, Cloud Spanner has
  /// lost track of the transaction outcome and we recommend that you perform
  /// another read from the database to see the state of things as they are now.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the transaction to be committed
  /// is running.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CommitResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CommitResponse> commit(
    CommitRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':commit';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return CommitResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new session.
  ///
  /// A session can be used to perform transactions that read and/or modify data
  /// in a Cloud Spanner database. Sessions are meant to be reused for many
  /// consecutive transactions. Sessions can only execute one transaction at a
  /// time. To execute multiple concurrent read-write/write-only transactions,
  /// create multiple sessions. Note that standalone reads and queries use a
  /// transaction internally, and count toward the one transaction limit. Active
  /// sessions use additional server resources, so it is a good idea to delete
  /// idle and unneeded sessions. Aside from explicit deletes, Cloud Spanner may
  /// delete sessions for which no operations are sent for more than an hour. If
  /// a session is deleted, requests to it return `NOT_FOUND`. Idle sessions can
  /// be kept alive by sending a trivial SQL query periodically, e.g., `"SELECT
  /// 1"`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database in which the new session is created.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Session> create(
    CreateSessionRequest request,
    core.String database, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$database') + '/sessions';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Session.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Ends a session, releasing server resources associated with it.
  ///
  /// This will asynchronously trigger cancellation of any operations that are
  /// running with this session.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
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

  /// Executes a batch of SQL DML statements.
  ///
  /// This method allows many statements to be run with lower latency than
  /// submitting them sequentially with ExecuteSql. Statements are executed in
  /// sequential order. A request can succeed even if a statement fails. The
  /// ExecuteBatchDmlResponse.status field in the response provides information
  /// about the statement that failed. Clients must inspect this field to
  /// determine whether an error occurred. Execution stops after the first
  /// failed statement; the remaining statements are not executed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the DML statements should be
  /// performed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecuteBatchDmlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecuteBatchDmlResponse> executeBatchDml(
    ExecuteBatchDmlRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':executeBatchDml';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ExecuteBatchDmlResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Executes an SQL statement, returning all results in a single reply.
  ///
  /// This method cannot be used to return a result set larger than 10 MiB; if
  /// the query yields more data than that, the query fails with a
  /// `FAILED_PRECONDITION` error. Operations inside read-write transactions
  /// might return `ABORTED`. If this occurs, the application should restart the
  /// transaction from the beginning. See Transaction for more details. Larger
  /// result sets can be fetched in streaming fashion by calling
  /// ExecuteStreamingSql instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the SQL query should be
  /// performed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResultSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResultSet> executeSql(
    ExecuteSqlRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':executeSql';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ResultSet.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Like ExecuteSql, except returns the result set as a stream.
  ///
  /// Unlike ExecuteSql, there is no limit on the size of the returned result
  /// set. However, no individual row in the result set can exceed 100 MiB, and
  /// no column value can exceed 10 MiB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the SQL query should be
  /// performed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartialResultSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartialResultSet> executeStreamingSql(
    ExecuteSqlRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url =
        'v1/' + core.Uri.encodeFull('$session') + ':executeStreamingSql';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PartialResultSet.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets a session.
  ///
  /// Returns `NOT_FOUND` if the session does not exist. This is mainly useful
  /// for determining whether a session is still alive.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the session to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Session].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Session> get(
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
    return Session.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists all sessions in a given database.
  ///
  /// Request parameters:
  ///
  /// [database] - Required. The database in which to list sessions.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [filter] - An expression for filtering the results of the request. Filter
  /// rules are case insensitive. The fields eligible for filtering are: *
  /// `labels.key` where key is the name of a label Some examples of using
  /// filters are: * `labels.env:*` --> The session has the label "env". *
  /// `labels.env:dev` --> The session has the label "env" and the value of the
  /// label contains the string "dev".
  ///
  /// [pageSize] - Number of sessions to be returned in the response. If 0 or
  /// less, defaults to the server's maximum allowed page size.
  ///
  /// [pageToken] - If non-empty, `page_token` should contain a next_page_token
  /// from a previous ListSessionsResponse.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSessionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSessionsResponse> list(
    core.String database, {
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

    final _url = 'v1/' + core.Uri.encodeFull('$database') + '/sessions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListSessionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a set of partition tokens that can be used to execute a query
  /// operation in parallel.
  ///
  /// Each of the returned partition tokens can be used by ExecuteStreamingSql
  /// to specify a subset of the query result to read. The same session and
  /// read-only transaction must be used by the PartitionQueryRequest used to
  /// create the partition tokens and the ExecuteSqlRequests that use the
  /// partition tokens. Partition tokens become invalid when the session used to
  /// create them is deleted, is idle for too long, begins a new transaction, or
  /// becomes too old. When any of these happen, it is not possible to resume
  /// the query, and the whole operation must be restarted from the beginning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session used to create the partitions.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartitionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartitionResponse> partitionQuery(
    PartitionQueryRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':partitionQuery';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PartitionResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Creates a set of partition tokens that can be used to execute a read
  /// operation in parallel.
  ///
  /// Each of the returned partition tokens can be used by StreamingRead to
  /// specify a subset of the read result to read. The same session and
  /// read-only transaction must be used by the PartitionReadRequest used to
  /// create the partition tokens and the ReadRequests that use the partition
  /// tokens. There are no ordering guarantees on rows returned among the
  /// returned partition tokens, or even within each individual StreamingRead
  /// call issued with a partition_token. Partition tokens become invalid when
  /// the session used to create them is deleted, is idle for too long, begins a
  /// new transaction, or becomes too old. When any of these happen, it is not
  /// possible to resume the read, and the whole operation must be restarted
  /// from the beginning.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session used to create the partitions.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartitionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartitionResponse> partitionRead(
    PartitionReadRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':partitionRead';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PartitionResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Reads rows from the database using key lookups and scans, as a simple
  /// key/value style alternative to ExecuteSql.
  ///
  /// This method cannot be used to return a result set larger than 10 MiB; if
  /// the read matches more data than that, the read fails with a
  /// `FAILED_PRECONDITION` error. Reads inside read-write transactions might
  /// return `ABORTED`. If this occurs, the application should restart the
  /// transaction from the beginning. See Transaction for more details. Larger
  /// result sets can be yielded in streaming fashion by calling StreamingRead
  /// instead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the read should be performed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ResultSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ResultSet> read(
    ReadRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':read';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return ResultSet.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Rolls back a transaction, releasing any locks it holds.
  ///
  /// It is a good idea to call this for any transaction that includes one or
  /// more Read or ExecuteSql requests and ultimately decides not to commit.
  /// `Rollback` returns `OK` if it successfully aborts the transaction, the
  /// transaction was already aborted, or the transaction is not found.
  /// `Rollback` never returns `ABORTED`.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the transaction to roll back is
  /// running.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
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
  async.Future<Empty> rollback(
    RollbackRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':rollback';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Like Read, except returns the result set as a stream.
  ///
  /// Unlike Read, there is no limit on the size of the returned result set.
  /// However, no individual row in the result set can exceed 100 MiB, and no
  /// column value can exceed 10 MiB.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [session] - Required. The session in which the read should be performed.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/databases/\[^/\]+/sessions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PartialResultSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PartialResultSet> streamingRead(
    ReadRequest request,
    core.String session, {
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$session') + ':streamingRead';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return PartialResultSet.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsInstancesOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsInstancesOperationsResource(commons.ApiRequester client)
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
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource to be cancelled.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/operations/\[^/\]+$`.
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
    core.String name, {
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name') + ':cancel';

    final _response = await _requester.request(
      _url,
      'POST',
      queryParams: _queryParams,
    );
    return Empty.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/instances/\[^/\]+/operations/\[^/\]+$`.
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

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/instances/\[^/\]+/operations/\[^/\]+$`.
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
  /// Value must have pattern `^projects/\[^/\]+/instances/\[^/\]+/operations$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
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
}

class ScansResource {
  final commons.ApiRequester _requester;

  ScansResource(commons.ApiRequester client) : _requester = client;

  /// Return available scans given a Database-specific resource name.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The unique name of the parent resource, specific to
  /// the Database service implementing this interface.
  /// Value must have pattern `^scans$`.
  ///
  /// [filter] - A filter expression to restrict the results based on
  /// information present in the available Scan collection. The filter applies
  /// to all fields within the Scan message except for `data`.
  ///
  /// [pageSize] - The maximum number of items to return.
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [view] - Specifies which parts of the Scan should be returned in the
  /// response. Note, only the SUMMARY view (the default) is currently supported
  /// for ListScans.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED" : Not specified, equivalent to SUMMARY.
  /// - "SUMMARY" : Server responses only include `name`, `details`,
  /// `start_time` and `end_time`. The default value. Note, the ListScans method
  /// may only use this view type, others view types are not supported.
  /// - "FULL" : Full representation of the scan is returned in the server
  /// response, including `data`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListScansResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListScansResponse> list(
    core.String parent, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListScansResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

/// A backup of a Cloud Spanner database.
class Backup {
  /// The time the CreateBackup request is received.
  ///
  /// If the request does not specify `version_time`, the `version_time` of the
  /// backup will be equivalent to the `create_time`.
  ///
  /// Output only.
  core.String? createTime;

  /// Required for the CreateBackup operation.
  ///
  /// Name of the database from which this backup was created. This needs to be
  /// in the same instance as the backup. Values are of the form
  /// `projects//instances//databases/`.
  core.String? database;

  /// The encryption information for the backup.
  ///
  /// Output only.
  EncryptionInfo? encryptionInfo;

  /// Required for the CreateBackup operation.
  ///
  /// The expiration time of the backup, with microseconds granularity that must
  /// be at least 6 hours and at most 366 days from the time the CreateBackup
  /// request is processed. Once the `expire_time` has passed, the backup is
  /// eligible to be automatically deleted by Cloud Spanner to free the
  /// resources used by the backup.
  core.String? expireTime;

  /// Output only for the CreateBackup operation.
  ///
  /// Required for the UpdateBackup operation. A globally unique identifier for
  /// the backup which cannot be changed. Values are of the form
  /// `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name
  /// must be between 2 and 60 characters in length. The backup is stored in the
  /// location(s) specified in the instance configuration of the instance
  /// containing the backup, identified by the prefix of the backup name of the
  /// form `projects//instances/`.
  core.String? name;

  /// The names of the restored databases that reference the backup.
  ///
  /// The database names are of the form `projects//instances//databases/`.
  /// Referencing databases may exist in different instances. The existence of
  /// any referencing database prevents the backup from being deleted. When a
  /// restored database from the backup enters the `READY` state, the reference
  /// to the backup is removed.
  ///
  /// Output only.
  core.List<core.String>? referencingDatabases;

  /// Size of the backup in bytes.
  ///
  /// Output only.
  core.String? sizeBytes;

  /// The current state of the backup.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "CREATING" : The pending backup is still being created. Operations on
  /// the backup may fail with `FAILED_PRECONDITION` in this state.
  /// - "READY" : The backup is complete and ready for use.
  core.String? state;

  /// The backup will contain an externally consistent copy of the database at
  /// the timestamp specified by `version_time`.
  ///
  /// If `version_time` is not specified, the system will set `version_time` to
  /// the `create_time` of the backup.
  core.String? versionTime;

  Backup({
    this.createTime,
    this.database,
    this.encryptionInfo,
    this.expireTime,
    this.name,
    this.referencingDatabases,
    this.sizeBytes,
    this.state,
    this.versionTime,
  });

  Backup.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          database: _json.containsKey('database')
              ? _json['database'] as core.String
              : null,
          encryptionInfo: _json.containsKey('encryptionInfo')
              ? EncryptionInfo.fromJson(_json['encryptionInfo']
                  as core.Map<core.String, core.dynamic>)
              : null,
          expireTime: _json.containsKey('expireTime')
              ? _json['expireTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          referencingDatabases: _json.containsKey('referencingDatabases')
              ? (_json['referencingDatabases'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          sizeBytes: _json.containsKey('sizeBytes')
              ? _json['sizeBytes'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          versionTime: _json.containsKey('versionTime')
              ? _json['versionTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (database != null) 'database': database!,
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (expireTime != null) 'expireTime': expireTime!,
        if (name != null) 'name': name!,
        if (referencingDatabases != null)
          'referencingDatabases': referencingDatabases!,
        if (sizeBytes != null) 'sizeBytes': sizeBytes!,
        if (state != null) 'state': state!,
        if (versionTime != null) 'versionTime': versionTime!,
      };
}

/// Information about a backup.
class BackupInfo {
  /// Name of the backup.
  core.String? backup;

  /// The time the CreateBackup request was received.
  core.String? createTime;

  /// Name of the database the backup was created from.
  core.String? sourceDatabase;

  /// The backup contains an externally consistent copy of `source_database` at
  /// the timestamp specified by `version_time`.
  ///
  /// If the CreateBackup request did not specify `version_time`, the
  /// `version_time` of the backup is equivalent to the `create_time`.
  core.String? versionTime;

  BackupInfo({
    this.backup,
    this.createTime,
    this.sourceDatabase,
    this.versionTime,
  });

  BackupInfo.fromJson(core.Map _json)
      : this(
          backup: _json.containsKey('backup')
              ? _json['backup'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          sourceDatabase: _json.containsKey('sourceDatabase')
              ? _json['sourceDatabase'] as core.String
              : null,
          versionTime: _json.containsKey('versionTime')
              ? _json['versionTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (createTime != null) 'createTime': createTime!,
        if (sourceDatabase != null) 'sourceDatabase': sourceDatabase!,
        if (versionTime != null) 'versionTime': versionTime!,
      };
}

/// The request for BatchCreateSessions.
class BatchCreateSessionsRequest {
  /// The number of sessions to be created in this batch call.
  ///
  /// The API may return fewer than the requested number of sessions. If a
  /// specific number of sessions are desired, the client can make additional
  /// calls to BatchCreateSessions (adjusting session_count as necessary).
  ///
  /// Required.
  core.int? sessionCount;

  /// Parameters to be applied to each created session.
  Session? sessionTemplate;

  BatchCreateSessionsRequest({
    this.sessionCount,
    this.sessionTemplate,
  });

  BatchCreateSessionsRequest.fromJson(core.Map _json)
      : this(
          sessionCount: _json.containsKey('sessionCount')
              ? _json['sessionCount'] as core.int
              : null,
          sessionTemplate: _json.containsKey('sessionTemplate')
              ? Session.fromJson(_json['sessionTemplate']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sessionCount != null) 'sessionCount': sessionCount!,
        if (sessionTemplate != null) 'sessionTemplate': sessionTemplate!,
      };
}

/// The response for BatchCreateSessions.
class BatchCreateSessionsResponse {
  /// The freshly created sessions.
  core.List<Session>? session;

  BatchCreateSessionsResponse({
    this.session,
  });

  BatchCreateSessionsResponse.fromJson(core.Map _json)
      : this(
          session: _json.containsKey('session')
              ? (_json['session'] as core.List)
                  .map((value) => Session.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (session != null) 'session': session!,
      };
}

/// The request for BeginTransaction.
class BeginTransactionRequest {
  /// Options for the new transaction.
  ///
  /// Required.
  TransactionOptions? options;

  /// Common options for this request.
  ///
  /// Priority is ignored for this request. Setting the priority in this
  /// request_options struct will not do anything. To set the priority for a
  /// transaction, set it on the reads and writes that are part of this
  /// transaction instead.
  RequestOptions? requestOptions;

  BeginTransactionRequest({
    this.options,
    this.requestOptions,
  });

  BeginTransactionRequest.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? TransactionOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
          requestOptions: _json.containsKey('requestOptions')
              ? RequestOptions.fromJson(_json['requestOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
        if (requestOptions != null) 'requestOptions': requestOptions!,
      };
}

/// Associates `members` with a `role`.
class Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the members in this binding.
  /// To learn which resources support conditions in their IAM policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  Expr? condition;

  /// Specifies the identities requesting access for a Cloud Platform resource.
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

  /// Role that is assigned to `members`.
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

/// Metadata associated with a parent-child relationship appearing in a
/// PlanNode.
class ChildLink {
  /// The node to which the link points.
  core.int? childIndex;

  /// The type of the link.
  ///
  /// For example, in Hash Joins this could be used to distinguish between the
  /// build child and the probe child, or in the case of the child being an
  /// output variable, to represent the tag associated with the output variable.
  core.String? type;

  /// Only present if the child node is SCALAR and corresponds to an output
  /// variable of the parent node.
  ///
  /// The field carries the name of the output variable. For example, a
  /// `TableScan` operator that reads rows from a table will have child links to
  /// the `SCALAR` nodes representing the output variables created for each
  /// column that is read by the operator. The corresponding `variable` fields
  /// will be set to the variable names assigned to the columns.
  core.String? variable;

  ChildLink({
    this.childIndex,
    this.type,
    this.variable,
  });

  ChildLink.fromJson(core.Map _json)
      : this(
          childIndex: _json.containsKey('childIndex')
              ? _json['childIndex'] as core.int
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
          variable: _json.containsKey('variable')
              ? _json['variable'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childIndex != null) 'childIndex': childIndex!,
        if (type != null) 'type': type!,
        if (variable != null) 'variable': variable!,
      };
}

/// The request for Commit.
class CommitRequest {
  /// The mutations to be executed when this transaction commits.
  ///
  /// All mutations are applied atomically, in the order they appear in this
  /// list.
  core.List<Mutation>? mutations;

  /// Common options for this request.
  RequestOptions? requestOptions;

  /// If `true`, then statistics related to the transaction will be included in
  /// the CommitResponse.
  ///
  /// Default value is `false`.
  core.bool? returnCommitStats;

  /// Execute mutations in a temporary transaction.
  ///
  /// Note that unlike commit of a previously-started transaction, commit with a
  /// temporary transaction is non-idempotent. That is, if the `CommitRequest`
  /// is sent to Cloud Spanner more than once (for instance, due to retries in
  /// the application, or in the transport library), it is possible that the
  /// mutations are executed more than once. If this is undesirable, use
  /// BeginTransaction and Commit instead.
  TransactionOptions? singleUseTransaction;

  /// Commit a previously-started transaction.
  core.String? transactionId;
  core.List<core.int> get transactionIdAsBytes =>
      convert.base64.decode(transactionId!);

  set transactionIdAsBytes(core.List<core.int> _bytes) {
    transactionId =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  CommitRequest({
    this.mutations,
    this.requestOptions,
    this.returnCommitStats,
    this.singleUseTransaction,
    this.transactionId,
  });

  CommitRequest.fromJson(core.Map _json)
      : this(
          mutations: _json.containsKey('mutations')
              ? (_json['mutations'] as core.List)
                  .map((value) => Mutation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          requestOptions: _json.containsKey('requestOptions')
              ? RequestOptions.fromJson(_json['requestOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          returnCommitStats: _json.containsKey('returnCommitStats')
              ? _json['returnCommitStats'] as core.bool
              : null,
          singleUseTransaction: _json.containsKey('singleUseTransaction')
              ? TransactionOptions.fromJson(_json['singleUseTransaction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          transactionId: _json.containsKey('transactionId')
              ? _json['transactionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mutations != null) 'mutations': mutations!,
        if (requestOptions != null) 'requestOptions': requestOptions!,
        if (returnCommitStats != null) 'returnCommitStats': returnCommitStats!,
        if (singleUseTransaction != null)
          'singleUseTransaction': singleUseTransaction!,
        if (transactionId != null) 'transactionId': transactionId!,
      };
}

/// The response for Commit.
class CommitResponse {
  /// The statistics about this Commit.
  ///
  /// Not returned by default. For more information, see
  /// CommitRequest.return_commit_stats.
  CommitStats? commitStats;

  /// The Cloud Spanner timestamp at which the transaction committed.
  core.String? commitTimestamp;

  CommitResponse({
    this.commitStats,
    this.commitTimestamp,
  });

  CommitResponse.fromJson(core.Map _json)
      : this(
          commitStats: _json.containsKey('commitStats')
              ? CommitStats.fromJson(
                  _json['commitStats'] as core.Map<core.String, core.dynamic>)
              : null,
          commitTimestamp: _json.containsKey('commitTimestamp')
              ? _json['commitTimestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitStats != null) 'commitStats': commitStats!,
        if (commitTimestamp != null) 'commitTimestamp': commitTimestamp!,
      };
}

/// Additional statistics about a commit.
class CommitStats {
  /// The total number of mutations for the transaction.
  ///
  /// Knowing the `mutation_count` value can help you maximize the number of
  /// mutations in a transaction and minimize the number of API round trips. You
  /// can also monitor this value to prevent transactions from exceeding the
  /// system
  /// [limit](https://cloud.google.com/spanner/quotas#limits_for_creating_reading_updating_and_deleting_data).
  /// If the number of mutations exceeds the limit, the server returns
  /// [INVALID_ARGUMENT](https://cloud.google.com/spanner/docs/reference/rest/v1/Code#ENUM_VALUES.INVALID_ARGUMENT).
  core.String? mutationCount;

  CommitStats({
    this.mutationCount,
  });

  CommitStats.fromJson(core.Map _json)
      : this(
          mutationCount: _json.containsKey('mutationCount')
              ? _json['mutationCount'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mutationCount != null) 'mutationCount': mutationCount!,
      };
}

/// A message representing context for a KeyRangeInfo, including a label, value,
/// unit, and severity.
class ContextValue {
  /// The label for the context value.
  ///
  /// e.g. "latency".
  LocalizedString? label;

  /// The severity of this context.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Required default value.
  /// - "INFO" : Lowest severity level "Info".
  /// - "WARNING" : Middle severity level "Warning".
  /// - "ERROR" : Severity level signaling an error "Error"
  /// - "FATAL" : Severity level signaling a non recoverable error "Fatal"
  core.String? severity;

  /// The unit of the context value.
  core.String? unit;

  /// The value for the context.
  core.double? value;

  ContextValue({
    this.label,
    this.severity,
    this.unit,
    this.value,
  });

  ContextValue.fromJson(core.Map _json)
      : this(
          label: _json.containsKey('label')
              ? LocalizedString.fromJson(
                  _json['label'] as core.Map<core.String, core.dynamic>)
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          unit: _json.containsKey('unit') ? _json['unit'] as core.String : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (label != null) 'label': label!,
        if (severity != null) 'severity': severity!,
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

/// Metadata type for the operation returned by CreateBackup.
class CreateBackupMetadata {
  /// The time at which cancellation of this operation was received.
  ///
  /// Operations.CancelOperation starts asynchronous cancellation on a
  /// long-running operation. The server makes a best effort to cancel the
  /// operation, but success is not guaranteed. Clients can use
  /// Operations.GetOperation or other methods to check whether the cancellation
  /// succeeded or whether the operation completed despite cancellation. On
  /// successful cancellation, the operation is not deleted; instead, it becomes
  /// an operation with an Operation.error value with a google.rpc.Status.code
  /// of 1, corresponding to `Code.CANCELLED`.
  core.String? cancelTime;

  /// The name of the database the backup is created from.
  core.String? database;

  /// The name of the backup being created.
  core.String? name;

  /// The progress of the CreateBackup operation.
  OperationProgress? progress;

  CreateBackupMetadata({
    this.cancelTime,
    this.database,
    this.name,
    this.progress,
  });

  CreateBackupMetadata.fromJson(core.Map _json)
      : this(
          cancelTime: _json.containsKey('cancelTime')
              ? _json['cancelTime'] as core.String
              : null,
          database: _json.containsKey('database')
              ? _json['database'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          progress: _json.containsKey('progress')
              ? OperationProgress.fromJson(
                  _json['progress'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancelTime != null) 'cancelTime': cancelTime!,
        if (database != null) 'database': database!,
        if (name != null) 'name': name!,
        if (progress != null) 'progress': progress!,
      };
}

/// Metadata type for the operation returned by CreateDatabase.
class CreateDatabaseMetadata {
  /// The database being created.
  core.String? database;

  CreateDatabaseMetadata({
    this.database,
  });

  CreateDatabaseMetadata.fromJson(core.Map _json)
      : this(
          database: _json.containsKey('database')
              ? _json['database'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
      };
}

/// The request for CreateDatabase.
class CreateDatabaseRequest {
  /// A \`CREATE DATABASE\` statement, which specifies the ID of the new
  /// database.
  ///
  /// The database ID must conform to the regular expression \`a-z*\[a-z0-9\]\`
  /// and be between 2 and 30 characters in length. If the database ID is a
  /// reserved word or if it contains a hyphen, the database ID must be enclosed
  /// in backticks (\`\` \` \`\`).
  ///
  /// Required.
  core.String? createStatement;

  /// The encryption configuration for the database.
  ///
  /// If this field is not specified, Cloud Spanner will encrypt/decrypt all
  /// data at rest using Google default encryption.
  ///
  /// Optional.
  EncryptionConfig? encryptionConfig;

  /// A list of DDL statements to run inside the newly created database.
  ///
  /// Statements can create tables, indexes, etc. These statements execute
  /// atomically with the creation of the database: if there is an error in any
  /// statement, the database is not created.
  ///
  /// Optional.
  core.List<core.String>? extraStatements;

  CreateDatabaseRequest({
    this.createStatement,
    this.encryptionConfig,
    this.extraStatements,
  });

  CreateDatabaseRequest.fromJson(core.Map _json)
      : this(
          createStatement: _json.containsKey('createStatement')
              ? _json['createStatement'] as core.String
              : null,
          encryptionConfig: _json.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(_json['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          extraStatements: _json.containsKey('extraStatements')
              ? (_json['extraStatements'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createStatement != null) 'createStatement': createStatement!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (extraStatements != null) 'extraStatements': extraStatements!,
      };
}

/// Metadata type for the operation returned by CreateInstance.
class CreateInstanceMetadata {
  /// The time at which this operation was cancelled.
  ///
  /// If set, this operation is in the process of undoing itself (which is
  /// guaranteed to succeed) and cannot be cancelled again.
  core.String? cancelTime;

  /// The time at which this operation failed or was completed successfully.
  core.String? endTime;

  /// The instance being created.
  Instance? instance;

  /// The time at which the CreateInstance request was received.
  core.String? startTime;

  CreateInstanceMetadata({
    this.cancelTime,
    this.endTime,
    this.instance,
    this.startTime,
  });

  CreateInstanceMetadata.fromJson(core.Map _json)
      : this(
          cancelTime: _json.containsKey('cancelTime')
              ? _json['cancelTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          instance: _json.containsKey('instance')
              ? Instance.fromJson(
                  _json['instance'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancelTime != null) 'cancelTime': cancelTime!,
        if (endTime != null) 'endTime': endTime!,
        if (instance != null) 'instance': instance!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// The request for CreateInstance.
class CreateInstanceRequest {
  /// The instance to create.
  ///
  /// The name may be omitted, but if specified must be `/instances/`.
  ///
  /// Required.
  Instance? instance;

  /// The ID of the instance to create.
  ///
  /// Valid identifiers are of the form `a-z*[a-z0-9]` and must be between 2 and
  /// 64 characters in length.
  ///
  /// Required.
  core.String? instanceId;

  CreateInstanceRequest({
    this.instance,
    this.instanceId,
  });

  CreateInstanceRequest.fromJson(core.Map _json)
      : this(
          instance: _json.containsKey('instance')
              ? Instance.fromJson(
                  _json['instance'] as core.Map<core.String, core.dynamic>)
              : null,
          instanceId: _json.containsKey('instanceId')
              ? _json['instanceId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instance != null) 'instance': instance!,
        if (instanceId != null) 'instanceId': instanceId!,
      };
}

/// The request for CreateSession.
class CreateSessionRequest {
  /// The session to create.
  ///
  /// Required.
  Session? session;

  CreateSessionRequest({
    this.session,
  });

  CreateSessionRequest.fromJson(core.Map _json)
      : this(
          session: _json.containsKey('session')
              ? Session.fromJson(
                  _json['session'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (session != null) 'session': session!,
      };
}

/// A Cloud Spanner database.
class Database {
  /// If exists, the time at which the database creation started.
  ///
  /// Output only.
  core.String? createTime;

  /// The read-write region which contains the database's leader replicas.
  ///
  /// This is the same as the value of default_leader database option set using
  /// DatabaseAdmin.CreateDatabase or DatabaseAdmin.UpdateDatabaseDdl. If not
  /// explicitly set, this is empty.
  ///
  /// Output only.
  core.String? defaultLeader;

  /// Earliest timestamp at which older versions of the data can be read.
  ///
  /// This value is continuously updated by Cloud Spanner and becomes stale the
  /// moment it is queried. If you are using this value to recover data, make
  /// sure to account for the time from the moment when the value is queried to
  /// the moment when you initiate the recovery.
  ///
  /// Output only.
  core.String? earliestVersionTime;

  /// For databases that are using customer managed encryption, this field
  /// contains the encryption configuration for the database.
  ///
  /// For databases that are using Google default or other types of encryption,
  /// this field is empty.
  ///
  /// Output only.
  EncryptionConfig? encryptionConfig;

  /// For databases that are using customer managed encryption, this field
  /// contains the encryption information for the database, such as encryption
  /// state and the Cloud KMS key versions that are in use.
  ///
  /// For databases that are using Google default or other types of encryption,
  /// this field is empty. This field is propagated lazily from the backend.
  /// There might be a delay from when a key version is being used and when it
  /// appears in this field.
  ///
  /// Output only.
  core.List<EncryptionInfo>? encryptionInfo;

  /// The name of the database.
  ///
  /// Values are of the form `projects//instances//databases/`, where `` is as
  /// specified in the `CREATE DATABASE` statement. This name can be passed to
  /// other API methods to identify the database.
  ///
  /// Required.
  core.String? name;

  /// Applicable only for restored databases.
  ///
  /// Contains information about the restore source.
  ///
  /// Output only.
  RestoreInfo? restoreInfo;

  /// The current database state.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "CREATING" : The database is still being created. Operations on the
  /// database may fail with `FAILED_PRECONDITION` in this state.
  /// - "READY" : The database is fully created and ready for use.
  /// - "READY_OPTIMIZING" : The database is fully created and ready for use,
  /// but is still being optimized for performance and cannot handle full load.
  /// In this state, the database still references the backup it was restore
  /// from, preventing the backup from being deleted. When optimizations are
  /// complete, the full performance of the database will be restored, and the
  /// database will transition to `READY` state.
  core.String? state;

  /// The period in which Cloud Spanner retains all versions of data for the
  /// database.
  ///
  /// This is the same as the value of version_retention_period database option
  /// set using UpdateDatabaseDdl. Defaults to 1 hour, if not set.
  ///
  /// Output only.
  core.String? versionRetentionPeriod;

  Database({
    this.createTime,
    this.defaultLeader,
    this.earliestVersionTime,
    this.encryptionConfig,
    this.encryptionInfo,
    this.name,
    this.restoreInfo,
    this.state,
    this.versionRetentionPeriod,
  });

  Database.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          defaultLeader: _json.containsKey('defaultLeader')
              ? _json['defaultLeader'] as core.String
              : null,
          earliestVersionTime: _json.containsKey('earliestVersionTime')
              ? _json['earliestVersionTime'] as core.String
              : null,
          encryptionConfig: _json.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(_json['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryptionInfo: _json.containsKey('encryptionInfo')
              ? (_json['encryptionInfo'] as core.List)
                  .map((value) => EncryptionInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          restoreInfo: _json.containsKey('restoreInfo')
              ? RestoreInfo.fromJson(
                  _json['restoreInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          versionRetentionPeriod: _json.containsKey('versionRetentionPeriod')
              ? _json['versionRetentionPeriod'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (defaultLeader != null) 'defaultLeader': defaultLeader!,
        if (earliestVersionTime != null)
          'earliestVersionTime': earliestVersionTime!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (encryptionInfo != null) 'encryptionInfo': encryptionInfo!,
        if (name != null) 'name': name!,
        if (restoreInfo != null) 'restoreInfo': restoreInfo!,
        if (state != null) 'state': state!,
        if (versionRetentionPeriod != null)
          'versionRetentionPeriod': versionRetentionPeriod!,
      };
}

/// Arguments to delete operations.
class Delete {
  /// The primary keys of the rows within table to delete.
  ///
  /// The primary keys must be specified in the order in which they appear in
  /// the `PRIMARY KEY()` clause of the table's equivalent DDL statement (the
  /// DDL statement used to create the table). Delete is idempotent. The
  /// transaction will succeed even if some or all rows do not exist.
  ///
  /// Required.
  KeySet? keySet;

  /// The table whose rows will be deleted.
  ///
  /// Required.
  core.String? table;

  Delete({
    this.keySet,
    this.table,
  });

  Delete.fromJson(core.Map _json)
      : this(
          keySet: _json.containsKey('keySet')
              ? KeySet.fromJson(
                  _json['keySet'] as core.Map<core.String, core.dynamic>)
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keySet != null) 'keySet': keySet!,
        if (table != null) 'table': table!,
      };
}

/// A message representing a derived metric.
class DerivedMetric {
  /// The name of the denominator metric.
  ///
  /// e.g. "rows".
  LocalizedString? denominator;

  /// The name of the numerator metric.
  ///
  /// e.g. "latency".
  LocalizedString? numerator;

  DerivedMetric({
    this.denominator,
    this.numerator,
  });

  DerivedMetric.fromJson(core.Map _json)
      : this(
          denominator: _json.containsKey('denominator')
              ? LocalizedString.fromJson(
                  _json['denominator'] as core.Map<core.String, core.dynamic>)
              : null,
          numerator: _json.containsKey('numerator')
              ? LocalizedString.fromJson(
                  _json['numerator'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (denominator != null) 'denominator': denominator!,
        if (numerator != null) 'numerator': numerator!,
      };
}

/// A message representing the key visualizer diagnostic messages.
class DiagnosticMessage {
  /// Information about this diagnostic information.
  LocalizedString? info;

  /// The metric.
  LocalizedString? metric;

  /// Whether this message is specific only for the current metric.
  ///
  /// By default Diagnostics are shown for all metrics, regardless which metric
  /// is the currently selected metric in the UI. However occasionally a metric
  /// will generate so many messages that the resulting visual clutter becomes
  /// overwhelming. In this case setting this to true, will show the diagnostic
  /// messages for that metric only if it is the currently selected metric.
  core.bool? metricSpecific;

  /// The severity of the diagnostic message.
  /// Possible string values are:
  /// - "SEVERITY_UNSPECIFIED" : Required default value.
  /// - "INFO" : Lowest severity level "Info".
  /// - "WARNING" : Middle severity level "Warning".
  /// - "ERROR" : Severity level signaling an error "Error"
  /// - "FATAL" : Severity level signaling a non recoverable error "Fatal"
  core.String? severity;

  /// The short message.
  LocalizedString? shortMessage;

  DiagnosticMessage({
    this.info,
    this.metric,
    this.metricSpecific,
    this.severity,
    this.shortMessage,
  });

  DiagnosticMessage.fromJson(core.Map _json)
      : this(
          info: _json.containsKey('info')
              ? LocalizedString.fromJson(
                  _json['info'] as core.Map<core.String, core.dynamic>)
              : null,
          metric: _json.containsKey('metric')
              ? LocalizedString.fromJson(
                  _json['metric'] as core.Map<core.String, core.dynamic>)
              : null,
          metricSpecific: _json.containsKey('metricSpecific')
              ? _json['metricSpecific'] as core.bool
              : null,
          severity: _json.containsKey('severity')
              ? _json['severity'] as core.String
              : null,
          shortMessage: _json.containsKey('shortMessage')
              ? LocalizedString.fromJson(
                  _json['shortMessage'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (info != null) 'info': info!,
        if (metric != null) 'metric': metric!,
        if (metricSpecific != null) 'metricSpecific': metricSpecific!,
        if (severity != null) 'severity': severity!,
        if (shortMessage != null) 'shortMessage': shortMessage!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); } The JSON representation for `Empty` is empty JSON
/// object `{}`.
typedef Empty = $Empty;

/// Encryption configuration for a Cloud Spanner database.
class EncryptionConfig {
  /// The Cloud KMS key to be used for encrypting and decrypting the database.
  ///
  /// Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  core.String? kmsKeyName;

  EncryptionConfig({
    this.kmsKeyName,
  });

  EncryptionConfig.fromJson(core.Map _json)
      : this(
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// Encryption information for a Cloud Spanner database or backup.
class EncryptionInfo {
  /// If present, the status of a recent encrypt/decrypt call on underlying data
  /// for this database or backup.
  ///
  /// Regardless of status, data is always encrypted at rest.
  ///
  /// Output only.
  Status? encryptionStatus;

  /// The type of encryption.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Encryption type was not specified, though data at
  /// rest remains encrypted.
  /// - "GOOGLE_DEFAULT_ENCRYPTION" : The data is encrypted at rest with a key
  /// that is fully managed by Google. No key version or status will be
  /// populated. This is the default state.
  /// - "CUSTOMER_MANAGED_ENCRYPTION" : The data is encrypted at rest with a key
  /// that is managed by the customer. The active version of the key.
  /// `kms_key_version` will be populated, and `encryption_status` may be
  /// populated.
  core.String? encryptionType;

  /// A Cloud KMS key version that is being used to protect the database or
  /// backup.
  ///
  /// Output only.
  core.String? kmsKeyVersion;

  EncryptionInfo({
    this.encryptionStatus,
    this.encryptionType,
    this.kmsKeyVersion,
  });

  EncryptionInfo.fromJson(core.Map _json)
      : this(
          encryptionStatus: _json.containsKey('encryptionStatus')
              ? Status.fromJson(_json['encryptionStatus']
                  as core.Map<core.String, core.dynamic>)
              : null,
          encryptionType: _json.containsKey('encryptionType')
              ? _json['encryptionType'] as core.String
              : null,
          kmsKeyVersion: _json.containsKey('kmsKeyVersion')
              ? _json['kmsKeyVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionStatus != null) 'encryptionStatus': encryptionStatus!,
        if (encryptionType != null) 'encryptionType': encryptionType!,
        if (kmsKeyVersion != null) 'kmsKeyVersion': kmsKeyVersion!,
      };
}

/// The request for ExecuteBatchDml.
class ExecuteBatchDmlRequest {
  /// Common options for this request.
  RequestOptions? requestOptions;

  /// A per-transaction sequence number used to identify this request.
  ///
  /// This field makes each request idempotent such that if the request is
  /// received multiple times, at most one will succeed. The sequence number
  /// must be monotonically increasing within the transaction. If a request
  /// arrives for the first time with an out-of-order sequence number, the
  /// transaction may be aborted. Replays of previously handled requests will
  /// yield the same response as the first execution.
  ///
  /// Required.
  core.String? seqno;

  /// The list of statements to execute in this batch.
  ///
  /// Statements are executed serially, such that the effects of statement `i`
  /// are visible to statement `i+1`. Each statement must be a DML statement.
  /// Execution stops at the first failed statement; the remaining statements
  /// are not executed. Callers must provide at least one statement.
  ///
  /// Required.
  core.List<Statement>? statements;

  /// The transaction to use.
  ///
  /// Must be a read-write transaction. To protect against replays, single-use
  /// transactions are not supported. The caller must either supply an existing
  /// transaction ID or begin a new transaction.
  ///
  /// Required.
  TransactionSelector? transaction;

  ExecuteBatchDmlRequest({
    this.requestOptions,
    this.seqno,
    this.statements,
    this.transaction,
  });

  ExecuteBatchDmlRequest.fromJson(core.Map _json)
      : this(
          requestOptions: _json.containsKey('requestOptions')
              ? RequestOptions.fromJson(_json['requestOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          seqno:
              _json.containsKey('seqno') ? _json['seqno'] as core.String : null,
          statements: _json.containsKey('statements')
              ? (_json['statements'] as core.List)
                  .map((value) => Statement.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transaction: _json.containsKey('transaction')
              ? TransactionSelector.fromJson(
                  _json['transaction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestOptions != null) 'requestOptions': requestOptions!,
        if (seqno != null) 'seqno': seqno!,
        if (statements != null) 'statements': statements!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The response for ExecuteBatchDml.
///
/// Contains a list of ResultSet messages, one for each DML statement that has
/// successfully executed, in the same order as the statements in the request.
/// If a statement fails, the status in the response body identifies the cause
/// of the failure. To check for DML statements that failed, use the following
/// approach: 1. Check the status in the response message. The google.rpc.Code
/// enum value `OK` indicates that all statements were executed successfully. 2.
/// If the status was not `OK`, check the number of result sets in the response.
/// If the response contains `N` ResultSet messages, then statement `N+1` in the
/// request failed. Example 1: * Request: 5 DML statements, all executed
/// successfully. * Response: 5 ResultSet messages, with the status `OK`.
/// Example 2: * Request: 5 DML statements. The third statement has a syntax
/// error. * Response: 2 ResultSet messages, and a syntax error
/// (`INVALID_ARGUMENT`) status. The number of ResultSet messages indicates that
/// the third statement failed, and the fourth and fifth statements were not
/// executed.
class ExecuteBatchDmlResponse {
  /// One ResultSet for each statement in the request that ran successfully, in
  /// the same order as the statements in the request.
  ///
  /// Each ResultSet does not contain any rows. The ResultSetStats in each
  /// ResultSet contain the number of rows modified by the statement. Only the
  /// first ResultSet in the response contains valid ResultSetMetadata.
  core.List<ResultSet>? resultSets;

  /// If all DML statements are executed successfully, the status is `OK`.
  ///
  /// Otherwise, the error status of the first failed statement.
  Status? status;

  ExecuteBatchDmlResponse({
    this.resultSets,
    this.status,
  });

  ExecuteBatchDmlResponse.fromJson(core.Map _json)
      : this(
          resultSets: _json.containsKey('resultSets')
              ? (_json['resultSets'] as core.List)
                  .map((value) => ResultSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          status: _json.containsKey('status')
              ? Status.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (resultSets != null) 'resultSets': resultSets!,
        if (status != null) 'status': status!,
      };
}

/// The request for ExecuteSql and ExecuteStreamingSql.
class ExecuteSqlRequest {
  /// It is not always possible for Cloud Spanner to infer the right SQL type
  /// from a JSON value.
  ///
  /// For example, values of type `BYTES` and values of type `STRING` both
  /// appear in params as JSON strings. In these cases, `param_types` can be
  /// used to specify the exact SQL type for some or all of the SQL statement
  /// parameters. See the definition of Type for more information about SQL
  /// types.
  core.Map<core.String, Type>? paramTypes;

  /// Parameter names and values that bind to placeholders in the SQL string.
  ///
  /// A parameter placeholder consists of the `@` character followed by the
  /// parameter name (for example, `@firstName`). Parameter names must conform
  /// to the naming requirements of identifiers as specified at
  /// https://cloud.google.com/spanner/docs/lexical#identifiers. Parameters can
  /// appear anywhere that a literal value is expected. The same parameter name
  /// can be used more than once, for example: `"WHERE id > @msg_id AND id <
  /// @msg_id + 100"` It is an error to execute a SQL statement with unbound
  /// parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// If present, results will be restricted to the specified partition
  /// previously created using PartitionQuery().
  ///
  /// There must be an exact match for the values of fields common to this
  /// message and the PartitionQueryRequest message used to create this
  /// partition_token.
  core.String? partitionToken;
  core.List<core.int> get partitionTokenAsBytes =>
      convert.base64.decode(partitionToken!);

  set partitionTokenAsBytes(core.List<core.int> _bytes) {
    partitionToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Used to control the amount of debugging information returned in
  /// ResultSetStats.
  ///
  /// If partition_token is set, query_mode can only be set to QueryMode.NORMAL.
  /// Possible string values are:
  /// - "NORMAL" : The default mode. Only the statement results are returned.
  /// - "PLAN" : This mode returns only the query plan, without any results or
  /// execution statistics information.
  /// - "PROFILE" : This mode returns both the query plan and the execution
  /// statistics along with the results.
  core.String? queryMode;

  /// Query optimizer configuration to use for the given query.
  QueryOptions? queryOptions;

  /// Common options for this request.
  RequestOptions? requestOptions;

  /// If this request is resuming a previously interrupted SQL statement
  /// execution, `resume_token` should be copied from the last PartialResultSet
  /// yielded before the interruption.
  ///
  /// Doing this enables the new SQL statement execution to resume where the
  /// last one left off. The rest of the request parameters must exactly match
  /// the request that yielded this token.
  core.String? resumeToken;
  core.List<core.int> get resumeTokenAsBytes =>
      convert.base64.decode(resumeToken!);

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A per-transaction sequence number used to identify this request.
  ///
  /// This field makes each request idempotent such that if the request is
  /// received multiple times, at most one will succeed. The sequence number
  /// must be monotonically increasing within the transaction. If a request
  /// arrives for the first time with an out-of-order sequence number, the
  /// transaction may be aborted. Replays of previously handled requests will
  /// yield the same response as the first execution. Required for DML
  /// statements. Ignored for queries.
  core.String? seqno;

  /// The SQL string.
  ///
  /// Required.
  core.String? sql;

  /// The transaction to use.
  ///
  /// For queries, if none is provided, the default is a temporary read-only
  /// transaction with strong concurrency. Standard DML statements require a
  /// read-write transaction. To protect against replays, single-use
  /// transactions are not supported. The caller must either supply an existing
  /// transaction ID or begin a new transaction. Partitioned DML requires an
  /// existing Partitioned DML transaction ID.
  TransactionSelector? transaction;

  ExecuteSqlRequest({
    this.paramTypes,
    this.params,
    this.partitionToken,
    this.queryMode,
    this.queryOptions,
    this.requestOptions,
    this.resumeToken,
    this.seqno,
    this.sql,
    this.transaction,
  });

  ExecuteSqlRequest.fromJson(core.Map _json)
      : this(
          paramTypes: _json.containsKey('paramTypes')
              ? (_json['paramTypes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Type.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          params: _json.containsKey('params')
              ? _json['params'] as core.Map<core.String, core.dynamic>
              : null,
          partitionToken: _json.containsKey('partitionToken')
              ? _json['partitionToken'] as core.String
              : null,
          queryMode: _json.containsKey('queryMode')
              ? _json['queryMode'] as core.String
              : null,
          queryOptions: _json.containsKey('queryOptions')
              ? QueryOptions.fromJson(
                  _json['queryOptions'] as core.Map<core.String, core.dynamic>)
              : null,
          requestOptions: _json.containsKey('requestOptions')
              ? RequestOptions.fromJson(_json['requestOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resumeToken: _json.containsKey('resumeToken')
              ? _json['resumeToken'] as core.String
              : null,
          seqno:
              _json.containsKey('seqno') ? _json['seqno'] as core.String : null,
          sql: _json.containsKey('sql') ? _json['sql'] as core.String : null,
          transaction: _json.containsKey('transaction')
              ? TransactionSelector.fromJson(
                  _json['transaction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (paramTypes != null) 'paramTypes': paramTypes!,
        if (params != null) 'params': params!,
        if (partitionToken != null) 'partitionToken': partitionToken!,
        if (queryMode != null) 'queryMode': queryMode!,
        if (queryOptions != null) 'queryOptions': queryOptions!,
        if (requestOptions != null) 'requestOptions': requestOptions!,
        if (resumeToken != null) 'resumeToken': resumeToken!,
        if (seqno != null) 'seqno': seqno!,
        if (sql != null) 'sql': sql!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// Represents a textual expression in the Common Expression Language (CEL)
/// syntax.
///
/// CEL is a C-like expression language. The syntax and semantics of CEL are
/// documented at https://github.com/google/cel-spec. Example (Comparison):
/// title: "Summary size limit" description: "Determines if a summary is less
/// than 100 chars" expression: "document.summary.size() < 100" Example
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

/// Message representing a single field of a struct.
class Field {
  /// The name of the field.
  ///
  /// For reads, this is the column name. For SQL queries, it is the column
  /// alias (e.g., `"Word"` in the query `"SELECT 'hello' AS Word"`), or the
  /// column name (e.g., `"ColName"` in the query `"SELECT ColName FROM
  /// Table"`). Some columns might have an empty name (e.g., `"SELECT
  /// UPPER(ColName)"`). Note that a query result can contain multiple fields
  /// with the same name.
  core.String? name;

  /// The type of the field.
  Type? type;

  Field({
    this.name,
    this.type,
  });

  Field.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          type: _json.containsKey('type')
              ? Type.fromJson(
                  _json['type'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// The response for GetDatabaseDdl.
class GetDatabaseDdlResponse {
  /// A list of formatted DDL statements defining the schema of the database
  /// specified in the request.
  core.List<core.String>? statements;

  GetDatabaseDdlResponse({
    this.statements,
  });

  GetDatabaseDdlResponse.fromJson(core.Map _json)
      : this(
          statements: _json.containsKey('statements')
              ? (_json['statements'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (statements != null) 'statements': statements!,
      };
}

/// Request message for `GetIamPolicy` method.
class GetIamPolicyRequest {
  /// OPTIONAL: A `GetPolicyOptions` object for specifying options to
  /// `GetIamPolicy`.
  GetPolicyOptions? options;

  GetIamPolicyRequest({
    this.options,
  });

  GetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          options: _json.containsKey('options')
              ? GetPolicyOptions.fromJson(
                  _json['options'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (options != null) 'options': options!,
      };
}

/// Encapsulates settings provided to GetIamPolicy.
typedef GetPolicyOptions = $GetPolicyOptions;

/// A message representing a (sparse) collection of hot keys for specific key
/// buckets.
class IndexedHotKey {
  /// A (sparse) mapping from key bucket index to the index of the specific hot
  /// row key for that key bucket.
  ///
  /// The index of the hot row key can be translated to the actual row key via
  /// the ScanData.VisualizationData.indexed_keys repeated field.
  core.Map<core.String, core.int>? sparseHotKeys;

  IndexedHotKey({
    this.sparseHotKeys,
  });

  IndexedHotKey.fromJson(core.Map _json)
      : this(
          sparseHotKeys: _json.containsKey('sparseHotKeys')
              ? (_json['sparseHotKeys'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.int,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sparseHotKeys != null) 'sparseHotKeys': sparseHotKeys!,
      };
}

/// A message representing a (sparse) collection of KeyRangeInfos for specific
/// key buckets.
class IndexedKeyRangeInfos {
  /// A (sparse) mapping from key bucket index to the KeyRangeInfos for that key
  /// bucket.
  core.Map<core.String, KeyRangeInfos>? keyRangeInfos;

  IndexedKeyRangeInfos({
    this.keyRangeInfos,
  });

  IndexedKeyRangeInfos.fromJson(core.Map _json)
      : this(
          keyRangeInfos: _json.containsKey('keyRangeInfos')
              ? (_json['keyRangeInfos'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    KeyRangeInfos.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (keyRangeInfos != null) 'keyRangeInfos': keyRangeInfos!,
      };
}

/// An isolated set of Cloud Spanner resources on which databases can be hosted.
class Instance {
  /// The name of the instance's configuration.
  ///
  /// Values are of the form `projects//instanceConfigs/`. See also
  /// InstanceConfig and ListInstanceConfigs.
  ///
  /// Required.
  core.String? config;

  /// The descriptive name for this instance as it appears in UIs.
  ///
  /// Must be unique per project and between 4 and 30 characters in length.
  ///
  /// Required.
  core.String? displayName;

  /// This field is not populated.
  ///
  /// Deprecated.
  core.List<core.String>? endpointUris;

  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud
  /// resources into groups that reflect a customer's organizational needs and
  /// deployment strategies.
  ///
  /// Cloud Labels can be used to filter collections of resources. They can be
  /// used to control how resource metrics are aggregated. And they can be used
  /// as arguments to policy management rules (e.g. route, firewall, load
  /// balancing, etc.). * Label keys must be between 1 and 63 characters long
  /// and must conform to the following regular expression: `a-z{0,62}`. * Label
  /// values must be between 0 and 63 characters long and must conform to the
  /// regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be
  /// associated with a given resource. See https://goo.gl/xmQnxf for more
  /// information on and examples of labels. If you plan to use labels in your
  /// own code, please note that additional characters may be allowed in the
  /// future. And so you are advised to use an internal label representation,
  /// such as JSON, which doesn't rely upon specific characters being
  /// disallowed. For example, representing labels as the string: name + "_" +
  /// value would prove problematic if we were to allow "_" in a future release.
  core.Map<core.String, core.String>? labels;

  /// A unique identifier for the instance, which cannot be changed after the
  /// instance is created.
  ///
  /// Values are of the form `projects//instances/a-z*[a-z0-9]`. The final
  /// segment of the name must be between 2 and 64 characters in length.
  ///
  /// Required.
  core.String? name;

  /// The number of nodes allocated to this instance.
  ///
  /// At most one of either node_count or processing_units should be present in
  /// the message. This may be zero in API responses for instances that are not
  /// yet in state `READY`. See
  /// [the documentation](https://cloud.google.com/spanner/docs/compute-capacity)
  /// for more information about nodes and processing units.
  core.int? nodeCount;

  /// The number of processing units allocated to this instance.
  ///
  /// At most one of processing_units or node_count should be present in the
  /// message. This may be zero in API responses for instances that are not yet
  /// in state `READY`. See
  /// [the documentation](https://cloud.google.com/spanner/docs/compute-capacity)
  /// for more information about nodes and processing units.
  core.int? processingUnits;

  /// The current instance state.
  ///
  /// For CreateInstance, the state must be either omitted or set to `CREATING`.
  /// For UpdateInstance, the state must be either omitted or set to `READY`.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Not specified.
  /// - "CREATING" : The instance is still being created. Resources may not be
  /// available yet, and operations such as database creation may not work.
  /// - "READY" : The instance is fully created and ready to do work such as
  /// creating databases.
  core.String? state;

  Instance({
    this.config,
    this.displayName,
    this.endpointUris,
    this.labels,
    this.name,
    this.nodeCount,
    this.processingUnits,
    this.state,
  });

  Instance.fromJson(core.Map _json)
      : this(
          config: _json.containsKey('config')
              ? _json['config'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          endpointUris: _json.containsKey('endpointUris')
              ? (_json['endpointUris'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          nodeCount: _json.containsKey('nodeCount')
              ? _json['nodeCount'] as core.int
              : null,
          processingUnits: _json.containsKey('processingUnits')
              ? _json['processingUnits'] as core.int
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (config != null) 'config': config!,
        if (displayName != null) 'displayName': displayName!,
        if (endpointUris != null) 'endpointUris': endpointUris!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (nodeCount != null) 'nodeCount': nodeCount!,
        if (processingUnits != null) 'processingUnits': processingUnits!,
        if (state != null) 'state': state!,
      };
}

/// A possible configuration for a Cloud Spanner instance.
///
/// Configurations define the geographic placement of nodes and their
/// replication.
class InstanceConfig {
  /// The name of this instance configuration as it appears in UIs.
  core.String? displayName;

  /// Allowed values of the “default_leader” schema option for databases in
  /// instances that use this instance configuration.
  core.List<core.String>? leaderOptions;

  /// A unique identifier for the instance configuration.
  ///
  /// Values are of the form `projects//instanceConfigs/a-z*`.
  core.String? name;

  /// The geographic placement of nodes in this instance configuration and their
  /// replication properties.
  core.List<ReplicaInfo>? replicas;

  InstanceConfig({
    this.displayName,
    this.leaderOptions,
    this.name,
    this.replicas,
  });

  InstanceConfig.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          leaderOptions: _json.containsKey('leaderOptions')
              ? (_json['leaderOptions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          replicas: _json.containsKey('replicas')
              ? (_json['replicas'] as core.List)
                  .map((value) => ReplicaInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (leaderOptions != null) 'leaderOptions': leaderOptions!,
        if (name != null) 'name': name!,
        if (replicas != null) 'replicas': replicas!,
      };
}

/// KeyRange represents a range of rows in a table or index.
///
/// A range has a start key and an end key. These keys can be open or closed,
/// indicating if the range includes rows with that key. Keys are represented by
/// lists, where the ith value in the list corresponds to the ith component of
/// the table or index primary key. Individual values are encoded as described
/// here. For example, consider the following table definition: CREATE TABLE
/// UserEvents ( UserName STRING(MAX), EventDate STRING(10) ) PRIMARY
/// KEY(UserName, EventDate); The following keys name rows in this table: "Bob",
/// "2014-09-23" Since the `UserEvents` table's `PRIMARY KEY` clause names two
/// columns, each `UserEvents` key has two elements; the first is the
/// `UserName`, and the second is the `EventDate`. Key ranges with multiple
/// components are interpreted lexicographically by component using the table or
/// index key's declared sort order. For example, the following range returns
/// all events for user `"Bob"` that occurred in the year 2015: "start_closed":
/// \["Bob", "2015-01-01"\] "end_closed": \["Bob", "2015-12-31"\] Start and end
/// keys can omit trailing key components. This affects the inclusion and
/// exclusion of rows that exactly match the provided key components: if the key
/// is closed, then rows that exactly match the provided components are
/// included; if the key is open, then rows that exactly match are not included.
/// For example, the following range includes all events for `"Bob"` that
/// occurred during and after the year 2000: "start_closed": \["Bob",
/// "2000-01-01"\] "end_closed": \["Bob"\] The next example retrieves all events
/// for `"Bob"`: "start_closed": \["Bob"\] "end_closed": \["Bob"\] To retrieve
/// events before the year 2000: "start_closed": \["Bob"\] "end_open": \["Bob",
/// "2000-01-01"\] The following range includes all rows in the table:
/// "start_closed": \[\] "end_closed": \[\] This range returns all users whose
/// `UserName` begins with any character from A to C: "start_closed": \["A"\]
/// "end_open": \["D"\] This range returns all users whose `UserName` begins
/// with B: "start_closed": \["B"\] "end_open": \["C"\] Key ranges honor column
/// sort order. For example, suppose a table is defined as follows: CREATE TABLE
/// DescendingSortedTable { Key INT64, ... ) PRIMARY KEY(Key DESC); The
/// following range retrieves all rows with key values between 1 and 100
/// inclusive: "start_closed": \["100"\] "end_closed": \["1"\] Note that 100 is
/// passed as the start, and 1 is passed as the end, because `Key` is a
/// descending column in the schema.
class KeyRange {
  /// If the end is closed, then the range includes all rows whose first
  /// `len(end_closed)` key columns exactly match `end_closed`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? endClosed;

  /// If the end is open, then the range excludes rows whose first
  /// `len(end_open)` key columns exactly match `end_open`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? endOpen;

  /// If the start is closed, then the range includes all rows whose first
  /// `len(start_closed)` key columns exactly match `start_closed`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? startClosed;

  /// If the start is open, then the range excludes rows whose first
  /// `len(start_open)` key columns exactly match `start_open`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? startOpen;

  KeyRange({
    this.endClosed,
    this.endOpen,
    this.startClosed,
    this.startOpen,
  });

  KeyRange.fromJson(core.Map _json)
      : this(
          endClosed: _json.containsKey('endClosed')
              ? _json['endClosed'] as core.List
              : null,
          endOpen: _json.containsKey('endOpen')
              ? _json['endOpen'] as core.List
              : null,
          startClosed: _json.containsKey('startClosed')
              ? _json['startClosed'] as core.List
              : null,
          startOpen: _json.containsKey('startOpen')
              ? _json['startOpen'] as core.List
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endClosed != null) 'endClosed': endClosed!,
        if (endOpen != null) 'endOpen': endOpen!,
        if (startClosed != null) 'startClosed': startClosed!,
        if (startOpen != null) 'startOpen': startOpen!,
      };
}

/// A message representing information for a key range (possibly one key).
class KeyRangeInfo {
  /// The list of context values for this key range.
  core.List<ContextValue>? contextValues;

  /// The index of the end key in indexed_keys.
  core.int? endKeyIndex;

  /// Information about this key range, for all metrics.
  LocalizedString? info;

  /// The number of keys this range covers.
  core.String? keysCount;

  /// The name of the metric.
  ///
  /// e.g. "latency".
  LocalizedString? metric;

  /// The index of the start key in indexed_keys.
  core.int? startKeyIndex;

  /// The time offset.
  ///
  /// This is the time since the start of the time interval.
  core.String? timeOffset;

  /// The unit of the metric.
  ///
  /// This is an unstructured field and will be mapped as is to the user.
  LocalizedString? unit;

  /// The value of the metric.
  core.double? value;

  KeyRangeInfo({
    this.contextValues,
    this.endKeyIndex,
    this.info,
    this.keysCount,
    this.metric,
    this.startKeyIndex,
    this.timeOffset,
    this.unit,
    this.value,
  });

  KeyRangeInfo.fromJson(core.Map _json)
      : this(
          contextValues: _json.containsKey('contextValues')
              ? (_json['contextValues'] as core.List)
                  .map((value) => ContextValue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          endKeyIndex: _json.containsKey('endKeyIndex')
              ? _json['endKeyIndex'] as core.int
              : null,
          info: _json.containsKey('info')
              ? LocalizedString.fromJson(
                  _json['info'] as core.Map<core.String, core.dynamic>)
              : null,
          keysCount: _json.containsKey('keysCount')
              ? _json['keysCount'] as core.String
              : null,
          metric: _json.containsKey('metric')
              ? LocalizedString.fromJson(
                  _json['metric'] as core.Map<core.String, core.dynamic>)
              : null,
          startKeyIndex: _json.containsKey('startKeyIndex')
              ? _json['startKeyIndex'] as core.int
              : null,
          timeOffset: _json.containsKey('timeOffset')
              ? _json['timeOffset'] as core.String
              : null,
          unit: _json.containsKey('unit')
              ? LocalizedString.fromJson(
                  _json['unit'] as core.Map<core.String, core.dynamic>)
              : null,
          value: _json.containsKey('value')
              ? (_json['value'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (contextValues != null) 'contextValues': contextValues!,
        if (endKeyIndex != null) 'endKeyIndex': endKeyIndex!,
        if (info != null) 'info': info!,
        if (keysCount != null) 'keysCount': keysCount!,
        if (metric != null) 'metric': metric!,
        if (startKeyIndex != null) 'startKeyIndex': startKeyIndex!,
        if (timeOffset != null) 'timeOffset': timeOffset!,
        if (unit != null) 'unit': unit!,
        if (value != null) 'value': value!,
      };
}

/// A message representing a list of specific information for multiple key
/// ranges.
class KeyRangeInfos {
  /// The list individual KeyRangeInfos.
  core.List<KeyRangeInfo>? infos;

  /// The total size of the list of all KeyRangeInfos.
  ///
  /// This may be larger than the number of repeated messages above. If that is
  /// the case, this number may be used to determine how many are not being
  /// shown.
  core.int? totalSize;

  KeyRangeInfos({
    this.infos,
    this.totalSize,
  });

  KeyRangeInfos.fromJson(core.Map _json)
      : this(
          infos: _json.containsKey('infos')
              ? (_json['infos'] as core.List)
                  .map((value) => KeyRangeInfo.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          totalSize: _json.containsKey('totalSize')
              ? _json['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (infos != null) 'infos': infos!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// `KeySet` defines a collection of Cloud Spanner keys and/or key ranges.
///
/// All the keys are expected to be in the same table or index. The keys need
/// not be sorted in any particular way. If the same key is specified multiple
/// times in the set (for example if two ranges, two keys, or a key and a range
/// overlap), Cloud Spanner behaves as if the key were only specified once.
class KeySet {
  /// For convenience `all` can be set to `true` to indicate that this `KeySet`
  /// matches all keys in the table or index.
  ///
  /// Note that any keys specified in `keys` or `ranges` are only yielded once.
  core.bool? all;

  /// A list of specific keys.
  ///
  /// Entries in `keys` should have exactly as many elements as there are
  /// columns in the primary or index key with which this `KeySet` is used.
  /// Individual key values are encoded as described here.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object?>>? keys;

  /// A list of key ranges.
  ///
  /// See KeyRange for more information about key range specifications.
  core.List<KeyRange>? ranges;

  KeySet({
    this.all,
    this.keys,
    this.ranges,
  });

  KeySet.fromJson(core.Map _json)
      : this(
          all: _json.containsKey('all') ? _json['all'] as core.bool : null,
          keys: _json.containsKey('keys')
              ? (_json['keys'] as core.List)
                  .map((value) => value as core.List)
                  .toList()
              : null,
          ranges: _json.containsKey('ranges')
              ? (_json['ranges'] as core.List)
                  .map((value) => KeyRange.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (all != null) 'all': all!,
        if (keys != null) 'keys': keys!,
        if (ranges != null) 'ranges': ranges!,
      };
}

/// The response for ListBackupOperations.
class ListBackupOperationsResponse {
  /// `next_page_token` can be sent in a subsequent ListBackupOperations call to
  /// fetch more of the matching metadata.
  core.String? nextPageToken;

  /// The list of matching backup long-running operations.
  ///
  /// Each operation's name will be prefixed by the backup's name and the
  /// operation's metadata will be of type CreateBackupMetadata. Operations
  /// returned include those that are pending or have completed/failed/canceled
  /// within the last 7 days. Operations returned are ordered by
  /// `operation.metadata.value.progress.start_time` in descending order
  /// starting from the most recently started operation.
  core.List<Operation>? operations;

  ListBackupOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListBackupOperationsResponse.fromJson(core.Map _json)
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

/// The response for ListBackups.
class ListBackupsResponse {
  /// The list of matching backups.
  ///
  /// Backups returned are ordered by `create_time` in descending order,
  /// starting from the most recent `create_time`.
  core.List<Backup>? backups;

  /// `next_page_token` can be sent in a subsequent ListBackups call to fetch
  /// more of the matching backups.
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

/// The response for ListDatabaseOperations.
class ListDatabaseOperationsResponse {
  /// `next_page_token` can be sent in a subsequent ListDatabaseOperations call
  /// to fetch more of the matching metadata.
  core.String? nextPageToken;

  /// The list of matching database long-running operations.
  ///
  /// Each operation's name will be prefixed by the database's name. The
  /// operation's metadata field type `metadata.type_url` describes the type of
  /// the metadata.
  core.List<Operation>? operations;

  ListDatabaseOperationsResponse({
    this.nextPageToken,
    this.operations,
  });

  ListDatabaseOperationsResponse.fromJson(core.Map _json)
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

/// The response for ListDatabases.
class ListDatabasesResponse {
  /// Databases that matched the request.
  core.List<Database>? databases;

  /// `next_page_token` can be sent in a subsequent ListDatabases call to fetch
  /// more of the matching databases.
  core.String? nextPageToken;

  ListDatabasesResponse({
    this.databases,
    this.nextPageToken,
  });

  ListDatabasesResponse.fromJson(core.Map _json)
      : this(
          databases: _json.containsKey('databases')
              ? (_json['databases'] as core.List)
                  .map((value) => Database.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databases != null) 'databases': databases!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for ListInstanceConfigs.
class ListInstanceConfigsResponse {
  /// The list of requested instance configurations.
  core.List<InstanceConfig>? instanceConfigs;

  /// `next_page_token` can be sent in a subsequent ListInstanceConfigs call to
  /// fetch more of the matching instance configurations.
  core.String? nextPageToken;

  ListInstanceConfigsResponse({
    this.instanceConfigs,
    this.nextPageToken,
  });

  ListInstanceConfigsResponse.fromJson(core.Map _json)
      : this(
          instanceConfigs: _json.containsKey('instanceConfigs')
              ? (_json['instanceConfigs'] as core.List)
                  .map((value) => InstanceConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (instanceConfigs != null) 'instanceConfigs': instanceConfigs!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// The response for ListInstances.
class ListInstancesResponse {
  /// The list of requested instances.
  core.List<Instance>? instances;

  /// `next_page_token` can be sent in a subsequent ListInstances call to fetch
  /// more of the matching instances.
  core.String? nextPageToken;

  /// The list of unreachable instances.
  ///
  /// It includes the names of instances whose metadata could not be retrieved
  /// within instance_deadline.
  core.List<core.String>? unreachable;

  ListInstancesResponse({
    this.instances,
    this.nextPageToken,
    this.unreachable,
  });

  ListInstancesResponse.fromJson(core.Map _json)
      : this(
          instances: _json.containsKey('instances')
              ? (_json['instances'] as core.List)
                  .map((value) => Instance.fromJson(
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
        if (instances != null) 'instances': instances!,
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

/// Response method from the ListScans method.
class ListScansResponse {
  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  /// Available scans based on the list query parameters.
  core.List<Scan>? scans;

  ListScansResponse({
    this.nextPageToken,
    this.scans,
  });

  ListScansResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          scans: _json.containsKey('scans')
              ? (_json['scans'] as core.List)
                  .map((value) => Scan.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (scans != null) 'scans': scans!,
      };
}

/// The response for ListSessions.
class ListSessionsResponse {
  /// `next_page_token` can be sent in a subsequent ListSessions call to fetch
  /// more of the matching sessions.
  core.String? nextPageToken;

  /// The list of requested sessions.
  core.List<Session>? sessions;

  ListSessionsResponse({
    this.nextPageToken,
    this.sessions,
  });

  ListSessionsResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          sessions: _json.containsKey('sessions')
              ? (_json['sessions'] as core.List)
                  .map((value) => Session.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (sessions != null) 'sessions': sessions!,
      };
}

/// A message representing a user-facing string whose value may need to be
/// translated before being displayed.
class LocalizedString {
  /// A map of arguments used when creating the localized message.
  ///
  /// Keys represent parameter names which may be used by the localized version
  /// when substituting dynamic values.
  core.Map<core.String, core.String>? args;

  /// The canonical English version of this message.
  ///
  /// If no token is provided or the front-end has no message associated with
  /// the token, this text will be displayed as-is.
  core.String? message;

  /// The token identifying the message, e.g. 'METRIC_READ_CPU'.
  ///
  /// This should be unique within the service.
  core.String? token;

  LocalizedString({
    this.args,
    this.message,
    this.token,
  });

  LocalizedString.fromJson(core.Map _json)
      : this(
          args: _json.containsKey('args')
              ? (_json['args'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          message: _json.containsKey('message')
              ? _json['message'] as core.String
              : null,
          token:
              _json.containsKey('token') ? _json['token'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (args != null) 'args': args!,
        if (message != null) 'message': message!,
        if (token != null) 'token': token!,
      };
}

/// A message representing the actual monitoring data, values for each key
/// bucket over time, of a metric.
class Metric {
  /// The aggregation function used to aggregate each key bucket
  /// Possible string values are:
  /// - "AGGREGATION_UNSPECIFIED" : Required default value.
  /// - "MAX" : Use the maximum of all values.
  /// - "SUM" : Use the sum of all values.
  core.String? aggregation;

  /// The category of the metric, e.g. "Activity", "Alerts", "Reads", etc.
  LocalizedString? category;

  /// The references to numerator and denominator metrics for a derived metric.
  DerivedMetric? derived;

  /// The displayed label of the metric.
  LocalizedString? displayLabel;

  /// Whether the metric has any non-zero data.
  core.bool? hasNonzeroData;

  /// The value that is considered hot for the metric.
  ///
  /// On a per metric basis hotness signals high utilization and something that
  /// might potentially be a cause for concern by the end user. hot_value is
  /// used to calibrate and scale visual color scales.
  core.double? hotValue;

  /// The (sparse) mapping from time index to an IndexedHotKey message,
  /// representing those time intervals for which there are hot keys.
  core.Map<core.String, IndexedHotKey>? indexedHotKeys;

  /// The (sparse) mapping from time interval index to an IndexedKeyRangeInfos
  /// message, representing those time intervals for which there are
  /// informational messages concerning key ranges.
  core.Map<core.String, IndexedKeyRangeInfos>? indexedKeyRangeInfos;

  /// Information about the metric.
  LocalizedString? info;

  /// The data for the metric as a matrix.
  MetricMatrix? matrix;

  /// The unit of the metric.
  LocalizedString? unit;

  /// Whether the metric is visible to the end user.
  core.bool? visible;

  Metric({
    this.aggregation,
    this.category,
    this.derived,
    this.displayLabel,
    this.hasNonzeroData,
    this.hotValue,
    this.indexedHotKeys,
    this.indexedKeyRangeInfos,
    this.info,
    this.matrix,
    this.unit,
    this.visible,
  });

  Metric.fromJson(core.Map _json)
      : this(
          aggregation: _json.containsKey('aggregation')
              ? _json['aggregation'] as core.String
              : null,
          category: _json.containsKey('category')
              ? LocalizedString.fromJson(
                  _json['category'] as core.Map<core.String, core.dynamic>)
              : null,
          derived: _json.containsKey('derived')
              ? DerivedMetric.fromJson(
                  _json['derived'] as core.Map<core.String, core.dynamic>)
              : null,
          displayLabel: _json.containsKey('displayLabel')
              ? LocalizedString.fromJson(
                  _json['displayLabel'] as core.Map<core.String, core.dynamic>)
              : null,
          hasNonzeroData: _json.containsKey('hasNonzeroData')
              ? _json['hasNonzeroData'] as core.bool
              : null,
          hotValue: _json.containsKey('hotValue')
              ? (_json['hotValue'] as core.num).toDouble()
              : null,
          indexedHotKeys: _json.containsKey('indexedHotKeys')
              ? (_json['indexedHotKeys'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    IndexedHotKey.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          indexedKeyRangeInfos: _json.containsKey('indexedKeyRangeInfos')
              ? (_json['indexedKeyRangeInfos']
                      as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    IndexedKeyRangeInfos.fromJson(
                        item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          info: _json.containsKey('info')
              ? LocalizedString.fromJson(
                  _json['info'] as core.Map<core.String, core.dynamic>)
              : null,
          matrix: _json.containsKey('matrix')
              ? MetricMatrix.fromJson(
                  _json['matrix'] as core.Map<core.String, core.dynamic>)
              : null,
          unit: _json.containsKey('unit')
              ? LocalizedString.fromJson(
                  _json['unit'] as core.Map<core.String, core.dynamic>)
              : null,
          visible: _json.containsKey('visible')
              ? _json['visible'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (aggregation != null) 'aggregation': aggregation!,
        if (category != null) 'category': category!,
        if (derived != null) 'derived': derived!,
        if (displayLabel != null) 'displayLabel': displayLabel!,
        if (hasNonzeroData != null) 'hasNonzeroData': hasNonzeroData!,
        if (hotValue != null) 'hotValue': hotValue!,
        if (indexedHotKeys != null) 'indexedHotKeys': indexedHotKeys!,
        if (indexedKeyRangeInfos != null)
          'indexedKeyRangeInfos': indexedKeyRangeInfos!,
        if (info != null) 'info': info!,
        if (matrix != null) 'matrix': matrix!,
        if (unit != null) 'unit': unit!,
        if (visible != null) 'visible': visible!,
      };
}

/// A message representing a matrix of floats.
class MetricMatrix {
  /// The rows of the matrix.
  core.List<MetricMatrixRow>? rows;

  MetricMatrix({
    this.rows,
  });

  MetricMatrix.fromJson(core.Map _json)
      : this(
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => MetricMatrixRow.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rows != null) 'rows': rows!,
      };
}

/// A message representing a row of a matrix of floats.
class MetricMatrixRow {
  /// The columns of the row.
  core.List<core.double>? cols;

  MetricMatrixRow({
    this.cols,
  });

  MetricMatrixRow.fromJson(core.Map _json)
      : this(
          cols: _json.containsKey('cols')
              ? (_json['cols'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cols != null) 'cols': cols!,
      };
}

/// A modification to one or more Cloud Spanner rows.
///
/// Mutations can be applied to a Cloud Spanner database by sending them in a
/// Commit call.
class Mutation {
  /// Delete rows from a table.
  ///
  /// Succeeds whether or not the named rows were present.
  Delete? delete;

  /// Insert new rows in a table.
  ///
  /// If any of the rows already exist, the write or transaction fails with
  /// error `ALREADY_EXISTS`.
  Write? insert;

  /// Like insert, except that if the row already exists, then its column values
  /// are overwritten with the ones provided.
  ///
  /// Any column values not explicitly written are preserved. When using
  /// insert_or_update, just as when using insert, all `NOT NULL` columns in the
  /// table must be given a value. This holds true even when the row already
  /// exists and will therefore actually be updated.
  Write? insertOrUpdate;

  /// Like insert, except that if the row already exists, it is deleted, and the
  /// column values provided are inserted instead.
  ///
  /// Unlike insert_or_update, this means any values not explicitly written
  /// become `NULL`. In an interleaved table, if you create the child table with
  /// the `ON DELETE CASCADE` annotation, then replacing a parent row also
  /// deletes the child rows. Otherwise, you must delete the child rows before
  /// you replace the parent row.
  Write? replace;

  /// Update existing rows in a table.
  ///
  /// If any of the rows does not already exist, the transaction fails with
  /// error `NOT_FOUND`.
  Write? update;

  Mutation({
    this.delete,
    this.insert,
    this.insertOrUpdate,
    this.replace,
    this.update,
  });

  Mutation.fromJson(core.Map _json)
      : this(
          delete: _json.containsKey('delete')
              ? Delete.fromJson(
                  _json['delete'] as core.Map<core.String, core.dynamic>)
              : null,
          insert: _json.containsKey('insert')
              ? Write.fromJson(
                  _json['insert'] as core.Map<core.String, core.dynamic>)
              : null,
          insertOrUpdate: _json.containsKey('insertOrUpdate')
              ? Write.fromJson(_json['insertOrUpdate']
                  as core.Map<core.String, core.dynamic>)
              : null,
          replace: _json.containsKey('replace')
              ? Write.fromJson(
                  _json['replace'] as core.Map<core.String, core.dynamic>)
              : null,
          update: _json.containsKey('update')
              ? Write.fromJson(
                  _json['update'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (delete != null) 'delete': delete!,
        if (insert != null) 'insert': insert!,
        if (insertOrUpdate != null) 'insertOrUpdate': insertOrUpdate!,
        if (replace != null) 'replace': replace!,
        if (update != null) 'update': update!,
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

/// Encapsulates progress related information for a Cloud Spanner long running
/// operation.
typedef OperationProgress = $OperationProgress;

/// Metadata type for the long-running operation used to track the progress of
/// optimizations performed on a newly restored database.
///
/// This long-running operation is automatically created by the system after the
/// successful completion of a database restore, and cannot be cancelled.
class OptimizeRestoredDatabaseMetadata {
  /// Name of the restored database being optimized.
  core.String? name;

  /// The progress of the post-restore optimizations.
  OperationProgress? progress;

  OptimizeRestoredDatabaseMetadata({
    this.name,
    this.progress,
  });

  OptimizeRestoredDatabaseMetadata.fromJson(core.Map _json)
      : this(
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          progress: _json.containsKey('progress')
              ? OperationProgress.fromJson(
                  _json['progress'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (progress != null) 'progress': progress!,
      };
}

/// Partial results from a streaming read or SQL query.
///
/// Streaming reads and SQL queries better tolerate large result sets, large
/// rows, and large values, but are a little trickier to consume.
class PartialResultSet {
  /// If true, then the final value in values is chunked, and must be combined
  /// with more values from subsequent `PartialResultSet`s to obtain a complete
  /// field value.
  core.bool? chunkedValue;

  /// Metadata about the result set, such as row type information.
  ///
  /// Only present in the first response.
  ResultSetMetadata? metadata;

  /// Streaming calls might be interrupted for a variety of reasons, such as TCP
  /// connection loss.
  ///
  /// If this occurs, the stream of results can be resumed by re-sending the
  /// original request and including `resume_token`. Note that executing any
  /// other transaction in the same session invalidates the token.
  core.String? resumeToken;
  core.List<core.int> get resumeTokenAsBytes =>
      convert.base64.decode(resumeToken!);

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Query plan and execution statistics for the statement that produced this
  /// streaming result set.
  ///
  /// These can be requested by setting ExecuteSqlRequest.query_mode and are
  /// sent only once with the last response in the stream. This field will also
  /// be present in the last response for DML statements.
  ResultSetStats? stats;

  /// A streamed result set consists of a stream of values, which might be split
  /// into many `PartialResultSet` messages to accommodate large rows and/or
  /// large values.
  ///
  /// Every N complete values defines a row, where N is equal to the number of
  /// entries in metadata.row_type.fields. Most values are encoded based on type
  /// as described here. It is possible that the last value in values is
  /// "chunked", meaning that the rest of the value is sent in subsequent
  /// `PartialResultSet`(s). This is denoted by the chunked_value field. Two or
  /// more chunked values can be merged to form a complete value as follows: *
  /// `bool/number/null`: cannot be chunked * `string`: concatenate the strings
  /// * `list`: concatenate the lists. If the last element in a list is a
  /// `string`, `list`, or `object`, merge it with the first element in the next
  /// list by applying these rules recursively. * `object`: concatenate the
  /// (field name, field value) pairs. If a field name is duplicated, then apply
  /// these rules recursively to merge the field values. Some examples of
  /// merging: # Strings are concatenated. "foo", "bar" => "foobar" # Lists of
  /// non-strings are concatenated. \[2, 3\], \[4\] => \[2, 3, 4\] # Lists are
  /// concatenated, but the last and first elements are merged # because they
  /// are strings. \["a", "b"\], \["c", "d"\] => \["a", "bc", "d"\] # Lists are
  /// concatenated, but the last and first elements are merged # because they
  /// are lists. Recursively, the last and first elements # of the inner lists
  /// are merged because they are strings. \["a", \["b", "c"\]\], \[\["d"\],
  /// "e"\] => \["a", \["b", "cd"\], "e"\] # Non-overlapping object fields are
  /// combined. {"a": "1"}, {"b": "2"} => {"a": "1", "b": 2"} # Overlapping
  /// object fields are merged. {"a": "1"}, {"a": "2"} => {"a": "12"} # Examples
  /// of merging objects containing lists of strings. {"a": \["1"\]}, {"a":
  /// \["2"\]} => {"a": \["12"\]} For a more complete example, suppose a
  /// streaming SQL query is yielding a result set whose rows contain a single
  /// string field. The following `PartialResultSet`s might be yielded: {
  /// "metadata": { ... } "values": \["Hello", "W"\] "chunked_value": true
  /// "resume_token": "Af65..." } { "values": \["orl"\] "chunked_value": true
  /// "resume_token": "Bqp2..." } { "values": \["d"\] "resume_token": "Zx1B..."
  /// } This sequence of `PartialResultSet`s encodes two rows, one containing
  /// the field value `"Hello"`, and a second containing the field value
  /// `"World" = "W" + "orl" + "d"`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? values;

  PartialResultSet({
    this.chunkedValue,
    this.metadata,
    this.resumeToken,
    this.stats,
    this.values,
  });

  PartialResultSet.fromJson(core.Map _json)
      : this(
          chunkedValue: _json.containsKey('chunkedValue')
              ? _json['chunkedValue'] as core.bool
              : null,
          metadata: _json.containsKey('metadata')
              ? ResultSetMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          resumeToken: _json.containsKey('resumeToken')
              ? _json['resumeToken'] as core.String
              : null,
          stats: _json.containsKey('stats')
              ? ResultSetStats.fromJson(
                  _json['stats'] as core.Map<core.String, core.dynamic>)
              : null,
          values:
              _json.containsKey('values') ? _json['values'] as core.List : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (chunkedValue != null) 'chunkedValue': chunkedValue!,
        if (metadata != null) 'metadata': metadata!,
        if (resumeToken != null) 'resumeToken': resumeToken!,
        if (stats != null) 'stats': stats!,
        if (values != null) 'values': values!,
      };
}

/// Information returned for each partition returned in a PartitionResponse.
class Partition {
  /// This token can be passed to Read, StreamingRead, ExecuteSql, or
  /// ExecuteStreamingSql requests to restrict the results to those identified
  /// by this partition token.
  core.String? partitionToken;
  core.List<core.int> get partitionTokenAsBytes =>
      convert.base64.decode(partitionToken!);

  set partitionTokenAsBytes(core.List<core.int> _bytes) {
    partitionToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  Partition({
    this.partitionToken,
  });

  Partition.fromJson(core.Map _json)
      : this(
          partitionToken: _json.containsKey('partitionToken')
              ? _json['partitionToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitionToken != null) 'partitionToken': partitionToken!,
      };
}

/// Options for a PartitionQueryRequest and PartitionReadRequest.
class PartitionOptions {
  /// **Note:** This hint is currently ignored by PartitionQuery and
  /// PartitionRead requests.
  ///
  /// The desired maximum number of partitions to return. For example, this may
  /// be set to the number of workers available. The default for this option is
  /// currently 10,000. The maximum value is currently 200,000. This is only a
  /// hint. The actual number of partitions returned may be smaller or larger
  /// than this maximum count request.
  core.String? maxPartitions;

  /// **Note:** This hint is currently ignored by PartitionQuery and
  /// PartitionRead requests.
  ///
  /// The desired data size for each partition generated. The default for this
  /// option is currently 1 GiB. This is only a hint. The actual size of each
  /// partition may be smaller or larger than this size request.
  core.String? partitionSizeBytes;

  PartitionOptions({
    this.maxPartitions,
    this.partitionSizeBytes,
  });

  PartitionOptions.fromJson(core.Map _json)
      : this(
          maxPartitions: _json.containsKey('maxPartitions')
              ? _json['maxPartitions'] as core.String
              : null,
          partitionSizeBytes: _json.containsKey('partitionSizeBytes')
              ? _json['partitionSizeBytes'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxPartitions != null) 'maxPartitions': maxPartitions!,
        if (partitionSizeBytes != null)
          'partitionSizeBytes': partitionSizeBytes!,
      };
}

/// The request for PartitionQuery
class PartitionQueryRequest {
  /// It is not always possible for Cloud Spanner to infer the right SQL type
  /// from a JSON value.
  ///
  /// For example, values of type `BYTES` and values of type `STRING` both
  /// appear in params as JSON strings. In these cases, `param_types` can be
  /// used to specify the exact SQL type for some or all of the SQL query
  /// parameters. See the definition of Type for more information about SQL
  /// types.
  core.Map<core.String, Type>? paramTypes;

  /// Parameter names and values that bind to placeholders in the SQL string.
  ///
  /// A parameter placeholder consists of the `@` character followed by the
  /// parameter name (for example, `@firstName`). Parameter names can contain
  /// letters, numbers, and underscores. Parameters can appear anywhere that a
  /// literal value is expected. The same parameter name can be used more than
  /// once, for example: `"WHERE id > @msg_id AND id < @msg_id + 100"` It is an
  /// error to execute a SQL statement with unbound parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// Additional options that affect how many partitions are created.
  PartitionOptions? partitionOptions;

  /// The query request to generate partitions for.
  ///
  /// The request will fail if the query is not root partitionable. The query
  /// plan of a root partitionable query has a single distributed union
  /// operator. A distributed union operator conceptually divides one or more
  /// tables into multiple splits, remotely evaluates a subquery independently
  /// on each split, and then unions all results. This must not contain DML
  /// commands, such as INSERT, UPDATE, or DELETE. Use ExecuteStreamingSql with
  /// a PartitionedDml transaction for large, partition-friendly DML operations.
  ///
  /// Required.
  core.String? sql;

  /// Read only snapshot transactions are supported, read/write and single use
  /// transactions are not.
  TransactionSelector? transaction;

  PartitionQueryRequest({
    this.paramTypes,
    this.params,
    this.partitionOptions,
    this.sql,
    this.transaction,
  });

  PartitionQueryRequest.fromJson(core.Map _json)
      : this(
          paramTypes: _json.containsKey('paramTypes')
              ? (_json['paramTypes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Type.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          params: _json.containsKey('params')
              ? _json['params'] as core.Map<core.String, core.dynamic>
              : null,
          partitionOptions: _json.containsKey('partitionOptions')
              ? PartitionOptions.fromJson(_json['partitionOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sql: _json.containsKey('sql') ? _json['sql'] as core.String : null,
          transaction: _json.containsKey('transaction')
              ? TransactionSelector.fromJson(
                  _json['transaction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (paramTypes != null) 'paramTypes': paramTypes!,
        if (params != null) 'params': params!,
        if (partitionOptions != null) 'partitionOptions': partitionOptions!,
        if (sql != null) 'sql': sql!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The request for PartitionRead
class PartitionReadRequest {
  /// The columns of table to be returned for each row matching this request.
  core.List<core.String>? columns;

  /// If non-empty, the name of an index on table.
  ///
  /// This index is used instead of the table primary key when interpreting
  /// key_set and sorting result rows. See key_set for further information.
  core.String? index;

  /// `key_set` identifies the rows to be yielded.
  ///
  /// `key_set` names the primary keys of the rows in table to be yielded,
  /// unless index is present. If index is present, then key_set instead names
  /// index keys in index. It is not an error for the `key_set` to name rows
  /// that do not exist in the database. Read yields nothing for nonexistent
  /// rows.
  ///
  /// Required.
  KeySet? keySet;

  /// Additional options that affect how many partitions are created.
  PartitionOptions? partitionOptions;

  /// The name of the table in the database to be read.
  ///
  /// Required.
  core.String? table;

  /// Read only snapshot transactions are supported, read/write and single use
  /// transactions are not.
  TransactionSelector? transaction;

  PartitionReadRequest({
    this.columns,
    this.index,
    this.keySet,
    this.partitionOptions,
    this.table,
    this.transaction,
  });

  PartitionReadRequest.fromJson(core.Map _json)
      : this(
          columns: _json.containsKey('columns')
              ? (_json['columns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          index:
              _json.containsKey('index') ? _json['index'] as core.String : null,
          keySet: _json.containsKey('keySet')
              ? KeySet.fromJson(
                  _json['keySet'] as core.Map<core.String, core.dynamic>)
              : null,
          partitionOptions: _json.containsKey('partitionOptions')
              ? PartitionOptions.fromJson(_json['partitionOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
          transaction: _json.containsKey('transaction')
              ? TransactionSelector.fromJson(
                  _json['transaction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (index != null) 'index': index!,
        if (keySet != null) 'keySet': keySet!,
        if (partitionOptions != null) 'partitionOptions': partitionOptions!,
        if (table != null) 'table': table!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// The response for PartitionQuery or PartitionRead
class PartitionResponse {
  /// Partitions created by this request.
  core.List<Partition>? partitions;

  /// Transaction created by this request.
  Transaction? transaction;

  PartitionResponse({
    this.partitions,
    this.transaction,
  });

  PartitionResponse.fromJson(core.Map _json)
      : this(
          partitions: _json.containsKey('partitions')
              ? (_json['partitions'] as core.List)
                  .map((value) => Partition.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transaction: _json.containsKey('transaction')
              ? Transaction.fromJson(
                  _json['transaction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitions != null) 'partitions': partitions!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// Message type to initiate a Partitioned DML transaction.
typedef PartitionedDml = $Empty;

/// Node information for nodes appearing in a QueryPlan.plan_nodes.
class PlanNode {
  /// List of child node `index`es and their relationship to this parent.
  core.List<ChildLink>? childLinks;

  /// The display name for the node.
  core.String? displayName;

  /// The execution statistics associated with the node, contained in a group of
  /// key-value pairs.
  ///
  /// Only present if the plan was returned as a result of a profile query. For
  /// example, number of executions, number of rows/time per execution etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? executionStats;

  /// The `PlanNode`'s index in node list.
  core.int? index;

  /// Used to determine the type of node.
  ///
  /// May be needed for visualizing different kinds of nodes differently. For
  /// example, If the node is a SCALAR node, it will have a condensed
  /// representation which can be used to directly embed a description of the
  /// node in its parent.
  /// Possible string values are:
  /// - "KIND_UNSPECIFIED" : Not specified.
  /// - "RELATIONAL" : Denotes a Relational operator node in the expression
  /// tree. Relational operators represent iterative processing of rows during
  /// query execution. For example, a `TableScan` operation that reads rows from
  /// a table.
  /// - "SCALAR" : Denotes a Scalar node in the expression tree. Scalar nodes
  /// represent non-iterable entities in the query plan. For example, constants
  /// or arithmetic operators appearing inside predicate expressions or
  /// references to column names.
  core.String? kind;

  /// Attributes relevant to the node contained in a group of key-value pairs.
  ///
  /// For example, a Parameter Reference node could have the following
  /// information in its metadata: { "parameter_reference": "param1",
  /// "parameter_type": "array" }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? metadata;

  /// Condensed representation for SCALAR nodes.
  ShortRepresentation? shortRepresentation;

  PlanNode({
    this.childLinks,
    this.displayName,
    this.executionStats,
    this.index,
    this.kind,
    this.metadata,
    this.shortRepresentation,
  });

  PlanNode.fromJson(core.Map _json)
      : this(
          childLinks: _json.containsKey('childLinks')
              ? (_json['childLinks'] as core.List)
                  .map((value) => ChildLink.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          executionStats: _json.containsKey('executionStats')
              ? _json['executionStats'] as core.Map<core.String, core.dynamic>
              : null,
          index: _json.containsKey('index') ? _json['index'] as core.int : null,
          kind: _json.containsKey('kind') ? _json['kind'] as core.String : null,
          metadata: _json.containsKey('metadata')
              ? _json['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          shortRepresentation: _json.containsKey('shortRepresentation')
              ? ShortRepresentation.fromJson(_json['shortRepresentation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (childLinks != null) 'childLinks': childLinks!,
        if (displayName != null) 'displayName': displayName!,
        if (executionStats != null) 'executionStats': executionStats!,
        if (index != null) 'index': index!,
        if (kind != null) 'kind': kind!,
        if (metadata != null) 'metadata': metadata!,
        if (shortRepresentation != null)
          'shortRepresentation': shortRepresentation!,
      };
}

/// An Identity and Access Management (IAM) policy, which specifies access
/// controls for Google Cloud resources.
///
/// A `Policy` is a collection of `bindings`. A `binding` binds one or more
/// `members` to a single `role`. Members can be user accounts, service
/// accounts, Google groups, and domains (such as G Suite). A `role` is a named
/// list of permissions; each `role` can be an IAM predefined role or a
/// user-created custom role. For some types of Google Cloud resources, a
/// `binding` can also specify a `condition`, which is a logical expression that
/// allows access to a resource only if the expression evaluates to `true`. A
/// condition can add constraints based on attributes of the request, the
/// resource, or both. To learn which resources support conditions in their IAM
/// policies, see the
/// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
/// **JSON example:** { "bindings": \[ { "role":
/// "roles/resourcemanager.organizationAdmin", "members": \[
/// "user:mike@example.com", "group:admins@example.com", "domain:google.com",
/// "serviceAccount:my-project-id@appspot.gserviceaccount.com" \] }, { "role":
/// "roles/resourcemanager.organizationViewer", "members": \[
/// "user:eve@example.com" \], "condition": { "title": "expirable access",
/// "description": "Does not grant access after Sep 2020", "expression":
/// "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } \], "etag":
/// "BwWWja0YfJA=", "version": 3 } **YAML example:** bindings: - members: -
/// user:mike@example.com - group:admins@example.com - domain:google.com -
/// serviceAccount:my-project-id@appspot.gserviceaccount.com role:
/// roles/resourcemanager.organizationAdmin - members: - user:eve@example.com
/// role: roles/resourcemanager.organizationViewer condition: title: expirable
/// access description: Does not grant access after Sep 2020 expression:
/// request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA=
/// version: 3 For a description of IAM and its features, see the
/// [IAM documentation](https://cloud.google.com/iam/docs/).
class Policy {
  /// Associates a list of `members` to a `role`.
  ///
  /// Optionally, may specify a `condition` that determines how and when the
  /// `bindings` are applied. Each of the `bindings` must contain at least one
  /// member.
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
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map _json)
      : this(
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
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// A message representing a key prefix node in the key prefix hierarchy.
///
/// for eg. Bigtable keyspaces are lexicographically ordered mappings of keys to
/// values. Keys often have a shared prefix structure where users use the keys
/// to organize data. Eg ///employee In this case Keysight will possibly use one
/// node for a company and reuse it for all employees that fall under the
/// company. Doing so improves legibility in the UI.
class PrefixNode {
  /// Whether this corresponds to a data_source name.
  core.bool? dataSourceNode;

  /// The depth in the prefix hierarchy.
  core.int? depth;

  /// The index of the end key bucket of the range that this node spans.
  core.int? endIndex;

  /// The index of the start key bucket of the range that this node spans.
  core.int? startIndex;

  /// The string represented by the prefix node.
  core.String? word;

  PrefixNode({
    this.dataSourceNode,
    this.depth,
    this.endIndex,
    this.startIndex,
    this.word,
  });

  PrefixNode.fromJson(core.Map _json)
      : this(
          dataSourceNode: _json.containsKey('dataSourceNode')
              ? _json['dataSourceNode'] as core.bool
              : null,
          depth: _json.containsKey('depth') ? _json['depth'] as core.int : null,
          endIndex: _json.containsKey('endIndex')
              ? _json['endIndex'] as core.int
              : null,
          startIndex: _json.containsKey('startIndex')
              ? _json['startIndex'] as core.int
              : null,
          word: _json.containsKey('word') ? _json['word'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceNode != null) 'dataSourceNode': dataSourceNode!,
        if (depth != null) 'depth': depth!,
        if (endIndex != null) 'endIndex': endIndex!,
        if (startIndex != null) 'startIndex': startIndex!,
        if (word != null) 'word': word!,
      };
}

/// Query optimizer configuration.
class QueryOptions {
  /// An option to control the selection of optimizer statistics package.
  ///
  /// This parameter allows individual queries to use a different query
  /// optimizer statistics package. Specifying `latest` as a value instructs
  /// Cloud Spanner to use the latest generated statistics package. If not
  /// specified, Cloud Spanner uses the statistics package set at the database
  /// level options, or the latest package if the database option is not set.
  /// The statistics package requested by the query has to be exempt from
  /// garbage collection. This can be achieved with the following DDL statement:
  /// ``` ALTER STATISTICS SET OPTIONS (allow_gc=false) ``` The list of
  /// available statistics packages can be queried from
  /// `INFORMATION_SCHEMA.SPANNER_STATISTICS`. Executing a SQL statement with an
  /// invalid optimizer statistics package or with a statistics package that
  /// allows garbage collection fails with an `INVALID_ARGUMENT` error.
  core.String? optimizerStatisticsPackage;

  /// An option to control the selection of optimizer version.
  ///
  /// This parameter allows individual queries to pick different query optimizer
  /// versions. Specifying `latest` as a value instructs Cloud Spanner to use
  /// the latest supported query optimizer version. If not specified, Cloud
  /// Spanner uses the optimizer version set at the database level options. Any
  /// other positive integer (from the list of supported optimizer versions)
  /// overrides the default optimizer version for query execution. The list of
  /// supported optimizer versions can be queried from
  /// SPANNER_SYS.SUPPORTED_OPTIMIZER_VERSIONS. Executing a SQL statement with
  /// an invalid optimizer version fails with an `INVALID_ARGUMENT` error. See
  /// https://cloud.google.com/spanner/docs/query-optimizer/manage-query-optimizer
  /// for more information on managing the query optimizer. The
  /// `optimizer_version` statement hint has precedence over this setting.
  core.String? optimizerVersion;

  QueryOptions({
    this.optimizerStatisticsPackage,
    this.optimizerVersion,
  });

  QueryOptions.fromJson(core.Map _json)
      : this(
          optimizerStatisticsPackage:
              _json.containsKey('optimizerStatisticsPackage')
                  ? _json['optimizerStatisticsPackage'] as core.String
                  : null,
          optimizerVersion: _json.containsKey('optimizerVersion')
              ? _json['optimizerVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (optimizerStatisticsPackage != null)
          'optimizerStatisticsPackage': optimizerStatisticsPackage!,
        if (optimizerVersion != null) 'optimizerVersion': optimizerVersion!,
      };
}

/// Contains an ordered list of nodes appearing in the query plan.
class QueryPlan {
  /// The nodes in the query plan.
  ///
  /// Plan nodes are returned in pre-order starting with the plan root. Each
  /// PlanNode's `id` corresponds to its index in `plan_nodes`.
  core.List<PlanNode>? planNodes;

  QueryPlan({
    this.planNodes,
  });

  QueryPlan.fromJson(core.Map _json)
      : this(
          planNodes: _json.containsKey('planNodes')
              ? (_json['planNodes'] as core.List)
                  .map((value) => PlanNode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (planNodes != null) 'planNodes': planNodes!,
      };
}

/// Message type to initiate a read-only transaction.
class ReadOnly {
  /// Executes all reads at a timestamp that is `exact_staleness` old.
  ///
  /// The timestamp is chosen soon after the read is started. Guarantees that
  /// all writes that have committed more than the specified number of seconds
  /// ago are visible. Because Cloud Spanner chooses the exact timestamp, this
  /// mode works even if the client's local clock is substantially skewed from
  /// Cloud Spanner commit timestamps. Useful for reading at nearby replicas
  /// without the distributed timestamp negotiation overhead of `max_staleness`.
  core.String? exactStaleness;

  /// Read data at a timestamp >= `NOW - max_staleness` seconds.
  ///
  /// Guarantees that all writes that have committed more than the specified
  /// number of seconds ago are visible. Because Cloud Spanner chooses the exact
  /// timestamp, this mode works even if the client's local clock is
  /// substantially skewed from Cloud Spanner commit timestamps. Useful for
  /// reading the freshest data available at a nearby replica, while bounding
  /// the possible staleness if the local replica has fallen behind. Note that
  /// this option can only be used in single-use transactions.
  core.String? maxStaleness;

  /// Executes all reads at a timestamp >= `min_read_timestamp`.
  ///
  /// This is useful for requesting fresher data than some previous read, or
  /// data that is fresh enough to observe the effects of some previously
  /// committed transaction whose timestamp is known. Note that this option can
  /// only be used in single-use transactions. A timestamp in RFC3339 UTC
  /// \"Zulu\" format, accurate to nanoseconds. Example:
  /// `"2014-10-02T15:01:23.045123456Z"`.
  core.String? minReadTimestamp;

  /// Executes all reads at the given timestamp.
  ///
  /// Unlike other modes, reads at a specific timestamp are repeatable; the same
  /// read at the same timestamp always returns the same data. If the timestamp
  /// is in the future, the read will block until the specified timestamp,
  /// modulo the read's deadline. Useful for large scale consistent reads such
  /// as mapreduces, or for coordinating many reads against a consistent
  /// snapshot of the data. A timestamp in RFC3339 UTC \"Zulu\" format, accurate
  /// to nanoseconds. Example: `"2014-10-02T15:01:23.045123456Z"`.
  core.String? readTimestamp;

  /// If true, the Cloud Spanner-selected read timestamp is included in the
  /// Transaction message that describes the transaction.
  core.bool? returnReadTimestamp;

  /// Read at a timestamp where all previously committed transactions are
  /// visible.
  core.bool? strong;

  ReadOnly({
    this.exactStaleness,
    this.maxStaleness,
    this.minReadTimestamp,
    this.readTimestamp,
    this.returnReadTimestamp,
    this.strong,
  });

  ReadOnly.fromJson(core.Map _json)
      : this(
          exactStaleness: _json.containsKey('exactStaleness')
              ? _json['exactStaleness'] as core.String
              : null,
          maxStaleness: _json.containsKey('maxStaleness')
              ? _json['maxStaleness'] as core.String
              : null,
          minReadTimestamp: _json.containsKey('minReadTimestamp')
              ? _json['minReadTimestamp'] as core.String
              : null,
          readTimestamp: _json.containsKey('readTimestamp')
              ? _json['readTimestamp'] as core.String
              : null,
          returnReadTimestamp: _json.containsKey('returnReadTimestamp')
              ? _json['returnReadTimestamp'] as core.bool
              : null,
          strong:
              _json.containsKey('strong') ? _json['strong'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exactStaleness != null) 'exactStaleness': exactStaleness!,
        if (maxStaleness != null) 'maxStaleness': maxStaleness!,
        if (minReadTimestamp != null) 'minReadTimestamp': minReadTimestamp!,
        if (readTimestamp != null) 'readTimestamp': readTimestamp!,
        if (returnReadTimestamp != null)
          'returnReadTimestamp': returnReadTimestamp!,
        if (strong != null) 'strong': strong!,
      };
}

/// The request for Read and StreamingRead.
class ReadRequest {
  /// The columns of table to be returned for each row matching this request.
  ///
  /// Required.
  core.List<core.String>? columns;

  /// If non-empty, the name of an index on table.
  ///
  /// This index is used instead of the table primary key when interpreting
  /// key_set and sorting result rows. See key_set for further information.
  core.String? index;

  /// `key_set` identifies the rows to be yielded.
  ///
  /// `key_set` names the primary keys of the rows in table to be yielded,
  /// unless index is present. If index is present, then key_set instead names
  /// index keys in index. If the partition_token field is empty, rows are
  /// yielded in table primary key order (if index is empty) or index key order
  /// (if index is non-empty). If the partition_token field is not empty, rows
  /// will be yielded in an unspecified order. It is not an error for the
  /// `key_set` to name rows that do not exist in the database. Read yields
  /// nothing for nonexistent rows.
  ///
  /// Required.
  KeySet? keySet;

  /// If greater than zero, only the first `limit` rows are yielded.
  ///
  /// If `limit` is zero, the default is no limit. A limit cannot be specified
  /// if `partition_token` is set.
  core.String? limit;

  /// If present, results will be restricted to the specified partition
  /// previously created using PartitionRead().
  ///
  /// There must be an exact match for the values of fields common to this
  /// message and the PartitionReadRequest message used to create this
  /// partition_token.
  core.String? partitionToken;
  core.List<core.int> get partitionTokenAsBytes =>
      convert.base64.decode(partitionToken!);

  set partitionTokenAsBytes(core.List<core.int> _bytes) {
    partitionToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Common options for this request.
  RequestOptions? requestOptions;

  /// If this request is resuming a previously interrupted read, `resume_token`
  /// should be copied from the last PartialResultSet yielded before the
  /// interruption.
  ///
  /// Doing this enables the new read to resume where the last read left off.
  /// The rest of the request parameters must exactly match the request that
  /// yielded this token.
  core.String? resumeToken;
  core.List<core.int> get resumeTokenAsBytes =>
      convert.base64.decode(resumeToken!);

  set resumeTokenAsBytes(core.List<core.int> _bytes) {
    resumeToken =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The name of the table in the database to be read.
  ///
  /// Required.
  core.String? table;

  /// The transaction to use.
  ///
  /// If none is provided, the default is a temporary read-only transaction with
  /// strong concurrency.
  TransactionSelector? transaction;

  ReadRequest({
    this.columns,
    this.index,
    this.keySet,
    this.limit,
    this.partitionToken,
    this.requestOptions,
    this.resumeToken,
    this.table,
    this.transaction,
  });

  ReadRequest.fromJson(core.Map _json)
      : this(
          columns: _json.containsKey('columns')
              ? (_json['columns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          index:
              _json.containsKey('index') ? _json['index'] as core.String : null,
          keySet: _json.containsKey('keySet')
              ? KeySet.fromJson(
                  _json['keySet'] as core.Map<core.String, core.dynamic>)
              : null,
          limit:
              _json.containsKey('limit') ? _json['limit'] as core.String : null,
          partitionToken: _json.containsKey('partitionToken')
              ? _json['partitionToken'] as core.String
              : null,
          requestOptions: _json.containsKey('requestOptions')
              ? RequestOptions.fromJson(_json['requestOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resumeToken: _json.containsKey('resumeToken')
              ? _json['resumeToken'] as core.String
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
          transaction: _json.containsKey('transaction')
              ? TransactionSelector.fromJson(
                  _json['transaction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (index != null) 'index': index!,
        if (keySet != null) 'keySet': keySet!,
        if (limit != null) 'limit': limit!,
        if (partitionToken != null) 'partitionToken': partitionToken!,
        if (requestOptions != null) 'requestOptions': requestOptions!,
        if (resumeToken != null) 'resumeToken': resumeToken!,
        if (table != null) 'table': table!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// Message type to initiate a read-write transaction.
///
/// Currently this transaction type has no options.
typedef ReadWrite = $Empty;

class ReplicaInfo {
  /// If true, this location is designated as the default leader location where
  /// leader replicas are placed.
  ///
  /// See the
  /// [region types documentation](https://cloud.google.com/spanner/docs/instances#region_types)
  /// for more details.
  core.bool? defaultLeaderLocation;

  /// The location of the serving resources, e.g. "us-central1".
  core.String? location;

  /// The type of replica.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Not specified.
  /// - "READ_WRITE" : Read-write replicas support both reads and writes. These
  /// replicas: * Maintain a full copy of your data. * Serve reads. * Can vote
  /// whether to commit a write. * Participate in leadership election. * Are
  /// eligible to become a leader.
  /// - "READ_ONLY" : Read-only replicas only support reads (not writes).
  /// Read-only replicas: * Maintain a full copy of your data. * Serve reads. *
  /// Do not participate in voting to commit writes. * Are not eligible to
  /// become a leader.
  /// - "WITNESS" : Witness replicas don't support reads but do participate in
  /// voting to commit writes. Witness replicas: * Do not maintain a full copy
  /// of data. * Do not serve reads. * Vote whether to commit writes. *
  /// Participate in leader election but are not eligible to become leader.
  core.String? type;

  ReplicaInfo({
    this.defaultLeaderLocation,
    this.location,
    this.type,
  });

  ReplicaInfo.fromJson(core.Map _json)
      : this(
          defaultLeaderLocation: _json.containsKey('defaultLeaderLocation')
              ? _json['defaultLeaderLocation'] as core.bool
              : null,
          location: _json.containsKey('location')
              ? _json['location'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (defaultLeaderLocation != null)
          'defaultLeaderLocation': defaultLeaderLocation!,
        if (location != null) 'location': location!,
        if (type != null) 'type': type!,
      };
}

/// Common request options for various APIs.
class RequestOptions {
  /// Priority for the request.
  /// Possible string values are:
  /// - "PRIORITY_UNSPECIFIED" : `PRIORITY_UNSPECIFIED` is equivalent to
  /// `PRIORITY_HIGH`.
  /// - "PRIORITY_LOW" : This specifies that the request is low priority.
  /// - "PRIORITY_MEDIUM" : This specifies that the request is medium priority.
  /// - "PRIORITY_HIGH" : This specifies that the request is high priority.
  core.String? priority;

  /// A per-request tag which can be applied to queries or reads, used for
  /// statistics collection.
  ///
  /// Both request_tag and transaction_tag can be specified for a read or query
  /// that belongs to a transaction. This field is ignored for requests where
  /// it's not applicable (e.g. CommitRequest). Legal characters for
  /// `request_tag` values are all printable characters (ASCII 32 - 126) and the
  /// length of a request_tag is limited to 50 characters. Values that exceed
  /// this limit are truncated. Any leading underscore (_) characters will be
  /// removed from the string.
  core.String? requestTag;

  /// A tag used for statistics collection about this transaction.
  ///
  /// Both request_tag and transaction_tag can be specified for a read or query
  /// that belongs to a transaction. The value of transaction_tag should be the
  /// same for all requests belonging to the same transaction. If this request
  /// doesn’t belong to any transaction, transaction_tag will be ignored. Legal
  /// characters for `transaction_tag` values are all printable characters
  /// (ASCII 32 - 126) and the length of a transaction_tag is limited to 50
  /// characters. Values that exceed this limit are truncated. Any leading
  /// underscore (_) characters will be removed from the string.
  core.String? transactionTag;

  RequestOptions({
    this.priority,
    this.requestTag,
    this.transactionTag,
  });

  RequestOptions.fromJson(core.Map _json)
      : this(
          priority: _json.containsKey('priority')
              ? _json['priority'] as core.String
              : null,
          requestTag: _json.containsKey('requestTag')
              ? _json['requestTag'] as core.String
              : null,
          transactionTag: _json.containsKey('transactionTag')
              ? _json['transactionTag'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (priority != null) 'priority': priority!,
        if (requestTag != null) 'requestTag': requestTag!,
        if (transactionTag != null) 'transactionTag': transactionTag!,
      };
}

/// Encryption configuration for the restored database.
class RestoreDatabaseEncryptionConfig {
  /// The encryption type of the restored database.
  ///
  /// Required.
  /// Possible string values are:
  /// - "ENCRYPTION_TYPE_UNSPECIFIED" : Unspecified. Do not use.
  /// - "USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION" : This is the default option
  /// when encryption_config is not specified.
  /// - "GOOGLE_DEFAULT_ENCRYPTION" : Use Google default encryption.
  /// - "CUSTOMER_MANAGED_ENCRYPTION" : Use customer managed encryption. If
  /// specified, `kms_key_name` must must contain a valid Cloud KMS key.
  core.String? encryptionType;

  /// The Cloud KMS key that will be used to encrypt/decrypt the restored
  /// database.
  ///
  /// This field should be set only when encryption_type is
  /// `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form
  /// `projects//locations//keyRings//cryptoKeys/`.
  ///
  /// Optional.
  core.String? kmsKeyName;

  RestoreDatabaseEncryptionConfig({
    this.encryptionType,
    this.kmsKeyName,
  });

  RestoreDatabaseEncryptionConfig.fromJson(core.Map _json)
      : this(
          encryptionType: _json.containsKey('encryptionType')
              ? _json['encryptionType'] as core.String
              : null,
          kmsKeyName: _json.containsKey('kmsKeyName')
              ? _json['kmsKeyName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (encryptionType != null) 'encryptionType': encryptionType!,
        if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
      };
}

/// Metadata type for the long-running operation returned by RestoreDatabase.
class RestoreDatabaseMetadata {
  /// Information about the backup used to restore the database.
  BackupInfo? backupInfo;

  /// The time at which cancellation of this operation was received.
  ///
  /// Operations.CancelOperation starts asynchronous cancellation on a
  /// long-running operation. The server makes a best effort to cancel the
  /// operation, but success is not guaranteed. Clients can use
  /// Operations.GetOperation or other methods to check whether the cancellation
  /// succeeded or whether the operation completed despite cancellation. On
  /// successful cancellation, the operation is not deleted; instead, it becomes
  /// an operation with an Operation.error value with a google.rpc.Status.code
  /// of 1, corresponding to `Code.CANCELLED`.
  core.String? cancelTime;

  /// Name of the database being created and restored to.
  core.String? name;

  /// If exists, the name of the long-running operation that will be used to
  /// track the post-restore optimization process to optimize the performance of
  /// the restored database, and remove the dependency on the restore source.
  ///
  /// The name is of the form `projects//instances//databases//operations/`
  /// where the is the name of database being created and restored to. The
  /// metadata type of the long-running operation is
  /// OptimizeRestoredDatabaseMetadata. This long-running operation will be
  /// automatically created by the system after the RestoreDatabase long-running
  /// operation completes successfully. This operation will not be created if
  /// the restore was not successful.
  core.String? optimizeDatabaseOperationName;

  /// The progress of the RestoreDatabase operation.
  OperationProgress? progress;

  /// The type of the restore source.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : No restore associated.
  /// - "BACKUP" : A backup was used as the source of the restore.
  core.String? sourceType;

  RestoreDatabaseMetadata({
    this.backupInfo,
    this.cancelTime,
    this.name,
    this.optimizeDatabaseOperationName,
    this.progress,
    this.sourceType,
  });

  RestoreDatabaseMetadata.fromJson(core.Map _json)
      : this(
          backupInfo: _json.containsKey('backupInfo')
              ? BackupInfo.fromJson(
                  _json['backupInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          cancelTime: _json.containsKey('cancelTime')
              ? _json['cancelTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          optimizeDatabaseOperationName:
              _json.containsKey('optimizeDatabaseOperationName')
                  ? _json['optimizeDatabaseOperationName'] as core.String
                  : null,
          progress: _json.containsKey('progress')
              ? OperationProgress.fromJson(
                  _json['progress'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceType: _json.containsKey('sourceType')
              ? _json['sourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupInfo != null) 'backupInfo': backupInfo!,
        if (cancelTime != null) 'cancelTime': cancelTime!,
        if (name != null) 'name': name!,
        if (optimizeDatabaseOperationName != null)
          'optimizeDatabaseOperationName': optimizeDatabaseOperationName!,
        if (progress != null) 'progress': progress!,
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// The request for RestoreDatabase.
class RestoreDatabaseRequest {
  /// Name of the backup from which to restore.
  ///
  /// Values are of the form `projects//instances//backups/`.
  core.String? backup;

  /// The id of the database to create and restore to.
  ///
  /// This database must not already exist. The `database_id` appended to
  /// `parent` forms the full database name of the form
  /// `projects//instances//databases/`.
  ///
  /// Required.
  core.String? databaseId;

  /// An encryption configuration describing the encryption type and key
  /// resources in Cloud KMS used to encrypt/decrypt the database to restore to.
  ///
  /// If this field is not specified, the restored database will use the same
  /// encryption configuration as the backup by default, namely encryption_type
  /// = `USE_CONFIG_DEFAULT_OR_BACKUP_ENCRYPTION`.
  ///
  /// Optional.
  RestoreDatabaseEncryptionConfig? encryptionConfig;

  RestoreDatabaseRequest({
    this.backup,
    this.databaseId,
    this.encryptionConfig,
  });

  RestoreDatabaseRequest.fromJson(core.Map _json)
      : this(
          backup: _json.containsKey('backup')
              ? _json['backup'] as core.String
              : null,
          databaseId: _json.containsKey('databaseId')
              ? _json['databaseId'] as core.String
              : null,
          encryptionConfig: _json.containsKey('encryptionConfig')
              ? RestoreDatabaseEncryptionConfig.fromJson(
                  _json['encryptionConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backup != null) 'backup': backup!,
        if (databaseId != null) 'databaseId': databaseId!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
      };
}

/// Information about the database restore.
class RestoreInfo {
  /// Information about the backup used to restore the database.
  ///
  /// The backup may no longer exist.
  BackupInfo? backupInfo;

  /// The type of the restore source.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : No restore associated.
  /// - "BACKUP" : A backup was used as the source of the restore.
  core.String? sourceType;

  RestoreInfo({
    this.backupInfo,
    this.sourceType,
  });

  RestoreInfo.fromJson(core.Map _json)
      : this(
          backupInfo: _json.containsKey('backupInfo')
              ? BackupInfo.fromJson(
                  _json['backupInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          sourceType: _json.containsKey('sourceType')
              ? _json['sourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupInfo != null) 'backupInfo': backupInfo!,
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// Results from Read or ExecuteSql.
class ResultSet {
  /// Metadata about the result set, such as row type information.
  ResultSetMetadata? metadata;

  /// Each element in `rows` is a row whose format is defined by
  /// metadata.row_type.
  ///
  /// The ith element in each row matches the ith field in metadata.row_type.
  /// Elements are encoded based on type as described here.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object?>>? rows;

  /// Query plan and execution statistics for the SQL statement that produced
  /// this result set.
  ///
  /// These can be requested by setting ExecuteSqlRequest.query_mode. DML
  /// statements always produce stats containing the number of rows modified,
  /// unless executed using the ExecuteSqlRequest.QueryMode.PLAN
  /// ExecuteSqlRequest.query_mode. Other fields may or may not be populated,
  /// based on the ExecuteSqlRequest.query_mode.
  ResultSetStats? stats;

  ResultSet({
    this.metadata,
    this.rows,
    this.stats,
  });

  ResultSet.fromJson(core.Map _json)
      : this(
          metadata: _json.containsKey('metadata')
              ? ResultSetMetadata.fromJson(
                  _json['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          rows: _json.containsKey('rows')
              ? (_json['rows'] as core.List)
                  .map((value) => value as core.List)
                  .toList()
              : null,
          stats: _json.containsKey('stats')
              ? ResultSetStats.fromJson(
                  _json['stats'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (rows != null) 'rows': rows!,
        if (stats != null) 'stats': stats!,
      };
}

/// Metadata about a ResultSet or PartialResultSet.
class ResultSetMetadata {
  /// Indicates the field names and types for the rows in the result set.
  ///
  /// For example, a SQL query like `"SELECT UserId, UserName FROM Users"` could
  /// return a `row_type` value like: "fields": \[ { "name": "UserId", "type": {
  /// "code": "INT64" } }, { "name": "UserName", "type": { "code": "STRING" } },
  /// \]
  StructType? rowType;

  /// If the read or SQL query began a transaction as a side-effect, the
  /// information about the new transaction is yielded here.
  Transaction? transaction;

  ResultSetMetadata({
    this.rowType,
    this.transaction,
  });

  ResultSetMetadata.fromJson(core.Map _json)
      : this(
          rowType: _json.containsKey('rowType')
              ? StructType.fromJson(
                  _json['rowType'] as core.Map<core.String, core.dynamic>)
              : null,
          transaction: _json.containsKey('transaction')
              ? Transaction.fromJson(
                  _json['transaction'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rowType != null) 'rowType': rowType!,
        if (transaction != null) 'transaction': transaction!,
      };
}

/// Additional statistics about a ResultSet or PartialResultSet.
class ResultSetStats {
  /// QueryPlan for the query associated with this result.
  QueryPlan? queryPlan;

  /// Aggregated statistics from the execution of the query.
  ///
  /// Only present when the query is profiled. For example, a query could return
  /// the statistics as follows: { "rows_returned": "3", "elapsed_time": "1.22
  /// secs", "cpu_time": "1.19 secs" }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? queryStats;

  /// Standard DML returns an exact count of rows that were modified.
  core.String? rowCountExact;

  /// Partitioned DML does not offer exactly-once semantics, so it returns a
  /// lower bound of the rows modified.
  core.String? rowCountLowerBound;

  ResultSetStats({
    this.queryPlan,
    this.queryStats,
    this.rowCountExact,
    this.rowCountLowerBound,
  });

  ResultSetStats.fromJson(core.Map _json)
      : this(
          queryPlan: _json.containsKey('queryPlan')
              ? QueryPlan.fromJson(
                  _json['queryPlan'] as core.Map<core.String, core.dynamic>)
              : null,
          queryStats: _json.containsKey('queryStats')
              ? _json['queryStats'] as core.Map<core.String, core.dynamic>
              : null,
          rowCountExact: _json.containsKey('rowCountExact')
              ? _json['rowCountExact'] as core.String
              : null,
          rowCountLowerBound: _json.containsKey('rowCountLowerBound')
              ? _json['rowCountLowerBound'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (queryPlan != null) 'queryPlan': queryPlan!,
        if (queryStats != null) 'queryStats': queryStats!,
        if (rowCountExact != null) 'rowCountExact': rowCountExact!,
        if (rowCountLowerBound != null)
          'rowCountLowerBound': rowCountLowerBound!,
      };
}

/// The request for Rollback.
class RollbackRequest {
  /// The transaction to roll back.
  ///
  /// Required.
  core.String? transactionId;
  core.List<core.int> get transactionIdAsBytes =>
      convert.base64.decode(transactionId!);

  set transactionIdAsBytes(core.List<core.int> _bytes) {
    transactionId =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  RollbackRequest({
    this.transactionId,
  });

  RollbackRequest.fromJson(core.Map _json)
      : this(
          transactionId: _json.containsKey('transactionId')
              ? _json['transactionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (transactionId != null) 'transactionId': transactionId!,
      };
}

/// Scan is a structure which describes Cloud Key Visualizer scan information.
class Scan {
  /// Additional information provided by the implementer.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? details;

  /// The upper bound for when the scan is defined.
  core.String? endTime;

  /// The unique name of the scan, specific to the Database service implementing
  /// this interface.
  core.String? name;

  /// Cloud Key Visualizer scan data.
  ///
  /// Note, this field is not available to the ListScans method.
  ///
  /// Output only.
  ScanData? scanData;

  /// A range of time (inclusive) for when the scan is defined.
  ///
  /// The lower bound for when the scan is defined.
  core.String? startTime;

  Scan({
    this.details,
    this.endTime,
    this.name,
    this.scanData,
    this.startTime,
  });

  Scan.fromJson(core.Map _json)
      : this(
          details: _json.containsKey('details')
              ? _json['details'] as core.Map<core.String, core.dynamic>
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          scanData: _json.containsKey('scanData')
              ? ScanData.fromJson(
                  _json['scanData'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (details != null) 'details': details!,
        if (endTime != null) 'endTime': endTime!,
        if (name != null) 'name': name!,
        if (scanData != null) 'scanData': scanData!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// ScanData contains Cloud Key Visualizer scan data used by the caller to
/// construct a visualization.
class ScanData {
  /// Cloud Key Visualizer scan data.
  ///
  /// The range of time this information covers is captured via the above time
  /// range fields. Note, this field is not available to the ListScans method.
  VisualizationData? data;

  /// The upper bound for when the contained data is defined.
  core.String? endTime;

  /// A range of time (inclusive) for when the contained data is defined.
  ///
  /// The lower bound for when the contained data is defined.
  core.String? startTime;

  ScanData({
    this.data,
    this.endTime,
    this.startTime,
  });

  ScanData.fromJson(core.Map _json)
      : this(
          data: _json.containsKey('data')
              ? VisualizationData.fromJson(
                  _json['data'] as core.Map<core.String, core.dynamic>)
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (data != null) 'data': data!,
        if (endTime != null) 'endTime': endTime!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// A session in the Cloud Spanner API.
class Session {
  /// The approximate timestamp when the session is last used.
  ///
  /// It is typically earlier than the actual last use time.
  ///
  /// Output only.
  core.String? approximateLastUseTime;

  /// The timestamp when the session is created.
  ///
  /// Output only.
  core.String? createTime;

  /// The labels for the session.
  ///
  /// * Label keys must be between 1 and 63 characters long and must conform to
  /// the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. * Label
  /// values must be between 0 and 63 characters long and must conform to the
  /// regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. * No more than 64
  /// labels can be associated with a given session. See https://goo.gl/xmQnxf
  /// for more information on and examples of labels.
  core.Map<core.String, core.String>? labels;

  /// The name of the session.
  ///
  /// This is always system-assigned.
  ///
  /// Output only.
  core.String? name;

  Session({
    this.approximateLastUseTime,
    this.createTime,
    this.labels,
    this.name,
  });

  Session.fromJson(core.Map _json)
      : this(
          approximateLastUseTime: _json.containsKey('approximateLastUseTime')
              ? _json['approximateLastUseTime'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (approximateLastUseTime != null)
          'approximateLastUseTime': approximateLastUseTime!,
        if (createTime != null) 'createTime': createTime!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
      };
}

/// Request message for `SetIamPolicy` method.
class SetIamPolicyRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. An empty policy is a
  /// valid policy but certain Cloud Platform services (such as Projects) might
  /// reject them.
  Policy? policy;

  SetIamPolicyRequest({
    this.policy,
  });

  SetIamPolicyRequest.fromJson(core.Map _json)
      : this(
          policy: _json.containsKey('policy')
              ? Policy.fromJson(
                  _json['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
      };
}

/// Condensed representation of a node and its subtree.
///
/// Only present for `SCALAR` PlanNode(s).
class ShortRepresentation {
  /// A string representation of the expression subtree rooted at this node.
  core.String? description;

  /// A mapping of (subquery variable name) -> (subquery node id) for cases
  /// where the `description` string of this node references a `SCALAR` subquery
  /// contained in the expression subtree rooted at this node.
  ///
  /// The referenced `SCALAR` subquery may not necessarily be a direct child of
  /// this node.
  core.Map<core.String, core.int>? subqueries;

  ShortRepresentation({
    this.description,
    this.subqueries,
  });

  ShortRepresentation.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          subqueries: _json.containsKey('subqueries')
              ? (_json['subqueries'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.int,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (subqueries != null) 'subqueries': subqueries!,
      };
}

/// A single DML statement.
class Statement {
  /// It is not always possible for Cloud Spanner to infer the right SQL type
  /// from a JSON value.
  ///
  /// For example, values of type `BYTES` and values of type `STRING` both
  /// appear in params as JSON strings. In these cases, `param_types` can be
  /// used to specify the exact SQL type for some or all of the SQL statement
  /// parameters. See the definition of Type for more information about SQL
  /// types.
  core.Map<core.String, Type>? paramTypes;

  /// Parameter names and values that bind to placeholders in the DML string.
  ///
  /// A parameter placeholder consists of the `@` character followed by the
  /// parameter name (for example, `@firstName`). Parameter names can contain
  /// letters, numbers, and underscores. Parameters can appear anywhere that a
  /// literal value is expected. The same parameter name can be used more than
  /// once, for example: `"WHERE id > @msg_id AND id < @msg_id + 100"` It is an
  /// error to execute a SQL statement with unbound parameters.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? params;

  /// The DML string.
  ///
  /// Required.
  core.String? sql;

  Statement({
    this.paramTypes,
    this.params,
    this.sql,
  });

  Statement.fromJson(core.Map _json)
      : this(
          paramTypes: _json.containsKey('paramTypes')
              ? (_json['paramTypes'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    Type.fromJson(item as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
          params: _json.containsKey('params')
              ? _json['params'] as core.Map<core.String, core.dynamic>
              : null,
          sql: _json.containsKey('sql') ? _json['sql'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (paramTypes != null) 'paramTypes': paramTypes!,
        if (params != null) 'params': params!,
        if (sql != null) 'sql': sql!,
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

/// `StructType` defines the fields of a STRUCT type.
class StructType {
  /// The list of fields that make up this struct.
  ///
  /// Order is significant, because values of this struct type are represented
  /// as lists, where the order of field values matches the order of fields in
  /// the StructType. In turn, the order of fields matches the order of columns
  /// in a read request, or the order of fields in the `SELECT` clause of a
  /// query.
  core.List<Field>? fields;

  StructType({
    this.fields,
  });

  StructType.fromJson(core.Map _json)
      : this(
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// Request message for `TestIamPermissions` method.
class TestIamPermissionsRequest {
  /// REQUIRED: The set of permissions to check for 'resource'.
  ///
  /// Permissions with wildcards (such as '*', 'spanner.*',
  /// 'spanner.instances.*') are not allowed.
  core.List<core.String>? permissions;

  TestIamPermissionsRequest({
    this.permissions,
  });

  TestIamPermissionsRequest.fromJson(core.Map _json)
      : this(
          permissions: _json.containsKey('permissions')
              ? (_json['permissions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (permissions != null) 'permissions': permissions!,
      };
}

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// A transaction.
class Transaction {
  /// `id` may be used to identify the transaction in subsequent Read,
  /// ExecuteSql, Commit, or Rollback calls.
  ///
  /// Single-use read-only transactions do not have IDs, because single-use
  /// transactions do not support multiple requests.
  core.String? id;
  core.List<core.int> get idAsBytes => convert.base64.decode(id!);

  set idAsBytes(core.List<core.int> _bytes) {
    id =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// For snapshot read-only transactions, the read timestamp chosen for the
  /// transaction.
  ///
  /// Not returned by default: see
  /// TransactionOptions.ReadOnly.return_read_timestamp. A timestamp in RFC3339
  /// UTC \"Zulu\" format, accurate to nanoseconds. Example:
  /// `"2014-10-02T15:01:23.045123456Z"`.
  core.String? readTimestamp;

  Transaction({
    this.id,
    this.readTimestamp,
  });

  Transaction.fromJson(core.Map _json)
      : this(
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          readTimestamp: _json.containsKey('readTimestamp')
              ? _json['readTimestamp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (readTimestamp != null) 'readTimestamp': readTimestamp!,
      };
}

/// Transactions: Each session can have at most one active transaction at a time
/// (note that standalone reads and queries use a transaction internally and do
/// count towards the one transaction limit).
///
/// After the active transaction is completed, the session can immediately be
/// re-used for the next transaction. It is not necessary to create a new
/// session for each transaction. Transaction Modes: Cloud Spanner supports
/// three transaction modes: 1. Locking read-write. This type of transaction is
/// the only way to write data into Cloud Spanner. These transactions rely on
/// pessimistic locking and, if necessary, two-phase commit. Locking read-write
/// transactions may abort, requiring the application to retry. 2. Snapshot
/// read-only. This transaction type provides guaranteed consistency across
/// several reads, but does not allow writes. Snapshot read-only transactions
/// can be configured to read at timestamps in the past. Snapshot read-only
/// transactions do not need to be committed. 3. Partitioned DML. This type of
/// transaction is used to execute a single Partitioned DML statement.
/// Partitioned DML partitions the key space and runs the DML statement over
/// each partition in parallel using separate, internal transactions that commit
/// independently. Partitioned DML transactions do not need to be committed. For
/// transactions that only read, snapshot read-only transactions provide simpler
/// semantics and are almost always faster. In particular, read-only
/// transactions do not take locks, so they do not conflict with read-write
/// transactions. As a consequence of not taking locks, they also do not abort,
/// so retry loops are not needed. Transactions may only read/write data in a
/// single database. They may, however, read/write data in different tables
/// within that database. Locking Read-Write Transactions: Locking transactions
/// may be used to atomically read-modify-write data anywhere in a database.
/// This type of transaction is externally consistent. Clients should attempt to
/// minimize the amount of time a transaction is active. Faster transactions
/// commit with higher probability and cause less contention. Cloud Spanner
/// attempts to keep read locks active as long as the transaction continues to
/// do reads, and the transaction has not been terminated by Commit or Rollback.
/// Long periods of inactivity at the client may cause Cloud Spanner to release
/// a transaction's locks and abort it. Conceptually, a read-write transaction
/// consists of zero or more reads or SQL statements followed by Commit. At any
/// time before Commit, the client can send a Rollback request to abort the
/// transaction. Semantics: Cloud Spanner can commit the transaction if all read
/// locks it acquired are still valid at commit time, and it is able to acquire
/// write locks for all writes. Cloud Spanner can abort the transaction for any
/// reason. If a commit attempt returns `ABORTED`, Cloud Spanner guarantees that
/// the transaction has not modified any user data in Cloud Spanner. Unless the
/// transaction commits, Cloud Spanner makes no guarantees about how long the
/// transaction's locks were held for. It is an error to use Cloud Spanner locks
/// for any sort of mutual exclusion other than between Cloud Spanner
/// transactions themselves. Retrying Aborted Transactions: When a transaction
/// aborts, the application can choose to retry the whole transaction again. To
/// maximize the chances of successfully committing the retry, the client should
/// execute the retry in the same session as the original attempt. The original
/// session's lock priority increases with each consecutive abort, meaning that
/// each attempt has a slightly better chance of success than the previous.
/// Under some circumstances (for example, many transactions attempting to
/// modify the same row(s)), a transaction can abort many times in a short
/// period before successfully committing. Thus, it is not a good idea to cap
/// the number of retries a transaction can attempt; instead, it is better to
/// limit the total amount of time spent retrying. Idle Transactions: A
/// transaction is considered idle if it has no outstanding reads or SQL queries
/// and has not started a read or SQL query within the last 10 seconds. Idle
/// transactions can be aborted by Cloud Spanner so that they don't hold on to
/// locks indefinitely. If an idle transaction is aborted, the commit will fail
/// with error `ABORTED`. If this behavior is undesirable, periodically
/// executing a simple SQL query in the transaction (for example, `SELECT 1`)
/// prevents the transaction from becoming idle. Snapshot Read-Only
/// Transactions: Snapshot read-only transactions provides a simpler method than
/// locking read-write transactions for doing several consistent reads. However,
/// this type of transaction does not support writes. Snapshot transactions do
/// not take locks. Instead, they work by choosing a Cloud Spanner timestamp,
/// then executing all reads at that timestamp. Since they do not acquire locks,
/// they do not block concurrent read-write transactions. Unlike locking
/// read-write transactions, snapshot read-only transactions never abort. They
/// can fail if the chosen read timestamp is garbage collected; however, the
/// default garbage collection policy is generous enough that most applications
/// do not need to worry about this in practice. Snapshot read-only transactions
/// do not need to call Commit or Rollback (and in fact are not permitted to do
/// so). To execute a snapshot transaction, the client specifies a timestamp
/// bound, which tells Cloud Spanner how to choose a read timestamp. The types
/// of timestamp bound are: - Strong (the default). - Bounded staleness. - Exact
/// staleness. If the Cloud Spanner database to be read is geographically
/// distributed, stale read-only transactions can execute more quickly than
/// strong or read-write transaction, because they are able to execute far from
/// the leader replica. Each type of timestamp bound is discussed in detail
/// below. Strong: Strong reads are guaranteed to see the effects of all
/// transactions that have committed before the start of the read. Furthermore,
/// all rows yielded by a single read are consistent with each other -- if any
/// part of the read observes a transaction, all parts of the read see the
/// transaction. Strong reads are not repeatable: two consecutive strong
/// read-only transactions might return inconsistent results if there are
/// concurrent writes. If consistency across reads is required, the reads should
/// be executed within a transaction or at an exact read timestamp. See
/// TransactionOptions.ReadOnly.strong. Exact Staleness: These timestamp bounds
/// execute reads at a user-specified timestamp. Reads at a timestamp are
/// guaranteed to see a consistent prefix of the global transaction history:
/// they observe modifications done by all transactions with a commit timestamp
/// less than or equal to the read timestamp, and observe none of the
/// modifications done by transactions with a larger commit timestamp. They will
/// block until all conflicting transactions that may be assigned commit
/// timestamps <= the read timestamp have finished. The timestamp can either be
/// expressed as an absolute Cloud Spanner commit timestamp or a staleness
/// relative to the current time. These modes do not require a "negotiation
/// phase" to pick a timestamp. As a result, they execute slightly faster than
/// the equivalent boundedly stale concurrency modes. On the other hand,
/// boundedly stale reads usually return fresher results. See
/// TransactionOptions.ReadOnly.read_timestamp and
/// TransactionOptions.ReadOnly.exact_staleness. Bounded Staleness: Bounded
/// staleness modes allow Cloud Spanner to pick the read timestamp, subject to a
/// user-provided staleness bound. Cloud Spanner chooses the newest timestamp
/// within the staleness bound that allows execution of the reads at the closest
/// available replica without blocking. All rows yielded are consistent with
/// each other -- if any part of the read observes a transaction, all parts of
/// the read see the transaction. Boundedly stale reads are not repeatable: two
/// stale reads, even if they use the same staleness bound, can execute at
/// different timestamps and thus return inconsistent results. Boundedly stale
/// reads execute in two phases: the first phase negotiates a timestamp among
/// all replicas needed to serve the read. In the second phase, reads are
/// executed at the negotiated timestamp. As a result of the two phase
/// execution, bounded staleness reads are usually a little slower than
/// comparable exact staleness reads. However, they are typically able to return
/// fresher results, and are more likely to execute at the closest replica.
/// Because the timestamp negotiation requires up-front knowledge of which rows
/// will be read, it can only be used with single-use read-only transactions.
/// See TransactionOptions.ReadOnly.max_staleness and
/// TransactionOptions.ReadOnly.min_read_timestamp. Old Read Timestamps and
/// Garbage Collection: Cloud Spanner continuously garbage collects deleted and
/// overwritten data in the background to reclaim storage space. This process is
/// known as "version GC". By default, version GC reclaims versions after they
/// are one hour old. Because of this, Cloud Spanner cannot perform reads at
/// read timestamps more than one hour in the past. This restriction also
/// applies to in-progress reads and/or SQL queries whose timestamp become too
/// old while executing. Reads and SQL queries with too-old read timestamps fail
/// with the error `FAILED_PRECONDITION`. Partitioned DML Transactions:
/// Partitioned DML transactions are used to execute DML statements with a
/// different execution strategy that provides different, and often better,
/// scalability properties for large, table-wide operations than DML in a
/// ReadWrite transaction. Smaller scoped statements, such as an OLTP workload,
/// should prefer using ReadWrite transactions. Partitioned DML partitions the
/// keyspace and runs the DML statement on each partition in separate, internal
/// transactions. These transactions commit automatically when complete, and run
/// independently from one another. To reduce lock contention, this execution
/// strategy only acquires read locks on rows that match the WHERE clause of the
/// statement. Additionally, the smaller per-partition transactions hold locks
/// for less time. That said, Partitioned DML is not a drop-in replacement for
/// standard DML used in ReadWrite transactions. - The DML statement must be
/// fully-partitionable. Specifically, the statement must be expressible as the
/// union of many statements which each access only a single row of the table. -
/// The statement is not applied atomically to all rows of the table. Rather,
/// the statement is applied atomically to partitions of the table, in
/// independent transactions. Secondary index rows are updated atomically with
/// the base table rows. - Partitioned DML does not guarantee exactly-once
/// execution semantics against a partition. The statement will be applied at
/// least once to each partition. It is strongly recommended that the DML
/// statement should be idempotent to avoid unexpected results. For instance, it
/// is potentially dangerous to run a statement such as `UPDATE table SET column
/// = column + 1` as it could be run multiple times against some rows. - The
/// partitions are committed automatically - there is no support for Commit or
/// Rollback. If the call returns an error, or if the client issuing the
/// ExecuteSql call dies, it is possible that some rows had the statement
/// executed on them successfully. It is also possible that statement was never
/// executed against other rows. - Partitioned DML transactions may only contain
/// the execution of a single DML statement via ExecuteSql or
/// ExecuteStreamingSql. - If any error is encountered during the execution of
/// the partitioned DML operation (for instance, a UNIQUE INDEX violation,
/// division by zero, or a value that cannot be stored due to schema
/// constraints), then the operation is stopped at that point and an error is
/// returned. It is possible that at this point, some partitions have been
/// committed (or even committed multiple times), and other partitions have not
/// been run at all. Given the above, Partitioned DML is good fit for large,
/// database-wide, operations that are idempotent, such as deleting old rows
/// from a very large table.
class TransactionOptions {
  /// Partitioned DML transaction.
  ///
  /// Authorization to begin a Partitioned DML transaction requires
  /// `spanner.databases.beginPartitionedDmlTransaction` permission on the
  /// `session` resource.
  PartitionedDml? partitionedDml;

  /// Transaction will not write.
  ///
  /// Authorization to begin a read-only transaction requires
  /// `spanner.databases.beginReadOnlyTransaction` permission on the `session`
  /// resource.
  ReadOnly? readOnly;

  /// Transaction may write.
  ///
  /// Authorization to begin a read-write transaction requires
  /// `spanner.databases.beginOrRollbackReadWriteTransaction` permission on the
  /// `session` resource.
  ReadWrite? readWrite;

  TransactionOptions({
    this.partitionedDml,
    this.readOnly,
    this.readWrite,
  });

  TransactionOptions.fromJson(core.Map _json)
      : this(
          partitionedDml: _json.containsKey('partitionedDml')
              ? PartitionedDml.fromJson(_json['partitionedDml']
                  as core.Map<core.String, core.dynamic>)
              : null,
          readOnly: _json.containsKey('readOnly')
              ? ReadOnly.fromJson(
                  _json['readOnly'] as core.Map<core.String, core.dynamic>)
              : null,
          readWrite: _json.containsKey('readWrite')
              ? ReadWrite.fromJson(
                  _json['readWrite'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (partitionedDml != null) 'partitionedDml': partitionedDml!,
        if (readOnly != null) 'readOnly': readOnly!,
        if (readWrite != null) 'readWrite': readWrite!,
      };
}

/// This message is used to select the transaction in which a Read or ExecuteSql
/// call runs.
///
/// See TransactionOptions for more information about transactions.
class TransactionSelector {
  /// Begin a new transaction and execute this read or SQL query in it.
  ///
  /// The transaction ID of the new transaction is returned in
  /// ResultSetMetadata.transaction, which is a Transaction.
  TransactionOptions? begin;

  /// Execute the read or SQL query in a previously-started transaction.
  core.String? id;
  core.List<core.int> get idAsBytes => convert.base64.decode(id!);

  set idAsBytes(core.List<core.int> _bytes) {
    id =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Execute the read or SQL query in a temporary transaction.
  ///
  /// This is the most efficient way to execute a transaction that consists of a
  /// single SQL query.
  TransactionOptions? singleUse;

  TransactionSelector({
    this.begin,
    this.id,
    this.singleUse,
  });

  TransactionSelector.fromJson(core.Map _json)
      : this(
          begin: _json.containsKey('begin')
              ? TransactionOptions.fromJson(
                  _json['begin'] as core.Map<core.String, core.dynamic>)
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
          singleUse: _json.containsKey('singleUse')
              ? TransactionOptions.fromJson(
                  _json['singleUse'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (begin != null) 'begin': begin!,
        if (id != null) 'id': id!,
        if (singleUse != null) 'singleUse': singleUse!,
      };
}

/// `Type` indicates the type of a Cloud Spanner value, as might be stored in a
/// table cell or returned from an SQL query.
class Type {
  /// If code == ARRAY, then `array_element_type` is the type of the array
  /// elements.
  Type? arrayElementType;

  /// The TypeCode for this type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_CODE_UNSPECIFIED" : Not specified.
  /// - "BOOL" : Encoded as JSON `true` or `false`.
  /// - "INT64" : Encoded as `string`, in decimal format.
  /// - "FLOAT64" : Encoded as `number`, or the strings `"NaN"`, `"Infinity"`,
  /// or `"-Infinity"`.
  /// - "TIMESTAMP" : Encoded as `string` in RFC 3339 timestamp format. The time
  /// zone must be present, and must be `"Z"`. If the schema has the column
  /// option `allow_commit_timestamp=true`, the placeholder string
  /// `"spanner.commit_timestamp()"` can be used to instruct the system to
  /// insert the commit timestamp associated with the transaction commit.
  /// - "DATE" : Encoded as `string` in RFC 3339 date format.
  /// - "STRING" : Encoded as `string`.
  /// - "BYTES" : Encoded as a base64-encoded `string`, as described in RFC
  /// 4648, section 4.
  /// - "ARRAY" : Encoded as `list`, where the list elements are represented
  /// according to array_element_type.
  /// - "STRUCT" : Encoded as `list`, where list element `i` is represented
  /// according to
  /// \[struct_type.fields\[i\]\]\[google.spanner.v1.StructType.fields\].
  /// - "NUMERIC" : Encoded as `string`, in decimal format or scientific
  /// notation format. Decimal format: `[+-]Digits[.[Digits]]` or `+-.Digits`
  /// Scientific notation: `[+-]Digits[.[Digits]][ExponentIndicator[+-]Digits]`
  /// or `+-.Digits[ExponentIndicator[+-]Digits]` (ExponentIndicator is `"e"` or
  /// `"E"`)
  /// - "JSON" : Encoded as a JSON-formatted `string` as described in RFC 7159.
  /// The following rules are applied when parsing JSON input: - Whitespace
  /// characters are not preserved. - If a JSON object has duplicate keys, only
  /// the first key is preserved. - Members of a JSON object are not guaranteed
  /// to have their order preserved. - JSON array elements will have their order
  /// preserved.
  core.String? code;

  /// If code == STRUCT, then `struct_type` provides type information for the
  /// struct's fields.
  StructType? structType;

  Type({
    this.arrayElementType,
    this.code,
    this.structType,
  });

  Type.fromJson(core.Map _json)
      : this(
          arrayElementType: _json.containsKey('arrayElementType')
              ? Type.fromJson(_json['arrayElementType']
                  as core.Map<core.String, core.dynamic>)
              : null,
          code: _json.containsKey('code') ? _json['code'] as core.String : null,
          structType: _json.containsKey('structType')
              ? StructType.fromJson(
                  _json['structType'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (arrayElementType != null) 'arrayElementType': arrayElementType!,
        if (code != null) 'code': code!,
        if (structType != null) 'structType': structType!,
      };
}

/// Metadata type for the operation returned by UpdateDatabaseDdl.
class UpdateDatabaseDdlMetadata {
  /// Reports the commit timestamps of all statements that have succeeded so
  /// far, where `commit_timestamps[i]` is the commit timestamp for the
  /// statement `statements[i]`.
  core.List<core.String>? commitTimestamps;

  /// The database being modified.
  core.String? database;

  /// The progress of the UpdateDatabaseDdl operations.
  ///
  /// Currently, only index creation statements will have a continuously
  /// updating progress. For non-index creation statements, `progress[i]` will
  /// have start time and end time populated with commit timestamp of operation,
  /// as well as a progress of 100% once the operation has completed.
  /// `progress[i]` is the operation progress for `statements[i]`.
  core.List<OperationProgress>? progress;

  /// For an update this list contains all the statements.
  ///
  /// For an individual statement, this list contains only that statement.
  core.List<core.String>? statements;

  /// When true, indicates that the operation is throttled e.g due to resource
  /// constraints.
  ///
  /// When resources become available the operation will resume and this field
  /// will be false again.
  ///
  /// Output only.
  core.bool? throttled;

  UpdateDatabaseDdlMetadata({
    this.commitTimestamps,
    this.database,
    this.progress,
    this.statements,
    this.throttled,
  });

  UpdateDatabaseDdlMetadata.fromJson(core.Map _json)
      : this(
          commitTimestamps: _json.containsKey('commitTimestamps')
              ? (_json['commitTimestamps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          database: _json.containsKey('database')
              ? _json['database'] as core.String
              : null,
          progress: _json.containsKey('progress')
              ? (_json['progress'] as core.List)
                  .map((value) => OperationProgress.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          statements: _json.containsKey('statements')
              ? (_json['statements'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          throttled: _json.containsKey('throttled')
              ? _json['throttled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitTimestamps != null) 'commitTimestamps': commitTimestamps!,
        if (database != null) 'database': database!,
        if (progress != null) 'progress': progress!,
        if (statements != null) 'statements': statements!,
        if (throttled != null) 'throttled': throttled!,
      };
}

/// Enqueues the given DDL statements to be applied, in order but not
/// necessarily all at once, to the database schema at some point (or points) in
/// the future.
///
/// The server checks that the statements are executable (syntactically valid,
/// name tables that exist, etc.) before enqueueing them, but they may still
/// fail upon later execution (e.g., if a statement from another batch of
/// statements is applied first and it conflicts in some way, or if there is
/// some data-related problem like a `NULL` value in a column to which `NOT
/// NULL` would be added). If a statement fails, all subsequent statements in
/// the batch are automatically cancelled. Each batch of statements is assigned
/// a name which can be used with the Operations API to monitor progress. See
/// the operation_id field for more details.
class UpdateDatabaseDdlRequest {
  /// If empty, the new update request is assigned an automatically-generated
  /// operation ID.
  ///
  /// Otherwise, `operation_id` is used to construct the name of the resulting
  /// Operation. Specifying an explicit operation ID simplifies determining
  /// whether the statements were executed in the event that the
  /// UpdateDatabaseDdl call is replayed, or the return value is otherwise lost:
  /// the database and `operation_id` fields can be combined to form the name of
  /// the resulting longrunning.Operation: `/operations/`. `operation_id` should
  /// be unique within the database, and must be a valid identifier: `a-z*`.
  /// Note that automatically-generated operation IDs always begin with an
  /// underscore. If the named operation already exists, UpdateDatabaseDdl
  /// returns `ALREADY_EXISTS`.
  core.String? operationId;

  /// DDL statements to be applied to the database.
  ///
  /// Required.
  core.List<core.String>? statements;

  UpdateDatabaseDdlRequest({
    this.operationId,
    this.statements,
  });

  UpdateDatabaseDdlRequest.fromJson(core.Map _json)
      : this(
          operationId: _json.containsKey('operationId')
              ? _json['operationId'] as core.String
              : null,
          statements: _json.containsKey('statements')
              ? (_json['statements'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationId != null) 'operationId': operationId!,
        if (statements != null) 'statements': statements!,
      };
}

/// Metadata type for the operation returned by UpdateInstance.
class UpdateInstanceMetadata {
  /// The time at which this operation was cancelled.
  ///
  /// If set, this operation is in the process of undoing itself (which is
  /// guaranteed to succeed) and cannot be cancelled again.
  core.String? cancelTime;

  /// The time at which this operation failed or was completed successfully.
  core.String? endTime;

  /// The desired end state of the update.
  Instance? instance;

  /// The time at which UpdateInstance request was received.
  core.String? startTime;

  UpdateInstanceMetadata({
    this.cancelTime,
    this.endTime,
    this.instance,
    this.startTime,
  });

  UpdateInstanceMetadata.fromJson(core.Map _json)
      : this(
          cancelTime: _json.containsKey('cancelTime')
              ? _json['cancelTime'] as core.String
              : null,
          endTime: _json.containsKey('endTime')
              ? _json['endTime'] as core.String
              : null,
          instance: _json.containsKey('instance')
              ? Instance.fromJson(
                  _json['instance'] as core.Map<core.String, core.dynamic>)
              : null,
          startTime: _json.containsKey('startTime')
              ? _json['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cancelTime != null) 'cancelTime': cancelTime!,
        if (endTime != null) 'endTime': endTime!,
        if (instance != null) 'instance': instance!,
        if (startTime != null) 'startTime': startTime!,
      };
}

/// The request for UpdateInstance.
class UpdateInstanceRequest {
  /// A mask specifying which fields in Instance should be updated.
  ///
  /// The field mask must always be specified; this prevents any future fields
  /// in Instance from being erased accidentally by clients that do not know
  /// about them.
  ///
  /// Required.
  core.String? fieldMask;

  /// The instance to update, which must always include the instance name.
  ///
  /// Otherwise, only fields mentioned in field_mask need be included.
  ///
  /// Required.
  Instance? instance;

  UpdateInstanceRequest({
    this.fieldMask,
    this.instance,
  });

  UpdateInstanceRequest.fromJson(core.Map _json)
      : this(
          fieldMask: _json.containsKey('fieldMask')
              ? _json['fieldMask'] as core.String
              : null,
          instance: _json.containsKey('instance')
              ? Instance.fromJson(
                  _json['instance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldMask != null) 'fieldMask': fieldMask!,
        if (instance != null) 'instance': instance!,
      };
}

class VisualizationData {
  /// The token signifying the end of a data_source.
  core.String? dataSourceEndToken;

  /// The token delimiting a datasource name from the rest of a key in a
  /// data_source.
  core.String? dataSourceSeparatorToken;

  /// The list of messages (info, alerts, ...)
  core.List<DiagnosticMessage>? diagnosticMessages;

  /// We discretize the entire keyspace into buckets.
  ///
  /// Assuming each bucket has an inclusive keyrange and covers keys from k(i)
  /// ... k(n). In this case k(n) would be an end key for a given range.
  /// end_key_string is the collection of all such end keys
  core.List<core.String>? endKeyStrings;

  /// Whether this scan contains PII.
  core.bool? hasPii;

  /// Keys of key ranges that contribute significantly to a given metric Can be
  /// thought of as heavy hitters.
  core.List<core.String>? indexedKeys;

  /// The token delimiting the key prefixes.
  core.String? keySeparator;

  /// The unit for the key: e.g. 'key' or 'chunk'.
  /// Possible string values are:
  /// - "KEY_UNIT_UNSPECIFIED" : Required default value
  /// - "KEY" : Each entry corresponds to one key
  /// - "CHUNK" : Each entry corresponds to a chunk of keys
  core.String? keyUnit;

  /// The list of data objects for each metric.
  core.List<Metric>? metrics;

  /// The list of extracted key prefix nodes used in the key prefix hierarchy.
  core.List<PrefixNode>? prefixNodes;

  VisualizationData({
    this.dataSourceEndToken,
    this.dataSourceSeparatorToken,
    this.diagnosticMessages,
    this.endKeyStrings,
    this.hasPii,
    this.indexedKeys,
    this.keySeparator,
    this.keyUnit,
    this.metrics,
    this.prefixNodes,
  });

  VisualizationData.fromJson(core.Map _json)
      : this(
          dataSourceEndToken: _json.containsKey('dataSourceEndToken')
              ? _json['dataSourceEndToken'] as core.String
              : null,
          dataSourceSeparatorToken:
              _json.containsKey('dataSourceSeparatorToken')
                  ? _json['dataSourceSeparatorToken'] as core.String
                  : null,
          diagnosticMessages: _json.containsKey('diagnosticMessages')
              ? (_json['diagnosticMessages'] as core.List)
                  .map((value) => DiagnosticMessage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          endKeyStrings: _json.containsKey('endKeyStrings')
              ? (_json['endKeyStrings'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          hasPii:
              _json.containsKey('hasPii') ? _json['hasPii'] as core.bool : null,
          indexedKeys: _json.containsKey('indexedKeys')
              ? (_json['indexedKeys'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          keySeparator: _json.containsKey('keySeparator')
              ? _json['keySeparator'] as core.String
              : null,
          keyUnit: _json.containsKey('keyUnit')
              ? _json['keyUnit'] as core.String
              : null,
          metrics: _json.containsKey('metrics')
              ? (_json['metrics'] as core.List)
                  .map((value) => Metric.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          prefixNodes: _json.containsKey('prefixNodes')
              ? (_json['prefixNodes'] as core.List)
                  .map((value) => PrefixNode.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataSourceEndToken != null)
          'dataSourceEndToken': dataSourceEndToken!,
        if (dataSourceSeparatorToken != null)
          'dataSourceSeparatorToken': dataSourceSeparatorToken!,
        if (diagnosticMessages != null)
          'diagnosticMessages': diagnosticMessages!,
        if (endKeyStrings != null) 'endKeyStrings': endKeyStrings!,
        if (hasPii != null) 'hasPii': hasPii!,
        if (indexedKeys != null) 'indexedKeys': indexedKeys!,
        if (keySeparator != null) 'keySeparator': keySeparator!,
        if (keyUnit != null) 'keyUnit': keyUnit!,
        if (metrics != null) 'metrics': metrics!,
        if (prefixNodes != null) 'prefixNodes': prefixNodes!,
      };
}

/// Arguments to insert, update, insert_or_update, and replace operations.
class Write {
  /// The names of the columns in table to be written.
  ///
  /// The list of columns must contain enough columns to allow Cloud Spanner to
  /// derive values for all primary key columns in the row(s) to be modified.
  core.List<core.String>? columns;

  /// The table whose rows will be written.
  ///
  /// Required.
  core.String? table;

  /// The values to be written.
  ///
  /// `values` can contain more than one list of values. If it does, then
  /// multiple rows are written, one for each entry in `values`. Each list in
  /// `values` must have exactly as many entries as there are entries in columns
  /// above. Sending multiple lists is equivalent to sending multiple
  /// `Mutation`s, each containing one `values` entry and repeating table and
  /// columns. Individual values in each list are encoded as described here.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.List<core.Object?>>? values;

  Write({
    this.columns,
    this.table,
    this.values,
  });

  Write.fromJson(core.Map _json)
      : this(
          columns: _json.containsKey('columns')
              ? (_json['columns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          table:
              _json.containsKey('table') ? _json['table'] as core.String : null,
          values: _json.containsKey('values')
              ? (_json['values'] as core.List)
                  .map((value) => value as core.List)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (table != null) 'table': table!,
        if (values != null) 'values': values!,
      };
}
