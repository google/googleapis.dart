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
///       - [ProjectsLocationsConnectionsConnectionSchemaMetadataResource]
///       - [ProjectsLocationsConnectionsEndUserAuthenticationsResource]
///       - [ProjectsLocationsConnectionsEventSubscriptionsResource]
///       - [ProjectsLocationsConnectionsRuntimeActionSchemasResource]
///       - [ProjectsLocationsConnectionsRuntimeEntitySchemasResource]
///     - [ProjectsLocationsCustomConnectorsResource]
///       - [ProjectsLocationsCustomConnectorsCustomConnectorVersionsResource]
///     - [ProjectsLocationsEndpointAttachmentsResource]
///     - [ProjectsLocationsGlobalResource]
///       - [ProjectsLocationsGlobalCustomConnectorsResource]
/// - [ProjectsLocationsGlobalCustomConnectorsCustomConnectorVersionsResource]
///       - [ProjectsLocationsGlobalManagedZonesResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsProvidersResource]
///       - [ProjectsLocationsProvidersConnectorsResource]
///         - [ProjectsLocationsProvidersConnectorsVersionsResource]
/// - [ProjectsLocationsProvidersConnectorsVersionsEventtypesResource]
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

/// Enables users to create and manage connections to Google Cloud services and
/// third-party business applications using the Connectors interface.
class ConnectorsApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ConnectorsApi(
    http.Client client, {
    core.String rootUrl = 'https://connectors.googleapis.com/',
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

  ProjectsLocationsConnectionsResource get connections =>
      ProjectsLocationsConnectionsResource(_requester);
  ProjectsLocationsCustomConnectorsResource get customConnectors =>
      ProjectsLocationsCustomConnectorsResource(_requester);
  ProjectsLocationsEndpointAttachmentsResource get endpointAttachments =>
      ProjectsLocationsEndpointAttachmentsResource(_requester);
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

  /// GetRegionalSettings gets settings of a region.
  ///
  /// RegionalSettings is a singleton resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Regional Settings.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/regionalSettings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RegionalSettings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RegionalSettings> getRegionalSettings(
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
    return RegionalSettings.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return RuntimeConfig.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Update the settings of a region.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the Connection. Format:
  /// projects/{project}/locations/{location}/regionalSettings
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/regionalSettings$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
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
  async.Future<Operation> updateRegionalSettings(
    RegionalSettings request,
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

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsConnectionSchemaMetadataResource
  get connectionSchemaMetadata =>
      ProjectsLocationsConnectionsConnectionSchemaMetadataResource(_requester);
  ProjectsLocationsConnectionsEndUserAuthenticationsResource
  get endUserAuthentications =>
      ProjectsLocationsConnectionsEndUserAuthenticationsResource(_requester);
  ProjectsLocationsConnectionsEventSubscriptionsResource
  get eventSubscriptions =>
      ProjectsLocationsConnectionsEventSubscriptionsResource(_requester);
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
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (connectionId != null) 'connectionId': [connectionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
  /// [force] - Optional. If set to true, any child
  /// EndUserAuthentication/EventSubscription resources will also be deleted.
  /// Otherwise, the request will fail if the connection has any children.
  /// Followed the best practice from https://aip.dev/135#cascading-delete
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
    return Connection.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ConnectionSchemaMetadata.fromJson(
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connections';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ListenEvent listens to the event.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resourcePath] - Required. Resource path for request.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListenEventResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListenEventResponse> listenEvent(
    ListenEventRequest request,
    core.String resourcePath, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resourcePath') + ':listenEvent';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListenEventResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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
  /// [updateMask] - Required. The list of fields to update. Fields are
  /// specified relative to the connection. A field will be overwritten if it is
  /// in the mask. The field mask must not be empty, and it must not contain
  /// fields that are immutable or only set by the server. You can modify only
  /// the fields listed below. To lock/unlock a connection: * `lock_config` To
  /// suspend/resume a connection: * `suspended` To update the connection
  /// details: * `description` * `labels` * `connector_version` *
  /// `config_variables` * `auth_config` * `destination_configs` * `node_config`
  /// * `log_config` * `ssl_config` * `eventing_enablement_type` *
  /// `eventing_config` * `auth_override_enabled` * `async_operations_enabled`
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

  /// RepaiEventing tries to repair eventing related event subscriptions.
  ///
  /// [request] - The metadata request object.
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
  async.Future<Operation> repairEventing(
    RepairEventingRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':repairEventing';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns Top matching Connections for a given query.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Parent resource of the Connection, of the form:
  /// `projects / * /locations / * /connections`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections$`.
  ///
  /// [pageSize] - Optional. The number of top matching connectors to return
  ///
  /// [pageToken] - Optional. page_token
  ///
  /// [query] - Required. The query against which the search needs to be done.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [SearchConnectionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<SearchConnectionsResponse> search(
    core.String name, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? query,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (query != null) 'query': [query],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':search';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return SearchConnectionsResponse.fromJson(
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

class ProjectsLocationsConnectionsConnectionSchemaMetadataResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsConnectionSchemaMetadataResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Get action.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name format:
  /// projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/connectionSchemaMetadata$`.
  ///
  /// [actionId] - Required. Id of the action.
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
  async.Future<Operation> getAction(
    core.String name, {
    core.String? actionId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (actionId != null) 'actionId': [actionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getAction';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Get entity type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name format:
  /// projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/connectionSchemaMetadata$`.
  ///
  /// [entityId] - Required. Id of the entity type.
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
  async.Future<Operation> getEntityType(
    core.String name, {
    core.String? entityId,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (entityId != null) 'entityId': [entityId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':getEntityType';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List actions.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name format.
  /// projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/connectionSchemaMetadata$`.
  ///
  /// [filter] - Required. Filter Wildcards are not supported in the filter
  /// currently.
  ///
  /// [pageSize] - Page size. If unspecified, at most 50 actions will be
  /// returned.
  ///
  /// [pageToken] - Page token.
  ///
  /// [view] - Specifies which fields are returned in response. Defaults to
  /// BASIC view.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED"
  /// - "BASIC"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListActionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListActionsResponse> listActions(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':listActions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListActionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List entity types.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name format:
  /// projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/connectionSchemaMetadata$`.
  ///
  /// [filter] - Required. Filter Wildcards are not supported in the filter
  /// currently.
  ///
  /// [pageSize] - Page size. If unspecified, at most 50 entity types will be
  /// returned.
  ///
  /// [pageToken] - Page token.
  ///
  /// [view] - Specifies which fields are returned in response. Defaults to
  /// BASIC view.
  /// Possible string values are:
  /// - "VIEW_UNSPECIFIED"
  /// - "BASIC"
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEntityTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEntityTypesResponse> listEntityTypes(
    core.String name, {
    core.String? filter,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':listEntityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Refresh runtime schema of a connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/connectionSchemaMetadata$`.
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
    RefreshConnectionSchemaMetadataRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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
}

class ProjectsLocationsConnectionsEndUserAuthenticationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsEndUserAuthenticationsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new EndUserAuthentication in a given project,location and
  /// connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the EndUserAuthentication, of the
  /// form: `projects / * /locations / * /connections / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [endUserAuthenticationId] - Required. Identifier to assign to the
  /// EndUserAuthentication. Must be unique within scope of the parent resource.
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
    EndUserAuthentication request,
    core.String parent, {
    core.String? endUserAuthenticationId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endUserAuthenticationId != null)
        'endUserAuthenticationId': [endUserAuthenticationId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/endUserAuthentications';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single EndUserAuthentication.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /connections / * /endUserAuthentication / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/endUserAuthentications/\[^/\]+$`.
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

  /// Gets details of a single EndUserAuthentication.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /connections / * /EndUserAuthentications / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/endUserAuthentications/\[^/\]+$`.
  ///
  /// [view] - Optional. View of the EndUserAuthentication to return.
  /// Possible string values are:
  /// - "END_USER_AUTHENTICATION_VIEW_UNSPECIFIED" :
  /// END_USER_AUTHENTICATION_UNSPECIFIED.
  /// - "BASIC_VIEW" : Do not include secret fields.
  /// - "FULL_VIEW" : Include secret fields.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EndUserAuthentication].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EndUserAuthentication> get(
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
    return EndUserAuthentication.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List EndUserAuthentications in a given project,location and connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the EndUserAuthentication, of the
  /// form: `projects / * /locations / * /connections / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - Filter.
  ///
  /// [orderBy] - Order by parameters.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEndUserAuthenticationsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEndUserAuthenticationsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/endUserAuthentications';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEndUserAuthenticationsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single EndUserAuthentication.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Resource name of the EndUserAuthentication.
  /// Format:
  /// projects/{project}/locations/{location}/connections/{connection}/endUserAuthentications/{end_user_authentication}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/endUserAuthentications/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update. A field will be
  /// overwritten if it is in the mask. You can modify only the fields listed
  /// below. To update the EndUserAuthentication details: *
  /// `notify_endpoint_destination`
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
    EndUserAuthentication request,
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

class ProjectsLocationsConnectionsEventSubscriptionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsEventSubscriptionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new EventSubscription in a given project,location and
  /// connection.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the EventSubscription, of the
  /// form: `projects / * /locations / * /connections / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [eventSubscriptionId] - Required. Identifier to assign to the Event
  /// Subscription. Must be unique within scope of the parent resource.
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
    EventSubscription request,
    core.String parent, {
    core.String? eventSubscriptionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (eventSubscriptionId != null)
        'eventSubscriptionId': [eventSubscriptionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/eventSubscriptions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single EventSubscription.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /connections / * /eventsubscriptions / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/eventSubscriptions/\[^/\]+$`.
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

  /// Gets details of a single EventSubscription.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /connections / * /eventSubscriptions / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/eventSubscriptions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventSubscription].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventSubscription> get(
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
    return EventSubscription.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List EventSubscriptions in a given project,location and connection.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the EventSubscription, of the
  /// form: `projects / * /locations / * /connections / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [filter] - Filter.
  ///
  /// [orderBy] - Order by parameters.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEventSubscriptionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEventSubscriptionsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/eventSubscriptions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventSubscriptionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single EventSubscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Identifier. Resource name of the EventSubscription.
  /// Format:
  /// projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/eventSubscriptions/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update. Fields are
  /// specified relative to the Subscription. A field will be overwritten if it
  /// is in the mask. You can modify only the fields listed below. To update the
  /// EventSubscription details: * `serviceAccount`
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
    EventSubscription request,
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

  /// RetryEventSubscription retries the registration of Subscription.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /connections / * /eventSubscriptions / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/eventSubscriptions/\[^/\]+$`.
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
  async.Future<Operation> retry(
    RetryEventSubscriptionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':retry';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionsRuntimeActionSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRuntimeActionSchemasResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
  /// [schemaAsString] - Optional. Flag to indicate if schema should be returned
  /// as string or not
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
    core.bool? schemaAsString,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (schemaAsString != null) 'schemaAsString': ['${schemaAsString}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/runtimeActionSchemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRuntimeActionSchemasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsRuntimeEntitySchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsRuntimeEntitySchemasResource(
    commons.ApiRequester client,
  ) : _requester = client;

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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/runtimeEntitySchemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListRuntimeEntitySchemasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCustomConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCustomConnectorsCustomConnectorVersionsResource
  get customConnectorVersions =>
      ProjectsLocationsCustomConnectorsCustomConnectorVersionsResource(
        _requester,
      );

  ProjectsLocationsCustomConnectorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Validates a Custom Connector Spec.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Location at which the custom connector is being
  /// created.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ValidateCustomConnectorSpecResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ValidateCustomConnectorSpecResponse> validateCustomConnectorSpec(
    ValidateCustomConnectorSpecRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' +
        core.Uri.encodeFull('$parent') +
        '/customConnectors:validateCustomConnectorSpec';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ValidateCustomConnectorSpecResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCustomConnectorsCustomConnectorVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCustomConnectorsCustomConnectorVersionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Deletes a single CustomConnectorVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form:
  /// `projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customConnectors/\[^/\]+/customConnectorVersions/\[^/\]+$`.
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

  /// Deprecates a single CustomConnectorVersion.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form:
  /// `projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customConnectors/\[^/\]+/customConnectorVersions/\[^/\]+$`.
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
  async.Future<Operation> deprecate(
    DeprecateCustomConnectorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':deprecate';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Publish request for the CustomConnectorVersion.
  ///
  /// Once approved, the CustomConnectorVersion will be published as
  /// PartnerConnector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form:
  /// `projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customConnectors/\[^/\]+/customConnectorVersions/\[^/\]+$`.
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
  async.Future<Operation> publish(
    PublishCustomConnectorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':publish';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Withdraw the publish request for the CustomConnectorVersion.
  ///
  /// This can only be used before the CustomConnectorVersion is published.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form:
  /// `projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/customConnectors/\[^/\]+/customConnectorVersions/\[^/\]+$`.
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
  async.Future<Operation> withdraw(
    WithdrawCustomConnectorVersionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':withdraw';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsEndpointAttachmentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsEndpointAttachmentsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new EndpointAttachment in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the EndpointAttachment, of the
  /// form: `projects / * /locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [endpointAttachmentId] - Required. Identifier to assign to the
  /// EndpointAttachment. Must be unique within scope of the parent resource.
  /// The regex is: `^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$`.
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
    EndpointAttachment request,
    core.String parent, {
    core.String? endpointAttachmentId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (endpointAttachmentId != null)
        'endpointAttachmentId': [endpointAttachmentId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/endpointAttachments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single EndpointAttachment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /endpointAttachments / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointAttachments/\[^/\]+$`.
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

  /// Gets details of a single EndpointAttachment.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /endpointAttachments / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointAttachments/\[^/\]+$`.
  ///
  /// [view] - Optional. Specifies which fields of the EndpointAttachment are
  /// returned in the response. Defaults to `ENDPOINT_ATTACHMENT_VIEW_BASIC`
  /// view.
  /// Possible string values are:
  /// - "ENDPOINT_ATTACHMENT_VIEW_UNSPECIFIED" :
  /// ENDPOINT_ATTACHMENT_VIEW_UNSPECIFIED.
  /// - "ENDPOINT_ATTACHMENT_VIEW_BASIC" : Do not include status.
  /// - "ENDPOINT_ATTACHMENT_VIEW_FULL" : Includes Status.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EndpointAttachment].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EndpointAttachment> get(
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
    return EndpointAttachment.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List EndpointAttachments in a given project
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource od the EndpointAttachment, of the
  /// form: `projects / * /locations / * `
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
  /// [view] - Optional. Specifies which fields of the EndpointAttachment are
  /// returned in the response. Defaults to `ENDPOINT_ATTACHMENT_VIEW_BASIC`
  /// view.
  /// Possible string values are:
  /// - "ENDPOINT_ATTACHMENT_VIEW_UNSPECIFIED" :
  /// ENDPOINT_ATTACHMENT_VIEW_UNSPECIFIED.
  /// - "ENDPOINT_ATTACHMENT_VIEW_BASIC" : Do not include status.
  /// - "ENDPOINT_ATTACHMENT_VIEW_FULL" : Includes Status.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEndpointAttachmentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEndpointAttachmentsResponse> list(
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

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/endpointAttachments';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEndpointAttachmentsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single EndpointAttachment.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the Endpoint Attachment. Format:
  /// projects/{project}/locations/{location}/endpointAttachments/{endpoint_attachment}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/endpointAttachments/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update. Fields are
  /// specified relative to the endpointAttachment. A field will be overwritten
  /// if it is in the mask. You can modify only the fields listed below. To
  /// update the endpointAttachment details: * `description` * `labels`
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
    EndpointAttachment request,
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

class ProjectsLocationsGlobalResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalCustomConnectorsResource get customConnectors =>
      ProjectsLocationsGlobalCustomConnectorsResource(_requester);
  ProjectsLocationsGlobalManagedZonesResource get managedZones =>
      ProjectsLocationsGlobalManagedZonesResource(_requester);

  ProjectsLocationsGlobalResource(commons.ApiRequester client)
    : _requester = client;

  /// GetGlobalSettings gets settings of a project.
  ///
  /// GlobalSettings is a singleton resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the Settings.
  /// Value must have pattern `^projects/\[^/\]+/locations/global/settings$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Settings].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Settings> getSettings(
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
    return Settings.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Update the global settings of a project.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the Connection. Format:
  /// projects/{project}/locations/global/settings}
  /// Value must have pattern `^projects/\[^/\]+/locations/global/settings$`.
  ///
  /// [updateMask] - Required. The list of fields to update.
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
  async.Future<Operation> updateSettings(
    Settings request,
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

class ProjectsLocationsGlobalCustomConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalCustomConnectorsCustomConnectorVersionsResource
  get customConnectorVersions =>
      ProjectsLocationsGlobalCustomConnectorsCustomConnectorVersionsResource(
        _requester,
      );

  ProjectsLocationsGlobalCustomConnectorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new CustomConnector in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the CreateCustomConnector, of the
  /// form: `projects/{project}/locations / * `
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [customConnectorId] - Required. Identifier to assign to the
  /// CreateCustomConnector. Must be unique within scope of the parent resource.
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
    CustomConnector request,
    core.String parent, {
    core.String? customConnectorId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customConnectorId != null) 'customConnectorId': [customConnectorId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customConnectors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single CustomConnector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form:
  /// `projects/{project}/locations/{location}/customConnectors/{connector}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/customConnectors/\[^/\]+$`.
  ///
  /// [force] - Optional. If set to true, any customConnectorVersion which is a
  /// child resource will also be deleted. https://aip.dev/135#cascading-delete
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

  /// Gets details of a single CustomConnector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /customConnectors / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/customConnectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomConnector].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomConnector> get(
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
    return CustomConnector.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List CustomConnectorVersions in a given project
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the custom connectors, of the
  /// form: `projects / * /locations / * ` Only global location is supported for
  /// CustomConnector resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Filter string.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomConnectorsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomConnectorsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/customConnectors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomConnectorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a CustomConnector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. Resource name of the CustomConnector. Format:
  /// projects/{project}/locations/{location}/customConnectors/{connector}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/customConnectors/\[^/\]+$`.
  ///
  /// [updateMask] - Required. Field mask is used to specify the fields to be
  /// overwritten in the Connector resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. Set the mask as "*" for
  /// full replacement, which means all fields will be overwritten.
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
    CustomConnector request,
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

class ProjectsLocationsGlobalCustomConnectorsCustomConnectorVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalCustomConnectorsCustomConnectorVersionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new CustomConnectorVersion in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the CreateCustomConnector, of the
  /// form:
  /// `projects/{project}/locations/{location}/customConnectors/{custom_connector}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/customConnectors/\[^/\]+$`.
  ///
  /// [customConnectorVersionId] - Required. Identifier to assign to the
  /// CreateCustomConnectorVersion. Must be unique within scope of the parent
  /// resource.
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
    CustomConnectorVersion request,
    core.String parent, {
    core.String? customConnectorVersionId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (customConnectorVersionId != null)
        'customConnectorVersionId': [customConnectorVersionId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1/' + core.Uri.encodeFull('$parent') + '/customConnectorVersions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single CustomConnectorVersion.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / *
  /// /locations/{location}/customConnectors / * /customConnectorVersions / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/customConnectors/\[^/\]+/customConnectorVersions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CustomConnectorVersion].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CustomConnectorVersion> get(
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
    return CustomConnectorVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List CustomConnectorVersions in a given project
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the connectors, of the form:
  /// `projects / * /locations/{location}/customConnectors / *
  /// /customConnectorVersions / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/customConnectors/\[^/\]+$`.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCustomConnectorVersionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCustomConnectorVersionsResponse> list(
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
        'v1/' + core.Uri.encodeFull('$parent') + '/customConnectorVersions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCustomConnectorVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsGlobalManagedZonesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsGlobalManagedZonesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new ManagedZone in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the ManagedZone, of the form:
  /// `projects / * /locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [managedZoneId] - Required. Identifier to assign to the ManagedZone. Must
  /// be unique within scope of the parent resource.
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
    ManagedZone request,
    core.String parent, {
    core.String? managedZoneId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (managedZoneId != null) 'managedZoneId': [managedZoneId],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/managedZones';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single ManagedZone.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / *
  /// /locations/global/managedZones / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/managedZones/\[^/\]+$`.
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

  /// Gets details of a single ManagedZone.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / *
  /// /locations/global/managedZones / * `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/managedZones/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ManagedZone].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ManagedZone> get(
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
    return ManagedZone.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// List ManagedZones in a given project
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the Managed Zone, of the form:
  /// `projects / * /locations/global`
  /// Value must have pattern `^projects/\[^/\]+/locations/global$`.
  ///
  /// [filter] - Filter.
  ///
  /// [orderBy] - Order by parameters.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [returnPartialSuccess] - Optional. If true, allow partial responses for
  /// multi-regional Aggregated List requests.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListManagedZonesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListManagedZonesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (filter != null) 'filter': [filter],
      if (orderBy != null) 'orderBy': [orderBy],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (returnPartialSuccess != null)
        'returnPartialSuccess': ['${returnPartialSuccess}'],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/managedZones';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListManagedZonesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single ManagedZone.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the Managed Zone. Format:
  /// projects/{project}/locations/global/managedZones/{managed_zone}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/global/managedZones/\[^/\]+$`.
  ///
  /// [updateMask] - Required. The list of fields to update. Fields are
  /// specified relative to the managedZone. A field will be overwritten if it
  /// is in the mask. You can modify only the fields listed below. To update the
  /// managedZone details: * `description` * `labels` * `target_project` *
  /// `target_network`
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
    ManagedZone request,
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

class ProjectsLocationsProvidersResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProvidersConnectorsResource get connectors =>
      ProjectsLocationsProvidersConnectorsResource(_requester);

  ProjectsLocationsProvidersResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a provider.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /providers / * ` Only global location is supported for Provider resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+$`.
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
  async.Future<Provider> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Provider.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

  /// Lists Providers in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the API, of the form: `projects /
  /// * /locations / * ` Only global location is supported for Provider
  /// resource.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/providers';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListProvidersResponse.fromJson(
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

class ProjectsLocationsProvidersConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProvidersConnectorsVersionsResource get versions =>
      ProjectsLocationsProvidersConnectorsVersionsResource(_requester);

  ProjectsLocationsProvidersConnectorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets details of a single Connector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /providers / * /connectors / * ` Only global location is supported for
  /// Connector resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+/connectors/\[^/\]+$`.
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
  async.Future<Connector> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Connector.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Connectors in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the connectors, of the form:
  /// `projects / * /locations / * /providers / * ` Only global location is
  /// supported for Connector resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+$`.
  ///
  /// [filter] - Filter string.
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectors';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectorsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProvidersConnectorsVersionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProvidersConnectorsVersionsEventtypesResource
  get eventtypes =>
      ProjectsLocationsProvidersConnectorsVersionsEventtypesResource(
        _requester,
      );

  ProjectsLocationsProvidersConnectorsVersionsResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// fetch and return the list of auth config variables required to override
  /// the connection backend auth.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Parent resource of the Connector Version, of the form:
  /// `projects / * /locations / * /providers / * /connectors / * /versions / *
  /// `
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+/connectors/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [view] - Optional. View of the AuthSchema. The default value is BASIC.
  /// Possible string values are:
  /// - "AUTH_SCHEMA_VIEW_UNSPECIFIED" : Default value.
  /// - "BASIC" : Basic view of the AuthSchema.
  /// - "JSON_SCHEMA" : JSON schema view of the AuthSchema.
  /// - "EUA_SCHEMA" : EUA Schema view of the AuthSchema.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [FetchAuthSchemaResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<FetchAuthSchemaResponse> fetchAuthSchema(
    core.String name, {
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':fetchAuthSchema';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return FetchAuthSchemaResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single connector version.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /providers / * /connectors / * /versions / * ` Only global location is
  /// supported for ConnectorVersion resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+/connectors/\[^/\]+/versions/\[^/\]+$`.
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
    return ConnectorVersion.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Connector Versions in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [view] - Specifies which fields of the ConnectorVersion are returned in
  /// the response. Defaults to `BASIC` view.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (view != null) 'view': [view],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/versions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListConnectorVersionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsProvidersConnectorsVersionsEventtypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsProvidersConnectorsVersionsEventtypesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Gets details of a single event type.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the form: `projects / * /locations / *
  /// /providers / * /connectors / * /versions / * /eventtypes / * ` Only global
  /// location is supported for EventType resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+/connectors/\[^/\]+/versions/\[^/\]+/eventtypes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EventType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EventType> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EventType.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Event Types in a given Connector Version.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource of the connectors, of the form:
  /// `projects / * /locations / * /providers / * /connectors / * /versions / *
  /// ` Only global location is supported for EventType resource.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/providers/\[^/\]+/connectors/\[^/\]+/versions/\[^/\]+$`.
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEventTypesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEventTypesResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/eventtypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEventTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
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

  AuditConfig({this.auditLogConfigs, this.service});

  AuditConfig.fromJson(core.Map json_)
    : this(
        auditLogConfigs:
            (json_['auditLogConfigs'] as core.List?)
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

/// AuthConfig defines details of a authentication type.
class AuthConfig {
  /// List containing additional auth configs.
  ///
  /// Optional.
  core.List<ConfigVariable>? additionalVariables;

  /// Identifier key for auth config
  ///
  /// Optional.
  core.String? authKey;

  /// The type of authentication configured.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "USER_PASSWORD" : Username and Password Authentication.
  /// - "OAUTH2_JWT_BEARER" : JSON Web Token (JWT) Profile for Oauth 2.0
  /// Authorization Grant based authentication
  /// - "OAUTH2_CLIENT_CREDENTIALS" : Oauth 2.0 Client Credentials Grant
  /// Authentication
  /// - "SSH_PUBLIC_KEY" : SSH Public Key Authentication
  /// - "OAUTH2_AUTH_CODE_FLOW" : Oauth 2.0 Authorization Code Flow
  /// - "GOOGLE_AUTHENTICATION" : Google authentication
  /// - "OAUTH2_AUTH_CODE_FLOW_GOOGLE_MANAGED" : Oauth 2.0 Authorization Code
  /// Flow with Google Provided OAuth Client
  core.String? authType;

  /// Oauth2AuthCodeFlow.
  Oauth2AuthCodeFlow? oauth2AuthCodeFlow;

  /// Oauth2AuthCodeFlowGoogleManaged.
  Oauth2AuthCodeFlowGoogleManaged? oauth2AuthCodeFlowGoogleManaged;

  /// Oauth2ClientCredentials.
  Oauth2ClientCredentials? oauth2ClientCredentials;

  /// Oauth2JwtBearer.
  Oauth2JwtBearer? oauth2JwtBearer;

  /// SSH Public Key.
  SshPublicKey? sshPublicKey;

  /// UserPassword.
  UserPassword? userPassword;

  AuthConfig({
    this.additionalVariables,
    this.authKey,
    this.authType,
    this.oauth2AuthCodeFlow,
    this.oauth2AuthCodeFlowGoogleManaged,
    this.oauth2ClientCredentials,
    this.oauth2JwtBearer,
    this.sshPublicKey,
    this.userPassword,
  });

  AuthConfig.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authKey: json_['authKey'] as core.String?,
        authType: json_['authType'] as core.String?,
        oauth2AuthCodeFlow:
            json_.containsKey('oauth2AuthCodeFlow')
                ? Oauth2AuthCodeFlow.fromJson(
                  json_['oauth2AuthCodeFlow']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2AuthCodeFlowGoogleManaged:
            json_.containsKey('oauth2AuthCodeFlowGoogleManaged')
                ? Oauth2AuthCodeFlowGoogleManaged.fromJson(
                  json_['oauth2AuthCodeFlowGoogleManaged']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2ClientCredentials:
            json_.containsKey('oauth2ClientCredentials')
                ? Oauth2ClientCredentials.fromJson(
                  json_['oauth2ClientCredentials']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2JwtBearer:
            json_.containsKey('oauth2JwtBearer')
                ? Oauth2JwtBearer.fromJson(
                  json_['oauth2JwtBearer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sshPublicKey:
            json_.containsKey('sshPublicKey')
                ? SshPublicKey.fromJson(
                  json_['sshPublicKey'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userPassword:
            json_.containsKey('userPassword')
                ? UserPassword.fromJson(
                  json_['userPassword'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (authKey != null) 'authKey': authKey!,
    if (authType != null) 'authType': authType!,
    if (oauth2AuthCodeFlow != null) 'oauth2AuthCodeFlow': oauth2AuthCodeFlow!,
    if (oauth2AuthCodeFlowGoogleManaged != null)
      'oauth2AuthCodeFlowGoogleManaged': oauth2AuthCodeFlowGoogleManaged!,
    if (oauth2ClientCredentials != null)
      'oauth2ClientCredentials': oauth2ClientCredentials!,
    if (oauth2JwtBearer != null) 'oauth2JwtBearer': oauth2JwtBearer!,
    if (sshPublicKey != null) 'sshPublicKey': sshPublicKey!,
    if (userPassword != null) 'userPassword': userPassword!,
  };
}

/// AuthConfigTemplate defines required field over an authentication type.
class AuthConfigTemplate {
  /// Identifier key for auth config
  core.String? authKey;

  /// The type of authentication configured.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "USER_PASSWORD" : Username and Password Authentication.
  /// - "OAUTH2_JWT_BEARER" : JSON Web Token (JWT) Profile for Oauth 2.0
  /// Authorization Grant based authentication
  /// - "OAUTH2_CLIENT_CREDENTIALS" : Oauth 2.0 Client Credentials Grant
  /// Authentication
  /// - "SSH_PUBLIC_KEY" : SSH Public Key Authentication
  /// - "OAUTH2_AUTH_CODE_FLOW" : Oauth 2.0 Authorization Code Flow
  /// - "GOOGLE_AUTHENTICATION" : Google authentication
  /// - "OAUTH2_AUTH_CODE_FLOW_GOOGLE_MANAGED" : Oauth 2.0 Authorization Code
  /// Flow with Google Provided OAuth Client
  core.String? authType;

  /// Config variables to describe an `AuthConfig` for a `Connection`.
  core.List<ConfigVariableTemplate>? configVariableTemplates;

  /// Connector specific description for an authentication template.
  core.String? description;

  /// Display name for authentication template.
  core.String? displayName;

  /// Whether the auth config is the default one.
  core.bool? isDefault;

  AuthConfigTemplate({
    this.authKey,
    this.authType,
    this.configVariableTemplates,
    this.description,
    this.displayName,
    this.isDefault,
  });

  AuthConfigTemplate.fromJson(core.Map json_)
    : this(
        authKey: json_['authKey'] as core.String?,
        authType: json_['authType'] as core.String?,
        configVariableTemplates:
            (json_['configVariableTemplates'] as core.List?)
                ?.map(
                  (value) => ConfigVariableTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        isDefault: json_['isDefault'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authKey != null) 'authKey': authKey!,
    if (authType != null) 'authType': authType!,
    if (configVariableTemplates != null)
      'configVariableTemplates': configVariableTemplates!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (isDefault != null) 'isDefault': isDefault!,
  };
}

/// AuthField defines a field in an authentication type.
class AuthField {
  /// Data type of the field.
  core.String? dataType;

  /// Description of the field.
  core.String? description;

  /// Key of the field.
  core.String? key;

  AuthField({this.dataType, this.description, this.key});

  AuthField.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        description: json_['description'] as core.String?,
        key: json_['key'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (description != null) 'description': description!,
    if (key != null) 'key': key!,
  };
}

/// AuthObject defines a JSON schema of an authentication type.
class AuthObject {
  /// Whether the object has additional properties.
  core.bool? additionalProperties;

  /// Auth key of the object.
  core.String? authKey;

  /// Auth type of the object.
  core.String? authType;

  /// Description of the object.
  core.String? description;

  /// Whether the object is the default one.
  core.bool? isDefault;

  /// Properties of the object.
  core.Map<core.String, AuthProperty>? properties;

  /// Type of the object.
  core.String? type;

  AuthObject({
    this.additionalProperties,
    this.authKey,
    this.authType,
    this.description,
    this.isDefault,
    this.properties,
    this.type,
  });

  AuthObject.fromJson(core.Map json_)
    : this(
        additionalProperties: json_['additionalProperties'] as core.bool?,
        authKey: json_['authKey'] as core.String?,
        authType: json_['authType'] as core.String?,
        description: json_['description'] as core.String?,
        isDefault: json_['isDefault'] as core.bool?,
        properties:
            (json_['properties'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                AuthProperty.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalProperties != null)
      'additionalProperties': additionalProperties!,
    if (authKey != null) 'authKey': authKey!,
    if (authType != null) 'authType': authType!,
    if (description != null) 'description': description!,
    if (isDefault != null) 'isDefault': isDefault!,
    if (properties != null) 'properties': properties!,
    if (type != null) 'type': type!,
  };
}

/// AuthProperty defines a property of an authentication type.
class AuthProperty {
  /// Description of the property.
  core.String? description;

  /// Type of the property.
  core.String? type;

  AuthProperty({this.description, this.type});

  AuthProperty.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (type != null) 'type': type!,
  };
}

/// AuthSchema defines the schema of an authentication type.
class AuthSchema {
  /// List of AuthFields.
  core.List<AuthField>? authFields;

  /// Auth key of the schema.
  core.String? authKey;

  /// Auth type of the schema.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "USER_PASSWORD" : Username and Password Authentication.
  /// - "OAUTH2_JWT_BEARER" : JSON Web Token (JWT) Profile for Oauth 2.0
  /// Authorization Grant based authentication
  /// - "OAUTH2_CLIENT_CREDENTIALS" : Oauth 2.0 Client Credentials Grant
  /// Authentication
  /// - "SSH_PUBLIC_KEY" : SSH Public Key Authentication
  /// - "OAUTH2_AUTH_CODE_FLOW" : Oauth 2.0 Authorization Code Flow
  /// - "GOOGLE_AUTHENTICATION" : Google authentication
  /// - "OAUTH2_AUTH_CODE_FLOW_GOOGLE_MANAGED" : Oauth 2.0 Authorization Code
  /// Flow with Google Provided OAuth Client
  core.String? authType;

  /// Description of the schema.
  core.String? description;

  /// Display name of the schema.
  core.String? displayName;

  /// Whether the auth schema is the default one.
  core.bool? isDefault;

  AuthSchema({
    this.authFields,
    this.authKey,
    this.authType,
    this.description,
    this.displayName,
    this.isDefault,
  });

  AuthSchema.fromJson(core.Map json_)
    : this(
        authFields:
            (json_['authFields'] as core.List?)
                ?.map(
                  (value) => AuthField.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authKey: json_['authKey'] as core.String?,
        authType: json_['authType'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        isDefault: json_['isDefault'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authFields != null) 'authFields': authFields!,
    if (authKey != null) 'authKey': authKey!,
    if (authType != null) 'authType': authType!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (isDefault != null) 'isDefault': isDefault!,
  };
}

/// This configuration captures the details required to render an authorization
/// link for the OAuth Authorization Code Flow.
class AuthorizationCodeLink {
  /// The client ID assigned to the Google Cloud Connectors OAuth app for the
  /// connector data source.
  ///
  /// Optional.
  core.String? clientId;

  /// The client secret assigned to the Google Cloud Connectors OAuth app for
  /// the connector data source.
  ///
  /// Optional.
  Secret? clientSecret;

  /// Whether to enable PKCE for the auth code flow.
  ///
  /// Optional.
  core.bool? enablePkce;

  /// Omit query params from the redirect URI.
  ///
  /// Optional.
  core.bool? omitQueryParams;

  /// The scopes for which the user will authorize Google Cloud Connectors on
  /// the connector data source.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  /// The base URI the user must click to trigger the authorization code login
  /// flow.
  ///
  /// Optional.
  core.String? uri;

  AuthorizationCodeLink({
    this.clientId,
    this.clientSecret,
    this.enablePkce,
    this.omitQueryParams,
    this.scopes,
    this.uri,
  });

  AuthorizationCodeLink.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret:
            json_.containsKey('clientSecret')
                ? Secret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enablePkce: json_['enablePkce'] as core.bool?,
        omitQueryParams: json_['omitQueryParams'] as core.bool?,
        scopes:
            (json_['scopes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
    if (enablePkce != null) 'enablePkce': enablePkce!,
    if (omitQueryParams != null) 'omitQueryParams': omitQueryParams!,
    if (scopes != null) 'scopes': scopes!,
    if (uri != null) 'uri': uri!,
  };
}

/// Billing config for the connection.
typedef BillingConfig = $BillingConfig;

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
        condition:
            json_.containsKey('condition')
                ? Expr.fromJson(
                  json_['condition'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        members:
            (json_['members'] as core.List?)
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

/// ConfigVariable represents a configuration variable present in a Connection.
///
/// or AuthConfig.
class ConfigVariable {
  /// Value is a bool.
  core.bool? boolValue;

  /// Value is a Encryption Key.
  EncryptionKey? encryptionKeyValue;

  /// Value is an integer
  core.String? intValue;

  /// Key of the config variable.
  ///
  /// Optional.
  core.String? key;

  /// Value is a secret.
  Secret? secretValue;

  /// Value is a string.
  core.String? stringValue;

  ConfigVariable({
    this.boolValue,
    this.encryptionKeyValue,
    this.intValue,
    this.key,
    this.secretValue,
    this.stringValue,
  });

  ConfigVariable.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        encryptionKeyValue:
            json_.containsKey('encryptionKeyValue')
                ? EncryptionKey.fromJson(
                  json_['encryptionKeyValue']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        intValue: json_['intValue'] as core.String?,
        key: json_['key'] as core.String?,
        secretValue:
            json_.containsKey('secretValue')
                ? Secret.fromJson(
                  json_['secretValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boolValue != null) 'boolValue': boolValue!,
    if (encryptionKeyValue != null) 'encryptionKeyValue': encryptionKeyValue!,
    if (intValue != null) 'intValue': intValue!,
    if (key != null) 'key': key!,
    if (secretValue != null) 'secretValue': secretValue!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

/// ConfigVariableTemplate provides metadata about a `ConfigVariable` that is
/// used in a Connection.
class ConfigVariableTemplate {
  /// Authorization code link options.
  ///
  /// To be populated if `ValueType` is `AUTHORIZATION_CODE`
  ///
  /// Optional.
  AuthorizationCodeLink? authorizationCodeLink;

  /// Description.
  ///
  /// Optional.
  core.String? description;

  /// Display name of the parameter.
  ///
  /// Optional.
  core.String? displayName;

  /// Enum options.
  ///
  /// To be populated if `ValueType` is `ENUM`
  ///
  /// Optional.
  core.List<EnumOption>? enumOptions;

  /// enum source denotes the source of api to fill the enum options
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENUM_SOURCE_UNSPECIFIED" : Api type unspecified.
  /// - "EVENT_TYPES_API" : list event types.
  core.String? enumSource;

  /// Indicates if current template is part of advanced settings
  ///
  /// Optional.
  core.bool? isAdvanced;

  /// Key of the config variable.
  ///
  /// Optional.
  core.String? key;

  /// Location Tyep denotes where this value should be sent in BYOC connections.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LOCATION_TYPE_UNSPECIFIED" : Location type unspecified.
  /// - "HEADER" : Request header.
  /// - "PAYLOAD" : Request Payload.
  /// - "QUERY_PARAM" : Request query param.
  /// - "PATH_PARAM" : Request path param.
  core.String? locationType;

  /// MultipleSelectConfig represents the multiple options for a config
  /// variable.
  ///
  /// Optional.
  MultipleSelectConfig? multipleSelectConfig;

  /// Flag represents that this `ConfigVariable` must be provided for a
  /// connection.
  ///
  /// Optional.
  core.bool? required;

  /// Condition under which a field would be required.
  ///
  /// The condition can be represented in the form of a logical expression.
  ///
  /// Optional.
  LogicalExpression? requiredCondition;

  /// Role grant configuration for the config variable.
  ///
  /// Optional.
  RoleGrant? roleGrant;

  /// State of the config variable.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Status is unspecified.
  /// - "ACTIVE" : Config variable is active
  /// - "DEPRECATED" : Config variable is deprecated.
  core.String? state;

  /// Regular expression in RE2 syntax used for validating the `value` of a
  /// `ConfigVariable`.
  ///
  /// Optional.
  core.String? validationRegex;

  /// Type of the parameter: string, int, bool etc.
  ///
  /// consider custom type for the benefit for the validation.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "VALUE_TYPE_UNSPECIFIED" : Value type is not specified.
  /// - "STRING" : Value type is string.
  /// - "INT" : Value type is integer.
  /// - "BOOL" : Value type is boolean.
  /// - "SECRET" : Value type is secret.
  /// - "ENUM" : Value type is enum.
  /// - "AUTHORIZATION_CODE" : Value type is authorization code.
  /// - "ENCRYPTION_KEY" : Encryption Key.
  /// - "MULTIPLE_SELECT" : Value type is multiple select.
  core.String? valueType;

  ConfigVariableTemplate({
    this.authorizationCodeLink,
    this.description,
    this.displayName,
    this.enumOptions,
    this.enumSource,
    this.isAdvanced,
    this.key,
    this.locationType,
    this.multipleSelectConfig,
    this.required,
    this.requiredCondition,
    this.roleGrant,
    this.state,
    this.validationRegex,
    this.valueType,
  });

  ConfigVariableTemplate.fromJson(core.Map json_)
    : this(
        authorizationCodeLink:
            json_.containsKey('authorizationCodeLink')
                ? AuthorizationCodeLink.fromJson(
                  json_['authorizationCodeLink']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        enumOptions:
            (json_['enumOptions'] as core.List?)
                ?.map(
                  (value) => EnumOption.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        enumSource: json_['enumSource'] as core.String?,
        isAdvanced: json_['isAdvanced'] as core.bool?,
        key: json_['key'] as core.String?,
        locationType: json_['locationType'] as core.String?,
        multipleSelectConfig:
            json_.containsKey('multipleSelectConfig')
                ? MultipleSelectConfig.fromJson(
                  json_['multipleSelectConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        required: json_['required'] as core.bool?,
        requiredCondition:
            json_.containsKey('requiredCondition')
                ? LogicalExpression.fromJson(
                  json_['requiredCondition']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        roleGrant:
            json_.containsKey('roleGrant')
                ? RoleGrant.fromJson(
                  json_['roleGrant'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        state: json_['state'] as core.String?,
        validationRegex: json_['validationRegex'] as core.String?,
        valueType: json_['valueType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authorizationCodeLink != null)
      'authorizationCodeLink': authorizationCodeLink!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (enumOptions != null) 'enumOptions': enumOptions!,
    if (enumSource != null) 'enumSource': enumSource!,
    if (isAdvanced != null) 'isAdvanced': isAdvanced!,
    if (key != null) 'key': key!,
    if (locationType != null) 'locationType': locationType!,
    if (multipleSelectConfig != null)
      'multipleSelectConfig': multipleSelectConfig!,
    if (required != null) 'required': required!,
    if (requiredCondition != null) 'requiredCondition': requiredCondition!,
    if (roleGrant != null) 'roleGrant': roleGrant!,
    if (state != null) 'state': state!,
    if (validationRegex != null) 'validationRegex': validationRegex!,
    if (valueType != null) 'valueType': valueType!,
  };
}

/// Connection represents an instance of connector.
class Connection {
  /// Async operations enabled for the connection.
  ///
  /// If Async Operations is enabled, Connection allows the customers to
  /// initiate async long running operations using the actions API.
  ///
  /// Optional.
  core.bool? asyncOperationsEnabled;

  /// Configuration for establishing the connection's authentication with an
  /// external system.
  ///
  /// Optional.
  AuthConfig? authConfig;

  /// Auth override enabled for the connection.
  ///
  /// If Auth Override is enabled, Connection allows the backend service auth to
  /// be overridden in the entities/actions API.
  ///
  /// Optional.
  core.bool? authOverrideEnabled;

  /// Billing config for the connection.
  ///
  /// Output only.
  BillingConfig? billingConfig;

  /// Configuration for configuring the connection with an external system.
  ///
  /// Optional.
  core.List<ConfigVariable>? configVariables;

  /// Connection revision.
  ///
  /// This field is only updated when the connection is created or updated by
  /// User.
  ///
  /// Output only.
  core.String? connectionRevision;

  /// Connector version on which the connection is created.
  ///
  /// The format is: projects / * /locations / * /providers / * /connectors / *
  /// /versions / * Only global location is supported for ConnectorVersion
  /// resource.
  ///
  /// Required.
  core.String? connectorVersion;

  /// Infra configs supported by Connector Version.
  ///
  /// Output only.
  ConnectorVersionInfraConfig? connectorVersionInfraConfig;

  /// Flag to mark the version indicating the launch stage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : LAUNCH_STAGE_UNSPECIFIED.
  /// - "PREVIEW" : PREVIEW.
  /// - "GA" : GA.
  /// - "DEPRECATED" : DEPRECATED.
  /// - "TEST" : TEST.
  /// - "PRIVATE_PREVIEW" : PRIVATE_PREVIEW.
  core.String? connectorVersionLaunchStage;

  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Configuration of the Connector's destination.
  ///
  /// Only accepted for Connectors that accepts user defined destination(s).
  ///
  /// Optional.
  core.List<DestinationConfig>? destinationConfigs;

  /// GCR location where the envoy image is stored.
  ///
  /// formatted like: gcr.io/{bucketName}/{imageName}
  ///
  /// Output only.
  core.String? envoyImageLocation;

  /// Additional Oauth2.0 Auth config for EUA.
  ///
  /// If the connection is configured using non-OAuth authentication but OAuth
  /// needs to be used for EUA, this field can be populated with the OAuth
  /// config. This should be a OAuth2AuthCodeFlow Auth type only.
  ///
  /// Optional.
  AuthConfig? euaOauthAuthConfig;

  /// Eventing config of a connection
  ///
  /// Optional.
  EventingConfig? eventingConfig;

  /// Eventing enablement type.
  ///
  /// Will be nil if eventing is not enabled.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "EVENTING_ENABLEMENT_TYPE_UNSPECIFIED" : Eventing Enablement Type
  /// Unspecifeied.
  /// - "EVENTING_AND_CONNECTION" : Both connection and eventing.
  /// - "ONLY_EVENTING" : Only Eventing.
  core.String? eventingEnablementType;

  /// Eventing Runtime Data.
  ///
  /// Output only.
  EventingRuntimeData? eventingRuntimeData;

  /// Fallback on admin credentials for the connection.
  ///
  /// If this both auth_override_enabled and fallback_on_admin_credentials are
  /// set to true, the connection will use the admin credentials if the dynamic
  /// auth header is not present during auth override.
  ///
  /// Optional.
  core.bool? fallbackOnAdminCredentials;

  /// The name of the Hostname of the Service Directory service with TLS.
  ///
  /// Output only.
  core.String? host;

  /// GCR location where the runtime image is stored.
  ///
  /// formatted like: gcr.io/{bucketName}/{imageName}
  ///
  /// Output only.
  core.String? imageLocation;

  /// Is trusted tester program enabled for the project.
  ///
  /// Output only.
  core.bool? isTrustedTester;

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

  /// Log configuration for the connection.
  ///
  /// Optional.
  ConnectorsLogConfig? logConfig;

  /// Resource name of the Connection.
  ///
  /// Format: projects/{project}/locations/{location}/connections/{connection}
  ///
  /// Output only.
  core.String? name;

  /// Node configuration for the connection.
  ///
  /// Optional.
  NodeConfig? nodeConfig;

  /// Service account needed for runtime plane to access Google Cloud resources.
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

  /// Ssl config of a connection
  ///
  /// Optional.
  SslConfig? sslConfig;

  /// Current status of the connection.
  ///
  /// Output only.
  ConnectionStatus? status;

  /// This subscription type enum states the subscription type of the project.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "SUBSCRIPTION_TYPE_UNSPECIFIED" : Unspecified subscription type.
  /// - "PAY_G" : PayG subscription.
  /// - "PAID" : Paid Subscription.
  core.String? subscriptionType;

  /// Suspended indicates if a user has suspended a connection or not.
  ///
  /// Optional.
  core.bool? suspended;

  /// The name of the Service Directory service with TLS.
  ///
  /// Output only.
  core.String? tlsServiceDirectory;

  /// Traffic shaping configuration for the connection.
  ///
  /// Optional.
  core.List<TrafficShapingConfig>? trafficShapingConfigs;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  Connection({
    this.asyncOperationsEnabled,
    this.authConfig,
    this.authOverrideEnabled,
    this.billingConfig,
    this.configVariables,
    this.connectionRevision,
    this.connectorVersion,
    this.connectorVersionInfraConfig,
    this.connectorVersionLaunchStage,
    this.createTime,
    this.description,
    this.destinationConfigs,
    this.envoyImageLocation,
    this.euaOauthAuthConfig,
    this.eventingConfig,
    this.eventingEnablementType,
    this.eventingRuntimeData,
    this.fallbackOnAdminCredentials,
    this.host,
    this.imageLocation,
    this.isTrustedTester,
    this.labels,
    this.lockConfig,
    this.logConfig,
    this.name,
    this.nodeConfig,
    this.serviceAccount,
    this.serviceDirectory,
    this.sslConfig,
    this.status,
    this.subscriptionType,
    this.suspended,
    this.tlsServiceDirectory,
    this.trafficShapingConfigs,
    this.updateTime,
  });

  Connection.fromJson(core.Map json_)
    : this(
        asyncOperationsEnabled: json_['asyncOperationsEnabled'] as core.bool?,
        authConfig:
            json_.containsKey('authConfig')
                ? AuthConfig.fromJson(
                  json_['authConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        authOverrideEnabled: json_['authOverrideEnabled'] as core.bool?,
        billingConfig:
            json_.containsKey('billingConfig')
                ? BillingConfig.fromJson(
                  json_['billingConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        configVariables:
            (json_['configVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        connectionRevision: json_['connectionRevision'] as core.String?,
        connectorVersion: json_['connectorVersion'] as core.String?,
        connectorVersionInfraConfig:
            json_.containsKey('connectorVersionInfraConfig')
                ? ConnectorVersionInfraConfig.fromJson(
                  json_['connectorVersionInfraConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        connectorVersionLaunchStage:
            json_['connectorVersionLaunchStage'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        destinationConfigs:
            (json_['destinationConfigs'] as core.List?)
                ?.map(
                  (value) => DestinationConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        envoyImageLocation: json_['envoyImageLocation'] as core.String?,
        euaOauthAuthConfig:
            json_.containsKey('euaOauthAuthConfig')
                ? AuthConfig.fromJson(
                  json_['euaOauthAuthConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventingConfig:
            json_.containsKey('eventingConfig')
                ? EventingConfig.fromJson(
                  json_['eventingConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventingEnablementType: json_['eventingEnablementType'] as core.String?,
        eventingRuntimeData:
            json_.containsKey('eventingRuntimeData')
                ? EventingRuntimeData.fromJson(
                  json_['eventingRuntimeData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        fallbackOnAdminCredentials:
            json_['fallbackOnAdminCredentials'] as core.bool?,
        host: json_['host'] as core.String?,
        imageLocation: json_['imageLocation'] as core.String?,
        isTrustedTester: json_['isTrustedTester'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        lockConfig:
            json_.containsKey('lockConfig')
                ? LockConfig.fromJson(
                  json_['lockConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        logConfig:
            json_.containsKey('logConfig')
                ? ConnectorsLogConfig.fromJson(
                  json_['logConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        nodeConfig:
            json_.containsKey('nodeConfig')
                ? NodeConfig.fromJson(
                  json_['nodeConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccount: json_['serviceAccount'] as core.String?,
        serviceDirectory: json_['serviceDirectory'] as core.String?,
        sslConfig:
            json_.containsKey('sslConfig')
                ? SslConfig.fromJson(
                  json_['sslConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        status:
            json_.containsKey('status')
                ? ConnectionStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subscriptionType: json_['subscriptionType'] as core.String?,
        suspended: json_['suspended'] as core.bool?,
        tlsServiceDirectory: json_['tlsServiceDirectory'] as core.String?,
        trafficShapingConfigs:
            (json_['trafficShapingConfigs'] as core.List?)
                ?.map(
                  (value) => TrafficShapingConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asyncOperationsEnabled != null)
      'asyncOperationsEnabled': asyncOperationsEnabled!,
    if (authConfig != null) 'authConfig': authConfig!,
    if (authOverrideEnabled != null)
      'authOverrideEnabled': authOverrideEnabled!,
    if (billingConfig != null) 'billingConfig': billingConfig!,
    if (configVariables != null) 'configVariables': configVariables!,
    if (connectionRevision != null) 'connectionRevision': connectionRevision!,
    if (connectorVersion != null) 'connectorVersion': connectorVersion!,
    if (connectorVersionInfraConfig != null)
      'connectorVersionInfraConfig': connectorVersionInfraConfig!,
    if (connectorVersionLaunchStage != null)
      'connectorVersionLaunchStage': connectorVersionLaunchStage!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (destinationConfigs != null) 'destinationConfigs': destinationConfigs!,
    if (envoyImageLocation != null) 'envoyImageLocation': envoyImageLocation!,
    if (euaOauthAuthConfig != null) 'euaOauthAuthConfig': euaOauthAuthConfig!,
    if (eventingConfig != null) 'eventingConfig': eventingConfig!,
    if (eventingEnablementType != null)
      'eventingEnablementType': eventingEnablementType!,
    if (eventingRuntimeData != null)
      'eventingRuntimeData': eventingRuntimeData!,
    if (fallbackOnAdminCredentials != null)
      'fallbackOnAdminCredentials': fallbackOnAdminCredentials!,
    if (host != null) 'host': host!,
    if (imageLocation != null) 'imageLocation': imageLocation!,
    if (isTrustedTester != null) 'isTrustedTester': isTrustedTester!,
    if (labels != null) 'labels': labels!,
    if (lockConfig != null) 'lockConfig': lockConfig!,
    if (logConfig != null) 'logConfig': logConfig!,
    if (name != null) 'name': name!,
    if (nodeConfig != null) 'nodeConfig': nodeConfig!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (serviceDirectory != null) 'serviceDirectory': serviceDirectory!,
    if (sslConfig != null) 'sslConfig': sslConfig!,
    if (status != null) 'status': status!,
    if (subscriptionType != null) 'subscriptionType': subscriptionType!,
    if (suspended != null) 'suspended': suspended!,
    if (tlsServiceDirectory != null)
      'tlsServiceDirectory': tlsServiceDirectory!,
    if (trafficShapingConfigs != null)
      'trafficShapingConfigs': trafficShapingConfigs!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// ConnectionSchemaMetadata is the singleton resource of each connection.
///
/// It includes the entity and action names of runtime resources exposed by a
/// connection backend.
class ConnectionSchemaMetadata {
  /// List of actions.
  ///
  /// Output only.
  core.List<core.String>? actions;

  /// List of entity names.
  ///
  /// Output only.
  core.List<core.String>? entities;

  /// Error message for users.
  core.String? errorMessage;

  /// Resource name.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/connections/{connection}/connectionSchemaMetadata
  ///
  /// Output only.
  core.String? name;

  /// Timestamp when the connection runtime schema refresh was triggered.
  ///
  /// Output only.
  core.String? refreshTime;

  /// The current state of runtime schema.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default state.
  /// - "REFRESHING" : Schema refresh is in progress.
  /// - "UPDATED" : Schema has been updated.
  /// - "REFRESHING_SCHEMA_METADATA" : Schema refresh for metadata is in
  /// progress.
  /// - "UPDATED_SCHEMA_METADATA" : Schema metadata has been updated.
  /// - "REFRESH_SCHEMA_METADATA_FAILED" : Failed to refresh schema metadata
  /// - "REFRESHING_FULL_SCHEMA" : Triggered full schema refresh
  /// - "UPDATED_FULL_SCHEMA" : Updated full schema
  core.String? state;

  /// Timestamp when the connection runtime schema was updated.
  ///
  /// Output only.
  core.String? updateTime;

  ConnectionSchemaMetadata({
    this.actions,
    this.entities,
    this.errorMessage,
    this.name,
    this.refreshTime,
    this.state,
    this.updateTime,
  });

  ConnectionSchemaMetadata.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        entities:
            (json_['entities'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        errorMessage: json_['errorMessage'] as core.String?,
        name: json_['name'] as core.String?,
        refreshTime: json_['refreshTime'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (entities != null) 'entities': entities!,
    if (errorMessage != null) 'errorMessage': errorMessage!,
    if (name != null) 'name': name!,
    if (refreshTime != null) 'refreshTime': refreshTime!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// ConnectionStatus indicates the state of the connection.
typedef ConnectionStatus = $ConnectionStatus;

/// Connectors indicates a specific connector type, e.x. Salesforce, SAP etc.
class Connector {
  /// Category of the connector.
  ///
  /// Output only.
  core.String? category;

  /// The type of the connector.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "CONNECTOR_TYPE_UNSPECIFIED" : Default value.
  /// - "CONNECTOR_TYPE_GOOGLE" : Google connectors.
  /// - "CONNECTOR_TYPE_TECHNICAL" : Technical connectors.
  /// - "CONNECTOR_TYPE_THIRD_PARTY" : Third Party connectors.
  core.String? connectorType;

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

  /// Eventing details.
  ///
  /// Will be null if eventing is not supported.
  ///
  /// Output only.
  EventingDetails? eventingDetails;

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
  /// - "TEST" : TEST.
  /// - "PRIVATE_PREVIEW" : PRIVATE_PREVIEW.
  core.String? launchStage;

  /// Marketplace connector details.
  ///
  /// Will be null if the connector is not marketplace connector.
  ///
  /// Output only.
  MarketplaceConnectorDetails? marketplaceConnectorDetails;

  /// Resource name of the Connector.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}
  /// Only global location is supported for Connector resource.
  ///
  /// Output only.
  core.String? name;

  /// Tags of the connector.
  ///
  /// Output only.
  core.List<core.String>? tags;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  /// Cloud storage location of icons etc consumed by UI.
  ///
  /// Output only.
  core.String? webAssetsLocation;

  Connector({
    this.category,
    this.connectorType,
    this.createTime,
    this.description,
    this.displayName,
    this.documentationUri,
    this.eventingDetails,
    this.externalUri,
    this.labels,
    this.launchStage,
    this.marketplaceConnectorDetails,
    this.name,
    this.tags,
    this.updateTime,
    this.webAssetsLocation,
  });

  Connector.fromJson(core.Map json_)
    : this(
        category: json_['category'] as core.String?,
        connectorType: json_['connectorType'] as core.String?,
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentationUri: json_['documentationUri'] as core.String?,
        eventingDetails:
            json_.containsKey('eventingDetails')
                ? EventingDetails.fromJson(
                  json_['eventingDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        externalUri: json_['externalUri'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        launchStage: json_['launchStage'] as core.String?,
        marketplaceConnectorDetails:
            json_.containsKey('marketplaceConnectorDetails')
                ? MarketplaceConnectorDetails.fromJson(
                  json_['marketplaceConnectorDetails']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
        webAssetsLocation: json_['webAssetsLocation'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (category != null) 'category': category!,
    if (connectorType != null) 'connectorType': connectorType!,
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (documentationUri != null) 'documentationUri': documentationUri!,
    if (eventingDetails != null) 'eventingDetails': eventingDetails!,
    if (externalUri != null) 'externalUri': externalUri!,
    if (labels != null) 'labels': labels!,
    if (launchStage != null) 'launchStage': launchStage!,
    if (marketplaceConnectorDetails != null)
      'marketplaceConnectorDetails': marketplaceConnectorDetails!,
    if (name != null) 'name': name!,
    if (tags != null) 'tags': tags!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (webAssetsLocation != null) 'webAssetsLocation': webAssetsLocation!,
  };
}

/// This cofiguration provides infra configs like rate limit threshold which
/// need to be configurable for every connector version
class ConnectorInfraConfig {
  /// Indicates that the Cloud Run CPU should always be allocated.
  core.bool? alwaysAllocateCpu;

  /// The window used for ratelimiting runtime requests to connections.
  core.String? connectionRatelimitWindowSeconds;

  /// Indicate whether connector versioning is enabled.
  core.bool? connectorVersioningEnabled;

  /// Indicate whether connector is deployed on GKE/CloudRun
  /// Possible string values are:
  /// - "DEPLOYMENT_MODEL_UNSPECIFIED" : Deployment model is not specified.
  /// - "GKE_MST" : Default model gke mst.
  /// - "CLOUD_RUN_MST" : Cloud run mst.
  core.String? deploymentModel;

  /// HPA autoscaling config.
  HPAConfig? hpaConfig;

  /// Max QPS supported for internal requests originating from Connd.
  core.String? internalclientRatelimitThreshold;

  /// Max Instance Request Conncurrency for Cloud Run service.
  core.int? maxInstanceRequestConcurrency;

  /// Indicate whether connector is being migrated to cloud run deployment
  /// model.
  core.bool? migrateDeploymentModel;

  /// Indicate whether connector is being migrated to TLS.
  core.bool? migrateTls;

  /// Indicate whether connector is being migrated to use direct VPC egress.
  /// Possible string values are:
  /// - "NETWORK_EGRESS_MODE_UNSPECIFIED" : Network egress mode is not
  /// specified.
  /// - "SERVERLESS_VPC_ACCESS_CONNECTOR" : Default model VPC Access Connector.
  /// - "DIRECT_VPC_EGRESS" : Direct VPC Egress.
  core.String? networkEgressMode;

  /// Indicate whether cloud spanner is required for connector job.
  core.bool? provisionCloudSpanner;

  /// Indicate whether memstore is required for connector job.
  core.bool? provisionMemstore;

  /// Max QPS supported by the connector version before throttling of requests.
  core.String? ratelimitThreshold;

  /// System resource limits.
  ResourceLimits? resourceLimits;

  /// System resource requests.
  ResourceRequests? resourceRequests;

  /// The name of shared connector deployment.
  core.String? sharedDeployment;

  ConnectorInfraConfig({
    this.alwaysAllocateCpu,
    this.connectionRatelimitWindowSeconds,
    this.connectorVersioningEnabled,
    this.deploymentModel,
    this.hpaConfig,
    this.internalclientRatelimitThreshold,
    this.maxInstanceRequestConcurrency,
    this.migrateDeploymentModel,
    this.migrateTls,
    this.networkEgressMode,
    this.provisionCloudSpanner,
    this.provisionMemstore,
    this.ratelimitThreshold,
    this.resourceLimits,
    this.resourceRequests,
    this.sharedDeployment,
  });

  ConnectorInfraConfig.fromJson(core.Map json_)
    : this(
        alwaysAllocateCpu: json_['alwaysAllocateCpu'] as core.bool?,
        connectionRatelimitWindowSeconds:
            json_['connectionRatelimitWindowSeconds'] as core.String?,
        connectorVersioningEnabled:
            json_['connectorVersioningEnabled'] as core.bool?,
        deploymentModel: json_['deploymentModel'] as core.String?,
        hpaConfig:
            json_.containsKey('hpaConfig')
                ? HPAConfig.fromJson(
                  json_['hpaConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        internalclientRatelimitThreshold:
            json_['internalclientRatelimitThreshold'] as core.String?,
        maxInstanceRequestConcurrency:
            json_['maxInstanceRequestConcurrency'] as core.int?,
        migrateDeploymentModel: json_['migrateDeploymentModel'] as core.bool?,
        migrateTls: json_['migrateTls'] as core.bool?,
        networkEgressMode: json_['networkEgressMode'] as core.String?,
        provisionCloudSpanner: json_['provisionCloudSpanner'] as core.bool?,
        provisionMemstore: json_['provisionMemstore'] as core.bool?,
        ratelimitThreshold: json_['ratelimitThreshold'] as core.String?,
        resourceLimits:
            json_.containsKey('resourceLimits')
                ? ResourceLimits.fromJson(
                  json_['resourceLimits']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceRequests:
            json_.containsKey('resourceRequests')
                ? ResourceRequests.fromJson(
                  json_['resourceRequests']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sharedDeployment: json_['sharedDeployment'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (alwaysAllocateCpu != null) 'alwaysAllocateCpu': alwaysAllocateCpu!,
    if (connectionRatelimitWindowSeconds != null)
      'connectionRatelimitWindowSeconds': connectionRatelimitWindowSeconds!,
    if (connectorVersioningEnabled != null)
      'connectorVersioningEnabled': connectorVersioningEnabled!,
    if (deploymentModel != null) 'deploymentModel': deploymentModel!,
    if (hpaConfig != null) 'hpaConfig': hpaConfig!,
    if (internalclientRatelimitThreshold != null)
      'internalclientRatelimitThreshold': internalclientRatelimitThreshold!,
    if (maxInstanceRequestConcurrency != null)
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency!,
    if (migrateDeploymentModel != null)
      'migrateDeploymentModel': migrateDeploymentModel!,
    if (migrateTls != null) 'migrateTls': migrateTls!,
    if (networkEgressMode != null) 'networkEgressMode': networkEgressMode!,
    if (provisionCloudSpanner != null)
      'provisionCloudSpanner': provisionCloudSpanner!,
    if (provisionMemstore != null) 'provisionMemstore': provisionMemstore!,
    if (ratelimitThreshold != null) 'ratelimitThreshold': ratelimitThreshold!,
    if (resourceLimits != null) 'resourceLimits': resourceLimits!,
    if (resourceRequests != null) 'resourceRequests': resourceRequests!,
    if (sharedDeployment != null) 'sharedDeployment': sharedDeployment!,
  };
}

/// ConnectorVersion indicates a specific version of a connector.
class ConnectorVersion {
  /// List of auth configs supported by the Connector Version.
  ///
  /// Output only.
  core.List<AuthConfigTemplate>? authConfigTemplates;

  /// Flag to mark the dynamic auth override.
  ///
  /// Output only.
  core.bool? authOverrideEnabled;

  /// List of config variables needed to create a connection.
  ///
  /// Output only.
  core.List<ConfigVariableTemplate>? configVariableTemplates;

  /// Infra configs supported by Connector.
  ///
  /// Output only.
  ConnectorInfraConfig? connectorInfraConfig;

  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// List of destination configs needed to create a connection.
  ///
  /// Output only.
  core.List<DestinationConfigTemplate>? destinationConfigTemplates;

  /// Display name.
  ///
  /// Output only.
  core.String? displayName;

  /// Configuration for Egress Control.
  ///
  /// Output only.
  EgressControlConfig? egressControlConfig;

  /// Eventing configuration supported by the Connector.
  ///
  /// Output only.
  EventingConfigTemplate? eventingConfigTemplate;

  /// Is custom actions supported.
  ///
  /// Output only.
  core.bool? isCustomActionsSupported;

  /// Is custom entities supported.
  ///
  /// Output only.
  core.bool? isCustomEntitiesSupported;

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
  /// - "TEST" : TEST.
  /// - "PRIVATE_PREVIEW" : PRIVATE_PREVIEW.
  core.String? launchStage;

  /// Resource name of the Version.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}/versions/{version}
  /// Only global location is supported for Connector resource.
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

  /// Connection Schema Refresh Config
  SchemaRefreshConfig? schemaRefreshConfig;

  /// Ssl configuration supported by the Connector.
  ///
  /// Output only.
  SslConfigTemplate? sslConfigTemplate;

  /// Information about the runtime features supported by the Connector.
  ///
  /// Output only.
  SupportedRuntimeFeatures? supportedRuntimeFeatures;

  /// Supported standard actions.
  ///
  /// Output only.
  core.List<StandardAction>? supportedStandardActions;

  /// Supported standard entities.
  ///
  /// Output only.
  core.List<StandardEntity>? supportedStandardEntities;

  /// Unsupported connection types.
  ///
  /// Output only.
  core.List<core.String>? unsupportedConnectionTypes;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  /// VPCSC config for the connector.
  ///
  /// Output only.
  VpcscConfig? vpcscConfig;

  ConnectorVersion({
    this.authConfigTemplates,
    this.authOverrideEnabled,
    this.configVariableTemplates,
    this.connectorInfraConfig,
    this.createTime,
    this.destinationConfigTemplates,
    this.displayName,
    this.egressControlConfig,
    this.eventingConfigTemplate,
    this.isCustomActionsSupported,
    this.isCustomEntitiesSupported,
    this.labels,
    this.launchStage,
    this.name,
    this.releaseVersion,
    this.roleGrant,
    this.roleGrants,
    this.schemaRefreshConfig,
    this.sslConfigTemplate,
    this.supportedRuntimeFeatures,
    this.supportedStandardActions,
    this.supportedStandardEntities,
    this.unsupportedConnectionTypes,
    this.updateTime,
    this.vpcscConfig,
  });

  ConnectorVersion.fromJson(core.Map json_)
    : this(
        authConfigTemplates:
            (json_['authConfigTemplates'] as core.List?)
                ?.map(
                  (value) => AuthConfigTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authOverrideEnabled: json_['authOverrideEnabled'] as core.bool?,
        configVariableTemplates:
            (json_['configVariableTemplates'] as core.List?)
                ?.map(
                  (value) => ConfigVariableTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        connectorInfraConfig:
            json_.containsKey('connectorInfraConfig')
                ? ConnectorInfraConfig.fromJson(
                  json_['connectorInfraConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        destinationConfigTemplates:
            (json_['destinationConfigTemplates'] as core.List?)
                ?.map(
                  (value) => DestinationConfigTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        displayName: json_['displayName'] as core.String?,
        egressControlConfig:
            json_.containsKey('egressControlConfig')
                ? EgressControlConfig.fromJson(
                  json_['egressControlConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventingConfigTemplate:
            json_.containsKey('eventingConfigTemplate')
                ? EventingConfigTemplate.fromJson(
                  json_['eventingConfigTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        isCustomActionsSupported:
            json_['isCustomActionsSupported'] as core.bool?,
        isCustomEntitiesSupported:
            json_['isCustomEntitiesSupported'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        launchStage: json_['launchStage'] as core.String?,
        name: json_['name'] as core.String?,
        releaseVersion: json_['releaseVersion'] as core.String?,
        roleGrant:
            json_.containsKey('roleGrant')
                ? RoleGrant.fromJson(
                  json_['roleGrant'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        roleGrants:
            (json_['roleGrants'] as core.List?)
                ?.map(
                  (value) => RoleGrant.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        schemaRefreshConfig:
            json_.containsKey('schemaRefreshConfig')
                ? SchemaRefreshConfig.fromJson(
                  json_['schemaRefreshConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sslConfigTemplate:
            json_.containsKey('sslConfigTemplate')
                ? SslConfigTemplate.fromJson(
                  json_['sslConfigTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        supportedRuntimeFeatures:
            json_.containsKey('supportedRuntimeFeatures')
                ? SupportedRuntimeFeatures.fromJson(
                  json_['supportedRuntimeFeatures']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        supportedStandardActions:
            (json_['supportedStandardActions'] as core.List?)
                ?.map(
                  (value) => StandardAction.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        supportedStandardEntities:
            (json_['supportedStandardEntities'] as core.List?)
                ?.map(
                  (value) => StandardEntity.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unsupportedConnectionTypes:
            (json_['unsupportedConnectionTypes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
        vpcscConfig:
            json_.containsKey('vpcscConfig')
                ? VpcscConfig.fromJson(
                  json_['vpcscConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authConfigTemplates != null)
      'authConfigTemplates': authConfigTemplates!,
    if (authOverrideEnabled != null)
      'authOverrideEnabled': authOverrideEnabled!,
    if (configVariableTemplates != null)
      'configVariableTemplates': configVariableTemplates!,
    if (connectorInfraConfig != null)
      'connectorInfraConfig': connectorInfraConfig!,
    if (createTime != null) 'createTime': createTime!,
    if (destinationConfigTemplates != null)
      'destinationConfigTemplates': destinationConfigTemplates!,
    if (displayName != null) 'displayName': displayName!,
    if (egressControlConfig != null)
      'egressControlConfig': egressControlConfig!,
    if (eventingConfigTemplate != null)
      'eventingConfigTemplate': eventingConfigTemplate!,
    if (isCustomActionsSupported != null)
      'isCustomActionsSupported': isCustomActionsSupported!,
    if (isCustomEntitiesSupported != null)
      'isCustomEntitiesSupported': isCustomEntitiesSupported!,
    if (labels != null) 'labels': labels!,
    if (launchStage != null) 'launchStage': launchStage!,
    if (name != null) 'name': name!,
    if (releaseVersion != null) 'releaseVersion': releaseVersion!,
    if (roleGrant != null) 'roleGrant': roleGrant!,
    if (roleGrants != null) 'roleGrants': roleGrants!,
    if (schemaRefreshConfig != null)
      'schemaRefreshConfig': schemaRefreshConfig!,
    if (sslConfigTemplate != null) 'sslConfigTemplate': sslConfigTemplate!,
    if (supportedRuntimeFeatures != null)
      'supportedRuntimeFeatures': supportedRuntimeFeatures!,
    if (supportedStandardActions != null)
      'supportedStandardActions': supportedStandardActions!,
    if (supportedStandardEntities != null)
      'supportedStandardEntities': supportedStandardEntities!,
    if (unsupportedConnectionTypes != null)
      'unsupportedConnectionTypes': unsupportedConnectionTypes!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (vpcscConfig != null) 'vpcscConfig': vpcscConfig!,
  };
}

/// This configuration provides infra configs like rate limit threshold which
/// need to be configurable for every connector version
class ConnectorVersionInfraConfig {
  /// The window used for ratelimiting runtime requests to connections.
  ///
  /// Output only.
  core.String? connectionRatelimitWindowSeconds;

  /// Indicates whether connector is deployed on GKE/CloudRun
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_MODEL_UNSPECIFIED" : Deployment model is not specified.
  /// - "GKE_MST" : Default model gke mst.
  /// - "CLOUD_RUN_MST" : Cloud run mst.
  core.String? deploymentModel;

  /// Status of the deployment model migration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "DEPLOYMENT_MODEL_MIGRATION_STATE_UNSPECIFIED" : Deployment model
  /// migration state is not specified.
  /// - "IN_PROGRESS" : Deployment model migration is in progress.
  /// - "COMPLETED" : Deployment model migration is completed.
  /// - "ROLLEDBACK" : Deployment model migration rolledback.
  /// - "ROLLBACK_IN_PROGRESS" : Deployment model migration rollback in
  /// progress.
  core.String? deploymentModelMigrationState;

  /// HPA autoscaling config.
  ///
  /// Output only.
  HPAConfig? hpaConfig;

  /// Max QPS supported for internal requests originating from Connd.
  ///
  /// Output only.
  core.String? internalclientRatelimitThreshold;

  /// Max instance request concurrency.
  ///
  /// Output only.
  core.int? maxInstanceRequestConcurrency;

  /// Max QPS supported by the connector version before throttling of requests.
  ///
  /// Output only.
  core.String? ratelimitThreshold;

  /// System resource limits.
  ///
  /// Output only.
  ResourceLimits? resourceLimits;

  /// System resource requests.
  ///
  /// Output only.
  ResourceRequests? resourceRequests;

  /// The name of shared connector deployment.
  ///
  /// Output only.
  core.String? sharedDeployment;

  /// Status of the TLS migration.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TLS_MIGRATION_STATE_UNSPECIFIED" : TLS migration state is not
  /// specified.
  /// - "TLS_MIGRATION_NOT_STARTED" : TLS migration is in progress.
  /// - "TLS_MIGRATION_COMPLETED" : TLS migration is completed.
  core.String? tlsMigrationState;

  ConnectorVersionInfraConfig({
    this.connectionRatelimitWindowSeconds,
    this.deploymentModel,
    this.deploymentModelMigrationState,
    this.hpaConfig,
    this.internalclientRatelimitThreshold,
    this.maxInstanceRequestConcurrency,
    this.ratelimitThreshold,
    this.resourceLimits,
    this.resourceRequests,
    this.sharedDeployment,
    this.tlsMigrationState,
  });

  ConnectorVersionInfraConfig.fromJson(core.Map json_)
    : this(
        connectionRatelimitWindowSeconds:
            json_['connectionRatelimitWindowSeconds'] as core.String?,
        deploymentModel: json_['deploymentModel'] as core.String?,
        deploymentModelMigrationState:
            json_['deploymentModelMigrationState'] as core.String?,
        hpaConfig:
            json_.containsKey('hpaConfig')
                ? HPAConfig.fromJson(
                  json_['hpaConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        internalclientRatelimitThreshold:
            json_['internalclientRatelimitThreshold'] as core.String?,
        maxInstanceRequestConcurrency:
            json_['maxInstanceRequestConcurrency'] as core.int?,
        ratelimitThreshold: json_['ratelimitThreshold'] as core.String?,
        resourceLimits:
            json_.containsKey('resourceLimits')
                ? ResourceLimits.fromJson(
                  json_['resourceLimits']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resourceRequests:
            json_.containsKey('resourceRequests')
                ? ResourceRequests.fromJson(
                  json_['resourceRequests']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sharedDeployment: json_['sharedDeployment'] as core.String?,
        tlsMigrationState: json_['tlsMigrationState'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectionRatelimitWindowSeconds != null)
      'connectionRatelimitWindowSeconds': connectionRatelimitWindowSeconds!,
    if (deploymentModel != null) 'deploymentModel': deploymentModel!,
    if (deploymentModelMigrationState != null)
      'deploymentModelMigrationState': deploymentModelMigrationState!,
    if (hpaConfig != null) 'hpaConfig': hpaConfig!,
    if (internalclientRatelimitThreshold != null)
      'internalclientRatelimitThreshold': internalclientRatelimitThreshold!,
    if (maxInstanceRequestConcurrency != null)
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency!,
    if (ratelimitThreshold != null) 'ratelimitThreshold': ratelimitThreshold!,
    if (resourceLimits != null) 'resourceLimits': resourceLimits!,
    if (resourceRequests != null) 'resourceRequests': resourceRequests!,
    if (sharedDeployment != null) 'sharedDeployment': sharedDeployment!,
    if (tlsMigrationState != null) 'tlsMigrationState': tlsMigrationState!,
  };
}

/// Log configuration for the connection.
typedef ConnectorsLogConfig = $LogConfig;

/// CustomConnector represents the custom connector defined by the customer as
/// part of byoc.
class CustomConnector {
  /// Active connector versions.
  ///
  /// Output only.
  core.List<core.String>? activeConnectorVersions;

  /// All connector versions.
  ///
  /// Output only.
  core.List<core.String>? allConnectorVersions;

  /// All marketplace versions.
  ///
  /// Output only.
  core.List<core.String>? allMarketplaceVersions;

  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Type of the custom connector.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CUSTOM_CONNECTOR_TYPE_UNSPECIFIED" : Connector type is not specified.
  /// - "OPEN_API" : OpenAPI connector.
  /// - "PROTO" : Proto connector.
  /// - "SDK" : SDK connector.
  core.String? customConnectorType;

  /// Description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// Display name.
  ///
  /// Optional.
  core.String? displayName;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Logo of the resource.
  ///
  /// Optional.
  core.String? logo;

  /// Identifier.
  ///
  /// Resource name of the CustomConnector. Format:
  /// projects/{project}/locations/{location}/customConnectors/{connector}
  core.String? name;

  /// Published marketplace versions.
  ///
  /// Output only.
  core.List<core.String>? publishedMarketplaceVersions;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  CustomConnector({
    this.activeConnectorVersions,
    this.allConnectorVersions,
    this.allMarketplaceVersions,
    this.createTime,
    this.customConnectorType,
    this.description,
    this.displayName,
    this.labels,
    this.logo,
    this.name,
    this.publishedMarketplaceVersions,
    this.updateTime,
  });

  CustomConnector.fromJson(core.Map json_)
    : this(
        activeConnectorVersions:
            (json_['activeConnectorVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        allConnectorVersions:
            (json_['allConnectorVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        allMarketplaceVersions:
            (json_['allMarketplaceVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        createTime: json_['createTime'] as core.String?,
        customConnectorType: json_['customConnectorType'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        logo: json_['logo'] as core.String?,
        name: json_['name'] as core.String?,
        publishedMarketplaceVersions:
            (json_['publishedMarketplaceVersions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeConnectorVersions != null)
      'activeConnectorVersions': activeConnectorVersions!,
    if (allConnectorVersions != null)
      'allConnectorVersions': allConnectorVersions!,
    if (allMarketplaceVersions != null)
      'allMarketplaceVersions': allMarketplaceVersions!,
    if (createTime != null) 'createTime': createTime!,
    if (customConnectorType != null)
      'customConnectorType': customConnectorType!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (labels != null) 'labels': labels!,
    if (logo != null) 'logo': logo!,
    if (name != null) 'name': name!,
    if (publishedMarketplaceVersions != null)
      'publishedMarketplaceVersions': publishedMarketplaceVersions!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// CustomConnectorVersion indicates a specific version of a connector.
class CustomConnectorVersion {
  /// Indicates if Async Operations/Connector Job is supported.
  ///
  /// This is only available for SDK based custom connectors.
  ///
  /// Optional.
  core.bool? asyncOperationsSupport;

  /// Authentication config for accessing connector service (facade).
  ///
  /// This is used only when enable_backend_destination_config is true.
  ///
  /// Optional.
  AuthConfig? authConfig;

  /// Auth Config Templates is only used when connector backend is enabled.
  ///
  /// This is used to specify the auth configs supported by the connector
  /// backend service to talk to the actual application backend.
  ///
  /// Optional.
  core.List<AuthConfigTemplate>? authConfigTemplates;

  /// Auth override support.
  ///
  /// Optional.
  core.bool? authOverrideSupport;

  /// Backend variable templates is only used when connector backend is enabled.
  ///
  /// This is used to specify the variables required by the connector backend
  /// service to talk to the actual application backend. This translates to
  /// additional variable templates in the connection config.
  ///
  /// Optional.
  core.List<ConfigVariableTemplate>? backendVariableTemplates;

  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Destination config(s) for accessing connector service (facade).
  ///
  /// This is used only when enable_backend_destination_config is true.
  ///
  /// Optional.
  core.List<DestinationConfig>? destinationConfigs;

  /// Indicates if an intermediatory connectorservice is used as backend.
  ///
  /// When this is enabled, the connector destination and connector auth config
  /// are required. For SDK based connectors, this is always enabled.
  ///
  /// Optional.
  core.bool? enableBackendDestinationConfig;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// Resource name of the Version. Format:
  /// projects/{project}/locations/{location}/customConnectors/{custom_connector}/customConnectorVersions/{custom_connector_version}
  ///
  /// Output only.
  core.String? name;

  /// Partner metadata details.
  ///
  /// This should be populated only when publishing the custom connector to
  /// partner connector.
  ///
  /// Optional.
  PartnerMetadata? partnerMetadata;

  /// Publish status of a custom connector.
  ///
  /// Output only.
  PublishStatus? publishStatus;

  /// Service account used by runtime plane to access auth config secrets.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// Location of the custom connector spec.
  ///
  /// This is only used for Open API based custom connectors. The location can
  /// be either a public url like `https://public-url.com/spec` Or a Google
  /// Cloud Storage location like `gs:///`.
  ///
  /// Optional.
  core.String? specLocation;

  /// Server URLs parsed from the Open API spec.
  ///
  /// This is only used for Open API based custom connectors.
  ///
  /// Output only.
  core.List<core.String>? specServerUrls;

  /// State of the custom connector version.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State Unspecified.
  /// - "ACTIVE" : Active state. By default we set the state to Active.
  /// - "DEPRECATED" : Deprecated state.
  core.String? state;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  CustomConnectorVersion({
    this.asyncOperationsSupport,
    this.authConfig,
    this.authConfigTemplates,
    this.authOverrideSupport,
    this.backendVariableTemplates,
    this.createTime,
    this.destinationConfigs,
    this.enableBackendDestinationConfig,
    this.labels,
    this.name,
    this.partnerMetadata,
    this.publishStatus,
    this.serviceAccount,
    this.specLocation,
    this.specServerUrls,
    this.state,
    this.updateTime,
  });

  CustomConnectorVersion.fromJson(core.Map json_)
    : this(
        asyncOperationsSupport: json_['asyncOperationsSupport'] as core.bool?,
        authConfig:
            json_.containsKey('authConfig')
                ? AuthConfig.fromJson(
                  json_['authConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        authConfigTemplates:
            (json_['authConfigTemplates'] as core.List?)
                ?.map(
                  (value) => AuthConfigTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authOverrideSupport: json_['authOverrideSupport'] as core.bool?,
        backendVariableTemplates:
            (json_['backendVariableTemplates'] as core.List?)
                ?.map(
                  (value) => ConfigVariableTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        destinationConfigs:
            (json_['destinationConfigs'] as core.List?)
                ?.map(
                  (value) => DestinationConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        enableBackendDestinationConfig:
            json_['enableBackendDestinationConfig'] as core.bool?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        partnerMetadata:
            json_.containsKey('partnerMetadata')
                ? PartnerMetadata.fromJson(
                  json_['partnerMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        publishStatus:
            json_.containsKey('publishStatus')
                ? PublishStatus.fromJson(
                  json_['publishStatus'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccount: json_['serviceAccount'] as core.String?,
        specLocation: json_['specLocation'] as core.String?,
        specServerUrls:
            (json_['specServerUrls'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (asyncOperationsSupport != null)
      'asyncOperationsSupport': asyncOperationsSupport!,
    if (authConfig != null) 'authConfig': authConfig!,
    if (authConfigTemplates != null)
      'authConfigTemplates': authConfigTemplates!,
    if (authOverrideSupport != null)
      'authOverrideSupport': authOverrideSupport!,
    if (backendVariableTemplates != null)
      'backendVariableTemplates': backendVariableTemplates!,
    if (createTime != null) 'createTime': createTime!,
    if (destinationConfigs != null) 'destinationConfigs': destinationConfigs!,
    if (enableBackendDestinationConfig != null)
      'enableBackendDestinationConfig': enableBackendDestinationConfig!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (partnerMetadata != null) 'partnerMetadata': partnerMetadata!,
    if (publishStatus != null) 'publishStatus': publishStatus!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (specLocation != null) 'specLocation': specLocation!,
    if (specServerUrls != null) 'specServerUrls': specServerUrls!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Dead Letter configuration details provided by the user.
typedef DeadLetterConfig = $DeadLetterConfig;

/// Request message for ConnectorsService.DeprecateCustomConnectorVersion
typedef DeprecateCustomConnectorVersionRequest = $Empty;
typedef Destination = $Destination;

/// Define the Connectors target endpoint.
class DestinationConfig {
  /// The destinations for the key.
  core.List<Destination>? destinations;

  /// The key is the destination identifier that is supported by the Connector.
  core.String? key;

  DestinationConfig({this.destinations, this.key});

  DestinationConfig.fromJson(core.Map json_)
    : this(
        destinations:
            (json_['destinations'] as core.List?)
                ?.map(
                  (value) => Destination.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        key: json_['key'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (destinations != null) 'destinations': destinations!,
    if (key != null) 'key': key!,
  };
}

/// DestinationConfigTemplate defines required destinations supported by the
/// Connector.
class DestinationConfigTemplate {
  /// Autocomplete suggestions for destination URL field.
  core.List<core.String>? autocompleteSuggestions;

  /// The default port.
  core.int? defaultPort;

  /// Description.
  core.String? description;

  /// Display name of the parameter.
  core.String? displayName;

  /// Whether the current destination tempalate is part of Advanced settings
  core.bool? isAdvanced;

  /// Key of the destination.
  core.String? key;

  /// The maximum number of destinations supported for this key.
  core.int? max;

  /// The minimum number of destinations supported for this key.
  core.int? min;

  /// Whether port number should be provided by customers.
  /// Possible string values are:
  /// - "FIELD_TYPE_UNSPECIFIED"
  /// - "REQUIRED"
  /// - "OPTIONAL"
  /// - "NOT_USED"
  core.String? portFieldType;

  /// Regex pattern for host.
  core.String? regexPattern;

  DestinationConfigTemplate({
    this.autocompleteSuggestions,
    this.defaultPort,
    this.description,
    this.displayName,
    this.isAdvanced,
    this.key,
    this.max,
    this.min,
    this.portFieldType,
    this.regexPattern,
  });

  DestinationConfigTemplate.fromJson(core.Map json_)
    : this(
        autocompleteSuggestions:
            (json_['autocompleteSuggestions'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        defaultPort: json_['defaultPort'] as core.int?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        isAdvanced: json_['isAdvanced'] as core.bool?,
        key: json_['key'] as core.String?,
        max: json_['max'] as core.int?,
        min: json_['min'] as core.int?,
        portFieldType: json_['portFieldType'] as core.String?,
        regexPattern: json_['regexPattern'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (autocompleteSuggestions != null)
      'autocompleteSuggestions': autocompleteSuggestions!,
    if (defaultPort != null) 'defaultPort': defaultPort!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (isAdvanced != null) 'isAdvanced': isAdvanced!,
    if (key != null) 'key': key!,
    if (max != null) 'max': max!,
    if (min != null) 'min': min!,
    if (portFieldType != null) 'portFieldType': portFieldType!,
    if (regexPattern != null) 'regexPattern': regexPattern!,
  };
}

/// EUASecret provides a reference to entries in Secret Manager.
class EUASecret {
  /// The plain string value of the secret.
  ///
  /// Optional.
  core.String? secretValue;

  /// The resource name of the secret version in the format, format as:
  /// `projects / * /secrets / * /versions / * `.
  ///
  /// Optional.
  core.String? secretVersion;

  EUASecret({this.secretValue, this.secretVersion});

  EUASecret.fromJson(core.Map json_)
    : this(
        secretValue: json_['secretValue'] as core.String?,
        secretVersion: json_['secretVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (secretValue != null) 'secretValue': secretValue!,
    if (secretVersion != null) 'secretVersion': secretVersion!,
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

  EgressControlConfig({this.backends, this.extractionRules});

  EgressControlConfig.fromJson(core.Map json_)
    : this(
        backends: json_['backends'] as core.String?,
        extractionRules:
            json_.containsKey('extractionRules')
                ? ExtractionRules.fromJson(
                  json_['extractionRules']
                      as core.Map<core.String, core.dynamic>,
                )
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

/// Regional encryption config for CMEK details.
class EncryptionConfig {
  /// Encryption type for the region.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "ENCRYPTION_TYPE_UNSPECIFIED" : Encryption type unspecified.
  /// - "GMEK" : Google managed encryption keys
  /// - "CMEK" : Customer managed encryption keys.
  core.String? encryptionType;

  /// KMS crypto key.
  ///
  /// This field accepts identifiers of the form
  /// `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/
  /// {crypto_key}`
  ///
  /// Optional.
  core.String? kmsKeyName;

  EncryptionConfig({this.encryptionType, this.kmsKeyName});

  EncryptionConfig.fromJson(core.Map json_)
    : this(
        encryptionType: json_['encryptionType'] as core.String?,
        kmsKeyName: json_['kmsKeyName'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (encryptionType != null) 'encryptionType': encryptionType!,
    if (kmsKeyName != null) 'kmsKeyName': kmsKeyName!,
  };
}

/// Encryption Key value.
typedef EncryptionKey = $EncryptionKey;

/// Endpoint message includes details of the Destination endpoint.
class EndPoint {
  /// The URI of the Endpoint.
  ///
  /// Optional.
  core.String? endpointUri;

  /// List of Header to be added to the Endpoint.
  ///
  /// Optional.
  core.List<Header>? headers;

  EndPoint({this.endpointUri, this.headers});

  EndPoint.fromJson(core.Map json_)
    : this(
        endpointUri: json_['endpointUri'] as core.String?,
        headers:
            (json_['headers'] as core.List?)
                ?.map(
                  (value) => Header.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpointUri != null) 'endpointUri': endpointUri!,
    if (headers != null) 'headers': headers!,
  };
}

/// AuthConfig defines details of a authentication type.
class EndUserAuthentication {
  /// Config variables for the EndUserAuthentication.
  ///
  /// Optional.
  core.List<EndUserAuthenticationConfigVariable>? configVariables;

  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Destination configs for the EndUserAuthentication.
  ///
  /// Optional.
  core.List<DestinationConfig>? destinationConfigs;

  /// The EndUserAuthenticationConfig for the EndUserAuthentication.
  ///
  /// Optional.
  EndUserAuthenticationConfig? endUserAuthenticationConfig;

  /// Labels for the EndUserAuthentication.
  ///
  /// Optional.
  core.List<core.String>? labels;

  /// Identifier.
  ///
  /// Resource name of the EndUserAuthentication. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/endUserAuthentications/{end_user_authentication}
  ///
  /// Required.
  core.String? name;

  /// The destination to hit when we receive an event
  ///
  /// Optional.
  EndUserAuthenticationNotifyEndpointDestination? notifyEndpointDestination;

  /// Roles for the EndUserAuthentication.
  ///
  /// Optional.
  core.List<core.String>? roles;

  /// Status of the EndUserAuthentication.
  ///
  /// Optional.
  EndUserAuthenticationEndUserAuthenticationStatus? status;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user id of the user.
  ///
  /// Optional.
  core.String? userId;

  EndUserAuthentication({
    this.configVariables,
    this.createTime,
    this.destinationConfigs,
    this.endUserAuthenticationConfig,
    this.labels,
    this.name,
    this.notifyEndpointDestination,
    this.roles,
    this.status,
    this.updateTime,
    this.userId,
  });

  EndUserAuthentication.fromJson(core.Map json_)
    : this(
        configVariables:
            (json_['configVariables'] as core.List?)
                ?.map(
                  (value) => EndUserAuthenticationConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        destinationConfigs:
            (json_['destinationConfigs'] as core.List?)
                ?.map(
                  (value) => DestinationConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        endUserAuthenticationConfig:
            json_.containsKey('endUserAuthenticationConfig')
                ? EndUserAuthenticationConfig.fromJson(
                  json_['endUserAuthenticationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels:
            (json_['labels'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        name: json_['name'] as core.String?,
        notifyEndpointDestination:
            json_.containsKey('notifyEndpointDestination')
                ? EndUserAuthenticationNotifyEndpointDestination.fromJson(
                  json_['notifyEndpointDestination']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        roles:
            (json_['roles'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        status:
            json_.containsKey('status')
                ? EndUserAuthenticationEndUserAuthenticationStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
        userId: json_['userId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (configVariables != null) 'configVariables': configVariables!,
    if (createTime != null) 'createTime': createTime!,
    if (destinationConfigs != null) 'destinationConfigs': destinationConfigs!,
    if (endUserAuthenticationConfig != null)
      'endUserAuthenticationConfig': endUserAuthenticationConfig!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (notifyEndpointDestination != null)
      'notifyEndpointDestination': notifyEndpointDestination!,
    if (roles != null) 'roles': roles!,
    if (status != null) 'status': status!,
    if (updateTime != null) 'updateTime': updateTime!,
    if (userId != null) 'userId': userId!,
  };
}

/// EndUserAuthenticationConfig defines details of a authentication
/// configuration for EUC
class EndUserAuthenticationConfig {
  /// List containing additional auth configs.
  ///
  /// Optional.
  core.List<EndUserAuthenticationConfigVariable>? additionalVariables;

  /// Identifier key for auth config
  core.String? authKey;

  /// The type of authentication configured.
  /// Possible string values are:
  /// - "AUTH_TYPE_UNSPECIFIED" : Authentication type not specified.
  /// - "USER_PASSWORD" : Username and Password Authentication.
  /// - "OAUTH2_JWT_BEARER" : JSON Web Token (JWT) Profile for Oauth 2.0
  /// Authorization Grant based authentication
  /// - "OAUTH2_CLIENT_CREDENTIALS" : Oauth 2.0 Client Credentials Grant
  /// Authentication
  /// - "SSH_PUBLIC_KEY" : SSH Public Key Authentication
  /// - "OAUTH2_AUTH_CODE_FLOW" : Oauth 2.0 Authorization Code Flow
  /// - "GOOGLE_AUTHENTICATION" : Google authentication
  /// - "OAUTH2_AUTH_CODE_FLOW_GOOGLE_MANAGED" : Oauth 2.0 Authorization Code
  /// Flow with Google Provided OAuth Client
  core.String? authType;

  /// Oauth2AuthCodeFlow.
  EndUserAuthenticationConfigOauth2AuthCodeFlow? oauth2AuthCodeFlow;

  /// Oauth2AuthCodeFlowGoogleManaged.
  EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged?
  oauth2AuthCodeFlowGoogleManaged;

  /// Oauth2ClientCredentials.
  EndUserAuthenticationConfigOauth2ClientCredentials? oauth2ClientCredentials;

  /// Oauth2JwtBearer.
  EndUserAuthenticationConfigOauth2JwtBearer? oauth2JwtBearer;

  /// SSH Public Key.
  EndUserAuthenticationConfigSshPublicKey? sshPublicKey;

  /// UserPassword.
  EndUserAuthenticationConfigUserPassword? userPassword;

  EndUserAuthenticationConfig({
    this.additionalVariables,
    this.authKey,
    this.authType,
    this.oauth2AuthCodeFlow,
    this.oauth2AuthCodeFlowGoogleManaged,
    this.oauth2ClientCredentials,
    this.oauth2JwtBearer,
    this.sshPublicKey,
    this.userPassword,
  });

  EndUserAuthenticationConfig.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => EndUserAuthenticationConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authKey: json_['authKey'] as core.String?,
        authType: json_['authType'] as core.String?,
        oauth2AuthCodeFlow:
            json_.containsKey('oauth2AuthCodeFlow')
                ? EndUserAuthenticationConfigOauth2AuthCodeFlow.fromJson(
                  json_['oauth2AuthCodeFlow']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2AuthCodeFlowGoogleManaged:
            json_.containsKey('oauth2AuthCodeFlowGoogleManaged')
                ? EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged.fromJson(
                  json_['oauth2AuthCodeFlowGoogleManaged']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2ClientCredentials:
            json_.containsKey('oauth2ClientCredentials')
                ? EndUserAuthenticationConfigOauth2ClientCredentials.fromJson(
                  json_['oauth2ClientCredentials']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        oauth2JwtBearer:
            json_.containsKey('oauth2JwtBearer')
                ? EndUserAuthenticationConfigOauth2JwtBearer.fromJson(
                  json_['oauth2JwtBearer']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sshPublicKey:
            json_.containsKey('sshPublicKey')
                ? EndUserAuthenticationConfigSshPublicKey.fromJson(
                  json_['sshPublicKey'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        userPassword:
            json_.containsKey('userPassword')
                ? EndUserAuthenticationConfigUserPassword.fromJson(
                  json_['userPassword'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (authKey != null) 'authKey': authKey!,
    if (authType != null) 'authType': authType!,
    if (oauth2AuthCodeFlow != null) 'oauth2AuthCodeFlow': oauth2AuthCodeFlow!,
    if (oauth2AuthCodeFlowGoogleManaged != null)
      'oauth2AuthCodeFlowGoogleManaged': oauth2AuthCodeFlowGoogleManaged!,
    if (oauth2ClientCredentials != null)
      'oauth2ClientCredentials': oauth2ClientCredentials!,
    if (oauth2JwtBearer != null) 'oauth2JwtBearer': oauth2JwtBearer!,
    if (sshPublicKey != null) 'sshPublicKey': sshPublicKey!,
    if (userPassword != null) 'userPassword': userPassword!,
  };
}

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication.
///
/// See https://www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
class EndUserAuthenticationConfigOauth2AuthCodeFlow {
  /// Authorization code to be exchanged for access and refresh tokens.
  ///
  /// Optional.
  core.String? authCode;

  /// Auth URL for Authorization Code Flow
  ///
  /// Optional.
  core.String? authUri;

  /// Client ID for user-provided OAuth app.
  ///
  /// Optional.
  core.String? clientId;

  /// Client secret for user-provided OAuth app.
  ///
  /// Optional.
  EUASecret? clientSecret;

  /// Whether to enable PKCE when the user performs the auth code flow.
  ///
  /// Optional.
  core.bool? enablePkce;

  /// Auth Code Data
  ///
  /// Optional.
  OAuthTokenData? oauthTokenData;

  /// PKCE verifier to be used during the auth code exchange.
  ///
  /// Optional.
  core.String? pkceVerifier;

  /// Redirect URI to be provided during the auth code exchange.
  ///
  /// Optional.
  core.String? redirectUri;

  /// Scopes the connection will request when the user performs the auth code
  /// flow.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  EndUserAuthenticationConfigOauth2AuthCodeFlow({
    this.authCode,
    this.authUri,
    this.clientId,
    this.clientSecret,
    this.enablePkce,
    this.oauthTokenData,
    this.pkceVerifier,
    this.redirectUri,
    this.scopes,
  });

  EndUserAuthenticationConfigOauth2AuthCodeFlow.fromJson(core.Map json_)
    : this(
        authCode: json_['authCode'] as core.String?,
        authUri: json_['authUri'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret:
            json_.containsKey('clientSecret')
                ? EUASecret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enablePkce: json_['enablePkce'] as core.bool?,
        oauthTokenData:
            json_.containsKey('oauthTokenData')
                ? OAuthTokenData.fromJson(
                  json_['oauthTokenData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        pkceVerifier: json_['pkceVerifier'] as core.String?,
        redirectUri: json_['redirectUri'] as core.String?,
        scopes:
            (json_['scopes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authCode != null) 'authCode': authCode!,
    if (authUri != null) 'authUri': authUri!,
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
    if (enablePkce != null) 'enablePkce': enablePkce!,
    if (oauthTokenData != null) 'oauthTokenData': oauthTokenData!,
    if (pkceVerifier != null) 'pkceVerifier': pkceVerifier!,
    if (redirectUri != null) 'redirectUri': redirectUri!,
    if (scopes != null) 'scopes': scopes!,
  };
}

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication using Google
/// Provided OAuth Client.
///
/// See https://tools.ietf.org/html/rfc6749#section-1.3.1 for more details.
class EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged {
  /// Authorization code to be exchanged for access and refresh tokens.
  ///
  /// Optional.
  core.String? authCode;

  /// Auth Code Data
  OAuthTokenData? oauthTokenData;

  /// Redirect URI to be provided during the auth code exchange.
  ///
  /// Optional.
  core.String? redirectUri;

  /// Scopes the connection will request when the user performs the auth code
  /// flow.
  ///
  /// Required.
  core.List<core.String>? scopes;

  EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged({
    this.authCode,
    this.oauthTokenData,
    this.redirectUri,
    this.scopes,
  });

  EndUserAuthenticationConfigOauth2AuthCodeFlowGoogleManaged.fromJson(
    core.Map json_,
  ) : this(
        authCode: json_['authCode'] as core.String?,
        oauthTokenData:
            json_.containsKey('oauthTokenData')
                ? OAuthTokenData.fromJson(
                  json_['oauthTokenData']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        redirectUri: json_['redirectUri'] as core.String?,
        scopes:
            (json_['scopes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authCode != null) 'authCode': authCode!,
    if (oauthTokenData != null) 'oauthTokenData': oauthTokenData!,
    if (redirectUri != null) 'redirectUri': redirectUri!,
    if (scopes != null) 'scopes': scopes!,
  };
}

/// Parameters to support Oauth 2.0 Client Credentials Grant Authentication.
///
/// See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class EndUserAuthenticationConfigOauth2ClientCredentials {
  /// The client identifier.
  core.String? clientId;

  /// string value or secret version containing the client secret.
  ///
  /// Required.
  EUASecret? clientSecret;

  EndUserAuthenticationConfigOauth2ClientCredentials({
    this.clientId,
    this.clientSecret,
  });

  EndUserAuthenticationConfigOauth2ClientCredentials.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret:
            json_.containsKey('clientSecret')
                ? EUASecret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>,
                )
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
class EndUserAuthenticationConfigOauth2JwtBearer {
  /// secret version/value reference containing a PKCS#8 PEM-encoded private key
  /// associated with the Client Certificate.
  ///
  /// This private key will be used to sign JWTs used for the jwt-bearer
  /// authorization grant. Specified in the form as: `projects / * /strings / *
  /// /versions / * `.
  ///
  /// Required.
  EUASecret? clientKey;

  /// JwtClaims providers fields to generate the token.
  EndUserAuthenticationConfigOauth2JwtBearerJwtClaims? jwtClaims;

  EndUserAuthenticationConfigOauth2JwtBearer({this.clientKey, this.jwtClaims});

  EndUserAuthenticationConfigOauth2JwtBearer.fromJson(core.Map json_)
    : this(
        clientKey:
            json_.containsKey('clientKey')
                ? EUASecret.fromJson(
                  json_['clientKey'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jwtClaims:
            json_.containsKey('jwtClaims')
                ? EndUserAuthenticationConfigOauth2JwtBearerJwtClaims.fromJson(
                  json_['jwtClaims'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (clientKey != null) 'clientKey': clientKey!,
    if (jwtClaims != null) 'jwtClaims': jwtClaims!,
  };
}

/// JWT claims used for the jwt-bearer authorization grant.
class EndUserAuthenticationConfigOauth2JwtBearerJwtClaims {
  /// Value for the "aud" claim.
  core.String? audience;

  /// Value for the "iss" claim.
  core.String? issuer;

  /// Value for the "sub" claim.
  core.String? subject;

  EndUserAuthenticationConfigOauth2JwtBearerJwtClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  EndUserAuthenticationConfigOauth2JwtBearerJwtClaims.fromJson(core.Map json_)
    : this(
        audience: json_['audience'] as core.String?,
        issuer: json_['issuer'] as core.String?,
        subject: json_['subject'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (audience != null) 'audience': audience!,
    if (issuer != null) 'issuer': issuer!,
    if (subject != null) 'subject': subject!,
  };
}

/// Parameters to support Ssh public key Authentication.
class EndUserAuthenticationConfigSshPublicKey {
  /// Format of SSH Client cert.
  core.String? certType;

  /// SSH Client Cert.
  ///
  /// It should contain both public and private key.
  ///
  /// Required.
  EUASecret? sshClientCert;

  /// Password (passphrase) for ssh client certificate if it has one.
  ///
  /// Required.
  EUASecret? sshClientCertPass;

  /// The user account used to authenticate.
  core.String? username;

  EndUserAuthenticationConfigSshPublicKey({
    this.certType,
    this.sshClientCert,
    this.sshClientCertPass,
    this.username,
  });

  EndUserAuthenticationConfigSshPublicKey.fromJson(core.Map json_)
    : this(
        certType: json_['certType'] as core.String?,
        sshClientCert:
            json_.containsKey('sshClientCert')
                ? EUASecret.fromJson(
                  json_['sshClientCert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sshClientCertPass:
            json_.containsKey('sshClientCertPass')
                ? EUASecret.fromJson(
                  json_['sshClientCertPass']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certType != null) 'certType': certType!,
    if (sshClientCert != null) 'sshClientCert': sshClientCert!,
    if (sshClientCertPass != null) 'sshClientCertPass': sshClientCertPass!,
    if (username != null) 'username': username!,
  };
}

/// Parameters to support Username and Password Authentication.
class EndUserAuthenticationConfigUserPassword {
  /// string value or secret version reference containing the password.
  ///
  /// Required.
  EUASecret? password;

  /// Username.
  core.String? username;

  EndUserAuthenticationConfigUserPassword({this.password, this.username});

  EndUserAuthenticationConfigUserPassword.fromJson(core.Map json_)
    : this(
        password:
            json_.containsKey('password')
                ? EUASecret.fromJson(
                  json_['password'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (password != null) 'password': password!,
    if (username != null) 'username': username!,
  };
}

/// EndUserAuthenticationConfigVariable represents a configuration variable
/// present in a EndUserAuthentication.
class EndUserAuthenticationConfigVariable {
  /// Value is a bool.
  core.bool? boolValue;

  /// Value is an integer
  core.String? intValue;

  /// Key of the config variable.
  ///
  /// Required.
  core.String? key;

  /// Value is a secret
  EUASecret? secretValue;

  /// Value is a string.
  core.String? stringValue;

  EndUserAuthenticationConfigVariable({
    this.boolValue,
    this.intValue,
    this.key,
    this.secretValue,
    this.stringValue,
  });

  EndUserAuthenticationConfigVariable.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        intValue: json_['intValue'] as core.String?,
        key: json_['key'] as core.String?,
        secretValue:
            json_.containsKey('secretValue')
                ? EUASecret.fromJson(
                  json_['secretValue'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boolValue != null) 'boolValue': boolValue!,
    if (intValue != null) 'intValue': intValue!,
    if (key != null) 'key': key!,
    if (secretValue != null) 'secretValue': secretValue!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

/// EndUserAuthentication Status denotes the status of the EndUserAuthentication
/// resource.
class EndUserAuthenticationEndUserAuthenticationStatus {
  /// Description of the state.
  ///
  /// Output only.
  core.String? description;

  /// State of Event Subscription resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default state.
  /// - "ACTIVE" : EndUserAuthentication is in Active state.
  /// - "ERROR" : EndUserAuthentication is in Error state.
  core.String? state;

  EndUserAuthenticationEndUserAuthenticationStatus({
    this.description,
    this.state,
  });

  EndUserAuthenticationEndUserAuthenticationStatus.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (state != null) 'state': state!,
  };
}

/// Message for NotifyEndpointDestination Destination to hit when the refresh
/// token is expired.
class EndUserAuthenticationNotifyEndpointDestination {
  /// OPTION 1: Hit an endpoint when the refresh token is expired.
  ///
  /// Optional.
  EndUserAuthenticationNotifyEndpointDestinationEndPoint? endpoint;

  /// Service account needed for runtime plane to notify the backend.
  ///
  /// Required.
  core.String? serviceAccount;

  /// type of the destination
  ///
  /// Required.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default state.
  /// - "ENDPOINT" : Endpoint - Hit the value of endpoint when event is received
  core.String? type;

  EndUserAuthenticationNotifyEndpointDestination({
    this.endpoint,
    this.serviceAccount,
    this.type,
  });

  EndUserAuthenticationNotifyEndpointDestination.fromJson(core.Map json_)
    : this(
        endpoint:
            json_.containsKey('endpoint')
                ? EndUserAuthenticationNotifyEndpointDestinationEndPoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccount: json_['serviceAccount'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpoint != null) 'endpoint': endpoint!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (type != null) 'type': type!,
  };
}

/// Endpoint message includes details of the Destination endpoint.
class EndUserAuthenticationNotifyEndpointDestinationEndPoint {
  /// The URI of the Endpoint.
  ///
  /// Required.
  core.String? endpointUri;

  /// List of Header to be added to the Endpoint.
  ///
  /// Optional.
  core.List<EndUserAuthenticationNotifyEndpointDestinationEndPointHeader>?
  headers;

  EndUserAuthenticationNotifyEndpointDestinationEndPoint({
    this.endpointUri,
    this.headers,
  });

  EndUserAuthenticationNotifyEndpointDestinationEndPoint.fromJson(
    core.Map json_,
  ) : this(
        endpointUri: json_['endpointUri'] as core.String?,
        headers:
            (json_['headers'] as core.List?)
                ?.map(
                  (value) =>
                      EndUserAuthenticationNotifyEndpointDestinationEndPointHeader.fromJson(
                        value as core.Map<core.String, core.dynamic>,
                      ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpointUri != null) 'endpointUri': endpointUri!,
    if (headers != null) 'headers': headers!,
  };
}

/// Header details for a given header to be added to Endpoint.
class EndUserAuthenticationNotifyEndpointDestinationEndPointHeader {
  /// Key of Header.
  ///
  /// Required.
  core.String? key;

  /// Value of Header.
  ///
  /// Required.
  core.String? value;

  EndUserAuthenticationNotifyEndpointDestinationEndPointHeader({
    this.key,
    this.value,
  });

  EndUserAuthenticationNotifyEndpointDestinationEndPointHeader.fromJson(
    core.Map json_,
  ) : this(
        key: json_['key'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (value != null) 'value': value!,
  };
}

/// represents the Connector's Endpoint Attachment resource
class EndpointAttachment {
  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// The Private Service Connect Connection Endpoint Global Access.
  ///
  /// https://cloud.google.com/vpc/docs/about-accessing-vpc-hosted-services-endpoints#global-access
  ///
  /// Optional.
  core.bool? endpointGlobalAccess;

  /// The Private Service Connect connection endpoint ip
  ///
  /// Output only.
  core.String? endpointIp;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Resource name of the Endpoint Attachment.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/endpointAttachments/{endpoint_attachment}
  ///
  /// Output only.
  core.String? name;

  /// The path of the service attachment
  ///
  /// Required.
  core.String? serviceAttachment;

  /// The Private Service Connect Connection Endpoint State.
  ///
  /// This value is only available in the Full view.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : STATE_UNSPECIFIED.
  /// - "PENDING" : The endpoint is pending acceptance by the producer.
  /// - "ACCEPTED" : The endpoint has been accepted by the producer.
  /// - "REJECTED" : The endpoint has been rejected by the producer.
  /// - "CLOSED" : The endpoint has been closed by the producer and will not
  /// serve traffic going forward.
  /// - "FROZEN" : The endpoint has been frozen by the producer and will not
  /// serve traffic.
  /// - "NEEDS_ATTENTION" : The endpoint has been accepted by the producer, but
  /// it is not ready to serve the traffic due to producer side issues.
  /// - "ACCEPTED_NOT_PROGRAMMED" : The endpoint has been accepted by the
  /// producer, but it cannot be programmed to the data plane due to invariant
  /// violation.
  core.String? state;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  EndpointAttachment({
    this.createTime,
    this.description,
    this.endpointGlobalAccess,
    this.endpointIp,
    this.labels,
    this.name,
    this.serviceAttachment,
    this.state,
    this.updateTime,
  });

  EndpointAttachment.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        endpointGlobalAccess: json_['endpointGlobalAccess'] as core.bool?,
        endpointIp: json_['endpointIp'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        serviceAttachment: json_['serviceAttachment'] as core.String?,
        state: json_['state'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (endpointGlobalAccess != null)
      'endpointGlobalAccess': endpointGlobalAccess!,
    if (endpointIp != null) 'endpointIp': endpointIp!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (serviceAttachment != null) 'serviceAttachment': serviceAttachment!,
    if (state != null) 'state': state!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Data enrichment configuration.
typedef EnrichmentConfig = $EnrichmentConfig;

/// EnumOption definition
class EnumOption {
  /// Display name of the option.
  ///
  /// Optional.
  core.String? displayName;

  /// Id of the option.
  ///
  /// Optional.
  core.String? id;

  EnumOption({this.displayName, this.id});

  EnumOption.fromJson(core.Map json_)
    : this(
        displayName: json_['displayName'] as core.String?,
        id: json_['id'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (displayName != null) 'displayName': displayName!,
    if (id != null) 'id': id!,
  };
}

/// represents the Connector's EventSubscription resource
class EventSubscription {
  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// The destination to hit when we receive an event
  ///
  /// Optional.
  EventSubscriptionDestination? destinations;

  /// Event type id of the event of current EventSubscription.
  ///
  /// Optional.
  core.String? eventTypeId;

  /// JMS is the source for the event listener.
  ///
  /// Optional.
  JMS? jms;

  /// Identifier.
  ///
  /// Resource name of the EventSubscription. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/eventSubscriptions/{event_subscription}
  ///
  /// Required.
  core.String? name;

  /// Status indicates the status of the event subscription resource
  ///
  /// Optional.
  EventSubscriptionStatus? status;

  /// name of the Subscriber for the current EventSubscription.
  ///
  /// Optional.
  core.String? subscriber;

  /// Link for Subscriber of the current EventSubscription.
  ///
  /// Optional.
  core.String? subscriberLink;

  /// Configuration for configuring the trigger
  ///
  /// Optional.
  core.List<ConfigVariable>? triggerConfigVariables;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  EventSubscription({
    this.createTime,
    this.destinations,
    this.eventTypeId,
    this.jms,
    this.name,
    this.status,
    this.subscriber,
    this.subscriberLink,
    this.triggerConfigVariables,
    this.updateTime,
  });

  EventSubscription.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        destinations:
            json_.containsKey('destinations')
                ? EventSubscriptionDestination.fromJson(
                  json_['destinations'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        eventTypeId: json_['eventTypeId'] as core.String?,
        jms:
            json_.containsKey('jms')
                ? JMS.fromJson(
                  json_['jms'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        status:
            json_.containsKey('status')
                ? EventSubscriptionStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        subscriber: json_['subscriber'] as core.String?,
        subscriberLink: json_['subscriberLink'] as core.String?,
        triggerConfigVariables:
            (json_['triggerConfigVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (destinations != null) 'destinations': destinations!,
    if (eventTypeId != null) 'eventTypeId': eventTypeId!,
    if (jms != null) 'jms': jms!,
    if (name != null) 'name': name!,
    if (status != null) 'status': status!,
    if (subscriber != null) 'subscriber': subscriber!,
    if (subscriberLink != null) 'subscriberLink': subscriberLink!,
    if (triggerConfigVariables != null)
      'triggerConfigVariables': triggerConfigVariables!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Message for EventSubscription Destination to act on receiving an event
class EventSubscriptionDestination {
  /// OPTION 1: Hit an endpoint when we receive an event.
  EndPoint? endpoint;

  /// OPTION 3: Write the event to Pub/Sub topic.
  PubSub? pubsub;

  /// Service account needed for runtime plane to trigger IP workflow.
  ///
  /// Optional.
  core.String? serviceAccount;

  /// type of the destination
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default state.
  /// - "ENDPOINT" : Endpoint - Hit the value of endpoint when event is received
  /// - "GCS" : Cloud Storage - Write the event to Cloud Storage bucket
  /// - "PUBSUB" : Pub/Sub - Write the event to Pub/Sub topic
  core.String? type;

  EventSubscriptionDestination({
    this.endpoint,
    this.pubsub,
    this.serviceAccount,
    this.type,
  });

  EventSubscriptionDestination.fromJson(core.Map json_)
    : this(
        endpoint:
            json_.containsKey('endpoint')
                ? EndPoint.fromJson(
                  json_['endpoint'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        pubsub:
            json_.containsKey('pubsub')
                ? PubSub.fromJson(
                  json_['pubsub'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        serviceAccount: json_['serviceAccount'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpoint != null) 'endpoint': endpoint!,
    if (pubsub != null) 'pubsub': pubsub!,
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (type != null) 'type': type!,
  };
}

/// EventSubscription Status denotes the status of the EventSubscription
/// resource.
class EventSubscriptionStatus {
  /// Description of the state.
  ///
  /// Output only.
  core.String? description;

  /// State of Event Subscription resource.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Default state.
  /// - "CREATING" : EventSubscription creation is in progress.
  /// - "UPDATING" : EventSubscription is in Updating status.
  /// - "ACTIVE" : EventSubscription is in Active state and is ready to receive
  /// events.
  /// - "SUSPENDED" : EventSubscription is currently suspended.
  /// - "ERROR" : EventSubscription is in Error state.
  core.String? state;

  EventSubscriptionStatus({this.description, this.state});

  EventSubscriptionStatus.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (state != null) 'state': state!,
  };
}

/// EventType includes fields.
class EventType {
  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Schema of the event payload after enriched.
  ///
  /// Will be null if read before send is not supported.
  ///
  /// Output only.
  core.String? enrichedEventPayloadSchema;

  /// Runtime entity type name.
  ///
  /// Will be null if entity type map is not available. Used for read before
  /// send feature.
  ///
  /// Output only.
  core.String? entityType;

  /// Schema of webhook event payload.
  ///
  /// Output only.
  core.String? eventPayloadSchema;

  /// Event type id.
  ///
  /// Example: `ticket.created`.
  ///
  /// Output only.
  core.String? eventTypeId;

  /// Id path denotes the path of id in webhook payload.
  ///
  /// Output only.
  core.String? idPath;

  /// Resource name of the eventtype.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}/versions/{version}/eventtypes/{eventtype}
  /// Only global location is supported for Connector resource.
  ///
  /// Output only.
  core.String? name;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  EventType({
    this.createTime,
    this.enrichedEventPayloadSchema,
    this.entityType,
    this.eventPayloadSchema,
    this.eventTypeId,
    this.idPath,
    this.name,
    this.updateTime,
  });

  EventType.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        enrichedEventPayloadSchema:
            json_['enrichedEventPayloadSchema'] as core.String?,
        entityType: json_['entityType'] as core.String?,
        eventPayloadSchema: json_['eventPayloadSchema'] as core.String?,
        eventTypeId: json_['eventTypeId'] as core.String?,
        idPath: json_['idPath'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (enrichedEventPayloadSchema != null)
      'enrichedEventPayloadSchema': enrichedEventPayloadSchema!,
    if (entityType != null) 'entityType': entityType!,
    if (eventPayloadSchema != null) 'eventPayloadSchema': eventPayloadSchema!,
    if (eventTypeId != null) 'eventTypeId': eventTypeId!,
    if (idPath != null) 'idPath': idPath!,
    if (name != null) 'name': name!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Eventing Configuration of a connection next: 19
class EventingConfig {
  /// Additional eventing related field values
  ///
  /// Optional.
  core.List<ConfigVariable>? additionalVariables;

  /// Auth details for the webhook adapter.
  ///
  /// Optional.
  AuthConfig? authConfig;

  /// Dead letter configuration for eventing of a connection.
  ///
  /// Optional.
  DeadLetterConfig? deadLetterConfig;

  /// Data enrichment configuration.
  ///
  /// Optional.
  EnrichmentConfig? enrichmentConfig;

  /// Enrichment Enabled.
  ///
  /// Optional.
  core.bool? enrichmentEnabled;

  /// Ingress endpoint of the event listener.
  ///
  /// This is used only when private connectivity is enabled.
  ///
  /// Optional.
  core.String? eventsListenerIngressEndpoint;

  /// Auth details for the event listener.
  ///
  /// Optional.
  AuthConfig? listenerAuthConfig;

  /// List of projects to be allowlisted for the service attachment created in
  /// the tenant project for eventing ingress.
  ///
  /// Optional.
  core.List<core.String>? privateConnectivityAllowlistedProjects;

  /// Private Connectivity Enabled.
  ///
  /// Optional.
  core.bool? privateConnectivityEnabled;

  /// Proxy for Eventing auto-registration.
  ///
  /// Optional.
  DestinationConfig? proxyDestinationConfig;

  /// Registration endpoint for auto registration.
  ///
  /// Optional.
  DestinationConfig? registrationDestinationConfig;

  /// Ssl config of a connection
  ///
  /// Optional.
  SslConfig? sslConfig;

  EventingConfig({
    this.additionalVariables,
    this.authConfig,
    this.deadLetterConfig,
    this.enrichmentConfig,
    this.enrichmentEnabled,
    this.eventsListenerIngressEndpoint,
    this.listenerAuthConfig,
    this.privateConnectivityAllowlistedProjects,
    this.privateConnectivityEnabled,
    this.proxyDestinationConfig,
    this.registrationDestinationConfig,
    this.sslConfig,
  });

  EventingConfig.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authConfig:
            json_.containsKey('authConfig')
                ? AuthConfig.fromJson(
                  json_['authConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        deadLetterConfig:
            json_.containsKey('deadLetterConfig')
                ? DeadLetterConfig.fromJson(
                  json_['deadLetterConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enrichmentConfig:
            json_.containsKey('enrichmentConfig')
                ? EnrichmentConfig.fromJson(
                  json_['enrichmentConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enrichmentEnabled: json_['enrichmentEnabled'] as core.bool?,
        eventsListenerIngressEndpoint:
            json_['eventsListenerIngressEndpoint'] as core.String?,
        listenerAuthConfig:
            json_.containsKey('listenerAuthConfig')
                ? AuthConfig.fromJson(
                  json_['listenerAuthConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        privateConnectivityAllowlistedProjects:
            (json_['privateConnectivityAllowlistedProjects'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        privateConnectivityEnabled:
            json_['privateConnectivityEnabled'] as core.bool?,
        proxyDestinationConfig:
            json_.containsKey('proxyDestinationConfig')
                ? DestinationConfig.fromJson(
                  json_['proxyDestinationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        registrationDestinationConfig:
            json_.containsKey('registrationDestinationConfig')
                ? DestinationConfig.fromJson(
                  json_['registrationDestinationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sslConfig:
            json_.containsKey('sslConfig')
                ? SslConfig.fromJson(
                  json_['sslConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (authConfig != null) 'authConfig': authConfig!,
    if (deadLetterConfig != null) 'deadLetterConfig': deadLetterConfig!,
    if (enrichmentConfig != null) 'enrichmentConfig': enrichmentConfig!,
    if (enrichmentEnabled != null) 'enrichmentEnabled': enrichmentEnabled!,
    if (eventsListenerIngressEndpoint != null)
      'eventsListenerIngressEndpoint': eventsListenerIngressEndpoint!,
    if (listenerAuthConfig != null) 'listenerAuthConfig': listenerAuthConfig!,
    if (privateConnectivityAllowlistedProjects != null)
      'privateConnectivityAllowlistedProjects':
          privateConnectivityAllowlistedProjects!,
    if (privateConnectivityEnabled != null)
      'privateConnectivityEnabled': privateConnectivityEnabled!,
    if (proxyDestinationConfig != null)
      'proxyDestinationConfig': proxyDestinationConfig!,
    if (registrationDestinationConfig != null)
      'registrationDestinationConfig': registrationDestinationConfig!,
    if (sslConfig != null) 'sslConfig': sslConfig!,
  };
}

/// Eventing Config details of a connector version.
///
/// next: 14
class EventingConfigTemplate {
  /// Additional fields that need to be rendered.
  core.List<ConfigVariableTemplate>? additionalVariables;

  /// AuthConfigTemplates represents the auth values for the webhook adapter.
  core.List<AuthConfigTemplate>? authConfigTemplates;

  /// Auto refresh to extend webhook life.
  core.bool? autoRefresh;

  /// Auto Registration supported.
  core.bool? autoRegistrationSupported;

  /// Encryption key (can be either Google managed or CMEK).
  ConfigVariableTemplate? encryptionKeyTemplate;

  /// Enrichment Supported.
  core.bool? enrichmentSupported;

  /// The type of the event listener for a specific connector.
  /// Possible string values are:
  /// - "EVENT_LISTENER_TYPE_UNSPECIFIED" : Default value.
  /// - "WEBHOOK_LISTENER" : Webhook listener. e.g. Jira, Zendesk, Servicenow
  /// etc.,
  /// - "JMS_LISTENER" : JMS Listener. e.g. IBM MQ, Rabbit MQ etc.,
  core.String? eventListenerType;

  /// Is Eventing Supported.
  core.bool? isEventingSupported;

  /// ListenerAuthConfigTemplates represents the auth values for the event
  /// listener.
  core.List<AuthConfigTemplate>? listenerAuthConfigTemplates;

  /// Proxy destination config template.
  DestinationConfigTemplate? proxyDestinationConfig;

  /// Registration host destination config template.
  DestinationConfigTemplate? registrationDestinationConfig;

  /// SSL Config template for the connector version.
  SslConfigTemplate? sslConfigTemplate;

  /// Trigger Config fields that needs to be rendered
  core.List<ConfigVariableTemplate>? triggerConfigVariables;

  EventingConfigTemplate({
    this.additionalVariables,
    this.authConfigTemplates,
    this.autoRefresh,
    this.autoRegistrationSupported,
    this.encryptionKeyTemplate,
    this.enrichmentSupported,
    this.eventListenerType,
    this.isEventingSupported,
    this.listenerAuthConfigTemplates,
    this.proxyDestinationConfig,
    this.registrationDestinationConfig,
    this.sslConfigTemplate,
    this.triggerConfigVariables,
  });

  EventingConfigTemplate.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariableTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        authConfigTemplates:
            (json_['authConfigTemplates'] as core.List?)
                ?.map(
                  (value) => AuthConfigTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        autoRefresh: json_['autoRefresh'] as core.bool?,
        autoRegistrationSupported:
            json_['autoRegistrationSupported'] as core.bool?,
        encryptionKeyTemplate:
            json_.containsKey('encryptionKeyTemplate')
                ? ConfigVariableTemplate.fromJson(
                  json_['encryptionKeyTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        enrichmentSupported: json_['enrichmentSupported'] as core.bool?,
        eventListenerType: json_['eventListenerType'] as core.String?,
        isEventingSupported: json_['isEventingSupported'] as core.bool?,
        listenerAuthConfigTemplates:
            (json_['listenerAuthConfigTemplates'] as core.List?)
                ?.map(
                  (value) => AuthConfigTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        proxyDestinationConfig:
            json_.containsKey('proxyDestinationConfig')
                ? DestinationConfigTemplate.fromJson(
                  json_['proxyDestinationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        registrationDestinationConfig:
            json_.containsKey('registrationDestinationConfig')
                ? DestinationConfigTemplate.fromJson(
                  json_['registrationDestinationConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        sslConfigTemplate:
            json_.containsKey('sslConfigTemplate')
                ? SslConfigTemplate.fromJson(
                  json_['sslConfigTemplate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        triggerConfigVariables:
            (json_['triggerConfigVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariableTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (authConfigTemplates != null)
      'authConfigTemplates': authConfigTemplates!,
    if (autoRefresh != null) 'autoRefresh': autoRefresh!,
    if (autoRegistrationSupported != null)
      'autoRegistrationSupported': autoRegistrationSupported!,
    if (encryptionKeyTemplate != null)
      'encryptionKeyTemplate': encryptionKeyTemplate!,
    if (enrichmentSupported != null)
      'enrichmentSupported': enrichmentSupported!,
    if (eventListenerType != null) 'eventListenerType': eventListenerType!,
    if (isEventingSupported != null)
      'isEventingSupported': isEventingSupported!,
    if (listenerAuthConfigTemplates != null)
      'listenerAuthConfigTemplates': listenerAuthConfigTemplates!,
    if (proxyDestinationConfig != null)
      'proxyDestinationConfig': proxyDestinationConfig!,
    if (registrationDestinationConfig != null)
      'registrationDestinationConfig': registrationDestinationConfig!,
    if (sslConfigTemplate != null) 'sslConfigTemplate': sslConfigTemplate!,
    if (triggerConfigVariables != null)
      'triggerConfigVariables': triggerConfigVariables!,
  };
}

/// Eventing Details message.
class EventingDetails {
  /// Custom Event Types.
  ///
  /// Output only.
  core.bool? customEventTypes;

  /// Description.
  ///
  /// Output only.
  core.String? description;

  /// Link to public documentation.
  ///
  /// Output only.
  core.String? documentationLink;

  /// Cloud storage location of the icon.
  ///
  /// Output only.
  core.String? iconLocation;

  /// Eventing Launch Stage.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "LAUNCH_STAGE_UNSPECIFIED" : LAUNCH_STAGE_UNSPECIFIED.
  /// - "PREVIEW" : PREVIEW.
  /// - "GA" : GA.
  /// - "DEPRECATED" : DEPRECATED.
  /// - "TEST" : TEST.
  /// - "PRIVATE_PREVIEW" : PRIVATE_PREVIEW.
  core.String? launchStage;

  /// Name of the Eventing trigger.
  ///
  /// Output only.
  core.String? name;

  /// Array of search keywords.
  ///
  /// Output only.
  core.List<core.String>? searchTags;

  /// The type of the event listener for a specific connector.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default value.
  /// - "WEBHOOK" : Webhook listener. e.g. Jira, Zendesk, Servicenow etc.,
  /// - "JMS" : JMS Listener. e.g. IBM MQ, Rabbit MQ etc.,
  core.String? type;

  EventingDetails({
    this.customEventTypes,
    this.description,
    this.documentationLink,
    this.iconLocation,
    this.launchStage,
    this.name,
    this.searchTags,
    this.type,
  });

  EventingDetails.fromJson(core.Map json_)
    : this(
        customEventTypes: json_['customEventTypes'] as core.bool?,
        description: json_['description'] as core.String?,
        documentationLink: json_['documentationLink'] as core.String?,
        iconLocation: json_['iconLocation'] as core.String?,
        launchStage: json_['launchStage'] as core.String?,
        name: json_['name'] as core.String?,
        searchTags:
            (json_['searchTags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customEventTypes != null) 'customEventTypes': customEventTypes!,
    if (description != null) 'description': description!,
    if (documentationLink != null) 'documentationLink': documentationLink!,
    if (iconLocation != null) 'iconLocation': iconLocation!,
    if (launchStage != null) 'launchStage': launchStage!,
    if (name != null) 'name': name!,
    if (searchTags != null) 'searchTags': searchTags!,
    if (type != null) 'type': type!,
  };
}

/// Eventing runtime data has the details related to eventing managed by the
/// system.
class EventingRuntimeData {
  /// Events listener endpoint.
  ///
  /// The value will populated after provisioning the events listener.
  ///
  /// Output only.
  core.String? eventsListenerEndpoint;

  /// Events listener PSC Service attachment.
  ///
  /// The value will be populated after provisioning the events listener with
  /// private connectivity enabled.
  ///
  /// Output only.
  core.String? eventsListenerPscSa;

  /// Current status of eventing.
  ///
  /// Output only.
  EventingStatus? status;

  /// Webhook data.
  ///
  /// Output only.
  WebhookData? webhookData;

  /// Webhook subscriptions.
  ///
  /// Output only.
  WebhookSubscriptions? webhookSubscriptions;

  EventingRuntimeData({
    this.eventsListenerEndpoint,
    this.eventsListenerPscSa,
    this.status,
    this.webhookData,
    this.webhookSubscriptions,
  });

  EventingRuntimeData.fromJson(core.Map json_)
    : this(
        eventsListenerEndpoint: json_['eventsListenerEndpoint'] as core.String?,
        eventsListenerPscSa: json_['eventsListenerPscSa'] as core.String?,
        status:
            json_.containsKey('status')
                ? EventingStatus.fromJson(
                  json_['status'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        webhookData:
            json_.containsKey('webhookData')
                ? WebhookData.fromJson(
                  json_['webhookData'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        webhookSubscriptions:
            json_.containsKey('webhookSubscriptions')
                ? WebhookSubscriptions.fromJson(
                  json_['webhookSubscriptions']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventsListenerEndpoint != null)
      'eventsListenerEndpoint': eventsListenerEndpoint!,
    if (eventsListenerPscSa != null)
      'eventsListenerPscSa': eventsListenerPscSa!,
    if (status != null) 'status': status!,
    if (webhookData != null) 'webhookData': webhookData!,
    if (webhookSubscriptions != null)
      'webhookSubscriptions': webhookSubscriptions!,
  };
}

/// EventingStatus indicates the state of eventing.
typedef EventingStatus = $EventingStatus;

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

  ExtractionRule({this.extractionRegex, this.source});

  ExtractionRule.fromJson(core.Map json_)
    : this(
        extractionRegex: json_['extractionRegex'] as core.String?,
        source:
            json_.containsKey('source')
                ? Source.fromJson(
                  json_['source'] as core.Map<core.String, core.dynamic>,
                )
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

  ExtractionRules({this.extractionRule});

  ExtractionRules.fromJson(core.Map json_)
    : this(
        extractionRule:
            (json_['extractionRule'] as core.List?)
                ?.map(
                  (value) => ExtractionRule.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (extractionRule != null) 'extractionRule': extractionRule!,
  };
}

/// Response message for Connectors.GetAuthSchema.
class FetchAuthSchemaResponse {
  /// List of AuthSchemas.
  core.List<AuthSchema>? authSchemas;

  /// JSON schema of the AuthSchemas.
  ///
  /// This is only populated if the view is JSON_SCHEMA. The schema is in
  /// draft-07 format.
  JsonAuthSchema? jsonSchema;

  FetchAuthSchemaResponse({this.authSchemas, this.jsonSchema});

  FetchAuthSchemaResponse.fromJson(core.Map json_)
    : this(
        authSchemas:
            (json_['authSchemas'] as core.List?)
                ?.map(
                  (value) => AuthSchema.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        jsonSchema:
            json_.containsKey('jsonSchema')
                ? JsonAuthSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authSchemas != null) 'authSchemas': authSchemas!,
    if (jsonSchema != null) 'jsonSchema': jsonSchema!,
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

  /// JsonSchema representation of this entity's schema
  JsonSchema? jsonSchema;

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
    this.jsonSchema,
    this.key,
    this.nullable,
    this.readonly,
  });

  Field.fromJson(core.Map json_)
    : this(
        additionalDetails:
            json_.containsKey('additionalDetails')
                ? json_['additionalDetails']
                    as core.Map<core.String, core.dynamic>
                : null,
        dataType: json_['dataType'] as core.String?,
        defaultValue: json_['defaultValue'],
        description: json_['description'] as core.String?,
        field: json_['field'] as core.String?,
        jsonSchema:
            json_.containsKey('jsonSchema')
                ? JsonSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        key: json_['key'] as core.bool?,
        nullable: json_['nullable'] as core.bool?,
        readonly: json_['readonly'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalDetails != null) 'additionalDetails': additionalDetails!,
    if (dataType != null) 'dataType': dataType!,
    if (defaultValue != null) 'defaultValue': defaultValue!,
    if (description != null) 'description': description!,
    if (field != null) 'field': field!,
    if (jsonSchema != null) 'jsonSchema': jsonSchema!,
    if (key != null) 'key': key!,
    if (nullable != null) 'nullable': nullable!,
    if (readonly != null) 'readonly': readonly!,
  };
}

/// Field that needs to be compared.
class FieldComparison {
  /// Boolean value
  core.bool? boolValue;

  /// Comparator to use for comparing the field value.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "COMPARATOR_UNSPECIFIED" : The default value.
  /// - "EQUALS" : The field value must be equal to the specified value.
  /// - "NOT_EQUALS" : The field value must not be equal to the specified value.
  core.String? comparator;

  /// Integer value
  core.String? intValue;

  /// Key of the field.
  ///
  /// Optional.
  core.String? key;

  /// String value
  core.String? stringValue;

  FieldComparison({
    this.boolValue,
    this.comparator,
    this.intValue,
    this.key,
    this.stringValue,
  });

  FieldComparison.fromJson(core.Map json_)
    : this(
        boolValue: json_['boolValue'] as core.bool?,
        comparator: json_['comparator'] as core.String?,
        intValue: json_['intValue'] as core.String?,
        key: json_['key'] as core.String?,
        stringValue: json_['stringValue'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (boolValue != null) 'boolValue': boolValue!,
    if (comparator != null) 'comparator': comparator!,
    if (intValue != null) 'intValue': intValue!,
    if (key != null) 'key': key!,
    if (stringValue != null) 'stringValue': stringValue!,
  };
}

/// Autoscaling config for connector deployment system metrics.
typedef HPAConfig = $HPAConfig;

/// Header details for a given header to be added to Endpoint.
class Header {
  /// Key of Header.
  ///
  /// Optional.
  core.String? key;

  /// Value of Header.
  ///
  /// Optional.
  core.String? value;

  Header({this.key, this.value});

  Header.fromJson(core.Map json_)
    : this(
        key: json_['key'] as core.String?,
        value: json_['value'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (key != null) 'key': key!,
    if (value != null) 'value': value!,
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

  /// JsonSchema representation of this action's parameter
  JsonSchema? jsonSchema;

  /// Specifies whether a null value is allowed.
  core.bool? nullable;

  /// Name of the Parameter.
  core.String? parameter;

  InputParameter({
    this.dataType,
    this.defaultValue,
    this.description,
    this.jsonSchema,
    this.nullable,
    this.parameter,
  });

  InputParameter.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        defaultValue: json_['defaultValue'],
        description: json_['description'] as core.String?,
        jsonSchema:
            json_.containsKey('jsonSchema')
                ? JsonSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nullable: json_['nullable'] as core.bool?,
        parameter: json_['parameter'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (defaultValue != null) 'defaultValue': defaultValue!,
    if (description != null) 'description': description!,
    if (jsonSchema != null) 'jsonSchema': jsonSchema!,
    if (nullable != null) 'nullable': nullable!,
    if (parameter != null) 'parameter': parameter!,
  };
}

/// JMS message denotes the source of the event
class JMS {
  /// Name of the JMS source.
  ///
  /// i.e. queueName or topicName
  ///
  /// Optional.
  core.String? name;

  /// Type of the JMS Source.
  ///
  /// i.e. Queue or Topic
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Default state.
  /// - "QUEUE" : JMS Queue.
  /// - "TOPIC" : JMS Topic.
  core.String? type;

  JMS({this.name, this.type});

  JMS.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (type != null) 'type': type!,
  };
}

/// JsonAuthSchema defines the JSON schema of all authentication types.
class JsonAuthSchema {
  /// JSON schema of the AuthSchemas.
  core.String? P_schema;

  /// List of AuthObjects.
  core.List<AuthObject>? oneOf;

  JsonAuthSchema({this.P_schema, this.oneOf});

  JsonAuthSchema.fromJson(core.Map json_)
    : this(
        P_schema: json_[r'$schema'] as core.String?,
        oneOf:
            (json_['oneOf'] as core.List?)
                ?.map(
                  (value) => AuthObject.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (P_schema != null) r'$schema': P_schema!,
    if (oneOf != null) 'oneOf': oneOf!,
  };
}

/// JsonSchema representation of schema metadata
class JsonSchema {
  /// Additional details apart from standard json schema fields, this gives
  /// flexibility to store metadata about the schema
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? additionalDetails;

  /// The default value of the field or object described by this schema.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? default_;

  /// A description of this schema.
  core.String? description;

  /// Possible values for an enumeration.
  ///
  /// This works in conjunction with `type` to represent types with a fixed set
  /// of legal values
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? enum_;

  /// Format of the value as per
  /// https://json-schema.org/understanding-json-schema/reference/string.html#format
  core.String? format;

  /// Schema that applies to array values, applicable only if this is of type
  /// `array`.
  JsonSchema? items;

  /// JDBC datatype of the field.
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
  core.String? jdbcType;

  /// The child schemas, applicable only if this is of type `object`.
  ///
  /// The key is the name of the property and the value is the json schema that
  /// describes that property
  core.Map<core.String, JsonSchema>? properties;

  /// Whether this property is required.
  core.List<core.String>? required;

  /// JSON Schema Validation: A Vocabulary for Structural Validation of JSON
  core.List<core.String>? type;

  JsonSchema({
    this.additionalDetails,
    this.default_,
    this.description,
    this.enum_,
    this.format,
    this.items,
    this.jdbcType,
    this.properties,
    this.required,
    this.type,
  });

  JsonSchema.fromJson(core.Map json_)
    : this(
        additionalDetails:
            json_.containsKey('additionalDetails')
                ? json_['additionalDetails']
                    as core.Map<core.String, core.dynamic>
                : null,
        default_: json_['default'],
        description: json_['description'] as core.String?,
        enum_: json_.containsKey('enum') ? json_['enum'] as core.List : null,
        format: json_['format'] as core.String?,
        items:
            json_.containsKey('items')
                ? JsonSchema.fromJson(
                  json_['items'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jdbcType: json_['jdbcType'] as core.String?,
        properties:
            (json_['properties'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(
                key,
                JsonSchema.fromJson(
                  value as core.Map<core.String, core.dynamic>,
                ),
              ),
            ),
        required:
            (json_['required'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        type:
            (json_['type'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalDetails != null) 'additionalDetails': additionalDetails!,
    if (default_ != null) 'default': default_!,
    if (description != null) 'description': description!,
    if (enum_ != null) 'enum': enum_!,
    if (format != null) 'format': format!,
    if (items != null) 'items': items!,
    if (jdbcType != null) 'jdbcType': jdbcType!,
    if (properties != null) 'properties': properties!,
    if (required != null) 'required': required!,
    if (type != null) 'type': type!,
  };
}

/// JWT claims used for the jwt-bearer authorization grant.
typedef JwtClaims = $JwtClaims;

/// Response message for ListActions API
class ListActionsResponse {
  /// list of actions
  core.List<RuntimeActionSchema>? actions;

  /// token for next page
  core.String? nextPageToken;

  ListActionsResponse({this.actions, this.nextPageToken});

  ListActionsResponse.fromJson(core.Map json_)
    : this(
        actions:
            (json_['actions'] as core.List?)
                ?.map(
                  (value) => RuntimeActionSchema.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actions != null) 'actions': actions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  ListConnectionsResponse.fromJson(core.Map json_)
    : this(
        connections:
            (json_['connections'] as core.List?)
                ?.map(
                  (value) => Connection.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  ListConnectorVersionsResponse.fromJson(core.Map json_)
    : this(
        connectorVersions:
            (json_['connectorVersions'] as core.List?)
                ?.map(
                  (value) => ConnectorVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  ListConnectorsResponse.fromJson(core.Map json_)
    : this(
        connectors:
            (json_['connectors'] as core.List?)
                ?.map(
                  (value) => Connector.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connectors != null) 'connectors': connectors!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for Connectors.ListCustomConnectorVersions.
class ListCustomConnectorVersionsResponse {
  /// A list of connector versions.
  core.List<CustomConnectorVersion>? customConnectorVersions;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListCustomConnectorVersionsResponse({
    this.customConnectorVersions,
    this.nextPageToken,
    this.unreachable,
  });

  ListCustomConnectorVersionsResponse.fromJson(core.Map json_)
    : this(
        customConnectorVersions:
            (json_['customConnectorVersions'] as core.List?)
                ?.map(
                  (value) => CustomConnectorVersion.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customConnectorVersions != null)
      'customConnectorVersions': customConnectorVersions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for Connectors.ListCustomConnectors.
class ListCustomConnectorsResponse {
  /// A list of customConnectors.
  core.List<CustomConnector>? customConnectors;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListCustomConnectorsResponse({
    this.customConnectors,
    this.nextPageToken,
    this.unreachable,
  });

  ListCustomConnectorsResponse.fromJson(core.Map json_)
    : this(
        customConnectors:
            (json_['customConnectors'] as core.List?)
                ?.map(
                  (value) => CustomConnector.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (customConnectors != null) 'customConnectors': customConnectors!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for ConnectorsService.ListEndUserAuthentications
class ListEndUserAuthenticationsResponse {
  /// Subscriptions.
  core.List<EndUserAuthentication>? endUserAuthentications;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListEndUserAuthenticationsResponse({
    this.endUserAuthentications,
    this.nextPageToken,
    this.unreachable,
  });

  ListEndUserAuthenticationsResponse.fromJson(core.Map json_)
    : this(
        endUserAuthentications:
            (json_['endUserAuthentications'] as core.List?)
                ?.map(
                  (value) => EndUserAuthentication.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endUserAuthentications != null)
      'endUserAuthentications': endUserAuthentications!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for ConnectorsService.ListEndpointAttachments
class ListEndpointAttachmentsResponse {
  /// EndpointAttachments.
  core.List<EndpointAttachment>? endpointAttachments;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListEndpointAttachmentsResponse({
    this.endpointAttachments,
    this.nextPageToken,
    this.unreachable,
  });

  ListEndpointAttachmentsResponse.fromJson(core.Map json_)
    : this(
        endpointAttachments:
            (json_['endpointAttachments'] as core.List?)
                ?.map(
                  (value) => EndpointAttachment.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (endpointAttachments != null)
      'endpointAttachments': endpointAttachments!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for ListEntityTypes API
class ListEntityTypesResponse {
  /// list of entity types
  core.List<RuntimeEntitySchema>? entityTypes;

  /// token for next page
  core.String? nextPageToken;

  ListEntityTypesResponse({this.entityTypes, this.nextPageToken});

  ListEntityTypesResponse.fromJson(core.Map json_)
    : this(
        entityTypes:
            (json_['entityTypes'] as core.List?)
                ?.map(
                  (value) => RuntimeEntitySchema.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityTypes != null) 'entityTypes': entityTypes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// Response message for ConnectorsService.ListEventSubscriptions
class ListEventSubscriptionsResponse {
  /// Subscriptions.
  core.List<EventSubscription>? eventSubscriptions;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListEventSubscriptionsResponse({
    this.eventSubscriptions,
    this.nextPageToken,
    this.unreachable,
  });

  ListEventSubscriptionsResponse.fromJson(core.Map json_)
    : this(
        eventSubscriptions:
            (json_['eventSubscriptions'] as core.List?)
                ?.map(
                  (value) => EventSubscription.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventSubscriptions != null) 'eventSubscriptions': eventSubscriptions!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Response message for Connectors.ListEventTypes.
class ListEventTypesResponse {
  /// A list of connector versions.
  core.List<EventType>? eventTypes;

  /// Next page token.
  core.String? nextPageToken;

  ListEventTypesResponse({this.eventTypes, this.nextPageToken});

  ListEventTypesResponse.fromJson(core.Map json_)
    : this(
        eventTypes:
            (json_['eventTypes'] as core.List?)
                ?.map(
                  (value) => EventType.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (eventTypes != null) 'eventTypes': eventTypes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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
        locations:
            (json_['locations'] as core.List?)
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

/// Response message for ConnectorsService.ListManagedZones
class ListManagedZonesResponse {
  /// ManagedZones.
  core.List<ManagedZone>? managedZones;

  /// Next page token.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListManagedZonesResponse({
    this.managedZones,
    this.nextPageToken,
    this.unreachable,
  });

  ListManagedZonesResponse.fromJson(core.Map json_)
    : this(
        managedZones:
            (json_['managedZones'] as core.List?)
                ?.map(
                  (value) => ManagedZone.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (managedZones != null) 'managedZones': managedZones!,
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
        operations:
            (json_['operations'] as core.List?)
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

/// Response message for Connectors.ListProviders.
class ListProvidersResponse {
  /// Next page token.
  core.String? nextPageToken;

  /// A list of providers.
  core.List<Provider>? providers;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListProvidersResponse({this.nextPageToken, this.providers, this.unreachable});

  ListProvidersResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        providers:
            (json_['providers'] as core.List?)
                ?.map(
                  (value) => Provider.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
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

  ListRuntimeActionSchemasResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        runtimeActionSchemas:
            (json_['runtimeActionSchemas'] as core.List?)
                ?.map(
                  (value) => RuntimeActionSchema.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
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

  ListRuntimeEntitySchemasResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        runtimeEntitySchemas:
            (json_['runtimeEntitySchemas'] as core.List?)
                ?.map(
                  (value) => RuntimeEntitySchema.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (runtimeEntitySchemas != null)
      'runtimeEntitySchemas': runtimeEntitySchemas!,
  };
}

/// Expected request for ListenEvent API.
class ListenEventRequest {
  /// Request payload.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? payload;

  ListenEventRequest({this.payload});

  ListenEventRequest.fromJson(core.Map json_)
    : this(
        payload:
            json_.containsKey('payload')
                ? json_['payload'] as core.Map<core.String, core.dynamic>
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (payload != null) 'payload': payload!,
  };
}

/// Expected response for ListenEvent API.
typedef ListenEventResponse = $Empty;

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

/// Determines whether or no a connection is locked.
///
/// If locked, a reason must be specified.
typedef LockConfig = $LockConfig;

/// Struct for representing boolean expressions.
class LogicalExpression {
  /// A list of fields to be compared.
  ///
  /// Optional.
  core.List<FieldComparison>? fieldComparisons;

  /// A list of nested conditions to be compared.
  ///
  /// Optional.
  core.List<LogicalExpression>? logicalExpressions;

  /// The logical operator to use between the fields and conditions.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "OPERATOR_UNSPECIFIED" : The default value.
  /// - "AND" : AND operator; The conditions must all be true.
  /// - "OR" : OR operator; At least one of the conditions must be true.
  core.String? logicalOperator;

  LogicalExpression({
    this.fieldComparisons,
    this.logicalExpressions,
    this.logicalOperator,
  });

  LogicalExpression.fromJson(core.Map json_)
    : this(
        fieldComparisons:
            (json_['fieldComparisons'] as core.List?)
                ?.map(
                  (value) => FieldComparison.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        logicalExpressions:
            (json_['logicalExpressions'] as core.List?)
                ?.map(
                  (value) => LogicalExpression.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        logicalOperator: json_['logicalOperator'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldComparisons != null) 'fieldComparisons': fieldComparisons!,
    if (logicalExpressions != null) 'logicalExpressions': logicalExpressions!,
    if (logicalOperator != null) 'logicalOperator': logicalOperator!,
  };
}

/// represents the Connector's Managed Zone resource
class ManagedZone {
  /// Created time.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of the resource.
  ///
  /// Optional.
  core.String? description;

  /// DNS Name of the resource
  ///
  /// Required.
  core.String? dns;

  /// Resource labels to represent user-provided metadata.
  ///
  /// Refer to cloud documentation on labels for more details.
  /// https://cloud.google.com/compute/docs/labeling-resources
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Resource name of the Managed Zone.
  ///
  /// Format: projects/{project}/locations/global/managedZones/{managed_zone}
  ///
  /// Output only.
  core.String? name;

  /// The name of the Target Project
  ///
  /// Required.
  core.String? targetProject;

  /// The name of the Target Project VPC Network
  ///
  /// Required.
  core.String? targetVpc;

  /// Updated time.
  ///
  /// Output only.
  core.String? updateTime;

  ManagedZone({
    this.createTime,
    this.description,
    this.dns,
    this.labels,
    this.name,
    this.targetProject,
    this.targetVpc,
    this.updateTime,
  });

  ManagedZone.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        dns: json_['dns'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        targetProject: json_['targetProject'] as core.String?,
        targetVpc: json_['targetVpc'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (createTime != null) 'createTime': createTime!,
    if (description != null) 'description': description!,
    if (dns != null) 'dns': dns!,
    if (labels != null) 'labels': labels!,
    if (name != null) 'name': name!,
    if (targetProject != null) 'targetProject': targetProject!,
    if (targetVpc != null) 'targetVpc': targetVpc!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// Marketplace connector details.
class MarketplaceConnectorDetails {
  /// Marketplace product name.
  core.String? marketplaceProduct;

  /// Marketplace product ID.
  core.String? marketplaceProductId;

  /// Marketplace product URL.
  core.String? marketplaceProductUri;

  /// The name of the partner.
  core.String? partner;

  MarketplaceConnectorDetails({
    this.marketplaceProduct,
    this.marketplaceProductId,
    this.marketplaceProductUri,
    this.partner,
  });

  MarketplaceConnectorDetails.fromJson(core.Map json_)
    : this(
        marketplaceProduct: json_['marketplaceProduct'] as core.String?,
        marketplaceProductId: json_['marketplaceProductId'] as core.String?,
        marketplaceProductUri: json_['marketplaceProductUri'] as core.String?,
        partner: json_['partner'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (marketplaceProduct != null) 'marketplaceProduct': marketplaceProduct!,
    if (marketplaceProductId != null)
      'marketplaceProductId': marketplaceProductId!,
    if (marketplaceProductUri != null)
      'marketplaceProductUri': marketplaceProductUri!,
    if (partner != null) 'partner': partner!,
  };
}

/// MultipleSelectConfig represents the multiple options for a config variable.
class MultipleSelectConfig {
  /// Allow custom values.
  ///
  /// Optional.
  core.bool? allowCustomValues;

  /// Multiple select options.
  ///
  /// Required.
  core.List<MultipleSelectOption>? multipleSelectOptions;

  /// Value separator.
  ///
  /// Only "," can be used for OAuth auth code flow scope field.
  ///
  /// Required.
  core.String? valueSeparator;

  MultipleSelectConfig({
    this.allowCustomValues,
    this.multipleSelectOptions,
    this.valueSeparator,
  });

  MultipleSelectConfig.fromJson(core.Map json_)
    : this(
        allowCustomValues: json_['allowCustomValues'] as core.bool?,
        multipleSelectOptions:
            (json_['multipleSelectOptions'] as core.List?)
                ?.map(
                  (value) => MultipleSelectOption.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        valueSeparator: json_['valueSeparator'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (allowCustomValues != null) 'allowCustomValues': allowCustomValues!,
    if (multipleSelectOptions != null)
      'multipleSelectOptions': multipleSelectOptions!,
    if (valueSeparator != null) 'valueSeparator': valueSeparator!,
  };
}

/// MultiplSelecteOption represents the single option for a config variable.
class MultipleSelectOption {
  /// Value of the option.
  ///
  /// Optional.
  core.String? description;

  /// Display name of the option.
  ///
  /// Required.
  core.String? displayName;

  /// Key of the option.
  ///
  /// Required.
  core.String? key;

  /// Indicates if the option is preselected.
  ///
  /// Optional.
  core.bool? preselected;

  MultipleSelectOption({
    this.description,
    this.displayName,
    this.key,
    this.preselected,
  });

  MultipleSelectOption.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        key: json_['key'] as core.String?,
        preselected: json_['preselected'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (key != null) 'key': key!,
    if (preselected != null) 'preselected': preselected!,
  };
}

/// Regional Network Config.
class NetworkConfig {
  /// Egress IPs
  ///
  /// Output only.
  core.List<core.String>? egressIps;

  /// Egress mode for the network.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "NETWORK_EGRESS_MODE_UNSPECIFIED" : Egress mode unspecified.
  /// - "AUTO_IP" : Network egress through auto assigned IPs.
  /// - "STATIC_IP" : Network egress through static IPs.
  core.String? egressMode;

  NetworkConfig({this.egressIps, this.egressMode});

  NetworkConfig.fromJson(core.Map json_)
    : this(
        egressIps:
            (json_['egressIps'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        egressMode: json_['egressMode'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (egressIps != null) 'egressIps': egressIps!,
    if (egressMode != null) 'egressMode': egressMode!,
  };
}

/// Node configuration for the connection.
typedef NodeConfig = $NodeConfig;

/// pass only at create and not update using updateMask Auth Code Data
class OAuthTokenData {
  /// Access token for the connection.
  ///
  /// Optional.
  EUASecret? accessToken;

  /// Timestamp when the access token was created.
  ///
  /// Optional.
  core.String? createTime;

  /// Time in seconds when the access token expires.
  ///
  /// Optional.
  core.String? expiry;

  /// Refresh token for the connection.
  ///
  /// Optional.
  EUASecret? refreshToken;

  OAuthTokenData({
    this.accessToken,
    this.createTime,
    this.expiry,
    this.refreshToken,
  });

  OAuthTokenData.fromJson(core.Map json_)
    : this(
        accessToken:
            json_.containsKey('accessToken')
                ? EUASecret.fromJson(
                  json_['accessToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        createTime: json_['createTime'] as core.String?,
        expiry: json_['expiry'] as core.String?,
        refreshToken:
            json_.containsKey('refreshToken')
                ? EUASecret.fromJson(
                  json_['refreshToken'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (accessToken != null) 'accessToken': accessToken!,
    if (createTime != null) 'createTime': createTime!,
    if (expiry != null) 'expiry': expiry!,
    if (refreshToken != null) 'refreshToken': refreshToken!,
  };
}

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication.
///
/// See https://www.rfc-editor.org/rfc/rfc6749#section-1.3.1 for more details.
class Oauth2AuthCodeFlow {
  /// Authorization code to be exchanged for access and refresh tokens.
  ///
  /// Optional.
  core.String? authCode;

  /// Auth URL for Authorization Code Flow
  ///
  /// Optional.
  core.String? authUri;

  /// Client ID for user-provided OAuth app.
  ///
  /// Optional.
  core.String? clientId;

  /// Client secret for user-provided OAuth app.
  ///
  /// Optional.
  Secret? clientSecret;

  /// Whether to enable PKCE when the user performs the auth code flow.
  ///
  /// Optional.
  core.bool? enablePkce;

  /// PKCE verifier to be used during the auth code exchange.
  ///
  /// Optional.
  core.String? pkceVerifier;

  /// Redirect URI to be provided during the auth code exchange.
  ///
  /// Optional.
  core.String? redirectUri;

  /// Scopes the connection will request when the user performs the auth code
  /// flow.
  ///
  /// Optional.
  core.List<core.String>? scopes;

  Oauth2AuthCodeFlow({
    this.authCode,
    this.authUri,
    this.clientId,
    this.clientSecret,
    this.enablePkce,
    this.pkceVerifier,
    this.redirectUri,
    this.scopes,
  });

  Oauth2AuthCodeFlow.fromJson(core.Map json_)
    : this(
        authCode: json_['authCode'] as core.String?,
        authUri: json_['authUri'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret:
            json_.containsKey('clientSecret')
                ? Secret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        enablePkce: json_['enablePkce'] as core.bool?,
        pkceVerifier: json_['pkceVerifier'] as core.String?,
        redirectUri: json_['redirectUri'] as core.String?,
        scopes:
            (json_['scopes'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (authCode != null) 'authCode': authCode!,
    if (authUri != null) 'authUri': authUri!,
    if (clientId != null) 'clientId': clientId!,
    if (clientSecret != null) 'clientSecret': clientSecret!,
    if (enablePkce != null) 'enablePkce': enablePkce!,
    if (pkceVerifier != null) 'pkceVerifier': pkceVerifier!,
    if (redirectUri != null) 'redirectUri': redirectUri!,
    if (scopes != null) 'scopes': scopes!,
  };
}

/// Parameters to support Oauth 2.0 Auth Code Grant Authentication using Google
/// Provided OAuth Client.
///
/// See https://tools.ietf.org/html/rfc6749#section-1.3.1 for more details.
typedef Oauth2AuthCodeFlowGoogleManaged = $Oauth2AuthCodeFlowGoogleManaged;

/// Parameters to support Oauth 2.0 Client Credentials Grant Authentication.
///
/// See https://tools.ietf.org/html/rfc6749#section-1.3.4 for more details.
class Oauth2ClientCredentials {
  /// The client identifier.
  ///
  /// Optional.
  core.String? clientId;

  /// Secret version reference containing the client secret.
  ///
  /// Optional.
  Secret? clientSecret;

  Oauth2ClientCredentials({this.clientId, this.clientSecret});

  Oauth2ClientCredentials.fromJson(core.Map json_)
    : this(
        clientId: json_['clientId'] as core.String?,
        clientSecret:
            json_.containsKey('clientSecret')
                ? Secret.fromJson(
                  json_['clientSecret'] as core.Map<core.String, core.dynamic>,
                )
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
  ///
  /// Optional.
  Secret? clientKey;

  /// JwtClaims providers fields to generate the token.
  ///
  /// Optional.
  JwtClaims? jwtClaims;

  Oauth2JwtBearer({this.clientKey, this.jwtClaims});

  Oauth2JwtBearer.fromJson(core.Map json_)
    : this(
        clientKey:
            json_.containsKey('clientKey')
                ? Secret.fromJson(
                  json_['clientKey'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        jwtClaims:
            json_.containsKey('jwtClaims')
                ? JwtClaims.fromJson(
                  json_['jwtClaims'] as core.Map<core.String, core.dynamic>,
                )
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
        error:
            json_.containsKey('error')
                ? Status.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        metadata:
            json_.containsKey('metadata')
                ? json_['metadata'] as core.Map<core.String, core.dynamic>
                : null,
        name: json_['name'] as core.String?,
        response:
            json_.containsKey('response')
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

/// Partner metadata details.
///
/// This will be populated when publishing the custom connector as a partner
/// connector version. On publishing, parntner connector version will be created
/// using the fields in PartnerMetadata.
class PartnerMetadata {
  /// Whether the user has accepted the Google Cloud Platform Terms of Service
  /// (https://cloud.google.com/terms/) and the Google Cloud Marketplace Terms
  /// of Service (https://cloud.google.com/terms/marketplace/launcher?hl=en).
  ///
  /// Required.
  core.bool? acceptGcpTos;

  /// Additional comments for the submission.
  ///
  /// Optional.
  core.String? additionalComments;

  /// Confirmation that connector meets all applicable requirements mentioned in
  /// the Partner Connector Publishing requirements list and Partner onboardiong
  /// requirements list
  /// (https://cloud.google.com/marketplace/docs/partners/get-started#requirements).
  ///
  /// Required.
  core.bool? confirmPartnerRequirements;

  /// Public URL for the demo video.
  ///
  /// Required.
  core.String? demoUri;

  /// Has dynamic open api spec uri.
  ///
  /// Output only.
  core.bool? hasDynamicSpecUri;

  /// Integration example templates for the custom connector.
  ///
  /// Required.
  core.String? integrationTemplates;

  /// Local spec path.
  ///
  /// Required if has_dynamic_spec_uri is true.
  ///
  /// Output only.
  core.String? localSpecPath;

  /// Marketplace product name.
  ///
  /// Optional.
  core.String? marketplaceProduct;

  /// Marketplace product ID.
  ///
  /// Required.
  core.String? marketplaceProductId;

  /// Marketplace product project ID.
  ///
  /// Optional.
  core.String? marketplaceProductProjectId;

  /// Marketplace product URL.
  ///
  /// Optional.
  core.String? marketplaceProductUri;

  /// Partner name.
  ///
  /// Required.
  core.String? partner;

  /// Partner connector display name.
  ///
  /// Required.
  core.String? partnerConnectorDisplayName;

  /// Publish request time.
  ///
  /// Output only.
  core.String? publishRequestTime;

  /// Target application for which partner connector is built.
  ///
  /// Required.
  core.String? targetApplication;

  /// Target customer segment for the partner connector.
  ///
  /// Required.
  core.String? targetCustomerSegment;

  /// Details about partner connector use cases.
  ///
  /// Required.
  core.String? useCases;

  PartnerMetadata({
    this.acceptGcpTos,
    this.additionalComments,
    this.confirmPartnerRequirements,
    this.demoUri,
    this.hasDynamicSpecUri,
    this.integrationTemplates,
    this.localSpecPath,
    this.marketplaceProduct,
    this.marketplaceProductId,
    this.marketplaceProductProjectId,
    this.marketplaceProductUri,
    this.partner,
    this.partnerConnectorDisplayName,
    this.publishRequestTime,
    this.targetApplication,
    this.targetCustomerSegment,
    this.useCases,
  });

  PartnerMetadata.fromJson(core.Map json_)
    : this(
        acceptGcpTos: json_['acceptGcpTos'] as core.bool?,
        additionalComments: json_['additionalComments'] as core.String?,
        confirmPartnerRequirements:
            json_['confirmPartnerRequirements'] as core.bool?,
        demoUri: json_['demoUri'] as core.String?,
        hasDynamicSpecUri: json_['hasDynamicSpecUri'] as core.bool?,
        integrationTemplates: json_['integrationTemplates'] as core.String?,
        localSpecPath: json_['localSpecPath'] as core.String?,
        marketplaceProduct: json_['marketplaceProduct'] as core.String?,
        marketplaceProductId: json_['marketplaceProductId'] as core.String?,
        marketplaceProductProjectId:
            json_['marketplaceProductProjectId'] as core.String?,
        marketplaceProductUri: json_['marketplaceProductUri'] as core.String?,
        partner: json_['partner'] as core.String?,
        partnerConnectorDisplayName:
            json_['partnerConnectorDisplayName'] as core.String?,
        publishRequestTime: json_['publishRequestTime'] as core.String?,
        targetApplication: json_['targetApplication'] as core.String?,
        targetCustomerSegment: json_['targetCustomerSegment'] as core.String?,
        useCases: json_['useCases'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (acceptGcpTos != null) 'acceptGcpTos': acceptGcpTos!,
    if (additionalComments != null) 'additionalComments': additionalComments!,
    if (confirmPartnerRequirements != null)
      'confirmPartnerRequirements': confirmPartnerRequirements!,
    if (demoUri != null) 'demoUri': demoUri!,
    if (hasDynamicSpecUri != null) 'hasDynamicSpecUri': hasDynamicSpecUri!,
    if (integrationTemplates != null)
      'integrationTemplates': integrationTemplates!,
    if (localSpecPath != null) 'localSpecPath': localSpecPath!,
    if (marketplaceProduct != null) 'marketplaceProduct': marketplaceProduct!,
    if (marketplaceProductId != null)
      'marketplaceProductId': marketplaceProductId!,
    if (marketplaceProductProjectId != null)
      'marketplaceProductProjectId': marketplaceProductProjectId!,
    if (marketplaceProductUri != null)
      'marketplaceProductUri': marketplaceProductUri!,
    if (partner != null) 'partner': partner!,
    if (partnerConnectorDisplayName != null)
      'partnerConnectorDisplayName': partnerConnectorDisplayName!,
    if (publishRequestTime != null) 'publishRequestTime': publishRequestTime!,
    if (targetApplication != null) 'targetApplication': targetApplication!,
    if (targetCustomerSegment != null)
      'targetCustomerSegment': targetCustomerSegment!,
    if (useCases != null) 'useCases': useCases!,
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
    etag = convert.base64
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

  Policy({this.auditConfigs, this.bindings, this.etag, this.version});

  Policy.fromJson(core.Map json_)
    : this(
        auditConfigs:
            (json_['auditConfigs'] as core.List?)
                ?.map(
                  (value) => AuditConfig.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        bindings:
            (json_['bindings'] as core.List?)
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
  /// - "TEST" : TEST.
  /// - "PRIVATE_PREVIEW" : PRIVATE_PREVIEW.
  core.String? launchStage;

  /// Resource name of the Provider.
  ///
  /// Format: projects/{project}/locations/{location}/providers/{provider} Only
  /// global location is supported for Provider resource.
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

  Provider.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        documentationUri: json_['documentationUri'] as core.String?,
        externalUri: json_['externalUri'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        launchStage: json_['launchStage'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
        webAssetsLocation: json_['webAssetsLocation'] as core.String?,
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

/// Pub/Sub message includes details of the Destination Pub/Sub topic.
class PubSub {
  /// Pub/Sub message attributes to be added to the Pub/Sub message.
  ///
  /// Optional.
  core.Map<core.String, core.String>? attributes;

  /// Configuration for configuring the trigger
  ///
  /// Optional.
  core.List<ConfigVariable>? configVariables;

  /// The project id which has the Pub/Sub topic.
  ///
  /// Required.
  core.String? projectId;

  /// The topic id of the Pub/Sub topic.
  ///
  /// Required.
  core.String? topicId;

  PubSub({this.attributes, this.configVariables, this.projectId, this.topicId});

  PubSub.fromJson(core.Map json_)
    : this(
        attributes: (json_['attributes']
                as core.Map<core.String, core.dynamic>?)
            ?.map((key, value) => core.MapEntry(key, value as core.String)),
        configVariables:
            (json_['configVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        projectId: json_['projectId'] as core.String?,
        topicId: json_['topicId'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (attributes != null) 'attributes': attributes!,
    if (configVariables != null) 'configVariables': configVariables!,
    if (projectId != null) 'projectId': projectId!,
    if (topicId != null) 'topicId': topicId!,
  };
}

/// Request message for ConnectorsService.PublishCustomConnectorVersion
class PublishCustomConnectorVersionRequest {
  /// Partner metadata details for validating and publishing the custom
  /// connector as a partner connector version.
  ///
  /// Required.
  PartnerMetadata? partnerMetadata;

  PublishCustomConnectorVersionRequest({this.partnerMetadata});

  PublishCustomConnectorVersionRequest.fromJson(core.Map json_)
    : this(
        partnerMetadata:
            json_.containsKey('partnerMetadata')
                ? PartnerMetadata.fromJson(
                  json_['partnerMetadata']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (partnerMetadata != null) 'partnerMetadata': partnerMetadata!,
  };
}

/// Publish status of a custom connector.
class PublishStatus {
  /// Publish state of the custom connector.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "PUBLISH_STATE_UNSPECIFIED" : State Unspecified.
  /// - "PUBLISHED" : Connector version has been published as partner connector
  /// version.
  /// - "PUBLISH_IN_PROGRESS" : Connector version is in the process of being
  /// published as partner connector version.
  /// - "UNPUBLISHED" : Connector version has been unpublished as partner
  /// connector version
  core.String? publishState;

  /// Publish time.
  ///
  /// Output only.
  core.String? publishTime;

  /// Partner connector name.
  ///
  /// Will be set on the custom connector. Format:
  /// providers/partner/connectors//versions/
  ///
  /// Output only.
  core.String? publishedAs;

  /// Custom connector name.
  ///
  /// Will be set on the partner connector. Format:
  /// providers/customconnectors/connectors//versions/
  ///
  /// Output only.
  core.String? publishedSource;

  PublishStatus({
    this.publishState,
    this.publishTime,
    this.publishedAs,
    this.publishedSource,
  });

  PublishStatus.fromJson(core.Map json_)
    : this(
        publishState: json_['publishState'] as core.String?,
        publishTime: json_['publishTime'] as core.String?,
        publishedAs: json_['publishedAs'] as core.String?,
        publishedSource: json_['publishedSource'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (publishState != null) 'publishState': publishState!,
    if (publishTime != null) 'publishTime': publishTime!,
    if (publishedAs != null) 'publishedAs': publishedAs!,
    if (publishedSource != null) 'publishedSource': publishedSource!,
  };
}

/// Request message for ConnectorsService.RefreshConnectionSchemaMetadata.
typedef RefreshConnectionSchemaMetadataRequest = $Empty;

/// Regional Settings details.
class RegionalSettings {
  /// Regional encryption config to hold CMEK details.
  ///
  /// Optional.
  EncryptionConfig? encryptionConfig;

  /// Resource name of the Connection.
  ///
  /// Format: projects/{project}/locations/{location}/regionalSettings
  ///
  /// Output only.
  core.String? name;

  /// Regional network config.
  ///
  /// Optional.
  NetworkConfig? networkConfig;

  /// Specifies whether the region is provisioned.
  ///
  /// Output only.
  core.bool? provisioned;

  RegionalSettings({
    this.encryptionConfig,
    this.name,
    this.networkConfig,
    this.provisioned,
  });

  RegionalSettings.fromJson(core.Map json_)
    : this(
        encryptionConfig:
            json_.containsKey('encryptionConfig')
                ? EncryptionConfig.fromJson(
                  json_['encryptionConfig']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
        networkConfig:
            json_.containsKey('networkConfig')
                ? NetworkConfig.fromJson(
                  json_['networkConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        provisioned: json_['provisioned'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (encryptionConfig != null) 'encryptionConfig': encryptionConfig!,
    if (name != null) 'name': name!,
    if (networkConfig != null) 'networkConfig': networkConfig!,
    if (provisioned != null) 'provisioned': provisioned!,
  };
}

/// Request message for ConnectorsService.RepairEventing
typedef RepairEventingRequest = $Empty;

/// Resource definition
class Resource {
  /// Template to uniquely represent a Google Cloud resource in a format IAM
  /// expects This is a template that can have references to other values
  /// provided in the config variable template.
  ///
  /// Optional.
  core.String? pathTemplate;

  /// Different types of resource supported.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Value type is not specified.
  /// - "GCP_PROJECT" : Google Cloud Project Resource.
  /// - "GCP_RESOURCE" : Any Google Cloud Resource which is identified uniquely
  /// by IAM.
  /// - "GCP_SECRETMANAGER_SECRET" : Google Cloud Secret Resource.
  /// - "GCP_SECRETMANAGER_SECRET_VERSION" : Google Cloud Secret Version
  /// Resource.
  core.String? type;

  Resource({this.pathTemplate, this.type});

  Resource.fromJson(core.Map json_)
    : this(
        pathTemplate: json_['pathTemplate'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (pathTemplate != null) 'pathTemplate': pathTemplate!,
    if (type != null) 'type': type!,
  };
}

/// Resource limits defined for connection pods of a given connector type.
typedef ResourceLimits = $ResourceLimits;

/// Resource requests defined for connection pods of a given connector type.
typedef ResourceRequests = $ResourceRequests;

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

  /// The following field specifies the default value of the Parameter provided
  /// by the external system if a value is not provided.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// A brief description of the field.
  core.String? description;

  /// Name of the result field.
  core.String? field;

  /// JsonSchema representation of this action's result
  JsonSchema? jsonSchema;

  /// Specifies whether a null value is allowed.
  core.bool? nullable;

  ResultMetadata({
    this.dataType,
    this.defaultValue,
    this.description,
    this.field,
    this.jsonSchema,
    this.nullable,
  });

  ResultMetadata.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        defaultValue: json_['defaultValue'],
        description: json_['description'] as core.String?,
        field: json_['field'] as core.String?,
        jsonSchema:
            json_.containsKey('jsonSchema')
                ? JsonSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        nullable: json_['nullable'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (dataType != null) 'dataType': dataType!,
    if (defaultValue != null) 'defaultValue': defaultValue!,
    if (description != null) 'description': description!,
    if (field != null) 'field': field!,
    if (jsonSchema != null) 'jsonSchema': jsonSchema!,
    if (nullable != null) 'nullable': nullable!,
  };
}

/// Request message for ConnectorsService.RefreshEventSubscription
typedef RetryEventSubscriptionRequest = $Empty;

/// This configuration defines all the Cloud IAM roles that needs to be granted
/// to a particular Google Cloud resource for the selected principal like
/// service account.
///
/// These configurations will let UI display to customers what IAM roles need to
/// be granted by them. Or these configurations can be used by the UI to render
/// a 'grant' button to do the same on behalf of the user.
class RoleGrant {
  /// Template that UI can use to provide helper text to customers.
  ///
  /// Optional.
  core.String? helperTextTemplate;

  /// Principal/Identity for whom the role need to assigned.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PRINCIPAL_UNSPECIFIED" : Value type is not specified.
  /// - "CONNECTOR_SA" : Service Account used for Connector workload identity
  /// This is either the default service account if unspecified or Service
  /// Account provided by Customers through BYOSA.
  core.String? principal;

  /// Resource on which the roles needs to be granted for the principal.
  ///
  /// Optional.
  Resource? resource;

  /// List of roles that need to be granted.
  ///
  /// Optional.
  core.List<core.String>? roles;

  RoleGrant({
    this.helperTextTemplate,
    this.principal,
    this.resource,
    this.roles,
  });

  RoleGrant.fromJson(core.Map json_)
    : this(
        helperTextTemplate: json_['helperTextTemplate'] as core.String?,
        principal: json_['principal'] as core.String?,
        resource:
            json_.containsKey('resource')
                ? Resource.fromJson(
                  json_['resource'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        roles:
            (json_['roles'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (helperTextTemplate != null) 'helperTextTemplate': helperTextTemplate!,
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

  /// Brief Description of action
  ///
  /// Output only.
  core.String? description;

  /// Display Name of action to be shown on client side
  ///
  /// Output only.
  core.String? displayName;

  /// JsonSchema representation of this action's input metadata
  ///
  /// Output only.
  JsonSchema? inputJsonSchema;

  /// List of input parameter metadata for the action.
  ///
  /// Output only.
  core.List<InputParameter>? inputParameters;

  /// Input schema as string.
  ///
  /// Output only.
  core.String? inputSchemaAsString;

  /// JsonSchema representation of this action's result metadata
  ///
  /// Output only.
  JsonSchema? resultJsonSchema;

  /// List of result field metadata.
  ///
  /// Output only.
  core.List<ResultMetadata>? resultMetadata;

  /// Result schema as string.
  ///
  /// Output only.
  core.String? resultSchemaAsString;

  RuntimeActionSchema({
    this.action,
    this.description,
    this.displayName,
    this.inputJsonSchema,
    this.inputParameters,
    this.inputSchemaAsString,
    this.resultJsonSchema,
    this.resultMetadata,
    this.resultSchemaAsString,
  });

  RuntimeActionSchema.fromJson(core.Map json_)
    : this(
        action: json_['action'] as core.String?,
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        inputJsonSchema:
            json_.containsKey('inputJsonSchema')
                ? JsonSchema.fromJson(
                  json_['inputJsonSchema']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputParameters:
            (json_['inputParameters'] as core.List?)
                ?.map(
                  (value) => InputParameter.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        inputSchemaAsString: json_['inputSchemaAsString'] as core.String?,
        resultJsonSchema:
            json_.containsKey('resultJsonSchema')
                ? JsonSchema.fromJson(
                  json_['resultJsonSchema']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        resultMetadata:
            (json_['resultMetadata'] as core.List?)
                ?.map(
                  (value) => ResultMetadata.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        resultSchemaAsString: json_['resultSchemaAsString'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (action != null) 'action': action!,
    if (description != null) 'description': description!,
    if (displayName != null) 'displayName': displayName!,
    if (inputJsonSchema != null) 'inputJsonSchema': inputJsonSchema!,
    if (inputParameters != null) 'inputParameters': inputParameters!,
    if (inputSchemaAsString != null)
      'inputSchemaAsString': inputSchemaAsString!,
    if (resultJsonSchema != null) 'resultJsonSchema': resultJsonSchema!,
    if (resultMetadata != null) 'resultMetadata': resultMetadata!,
    if (resultSchemaAsString != null)
      'resultSchemaAsString': resultSchemaAsString!,
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

  /// Name of the runtimeConfig resource.
  ///
  /// Format: projects/{project}/locations/{location}/runtimeConfig
  ///
  /// Output only.
  core.String? name;

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
    this.name,
    this.runtimeEndpoint,
    this.schemaGcsBucket,
    this.serviceDirectory,
    this.state,
  });

  RuntimeConfig.fromJson(core.Map json_)
    : this(
        conndSubscription: json_['conndSubscription'] as core.String?,
        conndTopic: json_['conndTopic'] as core.String?,
        controlPlaneSubscription:
            json_['controlPlaneSubscription'] as core.String?,
        controlPlaneTopic: json_['controlPlaneTopic'] as core.String?,
        locationId: json_['locationId'] as core.String?,
        name: json_['name'] as core.String?,
        runtimeEndpoint: json_['runtimeEndpoint'] as core.String?,
        schemaGcsBucket: json_['schemaGcsBucket'] as core.String?,
        serviceDirectory: json_['serviceDirectory'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (conndSubscription != null) 'conndSubscription': conndSubscription!,
    if (conndTopic != null) 'conndTopic': conndTopic!,
    if (controlPlaneSubscription != null)
      'controlPlaneSubscription': controlPlaneSubscription!,
    if (controlPlaneTopic != null) 'controlPlaneTopic': controlPlaneTopic!,
    if (locationId != null) 'locationId': locationId!,
    if (name != null) 'name': name!,
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

  /// JsonSchema representation of this entity's metadata
  ///
  /// Output only.
  JsonSchema? jsonSchema;

  /// List of operations supported by this entity
  core.List<core.String>? operations;

  RuntimeEntitySchema({
    this.entity,
    this.fields,
    this.jsonSchema,
    this.operations,
  });

  RuntimeEntitySchema.fromJson(core.Map json_)
    : this(
        entity: json_['entity'] as core.String?,
        fields:
            (json_['fields'] as core.List?)
                ?.map(
                  (value) => Field.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        jsonSchema:
            json_.containsKey('jsonSchema')
                ? JsonSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        operations:
            (json_['operations'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entity != null) 'entity': entity!,
    if (fields != null) 'fields': fields!,
    if (jsonSchema != null) 'jsonSchema': jsonSchema!,
    if (operations != null) 'operations': operations!,
  };
}

/// Config for connection schema refresh
class SchemaRefreshConfig {
  /// Whether to use displayName for actions in UI.
  core.bool? useActionDisplayNames;

  /// Whether to use synchronous schema refresh.
  core.bool? useSynchronousSchemaRefresh;

  SchemaRefreshConfig({
    this.useActionDisplayNames,
    this.useSynchronousSchemaRefresh,
  });

  SchemaRefreshConfig.fromJson(core.Map json_)
    : this(
        useActionDisplayNames: json_['useActionDisplayNames'] as core.bool?,
        useSynchronousSchemaRefresh:
            json_['useSynchronousSchemaRefresh'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (useActionDisplayNames != null)
      'useActionDisplayNames': useActionDisplayNames!,
    if (useSynchronousSchemaRefresh != null)
      'useSynchronousSchemaRefresh': useSynchronousSchemaRefresh!,
  };
}

/// SearchConnectionInstance represents an instance of connector with specific
/// fields
class SearchConnectionInstance {
  /// Schema of a runtime action.
  ///
  /// Output only.
  RuntimeActionSchema? actionSchema;

  /// Connection details
  ///
  /// Output only.
  Connection? connection;

  /// Schema of a runtime entity.
  ///
  /// Output only.
  RuntimeEntitySchema? entitySchema;

  SearchConnectionInstance({
    this.actionSchema,
    this.connection,
    this.entitySchema,
  });

  SearchConnectionInstance.fromJson(core.Map json_)
    : this(
        actionSchema:
            json_.containsKey('actionSchema')
                ? RuntimeActionSchema.fromJson(
                  json_['actionSchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        connection:
            json_.containsKey('connection')
                ? Connection.fromJson(
                  json_['connection'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        entitySchema:
            json_.containsKey('entitySchema')
                ? RuntimeEntitySchema.fromJson(
                  json_['entitySchema'] as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionSchema != null) 'actionSchema': actionSchema!,
    if (connection != null) 'connection': connection!,
    if (entitySchema != null) 'entitySchema': entitySchema!,
  };
}

/// Response message for Connectors.SearchConnections.
class SearchConnectionsResponse {
  /// A list of connectors.
  core.List<SearchConnectionInstance>? connections;

  /// page_token
  ///
  /// Optional.
  core.String? nextPageToken;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  SearchConnectionsResponse({
    this.connections,
    this.nextPageToken,
    this.unreachable,
  });

  SearchConnectionsResponse.fromJson(core.Map json_)
    : this(
        connections:
            (json_['connections'] as core.List?)
                ?.map(
                  (value) => SearchConnectionInstance.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable:
            (json_['unreachable'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (connections != null) 'connections': connections!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
    if (unreachable != null) 'unreachable': unreachable!,
  };
}

/// Secret provides a reference to entries in Secret Manager.
typedef Secret = $Secret;

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
        policy:
            json_.containsKey('policy')
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

/// Global Settings details.
class Settings {
  /// Resource name of the Connection.
  ///
  /// Format: projects/{project}/locations/global/settings}
  ///
  /// Output only.
  core.String? name;

  /// Flag indicates if user is in PayG model
  ///
  /// Output only.
  core.bool? payg;

  /// Tenant project id of the consumer project.
  ///
  /// Output only.
  core.String? tenantProjectId;

  /// Flag indicates whether vpc-sc is enabled.
  ///
  /// Optional.
  core.bool? vpcsc;

  Settings({this.name, this.payg, this.tenantProjectId, this.vpcsc});

  Settings.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        payg: json_['payg'] as core.bool?,
        tenantProjectId: json_['tenantProjectId'] as core.String?,
        vpcsc: json_['vpcsc'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
    if (payg != null) 'payg': payg!,
    if (tenantProjectId != null) 'tenantProjectId': tenantProjectId!,
    if (vpcsc != null) 'vpcsc': vpcsc!,
  };
}

/// Source to extract the backend from.
class Source {
  /// Field identifier.
  ///
  /// For example config variable name.
  core.String? fieldId;

  /// Type of the source.
  /// Possible string values are:
  /// - "SOURCE_TYPE_UNSPECIFIED" : Default SOURCE.
  /// - "CONFIG_VARIABLE" : Config Variable source type.
  core.String? sourceType;

  Source({this.fieldId, this.sourceType});

  Source.fromJson(core.Map json_)
    : this(
        fieldId: json_['fieldId'] as core.String?,
        sourceType: json_['sourceType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fieldId != null) 'fieldId': fieldId!,
    if (sourceType != null) 'sourceType': sourceType!,
  };
}

/// Parameters to support Ssh public key Authentication.
class SshPublicKey {
  /// Format of SSH Client cert.
  ///
  /// Optional.
  core.String? certType;

  /// SSH Client Cert.
  ///
  /// It should contain both public and private key.
  ///
  /// Optional.
  Secret? sshClientCert;

  /// Password (passphrase) for ssh client certificate if it has one.
  ///
  /// Optional.
  Secret? sshClientCertPass;

  /// The user account used to authenticate.
  ///
  /// Optional.
  core.String? username;

  SshPublicKey({
    this.certType,
    this.sshClientCert,
    this.sshClientCertPass,
    this.username,
  });

  SshPublicKey.fromJson(core.Map json_)
    : this(
        certType: json_['certType'] as core.String?,
        sshClientCert:
            json_.containsKey('sshClientCert')
                ? Secret.fromJson(
                  json_['sshClientCert'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        sshClientCertPass:
            json_.containsKey('sshClientCertPass')
                ? Secret.fromJson(
                  json_['sshClientCertPass']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (certType != null) 'certType': certType!,
    if (sshClientCert != null) 'sshClientCert': sshClientCert!,
    if (sshClientCertPass != null) 'sshClientCertPass': sshClientCertPass!,
    if (username != null) 'username': username!,
  };
}

/// SSL Configuration of a connection
class SslConfig {
  /// Additional SSL related field values
  ///
  /// Optional.
  core.List<ConfigVariable>? additionalVariables;

  /// Type of Client Cert (PEM/JKS/..
  ///
  /// etc.)
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CERT_TYPE_UNSPECIFIED" : Cert type unspecified.
  /// - "PEM" : Privacy Enhanced Mail (PEM) Type
  core.String? clientCertType;

  /// Client Certificate
  ///
  /// Optional.
  Secret? clientCertificate;

  /// Client Private Key
  ///
  /// Optional.
  Secret? clientPrivateKey;

  /// Secret containing the passphrase protecting the Client Private Key
  ///
  /// Optional.
  Secret? clientPrivateKeyPass;

  /// Private Server Certificate.
  ///
  /// Needs to be specified if trust model is `PRIVATE`.
  ///
  /// Optional.
  Secret? privateServerCertificate;

  /// Type of Server Cert (PEM/JKS/..
  ///
  /// etc.)
  ///
  /// Optional.
  /// Possible string values are:
  /// - "CERT_TYPE_UNSPECIFIED" : Cert type unspecified.
  /// - "PEM" : Privacy Enhanced Mail (PEM) Type
  core.String? serverCertType;

  /// Trust Model of the SSL connection
  ///
  /// Optional.
  /// Possible string values are:
  /// - "PUBLIC" : Public Trust Model. Takes the Default Java trust store.
  /// - "PRIVATE" : Private Trust Model. Takes custom/private trust store.
  /// - "INSECURE" : Insecure Trust Model. Accept all certificates.
  core.String? trustModel;

  /// Controls the ssl type for the given connector version.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SSL_TYPE_UNSPECIFIED" : No SSL configuration required.
  /// - "TLS" : TLS Handshake
  /// - "MTLS" : mutual TLS (MTLS) Handshake
  core.String? type;

  /// Bool for enabling SSL
  ///
  /// Optional.
  core.bool? useSsl;

  SslConfig({
    this.additionalVariables,
    this.clientCertType,
    this.clientCertificate,
    this.clientPrivateKey,
    this.clientPrivateKeyPass,
    this.privateServerCertificate,
    this.serverCertType,
    this.trustModel,
    this.type,
    this.useSsl,
  });

  SslConfig.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        clientCertType: json_['clientCertType'] as core.String?,
        clientCertificate:
            json_.containsKey('clientCertificate')
                ? Secret.fromJson(
                  json_['clientCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientPrivateKey:
            json_.containsKey('clientPrivateKey')
                ? Secret.fromJson(
                  json_['clientPrivateKey']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        clientPrivateKeyPass:
            json_.containsKey('clientPrivateKeyPass')
                ? Secret.fromJson(
                  json_['clientPrivateKeyPass']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        privateServerCertificate:
            json_.containsKey('privateServerCertificate')
                ? Secret.fromJson(
                  json_['privateServerCertificate']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
        serverCertType: json_['serverCertType'] as core.String?,
        trustModel: json_['trustModel'] as core.String?,
        type: json_['type'] as core.String?,
        useSsl: json_['useSsl'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (clientCertType != null) 'clientCertType': clientCertType!,
    if (clientCertificate != null) 'clientCertificate': clientCertificate!,
    if (clientPrivateKey != null) 'clientPrivateKey': clientPrivateKey!,
    if (clientPrivateKeyPass != null)
      'clientPrivateKeyPass': clientPrivateKeyPass!,
    if (privateServerCertificate != null)
      'privateServerCertificate': privateServerCertificate!,
    if (serverCertType != null) 'serverCertType': serverCertType!,
    if (trustModel != null) 'trustModel': trustModel!,
    if (type != null) 'type': type!,
    if (useSsl != null) 'useSsl': useSsl!,
  };
}

/// Ssl config details of a connector version
class SslConfigTemplate {
  /// Any additional fields that need to be rendered
  core.List<ConfigVariableTemplate>? additionalVariables;

  /// List of supported Client Cert Types
  core.List<core.String>? clientCertType;

  /// Boolean for determining if the connector version mandates TLS.
  core.bool? isTlsMandatory;

  /// List of supported Server Cert Types
  core.List<core.String>? serverCertType;

  /// Controls the ssl type for the given connector version
  /// Possible string values are:
  /// - "SSL_TYPE_UNSPECIFIED" : No SSL configuration required.
  /// - "TLS" : TLS Handshake
  /// - "MTLS" : mutual TLS (MTLS) Handshake
  core.String? sslType;

  SslConfigTemplate({
    this.additionalVariables,
    this.clientCertType,
    this.isTlsMandatory,
    this.serverCertType,
    this.sslType,
  });

  SslConfigTemplate.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariableTemplate.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        clientCertType:
            (json_['clientCertType'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        isTlsMandatory: json_['isTlsMandatory'] as core.bool?,
        serverCertType:
            (json_['serverCertType'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        sslType: json_['sslType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (clientCertType != null) 'clientCertType': clientCertType!,
    if (isTlsMandatory != null) 'isTlsMandatory': isTlsMandatory!,
    if (serverCertType != null) 'serverCertType': serverCertType!,
    if (sslType != null) 'sslType': sslType!,
  };
}

/// Standard action
class StandardAction {
  /// Name of the standard action.
  core.String? name;

  StandardAction({this.name});

  StandardAction.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
  };
}

/// Standard entity
class StandardEntity {
  /// Name of the standard entity.
  core.String? name;

  StandardEntity({this.name});

  StandardEntity.fromJson(core.Map json_)
    : this(name: json_['name'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (name != null) 'name': name!,
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

/// Supported runtime features of a connector version.
class SupportedRuntimeFeatures {
  /// Specifies if the connector supports action apis like 'executeAction'.
  core.bool? actionApis;

  /// Specifies if the connector supports async long running operations.
  core.bool? asyncOperations;

  /// Specifies if the connector supports entity apis like 'createEntity'.
  core.bool? entityApis;

  /// Specifies if the connector supports 'ExecuteSqlQuery' operation.
  core.bool? sqlQuery;

  SupportedRuntimeFeatures({
    this.actionApis,
    this.asyncOperations,
    this.entityApis,
    this.sqlQuery,
  });

  SupportedRuntimeFeatures.fromJson(core.Map json_)
    : this(
        actionApis: json_['actionApis'] as core.bool?,
        asyncOperations: json_['asyncOperations'] as core.bool?,
        entityApis: json_['entityApis'] as core.bool?,
        sqlQuery: json_['sqlQuery'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (actionApis != null) 'actionApis': actionApis!,
    if (asyncOperations != null) 'asyncOperations': asyncOperations!,
    if (entityApis != null) 'entityApis': entityApis!,
    if (sqlQuery != null) 'sqlQuery': sqlQuery!,
  };
}

/// Request message for `TestIamPermissions` method.
typedef TestIamPermissionsRequest = $TestIamPermissionsRequest00;

/// Response message for `TestIamPermissions` method.
typedef TestIamPermissionsResponse = $PermissionsResponse;

/// * TrafficShapingConfig defines the configuration for shaping API traffic by
/// specifying a quota limit and the duration over which this limit is enforced.
///
/// This configuration helps to control and manage the rate at which API calls
/// are made on the client side, preventing service overload on the backend. For
/// example: - if the quota limit is 100 calls per 10 seconds, then the message
/// would be: { quota_limit: 100 duration: { seconds: 10 } } - if the quota
/// limit is 100 calls per 5 minutes, then the message would be: { quota_limit:
/// 100 duration: { seconds: 300 } } - if the quota limit is 10000 calls per
/// day, then the message would be: { quota_limit: 10000 duration: { seconds:
/// 86400 } and so on.
typedef TrafficShapingConfig = $TrafficShapingConfig;

/// Parameters to support Username and Password Authentication.
class UserPassword {
  /// Secret version reference containing the password.
  ///
  /// Optional.
  Secret? password;

  /// Username.
  ///
  /// Optional.
  core.String? username;

  UserPassword({this.password, this.username});

  UserPassword.fromJson(core.Map json_)
    : this(
        password:
            json_.containsKey('password')
                ? Secret.fromJson(
                  json_['password'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        username: json_['username'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (password != null) 'password': password!,
    if (username != null) 'username': username!,
  };
}

/// Request message for ConnectorsService.ValidateCustomConnectorSpec
class ValidateCustomConnectorSpecRequest {
  /// Service account to access the spec from Google Cloud Storage.
  ///
  /// Required.
  core.String? serviceAccount;

  /// Location of the custom connector spec.
  ///
  /// The location can be either a public url like `https://public-url.com/spec`
  /// Or a Google Cloud Storage location like `gs:///`
  ///
  /// Required.
  core.String? specLocation;

  /// Spec type of the custom connector spec.
  ///
  /// Required.
  /// Possible string values are:
  /// - "CUSTOM_CONNECTOR_TYPE_UNSPECIFIED" : Connector type is not specified.
  /// - "OPEN_API" : OpenAPI connector.
  /// - "PROTO" : Proto connector.
  /// - "SDK" : SDK connector.
  core.String? specType;

  ValidateCustomConnectorSpecRequest({
    this.serviceAccount,
    this.specLocation,
    this.specType,
  });

  ValidateCustomConnectorSpecRequest.fromJson(core.Map json_)
    : this(
        serviceAccount: json_['serviceAccount'] as core.String?,
        specLocation: json_['specLocation'] as core.String?,
        specType: json_['specType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (serviceAccount != null) 'serviceAccount': serviceAccount!,
    if (specLocation != null) 'specLocation': specLocation!,
    if (specType != null) 'specType': specType!,
  };
}

/// Response message for ConnectorsService.ValidateCustomConnectorSpec
class ValidateCustomConnectorSpecResponse {
  /// Error message.
  ///
  /// The spec is valid if the error message is empty.
  core.String? errorMessage;

  ValidateCustomConnectorSpecResponse({this.errorMessage});

  ValidateCustomConnectorSpecResponse.fromJson(core.Map json_)
    : this(errorMessage: json_['errorMessage'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() => {
    if (errorMessage != null) 'errorMessage': errorMessage!,
  };
}

/// This configuration provides VPCSC config for a connector.
class VpcscConfig {
  /// The list of allowlisted FQDNs for VPCSC.
  core.List<core.String>? defaultAllowlistedHost;

  /// Whether to disable firewall VPCSC flow.
  core.bool? disableFirewallVpcscFlow;

  VpcscConfig({this.defaultAllowlistedHost, this.disableFirewallVpcscFlow});

  VpcscConfig.fromJson(core.Map json_)
    : this(
        defaultAllowlistedHost:
            (json_['defaultAllowlistedHost'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        disableFirewallVpcscFlow:
            json_['disableFirewallVpcscFlow'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (defaultAllowlistedHost != null)
      'defaultAllowlistedHost': defaultAllowlistedHost!,
    if (disableFirewallVpcscFlow != null)
      'disableFirewallVpcscFlow': disableFirewallVpcscFlow!,
  };
}

/// WebhookData has details of webhook configuration.
class WebhookData {
  /// Additional webhook related field values.
  ///
  /// Output only.
  core.List<ConfigVariable>? additionalVariables;

  /// Timestamp when the webhook was created.
  ///
  /// Output only.
  core.String? createTime;

  /// ID to uniquely identify webhook.
  ///
  /// Output only.
  core.String? id;

  /// Name of the Webhook
  ///
  /// Output only.
  core.String? name;

  /// Next webhook refresh time.
  ///
  /// Will be null if refresh is not supported.
  ///
  /// Output only.
  core.String? nextRefreshTime;

  /// Timestamp when the webhook was last updated.
  ///
  /// Output only.
  core.String? updateTime;

  WebhookData({
    this.additionalVariables,
    this.createTime,
    this.id,
    this.name,
    this.nextRefreshTime,
    this.updateTime,
  });

  WebhookData.fromJson(core.Map json_)
    : this(
        additionalVariables:
            (json_['additionalVariables'] as core.List?)
                ?.map(
                  (value) => ConfigVariable.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        id: json_['id'] as core.String?,
        name: json_['name'] as core.String?,
        nextRefreshTime: json_['nextRefreshTime'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (additionalVariables != null)
      'additionalVariables': additionalVariables!,
    if (createTime != null) 'createTime': createTime!,
    if (id != null) 'id': id!,
    if (name != null) 'name': name!,
    if (nextRefreshTime != null) 'nextRefreshTime': nextRefreshTime!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// WebhookSubscriptions has details of webhook subscriptions.
class WebhookSubscriptions {
  /// Webhook data.
  ///
  /// Output only.
  core.List<WebhookData>? webhookData;

  WebhookSubscriptions({this.webhookData});

  WebhookSubscriptions.fromJson(core.Map json_)
    : this(
        webhookData:
            (json_['webhookData'] as core.List?)
                ?.map(
                  (value) => WebhookData.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (webhookData != null) 'webhookData': webhookData!,
  };
}

/// Request message for ConnectorsService.WithdrawCustomConnectorVersion
typedef WithdrawCustomConnectorVersionRequest = $Empty;
