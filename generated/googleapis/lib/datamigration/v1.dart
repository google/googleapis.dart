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

/// Database Migration API - v1
///
/// Manage Cloud Database Migration Service resources on Google Cloud Platform.
///
/// For more information, see <https://cloud.google.com/database-migration/>
///
/// Create an instance of [DatabaseMigrationServiceApi] to access these
/// resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsConnectionProfilesResource]
///     - [ProjectsLocationsMigrationJobsResource]
///     - [ProjectsLocationsOperationsResource]
library datamigration.v1;

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

/// Manage Cloud Database Migration Service resources on Google Cloud Platform.
class DatabaseMigrationServiceApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DatabaseMigrationServiceApi(http.Client client,
      {core.String rootUrl = 'https://datamigration.googleapis.com/',
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

  ProjectsLocationsConnectionProfilesResource get connectionProfiles =>
      ProjectsLocationsConnectionProfilesResource(_requester);
  ProjectsLocationsMigrationJobsResource get migrationJobs =>
      ProjectsLocationsMigrationJobsResource(_requester);
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

class ProjectsLocationsConnectionProfilesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionProfilesResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new connection profile in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of connection
  /// profiles.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectionProfileId] - Required. The connection profile identifier.
  ///
  /// [requestId] - A unique id used to identify the request. If the server
  /// receives two requests with the same id, then the second request will be
  /// ignored. It is recommended to always set this value to a UUID. The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
    ConnectionProfile request,
    core.String parent, {
    core.String? connectionProfileId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectionProfileId != null)
        'connectionProfileId': [connectionProfileId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectionProfiles';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Database Migration Service connection profile.
  ///
  /// A connection profile can only be deleted if it is not in use by any active
  /// migration jobs.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the connection profile resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
  ///
  /// [force] - In case of force delete, the CloudSQL replica database is also
  /// deleted (only for CloudSQL connection profile).
  ///
  /// [requestId] - A unique id used to identify the request. If the server
  /// receives two requests with the same id, then the second request will be
  /// ignored. It is recommended to always set this value to a UUID. The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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

  /// Gets details of a single connection profile.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the connection profile resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectionProfile].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectionProfile> get(
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
    return ConnectionProfile.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
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

  /// Retrieves a list of all connection profiles in a given project and
  /// location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of connection
  /// profiles.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters connection profiles listed in
  /// the response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, \>, or \<. For example, list connection profiles created
  /// this year by specifying **createTime %gt;
  /// 2020-01-01T00:00:00.000000000Z**. You can also filter nested fields. For
  /// example, you could specify **mySql.username = %lt;my_username%gt;** to
  /// list all connection profiles configured to connect with a specific
  /// username.
  ///
  /// [orderBy] - A comma-separated list of fields to order results according
  /// to.
  ///
  /// [pageSize] - The maximum number of connection profiles to return. The
  /// service may return fewer than this value. If unspecified, at most 50
  /// connection profiles will be returned. The maximum value is 1000; values
  /// above 1000 will be coerced to 1000.
  ///
  /// [pageToken] - A page token, received from a previous
  /// `ListConnectionProfiles` call. Provide this to retrieve the subsequent
  /// page. When paginating, all other parameters provided to
  /// `ListConnectionProfiles` must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionProfilesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionProfilesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectionProfiles';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionProfilesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the configuration of a single connection profile.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of this connection profile resource in the form of
  /// projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
  ///
  /// [requestId] - A unique id used to identify the request. If the server
  /// receives two requests with the same id, then the second request will be
  /// ignored. It is recommended to always set this value to a UUID. The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the connection profile resource by the update.
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
    ConnectionProfile request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connectionProfiles/\[^/\]+$`.
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
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsMigrationJobsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsMigrationJobsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new migration job in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of migration
  /// jobs.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [migrationJobId] - Required. The ID of the instance to create.
  ///
  /// [requestId] - A unique id used to identify the request. If the server
  /// receives two requests with the same id, then the second request will be
  /// ignored. It is recommended to always set this value to a UUID. The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
    MigrationJob request,
    core.String parent, {
    core.String? migrationJobId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (migrationJobId != null) 'migrationJobId': [migrationJobId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/migrationJobs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single migration job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the migration job resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
  ///
  /// [force] - The destination CloudSQL connection profile is always deleted
  /// with the migration job. In case of force delete, the destination CloudSQL
  /// replica database is also deleted.
  ///
  /// [requestId] - A unique id used to identify the request. If the server
  /// receives two requests with the same id, then the second request will be
  /// ignored. It is recommended to always set this value to a UUID. The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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

  /// Generate a SSH configuration script to configure the reverse SSH
  /// connectivity.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [migrationJob] - Name of the migration job resource to generate the SSH
  /// script.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SshScript].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SshScript> generateSshScript(
    GenerateSshScriptRequest request,
    core.String migrationJob, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$migrationJob') + ':generateSshScript';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return SshScript.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single migration job.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the migration job resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MigrationJob].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MigrationJob> get(
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
    return MigrationJob.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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

  /// Lists migration jobs in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of
  /// migrationJobs.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters migration jobs listed in the
  /// response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, \>, or \<. For example, list migration jobs created this
  /// year by specifying **createTime %gt; 2020-01-01T00:00:00.000000000Z.** You
  /// can also filter nested fields. For example, you could specify
  /// **reverseSshConnectivity.vmIp = "1.2.3.4"** to select all migration jobs
  /// connecting through the specific SSH tunnel bastion.
  ///
  /// [orderBy] - Sort the results based on the migration job name. Valid values
  /// are: "name", "name asc", and "name desc".
  ///
  /// [pageSize] - The maximum number of migration jobs to return. The service
  /// may return fewer than this value. If unspecified, at most 50 migration
  /// jobs will be returned. The maximum value is 1000; values above 1000 will
  /// be coerced to 1000.
  ///
  /// [pageToken] - The nextPageToken value received in the previous call to
  /// migrationJobs.list, used in the subsequent request to retrieve the next
  /// page of results. On first call this should be left blank. When paginating,
  /// all other parameters provided to migrationJobs.list must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMigrationJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMigrationJobsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/migrationJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMigrationJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single migration job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The name (URI) of this migration job resource, in the form of:
  /// projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
  ///
  /// [requestId] - A unique id used to identify the request. If the server
  /// receives two requests with the same id, then the second request will be
  /// ignored. It is recommended to always set this value to a UUID. The id must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the migration job resource by the update.
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
    MigrationJob request,
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

  /// Promote a migration job, stopping replication to the destination and
  /// promoting the destination to be a standalone database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the migration job resource to promote.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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
  async.Future<Operation> promote(
    PromoteMigrationJobRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':promote';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Restart a stopped or failed migration job, resetting the destination
  /// instance to its original state and starting the migration process from
  /// scratch.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the migration job resource to restart.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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
    RestartMigrationJobRequest request,
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

  /// Resume a migration job that is currently stopped and is resumable (was
  /// stopped during CDC phase).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the migration job resource to resume.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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
    ResumeMigrationJobRequest request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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

  /// Start an already created migration job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the migration job resource to start.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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
    StartMigrationJobRequest request,
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

  /// Stops a running migration job.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the migration job resource to stop.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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
    StopMigrationJobRequest request,
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Verify a migration job, making sure the destination can reach the source
  /// and that all configuration and prerequisites are met.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the migration job resource to verify.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
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
  async.Future<Operation> verify(
    VerifyMigrationJobRequest request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

/// Specifies required connection parameters, and the parameters required to
/// create an AlloyDB destination cluster.
class AlloyDbConnectionProfile {
  /// The AlloyDB cluster ID that this connection profile is associated with.
  ///
  /// Required.
  core.String? clusterId;

  /// Metadata used to create the destination AlloyDB cluster.
  ///
  /// Immutable.
  AlloyDbSettings? settings;

  AlloyDbConnectionProfile({
    this.clusterId,
    this.settings,
  });

  AlloyDbConnectionProfile.fromJson(core.Map json_)
      : this(
          clusterId: json_.containsKey('clusterId')
              ? json_['clusterId'] as core.String
              : null,
          settings: json_.containsKey('settings')
              ? AlloyDbSettings.fromJson(
                  json_['settings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clusterId != null) 'clusterId': clusterId!,
        if (settings != null) 'settings': settings!,
      };
}

/// Settings for creating an AlloyDB cluster.
class AlloyDbSettings {
  /// Input only.
  ///
  /// Initial user to setup during cluster creation. Required.
  ///
  /// Required.
  UserPassword? initialUser;

  /// Labels for the AlloyDB cluster created by DMS.
  ///
  /// An object containing a list of 'key', 'value' pairs.
  core.Map<core.String, core.String>? labels;
  PrimaryInstanceSettings? primaryInstanceSettings;

  /// The resource link for the VPC network in which cluster resources are
  /// created and from which they are accessible via Private IP.
  ///
  /// The network must belong to the same project as the cluster. It is
  /// specified in the form:
  /// "projects/{project_number}/global/networks/{network_id}". This is required
  /// to create a cluster.
  ///
  /// Required.
  core.String? vpcNetwork;

  AlloyDbSettings({
    this.initialUser,
    this.labels,
    this.primaryInstanceSettings,
    this.vpcNetwork,
  });

  AlloyDbSettings.fromJson(core.Map json_)
      : this(
          initialUser: json_.containsKey('initialUser')
              ? UserPassword.fromJson(
                  json_['initialUser'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          primaryInstanceSettings: json_.containsKey('primaryInstanceSettings')
              ? PrimaryInstanceSettings.fromJson(
                  json_['primaryInstanceSettings']
                      as core.Map<core.String, core.dynamic>)
              : null,
          vpcNetwork: json_.containsKey('vpcNetwork')
              ? json_['vpcNetwork'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (initialUser != null) 'initialUser': initialUser!,
        if (labels != null) 'labels': labels!,
        if (primaryInstanceSettings != null)
          'primaryInstanceSettings': primaryInstanceSettings!,
        if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
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

  AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => AuditLogConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          service: json_.containsKey('service')
              ? json_['service'] as core.String
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

  Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>)
              : null,
          members: json_.containsKey('members')
              ? (json_['members'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          role: json_.containsKey('role') ? json_['role'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (members != null) 'members': members!,
        if (role != null) 'role': role!,
      };
}

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Specifies required connection parameters, and, optionally, the parameters
/// required to create a Cloud SQL destination database instance.
class CloudSqlConnectionProfile {
  /// The Cloud SQL database instance's additional (outgoing) public IP.
  ///
  /// Used when the Cloud SQL database availability type is REGIONAL (i.e.
  /// multiple zones / highly available).
  ///
  /// Output only.
  core.String? additionalPublicIp;

  /// The Cloud SQL instance ID that this connection profile is associated with.
  ///
  /// Output only.
  core.String? cloudSqlId;

  /// The Cloud SQL database instance's private IP.
  ///
  /// Output only.
  core.String? privateIp;

  /// The Cloud SQL database instance's public IP.
  ///
  /// Output only.
  core.String? publicIp;

  /// Metadata used to create the destination Cloud SQL database.
  ///
  /// Immutable.
  CloudSqlSettings? settings;

  CloudSqlConnectionProfile({
    this.additionalPublicIp,
    this.cloudSqlId,
    this.privateIp,
    this.publicIp,
    this.settings,
  });

  CloudSqlConnectionProfile.fromJson(core.Map json_)
      : this(
          additionalPublicIp: json_.containsKey('additionalPublicIp')
              ? json_['additionalPublicIp'] as core.String
              : null,
          cloudSqlId: json_.containsKey('cloudSqlId')
              ? json_['cloudSqlId'] as core.String
              : null,
          privateIp: json_.containsKey('privateIp')
              ? json_['privateIp'] as core.String
              : null,
          publicIp: json_.containsKey('publicIp')
              ? json_['publicIp'] as core.String
              : null,
          settings: json_.containsKey('settings')
              ? CloudSqlSettings.fromJson(
                  json_['settings'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalPublicIp != null)
          'additionalPublicIp': additionalPublicIp!,
        if (cloudSqlId != null) 'cloudSqlId': cloudSqlId!,
        if (privateIp != null) 'privateIp': privateIp!,
        if (publicIp != null) 'publicIp': publicIp!,
        if (settings != null) 'settings': settings!,
      };
}

/// Settings for creating a Cloud SQL database instance.
class CloudSqlSettings {
  /// The activation policy specifies when the instance is activated; it is
  /// applicable only when the instance state is 'RUNNABLE'.
  ///
  /// Valid values: 'ALWAYS': The instance is on, and remains so even in the
  /// absence of connection requests. `NEVER`: The instance is off; it is not
  /// activated, even if a connection request arrives.
  /// Possible string values are:
  /// - "SQL_ACTIVATION_POLICY_UNSPECIFIED" : unspecified policy.
  /// - "ALWAYS" : The instance is always up and running.
  /// - "NEVER" : The instance should never spin up.
  core.String? activationPolicy;

  /// \[default: ON\] If you enable this setting, Cloud SQL checks your
  /// available storage every 30 seconds.
  ///
  /// If the available storage falls below a threshold size, Cloud SQL
  /// automatically adds additional storage capacity. If the available storage
  /// repeatedly falls below the threshold size, Cloud SQL continues to add
  /// storage until it reaches the maximum of 30 TB.
  core.bool? autoStorageIncrease;

  /// Availability type.
  ///
  /// Potential values: * `ZONAL`: The instance serves data from only one zone.
  /// Outages in that zone affect data availability. * `REGIONAL`: The instance
  /// can serve data from more than one zone in a region (it is highly
  /// available).
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SQL_AVAILABILITY_TYPE_UNSPECIFIED" : This is an unknown Availability
  /// type.
  /// - "ZONAL" : Zonal availablility instance.
  /// - "REGIONAL" : Regional availability instance.
  core.String? availabilityType;

  /// The KMS key name used for the csql instance.
  core.String? cmekKeyName;

  /// The Cloud SQL default instance level collation.
  core.String? collation;

  /// The storage capacity available to the database, in GB.
  ///
  /// The minimum (and default) size is 10GB.
  core.String? dataDiskSizeGb;

  /// The type of storage: `PD_SSD` (default) or `PD_HDD`.
  /// Possible string values are:
  /// - "SQL_DATA_DISK_TYPE_UNSPECIFIED" : Unspecified.
  /// - "PD_SSD" : SSD disk.
  /// - "PD_HDD" : HDD disk.
  core.String? dataDiskType;

  /// The database flags passed to the Cloud SQL instance at startup.
  ///
  /// An object containing a list of "key": value pairs. Example: { "name":
  /// "wrench", "mass": "1.3kg", "count": "3" }.
  core.Map<core.String, core.String>? databaseFlags;

  /// The database engine type and version.
  /// Possible string values are:
  /// - "SQL_DATABASE_VERSION_UNSPECIFIED" : Unspecified version.
  /// - "MYSQL_5_6" : MySQL 5.6.
  /// - "MYSQL_5_7" : MySQL 5.7.
  /// - "POSTGRES_9_6" : PostgreSQL 9.6.
  /// - "POSTGRES_11" : PostgreSQL 11.
  /// - "POSTGRES_10" : PostgreSQL 10.
  /// - "MYSQL_8_0" : MySQL 8.0.
  /// - "POSTGRES_12" : PostgreSQL 12.
  /// - "POSTGRES_13" : PostgreSQL 13.
  /// - "POSTGRES_14" : PostgreSQL 14.
  core.String? databaseVersion;

  /// The settings for IP Management.
  ///
  /// This allows to enable or disable the instance IP and manage which external
  /// networks can connect to the instance. The IPv4 address cannot be disabled.
  SqlIpConfig? ipConfig;

  /// Input only.
  ///
  /// Initial root password.
  core.String? rootPassword;

  /// Indicates If this connection profile root password is stored.
  ///
  /// Output only.
  core.bool? rootPasswordSet;

  /// The Google Cloud Platform zone where the failover Cloud SQL database
  /// instance is located.
  ///
  /// Used when the Cloud SQL database availability type is REGIONAL (i.e.
  /// multiple zones / highly available).
  ///
  /// Optional.
  core.String? secondaryZone;

  /// The Database Migration Service source connection profile ID, in the
  /// format:
  /// `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  core.String? sourceId;

  /// The maximum size to which storage capacity can be automatically increased.
  ///
  /// The default value is 0, which specifies that there is no limit.
  core.String? storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example:
  /// `db-n1-standard-1` (MySQL instances) or `db-custom-1-3840` (PostgreSQL
  /// instances).
  ///
  /// For more information, see
  /// [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  core.String? tier;

  /// The resource labels for a Cloud SQL instance to use to annotate any
  /// related underlying resources such as Compute Engine VMs.
  ///
  /// An object containing a list of "key": "value" pairs. Example: `{ "name":
  /// "wrench", "mass": "18kg", "count": "3" }`.
  core.Map<core.String, core.String>? userLabels;

  /// The Google Cloud Platform zone where your Cloud SQL database instance is
  /// located.
  core.String? zone;

  CloudSqlSettings({
    this.activationPolicy,
    this.autoStorageIncrease,
    this.availabilityType,
    this.cmekKeyName,
    this.collation,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.ipConfig,
    this.rootPassword,
    this.rootPasswordSet,
    this.secondaryZone,
    this.sourceId,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
    this.zone,
  });

  CloudSqlSettings.fromJson(core.Map json_)
      : this(
          activationPolicy: json_.containsKey('activationPolicy')
              ? json_['activationPolicy'] as core.String
              : null,
          autoStorageIncrease: json_.containsKey('autoStorageIncrease')
              ? json_['autoStorageIncrease'] as core.bool
              : null,
          availabilityType: json_.containsKey('availabilityType')
              ? json_['availabilityType'] as core.String
              : null,
          cmekKeyName: json_.containsKey('cmekKeyName')
              ? json_['cmekKeyName'] as core.String
              : null,
          collation: json_.containsKey('collation')
              ? json_['collation'] as core.String
              : null,
          dataDiskSizeGb: json_.containsKey('dataDiskSizeGb')
              ? json_['dataDiskSizeGb'] as core.String
              : null,
          dataDiskType: json_.containsKey('dataDiskType')
              ? json_['dataDiskType'] as core.String
              : null,
          databaseFlags: json_.containsKey('databaseFlags')
              ? (json_['databaseFlags'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          databaseVersion: json_.containsKey('databaseVersion')
              ? json_['databaseVersion'] as core.String
              : null,
          ipConfig: json_.containsKey('ipConfig')
              ? SqlIpConfig.fromJson(
                  json_['ipConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          rootPassword: json_.containsKey('rootPassword')
              ? json_['rootPassword'] as core.String
              : null,
          rootPasswordSet: json_.containsKey('rootPasswordSet')
              ? json_['rootPasswordSet'] as core.bool
              : null,
          secondaryZone: json_.containsKey('secondaryZone')
              ? json_['secondaryZone'] as core.String
              : null,
          sourceId: json_.containsKey('sourceId')
              ? json_['sourceId'] as core.String
              : null,
          storageAutoResizeLimit: json_.containsKey('storageAutoResizeLimit')
              ? json_['storageAutoResizeLimit'] as core.String
              : null,
          tier: json_.containsKey('tier') ? json_['tier'] as core.String : null,
          userLabels: json_.containsKey('userLabels')
              ? (json_['userLabels'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          zone: json_.containsKey('zone') ? json_['zone'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (activationPolicy != null) 'activationPolicy': activationPolicy!,
        if (autoStorageIncrease != null)
          'autoStorageIncrease': autoStorageIncrease!,
        if (availabilityType != null) 'availabilityType': availabilityType!,
        if (cmekKeyName != null) 'cmekKeyName': cmekKeyName!,
        if (collation != null) 'collation': collation!,
        if (dataDiskSizeGb != null) 'dataDiskSizeGb': dataDiskSizeGb!,
        if (dataDiskType != null) 'dataDiskType': dataDiskType!,
        if (databaseFlags != null) 'databaseFlags': databaseFlags!,
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (ipConfig != null) 'ipConfig': ipConfig!,
        if (rootPassword != null) 'rootPassword': rootPassword!,
        if (rootPasswordSet != null) 'rootPasswordSet': rootPasswordSet!,
        if (secondaryZone != null) 'secondaryZone': secondaryZone!,
        if (sourceId != null) 'sourceId': sourceId!,
        if (storageAutoResizeLimit != null)
          'storageAutoResizeLimit': storageAutoResizeLimit!,
        if (tier != null) 'tier': tier!,
        if (userLabels != null) 'userLabels': userLabels!,
        if (zone != null) 'zone': zone!,
      };
}

/// A connection profile definition.
class ConnectionProfile {
  /// An AlloyDB cluster connection profile.
  AlloyDbConnectionProfile? alloydb;

  /// A CloudSQL database connection profile.
  CloudSqlConnectionProfile? cloudsql;

  /// The timestamp when the resource was created.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  ///
  /// Output only.
  core.String? createTime;

  /// The connection profile display name.
  core.String? displayName;

  /// The error details in case of state FAILED.
  ///
  /// Output only.
  Status? error;

  /// The resource labels for connection profile to use to annotate any related
  /// underlying resources such as Compute Engine VMs.
  ///
  /// An object containing a list of "key": "value" pairs. Example: `{ "name":
  /// "wrench", "mass": "1.3kg", "count": "3" }`.
  core.Map<core.String, core.String>? labels;

  /// A MySQL database connection profile.
  MySqlConnectionProfile? mysql;

  /// The name of this connection profile resource in the form of
  /// projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
  core.String? name;

  /// A PostgreSQL database connection profile.
  PostgreSqlConnectionProfile? postgresql;

  /// The database provider.
  /// Possible string values are:
  /// - "DATABASE_PROVIDER_UNSPECIFIED" : The database provider is unknown.
  /// - "CLOUDSQL" : CloudSQL runs the database.
  /// - "RDS" : RDS runs the database.
  /// - "AURORA" : Amazon Aurora.
  /// - "ALLOYDB" : AlloyDB.
  core.String? provider;

  /// The current connection profile state (e.g. DRAFT, READY, or FAILED).
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the connection profile is unknown.
  /// - "DRAFT" : The connection profile is in draft mode and fully editable.
  /// - "CREATING" : The connection profile is being created.
  /// - "READY" : The connection profile is ready.
  /// - "UPDATING" : The connection profile is being updated.
  /// - "DELETING" : The connection profile is being deleted.
  /// - "DELETED" : The connection profile has been deleted.
  /// - "FAILED" : The last action on the connection profile failed.
  core.String? state;

  /// The timestamp when the resource was last updated.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  ///
  /// Output only.
  core.String? updateTime;

  ConnectionProfile({
    this.alloydb,
    this.cloudsql,
    this.createTime,
    this.displayName,
    this.error,
    this.labels,
    this.mysql,
    this.name,
    this.postgresql,
    this.provider,
    this.state,
    this.updateTime,
  });

  ConnectionProfile.fromJson(core.Map json_)
      : this(
          alloydb: json_.containsKey('alloydb')
              ? AlloyDbConnectionProfile.fromJson(
                  json_['alloydb'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudsql: json_.containsKey('cloudsql')
              ? CloudSqlConnectionProfile.fromJson(
                  json_['cloudsql'] as core.Map<core.String, core.dynamic>)
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          mysql: json_.containsKey('mysql')
              ? MySqlConnectionProfile.fromJson(
                  json_['mysql'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          postgresql: json_.containsKey('postgresql')
              ? PostgreSqlConnectionProfile.fromJson(
                  json_['postgresql'] as core.Map<core.String, core.dynamic>)
              : null,
          provider: json_.containsKey('provider')
              ? json_['provider'] as core.String
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alloydb != null) 'alloydb': alloydb!,
        if (cloudsql != null) 'cloudsql': cloudsql!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (error != null) 'error': error!,
        if (labels != null) 'labels': labels!,
        if (mysql != null) 'mysql': mysql!,
        if (name != null) 'name': name!,
        if (postgresql != null) 'postgresql': postgresql!,
        if (provider != null) 'provider': provider!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A message defining the database engine and provider.
class DatabaseType {
  /// The database engine.
  /// Possible string values are:
  /// - "DATABASE_ENGINE_UNSPECIFIED" : The source database engine of the
  /// migration job is unknown.
  /// - "MYSQL" : The source engine is MySQL.
  /// - "POSTGRESQL" : The source engine is PostgreSQL.
  core.String? engine;

  /// The database provider.
  /// Possible string values are:
  /// - "DATABASE_PROVIDER_UNSPECIFIED" : The database provider is unknown.
  /// - "CLOUDSQL" : CloudSQL runs the database.
  /// - "RDS" : RDS runs the database.
  /// - "AURORA" : Amazon Aurora.
  /// - "ALLOYDB" : AlloyDB.
  core.String? provider;

  DatabaseType({
    this.engine,
    this.provider,
  });

  DatabaseType.fromJson(core.Map json_)
      : this(
          engine: json_.containsKey('engine')
              ? json_['engine'] as core.String
              : null,
          provider: json_.containsKey('provider')
              ? json_['provider'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (engine != null) 'engine': engine!,
        if (provider != null) 'provider': provider!,
      };
}

/// Dump flag definition.
class DumpFlag {
  /// The name of the flag
  core.String? name;

  /// The value of the flag.
  core.String? value;

  DumpFlag({
    this.name,
    this.value,
  });

  DumpFlag.fromJson(core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (value != null) 'value': value!,
      };
}

/// Dump flags definition.
class DumpFlags {
  /// The flags for the initial dump.
  core.List<DumpFlag>? dumpFlags;

  DumpFlags({
    this.dumpFlags,
  });

  DumpFlags.fromJson(core.Map json_)
      : this(
          dumpFlags: json_.containsKey('dumpFlags')
              ? (json_['dumpFlags'] as core.List)
                  .map((value) => DumpFlag.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dumpFlags != null) 'dumpFlags': dumpFlags!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

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

/// Request message for 'GenerateSshScript' request.
class GenerateSshScriptRequest {
  /// Bastion VM Instance name to use or to create.
  ///
  /// Required.
  core.String? vm;

  /// The VM creation configuration
  VmCreationConfig? vmCreationConfig;

  /// The port that will be open on the bastion host
  core.int? vmPort;

  /// The VM selection configuration
  VmSelectionConfig? vmSelectionConfig;

  GenerateSshScriptRequest({
    this.vm,
    this.vmCreationConfig,
    this.vmPort,
    this.vmSelectionConfig,
  });

  GenerateSshScriptRequest.fromJson(core.Map json_)
      : this(
          vm: json_.containsKey('vm') ? json_['vm'] as core.String : null,
          vmCreationConfig: json_.containsKey('vmCreationConfig')
              ? VmCreationConfig.fromJson(json_['vmCreationConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          vmPort:
              json_.containsKey('vmPort') ? json_['vmPort'] as core.int : null,
          vmSelectionConfig: json_.containsKey('vmSelectionConfig')
              ? VmSelectionConfig.fromJson(json_['vmSelectionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vm != null) 'vm': vm!,
        if (vmCreationConfig != null) 'vmCreationConfig': vmCreationConfig!,
        if (vmPort != null) 'vmPort': vmPort!,
        if (vmSelectionConfig != null) 'vmSelectionConfig': vmSelectionConfig!,
      };
}

/// Response message for 'ListConnectionProfiles' request.
class ListConnectionProfilesResponse {
  /// The response list of connection profiles.
  core.List<ConnectionProfile>? connectionProfiles;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectionProfilesResponse({
    this.connectionProfiles,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectionProfilesResponse.fromJson(core.Map json_)
      : this(
          connectionProfiles: json_.containsKey('connectionProfiles')
              ? (json_['connectionProfiles'] as core.List)
                  .map((value) => ConnectionProfile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionProfiles != null)
          'connectionProfiles': connectionProfiles!,
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
          locations: json_.containsKey('locations')
              ? (json_['locations'] as core.List)
                  .map((value) => Location.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locations != null) 'locations': locations!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for 'ListMigrationJobs' request.
class ListMigrationJobsResponse {
  /// The list of migration jobs objects.
  core.List<MigrationJob>? migrationJobs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListMigrationJobsResponse({
    this.migrationJobs,
    this.nextPageToken,
    this.unreachable,
  });

  ListMigrationJobsResponse.fromJson(core.Map json_)
      : this(
          migrationJobs: json_.containsKey('migrationJobs')
              ? (json_['migrationJobs'] as core.List)
                  .map((value) => MigrationJob.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (migrationJobs != null) 'migrationJobs': migrationJobs!,
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

  ListOperationsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          operations: json_.containsKey('operations')
              ? (json_['operations'] as core.List)
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

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// MachineConfig describes the configuration of a machine.
class MachineConfig {
  /// The number of CPU's in the VM instance.
  core.int? cpuCount;

  MachineConfig({
    this.cpuCount,
  });

  MachineConfig.fromJson(core.Map json_)
      : this(
          cpuCount: json_.containsKey('cpuCount')
              ? json_['cpuCount'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cpuCount != null) 'cpuCount': cpuCount!,
      };
}

/// Represents a Database Migration Service migration job object.
class MigrationJob {
  /// The timestamp when the migration job resource was created.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  ///
  /// Output only.
  core.String? createTime;

  /// The resource name (URI) of the destination connection profile.
  ///
  /// Required.
  core.String? destination;

  /// The database engine type and provider of the destination.
  DatabaseType? destinationDatabase;

  /// The migration job display name.
  core.String? displayName;

  /// The initial dump flags.
  ///
  /// This field and the "dump_path" field are mutually exclusive.
  DumpFlags? dumpFlags;

  /// The path to the dump file in Google Cloud Storage, in the format:
  /// (gs://\[BUCKET_NAME\]/\[OBJECT_NAME\]).
  ///
  /// This field and the "dump_flags" field are mutually exclusive.
  core.String? dumpPath;

  /// The duration of the migration job (in seconds).
  ///
  /// A duration in seconds with up to nine fractional digits, terminated by
  /// 's'. Example: "3.5s".
  ///
  /// Output only.
  core.String? duration;

  /// If the migration job is completed, the time when it was completed.
  ///
  /// Output only.
  core.String? endTime;

  /// The error details in case of state FAILED.
  ///
  /// Output only.
  Status? error;

  /// The resource labels for migration job to use to annotate any related
  /// underlying resources such as Compute Engine VMs.
  ///
  /// An object containing a list of "key": "value" pairs. Example: `{ "name":
  /// "wrench", "mass": "1.3kg", "count": "3" }`.
  core.Map<core.String, core.String>? labels;

  /// The name (URI) of this migration job resource, in the form of:
  /// projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  core.String? name;

  /// The current migration job phase.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PHASE_UNSPECIFIED" : The phase of the migration job is unknown.
  /// - "FULL_DUMP" : The migration job is in the full dump phase.
  /// - "CDC" : The migration job is CDC phase.
  /// - "PROMOTE_IN_PROGRESS" : The migration job is running the promote phase.
  /// - "WAITING_FOR_SOURCE_WRITES_TO_STOP" : Only RDS flow - waiting for source
  /// writes to stop
  /// - "PREPARING_THE_DUMP" : Only RDS flow - the sources writes stopped,
  /// waiting for dump to begin
  core.String? phase;

  /// The details needed to communicate to the source over Reverse SSH tunnel
  /// connectivity.
  ReverseSshConnectivity? reverseSshConnectivity;

  /// The resource name (URI) of the source connection profile.
  ///
  /// Required.
  core.String? source;

  /// The database engine type and provider of the source.
  DatabaseType? sourceDatabase;

  /// The current migration job state.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the migration job is unknown.
  /// - "MAINTENANCE" : The migration job is down for maintenance.
  /// - "DRAFT" : The migration job is in draft mode and no resources are
  /// created.
  /// - "CREATING" : The migration job is being created.
  /// - "NOT_STARTED" : The migration job is created and not started.
  /// - "RUNNING" : The migration job is running.
  /// - "FAILED" : The migration job failed.
  /// - "COMPLETED" : The migration job has been completed.
  /// - "DELETING" : The migration job is being deleted.
  /// - "STOPPING" : The migration job is being stopped.
  /// - "STOPPED" : The migration job is currently stopped.
  /// - "DELETED" : The migration job has been deleted.
  /// - "UPDATING" : The migration job is being updated.
  /// - "STARTING" : The migration job is starting.
  /// - "RESTARTING" : The migration job is restarting.
  /// - "RESUMING" : The migration job is resuming.
  core.String? state;

  /// static ip connectivity data (default, no additional details needed).
  StaticIpConnectivity? staticIpConnectivity;

  /// The migration job type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type of the migration job is unknown.
  /// - "ONE_TIME" : The migration job is a one time migration.
  /// - "CONTINUOUS" : The migration job is a continuous migration.
  core.String? type;

  /// The timestamp when the migration job resource was last updated.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  ///
  /// Output only.
  core.String? updateTime;

  /// The details of the VPC network that the source database is located in.
  VpcPeeringConnectivity? vpcPeeringConnectivity;

  MigrationJob({
    this.createTime,
    this.destination,
    this.destinationDatabase,
    this.displayName,
    this.dumpFlags,
    this.dumpPath,
    this.duration,
    this.endTime,
    this.error,
    this.labels,
    this.name,
    this.phase,
    this.reverseSshConnectivity,
    this.source,
    this.sourceDatabase,
    this.state,
    this.staticIpConnectivity,
    this.type,
    this.updateTime,
    this.vpcPeeringConnectivity,
  });

  MigrationJob.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          destination: json_.containsKey('destination')
              ? json_['destination'] as core.String
              : null,
          destinationDatabase: json_.containsKey('destinationDatabase')
              ? DatabaseType.fromJson(json_['destinationDatabase']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          dumpFlags: json_.containsKey('dumpFlags')
              ? DumpFlags.fromJson(
                  json_['dumpFlags'] as core.Map<core.String, core.dynamic>)
              : null,
          dumpPath: json_.containsKey('dumpPath')
              ? json_['dumpPath'] as core.String
              : null,
          duration: json_.containsKey('duration')
              ? json_['duration'] as core.String
              : null,
          endTime: json_.containsKey('endTime')
              ? json_['endTime'] as core.String
              : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          phase:
              json_.containsKey('phase') ? json_['phase'] as core.String : null,
          reverseSshConnectivity: json_.containsKey('reverseSshConnectivity')
              ? ReverseSshConnectivity.fromJson(json_['reverseSshConnectivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
          sourceDatabase: json_.containsKey('sourceDatabase')
              ? DatabaseType.fromJson(json_['sourceDatabase']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          staticIpConnectivity: json_.containsKey('staticIpConnectivity')
              ? StaticIpConnectivity.fromJson(json_['staticIpConnectivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vpcPeeringConnectivity: json_.containsKey('vpcPeeringConnectivity')
              ? VpcPeeringConnectivity.fromJson(json_['vpcPeeringConnectivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (destination != null) 'destination': destination!,
        if (destinationDatabase != null)
          'destinationDatabase': destinationDatabase!,
        if (displayName != null) 'displayName': displayName!,
        if (dumpFlags != null) 'dumpFlags': dumpFlags!,
        if (dumpPath != null) 'dumpPath': dumpPath!,
        if (duration != null) 'duration': duration!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (phase != null) 'phase': phase!,
        if (reverseSshConnectivity != null)
          'reverseSshConnectivity': reverseSshConnectivity!,
        if (source != null) 'source': source!,
        if (sourceDatabase != null) 'sourceDatabase': sourceDatabase!,
        if (state != null) 'state': state!,
        if (staticIpConnectivity != null)
          'staticIpConnectivity': staticIpConnectivity!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vpcPeeringConnectivity != null)
          'vpcPeeringConnectivity': vpcPeeringConnectivity!,
      };
}

/// Specifies connection parameters required specifically for MySQL databases.
class MySqlConnectionProfile {
  /// If the source is a Cloud SQL database, use this field to provide the Cloud
  /// SQL instance ID of the source.
  core.String? cloudSqlId;

  /// The IP or hostname of the source MySQL database.
  ///
  /// Required.
  core.String? host;

  /// Input only.
  ///
  /// The password for the user that Database Migration Service will be using to
  /// connect to the database. This field is not returned on request, and the
  /// value is encrypted when stored in Database Migration Service.
  ///
  /// Required.
  core.String? password;

  /// Indicates If this connection profile password is stored.
  ///
  /// Output only.
  core.bool? passwordSet;

  /// The network port of the source MySQL database.
  ///
  /// Required.
  core.int? port;

  /// SSL configuration for the destination to connect to the source database.
  SslConfig? ssl;

  /// The username that Database Migration Service will use to connect to the
  /// database.
  ///
  /// The value is encrypted when stored in Database Migration Service.
  ///
  /// Required.
  core.String? username;

  MySqlConnectionProfile({
    this.cloudSqlId,
    this.host,
    this.password,
    this.passwordSet,
    this.port,
    this.ssl,
    this.username,
  });

  MySqlConnectionProfile.fromJson(core.Map json_)
      : this(
          cloudSqlId: json_.containsKey('cloudSqlId')
              ? json_['cloudSqlId'] as core.String
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          passwordSet: json_.containsKey('passwordSet')
              ? json_['passwordSet'] as core.bool
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          ssl: json_.containsKey('ssl')
              ? SslConfig.fromJson(
                  json_['ssl'] as core.Map<core.String, core.dynamic>)
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSqlId != null) 'cloudSqlId': cloudSqlId!,
        if (host != null) 'host': host!,
        if (password != null) 'password': password!,
        if (passwordSet != null) 'passwordSet': passwordSet!,
        if (port != null) 'port': port!,
        if (ssl != null) 'ssl': ssl!,
        if (username != null) 'username': username!,
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

  Operation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? json_['metadata'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

  Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => Binding.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          etag: json_.containsKey('etag') ? json_['etag'] as core.String : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (auditConfigs != null) 'auditConfigs': auditConfigs!,
        if (bindings != null) 'bindings': bindings!,
        if (etag != null) 'etag': etag!,
        if (version != null) 'version': version!,
      };
}

/// Specifies connection parameters required specifically for PostgreSQL
/// databases.
class PostgreSqlConnectionProfile {
  /// If the source is a Cloud SQL database, use this field to provide the Cloud
  /// SQL instance ID of the source.
  core.String? cloudSqlId;

  /// The IP or hostname of the source PostgreSQL database.
  ///
  /// Required.
  core.String? host;

  /// If the source is a Cloud SQL database, this field indicates the network
  /// architecture it's associated with.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "NETWORK_ARCHITECTURE_UNSPECIFIED"
  /// - "NETWORK_ARCHITECTURE_OLD_CSQL_PRODUCER" : Instance is in Cloud SQL's
  /// old producer network architecture.
  /// - "NETWORK_ARCHITECTURE_NEW_CSQL_PRODUCER" : Instance is in Cloud SQL's
  /// new producer network architecture.
  core.String? networkArchitecture;

  /// Input only.
  ///
  /// The password for the user that Database Migration Service will be using to
  /// connect to the database. This field is not returned on request, and the
  /// value is encrypted when stored in Database Migration Service.
  ///
  /// Required.
  core.String? password;

  /// Indicates If this connection profile password is stored.
  ///
  /// Output only.
  core.bool? passwordSet;

  /// The network port of the source PostgreSQL database.
  ///
  /// Required.
  core.int? port;

  /// SSL configuration for the destination to connect to the source database.
  SslConfig? ssl;

  /// The username that Database Migration Service will use to connect to the
  /// database.
  ///
  /// The value is encrypted when stored in Database Migration Service.
  ///
  /// Required.
  core.String? username;

  PostgreSqlConnectionProfile({
    this.cloudSqlId,
    this.host,
    this.networkArchitecture,
    this.password,
    this.passwordSet,
    this.port,
    this.ssl,
    this.username,
  });

  PostgreSqlConnectionProfile.fromJson(core.Map json_)
      : this(
          cloudSqlId: json_.containsKey('cloudSqlId')
              ? json_['cloudSqlId'] as core.String
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          networkArchitecture: json_.containsKey('networkArchitecture')
              ? json_['networkArchitecture'] as core.String
              : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          passwordSet: json_.containsKey('passwordSet')
              ? json_['passwordSet'] as core.bool
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          ssl: json_.containsKey('ssl')
              ? SslConfig.fromJson(
                  json_['ssl'] as core.Map<core.String, core.dynamic>)
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudSqlId != null) 'cloudSqlId': cloudSqlId!,
        if (host != null) 'host': host!,
        if (networkArchitecture != null)
          'networkArchitecture': networkArchitecture!,
        if (password != null) 'password': password!,
        if (passwordSet != null) 'passwordSet': passwordSet!,
        if (port != null) 'port': port!,
        if (ssl != null) 'ssl': ssl!,
        if (username != null) 'username': username!,
      };
}

/// Settings for the cluster's primary instance
class PrimaryInstanceSettings {
  /// Database flags to pass to AlloyDB when DMS is creating the AlloyDB cluster
  /// and instances.
  ///
  /// See the AlloyDB documentation for how these can be used.
  core.Map<core.String, core.String>? databaseFlags;

  /// The ID of the AlloyDB primary instance.
  ///
  /// The ID must satisfy the regex expression "\[a-z0-9-\]+".
  ///
  /// Required.
  core.String? id;

  /// Labels for the AlloyDB primary instance created by DMS.
  ///
  /// An object containing a list of 'key', 'value' pairs.
  core.Map<core.String, core.String>? labels;

  /// Configuration for the machines that host the underlying database engine.
  MachineConfig? machineConfig;

  /// The private IP address for the Instance.
  ///
  /// This is the connection endpoint for an end-user application.
  ///
  /// Output only.
  core.String? privateIp;

  PrimaryInstanceSettings({
    this.databaseFlags,
    this.id,
    this.labels,
    this.machineConfig,
    this.privateIp,
  });

  PrimaryInstanceSettings.fromJson(core.Map json_)
      : this(
          databaseFlags: json_.containsKey('databaseFlags')
              ? (json_['databaseFlags'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          machineConfig: json_.containsKey('machineConfig')
              ? MachineConfig.fromJson(
                  json_['machineConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          privateIp: json_.containsKey('privateIp')
              ? json_['privateIp'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseFlags != null) 'databaseFlags': databaseFlags!,
        if (id != null) 'id': id!,
        if (labels != null) 'labels': labels!,
        if (machineConfig != null) 'machineConfig': machineConfig!,
        if (privateIp != null) 'privateIp': privateIp!,
      };
}

/// Request message for 'PromoteMigrationJob' request.
typedef PromoteMigrationJobRequest = $Empty;

/// Request message for 'RestartMigrationJob' request.
typedef RestartMigrationJobRequest = $Empty;

/// Request message for 'ResumeMigrationJob' request.
typedef ResumeMigrationJobRequest = $Empty;

/// The details needed to configure a reverse SSH tunnel between the source and
/// destination databases.
///
/// These details will be used when calling the generateSshScript method (see
/// https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.migrationJobs/generateSshScript)
/// to produce the script that will help set up the reverse SSH tunnel, and to
/// set up the VPC peering between the Cloud SQL private network and the VPC.
class ReverseSshConnectivity {
  /// The name of the virtual machine (Compute Engine) used as the bastion
  /// server for the SSH tunnel.
  core.String? vm;

  /// The IP of the virtual machine (Compute Engine) used as the bastion server
  /// for the SSH tunnel.
  ///
  /// Required.
  core.String? vmIp;

  /// The forwarding port of the virtual machine (Compute Engine) used as the
  /// bastion server for the SSH tunnel.
  ///
  /// Required.
  core.int? vmPort;

  /// The name of the VPC to peer with the Cloud SQL private network.
  core.String? vpc;

  ReverseSshConnectivity({
    this.vm,
    this.vmIp,
    this.vmPort,
    this.vpc,
  });

  ReverseSshConnectivity.fromJson(core.Map json_)
      : this(
          vm: json_.containsKey('vm') ? json_['vm'] as core.String : null,
          vmIp: json_.containsKey('vmIp') ? json_['vmIp'] as core.String : null,
          vmPort:
              json_.containsKey('vmPort') ? json_['vmPort'] as core.int : null,
          vpc: json_.containsKey('vpc') ? json_['vpc'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vm != null) 'vm': vm!,
        if (vmIp != null) 'vmIp': vmIp!,
        if (vmPort != null) 'vmPort': vmPort!,
        if (vpc != null) 'vpc': vpc!,
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

  SetIamPolicyRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// An entry for an Access Control list.
class SqlAclEntry {
  /// The time when this access control entry expires in
  /// [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example:
  /// `2012-11-15T16:19:00.094Z`.
  core.String? expireTime;

  /// A label to identify this entry.
  core.String? label;

  /// Input only.
  ///
  /// The time-to-leave of this access control entry.
  core.String? ttl;

  /// The allowlisted value for the access control list.
  core.String? value;

  SqlAclEntry({
    this.expireTime,
    this.label,
    this.ttl,
    this.value,
  });

  SqlAclEntry.fromJson(core.Map json_)
      : this(
          expireTime: json_.containsKey('expireTime')
              ? json_['expireTime'] as core.String
              : null,
          label:
              json_.containsKey('label') ? json_['label'] as core.String : null,
          ttl: json_.containsKey('ttl') ? json_['ttl'] as core.String : null,
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (expireTime != null) 'expireTime': expireTime!,
        if (label != null) 'label': label!,
        if (ttl != null) 'ttl': ttl!,
        if (value != null) 'value': value!,
      };
}

/// IP Management configuration.
class SqlIpConfig {
  /// The list of external networks that are allowed to connect to the instance
  /// using the IP.
  ///
  /// See https://en.wikipedia.org/wiki/CIDR_notation#CIDR_notation, also known
  /// as 'slash' notation (e.g. `192.168.100.0/24`).
  core.List<SqlAclEntry>? authorizedNetworks;

  /// Whether the instance should be assigned an IPv4 address or not.
  core.bool? enableIpv4;

  /// The resource link for the VPC network from which the Cloud SQL instance is
  /// accessible for private IP.
  ///
  /// For example, `projects/myProject/global/networks/default`. This setting
  /// can be updated, but it cannot be removed after it is set.
  core.String? privateNetwork;

  /// Whether SSL connections over IP should be enforced or not.
  core.bool? requireSsl;

  SqlIpConfig({
    this.authorizedNetworks,
    this.enableIpv4,
    this.privateNetwork,
    this.requireSsl,
  });

  SqlIpConfig.fromJson(core.Map json_)
      : this(
          authorizedNetworks: json_.containsKey('authorizedNetworks')
              ? (json_['authorizedNetworks'] as core.List)
                  .map((value) => SqlAclEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          enableIpv4: json_.containsKey('enableIpv4')
              ? json_['enableIpv4'] as core.bool
              : null,
          privateNetwork: json_.containsKey('privateNetwork')
              ? json_['privateNetwork'] as core.String
              : null,
          requireSsl: json_.containsKey('requireSsl')
              ? json_['requireSsl'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authorizedNetworks != null)
          'authorizedNetworks': authorizedNetworks!,
        if (enableIpv4 != null) 'enableIpv4': enableIpv4!,
        if (privateNetwork != null) 'privateNetwork': privateNetwork!,
        if (requireSsl != null) 'requireSsl': requireSsl!,
      };
}

/// Response message for 'GenerateSshScript' request.
class SshScript {
  /// The ssh configuration script.
  core.String? script;

  SshScript({
    this.script,
  });

  SshScript.fromJson(core.Map json_)
      : this(
          script: json_.containsKey('script')
              ? json_['script'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (script != null) 'script': script!,
      };
}

/// SSL configuration information.
class SslConfig {
  /// Input only.
  ///
  /// The x509 PEM-encoded certificate of the CA that signed the source database
  /// server's certificate. The replica will use this certificate to verify it's
  /// connecting to the right host.
  ///
  /// Required.
  core.String? caCertificate;

  /// Input only.
  ///
  /// The x509 PEM-encoded certificate that will be used by the replica to
  /// authenticate against the source database server.If this field is used then
  /// the 'client_key' field is mandatory.
  core.String? clientCertificate;

  /// Input only.
  ///
  /// The unencrypted PKCS#1 or PKCS#8 PEM-encoded private key associated with
  /// the Client Certificate. If this field is used then the
  /// 'client_certificate' field is mandatory.
  core.String? clientKey;

  /// The ssl config type according to 'client_key', 'client_certificate' and
  /// 'ca_certificate'.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SSL_TYPE_UNSPECIFIED" : Unspecified.
  /// - "SERVER_ONLY" : Only 'ca_certificate' specified.
  /// - "SERVER_CLIENT" : Both server ('ca_certificate'), and client
  /// ('client_key', 'client_certificate') specified.
  core.String? type;

  SslConfig({
    this.caCertificate,
    this.clientCertificate,
    this.clientKey,
    this.type,
  });

  SslConfig.fromJson(core.Map json_)
      : this(
          caCertificate: json_.containsKey('caCertificate')
              ? json_['caCertificate'] as core.String
              : null,
          clientCertificate: json_.containsKey('clientCertificate')
              ? json_['clientCertificate'] as core.String
              : null,
          clientKey: json_.containsKey('clientKey')
              ? json_['clientKey'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (caCertificate != null) 'caCertificate': caCertificate!,
        if (clientCertificate != null) 'clientCertificate': clientCertificate!,
        if (clientKey != null) 'clientKey': clientKey!,
        if (type != null) 'type': type!,
      };
}

/// Request message for 'StartMigrationJob' request.
typedef StartMigrationJobRequest = $Empty;

/// The source database will allow incoming connections from the destination
/// database's public IP.
///
/// You can retrieve the Cloud SQL instance's public IP from the Cloud SQL
/// console or using Cloud SQL APIs. No additional configuration is required.
typedef StaticIpConnectivity = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status;

/// Request message for 'StopMigrationJob' request.
typedef StopMigrationJobRequest = $Empty;

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// The username/password for a database user.
///
/// Used for specifying initial users at cluster creation time.
class UserPassword {
  /// The initial password for the user.
  core.String? password;

  /// Indicates if the initial_user.password field has been set.
  ///
  /// Output only.
  core.bool? passwordSet;

  /// The database username.
  core.String? user;

  UserPassword({
    this.password,
    this.passwordSet,
    this.user,
  });

  UserPassword.fromJson(core.Map json_)
      : this(
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          passwordSet: json_.containsKey('passwordSet')
              ? json_['passwordSet'] as core.bool
              : null,
          user: json_.containsKey('user') ? json_['user'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
        if (passwordSet != null) 'passwordSet': passwordSet!,
        if (user != null) 'user': user!,
      };
}

/// Request message for 'VerifyMigrationJob' request.
typedef VerifyMigrationJobRequest = $Empty;

/// VM creation configuration message
class VmCreationConfig {
  /// The subnet name the vm needs to be created in.
  core.String? subnet;

  /// VM instance machine type to create.
  ///
  /// Required.
  core.String? vmMachineType;

  /// The Google Cloud Platform zone to create the VM in.
  core.String? vmZone;

  VmCreationConfig({
    this.subnet,
    this.vmMachineType,
    this.vmZone,
  });

  VmCreationConfig.fromJson(core.Map json_)
      : this(
          subnet: json_.containsKey('subnet')
              ? json_['subnet'] as core.String
              : null,
          vmMachineType: json_.containsKey('vmMachineType')
              ? json_['vmMachineType'] as core.String
              : null,
          vmZone: json_.containsKey('vmZone')
              ? json_['vmZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subnet != null) 'subnet': subnet!,
        if (vmMachineType != null) 'vmMachineType': vmMachineType!,
        if (vmZone != null) 'vmZone': vmZone!,
      };
}

/// VM selection configuration message
class VmSelectionConfig {
  /// The Google Cloud Platform zone the VM is located.
  ///
  /// Required.
  core.String? vmZone;

  VmSelectionConfig({
    this.vmZone,
  });

  VmSelectionConfig.fromJson(core.Map json_)
      : this(
          vmZone: json_.containsKey('vmZone')
              ? json_['vmZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vmZone != null) 'vmZone': vmZone!,
      };
}

/// The details of the VPC where the source database is located in Google Cloud.
///
/// We will use this information to set up the VPC peering connection between
/// Cloud SQL and this VPC.
class VpcPeeringConnectivity {
  /// The name of the VPC network to peer with the Cloud SQL private network.
  core.String? vpc;

  VpcPeeringConnectivity({
    this.vpc,
  });

  VpcPeeringConnectivity.fromJson(core.Map json_)
      : this(
          vpc: json_.containsKey('vpc') ? json_['vpc'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vpc != null) 'vpc': vpc!,
      };
}
