// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
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
///     - [ProjectsLocationsConversionWorkspacesResource]
///       - [ProjectsLocationsConversionWorkspacesMappingRulesResource]
///     - [ProjectsLocationsMigrationJobsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsPrivateConnectionsResource]
library;

import 'dart:async' as async;
import 'dart:convert' as convert_1;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

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
  ProjectsLocationsConversionWorkspacesResource get conversionWorkspaces =>
      ProjectsLocationsConversionWorkspacesResource(_requester);
  ProjectsLocationsMigrationJobsResource get migrationJobs =>
      ProjectsLocationsMigrationJobsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsPrivateConnectionsResource get privateConnections =>
      ProjectsLocationsPrivateConnectionsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Fetches a set of static IP addresses that need to be allowlisted by the
  /// customer when using the static-IP connectivity method.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name for the location for which static IPs
  /// should be returned. Must be in the format `projects / * /locations / * `.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - Maximum number of IPs to return.
  ///
  /// [pageToken] - A page token, received from a previous `FetchStaticIps`
  /// call.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchStaticIpsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchStaticIpsResponse> fetchStaticIps(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchStaticIps';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchStaticIpsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [parent] - Required. The parent which owns this collection of connection
  /// profiles.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectionProfileId] - Required. The connection profile identifier.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [skipValidation] - Optional. Create the connection profile without
  /// validating it. The default is false. Only supported for Oracle connection
  /// profiles.
  ///
  /// [validateOnly] - Optional. Only validate the connection profile, but don't
  /// create any resources. The default is false. Only supported for Oracle
  /// connection profiles.
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
    core.bool? skipValidation,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectionProfileId != null)
        'connectionProfileId': [connectionProfileId],
      if (requestId != null) 'requestId': [requestId],
      if (skipValidation != null) 'skipValidation': ['${skipValidation}'],
      if (validateOnly != null) 'validateOnly': ['${validateOnly}'],
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
  /// [requestId] - A unique ID used to identify the request. If the server
  /// receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
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
  /// [parent] - Required. The parent which owns this collection of connection
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
  /// above 1000 are coerced to 1000.
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
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [skipValidation] - Optional. Update the connection profile without
  /// validating it. The default is false. Only supported for Oracle connection
  /// profiles.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten by the update in the conversion workspace resource.
  ///
  /// [validateOnly] - Optional. Only validate the connection profile, but don't
  /// update any resources. The default is false. Only supported for Oracle
  /// connection profiles.
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
    core.bool? skipValidation,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (requestId != null) 'requestId': [requestId],
      if (skipValidation != null) 'skipValidation': ['${skipValidation}'],
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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

class ProjectsLocationsConversionWorkspacesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversionWorkspacesMappingRulesResource get mappingRules =>
      ProjectsLocationsConversionWorkspacesMappingRulesResource(_requester);

  ProjectsLocationsConversionWorkspacesResource(commons.ApiRequester client)
      : _requester = client;

  /// Applies draft tree onto a specific destination database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the conversion workspace resource for which
  /// to apply the draft tree. Must be in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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
  async.Future<Operation> apply(
    ApplyConversionWorkspaceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':apply';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Marks all the data in the conversion workspace as committed.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the conversion workspace resource to commit.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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
  async.Future<Operation> commit(
    CommitConversionWorkspaceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':commit';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a draft tree schema for the destination database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the conversion workspace resource to convert in the form
  /// of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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
  async.Future<Operation> convert(
    ConvertConversionWorkspaceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':convert';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Creates a new conversion workspace in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of conversion
  /// workspaces.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [conversionWorkspaceId] - Required. The ID of the conversion workspace to
  /// create.
  ///
  /// [requestId] - A unique ID used to identify the request. If the server
  /// receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
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
    ConversionWorkspace request,
    core.String parent, {
    core.String? conversionWorkspaceId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conversionWorkspaceId != null)
        'conversionWorkspaceId': [conversionWorkspaceId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/conversionWorkspaces';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single conversion workspace.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the conversion workspace resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
  ///
  /// [force] - Force delete the conversion workspace, even if there's a running
  /// migration that is using the workspace.
  ///
  /// [requestId] - A unique ID used to identify the request. If the server
  /// receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
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

  /// Retrieves a list of committed revisions of a specific conversion
  /// workspace.
  ///
  /// Request parameters:
  ///
  /// [conversionWorkspace] - Required. Name of the conversion workspace
  /// resource whose revisions are listed. Must be in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
  ///
  /// [commitId] - Optional. Optional filter to request a specific commit ID.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DescribeConversionWorkspaceRevisionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DescribeConversionWorkspaceRevisionsResponse>
      describeConversionWorkspaceRevisions(
    core.String conversionWorkspace, {
    core.String? commitId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (commitId != null) 'commitId': [commitId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$conversionWorkspace') +
        ':describeConversionWorkspaceRevisions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DescribeConversionWorkspaceRevisionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Describes the database entities tree for a specific conversion workspace
  /// and a specific tree type.
  ///
  /// Database entities are not resources like conversion workspaces or mapping
  /// rules, and they can't be created, updated or deleted. Instead, they are
  /// simple data objects describing the structure of the client database.
  ///
  /// Request parameters:
  ///
  /// [conversionWorkspace] - Required. Name of the conversion workspace
  /// resource whose database entities are described. Must be in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
  ///
  /// [commitId] - Optional. Request a specific commit ID. If not specified, the
  /// entities from the latest commit are returned.
  ///
  /// [filter] - Optional. Filter the returned entities based on AIP-160
  /// standard.
  ///
  /// [pageSize] - Optional. The maximum number of entities to return. The
  /// service may return fewer entities than the value specifies.
  ///
  /// [pageToken] - Optional. The nextPageToken value received in the previous
  /// call to conversionWorkspace.describeDatabaseEntities, used in the
  /// subsequent request to retrieve the next page of results. On first call
  /// this should be left blank. When paginating, all other parameters provided
  /// to conversionWorkspace.describeDatabaseEntities must match the call that
  /// provided the page token.
  ///
  /// [tree] - Required. The tree to fetch.
  /// Possible string values are:
  /// - "DB_TREE_TYPE_UNSPECIFIED" : Unspecified tree type.
  /// - "SOURCE_TREE" : The source database tree.
  /// - "DRAFT_TREE" : The draft database tree.
  /// - "DESTINATION_TREE" : The destination database tree.
  ///
  /// [uncommitted] - Optional. Whether to retrieve the latest committed version
  /// of the entities or the latest version. This field is ignored if a specific
  /// commit_id is specified.
  ///
  /// [view] - Optional. Results view based on AIP-157
  /// Possible string values are:
  /// - "DATABASE_ENTITY_VIEW_UNSPECIFIED" : Unspecified view. Defaults to basic
  /// view.
  /// - "DATABASE_ENTITY_VIEW_BASIC" : Default view. Does not return DDLs or
  /// Issues.
  /// - "DATABASE_ENTITY_VIEW_FULL" : Return full entity details including
  /// mappings, ddl and issues.
  /// - "DATABASE_ENTITY_VIEW_ROOT_SUMMARY" : Top-most (Database, Schema) nodes
  /// which are returned contains summary details for their decendents such as
  /// the number of entities per type and issues rollups. When this view is
  /// used, only a single page of result is returned and the page_size property
  /// of the request is ignored. The returned page will only include the
  /// top-most node types.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DescribeDatabaseEntitiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DescribeDatabaseEntitiesResponse> describeDatabaseEntities(
    core.String conversionWorkspace, {
    core.String? commitId,
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? tree,
    core.bool? uncommitted,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (commitId != null) 'commitId': [commitId],
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (tree != null) 'tree': [tree],
      if (uncommitted != null) 'uncommitted': ['${uncommitted}'],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$conversionWorkspace') +
        ':describeDatabaseEntities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DescribeDatabaseEntitiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single conversion workspace.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the conversion workspace resource to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConversionWorkspace].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConversionWorkspace> get(
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
    return ConversionWorkspace.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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

  /// Lists conversion workspaces in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of conversion
  /// workspaces.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters conversion workspaces listed
  /// in the response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, \>, or \<. For example, list conversion workspaces created
  /// this year by specifying **createTime %gt;
  /// 2020-01-01T00:00:00.000000000Z.** You can also filter nested fields. For
  /// example, you could specify **source.version = "12.c.1"** to select all
  /// conversion workspaces with source database version equal to 12.c.1.
  ///
  /// [pageSize] - The maximum number of conversion workspaces to return. The
  /// service may return fewer than this value. If unspecified, at most 50 sets
  /// are returned.
  ///
  /// [pageToken] - The nextPageToken value received in the previous call to
  /// conversionWorkspaces.list, used in the subsequent request to retrieve the
  /// next page of results. On first call this should be left blank. When
  /// paginating, all other parameters provided to conversionWorkspaces.list
  /// must match the call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConversionWorkspacesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConversionWorkspacesResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/conversionWorkspaces';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConversionWorkspacesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single conversion workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Full name of the workspace resource, in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
  ///
  /// [requestId] - A unique ID used to identify the request. If the server
  /// receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten by the update in the conversion workspace resource.
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
    ConversionWorkspace request,
    core.String name, {
    core.String? requestId,
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
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

  /// Rolls back a conversion workspace to the last committed snapshot.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the conversion workspace resource to roll back
  /// to.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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
  async.Future<Operation> rollback(
    RollbackConversionWorkspaceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rollback';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches/lists the background jobs for a specific conversion workspace.
  ///
  /// The background jobs are not resources like conversion workspaces or
  /// mapping rules, and they can't be created, updated or deleted. Instead,
  /// they are a way to expose the data plane jobs log.
  ///
  /// Request parameters:
  ///
  /// [conversionWorkspace] - Required. Name of the conversion workspace
  /// resource whose jobs are listed, in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
  ///
  /// [completedUntilTime] - Optional. If provided, only returns jobs that
  /// completed until (not including) the given timestamp.
  ///
  /// [maxSize] - Optional. The maximum number of jobs to return. The service
  /// may return fewer than this value. If unspecified, at most 100 jobs are
  /// returned. The maximum value is 100; values above 100 are coerced to 100.
  ///
  /// [returnMostRecentPerJobType] - Optional. Whether or not to return just the
  /// most recent job per job type,
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchBackgroundJobsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchBackgroundJobsResponse> searchBackgroundJobs(
    core.String conversionWorkspace, {
    core.String? completedUntilTime,
    core.int? maxSize,
    core.bool? returnMostRecentPerJobType,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (completedUntilTime != null)
        'completedUntilTime': [completedUntilTime],
      if (maxSize != null) 'maxSize': ['${maxSize}'],
      if (returnMostRecentPerJobType != null)
        'returnMostRecentPerJobType': ['${returnMostRecentPerJobType}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$conversionWorkspace') +
        ':searchBackgroundJobs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchBackgroundJobsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports a snapshot of the source database into the conversion workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the conversion workspace resource to seed with new
  /// database structure, in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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
  async.Future<Operation> seed(
    SeedConversionWorkspaceRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':seed';

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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
    final body_ = convert_1.json.encode(request);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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
    final body_ = convert_1.json.encode(request);
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

class ProjectsLocationsConversionWorkspacesMappingRulesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConversionWorkspacesMappingRulesResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Creates a new mapping rule for a given conversion workspace.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent which owns this collection of mapping
  /// rules.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
  ///
  /// [mappingRuleId] - Required. The ID of the rule to create.
  ///
  /// [requestId] - A unique ID used to identify the request. If the server
  /// receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MappingRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MappingRule> create(
    MappingRule request,
    core.String parent, {
    core.String? mappingRuleId,
    core.String? requestId,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (mappingRuleId != null) 'mappingRuleId': [mappingRuleId],
      if (requestId != null) 'requestId': [requestId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/mappingRules';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return MappingRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single mapping rule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mapping rule resource to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+/mappingRules/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
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
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the details of a mapping rule.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Name of the mapping rule resource to get. Example:
  /// conversionWorkspaces/123/mappingRules/rule123 In order to retrieve a
  /// previous revision of the mapping rule, also provide the revision ID.
  /// Example:
  /// conversionWorkspace/123/mappingRules/rule123@c7cfa2a8c7cfa2a8c7cfa2a8c7cfa2a8
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+/mappingRules/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [MappingRule].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<MappingRule> get(
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
    return MappingRule.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Imports the mapping rules for a given conversion workspace.
  ///
  /// Supports various formats of external rules files.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the conversion workspace resource to import
  /// the rules to in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
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
  async.Future<Operation> import(
    ImportMappingRulesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/mappingRules:import';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the mapping rules for a specific conversion workspace.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Name of the conversion workspace resource whose
  /// mapping rules are listed in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/conversionWorkspaces/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of rules to return. The service may return
  /// fewer than this value.
  ///
  /// [pageToken] - The nextPageToken value received in the previous call to
  /// mappingRules.list, used in the subsequent request to retrieve the next
  /// page of results. On first call this should be left blank. When paginating,
  /// all other parameters provided to mappingRules.list must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListMappingRulesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListMappingRulesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/mappingRules';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListMappingRulesResponse.fromJson(
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
  /// [parent] - Required. The parent which owns this collection of migration
  /// jobs.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [migrationJobId] - Required. The ID of the instance to create.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
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
    final body_ = convert_1.json.encode(request);
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
  /// [requestId] - A unique ID used to identify the request. If the server
  /// receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
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

  /// Demotes the destination database to become a read replica of the source.
  ///
  /// This is applicable for the following migrations: 1. MySQL to Cloud SQL for
  /// MySQL 2. PostgreSQL to Cloud SQL for PostgreSQL 3. PostgreSQL to AlloyDB
  /// for PostgreSQL.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Name of the migration job resource to demote its destination.
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
  async.Future<Operation> demoteDestination(
    DemoteDestinationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':demoteDestination';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
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
    final body_ = convert_1.json.encode(request);
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

  /// Generate a TCP Proxy configuration script to configure a cloud-hosted VM
  /// running a TCP Proxy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [migrationJob] - Name of the migration job resource to generate the TCP
  /// Proxy script.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/migrationJobs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [TcpProxyScript].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<TcpProxyScript> generateTcpProxyScript(
    GenerateTcpProxyScriptRequest request,
    core.String migrationJob, {
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' +
        core.Uri.encodeFull('$migrationJob') +
        ':generateTcpProxyScript';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return TcpProxyScript.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// [parent] - Required. The parent which owns this collection of
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
  /// jobs will be returned. The maximum value is 1000; values above 1000 are
  /// coerced to 1000.
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
  /// [requestId] - A unique ID used to identify the request. If the server
  /// receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten by the update in the conversion workspace resource.
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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
    final body_ = convert_1.json.encode(request);
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

class ProjectsLocationsPrivateConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsPrivateConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new private connection in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of
  /// PrivateConnections.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [privateConnectionId] - Required. The private connection identifier.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
  /// contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and
  /// hyphens (-). The maximum length is 40 characters.
  ///
  /// [skipValidation] - Optional. If set to true, will skip validations.
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
    PrivateConnection request,
    core.String parent, {
    core.String? privateConnectionId,
    core.String? requestId,
    core.bool? skipValidation,
    core.String? $fields,
  }) async {
    final body_ = convert_1.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (privateConnectionId != null)
        'privateConnectionId': [privateConnectionId],
      if (requestId != null) 'requestId': [requestId],
      if (skipValidation != null) 'skipValidation': ['${skipValidation}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateConnections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Database Migration Service private connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the private connection to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [requestId] - Optional. A unique ID used to identify the request. If the
  /// server receives two requests with the same ID, then the second request is
  /// ignored. It is recommended to always set this value to a UUID. The ID must
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

  /// Gets details of a single private connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the private connection to get.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [PrivateConnection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<PrivateConnection> get(
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
    return PrivateConnection.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
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

  /// Retrieves a list of private connections in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent that owns the collection of private
  /// connections.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - A filter expression that filters private connections listed in
  /// the response. The expression must specify the field name, a comparison
  /// operator, and the value that you want to use for filtering. The value must
  /// be a string, a number, or a boolean. The comparison operator must be
  /// either =, !=, \>, or \<. For example, list private connections created
  /// this year by specifying **createTime %gt;
  /// 2021-01-01T00:00:00.000000000Z**.
  ///
  /// [orderBy] - Order by fields for the result.
  ///
  /// [pageSize] - Maximum number of private connections to return. If
  /// unspecified, at most 50 private connections that are returned. The maximum
  /// value is 1000; values above 1000 are coerced to 1000.
  ///
  /// [pageToken] - Page token received from a previous `ListPrivateConnections`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListPrivateConnections` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListPrivateConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListPrivateConnectionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/privateConnections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListPrivateConnectionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
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
    final body_ = convert_1.json.encode(request);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/privateConnections/\[^/\]+$`.
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
    final body_ = convert_1.json.encode(request);
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
  /// The database engine major version.
  ///
  /// This is an optional field. If a database version is not supplied at
  /// cluster creation time, then a default database version will be used.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DATABASE_VERSION_UNSPECIFIED" : This is an unknown database version.
  /// - "POSTGRES_14" : The database version is Postgres 14.
  /// - "POSTGRES_15" : The database version is Postgres 15.
  core.String? databaseVersion;

  /// The encryption config can be specified to encrypt the data disks and other
  /// persistent data resources of a cluster with a customer-managed encryption
  /// key (CMEK).
  ///
  /// When this field is not specified, the cluster will then use default
  /// encryption scheme to protect the user data.
  ///
  /// Optional.
  EncryptionConfig? encryptionConfig;

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
    this.databaseVersion,
    this.encryptionConfig,
    this.initialUser,
    this.labels,
    this.primaryInstanceSettings,
    this.vpcNetwork,
  });

  AlloyDbSettings.fromJson(core.Map json_)
      : this(
          databaseVersion: json_.containsKey('databaseVersion')
              ? json_['databaseVersion'] as core.String
              : null,
          encryptionConfig: json_.containsKey('encryptionConfig')
              ? EncryptionConfig.fromJson(json_['encryptionConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          initialUser: json_.containsKey('initialUser')
              ? UserPassword.fromJson(
                  json_['initialUser'] as core.Map<core.String, core.dynamic>)
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
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
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
        if (initialUser != null) 'initialUser': initialUser!,
        if (labels != null) 'labels': labels!,
        if (primaryInstanceSettings != null)
          'primaryInstanceSettings': primaryInstanceSettings!,
        if (vpcNetwork != null) 'vpcNetwork': vpcNetwork!,
      };
}

/// Request message for 'ApplyConversionWorkspace' request.
class ApplyConversionWorkspaceRequest {
  /// Specifies whether the conversion workspace is to be committed
  /// automatically after the apply.
  ///
  /// Optional.
  core.bool? autoCommit;

  /// Fully qualified (Uri) name of the destination connection profile.
  ///
  /// Optional.
  core.String? connectionProfile;

  /// Only validates the apply process, but doesn't change the destination
  /// database.
  ///
  /// Only works for PostgreSQL destination connection profile.
  ///
  /// Optional.
  core.bool? dryRun;

  /// Filter which entities to apply.
  ///
  /// Leaving this field empty will apply all of the entities. Supports Google
  /// AIP 160 based filtering.
  core.String? filter;

  ApplyConversionWorkspaceRequest({
    this.autoCommit,
    this.connectionProfile,
    this.dryRun,
    this.filter,
  });

  ApplyConversionWorkspaceRequest.fromJson(core.Map json_)
      : this(
          autoCommit: json_.containsKey('autoCommit')
              ? json_['autoCommit'] as core.bool
              : null,
          connectionProfile: json_.containsKey('connectionProfile')
              ? json_['connectionProfile'] as core.String
              : null,
          dryRun:
              json_.containsKey('dryRun') ? json_['dryRun'] as core.bool : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoCommit != null) 'autoCommit': autoCommit!,
        if (connectionProfile != null) 'connectionProfile': connectionProfile!,
        if (dryRun != null) 'dryRun': dryRun!,
        if (filter != null) 'filter': filter!,
      };
}

/// Apply a hash function on the value.
class ApplyHash {
  /// Generate UUID from the data's byte array
  ///
  /// Optional.
  Empty? uuidFromBytes;

  ApplyHash({
    this.uuidFromBytes,
  });

  ApplyHash.fromJson(core.Map json_)
      : this(
          uuidFromBytes: json_.containsKey('uuidFromBytes')
              ? Empty.fromJson(
                  json_['uuidFromBytes'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (uuidFromBytes != null) 'uuidFromBytes': uuidFromBytes!,
      };
}

/// Details regarding an Apply background job.
class ApplyJobDetails {
  /// The connection profile which was used for the apply job.
  ///
  /// Output only.
  core.String? connectionProfile;

  /// AIP-160 based filter used to specify the entities to apply
  ///
  /// Output only.
  core.String? filter;

  ApplyJobDetails({
    this.connectionProfile,
    this.filter,
  });

  ApplyJobDetails.fromJson(core.Map json_)
      : this(
          connectionProfile: json_.containsKey('connectionProfile')
              ? json_['connectionProfile'] as core.String
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionProfile != null) 'connectionProfile': connectionProfile!,
        if (filter != null) 'filter': filter!,
      };
}

/// Set to a specific value (value is converted to fit the target data type)
class AssignSpecificValue {
  /// Specific value to be assigned
  ///
  /// Required.
  core.String? value;

  AssignSpecificValue({
    this.value,
  });

  AssignSpecificValue.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
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

/// Execution log of a background job.
class BackgroundJobLogEntry {
  /// Apply job details.
  ///
  /// Output only.
  ApplyJobDetails? applyJobDetails;

  /// Job completion comment, such as how many entities were seeded, how many
  /// warnings were found during conversion, and similar information.
  ///
  /// Output only.
  core.String? completionComment;

  /// Job completion state, i.e. the final state after the job completed.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "JOB_COMPLETION_STATE_UNSPECIFIED" : The status is not specified. This
  /// state is used when job is not yet finished.
  /// - "SUCCEEDED" : Success.
  /// - "FAILED" : Error.
  core.String? completionState;

  /// Convert job details.
  ///
  /// Output only.
  ConvertJobDetails? convertJobDetails;

  /// The timestamp when the background job was finished.
  core.String? finishTime;

  /// The background job log entry ID.
  core.String? id;

  /// Import rules job details.
  ///
  /// Output only.
  ImportRulesJobDetails? importRulesJobDetails;

  /// The type of job that was executed.
  /// Possible string values are:
  /// - "BACKGROUND_JOB_TYPE_UNSPECIFIED" : Unspecified background job type.
  /// - "BACKGROUND_JOB_TYPE_SOURCE_SEED" : Job to seed from the source
  /// database.
  /// - "BACKGROUND_JOB_TYPE_CONVERT" : Job to convert the source database into
  /// a draft of the destination database.
  /// - "BACKGROUND_JOB_TYPE_APPLY_DESTINATION" : Job to apply the draft tree
  /// onto the destination.
  /// - "BACKGROUND_JOB_TYPE_IMPORT_RULES_FILE" : Job to import and convert
  /// mapping rules from an external source such as an ora2pg config file.
  core.String? jobType;

  /// Whether the client requested the conversion workspace to be committed
  /// after a successful completion of the job.
  ///
  /// Output only.
  core.bool? requestAutocommit;

  /// Seed job details.
  ///
  /// Output only.
  SeedJobDetails? seedJobDetails;

  /// The timestamp when the background job was started.
  core.String? startTime;

  BackgroundJobLogEntry({
    this.applyJobDetails,
    this.completionComment,
    this.completionState,
    this.convertJobDetails,
    this.finishTime,
    this.id,
    this.importRulesJobDetails,
    this.jobType,
    this.requestAutocommit,
    this.seedJobDetails,
    this.startTime,
  });

  BackgroundJobLogEntry.fromJson(core.Map json_)
      : this(
          applyJobDetails: json_.containsKey('applyJobDetails')
              ? ApplyJobDetails.fromJson(json_['applyJobDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          completionComment: json_.containsKey('completionComment')
              ? json_['completionComment'] as core.String
              : null,
          completionState: json_.containsKey('completionState')
              ? json_['completionState'] as core.String
              : null,
          convertJobDetails: json_.containsKey('convertJobDetails')
              ? ConvertJobDetails.fromJson(json_['convertJobDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          finishTime: json_.containsKey('finishTime')
              ? json_['finishTime'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          importRulesJobDetails: json_.containsKey('importRulesJobDetails')
              ? ImportRulesJobDetails.fromJson(json_['importRulesJobDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          jobType: json_.containsKey('jobType')
              ? json_['jobType'] as core.String
              : null,
          requestAutocommit: json_.containsKey('requestAutocommit')
              ? json_['requestAutocommit'] as core.bool
              : null,
          seedJobDetails: json_.containsKey('seedJobDetails')
              ? SeedJobDetails.fromJson(json_['seedJobDetails']
                  as core.Map<core.String, core.dynamic>)
              : null,
          startTime: json_.containsKey('startTime')
              ? json_['startTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applyJobDetails != null) 'applyJobDetails': applyJobDetails!,
        if (completionComment != null) 'completionComment': completionComment!,
        if (completionState != null) 'completionState': completionState!,
        if (convertJobDetails != null) 'convertJobDetails': convertJobDetails!,
        if (finishTime != null) 'finishTime': finishTime!,
        if (id != null) 'id': id!,
        if (importRulesJobDetails != null)
          'importRulesJobDetails': importRulesJobDetails!,
        if (jobType != null) 'jobType': jobType!,
        if (requestAutocommit != null) 'requestAutocommit': requestAutocommit!,
        if (seedJobDetails != null) 'seedJobDetails': seedJobDetails!,
        if (startTime != null) 'startTime': startTime!,
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

  /// Data cache is an optional feature available for Cloud SQL for MySQL
  /// Enterprise Plus edition only.
  ///
  /// For more information on data cache, see
  /// [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache)
  /// in Cloud SQL documentation.
  ///
  /// Optional.
  DataCacheConfig? dataCacheConfig;

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
  /// - "MYSQL_8_0" : MySQL 8.0.
  /// - "MYSQL_8_0_18" : The database major version is MySQL 8.0 and the minor
  /// version is 18.
  /// - "MYSQL_8_0_26" : The database major version is MySQL 8.0 and the minor
  /// version is 26.
  /// - "MYSQL_8_0_27" : The database major version is MySQL 8.0 and the minor
  /// version is 27.
  /// - "MYSQL_8_0_28" : The database major version is MySQL 8.0 and the minor
  /// version is 28.
  /// - "MYSQL_8_0_30" : The database major version is MySQL 8.0 and the minor
  /// version is 30.
  /// - "MYSQL_8_0_31" : The database major version is MySQL 8.0 and the minor
  /// version is 31.
  /// - "MYSQL_8_0_32" : The database major version is MySQL 8.0 and the minor
  /// version is 32.
  /// - "MYSQL_8_0_33" : The database major version is MySQL 8.0 and the minor
  /// version is 33.
  /// - "MYSQL_8_0_34" : The database major version is MySQL 8.0 and the minor
  /// version is 34.
  /// - "MYSQL_8_0_35" : The database major version is MySQL 8.0 and the minor
  /// version is 35.
  /// - "POSTGRES_9_6" : PostgreSQL 9.6.
  /// - "POSTGRES_11" : PostgreSQL 11.
  /// - "POSTGRES_10" : PostgreSQL 10.
  /// - "POSTGRES_12" : PostgreSQL 12.
  /// - "POSTGRES_13" : PostgreSQL 13.
  /// - "POSTGRES_14" : PostgreSQL 14.
  /// - "POSTGRES_15" : PostgreSQL 15.
  core.String? databaseVersion;

  /// The edition of the given Cloud SQL instance.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EDITION_UNSPECIFIED" : The instance did not specify the edition.
  /// - "ENTERPRISE" : The instance is an enterprise edition.
  /// - "ENTERPRISE_PLUS" : The instance is an enterprise plus edition.
  core.String? edition;

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
    this.dataCacheConfig,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.edition,
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
          dataCacheConfig: json_.containsKey('dataCacheConfig')
              ? DataCacheConfig.fromJson(json_['dataCacheConfig']
                  as core.Map<core.String, core.dynamic>)
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
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          databaseVersion: json_.containsKey('databaseVersion')
              ? json_['databaseVersion'] as core.String
              : null,
          edition: json_.containsKey('edition')
              ? json_['edition'] as core.String
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
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
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
        if (dataCacheConfig != null) 'dataCacheConfig': dataCacheConfig!,
        if (dataDiskSizeGb != null) 'dataDiskSizeGb': dataDiskSizeGb!,
        if (dataDiskType != null) 'dataDiskType': dataDiskType!,
        if (databaseFlags != null) 'databaseFlags': databaseFlags!,
        if (databaseVersion != null) 'databaseVersion': databaseVersion!,
        if (edition != null) 'edition': edition!,
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

/// Column is not used as an independent entity, it is retrieved as part of a
/// Table entity.
class ColumnEntity {
  /// Is the column of array type.
  core.bool? array;

  /// If the column is array, of which length.
  core.int? arrayLength;

  /// Is the column auto-generated/identity.
  core.bool? autoGenerated;

  /// Charset override - instead of table level charset.
  core.String? charset;

  /// Collation override - instead of table level collation.
  core.String? collation;

  /// Comment associated with the column.
  core.String? comment;

  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// Column data type.
  core.String? dataType;

  /// Default value of the column.
  core.String? defaultValue;

  /// Column fractional second precision - used for timestamp based datatypes.
  core.int? fractionalSecondsPrecision;

  /// Column length - e.g. varchar (50).
  core.String? length;

  /// Column name.
  core.String? name;

  /// Is the column nullable.
  core.bool? nullable;

  /// Column order in the table.
  core.int? ordinalPosition;

  /// Column precision - when relevant.
  core.int? precision;

  /// Column scale - when relevant.
  core.int? scale;

  /// Specifies the list of values allowed in the column.
  ///
  /// Only used for set data type.
  core.List<core.String>? setValues;

  /// Is the column a UDT.
  core.bool? udt;

  ColumnEntity({
    this.array,
    this.arrayLength,
    this.autoGenerated,
    this.charset,
    this.collation,
    this.comment,
    this.customFeatures,
    this.dataType,
    this.defaultValue,
    this.fractionalSecondsPrecision,
    this.length,
    this.name,
    this.nullable,
    this.ordinalPosition,
    this.precision,
    this.scale,
    this.setValues,
    this.udt,
  });

  ColumnEntity.fromJson(core.Map json_)
      : this(
          array:
              json_.containsKey('array') ? json_['array'] as core.bool : null,
          arrayLength: json_.containsKey('arrayLength')
              ? json_['arrayLength'] as core.int
              : null,
          autoGenerated: json_.containsKey('autoGenerated')
              ? json_['autoGenerated'] as core.bool
              : null,
          charset: json_.containsKey('charset')
              ? json_['charset'] as core.String
              : null,
          collation: json_.containsKey('collation')
              ? json_['collation'] as core.String
              : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          defaultValue: json_.containsKey('defaultValue')
              ? json_['defaultValue'] as core.String
              : null,
          fractionalSecondsPrecision:
              json_.containsKey('fractionalSecondsPrecision')
                  ? json_['fractionalSecondsPrecision'] as core.int
                  : null,
          length: json_.containsKey('length')
              ? json_['length'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nullable: json_.containsKey('nullable')
              ? json_['nullable'] as core.bool
              : null,
          ordinalPosition: json_.containsKey('ordinalPosition')
              ? json_['ordinalPosition'] as core.int
              : null,
          precision: json_.containsKey('precision')
              ? json_['precision'] as core.int
              : null,
          scale: json_.containsKey('scale') ? json_['scale'] as core.int : null,
          setValues: json_.containsKey('setValues')
              ? (json_['setValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          udt: json_.containsKey('udt') ? json_['udt'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (array != null) 'array': array!,
        if (arrayLength != null) 'arrayLength': arrayLength!,
        if (autoGenerated != null) 'autoGenerated': autoGenerated!,
        if (charset != null) 'charset': charset!,
        if (collation != null) 'collation': collation!,
        if (comment != null) 'comment': comment!,
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (dataType != null) 'dataType': dataType!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (fractionalSecondsPrecision != null)
          'fractionalSecondsPrecision': fractionalSecondsPrecision!,
        if (length != null) 'length': length!,
        if (name != null) 'name': name!,
        if (nullable != null) 'nullable': nullable!,
        if (ordinalPosition != null) 'ordinalPosition': ordinalPosition!,
        if (precision != null) 'precision': precision!,
        if (scale != null) 'scale': scale!,
        if (setValues != null) 'setValues': setValues!,
        if (udt != null) 'udt': udt!,
      };
}

/// Request message for 'CommitConversionWorkspace' request.
class CommitConversionWorkspaceRequest {
  /// Optional name of the commit.
  ///
  /// Optional.
  core.String? commitName;

  CommitConversionWorkspaceRequest({
    this.commitName,
  });

  CommitConversionWorkspaceRequest.fromJson(core.Map json_)
      : this(
          commitName: json_.containsKey('commitName')
              ? json_['commitName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitName != null) 'commitName': commitName!,
      };
}

/// Options to configure rule type ConditionalColumnSetValue.
///
/// The rule is used to transform the data which is being replicated/migrated.
/// The rule filter field can refer to one or more entities. The rule scope can
/// be one of: Column.
class ConditionalColumnSetValue {
  /// Custom engine specific features.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// Optional filter on source column precision and scale.
  ///
  /// Used for fixed point numbers such as NUMERIC/NUMBER data types.
  ///
  /// Optional.
  SourceNumericFilter? sourceNumericFilter;

  /// Optional filter on source column length.
  ///
  /// Used for text based data types like varchar.
  ///
  /// Optional.
  SourceTextFilter? sourceTextFilter;

  /// Description of data transformation during migration.
  ///
  /// Required.
  ValueTransformation? valueTransformation;

  ConditionalColumnSetValue({
    this.customFeatures,
    this.sourceNumericFilter,
    this.sourceTextFilter,
    this.valueTransformation,
  });

  ConditionalColumnSetValue.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          sourceNumericFilter: json_.containsKey('sourceNumericFilter')
              ? SourceNumericFilter.fromJson(json_['sourceNumericFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sourceTextFilter: json_.containsKey('sourceTextFilter')
              ? SourceTextFilter.fromJson(json_['sourceTextFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          valueTransformation: json_.containsKey('valueTransformation')
              ? ValueTransformation.fromJson(json_['valueTransformation']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (sourceNumericFilter != null)
          'sourceNumericFilter': sourceNumericFilter!,
        if (sourceTextFilter != null) 'sourceTextFilter': sourceTextFilter!,
        if (valueTransformation != null)
          'valueTransformation': valueTransformation!,
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

  /// An Oracle database connection profile.
  OracleConnectionProfile? oracle;

  /// A PostgreSQL database connection profile.
  PostgreSqlConnectionProfile? postgresql;

  /// The database provider.
  /// Possible string values are:
  /// - "DATABASE_PROVIDER_UNSPECIFIED" : Use this value for on-premise source
  /// database instances.
  /// - "CLOUDSQL" : Cloud SQL is the source instance provider.
  /// - "RDS" : Amazon RDS is the source instance provider.
  /// - "AURORA" : Amazon Aurora is the source instance provider.
  /// - "ALLOYDB" : AlloyDB for PostgreSQL is the source instance provider.
  core.String? provider;

  /// Connection profile for a SQL Server data source.
  SqlServerConnectionProfile? sqlserver;

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
    this.oracle,
    this.postgresql,
    this.provider,
    this.sqlserver,
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
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          mysql: json_.containsKey('mysql')
              ? MySqlConnectionProfile.fromJson(
                  json_['mysql'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          oracle: json_.containsKey('oracle')
              ? OracleConnectionProfile.fromJson(
                  json_['oracle'] as core.Map<core.String, core.dynamic>)
              : null,
          postgresql: json_.containsKey('postgresql')
              ? PostgreSqlConnectionProfile.fromJson(
                  json_['postgresql'] as core.Map<core.String, core.dynamic>)
              : null,
          provider: json_.containsKey('provider')
              ? json_['provider'] as core.String
              : null,
          sqlserver: json_.containsKey('sqlserver')
              ? SqlServerConnectionProfile.fromJson(
                  json_['sqlserver'] as core.Map<core.String, core.dynamic>)
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
        if (oracle != null) 'oracle': oracle!,
        if (postgresql != null) 'postgresql': postgresql!,
        if (provider != null) 'provider': provider!,
        if (sqlserver != null) 'sqlserver': sqlserver!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Constraint is not used as an independent entity, it is retrieved as part of
/// another entity such as Table or View.
class ConstraintEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The name of the table constraint.
  core.String? name;

  /// Reference columns which may be associated with the constraint.
  ///
  /// For example, if the constraint is a FOREIGN_KEY, this represents the list
  /// of full names of referenced columns by the foreign key.
  core.List<core.String>? referenceColumns;

  /// Reference table which may be associated with the constraint.
  ///
  /// For example, if the constraint is a FOREIGN_KEY, this represents the list
  /// of full name of the referenced table by the foreign key.
  core.String? referenceTable;

  /// Table columns used as part of the Constraint, for example primary key
  /// constraint should list the columns which constitutes the key.
  core.List<core.String>? tableColumns;

  /// Table which is associated with the constraint.
  ///
  /// In case the constraint is defined on a table, this field is left empty as
  /// this information is stored in parent_name. However, if constraint is
  /// defined on a view, this field stores the table name on which the view is
  /// defined.
  core.String? tableName;

  /// Type of constraint, for example unique, primary key, foreign key
  /// (currently only primary key is supported).
  core.String? type;

  ConstraintEntity({
    this.customFeatures,
    this.name,
    this.referenceColumns,
    this.referenceTable,
    this.tableColumns,
    this.tableName,
    this.type,
  });

  ConstraintEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          referenceColumns: json_.containsKey('referenceColumns')
              ? (json_['referenceColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          referenceTable: json_.containsKey('referenceTable')
              ? json_['referenceTable'] as core.String
              : null,
          tableColumns: json_.containsKey('tableColumns')
              ? (json_['tableColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          tableName: json_.containsKey('tableName')
              ? json_['tableName'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (name != null) 'name': name!,
        if (referenceColumns != null) 'referenceColumns': referenceColumns!,
        if (referenceTable != null) 'referenceTable': referenceTable!,
        if (tableColumns != null) 'tableColumns': tableColumns!,
        if (tableName != null) 'tableName': tableName!,
        if (type != null) 'type': type!,
      };
}

/// The main conversion workspace resource entity.
class ConversionWorkspace {
  /// The timestamp when the workspace resource was created.
  ///
  /// Output only.
  core.String? createTime;

  /// The destination engine details.
  ///
  /// Required.
  DatabaseEngineInfo? destination;

  /// The display name for the workspace.
  ///
  /// Optional.
  core.String? displayName;

  /// A generic list of settings for the workspace.
  ///
  /// The settings are database pair dependant and can indicate default behavior
  /// for the mapping rules engine or turn on or off specific features. Such
  /// examples can be: convert_foreign_key_to_interleave=true,
  /// skip_triggers=false, ignore_non_table_synonyms=true
  ///
  /// Optional.
  core.Map<core.String, core.String>? globalSettings;

  /// Whether the workspace has uncommitted changes (changes which were made
  /// after the workspace was committed).
  ///
  /// Output only.
  core.bool? hasUncommittedChanges;

  /// The latest commit ID.
  ///
  /// Output only.
  core.String? latestCommitId;

  /// The timestamp when the workspace was committed.
  ///
  /// Output only.
  core.String? latestCommitTime;

  /// Full name of the workspace resource, in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{conversion_workspace}.
  core.String? name;

  /// The source engine details.
  ///
  /// Required.
  DatabaseEngineInfo? source;

  /// The timestamp when the workspace resource was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  ConversionWorkspace({
    this.createTime,
    this.destination,
    this.displayName,
    this.globalSettings,
    this.hasUncommittedChanges,
    this.latestCommitId,
    this.latestCommitTime,
    this.name,
    this.source,
    this.updateTime,
  });

  ConversionWorkspace.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          destination: json_.containsKey('destination')
              ? DatabaseEngineInfo.fromJson(
                  json_['destination'] as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          globalSettings: json_.containsKey('globalSettings')
              ? (json_['globalSettings'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          hasUncommittedChanges: json_.containsKey('hasUncommittedChanges')
              ? json_['hasUncommittedChanges'] as core.bool
              : null,
          latestCommitId: json_.containsKey('latestCommitId')
              ? json_['latestCommitId'] as core.String
              : null,
          latestCommitTime: json_.containsKey('latestCommitTime')
              ? json_['latestCommitTime'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          source: json_.containsKey('source')
              ? DatabaseEngineInfo.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (destination != null) 'destination': destination!,
        if (displayName != null) 'displayName': displayName!,
        if (globalSettings != null) 'globalSettings': globalSettings!,
        if (hasUncommittedChanges != null)
          'hasUncommittedChanges': hasUncommittedChanges!,
        if (latestCommitId != null) 'latestCommitId': latestCommitId!,
        if (latestCommitTime != null) 'latestCommitTime': latestCommitTime!,
        if (name != null) 'name': name!,
        if (source != null) 'source': source!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A conversion workspace's version.
class ConversionWorkspaceInfo {
  /// The commit ID of the conversion workspace.
  core.String? commitId;

  /// The resource name (URI) of the conversion workspace.
  core.String? name;

  ConversionWorkspaceInfo({
    this.commitId,
    this.name,
  });

  ConversionWorkspaceInfo.fromJson(core.Map json_)
      : this(
          commitId: json_.containsKey('commitId')
              ? json_['commitId'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (commitId != null) 'commitId': commitId!,
        if (name != null) 'name': name!,
      };
}

/// Request message for 'ConvertConversionWorkspace' request.
class ConvertConversionWorkspaceRequest {
  /// Specifies whether the conversion workspace is to be committed
  /// automatically after the conversion.
  ///
  /// Optional.
  core.bool? autoCommit;

  /// Automatically convert the full entity path for each entity specified by
  /// the filter.
  ///
  /// For example, if the filter specifies a table, that table schema (and
  /// database if there is one) will also be converted.
  ///
  /// Optional.
  core.bool? convertFullPath;

  /// Filter the entities to convert.
  ///
  /// Leaving this field empty will convert all of the entities. Supports Google
  /// AIP-160 style filtering.
  ///
  /// Optional.
  core.String? filter;

  ConvertConversionWorkspaceRequest({
    this.autoCommit,
    this.convertFullPath,
    this.filter,
  });

  ConvertConversionWorkspaceRequest.fromJson(core.Map json_)
      : this(
          autoCommit: json_.containsKey('autoCommit')
              ? json_['autoCommit'] as core.bool
              : null,
          convertFullPath: json_.containsKey('convertFullPath')
              ? json_['convertFullPath'] as core.bool
              : null,
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoCommit != null) 'autoCommit': autoCommit!,
        if (convertFullPath != null) 'convertFullPath': convertFullPath!,
        if (filter != null) 'filter': filter!,
      };
}

/// Details regarding a Convert background job.
class ConvertJobDetails {
  /// AIP-160 based filter used to specify the entities to convert
  ///
  /// Output only.
  core.String? filter;

  ConvertJobDetails({
    this.filter,
  });

  ConvertJobDetails.fromJson(core.Map json_)
      : this(
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filter != null) 'filter': filter!,
      };
}

/// Options to configure rule type ConvertROWIDToColumn.
///
/// The rule is used to add column rowid to destination tables based on an
/// Oracle rowid function/property. The rule filter field can refer to one or
/// more entities. The rule scope can be one of: Table. This rule requires
/// additional filter to be specified beyond the basic rule filter field, which
/// is whether or not to work on tables which already have a primary key
/// defined.
class ConvertRowIdToColumn {
  /// Only work on tables without primary key defined
  ///
  /// Required.
  core.bool? onlyIfNoPrimaryKey;

  ConvertRowIdToColumn({
    this.onlyIfNoPrimaryKey,
  });

  ConvertRowIdToColumn.fromJson(core.Map json_)
      : this(
          onlyIfNoPrimaryKey: json_.containsKey('onlyIfNoPrimaryKey')
              ? json_['onlyIfNoPrimaryKey'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (onlyIfNoPrimaryKey != null)
          'onlyIfNoPrimaryKey': onlyIfNoPrimaryKey!,
      };
}

/// Data cache is an optional feature available for Cloud SQL for MySQL
/// Enterprise Plus edition only.
///
/// For more information on data cache, see
/// [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in
/// Cloud SQL documentation.
class DataCacheConfig {
  /// Whether data cache is enabled for the instance.
  ///
  /// Optional.
  core.bool? dataCacheEnabled;

  DataCacheConfig({
    this.dataCacheEnabled,
  });

  DataCacheConfig.fromJson(core.Map json_)
      : this(
          dataCacheEnabled: json_.containsKey('dataCacheEnabled')
              ? json_['dataCacheEnabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataCacheEnabled != null) 'dataCacheEnabled': dataCacheEnabled!,
      };
}

/// The type and version of a source or destination database.
class DatabaseEngineInfo {
  /// Engine type.
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATABASE_ENGINE_UNSPECIFIED" : The source database engine of the
  /// migration job is unknown.
  /// - "MYSQL" : The source engine is MySQL.
  /// - "POSTGRESQL" : The source engine is PostgreSQL.
  /// - "SQLSERVER" : The source engine is SQL Server.
  /// - "ORACLE" : The source engine is Oracle.
  core.String? engine;

  /// Engine version, for example "12.c.1".
  ///
  /// Required.
  core.String? version;

  DatabaseEngineInfo({
    this.engine,
    this.version,
  });

  DatabaseEngineInfo.fromJson(core.Map json_)
      : this(
          engine: json_.containsKey('engine')
              ? json_['engine'] as core.String
              : null,
          version: json_.containsKey('version')
              ? json_['version'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (engine != null) 'engine': engine!,
        if (version != null) 'version': version!,
      };
}

/// The base entity type for all the database related entities.
///
/// The message contains the entity name, the name of its parent, the entity
/// type, and the specific details per entity type.
class DatabaseEntity {
  /// Database.
  DatabaseInstanceEntity? database;

  /// Function.
  FunctionEntity? databaseFunction;

  /// Package.
  PackageEntity? databasePackage;

  /// Details about the entity DDL script.
  ///
  /// Multiple DDL scripts are provided for child entities such as a table
  /// entity will have one DDL for the table with additional DDLs for each
  /// index, constraint and such.
  core.List<EntityDdl>? entityDdl;

  /// The type of the database entity (table, view, index, ...).
  /// Possible string values are:
  /// - "DATABASE_ENTITY_TYPE_UNSPECIFIED" : Unspecified database entity type.
  /// - "DATABASE_ENTITY_TYPE_SCHEMA" : Schema.
  /// - "DATABASE_ENTITY_TYPE_TABLE" : Table.
  /// - "DATABASE_ENTITY_TYPE_COLUMN" : Column.
  /// - "DATABASE_ENTITY_TYPE_CONSTRAINT" : Constraint.
  /// - "DATABASE_ENTITY_TYPE_INDEX" : Index.
  /// - "DATABASE_ENTITY_TYPE_TRIGGER" : Trigger.
  /// - "DATABASE_ENTITY_TYPE_VIEW" : View.
  /// - "DATABASE_ENTITY_TYPE_SEQUENCE" : Sequence.
  /// - "DATABASE_ENTITY_TYPE_STORED_PROCEDURE" : Stored Procedure.
  /// - "DATABASE_ENTITY_TYPE_FUNCTION" : Function.
  /// - "DATABASE_ENTITY_TYPE_SYNONYM" : Synonym.
  /// - "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE" : Package.
  /// - "DATABASE_ENTITY_TYPE_UDT" : UDT.
  /// - "DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW" : Materialized View.
  /// - "DATABASE_ENTITY_TYPE_DATABASE" : Database.
  core.String? entityType;

  /// Details about the various issues found for the entity.
  core.List<EntityIssue>? issues;

  /// Details about entity mappings.
  ///
  /// For source tree entities, this holds the draft entities which were
  /// generated by the mapping rules. For draft tree entities, this holds the
  /// source entities which were converted to form the draft entity. Destination
  /// entities will have no mapping details.
  core.List<EntityMapping>? mappings;

  /// Materialized view.
  MaterializedViewEntity? materializedView;

  /// The full name of the parent entity (e.g. schema name).
  core.String? parentEntity;

  /// Schema.
  SchemaEntity? schema;

  /// Sequence.
  SequenceEntity? sequence;

  /// The short name (e.g. table name) of the entity.
  core.String? shortName;

  /// Stored procedure.
  StoredProcedureEntity? storedProcedure;

  /// Synonym.
  SynonymEntity? synonym;

  /// Table.
  TableEntity? table;

  /// The type of tree the entity belongs to.
  /// Possible string values are:
  /// - "TREE_TYPE_UNSPECIFIED" : Tree type unspecified.
  /// - "SOURCE" : Tree of entities loaded from a source database.
  /// - "DRAFT" : Tree of entities converted from the source tree using the
  /// mapping rules.
  /// - "DESTINATION" : Tree of entities observed on the destination database.
  core.String? tree;

  /// UDT.
  UDTEntity? udt;

  /// View.
  ViewEntity? view;

  DatabaseEntity({
    this.database,
    this.databaseFunction,
    this.databasePackage,
    this.entityDdl,
    this.entityType,
    this.issues,
    this.mappings,
    this.materializedView,
    this.parentEntity,
    this.schema,
    this.sequence,
    this.shortName,
    this.storedProcedure,
    this.synonym,
    this.table,
    this.tree,
    this.udt,
    this.view,
  });

  DatabaseEntity.fromJson(core.Map json_)
      : this(
          database: json_.containsKey('database')
              ? DatabaseInstanceEntity.fromJson(
                  json_['database'] as core.Map<core.String, core.dynamic>)
              : null,
          databaseFunction: json_.containsKey('databaseFunction')
              ? FunctionEntity.fromJson(json_['databaseFunction']
                  as core.Map<core.String, core.dynamic>)
              : null,
          databasePackage: json_.containsKey('databasePackage')
              ? PackageEntity.fromJson(json_['databasePackage']
                  as core.Map<core.String, core.dynamic>)
              : null,
          entityDdl: json_.containsKey('entityDdl')
              ? (json_['entityDdl'] as core.List)
                  .map((value) => EntityDdl.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityType: json_.containsKey('entityType')
              ? json_['entityType'] as core.String
              : null,
          issues: json_.containsKey('issues')
              ? (json_['issues'] as core.List)
                  .map((value) => EntityIssue.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          mappings: json_.containsKey('mappings')
              ? (json_['mappings'] as core.List)
                  .map((value) => EntityMapping.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          materializedView: json_.containsKey('materializedView')
              ? MaterializedViewEntity.fromJson(json_['materializedView']
                  as core.Map<core.String, core.dynamic>)
              : null,
          parentEntity: json_.containsKey('parentEntity')
              ? json_['parentEntity'] as core.String
              : null,
          schema: json_.containsKey('schema')
              ? SchemaEntity.fromJson(
                  json_['schema'] as core.Map<core.String, core.dynamic>)
              : null,
          sequence: json_.containsKey('sequence')
              ? SequenceEntity.fromJson(
                  json_['sequence'] as core.Map<core.String, core.dynamic>)
              : null,
          shortName: json_.containsKey('shortName')
              ? json_['shortName'] as core.String
              : null,
          storedProcedure: json_.containsKey('storedProcedure')
              ? StoredProcedureEntity.fromJson(json_['storedProcedure']
                  as core.Map<core.String, core.dynamic>)
              : null,
          synonym: json_.containsKey('synonym')
              ? SynonymEntity.fromJson(
                  json_['synonym'] as core.Map<core.String, core.dynamic>)
              : null,
          table: json_.containsKey('table')
              ? TableEntity.fromJson(
                  json_['table'] as core.Map<core.String, core.dynamic>)
              : null,
          tree: json_.containsKey('tree') ? json_['tree'] as core.String : null,
          udt: json_.containsKey('udt')
              ? UDTEntity.fromJson(
                  json_['udt'] as core.Map<core.String, core.dynamic>)
              : null,
          view: json_.containsKey('view')
              ? ViewEntity.fromJson(
                  json_['view'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
        if (databaseFunction != null) 'databaseFunction': databaseFunction!,
        if (databasePackage != null) 'databasePackage': databasePackage!,
        if (entityDdl != null) 'entityDdl': entityDdl!,
        if (entityType != null) 'entityType': entityType!,
        if (issues != null) 'issues': issues!,
        if (mappings != null) 'mappings': mappings!,
        if (materializedView != null) 'materializedView': materializedView!,
        if (parentEntity != null) 'parentEntity': parentEntity!,
        if (schema != null) 'schema': schema!,
        if (sequence != null) 'sequence': sequence!,
        if (shortName != null) 'shortName': shortName!,
        if (storedProcedure != null) 'storedProcedure': storedProcedure!,
        if (synonym != null) 'synonym': synonym!,
        if (table != null) 'table': table!,
        if (tree != null) 'tree': tree!,
        if (udt != null) 'udt': udt!,
        if (view != null) 'view': view!,
      };
}

/// DatabaseInstance acts as a parent entity to other database entities.
typedef DatabaseInstanceEntity = $Entity;

/// A message defining the database engine and provider.
class DatabaseType {
  /// The database engine.
  /// Possible string values are:
  /// - "DATABASE_ENGINE_UNSPECIFIED" : The source database engine of the
  /// migration job is unknown.
  /// - "MYSQL" : The source engine is MySQL.
  /// - "POSTGRESQL" : The source engine is PostgreSQL.
  /// - "SQLSERVER" : The source engine is SQL Server.
  /// - "ORACLE" : The source engine is Oracle.
  core.String? engine;

  /// The database provider.
  /// Possible string values are:
  /// - "DATABASE_PROVIDER_UNSPECIFIED" : Use this value for on-premise source
  /// database instances.
  /// - "CLOUDSQL" : Cloud SQL is the source instance provider.
  /// - "RDS" : Amazon RDS is the source instance provider.
  /// - "AURORA" : Amazon Aurora is the source instance provider.
  /// - "ALLOYDB" : AlloyDB for PostgreSQL is the source instance provider.
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

/// Request message for 'DemoteDestination' request.
typedef DemoteDestinationRequest = $Empty;

/// Response message for 'DescribeConversionWorkspaceRevisions' request.
class DescribeConversionWorkspaceRevisionsResponse {
  /// The list of conversion workspace revisions.
  core.List<ConversionWorkspace>? revisions;

  DescribeConversionWorkspaceRevisionsResponse({
    this.revisions,
  });

  DescribeConversionWorkspaceRevisionsResponse.fromJson(core.Map json_)
      : this(
          revisions: json_.containsKey('revisions')
              ? (json_['revisions'] as core.List)
                  .map((value) => ConversionWorkspace.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (revisions != null) 'revisions': revisions!,
      };
}

/// Response message for 'DescribeDatabaseEntities' request.
class DescribeDatabaseEntitiesResponse {
  /// The list of database entities for the conversion workspace.
  core.List<DatabaseEntity>? databaseEntities;

  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  DescribeDatabaseEntitiesResponse({
    this.databaseEntities,
    this.nextPageToken,
  });

  DescribeDatabaseEntitiesResponse.fromJson(core.Map json_)
      : this(
          databaseEntities: json_.containsKey('databaseEntities')
              ? (json_['databaseEntities'] as core.List)
                  .map((value) => DatabaseEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseEntities != null) 'databaseEntities': databaseEntities!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Filter based on relation between source value and compare value of type
/// double in ConditionalColumnSetValue
class DoubleComparisonFilter {
  /// Double compare value to be used
  ///
  /// Required.
  core.double? value;

  /// Relation between source value and compare value
  ///
  /// Required.
  /// Possible string values are:
  /// - "VALUE_COMPARISON_UNSPECIFIED" : Value comparison unspecified.
  /// - "VALUE_COMPARISON_IF_VALUE_SMALLER_THAN" : Value is smaller than the
  /// Compare value.
  /// - "VALUE_COMPARISON_IF_VALUE_SMALLER_EQUAL_THAN" : Value is smaller or
  /// equal than the Compare value.
  /// - "VALUE_COMPARISON_IF_VALUE_LARGER_THAN" : Value is larger than the
  /// Compare value.
  /// - "VALUE_COMPARISON_IF_VALUE_LARGER_EQUAL_THAN" : Value is larger or equal
  /// than the Compare value.
  core.String? valueComparison;

  DoubleComparisonFilter({
    this.value,
    this.valueComparison,
  });

  DoubleComparisonFilter.fromJson(core.Map json_)
      : this(
          value: json_.containsKey('value')
              ? (json_['value'] as core.num).toDouble()
              : null,
          valueComparison: json_.containsKey('valueComparison')
              ? json_['valueComparison'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
        if (valueComparison != null) 'valueComparison': valueComparison!,
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

/// EncryptionConfig describes the encryption config of a cluster that is
/// encrypted with a CMEK (customer-managed encryption key).
typedef EncryptionConfig = $EncryptionConfig;

/// A single DDL statement for a specific entity
class EntityDdl {
  /// The actual ddl code.
  core.String? ddl;

  /// Type of DDL (Create, Alter).
  core.String? ddlType;

  /// The name of the database entity the ddl refers to.
  core.String? entity;

  /// The entity type (if the DDL is for a sub entity).
  /// Possible string values are:
  /// - "DATABASE_ENTITY_TYPE_UNSPECIFIED" : Unspecified database entity type.
  /// - "DATABASE_ENTITY_TYPE_SCHEMA" : Schema.
  /// - "DATABASE_ENTITY_TYPE_TABLE" : Table.
  /// - "DATABASE_ENTITY_TYPE_COLUMN" : Column.
  /// - "DATABASE_ENTITY_TYPE_CONSTRAINT" : Constraint.
  /// - "DATABASE_ENTITY_TYPE_INDEX" : Index.
  /// - "DATABASE_ENTITY_TYPE_TRIGGER" : Trigger.
  /// - "DATABASE_ENTITY_TYPE_VIEW" : View.
  /// - "DATABASE_ENTITY_TYPE_SEQUENCE" : Sequence.
  /// - "DATABASE_ENTITY_TYPE_STORED_PROCEDURE" : Stored Procedure.
  /// - "DATABASE_ENTITY_TYPE_FUNCTION" : Function.
  /// - "DATABASE_ENTITY_TYPE_SYNONYM" : Synonym.
  /// - "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE" : Package.
  /// - "DATABASE_ENTITY_TYPE_UDT" : UDT.
  /// - "DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW" : Materialized View.
  /// - "DATABASE_ENTITY_TYPE_DATABASE" : Database.
  core.String? entityType;

  /// EntityIssues found for this ddl.
  core.List<core.String>? issueId;

  EntityDdl({
    this.ddl,
    this.ddlType,
    this.entity,
    this.entityType,
    this.issueId,
  });

  EntityDdl.fromJson(core.Map json_)
      : this(
          ddl: json_.containsKey('ddl') ? json_['ddl'] as core.String : null,
          ddlType: json_.containsKey('ddlType')
              ? json_['ddlType'] as core.String
              : null,
          entity: json_.containsKey('entity')
              ? json_['entity'] as core.String
              : null,
          entityType: json_.containsKey('entityType')
              ? json_['entityType'] as core.String
              : null,
          issueId: json_.containsKey('issueId')
              ? (json_['issueId'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ddl != null) 'ddl': ddl!,
        if (ddlType != null) 'ddlType': ddlType!,
        if (entity != null) 'entity': entity!,
        if (entityType != null) 'entityType': entityType!,
        if (issueId != null) 'issueId': issueId!,
      };
}

/// Issue related to the entity.
class EntityIssue {
  /// Error/Warning code
  core.String? code;

  /// The ddl which caused the issue, if relevant.
  core.String? ddl;

  /// The entity type (if the DDL is for a sub entity).
  /// Possible string values are:
  /// - "DATABASE_ENTITY_TYPE_UNSPECIFIED" : Unspecified database entity type.
  /// - "DATABASE_ENTITY_TYPE_SCHEMA" : Schema.
  /// - "DATABASE_ENTITY_TYPE_TABLE" : Table.
  /// - "DATABASE_ENTITY_TYPE_COLUMN" : Column.
  /// - "DATABASE_ENTITY_TYPE_CONSTRAINT" : Constraint.
  /// - "DATABASE_ENTITY_TYPE_INDEX" : Index.
  /// - "DATABASE_ENTITY_TYPE_TRIGGER" : Trigger.
  /// - "DATABASE_ENTITY_TYPE_VIEW" : View.
  /// - "DATABASE_ENTITY_TYPE_SEQUENCE" : Sequence.
  /// - "DATABASE_ENTITY_TYPE_STORED_PROCEDURE" : Stored Procedure.
  /// - "DATABASE_ENTITY_TYPE_FUNCTION" : Function.
  /// - "DATABASE_ENTITY_TYPE_SYNONYM" : Synonym.
  /// - "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE" : Package.
  /// - "DATABASE_ENTITY_TYPE_UDT" : UDT.
  /// - "DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW" : Materialized View.
  /// - "DATABASE_ENTITY_TYPE_DATABASE" : Database.
  core.String? entityType;

  /// Unique Issue ID.
  core.String? id;

  /// Issue detailed message
  core.String? message;

  /// The position of the issue found, if relevant.
  Position? position;

  /// Severity of the issue
  /// Possible string values are:
  /// - "ISSUE_SEVERITY_UNSPECIFIED" : Unspecified issue severity
  /// - "ISSUE_SEVERITY_INFO" : Info
  /// - "ISSUE_SEVERITY_WARNING" : Warning
  /// - "ISSUE_SEVERITY_ERROR" : Error
  core.String? severity;

  /// The type of the issue.
  /// Possible string values are:
  /// - "ISSUE_TYPE_UNSPECIFIED" : Unspecified issue type.
  /// - "ISSUE_TYPE_DDL" : Issue originated from the DDL
  /// - "ISSUE_TYPE_APPLY" : Issue originated during the apply process
  /// - "ISSUE_TYPE_CONVERT" : Issue originated during the convert process
  core.String? type;

  EntityIssue({
    this.code,
    this.ddl,
    this.entityType,
    this.id,
    this.message,
    this.position,
    this.severity,
    this.type,
  });

  EntityIssue.fromJson(core.Map json_)
      : this(
          code: json_.containsKey('code') ? json_['code'] as core.String : null,
          ddl: json_.containsKey('ddl') ? json_['ddl'] as core.String : null,
          entityType: json_.containsKey('entityType')
              ? json_['entityType'] as core.String
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          message: json_.containsKey('message')
              ? json_['message'] as core.String
              : null,
          position: json_.containsKey('position')
              ? Position.fromJson(
                  json_['position'] as core.Map<core.String, core.dynamic>)
              : null,
          severity: json_.containsKey('severity')
              ? json_['severity'] as core.String
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (code != null) 'code': code!,
        if (ddl != null) 'ddl': ddl!,
        if (entityType != null) 'entityType': entityType!,
        if (id != null) 'id': id!,
        if (message != null) 'message': message!,
        if (position != null) 'position': position!,
        if (severity != null) 'severity': severity!,
        if (type != null) 'type': type!,
      };
}

/// Details of the mappings of a database entity.
class EntityMapping {
  /// Target entity full name.
  ///
  /// The draft entity can also include a column, index or constraint using the
  /// same naming notation schema.table.column.
  core.String? draftEntity;

  /// Type of draft entity.
  /// Possible string values are:
  /// - "DATABASE_ENTITY_TYPE_UNSPECIFIED" : Unspecified database entity type.
  /// - "DATABASE_ENTITY_TYPE_SCHEMA" : Schema.
  /// - "DATABASE_ENTITY_TYPE_TABLE" : Table.
  /// - "DATABASE_ENTITY_TYPE_COLUMN" : Column.
  /// - "DATABASE_ENTITY_TYPE_CONSTRAINT" : Constraint.
  /// - "DATABASE_ENTITY_TYPE_INDEX" : Index.
  /// - "DATABASE_ENTITY_TYPE_TRIGGER" : Trigger.
  /// - "DATABASE_ENTITY_TYPE_VIEW" : View.
  /// - "DATABASE_ENTITY_TYPE_SEQUENCE" : Sequence.
  /// - "DATABASE_ENTITY_TYPE_STORED_PROCEDURE" : Stored Procedure.
  /// - "DATABASE_ENTITY_TYPE_FUNCTION" : Function.
  /// - "DATABASE_ENTITY_TYPE_SYNONYM" : Synonym.
  /// - "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE" : Package.
  /// - "DATABASE_ENTITY_TYPE_UDT" : UDT.
  /// - "DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW" : Materialized View.
  /// - "DATABASE_ENTITY_TYPE_DATABASE" : Database.
  core.String? draftType;

  /// Entity mapping log entries.
  ///
  /// Multiple rules can be effective and contribute changes to a converted
  /// entity, such as a rule can handle the entity name, another rule can handle
  /// an entity type. In addition, rules which did not change the entity are
  /// also logged along with the reason preventing them to do so.
  core.List<EntityMappingLogEntry>? mappingLog;

  /// Source entity full name.
  ///
  /// The source entity can also be a column, index or constraint using the same
  /// naming notation schema.table.column.
  core.String? sourceEntity;

  /// Type of source entity.
  /// Possible string values are:
  /// - "DATABASE_ENTITY_TYPE_UNSPECIFIED" : Unspecified database entity type.
  /// - "DATABASE_ENTITY_TYPE_SCHEMA" : Schema.
  /// - "DATABASE_ENTITY_TYPE_TABLE" : Table.
  /// - "DATABASE_ENTITY_TYPE_COLUMN" : Column.
  /// - "DATABASE_ENTITY_TYPE_CONSTRAINT" : Constraint.
  /// - "DATABASE_ENTITY_TYPE_INDEX" : Index.
  /// - "DATABASE_ENTITY_TYPE_TRIGGER" : Trigger.
  /// - "DATABASE_ENTITY_TYPE_VIEW" : View.
  /// - "DATABASE_ENTITY_TYPE_SEQUENCE" : Sequence.
  /// - "DATABASE_ENTITY_TYPE_STORED_PROCEDURE" : Stored Procedure.
  /// - "DATABASE_ENTITY_TYPE_FUNCTION" : Function.
  /// - "DATABASE_ENTITY_TYPE_SYNONYM" : Synonym.
  /// - "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE" : Package.
  /// - "DATABASE_ENTITY_TYPE_UDT" : UDT.
  /// - "DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW" : Materialized View.
  /// - "DATABASE_ENTITY_TYPE_DATABASE" : Database.
  core.String? sourceType;

  EntityMapping({
    this.draftEntity,
    this.draftType,
    this.mappingLog,
    this.sourceEntity,
    this.sourceType,
  });

  EntityMapping.fromJson(core.Map json_)
      : this(
          draftEntity: json_.containsKey('draftEntity')
              ? json_['draftEntity'] as core.String
              : null,
          draftType: json_.containsKey('draftType')
              ? json_['draftType'] as core.String
              : null,
          mappingLog: json_.containsKey('mappingLog')
              ? (json_['mappingLog'] as core.List)
                  .map((value) => EntityMappingLogEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          sourceEntity: json_.containsKey('sourceEntity')
              ? json_['sourceEntity'] as core.String
              : null,
          sourceType: json_.containsKey('sourceType')
              ? json_['sourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (draftEntity != null) 'draftEntity': draftEntity!,
        if (draftType != null) 'draftType': draftType!,
        if (mappingLog != null) 'mappingLog': mappingLog!,
        if (sourceEntity != null) 'sourceEntity': sourceEntity!,
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// A single record of a rule which was used for a mapping.
class EntityMappingLogEntry {
  /// Comment.
  core.String? mappingComment;

  /// Which rule caused this log entry.
  core.String? ruleId;

  /// Rule revision ID.
  core.String? ruleRevisionId;

  EntityMappingLogEntry({
    this.mappingComment,
    this.ruleId,
    this.ruleRevisionId,
  });

  EntityMappingLogEntry.fromJson(core.Map json_)
      : this(
          mappingComment: json_.containsKey('mappingComment')
              ? json_['mappingComment'] as core.String
              : null,
          ruleId: json_.containsKey('ruleId')
              ? json_['ruleId'] as core.String
              : null,
          ruleRevisionId: json_.containsKey('ruleRevisionId')
              ? json_['ruleRevisionId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mappingComment != null) 'mappingComment': mappingComment!,
        if (ruleId != null) 'ruleId': ruleId!,
        if (ruleRevisionId != null) 'ruleRevisionId': ruleRevisionId!,
      };
}

/// Options to configure rule type EntityMove.
///
/// The rule is used to move an entity to a new schema. The rule filter field
/// can refer to one or more entities. The rule scope can be one of: Table,
/// Column, Constraint, Index, View, Function, Stored Procedure, Materialized
/// View, Sequence, UDT
class EntityMove {
  /// The new schema
  ///
  /// Required.
  core.String? newSchema;

  EntityMove({
    this.newSchema,
  });

  EntityMove.fromJson(core.Map json_)
      : this(
          newSchema: json_.containsKey('newSchema')
              ? json_['newSchema'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newSchema != null) 'newSchema': newSchema!,
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

/// Response message for a 'FetchStaticIps' request.
class FetchStaticIpsResponse {
  /// A token that can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of static IPs.
  core.List<core.String>? staticIps;

  FetchStaticIpsResponse({
    this.nextPageToken,
    this.staticIps,
  });

  FetchStaticIpsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          staticIps: json_.containsKey('staticIps')
              ? (json_['staticIps'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (staticIps != null) 'staticIps': staticIps!,
      };
}

/// Options to configure rule type FilterTableColumns.
///
/// The rule is used to filter the list of columns to include or exclude from a
/// table. The rule filter field can refer to one entity. The rule scope can be:
/// Table Only one of the two lists can be specified for the rule.
class FilterTableColumns {
  /// List of columns to be excluded for a particular table.
  ///
  /// Optional.
  core.List<core.String>? excludeColumns;

  /// List of columns to be included for a particular table.
  ///
  /// Optional.
  core.List<core.String>? includeColumns;

  FilterTableColumns({
    this.excludeColumns,
    this.includeColumns,
  });

  FilterTableColumns.fromJson(core.Map json_)
      : this(
          excludeColumns: json_.containsKey('excludeColumns')
              ? (json_['excludeColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          includeColumns: json_.containsKey('includeColumns')
              ? (json_['includeColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (excludeColumns != null) 'excludeColumns': excludeColumns!,
        if (includeColumns != null) 'includeColumns': includeColumns!,
      };
}

/// Forward SSH Tunnel connectivity.
typedef ForwardSshTunnelConnectivity = $ForwardSshTunnelConnectivity;

/// Function's parent is a schema.
class FunctionEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The SQL code which creates the function.
  core.String? sqlCode;

  FunctionEntity({
    this.customFeatures,
    this.sqlCode,
  });

  FunctionEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          sqlCode: json_.containsKey('sqlCode')
              ? json_['sqlCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (sqlCode != null) 'sqlCode': sqlCode!,
      };
}

/// Request message for 'GenerateSshScript' request.
class GenerateSshScriptRequest {
  /// Bastion VM Instance name to use or to create.
  ///
  /// Required.
  core.String? vm;

  /// The VM creation configuration
  VmCreationConfig? vmCreationConfig;

  /// The port that will be open on the bastion host.
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

/// Request message for 'GenerateTcpProxyScript' request.
class GenerateTcpProxyScriptRequest {
  /// The type of the Compute instance that will host the proxy.
  ///
  /// Required.
  core.String? vmMachineType;

  /// The name of the Compute instance that will host the proxy.
  ///
  /// Required.
  core.String? vmName;

  /// The name of the subnet the Compute instance will use for private
  /// connectivity.
  ///
  /// Must be supplied in the form of
  /// projects/{project}/regions/{region}/subnetworks/{subnetwork}. Note: the
  /// region for the subnet must match the Compute instance region.
  ///
  /// Required.
  core.String? vmSubnet;

  /// The Google Cloud Platform zone to create the VM in.
  ///
  /// The fully qualified name of the zone must be specified, including the
  /// region name, for example "us-central1-b". If not specified, uses the "-b"
  /// zone of the destination Connection Profile's region.
  ///
  /// Optional.
  core.String? vmZone;

  GenerateTcpProxyScriptRequest({
    this.vmMachineType,
    this.vmName,
    this.vmSubnet,
    this.vmZone,
  });

  GenerateTcpProxyScriptRequest.fromJson(core.Map json_)
      : this(
          vmMachineType: json_.containsKey('vmMachineType')
              ? json_['vmMachineType'] as core.String
              : null,
          vmName: json_.containsKey('vmName')
              ? json_['vmName'] as core.String
              : null,
          vmSubnet: json_.containsKey('vmSubnet')
              ? json_['vmSubnet'] as core.String
              : null,
          vmZone: json_.containsKey('vmZone')
              ? json_['vmZone'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (vmMachineType != null) 'vmMachineType': vmMachineType!,
        if (vmName != null) 'vmName': vmName!,
        if (vmSubnet != null) 'vmSubnet': vmSubnet!,
        if (vmZone != null) 'vmZone': vmZone!,
      };
}

/// Request message for 'ImportMappingRules' request.
class ImportMappingRulesRequest {
  /// Should the conversion workspace be committed automatically after the
  /// import operation.
  ///
  /// Required.
  core.bool? autoCommit;

  /// One or more rules files.
  ///
  /// Required.
  core.List<RulesFile>? rulesFiles;

  /// The format of the rules content file.
  ///
  /// Required.
  /// Possible string values are:
  /// - "IMPORT_RULES_FILE_FORMAT_UNSPECIFIED" : Unspecified rules format.
  /// - "IMPORT_RULES_FILE_FORMAT_HARBOUR_BRIDGE_SESSION_FILE" : HarbourBridge
  /// session file.
  /// - "IMPORT_RULES_FILE_FORMAT_ORATOPG_CONFIG_FILE" : Ora2Pg configuration
  /// file.
  core.String? rulesFormat;

  ImportMappingRulesRequest({
    this.autoCommit,
    this.rulesFiles,
    this.rulesFormat,
  });

  ImportMappingRulesRequest.fromJson(core.Map json_)
      : this(
          autoCommit: json_.containsKey('autoCommit')
              ? json_['autoCommit'] as core.bool
              : null,
          rulesFiles: json_.containsKey('rulesFiles')
              ? (json_['rulesFiles'] as core.List)
                  .map((value) => RulesFile.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rulesFormat: json_.containsKey('rulesFormat')
              ? json_['rulesFormat'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoCommit != null) 'autoCommit': autoCommit!,
        if (rulesFiles != null) 'rulesFiles': rulesFiles!,
        if (rulesFormat != null) 'rulesFormat': rulesFormat!,
      };
}

/// Details regarding an Import Rules background job.
class ImportRulesJobDetails {
  /// The requested file format.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "IMPORT_RULES_FILE_FORMAT_UNSPECIFIED" : Unspecified rules format.
  /// - "IMPORT_RULES_FILE_FORMAT_HARBOUR_BRIDGE_SESSION_FILE" : HarbourBridge
  /// session file.
  /// - "IMPORT_RULES_FILE_FORMAT_ORATOPG_CONFIG_FILE" : Ora2Pg configuration
  /// file.
  core.String? fileFormat;

  /// File names used for the import rules job.
  ///
  /// Output only.
  core.List<core.String>? files;

  ImportRulesJobDetails({
    this.fileFormat,
    this.files,
  });

  ImportRulesJobDetails.fromJson(core.Map json_)
      : this(
          fileFormat: json_.containsKey('fileFormat')
              ? json_['fileFormat'] as core.String
              : null,
          files: json_.containsKey('files')
              ? (json_['files'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileFormat != null) 'fileFormat': fileFormat!,
        if (files != null) 'files': files!,
      };
}

/// Index is not used as an independent entity, it is retrieved as part of a
/// Table entity.
class IndexEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The name of the index.
  core.String? name;

  /// Table columns used as part of the Index, for example B-TREE index should
  /// list the columns which constitutes the index.
  core.List<core.String>? tableColumns;

  /// Type of index, for example B-TREE.
  core.String? type;

  /// Boolean value indicating whether the index is unique.
  core.bool? unique;

  IndexEntity({
    this.customFeatures,
    this.name,
    this.tableColumns,
    this.type,
    this.unique,
  });

  IndexEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          tableColumns: json_.containsKey('tableColumns')
              ? (json_['tableColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
          unique:
              json_.containsKey('unique') ? json_['unique'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (name != null) 'name': name!,
        if (tableColumns != null) 'tableColumns': tableColumns!,
        if (type != null) 'type': type!,
        if (unique != null) 'unique': unique!,
      };
}

/// Filter based on relation between source value and compare value of type
/// integer in ConditionalColumnSetValue
class IntComparisonFilter {
  /// Integer compare value to be used
  ///
  /// Required.
  core.String? value;

  /// Relation between source value and compare value
  ///
  /// Required.
  /// Possible string values are:
  /// - "VALUE_COMPARISON_UNSPECIFIED" : Value comparison unspecified.
  /// - "VALUE_COMPARISON_IF_VALUE_SMALLER_THAN" : Value is smaller than the
  /// Compare value.
  /// - "VALUE_COMPARISON_IF_VALUE_SMALLER_EQUAL_THAN" : Value is smaller or
  /// equal than the Compare value.
  /// - "VALUE_COMPARISON_IF_VALUE_LARGER_THAN" : Value is larger than the
  /// Compare value.
  /// - "VALUE_COMPARISON_IF_VALUE_LARGER_EQUAL_THAN" : Value is larger or equal
  /// than the Compare value.
  core.String? valueComparison;

  IntComparisonFilter({
    this.value,
    this.valueComparison,
  });

  IntComparisonFilter.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
          valueComparison: json_.containsKey('valueComparison')
              ? json_['valueComparison'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
        if (valueComparison != null) 'valueComparison': valueComparison!,
      };
}

/// Response message for 'ListConnectionProfiles' request.
class ListConnectionProfilesResponse {
  /// The response list of connection profiles.
  core.List<ConnectionProfile>? connectionProfiles;

  /// A token which can be sent as `page_token` to retrieve the next page.
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

/// Response message for 'ListConversionWorkspaces' request.
class ListConversionWorkspacesResponse {
  /// The list of conversion workspace objects.
  core.List<ConversionWorkspace>? conversionWorkspaces;

  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConversionWorkspacesResponse({
    this.conversionWorkspaces,
    this.nextPageToken,
    this.unreachable,
  });

  ListConversionWorkspacesResponse.fromJson(core.Map json_)
      : this(
          conversionWorkspaces: json_.containsKey('conversionWorkspaces')
              ? (json_['conversionWorkspaces'] as core.List)
                  .map((value) => ConversionWorkspace.fromJson(
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
        if (conversionWorkspaces != null)
          'conversionWorkspaces': conversionWorkspaces!,
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

/// Response message for 'ListMappingRulesRequest' request.
class ListMappingRulesResponse {
  /// The list of conversion workspace mapping rules.
  core.List<MappingRule>? mappingRules;

  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListMappingRulesResponse({
    this.mappingRules,
    this.nextPageToken,
  });

  ListMappingRulesResponse.fromJson(core.Map json_)
      : this(
          mappingRules: json_.containsKey('mappingRules')
              ? (json_['mappingRules'] as core.List)
                  .map((value) => MappingRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mappingRules != null) 'mappingRules': mappingRules!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for 'ListMigrationJobs' request.
class ListMigrationJobsResponse {
  /// The list of migration jobs objects.
  core.List<MigrationJob>? migrationJobs;

  /// A token which can be sent as `page_token` to retrieve the next page.
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

/// Response message for 'ListPrivateConnections' request.
class ListPrivateConnectionsResponse {
  /// A token which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// List of private connections.
  core.List<PrivateConnection>? privateConnections;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListPrivateConnectionsResponse({
    this.nextPageToken,
    this.privateConnections,
    this.unreachable,
  });

  ListPrivateConnectionsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          privateConnections: json_.containsKey('privateConnections')
              ? (json_['privateConnections'] as core.List)
                  .map((value) => PrivateConnection.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unreachable: json_.containsKey('unreachable')
              ? (json_['unreachable'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (privateConnections != null)
          'privateConnections': privateConnections!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// MachineConfig describes the configuration of a machine.
typedef MachineConfig = $MachineConfig;

/// Definition of a transformation that is to be applied to a group of entities
/// in the source schema.
///
/// Several such transformations can be applied to an entity sequentially to
/// define the corresponding entity in the target schema.
class MappingRule {
  /// Rule to specify how the data contained in a column should be transformed
  /// (such as trimmed, rounded, etc) provided that the data meets certain
  /// criteria.
  ///
  /// Optional.
  ConditionalColumnSetValue? conditionalColumnSetValue;

  /// Rule to specify how multiple tables should be converted with an additional
  /// rowid column.
  ///
  /// Optional.
  ConvertRowIdToColumn? convertRowidColumn;

  /// A human readable name
  ///
  /// Optional.
  core.String? displayName;

  /// Rule to specify how multiple entities should be relocated into a different
  /// schema.
  ///
  /// Optional.
  EntityMove? entityMove;

  /// The rule filter
  ///
  /// Required.
  MappingRuleFilter? filter;

  /// Rule to specify the list of columns to include or exclude from a table.
  ///
  /// Optional.
  FilterTableColumns? filterTableColumns;

  /// Rule to specify how multiple columns should be converted to a different
  /// data type.
  ///
  /// Optional.
  MultiColumnDatatypeChange? multiColumnDataTypeChange;

  /// Rule to specify how multiple entities should be renamed.
  ///
  /// Optional.
  MultiEntityRename? multiEntityRename;

  /// Full name of the mapping rule resource, in the form of:
  /// projects/{project}/locations/{location}/conversionWorkspaces/{set}/mappingRule/{rule}.
  core.String? name;

  /// The timestamp that the revision was created.
  ///
  /// Output only.
  core.String? revisionCreateTime;

  /// The revision ID of the mapping rule.
  ///
  /// A new revision is committed whenever the mapping rule is changed in any
  /// way. The format is an 8-character hexadecimal string.
  ///
  /// Output only.
  core.String? revisionId;

  /// The order in which the rule is applied.
  ///
  /// Lower order rules are applied before higher value rules so they may end up
  /// being overridden.
  ///
  /// Required.
  core.String? ruleOrder;

  /// The rule scope
  ///
  /// Required.
  /// Possible string values are:
  /// - "DATABASE_ENTITY_TYPE_UNSPECIFIED" : Unspecified database entity type.
  /// - "DATABASE_ENTITY_TYPE_SCHEMA" : Schema.
  /// - "DATABASE_ENTITY_TYPE_TABLE" : Table.
  /// - "DATABASE_ENTITY_TYPE_COLUMN" : Column.
  /// - "DATABASE_ENTITY_TYPE_CONSTRAINT" : Constraint.
  /// - "DATABASE_ENTITY_TYPE_INDEX" : Index.
  /// - "DATABASE_ENTITY_TYPE_TRIGGER" : Trigger.
  /// - "DATABASE_ENTITY_TYPE_VIEW" : View.
  /// - "DATABASE_ENTITY_TYPE_SEQUENCE" : Sequence.
  /// - "DATABASE_ENTITY_TYPE_STORED_PROCEDURE" : Stored Procedure.
  /// - "DATABASE_ENTITY_TYPE_FUNCTION" : Function.
  /// - "DATABASE_ENTITY_TYPE_SYNONYM" : Synonym.
  /// - "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE" : Package.
  /// - "DATABASE_ENTITY_TYPE_UDT" : UDT.
  /// - "DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW" : Materialized View.
  /// - "DATABASE_ENTITY_TYPE_DATABASE" : Database.
  core.String? ruleScope;

  /// Rule to specify the primary key for a table
  ///
  /// Optional.
  SetTablePrimaryKey? setTablePrimaryKey;

  /// Rule to specify how a single column is converted.
  ///
  /// Optional.
  SingleColumnChange? singleColumnChange;

  /// Rule to specify how a single entity should be renamed.
  ///
  /// Optional.
  SingleEntityRename? singleEntityRename;

  /// Rule to specify how a single package is converted.
  ///
  /// Optional.
  SinglePackageChange? singlePackageChange;

  /// Rule to change the sql code for an entity, for example, function,
  /// procedure.
  ///
  /// Optional.
  SourceSqlChange? sourceSqlChange;

  /// The mapping rule state
  ///
  /// Optional.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state of the mapping rule is unknown.
  /// - "ENABLED" : The rule is enabled.
  /// - "DISABLED" : The rule is disabled.
  /// - "DELETED" : The rule is logically deleted.
  core.String? state;

  MappingRule({
    this.conditionalColumnSetValue,
    this.convertRowidColumn,
    this.displayName,
    this.entityMove,
    this.filter,
    this.filterTableColumns,
    this.multiColumnDataTypeChange,
    this.multiEntityRename,
    this.name,
    this.revisionCreateTime,
    this.revisionId,
    this.ruleOrder,
    this.ruleScope,
    this.setTablePrimaryKey,
    this.singleColumnChange,
    this.singleEntityRename,
    this.singlePackageChange,
    this.sourceSqlChange,
    this.state,
  });

  MappingRule.fromJson(core.Map json_)
      : this(
          conditionalColumnSetValue:
              json_.containsKey('conditionalColumnSetValue')
                  ? ConditionalColumnSetValue.fromJson(
                      json_['conditionalColumnSetValue']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          convertRowidColumn: json_.containsKey('convertRowidColumn')
              ? ConvertRowIdToColumn.fromJson(json_['convertRowidColumn']
                  as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          entityMove: json_.containsKey('entityMove')
              ? EntityMove.fromJson(
                  json_['entityMove'] as core.Map<core.String, core.dynamic>)
              : null,
          filter: json_.containsKey('filter')
              ? MappingRuleFilter.fromJson(
                  json_['filter'] as core.Map<core.String, core.dynamic>)
              : null,
          filterTableColumns: json_.containsKey('filterTableColumns')
              ? FilterTableColumns.fromJson(json_['filterTableColumns']
                  as core.Map<core.String, core.dynamic>)
              : null,
          multiColumnDataTypeChange:
              json_.containsKey('multiColumnDataTypeChange')
                  ? MultiColumnDatatypeChange.fromJson(
                      json_['multiColumnDataTypeChange']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          multiEntityRename: json_.containsKey('multiEntityRename')
              ? MultiEntityRename.fromJson(json_['multiEntityRename']
                  as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          revisionCreateTime: json_.containsKey('revisionCreateTime')
              ? json_['revisionCreateTime'] as core.String
              : null,
          revisionId: json_.containsKey('revisionId')
              ? json_['revisionId'] as core.String
              : null,
          ruleOrder: json_.containsKey('ruleOrder')
              ? json_['ruleOrder'] as core.String
              : null,
          ruleScope: json_.containsKey('ruleScope')
              ? json_['ruleScope'] as core.String
              : null,
          setTablePrimaryKey: json_.containsKey('setTablePrimaryKey')
              ? SetTablePrimaryKey.fromJson(json_['setTablePrimaryKey']
                  as core.Map<core.String, core.dynamic>)
              : null,
          singleColumnChange: json_.containsKey('singleColumnChange')
              ? SingleColumnChange.fromJson(json_['singleColumnChange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          singleEntityRename: json_.containsKey('singleEntityRename')
              ? SingleEntityRename.fromJson(json_['singleEntityRename']
                  as core.Map<core.String, core.dynamic>)
              : null,
          singlePackageChange: json_.containsKey('singlePackageChange')
              ? SinglePackageChange.fromJson(json_['singlePackageChange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sourceSqlChange: json_.containsKey('sourceSqlChange')
              ? SourceSqlChange.fromJson(json_['sourceSqlChange']
                  as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditionalColumnSetValue != null)
          'conditionalColumnSetValue': conditionalColumnSetValue!,
        if (convertRowidColumn != null)
          'convertRowidColumn': convertRowidColumn!,
        if (displayName != null) 'displayName': displayName!,
        if (entityMove != null) 'entityMove': entityMove!,
        if (filter != null) 'filter': filter!,
        if (filterTableColumns != null)
          'filterTableColumns': filterTableColumns!,
        if (multiColumnDataTypeChange != null)
          'multiColumnDataTypeChange': multiColumnDataTypeChange!,
        if (multiEntityRename != null) 'multiEntityRename': multiEntityRename!,
        if (name != null) 'name': name!,
        if (revisionCreateTime != null)
          'revisionCreateTime': revisionCreateTime!,
        if (revisionId != null) 'revisionId': revisionId!,
        if (ruleOrder != null) 'ruleOrder': ruleOrder!,
        if (ruleScope != null) 'ruleScope': ruleScope!,
        if (setTablePrimaryKey != null)
          'setTablePrimaryKey': setTablePrimaryKey!,
        if (singleColumnChange != null)
          'singleColumnChange': singleColumnChange!,
        if (singleEntityRename != null)
          'singleEntityRename': singleEntityRename!,
        if (singlePackageChange != null)
          'singlePackageChange': singlePackageChange!,
        if (sourceSqlChange != null) 'sourceSqlChange': sourceSqlChange!,
        if (state != null) 'state': state!,
      };
}

/// A filter defining the entities that a mapping rule should be applied to.
///
/// When more than one field is specified, the rule is applied only to entities
/// which match all the fields.
class MappingRuleFilter {
  /// The rule should be applied to specific entities defined by their fully
  /// qualified names.
  ///
  /// Optional.
  core.List<core.String>? entities;

  /// The rule should be applied to entities whose non-qualified name contains
  /// the given string.
  ///
  /// Optional.
  core.String? entityNameContains;

  /// The rule should be applied to entities whose non-qualified name starts
  /// with the given prefix.
  ///
  /// Optional.
  core.String? entityNamePrefix;

  /// The rule should be applied to entities whose non-qualified name ends with
  /// the given suffix.
  ///
  /// Optional.
  core.String? entityNameSuffix;

  /// The rule should be applied to entities whose parent entity (fully
  /// qualified name) matches the given value.
  ///
  /// For example, if the rule applies to a table entity, the expected value
  /// should be a schema (schema). If the rule applies to a column or index
  /// entity, the expected value can be either a schema (schema) or a table
  /// (schema.table)
  ///
  /// Optional.
  core.String? parentEntity;

  MappingRuleFilter({
    this.entities,
    this.entityNameContains,
    this.entityNamePrefix,
    this.entityNameSuffix,
    this.parentEntity,
  });

  MappingRuleFilter.fromJson(core.Map json_)
      : this(
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          entityNameContains: json_.containsKey('entityNameContains')
              ? json_['entityNameContains'] as core.String
              : null,
          entityNamePrefix: json_.containsKey('entityNamePrefix')
              ? json_['entityNamePrefix'] as core.String
              : null,
          entityNameSuffix: json_.containsKey('entityNameSuffix')
              ? json_['entityNameSuffix'] as core.String
              : null,
          parentEntity: json_.containsKey('parentEntity')
              ? json_['parentEntity'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (entityNameContains != null)
          'entityNameContains': entityNameContains!,
        if (entityNamePrefix != null) 'entityNamePrefix': entityNamePrefix!,
        if (entityNameSuffix != null) 'entityNameSuffix': entityNameSuffix!,
        if (parentEntity != null) 'parentEntity': parentEntity!,
      };
}

/// MaterializedView's parent is a schema.
class MaterializedViewEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The SQL code which creates the view.
  core.String? sqlCode;

  MaterializedViewEntity({
    this.customFeatures,
    this.sqlCode,
  });

  MaterializedViewEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          sqlCode: json_.containsKey('sqlCode')
              ? json_['sqlCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (sqlCode != null) 'sqlCode': sqlCode!,
      };
}

/// Represents a Database Migration Service migration job object.
class MigrationJob {
  /// The CMEK (customer-managed encryption key) fully qualified key name used
  /// for the migration job.
  ///
  /// This field supports all migration jobs types except for: * Mysql to Mysql
  /// (use the cmek field in the cloudsql connection profile instead). *
  /// PostrgeSQL to PostgreSQL (use the cmek field in the cloudsql connection
  /// profile instead). * PostgreSQL to AlloyDB (use the kms_key_name field in
  /// the alloydb connection profile instead). Each Cloud CMEK key has the
  /// following format:
  /// projects/\[PROJECT\]/locations/\[REGION\]/keyRings/\[RING\]/cryptoKeys/\[KEY_NAME\]
  core.String? cmekKeyName;

  /// The conversion workspace used by the migration.
  ConversionWorkspaceInfo? conversionWorkspace;

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

  /// The type of the data dump.
  ///
  /// Supported for MySQL to CloudSQL for MySQL migrations only.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DUMP_TYPE_UNSPECIFIED" : If not specified, defaults to LOGICAL
  /// - "LOGICAL" : Logical dump.
  /// - "PHYSICAL" : Physical file-based dump. Supported for MySQL to CloudSQL
  /// for MySQL migrations only.
  core.String? dumpType;

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

  /// This field can be used to select the entities to migrate as part of the
  /// migration job.
  ///
  /// It uses AIP-160 notation to select a subset of the entities configured on
  /// the associated conversion-workspace. This field should not be set on
  /// migration-jobs that are not associated with a conversion workspace.
  core.String? filter;

  /// The resource labels for migration job to use to annotate any related
  /// underlying resources such as Compute Engine VMs.
  ///
  /// An object containing a list of "key": "value" pairs. Example: `{ "name":
  /// "wrench", "mass": "1.3kg", "count": "3" }`.
  core.Map<core.String, core.String>? labels;

  /// The name (URI) of this migration job resource, in the form of:
  /// projects/{project}/locations/{location}/migrationJobs/{migrationJob}.
  core.String? name;

  /// Data dump parallelism settings used by the migration.
  ///
  /// Currently applicable only for MySQL to Cloud SQL for MySQL migrations
  /// only.
  ///
  /// Optional.
  PerformanceConfig? performanceConfig;

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
  /// - "READY_FOR_PROMOTE" : The migration job is ready to be promoted.
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

  /// Configuration for SQL Server homogeneous migration.
  ///
  /// Optional.
  SqlServerHomogeneousMigrationJobConfig?
      sqlserverHomogeneousMigrationJobConfig;

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
    this.cmekKeyName,
    this.conversionWorkspace,
    this.createTime,
    this.destination,
    this.destinationDatabase,
    this.displayName,
    this.dumpFlags,
    this.dumpPath,
    this.dumpType,
    this.duration,
    this.endTime,
    this.error,
    this.filter,
    this.labels,
    this.name,
    this.performanceConfig,
    this.phase,
    this.reverseSshConnectivity,
    this.source,
    this.sourceDatabase,
    this.sqlserverHomogeneousMigrationJobConfig,
    this.state,
    this.staticIpConnectivity,
    this.type,
    this.updateTime,
    this.vpcPeeringConnectivity,
  });

  MigrationJob.fromJson(core.Map json_)
      : this(
          cmekKeyName: json_.containsKey('cmekKeyName')
              ? json_['cmekKeyName'] as core.String
              : null,
          conversionWorkspace: json_.containsKey('conversionWorkspace')
              ? ConversionWorkspaceInfo.fromJson(json_['conversionWorkspace']
                  as core.Map<core.String, core.dynamic>)
              : null,
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
          dumpType: json_.containsKey('dumpType')
              ? json_['dumpType'] as core.String
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
          filter: json_.containsKey('filter')
              ? json_['filter'] as core.String
              : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          performanceConfig: json_.containsKey('performanceConfig')
              ? PerformanceConfig.fromJson(json_['performanceConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
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
          sqlserverHomogeneousMigrationJobConfig:
              json_.containsKey('sqlserverHomogeneousMigrationJobConfig')
                  ? SqlServerHomogeneousMigrationJobConfig.fromJson(
                      json_['sqlserverHomogeneousMigrationJobConfig']
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
        if (cmekKeyName != null) 'cmekKeyName': cmekKeyName!,
        if (conversionWorkspace != null)
          'conversionWorkspace': conversionWorkspace!,
        if (createTime != null) 'createTime': createTime!,
        if (destination != null) 'destination': destination!,
        if (destinationDatabase != null)
          'destinationDatabase': destinationDatabase!,
        if (displayName != null) 'displayName': displayName!,
        if (dumpFlags != null) 'dumpFlags': dumpFlags!,
        if (dumpPath != null) 'dumpPath': dumpPath!,
        if (dumpType != null) 'dumpType': dumpType!,
        if (duration != null) 'duration': duration!,
        if (endTime != null) 'endTime': endTime!,
        if (error != null) 'error': error!,
        if (filter != null) 'filter': filter!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (performanceConfig != null) 'performanceConfig': performanceConfig!,
        if (phase != null) 'phase': phase!,
        if (reverseSshConnectivity != null)
          'reverseSshConnectivity': reverseSshConnectivity!,
        if (source != null) 'source': source!,
        if (sourceDatabase != null) 'sourceDatabase': sourceDatabase!,
        if (sqlserverHomogeneousMigrationJobConfig != null)
          'sqlserverHomogeneousMigrationJobConfig':
              sqlserverHomogeneousMigrationJobConfig!,
        if (state != null) 'state': state!,
        if (staticIpConnectivity != null)
          'staticIpConnectivity': staticIpConnectivity!,
        if (type != null) 'type': type!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vpcPeeringConnectivity != null)
          'vpcPeeringConnectivity': vpcPeeringConnectivity!,
      };
}

/// Options to configure rule type MultiColumnDatatypeChange.
///
/// The rule is used to change the data type and associated properties of
/// multiple columns at once. The rule filter field can refer to one or more
/// entities. The rule scope can be one of:Column. This rule requires additional
/// filters to be specified beyond the basic rule filter field, which is the
/// source data type, but the rule supports additional filtering capabilities
/// such as the minimum and maximum field length. All additional filters which
/// are specified are required to be met in order for the rule to be applied
/// (logical AND between the fields).
class MultiColumnDatatypeChange {
  /// Custom engine specific features.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// New data type.
  ///
  /// Required.
  core.String? newDataType;

  /// Column fractional seconds precision - used only for timestamp based
  /// datatypes - if not specified and relevant uses the source column
  /// fractional seconds precision.
  ///
  /// Optional.
  core.int? overrideFractionalSecondsPrecision;

  /// Column length - e.g. varchar (50) - if not specified and relevant uses the
  /// source column length.
  ///
  /// Optional.
  core.String? overrideLength;

  /// Column precision - when relevant - if not specified and relevant uses the
  /// source column precision.
  ///
  /// Optional.
  core.int? overridePrecision;

  /// Column scale - when relevant - if not specified and relevant uses the
  /// source column scale.
  ///
  /// Optional.
  core.int? overrideScale;

  /// Filter on source data type.
  ///
  /// Required.
  core.String? sourceDataTypeFilter;

  /// Filter for fixed point number data types such as NUMERIC/NUMBER.
  ///
  /// Optional.
  SourceNumericFilter? sourceNumericFilter;

  /// Filter for text-based data types like varchar.
  ///
  /// Optional.
  SourceTextFilter? sourceTextFilter;

  MultiColumnDatatypeChange({
    this.customFeatures,
    this.newDataType,
    this.overrideFractionalSecondsPrecision,
    this.overrideLength,
    this.overridePrecision,
    this.overrideScale,
    this.sourceDataTypeFilter,
    this.sourceNumericFilter,
    this.sourceTextFilter,
  });

  MultiColumnDatatypeChange.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          newDataType: json_.containsKey('newDataType')
              ? json_['newDataType'] as core.String
              : null,
          overrideFractionalSecondsPrecision:
              json_.containsKey('overrideFractionalSecondsPrecision')
                  ? json_['overrideFractionalSecondsPrecision'] as core.int
                  : null,
          overrideLength: json_.containsKey('overrideLength')
              ? json_['overrideLength'] as core.String
              : null,
          overridePrecision: json_.containsKey('overridePrecision')
              ? json_['overridePrecision'] as core.int
              : null,
          overrideScale: json_.containsKey('overrideScale')
              ? json_['overrideScale'] as core.int
              : null,
          sourceDataTypeFilter: json_.containsKey('sourceDataTypeFilter')
              ? json_['sourceDataTypeFilter'] as core.String
              : null,
          sourceNumericFilter: json_.containsKey('sourceNumericFilter')
              ? SourceNumericFilter.fromJson(json_['sourceNumericFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
          sourceTextFilter: json_.containsKey('sourceTextFilter')
              ? SourceTextFilter.fromJson(json_['sourceTextFilter']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (newDataType != null) 'newDataType': newDataType!,
        if (overrideFractionalSecondsPrecision != null)
          'overrideFractionalSecondsPrecision':
              overrideFractionalSecondsPrecision!,
        if (overrideLength != null) 'overrideLength': overrideLength!,
        if (overridePrecision != null) 'overridePrecision': overridePrecision!,
        if (overrideScale != null) 'overrideScale': overrideScale!,
        if (sourceDataTypeFilter != null)
          'sourceDataTypeFilter': sourceDataTypeFilter!,
        if (sourceNumericFilter != null)
          'sourceNumericFilter': sourceNumericFilter!,
        if (sourceTextFilter != null) 'sourceTextFilter': sourceTextFilter!,
      };
}

/// Options to configure rule type MultiEntityRename.
///
/// The rule is used to rename multiple entities. The rule filter field can
/// refer to one or more entities. The rule scope can be one of: Database,
/// Schema, Table, Column, Constraint, Index, View, Function, Stored Procedure,
/// Materialized View, Sequence, UDT
class MultiEntityRename {
  /// The pattern used to generate the new entity's name.
  ///
  /// This pattern must include the characters '{name}', which will be replaced
  /// with the name of the original entity. For example, the pattern 't_{name}'
  /// for an entity name jobs would be converted to 't_jobs'. If unspecified,
  /// the default value for this field is '{name}'
  ///
  /// Optional.
  core.String? newNamePattern;

  /// Additional transformation that can be done on the source entity name
  /// before it is being used by the new_name_pattern, for example lower case.
  ///
  /// If no transformation is desired, use NO_TRANSFORMATION
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENTITY_NAME_TRANSFORMATION_UNSPECIFIED" : Entity name transformation
  /// unspecified.
  /// - "ENTITY_NAME_TRANSFORMATION_NO_TRANSFORMATION" : No transformation.
  /// - "ENTITY_NAME_TRANSFORMATION_LOWER_CASE" : Transform to lower case.
  /// - "ENTITY_NAME_TRANSFORMATION_UPPER_CASE" : Transform to upper case.
  /// - "ENTITY_NAME_TRANSFORMATION_CAPITALIZED_CASE" : Transform to capitalized
  /// case.
  core.String? sourceNameTransformation;

  MultiEntityRename({
    this.newNamePattern,
    this.sourceNameTransformation,
  });

  MultiEntityRename.fromJson(core.Map json_)
      : this(
          newNamePattern: json_.containsKey('newNamePattern')
              ? json_['newNamePattern'] as core.String
              : null,
          sourceNameTransformation:
              json_.containsKey('sourceNameTransformation')
                  ? json_['sourceNameTransformation'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newNamePattern != null) 'newNamePattern': newNamePattern!,
        if (sourceNameTransformation != null)
          'sourceNameTransformation': sourceNameTransformation!,
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

/// Specifies connection parameters required specifically for Oracle databases.
class OracleConnectionProfile {
  /// Database service for the Oracle connection.
  ///
  /// Required.
  core.String? databaseService;

  /// Forward SSH tunnel connectivity.
  ForwardSshTunnelConnectivity? forwardSshConnectivity;

  /// The IP or hostname of the source Oracle database.
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

  /// Indicates whether a new password is included in the request.
  ///
  /// Output only.
  core.bool? passwordSet;

  /// The network port of the source Oracle database.
  ///
  /// Required.
  core.int? port;

  /// Private connectivity.
  PrivateConnectivity? privateConnectivity;

  /// SSL configuration for the connection to the source Oracle database.
  ///
  /// * Only `SERVER_ONLY` configuration is supported for Oracle SSL. * SSL is
  /// supported for Oracle versions 12 and above.
  SslConfig? ssl;

  /// Static Service IP connectivity.
  StaticServiceIpConnectivity? staticServiceIpConnectivity;

  /// The username that Database Migration Service will use to connect to the
  /// database.
  ///
  /// The value is encrypted when stored in Database Migration Service.
  ///
  /// Required.
  core.String? username;

  OracleConnectionProfile({
    this.databaseService,
    this.forwardSshConnectivity,
    this.host,
    this.password,
    this.passwordSet,
    this.port,
    this.privateConnectivity,
    this.ssl,
    this.staticServiceIpConnectivity,
    this.username,
  });

  OracleConnectionProfile.fromJson(core.Map json_)
      : this(
          databaseService: json_.containsKey('databaseService')
              ? json_['databaseService'] as core.String
              : null,
          forwardSshConnectivity: json_.containsKey('forwardSshConnectivity')
              ? ForwardSshTunnelConnectivity.fromJson(
                  json_['forwardSshConnectivity']
                      as core.Map<core.String, core.dynamic>)
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          passwordSet: json_.containsKey('passwordSet')
              ? json_['passwordSet'] as core.bool
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          privateConnectivity: json_.containsKey('privateConnectivity')
              ? PrivateConnectivity.fromJson(json_['privateConnectivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          ssl: json_.containsKey('ssl')
              ? SslConfig.fromJson(
                  json_['ssl'] as core.Map<core.String, core.dynamic>)
              : null,
          staticServiceIpConnectivity:
              json_.containsKey('staticServiceIpConnectivity')
                  ? StaticServiceIpConnectivity.fromJson(
                      json_['staticServiceIpConnectivity']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (databaseService != null) 'databaseService': databaseService!,
        if (forwardSshConnectivity != null)
          'forwardSshConnectivity': forwardSshConnectivity!,
        if (host != null) 'host': host!,
        if (password != null) 'password': password!,
        if (passwordSet != null) 'passwordSet': passwordSet!,
        if (port != null) 'port': port!,
        if (privateConnectivity != null)
          'privateConnectivity': privateConnectivity!,
        if (ssl != null) 'ssl': ssl!,
        if (staticServiceIpConnectivity != null)
          'staticServiceIpConnectivity': staticServiceIpConnectivity!,
        if (username != null) 'username': username!,
      };
}

/// Package's parent is a schema.
class PackageEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The SQL code which creates the package body.
  ///
  /// If the package specification has cursors or subprograms, then the package
  /// body is mandatory.
  core.String? packageBody;

  /// The SQL code which creates the package.
  core.String? packageSqlCode;

  PackageEntity({
    this.customFeatures,
    this.packageBody,
    this.packageSqlCode,
  });

  PackageEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          packageBody: json_.containsKey('packageBody')
              ? json_['packageBody'] as core.String
              : null,
          packageSqlCode: json_.containsKey('packageSqlCode')
              ? json_['packageSqlCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (packageBody != null) 'packageBody': packageBody!,
        if (packageSqlCode != null) 'packageSqlCode': packageSqlCode!,
      };
}

/// Performance configuration definition.
class PerformanceConfig {
  /// Initial dump parallelism level.
  /// Possible string values are:
  /// - "DUMP_PARALLEL_LEVEL_UNSPECIFIED" : Unknown dump parallel level. Will be
  /// defaulted to OPTIMAL.
  /// - "MIN" : Minimal parallel level.
  /// - "OPTIMAL" : Optimal parallel level.
  /// - "MAX" : Maximum parallel level.
  core.String? dumpParallelLevel;

  PerformanceConfig({
    this.dumpParallelLevel,
  });

  PerformanceConfig.fromJson(core.Map json_)
      : this(
          dumpParallelLevel: json_.containsKey('dumpParallelLevel')
              ? json_['dumpParallelLevel'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dumpParallelLevel != null) 'dumpParallelLevel': dumpParallelLevel!,
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
  core.List<core.int> get etagAsBytes => convert_1.base64.decode(etag!);

  set etagAsBytes(core.List<core.int> bytes_) {
    etag = convert_1.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
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

/// Issue position.
class Position {
  /// Issue column number
  core.int? column;

  /// Issue length
  core.int? length;

  /// Issue line number
  core.int? line;

  /// Issue offset
  core.int? offset;

  Position({
    this.column,
    this.length,
    this.line,
    this.offset,
  });

  Position.fromJson(core.Map json_)
      : this(
          column:
              json_.containsKey('column') ? json_['column'] as core.int : null,
          length:
              json_.containsKey('length') ? json_['length'] as core.int : null,
          line: json_.containsKey('line') ? json_['line'] as core.int : null,
          offset:
              json_.containsKey('offset') ? json_['offset'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (column != null) 'column': column!,
        if (length != null) 'length': length!,
        if (line != null) 'line': line!,
        if (offset != null) 'offset': offset!,
      };
}

/// Specifies connection parameters required specifically for PostgreSQL
/// databases.
class PostgreSqlConnectionProfile {
  /// If the destination is an AlloyDB database, use this field to provide the
  /// AlloyDB cluster ID.
  ///
  /// Optional.
  core.String? alloydbClusterId;

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

  /// Private service connect connectivity.
  PrivateServiceConnectConnectivity? privateServiceConnectConnectivity;

  /// SSL configuration for the destination to connect to the source database.
  SslConfig? ssl;

  /// Static ip connectivity data (default, no additional details needed).
  StaticIpConnectivity? staticIpConnectivity;

  /// The username that Database Migration Service will use to connect to the
  /// database.
  ///
  /// The value is encrypted when stored in Database Migration Service.
  ///
  /// Required.
  core.String? username;

  PostgreSqlConnectionProfile({
    this.alloydbClusterId,
    this.cloudSqlId,
    this.host,
    this.networkArchitecture,
    this.password,
    this.passwordSet,
    this.port,
    this.privateServiceConnectConnectivity,
    this.ssl,
    this.staticIpConnectivity,
    this.username,
  });

  PostgreSqlConnectionProfile.fromJson(core.Map json_)
      : this(
          alloydbClusterId: json_.containsKey('alloydbClusterId')
              ? json_['alloydbClusterId'] as core.String
              : null,
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
          privateServiceConnectConnectivity:
              json_.containsKey('privateServiceConnectConnectivity')
                  ? PrivateServiceConnectConnectivity.fromJson(
                      json_['privateServiceConnectConnectivity']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          ssl: json_.containsKey('ssl')
              ? SslConfig.fromJson(
                  json_['ssl'] as core.Map<core.String, core.dynamic>)
              : null,
          staticIpConnectivity: json_.containsKey('staticIpConnectivity')
              ? StaticIpConnectivity.fromJson(json_['staticIpConnectivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (alloydbClusterId != null) 'alloydbClusterId': alloydbClusterId!,
        if (cloudSqlId != null) 'cloudSqlId': cloudSqlId!,
        if (host != null) 'host': host!,
        if (networkArchitecture != null)
          'networkArchitecture': networkArchitecture!,
        if (password != null) 'password': password!,
        if (passwordSet != null) 'passwordSet': passwordSet!,
        if (port != null) 'port': port!,
        if (privateServiceConnectConnectivity != null)
          'privateServiceConnectConnectivity':
              privateServiceConnectConnectivity!,
        if (ssl != null) 'ssl': ssl!,
        if (staticIpConnectivity != null)
          'staticIpConnectivity': staticIpConnectivity!,
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
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          labels: json_.containsKey('labels')
              ? (json_['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
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

/// The PrivateConnection resource is used to establish private connectivity
/// with the customer's network.
class PrivateConnection {
  /// The create time of the resource.
  ///
  /// Output only.
  core.String? createTime;

  /// The private connection display name.
  core.String? displayName;

  /// The error details in case of state FAILED.
  ///
  /// Output only.
  Status? error;

  /// The resource labels for private connections to use to annotate any related
  /// underlying resources such as Compute Engine VMs.
  ///
  /// An object containing a list of "key": "value" pairs. Example: `{ "name":
  /// "wrench", "mass": "1.3kg", "count": "3" }`.
  core.Map<core.String, core.String>? labels;

  /// The name of the resource.
  core.String? name;

  /// The state of the private connection.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED"
  /// - "CREATING" : The private connection is in creation state - creating
  /// resources.
  /// - "CREATED" : The private connection has been created with all of its
  /// resources.
  /// - "FAILED" : The private connection creation has failed.
  /// - "DELETING" : The private connection is being deleted.
  /// - "FAILED_TO_DELETE" : Delete request has failed, resource is in invalid
  /// state.
  /// - "DELETED" : The private connection has been deleted.
  core.String? state;

  /// The last update time of the resource.
  ///
  /// Output only.
  core.String? updateTime;

  /// VPC peering configuration.
  VpcPeeringConfig? vpcPeeringConfig;

  PrivateConnection({
    this.createTime,
    this.displayName,
    this.error,
    this.labels,
    this.name,
    this.state,
    this.updateTime,
    this.vpcPeeringConfig,
  });

  PrivateConnection.fromJson(core.Map json_)
      : this(
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
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          vpcPeeringConfig: json_.containsKey('vpcPeeringConfig')
              ? VpcPeeringConfig.fromJson(json_['vpcPeeringConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (error != null) 'error': error!,
        if (labels != null) 'labels': labels!,
        if (name != null) 'name': name!,
        if (state != null) 'state': state!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (vpcPeeringConfig != null) 'vpcPeeringConfig': vpcPeeringConfig!,
      };
}

/// Private Connectivity.
class PrivateConnectivity {
  /// The resource name (URI) of the private connection.
  ///
  /// Required.
  core.String? privateConnection;

  PrivateConnectivity({
    this.privateConnection,
  });

  PrivateConnectivity.fromJson(core.Map json_)
      : this(
          privateConnection: json_.containsKey('privateConnection')
              ? json_['privateConnection'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (privateConnection != null) 'privateConnection': privateConnection!,
      };
}

/// [Private Service Connect connectivity](https://cloud.google.com/vpc/docs/private-service-connect#service-attachments)
class PrivateServiceConnectConnectivity {
  /// A service attachment that exposes a database, and has the following
  /// format:
  /// projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  ///
  /// Required.
  core.String? serviceAttachment;

  PrivateServiceConnectConnectivity({
    this.serviceAttachment,
  });

  PrivateServiceConnectConnectivity.fromJson(core.Map json_)
      : this(
          serviceAttachment: json_.containsKey('serviceAttachment')
              ? json_['serviceAttachment'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (serviceAttachment != null) 'serviceAttachment': serviceAttachment!,
      };
}

/// Request message for 'PromoteMigrationJob' request.
typedef PromoteMigrationJobRequest = $Empty;

/// Request message for 'RestartMigrationJob' request.
class RestartMigrationJobRequest {
  /// Restart the migration job without running prior configuration
  /// verification.
  ///
  /// Defaults to `false`.
  ///
  /// Optional.
  core.bool? skipValidation;

  RestartMigrationJobRequest({
    this.skipValidation,
  });

  RestartMigrationJobRequest.fromJson(core.Map json_)
      : this(
          skipValidation: json_.containsKey('skipValidation')
              ? json_['skipValidation'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (skipValidation != null) 'skipValidation': skipValidation!,
      };
}

/// Request message for 'ResumeMigrationJob' request.
class ResumeMigrationJobRequest {
  /// Resume the migration job without running prior configuration verification.
  ///
  /// Defaults to `false`.
  ///
  /// Optional.
  core.bool? skipValidation;

  ResumeMigrationJobRequest({
    this.skipValidation,
  });

  ResumeMigrationJobRequest.fromJson(core.Map json_)
      : this(
          skipValidation: json_.containsKey('skipValidation')
              ? json_['skipValidation'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (skipValidation != null) 'skipValidation': skipValidation!,
      };
}

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

/// Request message for 'RollbackConversionWorkspace' request.
typedef RollbackConversionWorkspaceRequest = $Empty;

/// This allows the data to change scale, for example if the source is 2 digits
/// after the decimal point, specify round to scale value = 2.
///
/// If for example the value needs to be converted to an integer, use round to
/// scale value = 0.
class RoundToScale {
  /// Scale value to be used
  ///
  /// Required.
  core.int? scale;

  RoundToScale({
    this.scale,
  });

  RoundToScale.fromJson(core.Map json_)
      : this(
          scale: json_.containsKey('scale') ? json_['scale'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (scale != null) 'scale': scale!,
      };
}

/// Details of a single rules file.
class RulesFile {
  /// The text content of the rules that needs to be converted.
  ///
  /// Required.
  core.String? rulesContent;

  /// The filename of the rules that needs to be converted.
  ///
  /// The filename is used mainly so that future logs of the import rules job
  /// contain it, and can therefore be searched by it.
  ///
  /// Required.
  core.String? rulesSourceFilename;

  RulesFile({
    this.rulesContent,
    this.rulesSourceFilename,
  });

  RulesFile.fromJson(core.Map json_)
      : this(
          rulesContent: json_.containsKey('rulesContent')
              ? json_['rulesContent'] as core.String
              : null,
          rulesSourceFilename: json_.containsKey('rulesSourceFilename')
              ? json_['rulesSourceFilename'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (rulesContent != null) 'rulesContent': rulesContent!,
        if (rulesSourceFilename != null)
          'rulesSourceFilename': rulesSourceFilename!,
      };
}

/// Schema typically has no parent entity, but can have a parent entity
/// DatabaseInstance (for database engines which support it).
///
/// For some database engines, the terms schema and user can be used
/// interchangeably when they refer to a namespace or a collection of other
/// database entities. Can store additional information which is schema
/// specific.
typedef SchemaEntity = $Entity;

/// Response message for 'SearchBackgroundJobs' request.
class SearchBackgroundJobsResponse {
  /// The list of conversion workspace mapping rules.
  core.List<BackgroundJobLogEntry>? jobs;

  SearchBackgroundJobsResponse({
    this.jobs,
  });

  SearchBackgroundJobsResponse.fromJson(core.Map json_)
      : this(
          jobs: json_.containsKey('jobs')
              ? (json_['jobs'] as core.List)
                  .map((value) => BackgroundJobLogEntry.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (jobs != null) 'jobs': jobs!,
      };
}

/// Request message for 'SeedConversionWorkspace' request.
class SeedConversionWorkspaceRequest {
  /// Should the conversion workspace be committed automatically after the seed
  /// operation.
  core.bool? autoCommit;

  /// Fully qualified (Uri) name of the destination connection profile.
  ///
  /// Optional.
  core.String? destinationConnectionProfile;

  /// Fully qualified (Uri) name of the source connection profile.
  ///
  /// Optional.
  core.String? sourceConnectionProfile;

  SeedConversionWorkspaceRequest({
    this.autoCommit,
    this.destinationConnectionProfile,
    this.sourceConnectionProfile,
  });

  SeedConversionWorkspaceRequest.fromJson(core.Map json_)
      : this(
          autoCommit: json_.containsKey('autoCommit')
              ? json_['autoCommit'] as core.bool
              : null,
          destinationConnectionProfile:
              json_.containsKey('destinationConnectionProfile')
                  ? json_['destinationConnectionProfile'] as core.String
                  : null,
          sourceConnectionProfile: json_.containsKey('sourceConnectionProfile')
              ? json_['sourceConnectionProfile'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (autoCommit != null) 'autoCommit': autoCommit!,
        if (destinationConnectionProfile != null)
          'destinationConnectionProfile': destinationConnectionProfile!,
        if (sourceConnectionProfile != null)
          'sourceConnectionProfile': sourceConnectionProfile!,
      };
}

/// Details regarding a Seed background job.
class SeedJobDetails {
  /// The connection profile which was used for the seed job.
  ///
  /// Output only.
  core.String? connectionProfile;

  SeedJobDetails({
    this.connectionProfile,
  });

  SeedJobDetails.fromJson(core.Map json_)
      : this(
          connectionProfile: json_.containsKey('connectionProfile')
              ? json_['connectionProfile'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (connectionProfile != null) 'connectionProfile': connectionProfile!,
      };
}

/// Sequence's parent is a schema.
class SequenceEntity {
  /// Indicates number of entries to cache / precreate.
  core.String? cache;

  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// Indicates whether the sequence value should cycle through.
  core.bool? cycle;

  /// Increment value for the sequence.
  core.String? increment;

  /// Maximum number for the sequence represented as bytes to accommodate large.
  ///
  /// numbers
  core.String? maxValue;
  core.List<core.int> get maxValueAsBytes => convert_1.base64.decode(maxValue!);

  set maxValueAsBytes(core.List<core.int> bytes_) {
    maxValue = convert_1.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Minimum number for the sequence represented as bytes to accommodate large.
  ///
  /// numbers
  core.String? minValue;
  core.List<core.int> get minValueAsBytes => convert_1.base64.decode(minValue!);

  set minValueAsBytes(core.List<core.int> bytes_) {
    minValue = convert_1.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Start number for the sequence represented as bytes to accommodate large.
  ///
  /// numbers
  core.String? startValue;
  core.List<core.int> get startValueAsBytes =>
      convert_1.base64.decode(startValue!);

  set startValueAsBytes(core.List<core.int> bytes_) {
    startValue = convert_1.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  SequenceEntity({
    this.cache,
    this.customFeatures,
    this.cycle,
    this.increment,
    this.maxValue,
    this.minValue,
    this.startValue,
  });

  SequenceEntity.fromJson(core.Map json_)
      : this(
          cache:
              json_.containsKey('cache') ? json_['cache'] as core.String : null,
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          cycle:
              json_.containsKey('cycle') ? json_['cycle'] as core.bool : null,
          increment: json_.containsKey('increment')
              ? json_['increment'] as core.String
              : null,
          maxValue: json_.containsKey('maxValue')
              ? json_['maxValue'] as core.String
              : null,
          minValue: json_.containsKey('minValue')
              ? json_['minValue'] as core.String
              : null,
          startValue: json_.containsKey('startValue')
              ? json_['startValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cache != null) 'cache': cache!,
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (cycle != null) 'cycle': cycle!,
        if (increment != null) 'increment': increment!,
        if (maxValue != null) 'maxValue': maxValue!,
        if (minValue != null) 'minValue': minValue!,
        if (startValue != null) 'startValue': startValue!,
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

/// Options to configure rule type SetTablePrimaryKey.
///
/// The rule is used to specify the columns and name to configure/alter the
/// primary key of a table. The rule filter field can refer to one entity. The
/// rule scope can be one of: Table.
class SetTablePrimaryKey {
  /// Name for the primary key
  ///
  /// Optional.
  core.String? primaryKey;

  /// List of column names for the primary key
  ///
  /// Required.
  core.List<core.String>? primaryKeyColumns;

  SetTablePrimaryKey({
    this.primaryKey,
    this.primaryKeyColumns,
  });

  SetTablePrimaryKey.fromJson(core.Map json_)
      : this(
          primaryKey: json_.containsKey('primaryKey')
              ? json_['primaryKey'] as core.String
              : null,
          primaryKeyColumns: json_.containsKey('primaryKeyColumns')
              ? (json_['primaryKeyColumns'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (primaryKey != null) 'primaryKey': primaryKey!,
        if (primaryKeyColumns != null) 'primaryKeyColumns': primaryKeyColumns!,
      };
}

/// Options to configure rule type SingleColumnChange.
///
/// The rule is used to change the properties of a column. The rule filter field
/// can refer to one entity. The rule scope can be one of: Column. When using
/// this rule, if a field is not specified than the destination column's
/// configuration will be the same as the one in the source column..
class SingleColumnChange {
  /// Is the column of array type.
  ///
  /// Optional.
  core.bool? array;

  /// The length of the array, only relevant if the column type is an array.
  ///
  /// Optional.
  core.int? arrayLength;

  /// Is the column auto-generated/identity.
  ///
  /// Optional.
  core.bool? autoGenerated;

  /// Charset override - instead of table level charset.
  ///
  /// Optional.
  core.String? charset;

  /// Collation override - instead of table level collation.
  ///
  /// Optional.
  core.String? collation;

  /// Comment associated with the column.
  ///
  /// Optional.
  core.String? comment;

  /// Custom engine specific features.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// Column data type name.
  ///
  /// Optional.
  core.String? dataType;

  /// Column fractional seconds precision - e.g. 2 as in timestamp (2) - when
  /// relevant.
  ///
  /// Optional.
  core.int? fractionalSecondsPrecision;

  /// Column length - e.g. 50 as in varchar (50) - when relevant.
  ///
  /// Optional.
  core.String? length;

  /// Is the column nullable.
  ///
  /// Optional.
  core.bool? nullable;

  /// Column precision - e.g. 8 as in double (8,2) - when relevant.
  ///
  /// Optional.
  core.int? precision;

  /// Column scale - e.g. 2 as in double (8,2) - when relevant.
  ///
  /// Optional.
  core.int? scale;

  /// Specifies the list of values allowed in the column.
  ///
  /// Optional.
  core.List<core.String>? setValues;

  /// Is the column a UDT (User-defined Type).
  ///
  /// Optional.
  core.bool? udt;

  SingleColumnChange({
    this.array,
    this.arrayLength,
    this.autoGenerated,
    this.charset,
    this.collation,
    this.comment,
    this.customFeatures,
    this.dataType,
    this.fractionalSecondsPrecision,
    this.length,
    this.nullable,
    this.precision,
    this.scale,
    this.setValues,
    this.udt,
  });

  SingleColumnChange.fromJson(core.Map json_)
      : this(
          array:
              json_.containsKey('array') ? json_['array'] as core.bool : null,
          arrayLength: json_.containsKey('arrayLength')
              ? json_['arrayLength'] as core.int
              : null,
          autoGenerated: json_.containsKey('autoGenerated')
              ? json_['autoGenerated'] as core.bool
              : null,
          charset: json_.containsKey('charset')
              ? json_['charset'] as core.String
              : null,
          collation: json_.containsKey('collation')
              ? json_['collation'] as core.String
              : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          fractionalSecondsPrecision:
              json_.containsKey('fractionalSecondsPrecision')
                  ? json_['fractionalSecondsPrecision'] as core.int
                  : null,
          length: json_.containsKey('length')
              ? json_['length'] as core.String
              : null,
          nullable: json_.containsKey('nullable')
              ? json_['nullable'] as core.bool
              : null,
          precision: json_.containsKey('precision')
              ? json_['precision'] as core.int
              : null,
          scale: json_.containsKey('scale') ? json_['scale'] as core.int : null,
          setValues: json_.containsKey('setValues')
              ? (json_['setValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          udt: json_.containsKey('udt') ? json_['udt'] as core.bool : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (array != null) 'array': array!,
        if (arrayLength != null) 'arrayLength': arrayLength!,
        if (autoGenerated != null) 'autoGenerated': autoGenerated!,
        if (charset != null) 'charset': charset!,
        if (collation != null) 'collation': collation!,
        if (comment != null) 'comment': comment!,
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (dataType != null) 'dataType': dataType!,
        if (fractionalSecondsPrecision != null)
          'fractionalSecondsPrecision': fractionalSecondsPrecision!,
        if (length != null) 'length': length!,
        if (nullable != null) 'nullable': nullable!,
        if (precision != null) 'precision': precision!,
        if (scale != null) 'scale': scale!,
        if (setValues != null) 'setValues': setValues!,
        if (udt != null) 'udt': udt!,
      };
}

/// Options to configure rule type SingleEntityRename.
///
/// The rule is used to rename an entity. The rule filter field can refer to
/// only one entity. The rule scope can be one of: Database, Schema, Table,
/// Column, Constraint, Index, View, Function, Stored Procedure, Materialized
/// View, Sequence, UDT, Synonym
class SingleEntityRename {
  /// The new name of the destination entity
  ///
  /// Required.
  core.String? newName;

  SingleEntityRename({
    this.newName,
  });

  SingleEntityRename.fromJson(core.Map json_)
      : this(
          newName: json_.containsKey('newName')
              ? json_['newName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (newName != null) 'newName': newName!,
      };
}

/// Options to configure rule type SinglePackageChange.
///
/// The rule is used to alter the sql code for a package entities. The rule
/// filter field can refer to one entity. The rule scope can be: Package
class SinglePackageChange {
  /// Sql code for package body
  ///
  /// Optional.
  core.String? packageBody;

  /// Sql code for package description
  ///
  /// Optional.
  core.String? packageDescription;

  SinglePackageChange({
    this.packageBody,
    this.packageDescription,
  });

  SinglePackageChange.fromJson(core.Map json_)
      : this(
          packageBody: json_.containsKey('packageBody')
              ? json_['packageBody'] as core.String
              : null,
          packageDescription: json_.containsKey('packageDescription')
              ? json_['packageDescription'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (packageBody != null) 'packageBody': packageBody!,
        if (packageDescription != null)
          'packageDescription': packageDescription!,
      };
}

/// Filter for fixed point number data types such as NUMERIC/NUMBER
class SourceNumericFilter {
  /// Enum to set the option defining the datatypes numeric filter has to be
  /// applied to
  ///
  /// Required.
  /// Possible string values are:
  /// - "NUMERIC_FILTER_OPTION_UNSPECIFIED" : Numeric filter option unspecified
  /// - "NUMERIC_FILTER_OPTION_ALL" : Numeric filter option that matches all
  /// numeric columns.
  /// - "NUMERIC_FILTER_OPTION_LIMIT" : Numeric filter option that matches
  /// columns having numeric datatypes with specified precision and scale within
  /// the limited range of filter.
  /// - "NUMERIC_FILTER_OPTION_LIMITLESS" : Numeric filter option that matches
  /// only the numeric columns with no precision and scale specified.
  core.String? numericFilterOption;

  /// The filter will match columns with precision smaller than or equal to this
  /// number.
  ///
  /// Optional.
  core.int? sourceMaxPrecisionFilter;

  /// The filter will match columns with scale smaller than or equal to this
  /// number.
  ///
  /// Optional.
  core.int? sourceMaxScaleFilter;

  /// The filter will match columns with precision greater than or equal to this
  /// number.
  ///
  /// Optional.
  core.int? sourceMinPrecisionFilter;

  /// The filter will match columns with scale greater than or equal to this
  /// number.
  ///
  /// Optional.
  core.int? sourceMinScaleFilter;

  SourceNumericFilter({
    this.numericFilterOption,
    this.sourceMaxPrecisionFilter,
    this.sourceMaxScaleFilter,
    this.sourceMinPrecisionFilter,
    this.sourceMinScaleFilter,
  });

  SourceNumericFilter.fromJson(core.Map json_)
      : this(
          numericFilterOption: json_.containsKey('numericFilterOption')
              ? json_['numericFilterOption'] as core.String
              : null,
          sourceMaxPrecisionFilter:
              json_.containsKey('sourceMaxPrecisionFilter')
                  ? json_['sourceMaxPrecisionFilter'] as core.int
                  : null,
          sourceMaxScaleFilter: json_.containsKey('sourceMaxScaleFilter')
              ? json_['sourceMaxScaleFilter'] as core.int
              : null,
          sourceMinPrecisionFilter:
              json_.containsKey('sourceMinPrecisionFilter')
                  ? json_['sourceMinPrecisionFilter'] as core.int
                  : null,
          sourceMinScaleFilter: json_.containsKey('sourceMinScaleFilter')
              ? json_['sourceMinScaleFilter'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (numericFilterOption != null)
          'numericFilterOption': numericFilterOption!,
        if (sourceMaxPrecisionFilter != null)
          'sourceMaxPrecisionFilter': sourceMaxPrecisionFilter!,
        if (sourceMaxScaleFilter != null)
          'sourceMaxScaleFilter': sourceMaxScaleFilter!,
        if (sourceMinPrecisionFilter != null)
          'sourceMinPrecisionFilter': sourceMinPrecisionFilter!,
        if (sourceMinScaleFilter != null)
          'sourceMinScaleFilter': sourceMinScaleFilter!,
      };
}

/// Options to configure rule type SourceSqlChange.
///
/// The rule is used to alter the sql code for database entities. The rule
/// filter field can refer to one entity. The rule scope can be:
/// StoredProcedure, Function, Trigger, View
class SourceSqlChange {
  /// Sql code for source (stored procedure, function, trigger or view)
  ///
  /// Required.
  core.String? sqlCode;

  SourceSqlChange({
    this.sqlCode,
  });

  SourceSqlChange.fromJson(core.Map json_)
      : this(
          sqlCode: json_.containsKey('sqlCode')
              ? json_['sqlCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sqlCode != null) 'sqlCode': sqlCode!,
      };
}

/// Filter for text-based data types like varchar.
class SourceTextFilter {
  /// The filter will match columns with length smaller than or equal to this
  /// number.
  ///
  /// Optional.
  core.String? sourceMaxLengthFilter;

  /// The filter will match columns with length greater than or equal to this
  /// number.
  ///
  /// Optional.
  core.String? sourceMinLengthFilter;

  SourceTextFilter({
    this.sourceMaxLengthFilter,
    this.sourceMinLengthFilter,
  });

  SourceTextFilter.fromJson(core.Map json_)
      : this(
          sourceMaxLengthFilter: json_.containsKey('sourceMaxLengthFilter')
              ? json_['sourceMaxLengthFilter'] as core.String
              : null,
          sourceMinLengthFilter: json_.containsKey('sourceMinLengthFilter')
              ? json_['sourceMinLengthFilter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (sourceMaxLengthFilter != null)
          'sourceMaxLengthFilter': sourceMaxLengthFilter!,
        if (sourceMinLengthFilter != null)
          'sourceMinLengthFilter': sourceMinLengthFilter!,
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
  /// The name of the allocated IP address range for the private IP Cloud SQL
  /// instance.
  ///
  /// This name refers to an already allocated IP range address. If set, the
  /// instance IP address will be created in the allocated range. Note that this
  /// IP address range can't be modified after the instance is created. If you
  /// change the VPC when configuring connectivity settings for the migration
  /// job, this field is not relevant.
  ///
  /// Optional.
  core.String? allocatedIpRange;

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
    this.allocatedIpRange,
    this.authorizedNetworks,
    this.enableIpv4,
    this.privateNetwork,
    this.requireSsl,
  });

  SqlIpConfig.fromJson(core.Map json_)
      : this(
          allocatedIpRange: json_.containsKey('allocatedIpRange')
              ? json_['allocatedIpRange'] as core.String
              : null,
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
        if (allocatedIpRange != null) 'allocatedIpRange': allocatedIpRange!,
        if (authorizedNetworks != null)
          'authorizedNetworks': authorizedNetworks!,
        if (enableIpv4 != null) 'enableIpv4': enableIpv4!,
        if (privateNetwork != null) 'privateNetwork': privateNetwork!,
        if (requireSsl != null) 'requireSsl': requireSsl!,
      };
}

/// Specifies the backup details in Cloud Storage for homogeneous migration to
/// Cloud SQL for SQL Server.
class SqlServerBackups {
  /// The Cloud Storage bucket that stores backups for all replicated databases.
  ///
  /// Required.
  core.String? gcsBucket;

  /// Cloud Storage path inside the bucket that stores backups.
  ///
  /// Optional.
  core.String? gcsPrefix;

  SqlServerBackups({
    this.gcsBucket,
    this.gcsPrefix,
  });

  SqlServerBackups.fromJson(core.Map json_)
      : this(
          gcsBucket: json_.containsKey('gcsBucket')
              ? json_['gcsBucket'] as core.String
              : null,
          gcsPrefix: json_.containsKey('gcsPrefix')
              ? json_['gcsPrefix'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (gcsBucket != null) 'gcsBucket': gcsBucket!,
        if (gcsPrefix != null) 'gcsPrefix': gcsPrefix!,
      };
}

/// Specifies connection parameters required specifically for SQL Server
/// databases.
class SqlServerConnectionProfile {
  /// The backup details in Cloud Storage for homogeneous migration to Cloud SQL
  /// for SQL Server.
  SqlServerBackups? backups;

  /// If the source is a Cloud SQL database, use this field to provide the Cloud
  /// SQL instance ID of the source.
  core.String? cloudSqlId;

  /// Forward SSH tunnel connectivity.
  ForwardSshTunnelConnectivity? forwardSshConnectivity;

  /// The IP or hostname of the source SQL Server database.
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

  /// Indicates whether a new password is included in the request.
  ///
  /// Output only.
  core.bool? passwordSet;

  /// The network port of the source SQL Server database.
  ///
  /// Required.
  core.int? port;

  /// Private connectivity.
  PrivateConnectivity? privateConnectivity;

  /// Private Service Connect connectivity.
  PrivateServiceConnectConnectivity? privateServiceConnectConnectivity;

  /// SSL configuration for the destination to connect to the source database.
  SslConfig? ssl;

  /// Static IP connectivity data (default, no additional details needed).
  StaticIpConnectivity? staticIpConnectivity;

  /// The username that Database Migration Service will use to connect to the
  /// database.
  ///
  /// The value is encrypted when stored in Database Migration Service.
  ///
  /// Required.
  core.String? username;

  SqlServerConnectionProfile({
    this.backups,
    this.cloudSqlId,
    this.forwardSshConnectivity,
    this.host,
    this.password,
    this.passwordSet,
    this.port,
    this.privateConnectivity,
    this.privateServiceConnectConnectivity,
    this.ssl,
    this.staticIpConnectivity,
    this.username,
  });

  SqlServerConnectionProfile.fromJson(core.Map json_)
      : this(
          backups: json_.containsKey('backups')
              ? SqlServerBackups.fromJson(
                  json_['backups'] as core.Map<core.String, core.dynamic>)
              : null,
          cloudSqlId: json_.containsKey('cloudSqlId')
              ? json_['cloudSqlId'] as core.String
              : null,
          forwardSshConnectivity: json_.containsKey('forwardSshConnectivity')
              ? ForwardSshTunnelConnectivity.fromJson(
                  json_['forwardSshConnectivity']
                      as core.Map<core.String, core.dynamic>)
              : null,
          host: json_.containsKey('host') ? json_['host'] as core.String : null,
          password: json_.containsKey('password')
              ? json_['password'] as core.String
              : null,
          passwordSet: json_.containsKey('passwordSet')
              ? json_['passwordSet'] as core.bool
              : null,
          port: json_.containsKey('port') ? json_['port'] as core.int : null,
          privateConnectivity: json_.containsKey('privateConnectivity')
              ? PrivateConnectivity.fromJson(json_['privateConnectivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          privateServiceConnectConnectivity:
              json_.containsKey('privateServiceConnectConnectivity')
                  ? PrivateServiceConnectConnectivity.fromJson(
                      json_['privateServiceConnectConnectivity']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          ssl: json_.containsKey('ssl')
              ? SslConfig.fromJson(
                  json_['ssl'] as core.Map<core.String, core.dynamic>)
              : null,
          staticIpConnectivity: json_.containsKey('staticIpConnectivity')
              ? StaticIpConnectivity.fromJson(json_['staticIpConnectivity']
                  as core.Map<core.String, core.dynamic>)
              : null,
          username: json_.containsKey('username')
              ? json_['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backups != null) 'backups': backups!,
        if (cloudSqlId != null) 'cloudSqlId': cloudSqlId!,
        if (forwardSshConnectivity != null)
          'forwardSshConnectivity': forwardSshConnectivity!,
        if (host != null) 'host': host!,
        if (password != null) 'password': password!,
        if (passwordSet != null) 'passwordSet': passwordSet!,
        if (port != null) 'port': port!,
        if (privateConnectivity != null)
          'privateConnectivity': privateConnectivity!,
        if (privateServiceConnectConnectivity != null)
          'privateServiceConnectConnectivity':
              privateServiceConnectConnectivity!,
        if (ssl != null) 'ssl': ssl!,
        if (staticIpConnectivity != null)
          'staticIpConnectivity': staticIpConnectivity!,
        if (username != null) 'username': username!,
      };
}

/// Specifies the backup details for a single database in Cloud Storage for
/// homogeneous migration to Cloud SQL for SQL Server.
class SqlServerDatabaseBackup {
  /// Name of a SQL Server database for which to define backup configuration.
  ///
  /// Required.
  core.String? database;

  /// Encryption settings for the database.
  ///
  /// Required if provided database backups are encrypted. Encryption settings
  /// include path to certificate, path to certificate private key, and key
  /// password.
  ///
  /// Optional.
  SqlServerEncryptionOptions? encryptionOptions;

  SqlServerDatabaseBackup({
    this.database,
    this.encryptionOptions,
  });

  SqlServerDatabaseBackup.fromJson(core.Map json_)
      : this(
          database: json_.containsKey('database')
              ? json_['database'] as core.String
              : null,
          encryptionOptions: json_.containsKey('encryptionOptions')
              ? SqlServerEncryptionOptions.fromJson(json_['encryptionOptions']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (database != null) 'database': database!,
        if (encryptionOptions != null) 'encryptionOptions': encryptionOptions!,
      };
}

/// Encryption settings for the SQL Server database.
class SqlServerEncryptionOptions {
  /// Path to certificate.
  ///
  /// Required.
  core.String? certPath;

  /// Input only.
  ///
  /// Private key password.
  ///
  /// Required.
  core.String? pvkPassword;

  /// Path to certificate private key.
  ///
  /// Required.
  core.String? pvkPath;

  SqlServerEncryptionOptions({
    this.certPath,
    this.pvkPassword,
    this.pvkPath,
  });

  SqlServerEncryptionOptions.fromJson(core.Map json_)
      : this(
          certPath: json_.containsKey('certPath')
              ? json_['certPath'] as core.String
              : null,
          pvkPassword: json_.containsKey('pvkPassword')
              ? json_['pvkPassword'] as core.String
              : null,
          pvkPath: json_.containsKey('pvkPath')
              ? json_['pvkPath'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (certPath != null) 'certPath': certPath!,
        if (pvkPassword != null) 'pvkPassword': pvkPassword!,
        if (pvkPath != null) 'pvkPath': pvkPath!,
      };
}

/// Configuration for homogeneous migration to Cloud SQL for SQL Server.
class SqlServerHomogeneousMigrationJobConfig {
  /// Pattern that describes the default backup naming strategy.
  ///
  /// The specified pattern should ensure lexicographical order of backups. The
  /// pattern must define one of the following capture group sets: Capture group
  /// set #1 yy/yyyy - year, 2 or 4 digits mm - month number, 1-12 dd - day of
  /// month, 1-31 hh - hour of day, 00-23 mi - minutes, 00-59 ss - seconds,
  /// 00-59 Example: For backup file TestDB_20230802_155400.trn, use pattern:
  /// (?.*)_backup_(?\d{4})(?\d{2})(?\d{2})_(?\d{2})(?\d{2})(?\d{2}).trn Capture
  /// group set #2 timestamp - unix timestamp Example: For backup file
  /// TestDB.1691448254.trn, use pattern: (?.*)\.(?\d*).trn or (?.*)\.(?\d*).trn
  ///
  /// Required.
  core.String? backupFilePattern;

  /// Backup details per database in Cloud Storage.
  ///
  /// Required.
  core.List<SqlServerDatabaseBackup>? databaseBackups;

  SqlServerHomogeneousMigrationJobConfig({
    this.backupFilePattern,
    this.databaseBackups,
  });

  SqlServerHomogeneousMigrationJobConfig.fromJson(core.Map json_)
      : this(
          backupFilePattern: json_.containsKey('backupFilePattern')
              ? json_['backupFilePattern'] as core.String
              : null,
          databaseBackups: json_.containsKey('databaseBackups')
              ? (json_['databaseBackups'] as core.List)
                  .map((value) => SqlServerDatabaseBackup.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backupFilePattern != null) 'backupFilePattern': backupFilePattern!,
        if (databaseBackups != null) 'databaseBackups': databaseBackups!,
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
class StartMigrationJobRequest {
  /// Start the migration job without running prior configuration verification.
  ///
  /// Defaults to `false`.
  ///
  /// Optional.
  core.bool? skipValidation;

  StartMigrationJobRequest({
    this.skipValidation,
  });

  StartMigrationJobRequest.fromJson(core.Map json_)
      : this(
          skipValidation: json_.containsKey('skipValidation')
              ? json_['skipValidation'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (skipValidation != null) 'skipValidation': skipValidation!,
      };
}

/// The source database will allow incoming connections from the public IP of
/// the destination database.
///
/// You can retrieve the public IP of the Cloud SQL instance from the Cloud SQL
/// console or using Cloud SQL APIs. No additional configuration is required.
typedef StaticIpConnectivity = $Empty;

/// Static IP address connectivity configured on service project.
typedef StaticServiceIpConnectivity = $Empty;

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

/// Stored procedure's parent is a schema.
class StoredProcedureEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The SQL code which creates the stored procedure.
  core.String? sqlCode;

  StoredProcedureEntity({
    this.customFeatures,
    this.sqlCode,
  });

  StoredProcedureEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          sqlCode: json_.containsKey('sqlCode')
              ? json_['sqlCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (sqlCode != null) 'sqlCode': sqlCode!,
      };
}

/// Synonym's parent is a schema.
class SynonymEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The name of the entity for which the synonym is being created (the
  /// source).
  core.String? sourceEntity;

  /// The type of the entity for which the synonym is being created (usually a
  /// table or a sequence).
  /// Possible string values are:
  /// - "DATABASE_ENTITY_TYPE_UNSPECIFIED" : Unspecified database entity type.
  /// - "DATABASE_ENTITY_TYPE_SCHEMA" : Schema.
  /// - "DATABASE_ENTITY_TYPE_TABLE" : Table.
  /// - "DATABASE_ENTITY_TYPE_COLUMN" : Column.
  /// - "DATABASE_ENTITY_TYPE_CONSTRAINT" : Constraint.
  /// - "DATABASE_ENTITY_TYPE_INDEX" : Index.
  /// - "DATABASE_ENTITY_TYPE_TRIGGER" : Trigger.
  /// - "DATABASE_ENTITY_TYPE_VIEW" : View.
  /// - "DATABASE_ENTITY_TYPE_SEQUENCE" : Sequence.
  /// - "DATABASE_ENTITY_TYPE_STORED_PROCEDURE" : Stored Procedure.
  /// - "DATABASE_ENTITY_TYPE_FUNCTION" : Function.
  /// - "DATABASE_ENTITY_TYPE_SYNONYM" : Synonym.
  /// - "DATABASE_ENTITY_TYPE_DATABASE_PACKAGE" : Package.
  /// - "DATABASE_ENTITY_TYPE_UDT" : UDT.
  /// - "DATABASE_ENTITY_TYPE_MATERIALIZED_VIEW" : Materialized View.
  /// - "DATABASE_ENTITY_TYPE_DATABASE" : Database.
  core.String? sourceType;

  SynonymEntity({
    this.customFeatures,
    this.sourceEntity,
    this.sourceType,
  });

  SynonymEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          sourceEntity: json_.containsKey('sourceEntity')
              ? json_['sourceEntity'] as core.String
              : null,
          sourceType: json_.containsKey('sourceType')
              ? json_['sourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (sourceEntity != null) 'sourceEntity': sourceEntity!,
        if (sourceType != null) 'sourceType': sourceType!,
      };
}

/// Table's parent is a schema.
class TableEntity {
  /// Table columns.
  core.List<ColumnEntity>? columns;

  /// Comment associated with the table.
  core.String? comment;

  /// Table constraints.
  core.List<ConstraintEntity>? constraints;

  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// Table indices.
  core.List<IndexEntity>? indices;

  /// Table triggers.
  core.List<TriggerEntity>? triggers;

  TableEntity({
    this.columns,
    this.comment,
    this.constraints,
    this.customFeatures,
    this.indices,
    this.triggers,
  });

  TableEntity.fromJson(core.Map json_)
      : this(
          columns: json_.containsKey('columns')
              ? (json_['columns'] as core.List)
                  .map((value) => ColumnEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          comment: json_.containsKey('comment')
              ? json_['comment'] as core.String
              : null,
          constraints: json_.containsKey('constraints')
              ? (json_['constraints'] as core.List)
                  .map((value) => ConstraintEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          indices: json_.containsKey('indices')
              ? (json_['indices'] as core.List)
                  .map((value) => IndexEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          triggers: json_.containsKey('triggers')
              ? (json_['triggers'] as core.List)
                  .map((value) => TriggerEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (columns != null) 'columns': columns!,
        if (comment != null) 'comment': comment!,
        if (constraints != null) 'constraints': constraints!,
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (indices != null) 'indices': indices!,
        if (triggers != null) 'triggers': triggers!,
      };
}

/// Response message for 'GenerateTcpProxyScript' request.
class TcpProxyScript {
  /// The TCP Proxy configuration script.
  core.String? script;

  TcpProxyScript({
    this.script,
  });

  TcpProxyScript.fromJson(core.Map json_)
      : this(
          script: json_.containsKey('script')
              ? json_['script'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (script != null) 'script': script!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Trigger is not used as an independent entity, it is retrieved as part of a
/// Table entity.
class TriggerEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The name of the trigger.
  core.String? name;

  /// The SQL code which creates the trigger.
  core.String? sqlCode;

  /// Indicates when the trigger fires, for example BEFORE STATEMENT, AFTER EACH
  /// ROW.
  core.String? triggerType;

  /// The DML, DDL, or database events that fire the trigger, for example
  /// INSERT, UPDATE.
  core.List<core.String>? triggeringEvents;

  TriggerEntity({
    this.customFeatures,
    this.name,
    this.sqlCode,
    this.triggerType,
    this.triggeringEvents,
  });

  TriggerEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sqlCode: json_.containsKey('sqlCode')
              ? json_['sqlCode'] as core.String
              : null,
          triggerType: json_.containsKey('triggerType')
              ? json_['triggerType'] as core.String
              : null,
          triggeringEvents: json_.containsKey('triggeringEvents')
              ? (json_['triggeringEvents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (name != null) 'name': name!,
        if (sqlCode != null) 'sqlCode': sqlCode!,
        if (triggerType != null) 'triggerType': triggerType!,
        if (triggeringEvents != null) 'triggeringEvents': triggeringEvents!,
      };
}

/// UDT's parent is a schema.
class UDTEntity {
  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The SQL code which creates the udt body.
  core.String? udtBody;

  /// The SQL code which creates the udt.
  core.String? udtSqlCode;

  UDTEntity({
    this.customFeatures,
    this.udtBody,
    this.udtSqlCode,
  });

  UDTEntity.fromJson(core.Map json_)
      : this(
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          udtBody: json_.containsKey('udtBody')
              ? json_['udtBody'] as core.String
              : null,
          udtSqlCode: json_.containsKey('udtSqlCode')
              ? json_['udtSqlCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (udtBody != null) 'udtBody': udtBody!,
        if (udtSqlCode != null) 'udtSqlCode': udtSqlCode!,
      };
}

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

/// A list of values to filter by in ConditionalColumnSetValue
class ValueListFilter {
  /// Whether to ignore case when filtering by values.
  ///
  /// Defaults to false
  ///
  /// Required.
  core.bool? ignoreCase;

  /// Indicates whether the filter matches rows with values that are present in
  /// the list or those with values not present in it.
  ///
  /// Required.
  /// Possible string values are:
  /// - "VALUE_PRESENT_IN_LIST_UNSPECIFIED" : Value present in list unspecified
  /// - "VALUE_PRESENT_IN_LIST_IF_VALUE_LIST" : If the source value is in the
  /// supplied list at value_list
  /// - "VALUE_PRESENT_IN_LIST_IF_VALUE_NOT_LIST" : If the source value is not
  /// in the supplied list at value_list
  core.String? valuePresentList;

  /// The list to be used to filter by
  ///
  /// Required.
  core.List<core.String>? values;

  ValueListFilter({
    this.ignoreCase,
    this.valuePresentList,
    this.values,
  });

  ValueListFilter.fromJson(core.Map json_)
      : this(
          ignoreCase: json_.containsKey('ignoreCase')
              ? json_['ignoreCase'] as core.bool
              : null,
          valuePresentList: json_.containsKey('valuePresentList')
              ? json_['valuePresentList'] as core.String
              : null,
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ignoreCase != null) 'ignoreCase': ignoreCase!,
        if (valuePresentList != null) 'valuePresentList': valuePresentList!,
        if (values != null) 'values': values!,
      };
}

/// Description of data transformation during migration as part of the
/// ConditionalColumnSetValue.
class ValueTransformation {
  /// Applies a hash function on the data
  ///
  /// Optional.
  ApplyHash? applyHash;

  /// Set to max_value - if integer or numeric, will use int.maxvalue, etc
  ///
  /// Optional.
  Empty? assignMaxValue;

  /// Set to min_value - if integer or numeric, will use int.minvalue, etc
  ///
  /// Optional.
  Empty? assignMinValue;

  /// Set to null
  ///
  /// Optional.
  Empty? assignNull;

  /// Set to a specific value (value is converted to fit the target data type)
  ///
  /// Optional.
  AssignSpecificValue? assignSpecificValue;

  /// Filter on relation between source value and compare value of type double.
  ///
  /// Optional.
  DoubleComparisonFilter? doubleComparison;

  /// Filter on relation between source value and compare value of type integer.
  ///
  /// Optional.
  IntComparisonFilter? intComparison;

  /// Value is null
  ///
  /// Optional.
  Empty? isNull;

  /// Allows the data to change scale
  ///
  /// Optional.
  RoundToScale? roundScale;

  /// Value is found in the specified list.
  ///
  /// Optional.
  ValueListFilter? valueList;

  ValueTransformation({
    this.applyHash,
    this.assignMaxValue,
    this.assignMinValue,
    this.assignNull,
    this.assignSpecificValue,
    this.doubleComparison,
    this.intComparison,
    this.isNull,
    this.roundScale,
    this.valueList,
  });

  ValueTransformation.fromJson(core.Map json_)
      : this(
          applyHash: json_.containsKey('applyHash')
              ? ApplyHash.fromJson(
                  json_['applyHash'] as core.Map<core.String, core.dynamic>)
              : null,
          assignMaxValue: json_.containsKey('assignMaxValue')
              ? Empty.fromJson(json_['assignMaxValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          assignMinValue: json_.containsKey('assignMinValue')
              ? Empty.fromJson(json_['assignMinValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          assignNull: json_.containsKey('assignNull')
              ? Empty.fromJson(
                  json_['assignNull'] as core.Map<core.String, core.dynamic>)
              : null,
          assignSpecificValue: json_.containsKey('assignSpecificValue')
              ? AssignSpecificValue.fromJson(json_['assignSpecificValue']
                  as core.Map<core.String, core.dynamic>)
              : null,
          doubleComparison: json_.containsKey('doubleComparison')
              ? DoubleComparisonFilter.fromJson(json_['doubleComparison']
                  as core.Map<core.String, core.dynamic>)
              : null,
          intComparison: json_.containsKey('intComparison')
              ? IntComparisonFilter.fromJson(
                  json_['intComparison'] as core.Map<core.String, core.dynamic>)
              : null,
          isNull: json_.containsKey('isNull')
              ? Empty.fromJson(
                  json_['isNull'] as core.Map<core.String, core.dynamic>)
              : null,
          roundScale: json_.containsKey('roundScale')
              ? RoundToScale.fromJson(
                  json_['roundScale'] as core.Map<core.String, core.dynamic>)
              : null,
          valueList: json_.containsKey('valueList')
              ? ValueListFilter.fromJson(
                  json_['valueList'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (applyHash != null) 'applyHash': applyHash!,
        if (assignMaxValue != null) 'assignMaxValue': assignMaxValue!,
        if (assignMinValue != null) 'assignMinValue': assignMinValue!,
        if (assignNull != null) 'assignNull': assignNull!,
        if (assignSpecificValue != null)
          'assignSpecificValue': assignSpecificValue!,
        if (doubleComparison != null) 'doubleComparison': doubleComparison!,
        if (intComparison != null) 'intComparison': intComparison!,
        if (isNull != null) 'isNull': isNull!,
        if (roundScale != null) 'roundScale': roundScale!,
        if (valueList != null) 'valueList': valueList!,
      };
}

/// Request message for 'VerifyMigrationJob' request.
class VerifyMigrationJobRequest {
  /// The changed migration job parameters to verify.
  ///
  /// It will not update the migration job.
  ///
  /// Optional.
  MigrationJob? migrationJob;

  /// Field mask is used to specify the changed fields to be verified.
  ///
  /// It will not update the migration job.
  ///
  /// Optional.
  core.String? updateMask;

  VerifyMigrationJobRequest({
    this.migrationJob,
    this.updateMask,
  });

  VerifyMigrationJobRequest.fromJson(core.Map json_)
      : this(
          migrationJob: json_.containsKey('migrationJob')
              ? MigrationJob.fromJson(
                  json_['migrationJob'] as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (migrationJob != null) 'migrationJob': migrationJob!,
        if (updateMask != null) 'updateMask': updateMask!,
      };
}

/// View's parent is a schema.
class ViewEntity {
  /// View constraints.
  core.List<ConstraintEntity>? constraints;

  /// Custom engine specific features.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? customFeatures;

  /// The SQL code which creates the view.
  core.String? sqlCode;

  ViewEntity({
    this.constraints,
    this.customFeatures,
    this.sqlCode,
  });

  ViewEntity.fromJson(core.Map json_)
      : this(
          constraints: json_.containsKey('constraints')
              ? (json_['constraints'] as core.List)
                  .map((value) => ConstraintEntity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          customFeatures: json_.containsKey('customFeatures')
              ? json_['customFeatures'] as core.Map<core.String, core.dynamic>
              : null,
          sqlCode: json_.containsKey('sqlCode')
              ? json_['sqlCode'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (constraints != null) 'constraints': constraints!,
        if (customFeatures != null) 'customFeatures': customFeatures!,
        if (sqlCode != null) 'sqlCode': sqlCode!,
      };
}

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

/// The VPC peering configuration is used to create VPC peering with the
/// consumer's VPC.
class VpcPeeringConfig {
  /// A free subnet for peering.
  ///
  /// (CIDR of /29)
  ///
  /// Required.
  core.String? subnet;

  /// Fully qualified name of the VPC that Database Migration Service will peer
  /// to.
  ///
  /// Required.
  core.String? vpcName;

  VpcPeeringConfig({
    this.subnet,
    this.vpcName,
  });

  VpcPeeringConfig.fromJson(core.Map json_)
      : this(
          subnet: json_.containsKey('subnet')
              ? json_['subnet'] as core.String
              : null,
          vpcName: json_.containsKey('vpcName')
              ? json_['vpcName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (subnet != null) 'subnet': subnet!,
        if (vpcName != null) 'vpcName': vpcName!,
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
