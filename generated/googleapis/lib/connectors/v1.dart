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

/// Connectors API - v1
///
/// Enables users to create and manage connections to Google Cloud services and
/// third-party business applications using the Connectors interface.
///
/// For more information, see
/// <https://cloud.google.com/apigee/docs/api-platform/connectors/about-connectors>
///
/// Create an instance of [ConnectorsApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsConnectionsResource]
///       - [ProjectsLocationsConnectionsRuntimeActionSchemasResource]
///       - [ProjectsLocationsConnectionsRuntimeEntitySchemasResource]
///     - [ProjectsLocationsGlobalResource]
///       - [ProjectsLocationsGlobalProvidersResource]
///         - [ProjectsLocationsGlobalProvidersConnectorsResource]
///           - [ProjectsLocationsGlobalProvidersConnectorsVersionsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsProvidersResource]
library connectors.v1;

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

/// Enables users to create and manage connections to Google Cloud services and
/// third-party business applications using the Connectors interface.
class ConnectorsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ConnectorsApi(http.Client client,
      {core.String rootUrl = 'https://connectors.googleapis.com/',
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

  ProjectsLocationsConnectionsResource get connections =>
      ProjectsLocationsConnectionsResource(_requester);
  ProjectsLocationsGlobalResource get global =>
      ProjectsLocationsGlobalResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsProvidersResource get providers =>
      ProjectsLocationsProvidersResource(_requester);

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

  /// Gets the runtimeConfig of a location.
  ///
  /// RuntimeConfig is a singleton resource for each location.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /runtimeConfig`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/runtimeConfig$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RuntimeConfig].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RuntimeConfig> getRuntimeConfig(
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
    return RuntimeConfig.fromJson(
        _response as core.Map<core.String, core.dynamic>);
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

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRuntimeActionSchemasResource
      get runtimeActionSchemas =>
          ProjectsLocationsConnectionsRuntimeActionSchemasResource(_requester);
  ProjectsLocationsConnectionsRuntimeEntitySchemasResource
      get runtimeEntitySchemas =>
          ProjectsLocationsConnectionsRuntimeEntitySchemasResource(_requester);

  ProjectsLocationsConnectionsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a new Connection in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the Connection, of the form:
  /// `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [connectionId] - Required. Identifier to assign to the Connection. Must be
  /// unique within scope of the parent resource.
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
    Connection request,
    core.String parent, {
    core.String? connectionId,
    core.String? $fields,
  }) async {
    final _body = convert.json.encode(request);
    final _queryParams = <core.String, core.List<core.String>>{
      if (connectionId != null) 'connectionId': [connectionId],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final _response = await _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /connections / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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
    final _queryParams = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'DELETE',
      queryParams: _queryParams,
    );
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /connections / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [view] - Specifies which fields of the Connection are returned in the
  /// response. Defaults to `BASIC` view.
  /// Possible string values are:
  /// - "CONNECTION_VIEW_UNSPECIFIED" : CONNECTION_UNSPECIFIED.
  /// - "BASIC" : Do not include runtime required configs.
  /// - "FULL" : Include runtime required configs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connection].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connection> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return Connection.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Gets schema metadata of a connection.
  ///
  /// SchemaMetadata is a singleton resource for each connection.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Connection name Format:
  /// projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/connectionSchemaMetadata$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectionSchemaMetadata].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectionSchemaMetadata> getConnectionSchemaMetadata(
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
    return ConnectionSchemaMetadata.fromJson(
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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

  /// Lists Connections in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the Connection, of the form:
  /// `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Filter.
  ///
  /// [orderBy] - Order by parameters.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [view] - Specifies which fields of the Connection are returned in the
  /// response. Defaults to `BASIC` view.
  /// Possible string values are:
  /// - "CONNECTION_VIEW_UNSPECIFIED" : CONNECTION_UNSPECIFIED.
  /// - "BASIC" : Do not include runtime required configs.
  /// - "FULL" : Include runtime required configs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectionsResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListConnectionsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Updates the parameters of a single Connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the Connection. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [updateMask] - Field mask is used to specify the fields to be overwritten
  /// in the Connection resource by the update. The fields specified in the
  /// update_mask are relative to the resource, not the full request. A field
  /// will be overwritten if it is in the mask. If the user does not provide a
  /// mask then all fields will be overwritten.
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
    Connection request,
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
    return Operation.fromJson(_response as core.Map<core.String, core.dynamic>);
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
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

class ProjectsLocationsConnectionsRuntimeActionSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRuntimeActionSchemasResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List schema of a runtime actions filtered by action name.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of RuntimeActionSchema Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - Required. Filter Format: action="{actionId}" Only action field
  /// is supported with literal equality operator. Accepted filter example:
  /// action="CancelOrder" Wildcards are not supported in the filter currently.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRuntimeActionSchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRuntimeActionSchemasResponse> list(
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

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/runtimeActionSchemas';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRuntimeActionSchemasResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionsRuntimeEntitySchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRuntimeEntitySchemasResource(
      commons.ApiRequester client)
      : _requester = client;

  /// List schema of a runtime entities filtered by entity name.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of RuntimeEntitySchema Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - Required. Filter Format: entity="{entityId}" Only entity field
  /// is supported with literal equality operator. Accepted filter example:
  /// entity="Order" Wildcards are not supported in the filter currently.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListRuntimeEntitySchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListRuntimeEntitySchemasResponse> list(
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

    final _url =
        'v1/' + core.Uri.encodeFull('$parent') + '/runtimeEntitySchemas';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListRuntimeEntitySchemasResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalProvidersResource get providers =>
      ProjectsLocationsGlobalProvidersResource(_requester);

  ProjectsLocationsGlobalResource(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsGlobalProvidersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalProvidersConnectorsResource get connectors =>
      ProjectsLocationsGlobalProvidersConnectorsResource(_requester);

  ProjectsLocationsGlobalProvidersResource(commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single Provider.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /providers / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/providers/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Provider].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Provider> get(
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
    return Provider.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Providers in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the API, of the form: `projects /
  /// * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListProvidersResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListProvidersResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/providers';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListProvidersResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalProvidersConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalProvidersConnectorsVersionsResource get versions =>
      ProjectsLocationsGlobalProvidersConnectorsVersionsResource(_requester);

  ProjectsLocationsGlobalProvidersConnectorsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single Connector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /providers / * /connectors / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/providers/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Connector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Connector> get(
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
    return Connector.fromJson(_response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Connectors in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the connectors, of the form:
  /// `projects / * /locations / * /providers / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/providers/\[^/\]+$`.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectorsResponse> list(
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

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/connectors';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListConnectorsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsGlobalProvidersConnectorsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalProvidersConnectorsVersionsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Gets details of a single connector version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /providers / * /connectors / * /versions / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/providers/\[^/\]+/connectors/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [view] - Specifies which fields of the ConnectorVersion are returned in
  /// the response. Defaults to `CUSTOMER` view.
  /// Possible string values are:
  /// - "CONNECTOR_VERSION_VIEW_UNSPECIFIED" :
  /// CONNECTOR_VERSION_VIEW_UNSPECIFIED.
  /// - "CONNECTOR_VERSION_VIEW_BASIC" : Do not include role grant configs.
  /// - "CONNECTOR_VERSION_VIEW_FULL" : Include role grant configs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ConnectorVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ConnectorVersion> get(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$name');

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ConnectorVersion.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }

  /// Lists Connector Versions in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the connectors, of the form:
  /// `projects / * /locations / * /providers / * /connectors / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/providers/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [view] - Specifies which fields of the ConnectorVersion are returned in
  /// the response. Defaults to `CUSTOMER` view.
  /// Possible string values are:
  /// - "CONNECTOR_VERSION_VIEW_UNSPECIFIED" :
  /// CONNECTOR_VERSION_VIEW_UNSPECIFIED.
  /// - "CONNECTOR_VERSION_VIEW_BASIC" : Do not include role grant configs.
  /// - "CONNECTOR_VERSION_VIEW_FULL" : Include role grant configs.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListConnectorVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListConnectorVersionsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final _queryParams = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final _url = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final _response = await _requester.request(
      _url,
      'GET',
      queryParams: _queryParams,
    );
    return ListConnectorVersionsResponse.fromJson(
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
    return ListOperationsResponse.fromJson(
        _response as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsProvidersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProvidersResource(commons.ApiRequester client)
      : _requester = client;

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
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+$`.
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
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+$`.
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

/// AuthConfig defines details of a authentication type.
class AuthConfig {
  /// List containing additional auth configs.
  core.List<ConfigVariable>? additionalVariables;

  /// The type of authentication configured.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "USER_PASSWORD" : Username and Password Authentication.
  /// - "OAUTH2_JWT_BEARER" : JSON Web Token (JWT) Profile for Oauth 2.0
  /// Authorization Grant based authentication
  /// - "OAUTH2_CLIENT_CREDENTIALS" : Oauth 2.0 Client Credentials Grant
  /// Authentication
  core.String? authType;

  /// Oauth2ClientCredentials.
  Oauth2ClientCredentials? oauth2ClientCredentials;

  /// Oauth2JwtBearer.
  Oauth2JwtBearer? oauth2JwtBearer;

  /// UserPassword.
  UserPassword? userPassword;

  AuthConfig({
    this.additionalVariables,
    this.authType,
    this.oauth2ClientCredentials,
    this.oauth2JwtBearer,
    this.userPassword,
  });

  AuthConfig.fromJson(core.Map _json)
      : this(
          additionalVariables: _json.containsKey('additionalVariables')
              ? (_json['additionalVariables'] as core.List)
                  .map((value) => ConfigVariable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          authType: _json.containsKey('authType')
              ? _json['authType'] as core.String
              : null,
          oauth2ClientCredentials: _json.containsKey('oauth2ClientCredentials')
              ? Oauth2ClientCredentials.fromJson(
                  _json['oauth2ClientCredentials']
                      as core.Map<core.String, core.dynamic>)
              : null,
          oauth2JwtBearer: _json.containsKey('oauth2JwtBearer')
              ? Oauth2JwtBearer.fromJson(_json['oauth2JwtBearer']
                  as core.Map<core.String, core.dynamic>)
              : null,
          userPassword: _json.containsKey('userPassword')
              ? UserPassword.fromJson(
                  _json['userPassword'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalVariables != null)
          'additionalVariables': additionalVariables!,
        if (authType != null) 'authType': authType!,
        if (oauth2ClientCredentials != null)
          'oauth2ClientCredentials': oauth2ClientCredentials!,
        if (oauth2JwtBearer != null) 'oauth2JwtBearer': oauth2JwtBearer!,
        if (userPassword != null) 'userPassword': userPassword!,
      };
}

/// AuthConfigTemplate defines required field over an authentication type.
class AuthConfigTemplate {
  /// The type of authentication configured.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "USER_PASSWORD" : Username and Password Authentication.
  /// - "OAUTH2_JWT_BEARER" : JSON Web Token (JWT) Profile for Oauth 2.0
  /// Authorization Grant based authentication
  /// - "OAUTH2_CLIENT_CREDENTIALS" : Oauth 2.0 Client Credentials Grant
  /// Authentication
  core.String? authType;

  /// Config variables to describe an `AuthConfig` for a `Connection`.
  core.List<ConfigVariableTemplate>? configVariableTemplates;

  AuthConfigTemplate({
    this.authType,
    this.configVariableTemplates,
  });

  AuthConfigTemplate.fromJson(core.Map _json)
      : this(
          authType: _json.containsKey('authType')
              ? _json['authType'] as core.String
              : null,
          configVariableTemplates: _json.containsKey('configVariableTemplates')
              ? (_json['configVariableTemplates'] as core.List)
                  .map((value) => ConfigVariableTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authType != null) 'authType': authType!,
        if (configVariableTemplates != null)
          'configVariableTemplates': configVariableTemplates!,
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// ConfigVariable represents a configuration variable present in a Connection.
///
/// or AuthConfig.
class ConfigVariable {
  /// Value is a bool.
  core.bool? boolValue;

  /// Value is an integer
  core.String? intValue;

  /// Key of the config variable.
  core.String? key;

  /// Value is a secret.
  Secret? secretValue;

  /// Value is a string.
  core.String? stringValue;

  ConfigVariable({
    this.boolValue,
    this.intValue,
    this.key,
    this.secretValue,
    this.stringValue,
  });

  ConfigVariable.fromJson(core.Map _json)
      : this(
          boolValue: _json.containsKey('boolValue')
              ? _json['boolValue'] as core.bool
              : null,
          intValue: _json.containsKey('intValue')
              ? _json['intValue'] as core.String
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          secretValue: _json.containsKey('secretValue')
              ? Secret.fromJson(
                  _json['secretValue'] as core.Map<core.String, core.dynamic>)
              : null,
          stringValue: _json.containsKey('stringValue')
              ? _json['stringValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boolValue != null) 'boolValue': boolValue!,
        if (intValue != null) 'intValue': intValue!,
        if (key != null) 'key': key!,
        if (secretValue != null) 'secretValue': secretValue!,
        if (stringValue != null) 'stringValue': stringValue!,
      };
}

/// ConfigVariableTemplate provides metadata about a `ConfigVariable` that is
/// used in a Connection.
class ConfigVariableTemplate {
  /// Description.
  core.String? description;

  /// Display name of the parameter.
  core.String? displayName;

  /// Enum options.
  ///
  /// To be populated if `ValueType` is `ENUM`
  core.List<EnumOption>? enumOptions;

  /// Key of the config variable.
  core.String? key;

  /// Flag represents that this `ConfigVariable` must be provided for a
  /// connection.
  core.bool? required;

  /// Role grant configuration for the config variable.
  RoleGrant? roleGrant;

  /// Regular expression in RE2 syntax used for validating the `value` of a
  /// `ConfigVariable`.
  core.String? validationRegex;

  /// Type of the parameter: string, int, bool etc.
  ///
  /// consider custom type for the benefit for the validation.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Value type is not specified.
  /// - "STRING" : Value type is string.
  /// - "INT" : Value type is integer.
  /// - "BOOL" : Value type is boolean.
  /// - "SECRET" : Value type is secret.
  /// - "ENUM" : Value type is enum.
  core.String? valueType;

  ConfigVariableTemplate({
    this.description,
    this.displayName,
    this.enumOptions,
    this.key,
    this.required,
    this.roleGrant,
    this.validationRegex,
    this.valueType,
  });

  ConfigVariableTemplate.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          enumOptions: _json.containsKey('enumOptions')
              ? (_json['enumOptions'] as core.List)
                  .map((value) => EnumOption.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          key: _json.containsKey('key') ? _json['key'] as core.String : null,
          required: _json.containsKey('required')
              ? _json['required'] as core.bool
              : null,
          roleGrant: _json.containsKey('roleGrant')
              ? RoleGrant.fromJson(
                  _json['roleGrant'] as core.Map<core.String, core.dynamic>)
              : null,
          validationRegex: _json.containsKey('validationRegex')
              ? _json['validationRegex'] as core.String
              : null,
          valueType: _json.containsKey('valueType')
              ? _json['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (enumOptions != null) 'enumOptions': enumOptions!,
        if (key != null) 'key': key!,
        if (required != null) 'required': required!,
        if (roleGrant != null) 'roleGrant': roleGrant!,
        if (validationRegex != null) 'validationRegex': validationRegex!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Connection represents an instance of connector.
class Connection {
  /// Configuration for establishing the connection's authentication with an
  /// external system.
  ///
  /// Optional.
  AuthConfig? authConfig;

  /// Configuration for configuring the connection with an external system.
  ///
  /// Optional.
  core.List<ConfigVariable>? configVariables;

  /// Connector version on which the connection is created.
  ///
  /// The format is: projects / * /locations/global/providers / * /connectors /
  /// * /versions / *
  ///
  /// Required.
  core.String? connectorVersion;

  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Outbound domains/hosts needs to be allowlisted.
  ///
  /// Output only.
  core.List<core.String>? egressBackends;

  /// GCR location where the envoy image is stored.
  ///
  /// formatted like: gcr.io/{bucketName}/{imageName}
  ///
  /// Output only.
  core.String? envoyImageLocation;

  /// GCR location where the runtime image is stored.
  ///
  /// formatted like: gcr.io/{bucketName}/{imageName}
  ///
  /// Output only.
  core.String? imageLocation;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Configuration that indicates whether or not the Connection can be edited.
  ///
  /// Optional.
  LockConfig? lockConfig;

  /// Resource name of the Connection.
  ///
  /// Format: projects/{project}/locations/{location}/connections/{connection}
  ///
  /// Output only.
  core.String? name;

  /// Service account needed for runtime plane to access GCP resources.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// The name of the Service Directory service name.
  ///
  /// Used for Private Harpoon to resolve the ILB address. e.g.
  /// "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  ///
  /// Output only.
  core.String? serviceDirectory;

  /// Current status of the connection.
  ///
  /// Output only.
  ConnectionStatus? status;

  /// Suspended indicates if a user has suspended a connection or not.
  ///
  /// Optional.
  core.bool? suspended;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  Connection({
    this.authConfig,
    this.configVariables,
    this.connectorVersion,
    this.createTime,
    this.description,
    this.egressBackends,
    this.envoyImageLocation,
    this.imageLocation,
    this.labels,
    this.lockConfig,
    this.name,
    this.serviceAccount,
    this.serviceDirectory,
    this.status,
    this.suspended,
    this.updateTime,
  });

  Connection.fromJson(core.Map _json)
      : this(
          authConfig: _json.containsKey('authConfig')
              ? AuthConfig.fromJson(
                  _json['authConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          configVariables: _json.containsKey('configVariables')
              ? (_json['configVariables'] as core.List)
                  .map((value) => ConfigVariable.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          connectorVersion: _json.containsKey('connectorVersion')
              ? _json['connectorVersion'] as core.String
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          egressBackends: _json.containsKey('egressBackends')
              ? (_json['egressBackends'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          envoyImageLocation: _json.containsKey('envoyImageLocation')
              ? _json['envoyImageLocation'] as core.String
              : null,
          imageLocation: _json.containsKey('imageLocation')
              ? _json['imageLocation'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          lockConfig: _json.containsKey('lockConfig')
              ? LockConfig.fromJson(
                  _json['lockConfig'] as core.Map<core.String, core.dynamic>)
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          serviceAccount: _json.containsKey('serviceAccount')
              ? _json['serviceAccount'] as core.String
              : null,
          serviceDirectory: _json.containsKey('serviceDirectory')
              ? _json['serviceDirectory'] as core.String
              : null,
          status: _json.containsKey('status')
              ? ConnectionStatus.fromJson(
                  _json['status'] as core.Map<core.String, core.dynamic>)
              : null,
          suspended: _json.containsKey('suspended')
              ? _json['suspended'] as core.bool
              : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authConfig != null) 'authConfig': authConfig!,
        if (configVariables != null) 'configVariables': configVariables!,
        if (connectorVersion != null) 'connectorVersion': connectorVersion!,
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (egressBackends != null) 'egressBackends': egressBackends!,
        if (envoyImageLocation != null)
          'envoyImageLocation': envoyImageLocation!,
        if (imageLocation != null) 'imageLocation': imageLocation!,
        if (labels != null) 'labels': labels!,
        if (lockConfig != null) 'lockConfig': lockConfig!,
        if (name != null) 'name': name!,
        if (serviceAccount != null) 'serviceAccount': serviceAccount!,
        if (serviceDirectory != null) 'serviceDirectory': serviceDirectory!,
        if (status != null) 'status': status!,
        if (suspended != null) 'suspended': suspended!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Metadata of connection schema.
class ConnectionSchemaMetadata {
  /// List of actions.
  ///
  /// Output only.
  core.List<core.String>? actions;

  /// List of entity names.
  ///
  /// Output only.
  core.List<core.String>? entities;

  ConnectionSchemaMetadata({
    this.actions,
    this.entities,
  });

  ConnectionSchemaMetadata.fromJson(core.Map _json)
      : this(
          actions: _json.containsKey('actions')
              ? (_json['actions'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          entities: _json.containsKey('entities')
              ? (_json['entities'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (entities != null) 'entities': entities!,
      };
}

/// ConnectionStatus indicates the state of the connection.
class ConnectionStatus {
  /// Description.
  core.String? description;

  /// State.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Connection does not have a state yet.
  /// - "CREATING" : Connection is being created.
  /// - "ACTIVE" : Connection is running and ready for requests.
  /// - "INACTIVE" : Connection is stopped.
  /// - "DELETING" : Connection is being deleted.
  /// - "UPDATING" : Connection is being updated.
  /// - "ERROR" : Connection is not running due to an error.
  core.String? state;

  /// Status provides detailed information for the state.
  core.String? status;

  ConnectionStatus({
    this.description,
    this.state,
    this.status,
  });

  ConnectionStatus.fromJson(core.Map _json)
      : this(
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
          status: _json.containsKey('status')
              ? _json['status'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (state != null) 'state': state!,
        if (status != null) 'status': status!,
      };
}

/// Connectors indicates a specific connector type, e.x. Salesforce, SAP etc.
class Connector {
  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the resource.
  ///
  /// Output only.
  core.String? description;

  /// Display name.
  ///
  /// Output only.
  core.String? displayName;

  /// Link to documentation page.
  ///
  /// Output only.
  core.String? documentationUri;

  /// Link to external page.
  ///
  /// Output only.
  core.String? externalUri;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Output only.
  core.Map<core.String, core.String>? labels;

  /// Flag to mark the version indicating the launch stage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : LAUNCH_STAGE_UNSPECIFIED.
  /// - "PREVIEW" : PREVIEW.
  /// - "GA" : GA.
  /// - "DEPRECATED" : DEPRECATED.
  core.String? launchStage;

  /// Resource name of the Connector.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}
  ///
  /// Output only.
  core.String? name;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  /// Cloud storage location of icons etc consumed by UI.
  ///
  /// Output only.
  core.String? webAssetsLocation;

  Connector({
    this.createTime,
    this.description,
    this.displayName,
    this.documentationUri,
    this.externalUri,
    this.labels,
    this.launchStage,
    this.name,
    this.updateTime,
    this.webAssetsLocation,
  });

  Connector.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          documentationUri: _json.containsKey('documentationUri')
              ? _json['documentationUri'] as core.String
              : null,
          externalUri: _json.containsKey('externalUri')
              ? _json['externalUri'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          launchStage: _json.containsKey('launchStage')
              ? _json['launchStage'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          webAssetsLocation: _json.containsKey('webAssetsLocation')
              ? _json['webAssetsLocation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (documentationUri != null) 'documentationUri': documentationUri!,
        if (externalUri != null) 'externalUri': externalUri!,
        if (labels != null) 'labels': labels!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (webAssetsLocation != null) 'webAssetsLocation': webAssetsLocation!,
      };
}

/// ConnectorVersion indicates a specific version of a connector.
class ConnectorVersion {
  /// List of auth configs supported by the Connector Version.
  ///
  /// Output only.
  core.List<AuthConfigTemplate>? authConfigTemplates;

  /// List of config variables needed to create a connection.
  ///
  /// Output only.
  core.List<ConfigVariableTemplate>? configVariableTemplates;

  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Display name.
  ///
  /// Output only.
  core.String? displayName;

  /// Configuration for Egress Control.
  ///
  /// Output only.
  EgressControlConfig? egressControlConfig;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Output only.
  core.Map<core.String, core.String>? labels;

  /// Flag to mark the version indicating the launch stage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : LAUNCH_STAGE_UNSPECIFIED.
  /// - "PREVIEW" : PREVIEW.
  /// - "GA" : GA.
  /// - "DEPRECATED" : DEPRECATED.
  core.String? launchStage;

  /// Resource name of the Version.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}/versions/{version}
  ///
  /// Output only.
  core.String? name;

  /// ReleaseVersion of the connector, for example: "1.0.1-alpha".
  ///
  /// Output only.
  core.String? releaseVersion;

  /// Role grant configuration for this config variable.
  ///
  /// It will be DEPRECATED soon.
  ///
  /// Output only.
  RoleGrant? roleGrant;

  /// Role grant configurations for this connector version.
  ///
  /// Output only.
  core.List<RoleGrant>? roleGrants;

  /// Information about the runtime features supported by the Connector.
  ///
  /// Output only.
  SupportedRuntimeFeatures? supportedRuntimeFeatures;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  ConnectorVersion({
    this.authConfigTemplates,
    this.configVariableTemplates,
    this.createTime,
    this.displayName,
    this.egressControlConfig,
    this.labels,
    this.launchStage,
    this.name,
    this.releaseVersion,
    this.roleGrant,
    this.roleGrants,
    this.supportedRuntimeFeatures,
    this.updateTime,
  });

  ConnectorVersion.fromJson(core.Map _json)
      : this(
          authConfigTemplates: _json.containsKey('authConfigTemplates')
              ? (_json['authConfigTemplates'] as core.List)
                  .map((value) => AuthConfigTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          configVariableTemplates: _json.containsKey('configVariableTemplates')
              ? (_json['configVariableTemplates'] as core.List)
                  .map((value) => ConfigVariableTemplate.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          egressControlConfig: _json.containsKey('egressControlConfig')
              ? EgressControlConfig.fromJson(_json['egressControlConfig']
                  as core.Map<core.String, core.dynamic>)
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          launchStage: _json.containsKey('launchStage')
              ? _json['launchStage'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          releaseVersion: _json.containsKey('releaseVersion')
              ? _json['releaseVersion'] as core.String
              : null,
          roleGrant: _json.containsKey('roleGrant')
              ? RoleGrant.fromJson(
                  _json['roleGrant'] as core.Map<core.String, core.dynamic>)
              : null,
          roleGrants: _json.containsKey('roleGrants')
              ? (_json['roleGrants'] as core.List)
                  .map((value) => RoleGrant.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          supportedRuntimeFeatures:
              _json.containsKey('supportedRuntimeFeatures')
                  ? SupportedRuntimeFeatures.fromJson(
                      _json['supportedRuntimeFeatures']
                          as core.Map<core.String, core.dynamic>)
                  : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (authConfigTemplates != null)
          'authConfigTemplates': authConfigTemplates!,
        if (configVariableTemplates != null)
          'configVariableTemplates': configVariableTemplates!,
        if (createTime != null) 'createTime': createTime!,
        if (displayName != null) 'displayName': displayName!,
        if (egressControlConfig != null)
          'egressControlConfig': egressControlConfig!,
        if (labels != null) 'labels': labels!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (releaseVersion != null) 'releaseVersion': releaseVersion!,
        if (roleGrant != null) 'roleGrant': roleGrant!,
        if (roleGrants != null) 'roleGrants': roleGrants!,
        if (supportedRuntimeFeatures != null)
          'supportedRuntimeFeatures': supportedRuntimeFeatures!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Egress control config for connector runtime.
///
/// These configurations define the rules to identify which outbound
/// domains/hosts needs to be whitelisted. It may be a static information for a
/// particular connector version or it is derived from the configurations
/// provided by the customer in Connection resource.
class EgressControlConfig {
  /// Static Comma separated backends which are common for all Connection
  /// resources.
  ///
  /// Supported formats for each backend are host:port or just host (host can be
  /// ip address or domain name).
  core.String? backends;

  /// Extractions Rules to extract the backends from customer provided
  /// configuration.
  ExtractionRules? extractionRules;

  EgressControlConfig({
    this.backends,
    this.extractionRules,
  });

  EgressControlConfig.fromJson(core.Map _json)
      : this(
          backends: _json.containsKey('backends')
              ? _json['backends'] as core.String
              : null,
          extractionRules: _json.containsKey('extractionRules')
              ? ExtractionRules.fromJson(_json['extractionRules']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backends != null) 'backends': backends!,
        if (extractionRules != null) 'extractionRules': extractionRules!,
      };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// EnumOption definition
class EnumOption {
  /// Display name of the option.
  core.String? displayName;

  /// Id of the option.
  core.String? id;

  EnumOption({
    this.displayName,
    this.id,
  });

  EnumOption.fromJson(core.Map _json)
      : this(
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          id: _json.containsKey('id') ? _json['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (displayName != null) 'displayName': displayName!,
        if (id != null) 'id': id!,
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

/// Extraction Rule.
class ExtractionRule {
  /// Regex used to extract backend details from source.
  ///
  /// If empty, whole source value will be used.
  core.String? extractionRegex;

  /// Source on which the rule is applied.
  Source? source;

  ExtractionRule({
    this.extractionRegex,
    this.source,
  });

  ExtractionRule.fromJson(core.Map _json)
      : this(
          extractionRegex: _json.containsKey('extractionRegex')
              ? _json['extractionRegex'] as core.String
              : null,
          source: _json.containsKey('source')
              ? Source.fromJson(
                  _json['source'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extractionRegex != null) 'extractionRegex': extractionRegex!,
        if (source != null) 'source': source!,
      };
}

/// Extraction Rules to identity the backends from customer provided
/// configuration in Connection resource.
class ExtractionRules {
  /// Collection of Extraction Rule.
  core.List<ExtractionRule>? extractionRule;

  ExtractionRules({
    this.extractionRule,
  });

  ExtractionRules.fromJson(core.Map _json)
      : this(
          extractionRule: _json.containsKey('extractionRule')
              ? (_json['extractionRule'] as core.List)
                  .map((value) => ExtractionRule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extractionRule != null) 'extractionRule': extractionRule!,
      };
}

/// Metadata of an entity field.
class Field {
  /// The following map contains fields that are not explicitly mentioned
  /// above,this give connectors the flexibility to add new metadata fields.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? additionalDetails;

  /// The data type of the Field.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Data type is not specified.
  /// - "DATA_TYPE_INT" : DEPRECATED! Use DATA_TYPE_INTEGER.
  /// - "DATA_TYPE_SMALLINT" : Short integer(int16) data type.
  /// - "DATA_TYPE_DOUBLE" : Double data type.
  /// - "DATA_TYPE_DATE" : Date data type.
  /// - "DATA_TYPE_DATETIME" : DEPRECATED! Use DATA_TYPE_TIMESTAMP.
  /// - "DATA_TYPE_TIME" : Time data type.
  /// - "DATA_TYPE_STRING" : DEPRECATED! Use DATA_TYPE_VARCHAR.
  /// - "DATA_TYPE_LONG" : DEPRECATED! Use DATA_TYPE_BIGINT.
  /// - "DATA_TYPE_BOOLEAN" : Boolean data type.
  /// - "DATA_TYPE_DECIMAL" : Decimal data type.
  /// - "DATA_TYPE_UUID" : DEPRECATED! Use DATA_TYPE_VARCHAR.
  /// - "DATA_TYPE_BLOB" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_BIT" : Bit data type.
  /// - "DATA_TYPE_TINYINT" : Small integer(int8) data type.
  /// - "DATA_TYPE_INTEGER" : Integer(int32) data type.
  /// - "DATA_TYPE_BIGINT" : Long integer(int64) data type.
  /// - "DATA_TYPE_FLOAT" : Float data type.
  /// - "DATA_TYPE_REAL" : Real data type.
  /// - "DATA_TYPE_NUMERIC" : Numeric data type.
  /// - "DATA_TYPE_CHAR" : Char data type.
  /// - "DATA_TYPE_VARCHAR" : Varchar data type.
  /// - "DATA_TYPE_LONGVARCHAR" : Longvarchar data type.
  /// - "DATA_TYPE_TIMESTAMP" : Timestamp data type.
  /// - "DATA_TYPE_NCHAR" : Nchar data type.
  /// - "DATA_TYPE_NVARCHAR" : Nvarchar data type.
  /// - "DATA_TYPE_LONGNVARCHAR" : Longnvarchar data type.
  /// - "DATA_TYPE_NULL" : Null data type.
  /// - "DATA_TYPE_OTHER" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_JAVA_OBJECT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_DISTINCT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_STRUCT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_ARRAY" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_CLOB" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_REF" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_DATALINK" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_ROWID" : UNSUPPORTED! Row id data type.
  /// - "DATA_TYPE_BINARY" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_VARBINARY" : UNSUPPORTED! Variable binary data type.
  /// - "DATA_TYPE_LONGVARBINARY" : UNSUPPORTED! Long variable binary data type.
  /// - "DATA_TYPE_NCLOB" : UNSUPPORTED! NCLOB data type.
  /// - "DATA_TYPE_SQLXML" : UNSUPPORTED! SQL XML data type is not supported.
  /// - "DATA_TYPE_REF_CURSOR" : UNSUPPORTED! Cursor reference type is not
  /// supported.
  /// - "DATA_TYPE_TIME_WITH_TIMEZONE" : UNSUPPORTED! Use TIME or TIMESTAMP
  /// instead.
  /// - "DATA_TYPE_TIMESTAMP_WITH_TIMEZONE" : UNSUPPORTED! Use TIMESTAMP
  /// instead.
  core.String? dataType;

  /// The following field specifies the default value of the Field provided by
  /// the external system if a value is not provided.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// A brief description of the Field.
  core.String? description;

  /// Name of the Field.
  core.String? field;

  /// The following boolean field specifies if the current Field acts as a
  /// primary key or id if the parent is of type entity.
  core.bool? key;

  /// Specifies whether a null value is allowed.
  core.bool? nullable;

  /// Specifies if the Field is readonly.
  core.bool? readonly;

  Field({
    this.additionalDetails,
    this.dataType,
    this.defaultValue,
    this.description,
    this.field,
    this.key,
    this.nullable,
    this.readonly,
  });

  Field.fromJson(core.Map _json)
      : this(
          additionalDetails: _json.containsKey('additionalDetails')
              ? _json['additionalDetails']
                  as core.Map<core.String, core.dynamic>
              : null,
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          defaultValue:
              _json.containsKey('defaultValue') ? _json['defaultValue'] : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
          key: _json.containsKey('key') ? _json['key'] as core.bool : null,
          nullable: _json.containsKey('nullable')
              ? _json['nullable'] as core.bool
              : null,
          readonly: _json.containsKey('readonly')
              ? _json['readonly'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalDetails != null) 'additionalDetails': additionalDetails!,
        if (dataType != null) 'dataType': dataType!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (description != null) 'description': description!,
        if (field != null) 'field': field!,
        if (key != null) 'key': key!,
        if (nullable != null) 'nullable': nullable!,
        if (readonly != null) 'readonly': readonly!,
      };
}

/// Metadata of an input parameter.
class InputParameter {
  /// The data type of the Parameter.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Data type is not specified.
  /// - "DATA_TYPE_INT" : DEPRECATED! Use DATA_TYPE_INTEGER.
  /// - "DATA_TYPE_SMALLINT" : Short integer(int16) data type.
  /// - "DATA_TYPE_DOUBLE" : Double data type.
  /// - "DATA_TYPE_DATE" : Date data type.
  /// - "DATA_TYPE_DATETIME" : DEPRECATED! Use DATA_TYPE_TIMESTAMP.
  /// - "DATA_TYPE_TIME" : Time data type.
  /// - "DATA_TYPE_STRING" : DEPRECATED! Use DATA_TYPE_VARCHAR.
  /// - "DATA_TYPE_LONG" : DEPRECATED! Use DATA_TYPE_BIGINT.
  /// - "DATA_TYPE_BOOLEAN" : Boolean data type.
  /// - "DATA_TYPE_DECIMAL" : Decimal data type.
  /// - "DATA_TYPE_UUID" : DEPRECATED! Use DATA_TYPE_VARCHAR.
  /// - "DATA_TYPE_BLOB" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_BIT" : Bit data type.
  /// - "DATA_TYPE_TINYINT" : Small integer(int8) data type.
  /// - "DATA_TYPE_INTEGER" : Integer(int32) data type.
  /// - "DATA_TYPE_BIGINT" : Long integer(int64) data type.
  /// - "DATA_TYPE_FLOAT" : Float data type.
  /// - "DATA_TYPE_REAL" : Real data type.
  /// - "DATA_TYPE_NUMERIC" : Numeric data type.
  /// - "DATA_TYPE_CHAR" : Char data type.
  /// - "DATA_TYPE_VARCHAR" : Varchar data type.
  /// - "DATA_TYPE_LONGVARCHAR" : Longvarchar data type.
  /// - "DATA_TYPE_TIMESTAMP" : Timestamp data type.
  /// - "DATA_TYPE_NCHAR" : Nchar data type.
  /// - "DATA_TYPE_NVARCHAR" : Nvarchar data type.
  /// - "DATA_TYPE_LONGNVARCHAR" : Longnvarchar data type.
  /// - "DATA_TYPE_NULL" : Null data type.
  /// - "DATA_TYPE_OTHER" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_JAVA_OBJECT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_DISTINCT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_STRUCT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_ARRAY" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_CLOB" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_REF" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_DATALINK" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_ROWID" : UNSUPPORTED! Row id data type.
  /// - "DATA_TYPE_BINARY" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_VARBINARY" : UNSUPPORTED! Variable binary data type.
  /// - "DATA_TYPE_LONGVARBINARY" : UNSUPPORTED! Long variable binary data type.
  /// - "DATA_TYPE_NCLOB" : UNSUPPORTED! NCLOB data type.
  /// - "DATA_TYPE_SQLXML" : UNSUPPORTED! SQL XML data type is not supported.
  /// - "DATA_TYPE_REF_CURSOR" : UNSUPPORTED! Cursor reference type is not
  /// supported.
  /// - "DATA_TYPE_TIME_WITH_TIMEZONE" : UNSUPPORTED! Use TIME or TIMESTAMP
  /// instead.
  /// - "DATA_TYPE_TIMESTAMP_WITH_TIMEZONE" : UNSUPPORTED! Use TIMESTAMP
  /// instead.
  core.String? dataType;

  /// The following field specifies the default value of the Parameter provided
  /// by the external system if a value is not provided.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// A brief description of the Parameter.
  core.String? description;

  /// Specifies whether a null value is allowed.
  core.bool? nullable;

  /// Name of the Parameter.
  core.String? parameter;

  InputParameter({
    this.dataType,
    this.defaultValue,
    this.description,
    this.nullable,
    this.parameter,
  });

  InputParameter.fromJson(core.Map _json)
      : this(
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          defaultValue:
              _json.containsKey('defaultValue') ? _json['defaultValue'] : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          nullable: _json.containsKey('nullable')
              ? _json['nullable'] as core.bool
              : null,
          parameter: _json.containsKey('parameter')
              ? _json['parameter'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (description != null) 'description': description!,
        if (nullable != null) 'nullable': nullable!,
        if (parameter != null) 'parameter': parameter!,
      };
}

/// JWT claims used for the jwt-bearer authorization grant.
class JwtClaims {
  /// Value for the "aud" claim.
  core.String? audience;

  /// Value for the "iss" claim.
  core.String? issuer;

  /// Value for the "sub" claim.
  core.String? subject;

  JwtClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  JwtClaims.fromJson(core.Map _json)
      : this(
          audience: _json.containsKey('audience')
              ? _json['audience'] as core.String
              : null,
          issuer: _json.containsKey('issuer')
              ? _json['issuer'] as core.String
              : null,
          subject: _json.containsKey('subject')
              ? _json['subject'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (audience != null) 'audience': audience!,
        if (issuer != null) 'issuer': issuer!,
        if (subject != null) 'subject': subject!,
      };
}

/// Response message for ConnectorsService.ListConnections
class ListConnectionsResponse {
  /// Connections.
  core.List<Connection>? connections;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectionsResponse({
    this.connections,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectionsResponse.fromJson(core.Map _json)
      : this(
          connections: _json.containsKey('connections')
              ? (_json['connections'] as core.List)
                  .map((value) => Connection.fromJson(
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
        if (connections != null) 'connections': connections!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for Connectors.ListConnectorVersions.
class ListConnectorVersionsResponse {
  /// A list of connector versions.
  core.List<ConnectorVersion>? connectorVersions;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectorVersionsResponse({
    this.connectorVersions,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectorVersionsResponse.fromJson(core.Map _json)
      : this(
          connectorVersions: _json.containsKey('connectorVersions')
              ? (_json['connectorVersions'] as core.List)
                  .map((value) => ConnectorVersion.fromJson(
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
        if (connectorVersions != null) 'connectorVersions': connectorVersions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for Connectors.ListConnectors.
class ListConnectorsResponse {
  /// A list of connectors.
  core.List<Connector>? connectors;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListConnectorsResponse({
    this.connectors,
    this.nextPageToken,
    this.unreachable,
  });

  ListConnectorsResponse.fromJson(core.Map _json)
      : this(
          connectors: _json.containsKey('connectors')
              ? (_json['connectors'] as core.List)
                  .map((value) => Connector.fromJson(
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
        if (connectors != null) 'connectors': connectors!,
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

/// Response message for Connectors.ListProviders.
class ListProvidersResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// A list of providers.
  core.List<Provider>? providers;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListProvidersResponse({
    this.nextPageToken,
    this.providers,
    this.unreachable,
  });

  ListProvidersResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          providers: _json.containsKey('providers')
              ? (_json['providers'] as core.List)
                  .map((value) => Provider.fromJson(
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
        if (providers != null) 'providers': providers!,
        if (unreachable != null) 'unreachable': unreachable!,
      };
}

/// Response message for ConnectorsService.ListRuntimeActionSchemas.
class ListRuntimeActionSchemasResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// Runtime action schemas.
  core.List<RuntimeActionSchema>? runtimeActionSchemas;

  ListRuntimeActionSchemasResponse({
    this.nextPageToken,
    this.runtimeActionSchemas,
  });

  ListRuntimeActionSchemasResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          runtimeActionSchemas: _json.containsKey('runtimeActionSchemas')
              ? (_json['runtimeActionSchemas'] as core.List)
                  .map((value) => RuntimeActionSchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (runtimeActionSchemas != null)
          'runtimeActionSchemas': runtimeActionSchemas!,
      };
}

/// Response message for ConnectorsService.ListRuntimeEntitySchemas.
class ListRuntimeEntitySchemasResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// Runtime entity schemas.
  core.List<RuntimeEntitySchema>? runtimeEntitySchemas;

  ListRuntimeEntitySchemasResponse({
    this.nextPageToken,
    this.runtimeEntitySchemas,
  });

  ListRuntimeEntitySchemasResponse.fromJson(core.Map _json)
      : this(
          nextPageToken: _json.containsKey('nextPageToken')
              ? _json['nextPageToken'] as core.String
              : null,
          runtimeEntitySchemas: _json.containsKey('runtimeEntitySchemas')
              ? (_json['runtimeEntitySchemas'] as core.List)
                  .map((value) => RuntimeEntitySchema.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (runtimeEntitySchemas != null)
          'runtimeEntitySchemas': runtimeEntitySchemas!,
      };
}

/// A resource that represents Google Cloud Platform location.
typedef Location = $Location00;

/// Determines whether or no a connection is locked.
///
/// If locked, a reason must be specified.
class LockConfig {
  /// Indicates whether or not the connection is locked.
  core.bool? locked;

  /// Describes why a connection is locked.
  core.String? reason;

  LockConfig({
    this.locked,
    this.reason,
  });

  LockConfig.fromJson(core.Map _json)
      : this(
          locked:
              _json.containsKey('locked') ? _json['locked'] as core.bool : null,
          reason: _json.containsKey('reason')
              ? _json['reason'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (locked != null) 'locked': locked!,
        if (reason != null) 'reason': reason!,
      };
}

/// Parameters to support Oauth 2.0 Client Credentials Grant Authentication.
///
/// See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class Oauth2ClientCredentials {
  /// The client identifier.
  core.String? clientId;

  /// Secret version reference containing the client secret.
  Secret? clientSecret;

  Oauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
  });

  Oauth2ClientCredentials.fromJson(core.Map _json)
      : this(
          clientId: _json.containsKey('clientId')
              ? _json['clientId'] as core.String
              : null,
          clientSecret: _json.containsKey('clientSecret')
              ? Secret.fromJson(
                  _json['clientSecret'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientId != null) 'clientId': clientId!,
        if (clientSecret != null) 'clientSecret': clientSecret!,
      };
}

/// Parameters to support JSON Web Token (JWT) Profile for Oauth 2.0
/// Authorization Grant based authentication.
///
/// See https://tools.ietf.org/html/rfc7523 for more details.
class Oauth2JwtBearer {
  /// Secret version reference containing a PKCS#8 PEM-encoded private key
  /// associated with the Client Certificate.
  ///
  /// This private key will be used to sign JWTs used for the jwt-bearer
  /// authorization grant. Specified in the form as: `projects / * /secrets / *
  /// /versions / * `.
  Secret? clientKey;

  /// JwtClaims providers fields to generate the token.
  JwtClaims? jwtClaims;

  Oauth2JwtBearer({
    this.clientKey,
    this.jwtClaims,
  });

  Oauth2JwtBearer.fromJson(core.Map _json)
      : this(
          clientKey: _json.containsKey('clientKey')
              ? Secret.fromJson(
                  _json['clientKey'] as core.Map<core.String, core.dynamic>)
              : null,
          jwtClaims: _json.containsKey('jwtClaims')
              ? JwtClaims.fromJson(
                  _json['jwtClaims'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (clientKey != null) 'clientKey': clientKey!,
        if (jwtClaims != null) 'jwtClaims': jwtClaims!,
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

/// Provider indicates the owner who provides the connectors.
class Provider {
  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the resource.
  ///
  /// Output only.
  core.String? description;

  /// Display name.
  ///
  /// Output only.
  core.String? displayName;

  /// Link to documentation page.
  ///
  /// Output only.
  core.String? documentationUri;

  /// Link to external page.
  ///
  /// Output only.
  core.String? externalUri;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Output only.
  core.Map<core.String, core.String>? labels;

  /// Flag to mark the version indicating the launch stage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : LAUNCH_STAGE_UNSPECIFIED.
  /// - "PREVIEW" : PREVIEW.
  /// - "GA" : GA.
  /// - "DEPRECATED" : DEPRECATED.
  core.String? launchStage;

  /// Resource name of the Provider.
  ///
  /// Format: projects/{project}/locations/{location}/providers/{provider}
  ///
  /// Output only.
  core.String? name;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  /// Cloud storage location of icons etc consumed by UI.
  ///
  /// Output only.
  core.String? webAssetsLocation;

  Provider({
    this.createTime,
    this.description,
    this.displayName,
    this.documentationUri,
    this.externalUri,
    this.labels,
    this.launchStage,
    this.name,
    this.updateTime,
    this.webAssetsLocation,
  });

  Provider.fromJson(core.Map _json)
      : this(
          createTime: _json.containsKey('createTime')
              ? _json['createTime'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          displayName: _json.containsKey('displayName')
              ? _json['displayName'] as core.String
              : null,
          documentationUri: _json.containsKey('documentationUri')
              ? _json['documentationUri'] as core.String
              : null,
          externalUri: _json.containsKey('externalUri')
              ? _json['externalUri'] as core.String
              : null,
          labels: _json.containsKey('labels')
              ? (_json['labels'] as core.Map<core.String, core.dynamic>).map(
                  (key, item) => core.MapEntry(
                    key,
                    item as core.String,
                  ),
                )
              : null,
          launchStage: _json.containsKey('launchStage')
              ? _json['launchStage'] as core.String
              : null,
          name: _json.containsKey('name') ? _json['name'] as core.String : null,
          updateTime: _json.containsKey('updateTime')
              ? _json['updateTime'] as core.String
              : null,
          webAssetsLocation: _json.containsKey('webAssetsLocation')
              ? _json['webAssetsLocation'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (documentationUri != null) 'documentationUri': documentationUri!,
        if (externalUri != null) 'externalUri': externalUri!,
        if (labels != null) 'labels': labels!,
        if (launchStage != null) 'launchStage': launchStage!,
        if (name != null) 'name': name!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (webAssetsLocation != null) 'webAssetsLocation': webAssetsLocation!,
      };
}

/// Resource definition
class Resource {
  /// Template to uniquely represent a GCP resource in a format IAM expects This
  /// is a template that can have references to other values provided in the
  /// config variable template.
  core.String? pathTemplate;

  /// Different types of resource supported.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Value type is not specified.
  /// - "GCP_PROJECT" : GCP Project Resource.
  /// - "GCP_RESOURCE" : Any GCP Resource which is identified uniquely by IAM.
  /// - "GCP_SECRETMANAGER_SECRET" : GCP Secret Resource.
  /// - "GCP_SECRETMANAGER_SECRET_VERSION" : GCP Secret Version Resource.
  core.String? type;

  Resource({
    this.pathTemplate,
    this.type,
  });

  Resource.fromJson(core.Map _json)
      : this(
          pathTemplate: _json.containsKey('pathTemplate')
              ? _json['pathTemplate'] as core.String
              : null,
          type: _json.containsKey('type') ? _json['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pathTemplate != null) 'pathTemplate': pathTemplate!,
        if (type != null) 'type': type!,
      };
}

/// Metadata of result field.
class ResultMetadata {
  /// The data type of the field.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Data type is not specified.
  /// - "DATA_TYPE_INT" : DEPRECATED! Use DATA_TYPE_INTEGER.
  /// - "DATA_TYPE_SMALLINT" : Short integer(int16) data type.
  /// - "DATA_TYPE_DOUBLE" : Double data type.
  /// - "DATA_TYPE_DATE" : Date data type.
  /// - "DATA_TYPE_DATETIME" : DEPRECATED! Use DATA_TYPE_TIMESTAMP.
  /// - "DATA_TYPE_TIME" : Time data type.
  /// - "DATA_TYPE_STRING" : DEPRECATED! Use DATA_TYPE_VARCHAR.
  /// - "DATA_TYPE_LONG" : DEPRECATED! Use DATA_TYPE_BIGINT.
  /// - "DATA_TYPE_BOOLEAN" : Boolean data type.
  /// - "DATA_TYPE_DECIMAL" : Decimal data type.
  /// - "DATA_TYPE_UUID" : DEPRECATED! Use DATA_TYPE_VARCHAR.
  /// - "DATA_TYPE_BLOB" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_BIT" : Bit data type.
  /// - "DATA_TYPE_TINYINT" : Small integer(int8) data type.
  /// - "DATA_TYPE_INTEGER" : Integer(int32) data type.
  /// - "DATA_TYPE_BIGINT" : Long integer(int64) data type.
  /// - "DATA_TYPE_FLOAT" : Float data type.
  /// - "DATA_TYPE_REAL" : Real data type.
  /// - "DATA_TYPE_NUMERIC" : Numeric data type.
  /// - "DATA_TYPE_CHAR" : Char data type.
  /// - "DATA_TYPE_VARCHAR" : Varchar data type.
  /// - "DATA_TYPE_LONGVARCHAR" : Longvarchar data type.
  /// - "DATA_TYPE_TIMESTAMP" : Timestamp data type.
  /// - "DATA_TYPE_NCHAR" : Nchar data type.
  /// - "DATA_TYPE_NVARCHAR" : Nvarchar data type.
  /// - "DATA_TYPE_LONGNVARCHAR" : Longnvarchar data type.
  /// - "DATA_TYPE_NULL" : Null data type.
  /// - "DATA_TYPE_OTHER" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_JAVA_OBJECT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_DISTINCT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_STRUCT" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_ARRAY" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_CLOB" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_REF" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_DATALINK" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_ROWID" : UNSUPPORTED! Row id data type.
  /// - "DATA_TYPE_BINARY" : UNSUPPORTED! Binary data type.
  /// - "DATA_TYPE_VARBINARY" : UNSUPPORTED! Variable binary data type.
  /// - "DATA_TYPE_LONGVARBINARY" : UNSUPPORTED! Long variable binary data type.
  /// - "DATA_TYPE_NCLOB" : UNSUPPORTED! NCLOB data type.
  /// - "DATA_TYPE_SQLXML" : UNSUPPORTED! SQL XML data type is not supported.
  /// - "DATA_TYPE_REF_CURSOR" : UNSUPPORTED! Cursor reference type is not
  /// supported.
  /// - "DATA_TYPE_TIME_WITH_TIMEZONE" : UNSUPPORTED! Use TIME or TIMESTAMP
  /// instead.
  /// - "DATA_TYPE_TIMESTAMP_WITH_TIMEZONE" : UNSUPPORTED! Use TIMESTAMP
  /// instead.
  core.String? dataType;

  /// A brief description of the field.
  core.String? description;

  /// Name of the result field.
  core.String? field;

  ResultMetadata({
    this.dataType,
    this.description,
    this.field,
  });

  ResultMetadata.fromJson(core.Map _json)
      : this(
          dataType: _json.containsKey('dataType')
              ? _json['dataType'] as core.String
              : null,
          description: _json.containsKey('description')
              ? _json['description'] as core.String
              : null,
          field:
              _json.containsKey('field') ? _json['field'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (description != null) 'description': description!,
        if (field != null) 'field': field!,
      };
}

/// This configuration defines all the Cloud IAM roles that needs to be granted
/// to a particular GCP resource for the selected prinicpal like service
/// account.
///
/// These configurations will let UI display to customers what IAM roles need to
/// be granted by them. Or these configurations can be used by the UI to render
/// a 'grant' button to do the same on behalf of the user.
class RoleGrant {
  /// Template that UI can use to provide helper text to customers.
  core.String? helperTextTemplate;

  /// Prinicipal/Identity for whom the role need to assigned.
  /// Possible string values are:
  /// - "PRINCIPAL_UNSPECIFIED" : Value type is not specified.
  /// - "CONNECTOR_SA" : Service Account used for Connector workload identity
  /// This is either the default service account if unspecified or Service
  /// Account provided by Customers through BYOSA.
  core.String? principal;

  /// Resource on which the roles needs to be granted for the principal.
  Resource? resource;

  /// List of roles that need to be granted.
  core.List<core.String>? roles;

  RoleGrant({
    this.helperTextTemplate,
    this.principal,
    this.resource,
    this.roles,
  });

  RoleGrant.fromJson(core.Map _json)
      : this(
          helperTextTemplate: _json.containsKey('helperTextTemplate')
              ? _json['helperTextTemplate'] as core.String
              : null,
          principal: _json.containsKey('principal')
              ? _json['principal'] as core.String
              : null,
          resource: _json.containsKey('resource')
              ? Resource.fromJson(
                  _json['resource'] as core.Map<core.String, core.dynamic>)
              : null,
          roles: _json.containsKey('roles')
              ? (_json['roles'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (helperTextTemplate != null)
          'helperTextTemplate': helperTextTemplate!,
        if (principal != null) 'principal': principal!,
        if (resource != null) 'resource': resource!,
        if (roles != null) 'roles': roles!,
      };
}

/// Schema of a runtime action.
class RuntimeActionSchema {
  /// Name of the action.
  ///
  /// Output only.
  core.String? action;

  /// List of input parameter metadata for the action.
  ///
  /// Output only.
  core.List<InputParameter>? inputParameters;

  /// List of result field metadata.
  ///
  /// Output only.
  core.List<ResultMetadata>? resultMetadata;

  RuntimeActionSchema({
    this.action,
    this.inputParameters,
    this.resultMetadata,
  });

  RuntimeActionSchema.fromJson(core.Map _json)
      : this(
          action: _json.containsKey('action')
              ? _json['action'] as core.String
              : null,
          inputParameters: _json.containsKey('inputParameters')
              ? (_json['inputParameters'] as core.List)
                  .map((value) => InputParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          resultMetadata: _json.containsKey('resultMetadata')
              ? (_json['resultMetadata'] as core.List)
                  .map((value) => ResultMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (action != null) 'action': action!,
        if (inputParameters != null) 'inputParameters': inputParameters!,
        if (resultMetadata != null) 'resultMetadata': resultMetadata!,
      };
}

/// RuntimeConfig is the singleton resource of each location.
///
/// It includes generic resource configs consumed by control plane and runtime
/// plane like: pub/sub topic/subscription resource name, Cloud Storage location
/// storing schema etc.
class RuntimeConfig {
  /// Pub/Sub subscription for connd to receive message.
  ///
  /// E.g. projects/{project-id}/subscriptions/{topic-id}
  ///
  /// Output only.
  core.String? conndSubscription;

  /// Pub/Sub topic for connd to send message.
  ///
  /// E.g. projects/{project-id}/topics/{topic-id}
  ///
  /// Output only.
  core.String? conndTopic;

  /// Pub/Sub subscription for control plane to receive message.
  ///
  /// E.g. projects/{project-id}/subscriptions/{topic-id}
  ///
  /// Output only.
  core.String? controlPlaneSubscription;

  /// Pub/Sub topic for control plne to send message.
  ///
  /// communication. E.g. projects/{project-id}/topics/{topic-id}
  ///
  /// Output only.
  core.String? controlPlaneTopic;

  /// location_id of the runtime location.
  ///
  /// E.g. "us-west1".
  ///
  /// Output only.
  core.String? locationId;

  /// The endpoint of the connectors runtime ingress.
  ///
  /// Output only.
  core.String? runtimeEndpoint;

  /// The Cloud Storage bucket that stores connector's schema reports.
  ///
  /// Output only.
  core.String? schemaGcsBucket;

  /// The name of the Service Directory service name.
  ///
  /// Output only.
  core.String? serviceDirectory;

  /// The state of the location.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : STATE_UNSPECIFIED.
  /// - "INACTIVE" : INACTIVE.
  /// - "ACTIVATING" : ACTIVATING.
  /// - "ACTIVE" : ACTIVE.
  /// - "CREATING" : CREATING.
  /// - "DELETING" : DELETING.
  /// - "UPDATING" : UPDATING.
  core.String? state;

  RuntimeConfig({
    this.conndSubscription,
    this.conndTopic,
    this.controlPlaneSubscription,
    this.controlPlaneTopic,
    this.locationId,
    this.runtimeEndpoint,
    this.schemaGcsBucket,
    this.serviceDirectory,
    this.state,
  });

  RuntimeConfig.fromJson(core.Map _json)
      : this(
          conndSubscription: _json.containsKey('conndSubscription')
              ? _json['conndSubscription'] as core.String
              : null,
          conndTopic: _json.containsKey('conndTopic')
              ? _json['conndTopic'] as core.String
              : null,
          controlPlaneSubscription:
              _json.containsKey('controlPlaneSubscription')
                  ? _json['controlPlaneSubscription'] as core.String
                  : null,
          controlPlaneTopic: _json.containsKey('controlPlaneTopic')
              ? _json['controlPlaneTopic'] as core.String
              : null,
          locationId: _json.containsKey('locationId')
              ? _json['locationId'] as core.String
              : null,
          runtimeEndpoint: _json.containsKey('runtimeEndpoint')
              ? _json['runtimeEndpoint'] as core.String
              : null,
          schemaGcsBucket: _json.containsKey('schemaGcsBucket')
              ? _json['schemaGcsBucket'] as core.String
              : null,
          serviceDirectory: _json.containsKey('serviceDirectory')
              ? _json['serviceDirectory'] as core.String
              : null,
          state:
              _json.containsKey('state') ? _json['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conndSubscription != null) 'conndSubscription': conndSubscription!,
        if (conndTopic != null) 'conndTopic': conndTopic!,
        if (controlPlaneSubscription != null)
          'controlPlaneSubscription': controlPlaneSubscription!,
        if (controlPlaneTopic != null) 'controlPlaneTopic': controlPlaneTopic!,
        if (locationId != null) 'locationId': locationId!,
        if (runtimeEndpoint != null) 'runtimeEndpoint': runtimeEndpoint!,
        if (schemaGcsBucket != null) 'schemaGcsBucket': schemaGcsBucket!,
        if (serviceDirectory != null) 'serviceDirectory': serviceDirectory!,
        if (state != null) 'state': state!,
      };
}

/// Schema of a runtime entity.
class RuntimeEntitySchema {
  /// Name of the entity.
  ///
  /// Output only.
  core.String? entity;

  /// List of fields in the entity.
  ///
  /// Output only.
  core.List<Field>? fields;

  RuntimeEntitySchema({
    this.entity,
    this.fields,
  });

  RuntimeEntitySchema.fromJson(core.Map _json)
      : this(
          entity: _json.containsKey('entity')
              ? _json['entity'] as core.String
              : null,
          fields: _json.containsKey('fields')
              ? (_json['fields'] as core.List)
                  .map((value) => Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entity != null) 'entity': entity!,
        if (fields != null) 'fields': fields!,
      };
}

/// Secret provides a reference to entries in Secret Manager.
class Secret {
  /// The resource name of the secret version in the format, format as:
  /// `projects / * /secrets / * /versions / * `.
  core.String? secretVersion;

  Secret({
    this.secretVersion,
  });

  Secret.fromJson(core.Map _json)
      : this(
          secretVersion: _json.containsKey('secretVersion')
              ? _json['secretVersion'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (secretVersion != null) 'secretVersion': secretVersion!,
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

/// Source to extract the backend from.
class Source {
  /// Field identifier.
  ///
  /// For example config vaiable name.
  core.String? fieldId;

  /// Type of the source.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : Default SOURCE.
  /// - "CONFIG_VARIABLE" : Config Variable source type.
  core.String? sourceType;

  Source({
    this.fieldId,
    this.sourceType,
  });

  Source.fromJson(core.Map _json)
      : this(
          fieldId: _json.containsKey('fieldId')
              ? _json['fieldId'] as core.String
              : null,
          sourceType: _json.containsKey('sourceType')
              ? _json['sourceType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fieldId != null) 'fieldId': fieldId!,
        if (sourceType != null) 'sourceType': sourceType!,
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

/// Supported runtime features of a connector version.
///
/// This is passed to the management layer to add a new connector version by the
/// connector developer. Details about how this proto is passed to the
/// management layer is covered in this doc - go/runtime-manifest.
class SupportedRuntimeFeatures {
  /// Specifies if the connector supports action apis like 'executeAction'.
  core.bool? actionApis;

  /// Specifies if the connector supports entity apis like 'createEntity'.
  core.bool? entityApis;

  /// Specifies if the connector supports 'ExecuteSqlQuery' operation.
  core.bool? sqlQuery;

  SupportedRuntimeFeatures({
    this.actionApis,
    this.entityApis,
    this.sqlQuery,
  });

  SupportedRuntimeFeatures.fromJson(core.Map _json)
      : this(
          actionApis: _json.containsKey('actionApis')
              ? _json['actionApis'] as core.bool
              : null,
          entityApis: _json.containsKey('entityApis')
              ? _json['entityApis'] as core.bool
              : null,
          sqlQuery: _json.containsKey('sqlQuery')
              ? _json['sqlQuery'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionApis != null) 'actionApis': actionApis!,
        if (entityApis != null) 'entityApis': entityApis!,
        if (sqlQuery != null) 'sqlQuery': sqlQuery!,
      };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// Parameters to support Username and Password Authentication.
class UserPassword {
  /// Secret version reference containing the password.
  Secret? password;

  /// Username.
  core.String? username;

  UserPassword({
    this.password,
    this.username,
  });

  UserPassword.fromJson(core.Map _json)
      : this(
          password: _json.containsKey('password')
              ? Secret.fromJson(
                  _json['password'] as core.Map<core.String, core.dynamic>)
              : null,
          username: _json.containsKey('username')
              ? _json['username'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (password != null) 'password': password!,
        if (username != null) 'username': username!,
      };
}
