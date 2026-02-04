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

/// Connectors API - v2
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
///       - [ProjectsLocationsConnectionsActionsResource]
///       - [ProjectsLocationsConnectionsEntityTypesResource]
///         - [ProjectsLocationsConnectionsEntityTypesEntitiesResource]
///       - [ProjectsLocationsConnectionsResourcesResource]
///       - [ProjectsLocationsConnectionsToolsResource]
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

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsActionsResource get actions =>
      ProjectsLocationsConnectionsActionsResource(_requester);
  ProjectsLocationsConnectionsEntityTypesResource get entityTypes =>
      ProjectsLocationsConnectionsEntityTypesResource(_requester);
  ProjectsLocationsConnectionsResourcesResource get resources =>
      ProjectsLocationsConnectionsResourcesResource(_requester);
  ProjectsLocationsConnectionsToolsResource get tools_1 =>
      ProjectsLocationsConnectionsToolsResource(_requester);

  ProjectsLocationsConnectionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Reports readiness status of the connector.
  ///
  /// Similar logic to GetStatus but modified for kubernetes health check to
  /// understand.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckReadinessResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckReadinessResponse> checkReadiness(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':checkReadiness';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckReadinessResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Reports the status of the connection.
  ///
  /// Note that when the connection is in a state that is not ACTIVE, the
  /// implementation of this RPC method must return a Status with the
  /// corresponding State instead of returning a gRPC status code that is not
  /// "OK", which indicates that ConnectionStatus itself, not the connection,
  /// failed.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [CheckStatusResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<CheckStatusResponse> checkStatus(
    core.String name, {
    core.String? executionConfig_headers,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':checkStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckStatusResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// ExchangeAuthCode exchanges the OAuth authorization code (and other
  /// necessary data) for an access token (and associated credentials).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExchangeAuthCodeResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExchangeAuthCodeResponse> exchangeAuthCode(
    ExchangeAuthCodeRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':exchangeAuthCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExchangeAuthCodeResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Executes a SQL statement specified in the body of the request.
  ///
  /// An example of this SQL statement in the case of Salesforce connector would
  /// be 'select * from Account a, Order o where a.Id = o.AccountId'.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [connection] - Required. Resource name of the Connection. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecuteSqlQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecuteSqlQueryResponse> executeSqlQuery(
    ExecuteSqlQueryRequest request,
    core.String connection, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' + core.Uri.encodeFull('$connection') + ':executeSqlQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExecuteSqlQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// RefreshAccessToken exchanges the OAuth refresh token (and other necessary
  /// data) for a new access token (and new associated credentials).
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - null
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [RefreshAccessTokenResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<RefreshAccessTokenResponse> refreshAccessToken(
    RefreshAccessTokenRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':refreshAccessToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RefreshAccessTokenResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all available tools with POST.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the Connection. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListToolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListToolsResponse> tools(
    ListToolsPostRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ListToolsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsActionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsActionsResource(commons.ApiRequester client)
    : _requester = client;

  /// Executes an action with the name specified in the request.
  ///
  /// The input parameters for executing the action are passed through the body
  /// of the ExecuteAction request.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Action. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/actions/{action}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/actions/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecuteActionResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecuteActionResponse> execute(
    ExecuteActionRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExecuteActionResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets the schema of the given action.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Action. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/actions/{action}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/actions/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [view] - Specified view of the action schema.
  /// Possible string values are:
  /// - "ACTION_SCHEMA_VIEW_UNSPECIFIED" : VIEW_UNSPECIFIED. The unset value.
  /// Defaults to BASIC View.
  /// - "ACTION_SCHEMA_VIEW_BASIC" : Return basic action schema.
  /// - "ACTION_SCHEMA_VIEW_ENRICHED" : Return enriched action schema.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Action].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Action> get(
    core.String name, {
    core.String? executionConfig_headers,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Action.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the schema of all the actions supported by the connector.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent resource name of the Action. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [pageSize] - Number of Actions to return. Defaults to 25.
  ///
  /// [pageToken] - Page token, return from a previous ListActions call, that
  /// can be used retrieve the next page of content. If unspecified, the request
  /// returns the first page of actions.
  ///
  /// [view] - Specifies which fields of the Action are returned in the
  /// response.
  /// Possible string values are:
  /// - "ACTION_VIEW_UNSPECIFIED" : VIEW_UNSPECIFIED. The unset value Defaults
  /// to FULL View.
  /// - "ACTION_VIEW_BASIC" : Return only action names.
  /// - "ACTION_VIEW_FULL" : Return actions with schema.
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
  async.Future<ListActionsResponse> list(
    core.String parent, {
    core.String? executionConfig_headers,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/actions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListActionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsEntityTypesEntitiesResource get entities =>
      ProjectsLocationsConnectionsEntityTypesEntitiesResource(_requester);

  ProjectsLocationsConnectionsEntityTypesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets metadata of given entity type
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Entity Type. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{entityType}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [contextMetadata] - Context metadata for request could be used to fetch
  /// customization of entity type schema.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [view] - Specifies view for entity type schema.
  /// Possible string values are:
  /// - "ENTITY_TYPE_SCHEMA_VIEW_UNSPECIFIED" : VIEW_UNSPECIFIED. The unset
  /// value. Defaults to BASIC View.
  /// - "ENTITY_TYPE_SCHEMA_VIEW_BASIC" : Return basic entity type schema.
  /// - "ENTITY_TYPE_SCHEMA_VIEW_ENRICHED" : Return enriched entity types
  /// schema.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [EntityType].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<EntityType> get(
    core.String name, {
    core.String? contextMetadata,
    core.String? executionConfig_headers,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'contextMetadata': ?contextMetadata == null ? null : [contextMetadata],
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EntityType.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists metadata related to all entity types present in the external system.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the Entity Type. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [pageSize] - Number of entity types to return. Defaults to 25.
  ///
  /// [pageToken] - Page token, return from a previous ListEntityTypes call,
  /// that can be used retrieve the next page of content. If unspecified, the
  /// request returns the first page of entity types.
  ///
  /// [view] - Specifies which fields of the Entity Type are returned in the
  /// response.
  /// Possible string values are:
  /// - "ENTITY_TYPE_VIEW_UNSPECIFIED" : VIEW_UNSPECIFIED. The unset value.
  /// Defaults to FULL View.
  /// - "ENTITY_TYPE_VIEW_BASIC" : Return only entity type names.
  /// - "ENTITY_TYPE_VIEW_FULL" : Return entity types with schema
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
  async.Future<ListEntityTypesResponse> list(
    core.String parent, {
    core.String? executionConfig_headers,
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEntityTypesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsEntityTypesEntitiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsEntityTypesEntitiesResource(
    commons.ApiRequester client,
  ) : _requester = client;

  /// Creates a new entity row of the specified entity type in the external
  /// system.
  ///
  /// The field values for creating the row are contained in the body of the
  /// request. The response message contains a `Entity` message object returned
  /// as a response by the external system.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the Entity Type. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Entity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Entity> create(
    Entity request,
    core.String parent, {
    core.String? executionConfig_headers,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entities';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Entity.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing entity row matching the entity type and entity id
  /// specified in the request.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Entity Type. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/entityTypes/\[^/\]+/entities/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
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
    core.String? executionConfig_headers,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes entities based on conditions specified in the request and not on
  /// entity id.
  ///
  /// Request parameters:
  ///
  /// [entityType] - Required. Resource name of the Entity Type. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [conditions] - Required. Conditions to be used when deleting entities.
  /// From a proto standpoint, There are no restrictions on what can be passed
  /// using this field. The connector documentation should have information
  /// about what format of filters/conditions are supported. Note: If this
  /// conditions field is left empty, an exception is thrown. We don't want to
  /// consider 'empty conditions' to be a match-all case. Connector developers
  /// can determine and document what a match-all case constraint would be.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
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
  async.Future<Empty> deleteEntitiesWithConditions(
    core.String entityType, {
    core.String? conditions,
    core.String? executionConfig_headers,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'conditions': ?conditions == null ? null : [conditions],
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$entityType') +
        '/entities:deleteEntitiesWithConditions';

    final response_ = await _requester.request(
      url_,
      'POST',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a single entity row matching the entity type and entity id specified
  /// in the request.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Entity Type. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/entityTypes/\[^/\]+/entities/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Entity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Entity> get(
    core.String name, {
    core.String? executionConfig_headers,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Entity.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists entity rows of a particular entity type contained in the request.
  ///
  /// Note: 1. Currently, only max of one 'sort_by' column is supported. 2. If
  /// no 'sort_by' column is provided, the primary key of the table is used. If
  /// zero or more than one primary key is available, we default to the
  /// unpaginated list entities logic which only returns the first page. 3. The
  /// values of the 'sort_by' columns must uniquely identify an entity row,
  /// otherwise undefined behaviors may be observed during pagination. 4. Since
  /// transactions are not supported, any updates, inserts or deletes during
  /// pagination can lead to stale data being returned or other unexpected
  /// behaviors.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the Entity Type. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [conditions] - Conditions to be used when listing entities. From a proto
  /// standpoint, There are no restrictions on what can be passed using this
  /// field. The connector documentation should have information about what
  /// format of filters/conditions are supported.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [pageSize] - Number of entity rows to return. Defaults page size = 25. Max
  /// page size = 200.
  ///
  /// [pageToken] - Page token value if available from a previous request.
  ///
  /// [sortBy] - List of 'sort_by' columns to use when returning the results.
  ///
  /// [sortOrder] - List of 'sort_order' columns to use when returning the
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListEntitiesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListEntitiesResponse> list(
    core.String parent, {
    core.String? conditions,
    core.String? executionConfig_headers,
    core.int? pageSize,
    core.String? pageToken,
    core.List<core.String>? sortBy,
    core.List<core.String>? sortOrder,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'conditions': ?conditions == null ? null : [conditions],
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'sortBy': ?sortBy,
      'sortOrder': ?sortOrder,
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEntitiesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing entity row matching the entity type and entity id
  /// specified in the request.
  ///
  /// The fields in the entity row that need to be modified are contained in the
  /// body of the request. All unspecified fields are left unchanged. The
  /// response message contains a `Entity` message object returned as a response
  /// by the external system.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. Resource name of the Entity. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/entityTypes/\[^/\]+/entities/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Entity].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Entity> patch(
    Entity request,
    core.String name, {
    core.String? executionConfig_headers,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Entity.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates entities based on conditions specified in the request and not on
  /// entity id.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [entityType] - Required. Resource name of the Entity Type. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/entityTypes/\[^/\]+$`.
  ///
  /// [conditions] - Required. Conditions to be used when updating entities.
  /// From a proto standpoint, There are no restrictions on what can be passed
  /// using this field. The connector documentation should have information
  /// about what format of filters/conditions are supported. Note: If this
  /// conditions field is left empty, an exception is thrown. We don't want to
  /// consider 'empty conditions' to be a match-all case. Connector developers
  /// can determine and document what a match-all case constraint would be.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [UpdateEntitiesWithConditionsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<UpdateEntitiesWithConditionsResponse>
  updateEntitiesWithConditions(
    Entity request,
    core.String entityType, {
    core.String? conditions,
    core.String? executionConfig_headers,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'conditions': ?conditions == null ? null : [conditions],
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ =
        'v2/' +
        core.Uri.encodeFull('$entityType') +
        '/entities:updateEntitiesWithConditions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UpdateEntitiesWithConditionsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsResourcesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsResourcesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets a specific resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Resource. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/resources/{resource}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/resources/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetResourceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetResourceResponse> get(
    core.String name, {
    core.String? executionConfig_headers,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GetResourceResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a specific resource with POST.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Resource. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/resources/{resource}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/resources/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GetResourceResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GetResourceResponse> getResourcePost(
    GetResourcePostRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GetResourceResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all available resources.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the connection. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [pageSize] - Optional. Page size for the request.
  ///
  /// [pageToken] - Optional. Page token for the request.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListResourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListResourcesResponse> list(
    core.String parent, {
    core.String? executionConfig_headers,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/resources';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListResourcesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsConnectionsToolsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsToolsResource(commons.ApiRequester client)
    : _requester = client;

  /// Executes a specific tool.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. Resource name of the Tool. Format:
  /// projects/{project}/locations/{location}/connections/{connection}/tools/{tool}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+/tools/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecuteToolResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecuteToolResponse> execute(
    ExecuteToolRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExecuteToolResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists all available tools.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Resource name of the Connection. Format:
  /// projects/{project}/locations/{location}/connections/{connection}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/connections/\[^/\]+$`.
  ///
  /// [executionConfig_headers] - headers to be used for the request. For
  /// example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  ///
  /// [pageSize] - Page size.
  ///
  /// [pageToken] - Page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListToolsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListToolsResponse> list(
    core.String parent, {
    core.String? executionConfig_headers,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'executionConfig.headers': ?executionConfig_headers == null
          ? null
          : [executionConfig_headers],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/tools';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListToolsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// AccessCredentials includes the OAuth access token, and the other fields
/// returned along with it.
class AccessCredentials {
  /// OAuth access token.
  core.String? accessToken;

  /// Duration till the access token expires.
  core.String? expiresIn;

  /// OAuth refresh token.
  core.String? refreshToken;

  AccessCredentials({this.accessToken, this.expiresIn, this.refreshToken});

  AccessCredentials.fromJson(core.Map json_)
    : this(
        accessToken: json_['accessToken'] as core.String?,
        expiresIn: json_['expiresIn'] as core.String?,
        refreshToken: json_['refreshToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessToken = this.accessToken;
    final expiresIn = this.expiresIn;
    final refreshToken = this.refreshToken;
    return {
      'accessToken': ?accessToken,
      'expiresIn': ?expiresIn,
      'refreshToken': ?refreshToken,
    };
  }
}

/// Action message contains metadata information about a single action present
/// in the external system.
class Action {
  /// Brief Description of action
  core.String? description;

  /// Display Name of action to be shown on client side
  core.String? displayName;

  /// JsonSchema representation of this actions's input schema
  JsonSchema? inputJsonSchema;

  /// List containing input parameter metadata.
  core.List<InputParameter>? inputParameters;

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Name of the action.
  core.String? name;

  /// JsonSchema representation of this actions's result schema
  JsonSchema? resultJsonSchema;

  /// List containing the metadata of result fields.
  core.List<ResultMetadata>? resultMetadata;

  Action({
    this.description,
    this.displayName,
    this.inputJsonSchema,
    this.inputParameters,
    this.metadata,
    this.name,
    this.resultJsonSchema,
    this.resultMetadata,
  });

  Action.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        inputJsonSchema: json_.containsKey('inputJsonSchema')
            ? JsonSchema.fromJson(
                json_['inputJsonSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        inputParameters: (json_['inputParameters'] as core.List?)
            ?.map(
              (value) => InputParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        name: json_['name'] as core.String?,
        resultJsonSchema: json_.containsKey('resultJsonSchema')
            ? JsonSchema.fromJson(
                json_['resultJsonSchema']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        resultMetadata: (json_['resultMetadata'] as core.List?)
            ?.map(
              (value) => ResultMetadata.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final displayName = this.displayName;
    final inputJsonSchema = this.inputJsonSchema;
    final inputParameters = this.inputParameters;
    final metadata = this.metadata;
    final name = this.name;
    final resultJsonSchema = this.resultJsonSchema;
    final resultMetadata = this.resultMetadata;
    return {
      'description': ?description,
      'displayName': ?displayName,
      'inputJsonSchema': ?inputJsonSchema,
      'inputParameters': ?inputParameters,
      'metadata': ?metadata,
      'name': ?name,
      'resultJsonSchema': ?resultJsonSchema,
      'resultMetadata': ?resultMetadata,
    };
  }
}

/// AuthCodeData contains the data the runtime plane will give the connector
/// backend in exchange for access and refresh tokens.
class AuthCodeData {
  /// OAuth authorization code.
  core.String? authCode;

  /// OAuth PKCE verifier, needed if PKCE is enabled for this particular
  /// connection.
  core.String? pkceVerifier;

  /// OAuth redirect URI passed in during the auth code flow, required by some
  /// OAuth backends.
  core.String? redirectUri;

  /// Scopes the connection will request when the user performs the auth code
  /// flow.
  core.List<core.String>? scopes;

  AuthCodeData({
    this.authCode,
    this.pkceVerifier,
    this.redirectUri,
    this.scopes,
  });

  AuthCodeData.fromJson(core.Map json_)
    : this(
        authCode: json_['authCode'] as core.String?,
        pkceVerifier: json_['pkceVerifier'] as core.String?,
        redirectUri: json_['redirectUri'] as core.String?,
        scopes: (json_['scopes'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authCode = this.authCode;
    final pkceVerifier = this.pkceVerifier;
    final redirectUri = this.redirectUri;
    final scopes = this.scopes;
    return {
      'authCode': ?authCode,
      'pkceVerifier': ?pkceVerifier,
      'redirectUri': ?redirectUri,
      'scopes': ?scopes,
    };
  }
}

/// Response containing status of the connector for readiness prober.
class CheckReadinessResponse {
  core.String? status;

  CheckReadinessResponse({this.status});

  CheckReadinessResponse.fromJson(core.Map json_)
    : this(status: json_['status'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final status = this.status;
    return {'status': ?status};
  }
}

/// The status of the connector.
class CheckStatusResponse {
  /// When the connector is not in ACTIVE state, the description must be
  /// populated to specify the reason why it's not in ACTIVE state.
  core.String? description;

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// State of the connector.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : State unspecified.
  /// - "ACTIVE" : The connector is active and ready to process runtime
  /// requests. This can also mean that from the connector's perspective, the
  /// connector is not in an error state and should be able to process runtime
  /// requests successfully.
  /// - "ERROR" : The connector is in an error state and cannot process runtime
  /// requests. An example reason would be that the connection container has
  /// some network issues that prevent outbound requests from being sent.
  /// - "AUTH_ERROR" : This is a more specific error state that the developers
  /// can opt to use when the connector is facing auth-related errors caused by
  /// auth configuration not present, invalid auth credentials, etc.
  core.String? state;

  CheckStatusResponse({this.description, this.metadata, this.state});

  CheckStatusResponse.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final metadata = this.metadata;
    final state = this.state;
    return {
      'description': ?description,
      'metadata': ?metadata,
      'state': ?state,
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

/// 'Entity row'/ 'Entity' refers to a single row of an entity type.
class Entity {
  /// Fields of the entity.
  ///
  /// The key is name of the field and the value contains the applicable
  /// `google.protobuf.Value` entry for this field.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? fields;

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Resource name of the Entity.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  ///
  /// Output only.
  core.String? name;

  Entity({this.fields, this.metadata, this.name});

  Entity.fromJson(core.Map json_)
    : this(
        fields: json_.containsKey('fields')
            ? json_['fields'] as core.Map<core.String, core.dynamic>
            : null,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final fields = this.fields;
    final metadata = this.metadata;
    final name = this.name;
    return {'fields': ?fields, 'metadata': ?metadata, 'name': ?name};
  }
}

/// EntityType message contains metadata information about a single entity type
/// present in the external system.
class EntityType {
  core.String? defaultSortBy;

  /// List containing metadata information about each field of the entity type.
  core.List<Field>? fields;

  /// JsonSchema representation of this entity's schema
  JsonSchema? jsonSchema;

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// The name of the entity type.
  core.String? name;
  core.List<core.String>? operations;

  EntityType({
    this.defaultSortBy,
    this.fields,
    this.jsonSchema,
    this.metadata,
    this.name,
    this.operations,
  });

  EntityType.fromJson(core.Map json_)
    : this(
        defaultSortBy: json_['defaultSortBy'] as core.String?,
        fields: (json_['fields'] as core.List?)
            ?.map(
              (value) =>
                  Field.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        jsonSchema: json_.containsKey('jsonSchema')
            ? JsonSchema.fromJson(
                json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        name: json_['name'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final defaultSortBy = this.defaultSortBy;
    final fields = this.fields;
    final jsonSchema = this.jsonSchema;
    final metadata = this.metadata;
    final name = this.name;
    final operations = this.operations;
    return {
      'defaultSortBy': ?defaultSortBy,
      'fields': ?fields,
      'jsonSchema': ?jsonSchema,
      'metadata': ?metadata,
      'name': ?name,
      'operations': ?operations,
    };
  }
}

/// ExchangeAuthCodeRequest currently includes the auth code data.
class ExchangeAuthCodeRequest {
  /// AuthCodeData contains the data the runtime requires to exchange for access
  /// and refresh tokens.
  ///
  /// If the data is not provided, the runtime will read the data from the
  /// secret manager.
  ///
  /// Optional.
  AuthCodeData? authCodeData;

  /// ExecutionConfig contains the configuration for the execution of the
  /// request.
  ExecutionConfig? executionConfig;

  /// OAuth2Config contains the OAuth2 config for the connection.
  OAuth2Config? oauth2Config;

  ExchangeAuthCodeRequest({
    this.authCodeData,
    this.executionConfig,
    this.oauth2Config,
  });

  ExchangeAuthCodeRequest.fromJson(core.Map json_)
    : this(
        authCodeData: json_.containsKey('authCodeData')
            ? AuthCodeData.fromJson(
                json_['authCodeData'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        executionConfig: json_.containsKey('executionConfig')
            ? ExecutionConfig.fromJson(
                json_['executionConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        oauth2Config: json_.containsKey('oauth2Config')
            ? OAuth2Config.fromJson(
                json_['oauth2Config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authCodeData = this.authCodeData;
    final executionConfig = this.executionConfig;
    final oauth2Config = this.oauth2Config;
    return {
      'authCodeData': ?authCodeData,
      'executionConfig': ?executionConfig,
      'oauth2Config': ?oauth2Config,
    };
  }
}

/// ExchangeAuthCodeResponse includes the returned access token and its
/// associated credentials.
class ExchangeAuthCodeResponse {
  AccessCredentials? accessCredentials;

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  ExchangeAuthCodeResponse({this.accessCredentials, this.metadata});

  ExchangeAuthCodeResponse.fromJson(core.Map json_)
    : this(
        accessCredentials: json_.containsKey('accessCredentials')
            ? AccessCredentials.fromJson(
                json_['accessCredentials']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessCredentials = this.accessCredentials;
    final metadata = this.metadata;
    return {'accessCredentials': ?accessCredentials, 'metadata': ?metadata};
  }
}

/// Request message for ActionService.ExecuteAction
class ExecuteActionRequest {
  /// Execution config for the request.
  ExecutionConfig? executionConfig;

  /// Parameters for executing the action.
  ///
  /// The parameters can be key/value pairs or nested structs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  ExecuteActionRequest({this.executionConfig, this.parameters});

  ExecuteActionRequest.fromJson(core.Map json_)
    : this(
        executionConfig: json_.containsKey('executionConfig')
            ? ExecutionConfig.fromJson(
                json_['executionConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionConfig = this.executionConfig;
    final parameters = this.parameters;
    return {'executionConfig': ?executionConfig, 'parameters': ?parameters};
  }
}

/// Response message for ActionService.ExecuteAction
class ExecuteActionResponse {
  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// In the case of successful invocation of the specified action, the results
  /// Struct contains values based on the response of the action invoked.
  ///
  /// 1. If the action execution produces any entities as a result, they are
  /// returned as an array of Structs with the 'key' being the field name and
  /// the 'value' being the value of that field in each result row. { 'results':
  /// \[{'key': 'value'}, ...\] }
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? results;

  ExecuteActionResponse({this.metadata, this.results});

  ExecuteActionResponse.fromJson(core.Map json_)
    : this(
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        results: (json_['results'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    final results = this.results;
    return {'metadata': ?metadata, 'results': ?results};
  }
}

/// An execute sql query request containing the query and the connection to
/// execute it on.
class ExecuteSqlQueryRequest {
  /// SQL statement passed by clients like Integration Platform, the query is
  /// passed as-is to the driver used for interfacing with external systems.
  ///
  /// Required.
  Query? query;

  ExecuteSqlQueryRequest({this.query});

  ExecuteSqlQueryRequest.fromJson(core.Map json_)
    : this(
        query: json_.containsKey('query')
            ? Query.fromJson(
                json_['query'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final query = this.query;
    return {'query': ?query};
  }
}

/// A response returned by the connection after executing the sql query.
class ExecuteSqlQueryResponse {
  /// In the case of successful execution of the query the response contains
  /// results returned by the external system.
  ///
  /// For example, the result rows of the query are contained in the 'results'
  /// Struct list - "results": \[ { "field1": "val1", "field2": "val2",.. },..
  /// \] Each Struct row can contain fields any type of like nested Structs or
  /// lists.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? results;

  ExecuteSqlQueryResponse({this.results});

  ExecuteSqlQueryResponse.fromJson(core.Map json_)
    : this(
        results: (json_['results'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final results = this.results;
    return {'results': ?results};
  }
}

/// Request message for ConnectorAgentService.ExecuteTool
class ExecuteToolRequest {
  /// execution config for the request.
  ExecutionConfig? executionConfig;

  /// Input parameters for the tool.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  /// Tool definition for the tool to be executed.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? toolDefinition;

  ExecuteToolRequest({
    this.executionConfig,
    this.parameters,
    this.toolDefinition,
  });

  ExecuteToolRequest.fromJson(core.Map json_)
    : this(
        executionConfig: json_.containsKey('executionConfig')
            ? ExecutionConfig.fromJson(
                json_['executionConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        parameters: json_.containsKey('parameters')
            ? json_['parameters'] as core.Map<core.String, core.dynamic>
            : null,
        toolDefinition: json_.containsKey('toolDefinition')
            ? json_['toolDefinition'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionConfig = this.executionConfig;
    final parameters = this.parameters;
    final toolDefinition = this.toolDefinition;
    return {
      'executionConfig': ?executionConfig,
      'parameters': ?parameters,
      'toolDefinition': ?toolDefinition,
    };
  }
}

/// Response message for ConnectorAgentService.ExecuteTool
class ExecuteToolResponse {
  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Output from the tool execution.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? result;

  ExecuteToolResponse({this.metadata, this.result});

  ExecuteToolResponse.fromJson(core.Map json_)
    : this(
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        result: json_.containsKey('result')
            ? json_['result'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    final result = this.result;
    return {'metadata': ?metadata, 'result': ?result};
  }
}

class ExecutionConfig {
  /// headers to be used for the request.
  ///
  /// For example:
  /// headers:'{"x-integration-connectors-managed-connection-id":"conn-id","x-integration-connectors-runtime-config":"runtime-cfg"}'
  core.String? headers;

  ExecutionConfig({this.headers});

  ExecutionConfig.fromJson(core.Map json_)
    : this(headers: json_['headers'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final headers = this.headers;
    return {'headers': ?headers};
  }
}

/// Message contains EntityType's Field metadata.
class Field {
  /// The following map contains fields that are not explicitly mentioned
  /// above,this give connectors the flexibility to add new metadata fields.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? additionalDetails;

  /// The data type of the Field.
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Datatype unspecified.
  /// - "INT" : Deprecated Int type, use INTEGER type instead.
  /// - "SMALLINT" : Small int type.
  /// - "DOUBLE" : Double type.
  /// - "DATE" : Date type.
  /// - "DATETIME" : Deprecated Datetime type.
  /// - "TIME" : Time type.
  /// - "STRING" : Deprecated string type, use VARCHAR type instead.
  /// - "LONG" : Deprecated Long type, use BIGINT type instead.
  /// - "BOOLEAN" : Boolean type.
  /// - "DECIMAL" : Decimal type.
  /// - "UUID" : Deprecated UUID type, use VARCHAR instead.
  /// - "BLOB" : Blob type.
  /// - "BIT" : Bit type.
  /// - "TINYINT" : Tiny int type.
  /// - "INTEGER" : Integer type.
  /// - "BIGINT" : Big int type.
  /// - "FLOAT" : Float type.
  /// - "REAL" : Real type.
  /// - "NUMERIC" : Numeric type.
  /// - "CHAR" : Char type.
  /// - "VARCHAR" : Varchar type.
  /// - "LONGVARCHAR" : Long varchar type.
  /// - "TIMESTAMP" : Timestamp type.
  /// - "NCHAR" : Nchar type.
  /// - "NVARCHAR" : Nvarchar type.
  /// - "LONGNVARCHAR" : Long Nvarchar type.
  /// - "NULL" : Null type.
  /// - "OTHER" : Other type.
  /// - "JAVA_OBJECT" : Java object type.
  /// - "DISTINCT" : Distinct type keyword.
  /// - "STRUCT" : Struct type.
  /// - "ARRAY" : Array type.
  /// - "CLOB" : Clob type.
  /// - "REF" : Ref type.
  /// - "DATALINK" : Datalink type.
  /// - "ROWID" : Row ID type.
  /// - "BINARY" : Binary type.
  /// - "VARBINARY" : Varbinary type.
  /// - "LONGVARBINARY" : Long Varbinary type.
  /// - "NCLOB" : Nclob type.
  /// - "SQLXML" : SQLXML type.
  /// - "REF_CURSOR" : Ref_cursor type.
  /// - "TIME_WITH_TIMEZONE" : Time with timezone type.
  /// - "TIMESTAMP_WITH_TIMEZONE" : Timestamp with timezone type.
  core.String? dataType;

  /// The following field specifies the default value of the Field provided by
  /// the external system if a value is not provided.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// A brief description of the Field.
  core.String? description;

  /// JsonSchema of the field, applicable only if field is of type `STRUCT`
  JsonSchema? jsonSchema;

  /// The following boolean field specifies if the current Field acts as a
  /// primary key or id if the parent is of type entity.
  core.bool? key;

  /// Name of the Field.
  core.String? name;

  /// Specifies whether a null value is allowed.
  core.bool? nullable;

  /// Reference captures the association between two different entity types.
  ///
  /// Value links to the reference of another entity type.
  Reference? reference;

  Field({
    this.additionalDetails,
    this.dataType,
    this.defaultValue,
    this.description,
    this.jsonSchema,
    this.key,
    this.name,
    this.nullable,
    this.reference,
  });

  Field.fromJson(core.Map json_)
    : this(
        additionalDetails: json_.containsKey('additionalDetails')
            ? json_['additionalDetails'] as core.Map<core.String, core.dynamic>
            : null,
        dataType: json_['dataType'] as core.String?,
        defaultValue: json_['defaultValue'],
        description: json_['description'] as core.String?,
        jsonSchema: json_.containsKey('jsonSchema')
            ? JsonSchema.fromJson(
                json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        key: json_['key'] as core.bool?,
        name: json_['name'] as core.String?,
        nullable: json_['nullable'] as core.bool?,
        reference: json_.containsKey('reference')
            ? Reference.fromJson(
                json_['reference'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalDetails = this.additionalDetails;
    final dataType = this.dataType;
    final defaultValue = this.defaultValue;
    final description = this.description;
    final jsonSchema = this.jsonSchema;
    final key = this.key;
    final name = this.name;
    final nullable = this.nullable;
    final reference = this.reference;
    return {
      'additionalDetails': ?additionalDetails,
      'dataType': ?dataType,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'jsonSchema': ?jsonSchema,
      'key': ?key,
      'name': ?name,
      'nullable': ?nullable,
      'reference': ?reference,
    };
  }
}

/// Request message for ConnectorAgentService.GetResourcePost
class GetResourcePostRequest {
  /// execution config for the request.
  ExecutionConfig? executionConfig;

  /// List of tool specifications.
  ToolSpec? toolSpec;

  GetResourcePostRequest({this.executionConfig, this.toolSpec});

  GetResourcePostRequest.fromJson(core.Map json_)
    : this(
        executionConfig: json_.containsKey('executionConfig')
            ? ExecutionConfig.fromJson(
                json_['executionConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        toolSpec: json_.containsKey('toolSpec')
            ? ToolSpec.fromJson(
                json_['toolSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionConfig = this.executionConfig;
    final toolSpec = this.toolSpec;
    return {'executionConfig': ?executionConfig, 'toolSpec': ?toolSpec};
  }
}

class GetResourceResponse {
  /// The content of the resource.
  core.String? data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data!);

  set dataAsBytes(core.List<core.int> bytes_) {
    data = convert.base64
        .encode(bytes_)
        .replaceAll('/', '_')
        .replaceAll('+', '-');
  }

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// The MIME type of the resource.
  core.String? mimeType;

  GetResourceResponse({this.data, this.metadata, this.mimeType});

  GetResourceResponse.fromJson(core.Map json_)
    : this(
        data: json_['data'] as core.String?,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        mimeType: json_['mimeType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final metadata = this.metadata;
    final mimeType = this.mimeType;
    return {'data': ?data, 'metadata': ?metadata, 'mimeType': ?mimeType};
  }
}

/// Input Parameter message contains metadata about the parameters required for
/// executing an Action.
class InputParameter {
  /// The following map contains fields that are not explicitly mentioned
  /// above,this give connectors the flexibility to add new metadata fields.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? additionalDetails;

  /// The data type of the Parameter
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Datatype unspecified.
  /// - "INT" : Deprecated Int type, use INTEGER type instead.
  /// - "SMALLINT" : Small int type.
  /// - "DOUBLE" : Double type.
  /// - "DATE" : Date type.
  /// - "DATETIME" : Deprecated Datetime type.
  /// - "TIME" : Time type.
  /// - "STRING" : Deprecated string type, use VARCHAR type instead.
  /// - "LONG" : Deprecated Long type, use BIGINT type instead.
  /// - "BOOLEAN" : Boolean type.
  /// - "DECIMAL" : Decimal type.
  /// - "UUID" : Deprecated UUID type, use VARCHAR instead.
  /// - "BLOB" : Blob type.
  /// - "BIT" : Bit type.
  /// - "TINYINT" : Tiny int type.
  /// - "INTEGER" : Integer type.
  /// - "BIGINT" : Big int type.
  /// - "FLOAT" : Float type.
  /// - "REAL" : Real type.
  /// - "NUMERIC" : Numeric type.
  /// - "CHAR" : Char type.
  /// - "VARCHAR" : Varchar type.
  /// - "LONGVARCHAR" : Long varchar type.
  /// - "TIMESTAMP" : Timestamp type.
  /// - "NCHAR" : Nchar type.
  /// - "NVARCHAR" : Nvarchar type.
  /// - "LONGNVARCHAR" : Long Nvarchar type.
  /// - "NULL" : Null type.
  /// - "OTHER" : Other type.
  /// - "JAVA_OBJECT" : Java object type.
  /// - "DISTINCT" : Distinct type keyword.
  /// - "STRUCT" : Struct type.
  /// - "ARRAY" : Array type.
  /// - "CLOB" : Clob type.
  /// - "REF" : Ref type.
  /// - "DATALINK" : Datalink type.
  /// - "ROWID" : Row ID type.
  /// - "BINARY" : Binary type.
  /// - "VARBINARY" : Varbinary type.
  /// - "LONGVARBINARY" : Long Varbinary type.
  /// - "NCLOB" : Nclob type.
  /// - "SQLXML" : SQLXML type.
  /// - "REF_CURSOR" : Ref_cursor type.
  /// - "TIME_WITH_TIMEZONE" : Time with timezone type.
  /// - "TIMESTAMP_WITH_TIMEZONE" : Timestamp with timezone type.
  core.String? dataType;

  /// The following field specifies the default value of the Parameter provided
  /// by the external system if a value is not provided.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// A brief description of the Parameter.
  core.String? description;

  /// JsonSchema of the parameter, applicable only if parameter is of type
  /// `STRUCT`
  JsonSchema? jsonSchema;

  /// Name of the Parameter.
  core.String? name;

  /// Specifies whether a null value is allowed.
  core.bool? nullable;

  InputParameter({
    this.additionalDetails,
    this.dataType,
    this.defaultValue,
    this.description,
    this.jsonSchema,
    this.name,
    this.nullable,
  });

  InputParameter.fromJson(core.Map json_)
    : this(
        additionalDetails: json_.containsKey('additionalDetails')
            ? json_['additionalDetails'] as core.Map<core.String, core.dynamic>
            : null,
        dataType: json_['dataType'] as core.String?,
        defaultValue: json_['defaultValue'],
        description: json_['description'] as core.String?,
        jsonSchema: json_.containsKey('jsonSchema')
            ? JsonSchema.fromJson(
                json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        nullable: json_['nullable'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalDetails = this.additionalDetails;
    final dataType = this.dataType;
    final defaultValue = this.defaultValue;
    final description = this.description;
    final jsonSchema = this.jsonSchema;
    final name = this.name;
    final nullable = this.nullable;
    return {
      'additionalDetails': ?additionalDetails,
      'dataType': ?dataType,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'jsonSchema': ?jsonSchema,
      'name': ?name,
      'nullable': ?nullable,
    };
  }
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
  /// - "DATA_TYPE_UNSPECIFIED" : Datatype unspecified.
  /// - "INT" : Deprecated Int type, use INTEGER type instead.
  /// - "SMALLINT" : Small int type.
  /// - "DOUBLE" : Double type.
  /// - "DATE" : Date type.
  /// - "DATETIME" : Deprecated Datetime type.
  /// - "TIME" : Time type.
  /// - "STRING" : Deprecated string type, use VARCHAR type instead.
  /// - "LONG" : Deprecated Long type, use BIGINT type instead.
  /// - "BOOLEAN" : Boolean type.
  /// - "DECIMAL" : Decimal type.
  /// - "UUID" : Deprecated UUID type, use VARCHAR instead.
  /// - "BLOB" : Blob type.
  /// - "BIT" : Bit type.
  /// - "TINYINT" : Tiny int type.
  /// - "INTEGER" : Integer type.
  /// - "BIGINT" : Big int type.
  /// - "FLOAT" : Float type.
  /// - "REAL" : Real type.
  /// - "NUMERIC" : Numeric type.
  /// - "CHAR" : Char type.
  /// - "VARCHAR" : Varchar type.
  /// - "LONGVARCHAR" : Long varchar type.
  /// - "TIMESTAMP" : Timestamp type.
  /// - "NCHAR" : Nchar type.
  /// - "NVARCHAR" : Nvarchar type.
  /// - "LONGNVARCHAR" : Long Nvarchar type.
  /// - "NULL" : Null type.
  /// - "OTHER" : Other type.
  /// - "JAVA_OBJECT" : Java object type.
  /// - "DISTINCT" : Distinct type keyword.
  /// - "STRUCT" : Struct type.
  /// - "ARRAY" : Array type.
  /// - "CLOB" : Clob type.
  /// - "REF" : Ref type.
  /// - "DATALINK" : Datalink type.
  /// - "ROWID" : Row ID type.
  /// - "BINARY" : Binary type.
  /// - "VARBINARY" : Varbinary type.
  /// - "LONGVARBINARY" : Long Varbinary type.
  /// - "NCLOB" : Nclob type.
  /// - "SQLXML" : SQLXML type.
  /// - "REF_CURSOR" : Ref_cursor type.
  /// - "TIME_WITH_TIMEZONE" : Time with timezone type.
  /// - "TIMESTAMP_WITH_TIMEZONE" : Timestamp with timezone type.
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
        additionalDetails: json_.containsKey('additionalDetails')
            ? json_['additionalDetails'] as core.Map<core.String, core.dynamic>
            : null,
        default_: json_['default'],
        description: json_['description'] as core.String?,
        enum_: json_.containsKey('enum') ? json_['enum'] as core.List : null,
        format: json_['format'] as core.String?,
        items: json_.containsKey('items')
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
        required: (json_['required'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        type: (json_['type'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final additionalDetails = this.additionalDetails;
    final default_ = this.default_;
    final description = this.description;
    final enum_ = this.enum_;
    final format = this.format;
    final items = this.items;
    final jdbcType = this.jdbcType;
    final properties = this.properties;
    final required = this.required;
    final type = this.type;
    return {
      'additionalDetails': ?additionalDetails,
      'default': ?default_,
      'description': ?description,
      'enum': ?enum_,
      'format': ?format,
      'items': ?items,
      'jdbcType': ?jdbcType,
      'properties': ?properties,
      'required': ?required,
      'type': ?type,
    };
  }
}

/// Response message for ActionService.ListActions
class ListActionsResponse {
  /// List of action metadata.
  core.List<Action>? actions;

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Next page token if more actions available.
  core.String? nextPageToken;

  /// List of actions which contain unsupported Datatypes.
  ///
  /// Check datatype.proto for more information.
  core.List<core.String>? unsupportedActionNames;

  ListActionsResponse({
    this.actions,
    this.metadata,
    this.nextPageToken,
    this.unsupportedActionNames,
  });

  ListActionsResponse.fromJson(core.Map json_)
    : this(
        actions: (json_['actions'] as core.List?)
            ?.map(
              (value) =>
                  Action.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unsupportedActionNames: (json_['unsupportedActionNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final actions = this.actions;
    final metadata = this.metadata;
    final nextPageToken = this.nextPageToken;
    final unsupportedActionNames = this.unsupportedActionNames;
    return {
      'actions': ?actions,
      'metadata': ?metadata,
      'nextPageToken': ?nextPageToken,
      'unsupportedActionNames': ?unsupportedActionNames,
    };
  }
}

/// Response message for EntityService.ListEntities
class ListEntitiesResponse {
  /// List containing entity rows.
  core.List<Entity>? entities;

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Next page token if more records are available.
  core.String? nextPageToken;

  ListEntitiesResponse({this.entities, this.metadata, this.nextPageToken});

  ListEntitiesResponse.fromJson(core.Map json_)
    : this(
        entities: (json_['entities'] as core.List?)
            ?.map(
              (value) =>
                  Entity.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final entities = this.entities;
    final metadata = this.metadata;
    final nextPageToken = this.nextPageToken;
    return {
      'entities': ?entities,
      'metadata': ?metadata,
      'nextPageToken': ?nextPageToken,
    };
  }
}

/// Response message for EntityService.ListEntityTypes
class ListEntityTypesResponse {
  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Next page token if more entity types available.
  core.String? nextPageToken;

  /// List of metadata related to all entity types.
  core.List<EntityType>? types;

  /// List of entity type names which contain unsupported Datatypes.
  ///
  /// Check datatype.proto for more information.
  core.List<core.String>? unsupportedTypeNames;

  ListEntityTypesResponse({
    this.metadata,
    this.nextPageToken,
    this.types,
    this.unsupportedTypeNames,
  });

  ListEntityTypesResponse.fromJson(core.Map json_)
    : this(
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        nextPageToken: json_['nextPageToken'] as core.String?,
        types: (json_['types'] as core.List?)
            ?.map(
              (value) => EntityType.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unsupportedTypeNames: (json_['unsupportedTypeNames'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    final nextPageToken = this.nextPageToken;
    final types = this.types;
    final unsupportedTypeNames = this.unsupportedTypeNames;
    return {
      'metadata': ?metadata,
      'nextPageToken': ?nextPageToken,
      'types': ?types,
      'unsupportedTypeNames': ?unsupportedTypeNames,
    };
  }
}

class ListResourcesResponse {
  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Next page token if more resources available.
  core.String? nextPageToken;

  /// List of available resources.
  core.List<Resource>? resources;

  ListResourcesResponse({this.metadata, this.nextPageToken, this.resources});

  ListResourcesResponse.fromJson(core.Map json_)
    : this(
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        nextPageToken: json_['nextPageToken'] as core.String?,
        resources: (json_['resources'] as core.List?)
            ?.map(
              (value) => Resource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    final nextPageToken = this.nextPageToken;
    final resources = this.resources;
    return {
      'metadata': ?metadata,
      'nextPageToken': ?nextPageToken,
      'resources': ?resources,
    };
  }
}

/// Request message for ConnectorAgentService.ListToolsPost
class ListToolsPostRequest {
  /// execution config for the request.
  ExecutionConfig? executionConfig;

  /// Page size.
  core.int? pageSize;

  /// Page token.
  core.String? pageToken;

  /// List of tool specifications.
  ToolSpec? toolSpec;

  ListToolsPostRequest({
    this.executionConfig,
    this.pageSize,
    this.pageToken,
    this.toolSpec,
  });

  ListToolsPostRequest.fromJson(core.Map json_)
    : this(
        executionConfig: json_.containsKey('executionConfig')
            ? ExecutionConfig.fromJson(
                json_['executionConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        pageSize: json_['pageSize'] as core.int?,
        pageToken: json_['pageToken'] as core.String?,
        toolSpec: json_.containsKey('toolSpec')
            ? ToolSpec.fromJson(
                json_['toolSpec'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionConfig = this.executionConfig;
    final pageSize = this.pageSize;
    final pageToken = this.pageToken;
    final toolSpec = this.toolSpec;
    return {
      'executionConfig': ?executionConfig,
      'pageSize': ?pageSize,
      'pageToken': ?pageToken,
      'toolSpec': ?toolSpec,
    };
  }
}

/// Response message for ConnectorAgentService.ListTools
class ListToolsResponse {
  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Next page token.
  core.String? nextPageToken;

  /// List of available tools.
  core.List<Tool>? tools;

  ListToolsResponse({this.metadata, this.nextPageToken, this.tools});

  ListToolsResponse.fromJson(core.Map json_)
    : this(
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        nextPageToken: json_['nextPageToken'] as core.String?,
        tools: (json_['tools'] as core.List?)
            ?.map(
              (value) =>
                  Tool.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    final nextPageToken = this.nextPageToken;
    final tools = this.tools;
    return {
      'metadata': ?metadata,
      'nextPageToken': ?nextPageToken,
      'tools': ?tools,
    };
  }
}

class OAuth2Config {
  /// Authorization Server URL/Token Endpoint for Authorization Code Flow
  core.String? authUri;

  /// Client ID for the OAuth2 flow.
  core.String? clientId;

  /// Client secret for the OAuth2 flow.
  core.String? clientSecret;

  OAuth2Config({this.authUri, this.clientId, this.clientSecret});

  OAuth2Config.fromJson(core.Map json_)
    : this(
        authUri: json_['authUri'] as core.String?,
        clientId: json_['clientId'] as core.String?,
        clientSecret: json_['clientSecret'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authUri = this.authUri;
    final clientId = this.clientId;
    final clientSecret = this.clientSecret;
    return {
      'authUri': ?authUri,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
    };
  }
}

/// A wrapper around the SQL query statement.
///
/// This is needed so that the JSON representation of ExecuteSqlQueryRequest has
/// the following format: `{"query":"select *"}`.
class Query {
  /// Sets the limit for the maximum number of rows returned after the query
  /// execution.
  core.String? maxRows;

  /// Sql query to execute.
  ///
  /// Required.
  core.String? query;

  /// In the struct, the value corresponds to the value of query parameter and
  /// date type corresponds to the date type of the query parameter.
  core.List<QueryParameter>? queryParameters;

  /// Sets the number of seconds the driver will wait for a query to execute.
  core.String? timeout;

  Query({this.maxRows, this.query, this.queryParameters, this.timeout});

  Query.fromJson(core.Map json_)
    : this(
        maxRows: json_['maxRows'] as core.String?,
        query: json_['query'] as core.String?,
        queryParameters: (json_['queryParameters'] as core.List?)
            ?.map(
              (value) => QueryParameter.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        timeout: json_['timeout'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final maxRows = this.maxRows;
    final query = this.query;
    final queryParameters = this.queryParameters;
    final timeout = this.timeout;
    return {
      'maxRows': ?maxRows,
      'query': ?query,
      'queryParameters': ?queryParameters,
      'timeout': ?timeout,
    };
  }
}

/// Query parameter definition
class QueryParameter {
  ///
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Datatype unspecified.
  /// - "INT" : Deprecated Int type, use INTEGER type instead.
  /// - "SMALLINT" : Small int type.
  /// - "DOUBLE" : Double type.
  /// - "DATE" : Date type.
  /// - "DATETIME" : Deprecated Datetime type.
  /// - "TIME" : Time type.
  /// - "STRING" : Deprecated string type, use VARCHAR type instead.
  /// - "LONG" : Deprecated Long type, use BIGINT type instead.
  /// - "BOOLEAN" : Boolean type.
  /// - "DECIMAL" : Decimal type.
  /// - "UUID" : Deprecated UUID type, use VARCHAR instead.
  /// - "BLOB" : Blob type.
  /// - "BIT" : Bit type.
  /// - "TINYINT" : Tiny int type.
  /// - "INTEGER" : Integer type.
  /// - "BIGINT" : Big int type.
  /// - "FLOAT" : Float type.
  /// - "REAL" : Real type.
  /// - "NUMERIC" : Numeric type.
  /// - "CHAR" : Char type.
  /// - "VARCHAR" : Varchar type.
  /// - "LONGVARCHAR" : Long varchar type.
  /// - "TIMESTAMP" : Timestamp type.
  /// - "NCHAR" : Nchar type.
  /// - "NVARCHAR" : Nvarchar type.
  /// - "LONGNVARCHAR" : Long Nvarchar type.
  /// - "NULL" : Null type.
  /// - "OTHER" : Other type.
  /// - "JAVA_OBJECT" : Java object type.
  /// - "DISTINCT" : Distinct type keyword.
  /// - "STRUCT" : Struct type.
  /// - "ARRAY" : Array type.
  /// - "CLOB" : Clob type.
  /// - "REF" : Ref type.
  /// - "DATALINK" : Datalink type.
  /// - "ROWID" : Row ID type.
  /// - "BINARY" : Binary type.
  /// - "VARBINARY" : Varbinary type.
  /// - "LONGVARBINARY" : Long Varbinary type.
  /// - "NCLOB" : Nclob type.
  /// - "SQLXML" : SQLXML type.
  /// - "REF_CURSOR" : Ref_cursor type.
  /// - "TIME_WITH_TIMEZONE" : Time with timezone type.
  /// - "TIMESTAMP_WITH_TIMEZONE" : Timestamp with timezone type.
  core.String? dataType;

  ///
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? value;

  QueryParameter({this.dataType, this.value});

  QueryParameter.fromJson(core.Map json_)
    : this(dataType: json_['dataType'] as core.String?, value: json_['value']);

  core.Map<core.String, core.dynamic> toJson() {
    final dataType = this.dataType;
    final value = this.value;
    return {'dataType': ?dataType, 'value': ?value};
  }
}

class Reference {
  /// Name of the reference field.
  core.String? name;

  /// Name of reference entity type.
  core.String? type;

  Reference({this.name, this.type});

  Reference.fromJson(core.Map json_)
    : this(
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final name = this.name;
    final type = this.type;
    return {'name': ?name, 'type': ?type};
  }
}

/// RefreshAccessTokenRequest includes the refresh token.
class RefreshAccessTokenRequest {
  /// ExecutionConfig contains the configuration for the execution of the
  /// request.
  ExecutionConfig? executionConfig;

  /// OAuth2Config contains the OAuth2 config for the connection.
  OAuth2Config? oauth2Config;

  /// Refresh Token String.
  ///
  /// If the Refresh Token is not provided, the runtime will read the data from
  /// the secret manager.
  ///
  /// Optional.
  core.String? refreshToken;

  RefreshAccessTokenRequest({
    this.executionConfig,
    this.oauth2Config,
    this.refreshToken,
  });

  RefreshAccessTokenRequest.fromJson(core.Map json_)
    : this(
        executionConfig: json_.containsKey('executionConfig')
            ? ExecutionConfig.fromJson(
                json_['executionConfig'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        oauth2Config: json_.containsKey('oauth2Config')
            ? OAuth2Config.fromJson(
                json_['oauth2Config'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        refreshToken: json_['refreshToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final executionConfig = this.executionConfig;
    final oauth2Config = this.oauth2Config;
    final refreshToken = this.refreshToken;
    return {
      'executionConfig': ?executionConfig,
      'oauth2Config': ?oauth2Config,
      'refreshToken': ?refreshToken,
    };
  }
}

/// RefreshAccessTokenResponse includes the returned access token and its
/// associated credentials.
class RefreshAccessTokenResponse {
  AccessCredentials? accessCredentials;

  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  RefreshAccessTokenResponse({this.accessCredentials, this.metadata});

  RefreshAccessTokenResponse.fromJson(core.Map json_)
    : this(
        accessCredentials: json_.containsKey('accessCredentials')
            ? AccessCredentials.fromJson(
                json_['accessCredentials']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final accessCredentials = this.accessCredentials;
    final metadata = this.metadata;
    return {'accessCredentials': ?accessCredentials, 'metadata': ?metadata};
  }
}

class Resource {
  /// A description of what this resource represents.
  core.String? description;

  /// The MIME type of this resource, if known.
  core.String? mimeType;

  /// A human-readable name for this resource.
  core.String? name;

  /// The size of the raw resource content, in bytes, if known.
  core.String? size;

  /// The URI of this resource.
  core.String? uri;

  Resource({this.description, this.mimeType, this.name, this.size, this.uri});

  Resource.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        mimeType: json_['mimeType'] as core.String?,
        name: json_['name'] as core.String?,
        size: json_['size'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final mimeType = this.mimeType;
    final name = this.name;
    final size = this.size;
    final uri = this.uri;
    return {
      'description': ?description,
      'mimeType': ?mimeType,
      'name': ?name,
      'size': ?size,
      'uri': ?uri,
    };
  }
}

/// Result Metadata message contains metadata about the result returned after
/// executing an Action.
class ResultMetadata {
  /// The data type of the metadata field
  /// Possible string values are:
  /// - "DATA_TYPE_UNSPECIFIED" : Datatype unspecified.
  /// - "INT" : Deprecated Int type, use INTEGER type instead.
  /// - "SMALLINT" : Small int type.
  /// - "DOUBLE" : Double type.
  /// - "DATE" : Date type.
  /// - "DATETIME" : Deprecated Datetime type.
  /// - "TIME" : Time type.
  /// - "STRING" : Deprecated string type, use VARCHAR type instead.
  /// - "LONG" : Deprecated Long type, use BIGINT type instead.
  /// - "BOOLEAN" : Boolean type.
  /// - "DECIMAL" : Decimal type.
  /// - "UUID" : Deprecated UUID type, use VARCHAR instead.
  /// - "BLOB" : Blob type.
  /// - "BIT" : Bit type.
  /// - "TINYINT" : Tiny int type.
  /// - "INTEGER" : Integer type.
  /// - "BIGINT" : Big int type.
  /// - "FLOAT" : Float type.
  /// - "REAL" : Real type.
  /// - "NUMERIC" : Numeric type.
  /// - "CHAR" : Char type.
  /// - "VARCHAR" : Varchar type.
  /// - "LONGVARCHAR" : Long varchar type.
  /// - "TIMESTAMP" : Timestamp type.
  /// - "NCHAR" : Nchar type.
  /// - "NVARCHAR" : Nvarchar type.
  /// - "LONGNVARCHAR" : Long Nvarchar type.
  /// - "NULL" : Null type.
  /// - "OTHER" : Other type.
  /// - "JAVA_OBJECT" : Java object type.
  /// - "DISTINCT" : Distinct type keyword.
  /// - "STRUCT" : Struct type.
  /// - "ARRAY" : Array type.
  /// - "CLOB" : Clob type.
  /// - "REF" : Ref type.
  /// - "DATALINK" : Datalink type.
  /// - "ROWID" : Row ID type.
  /// - "BINARY" : Binary type.
  /// - "VARBINARY" : Varbinary type.
  /// - "LONGVARBINARY" : Long Varbinary type.
  /// - "NCLOB" : Nclob type.
  /// - "SQLXML" : SQLXML type.
  /// - "REF_CURSOR" : Ref_cursor type.
  /// - "TIME_WITH_TIMEZONE" : Time with timezone type.
  /// - "TIMESTAMP_WITH_TIMEZONE" : Timestamp with timezone type.
  core.String? dataType;

  /// The following field specifies the default value of the Parameter provided
  /// by the external system if a value is not provided.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Object? defaultValue;

  /// A brief description of the metadata field.
  core.String? description;

  /// JsonSchema of the result, applicable only if parameter is of type `STRUCT`
  JsonSchema? jsonSchema;

  /// Name of the metadata field.
  core.String? name;

  /// Specifies whether a null value is allowed.
  core.bool? nullable;

  ResultMetadata({
    this.dataType,
    this.defaultValue,
    this.description,
    this.jsonSchema,
    this.name,
    this.nullable,
  });

  ResultMetadata.fromJson(core.Map json_)
    : this(
        dataType: json_['dataType'] as core.String?,
        defaultValue: json_['defaultValue'],
        description: json_['description'] as core.String?,
        jsonSchema: json_.containsKey('jsonSchema')
            ? JsonSchema.fromJson(
                json_['jsonSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        nullable: json_['nullable'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final dataType = this.dataType;
    final defaultValue = this.defaultValue;
    final description = this.description;
    final jsonSchema = this.jsonSchema;
    final name = this.name;
    final nullable = this.nullable;
    return {
      'dataType': ?dataType,
      'defaultValue': ?defaultValue,
      'description': ?description,
      'jsonSchema': ?jsonSchema,
      'name': ?name,
      'nullable': ?nullable,
    };
  }
}

/// Message representing a single tool.
class Tool {
  /// Annotations for the tool.
  ToolAnnotations? annotations;

  /// List of tool names that this tool depends on.
  core.List<core.String>? dependsOn;

  /// Description of the tool.
  core.String? description;

  /// JSON schema for the input parameters of the tool.
  JsonSchema? inputSchema;

  /// Name of the tool.
  core.String? name;

  /// JSON schema for the output of the tool.
  JsonSchema? outputSchema;

  Tool({
    this.annotations,
    this.dependsOn,
    this.description,
    this.inputSchema,
    this.name,
    this.outputSchema,
  });

  Tool.fromJson(core.Map json_)
    : this(
        annotations: json_.containsKey('annotations')
            ? ToolAnnotations.fromJson(
                json_['annotations'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        dependsOn: (json_['dependsOn'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        description: json_['description'] as core.String?,
        inputSchema: json_.containsKey('inputSchema')
            ? JsonSchema.fromJson(
                json_['inputSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        outputSchema: json_.containsKey('outputSchema')
            ? JsonSchema.fromJson(
                json_['outputSchema'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final dependsOn = this.dependsOn;
    final description = this.description;
    final inputSchema = this.inputSchema;
    final name = this.name;
    final outputSchema = this.outputSchema;
    return {
      'annotations': ?annotations,
      'dependsOn': ?dependsOn,
      'description': ?description,
      'inputSchema': ?inputSchema,
      'name': ?name,
      'outputSchema': ?outputSchema,
    };
  }
}

/// ToolAnnotations holds annotations for a tool.
class ToolAnnotations {
  /// If true, the tool may perform destructive updates to its environment.
  ///
  /// If false, the tool performs only additive updates. (This property is
  /// meaningful only when `read_only_hint == false`)
  core.bool? destructiveHint;

  /// If true, calling the tool repeatedly with the same arguments will have no
  /// additional effect on the environment.
  ///
  /// (This property is meaningful only when `read_only_hint == false`)
  core.bool? idempotentHint;

  /// If true, this tool may interact with an "open world" of external entities.
  ///
  /// If false, the tool's domain of interaction is closed. For example, the
  /// world of a web search tool is open, whereas that of a memory tool is not.
  core.bool? openWorldHint;

  /// If true, the tool does not modify its environment.
  core.bool? readOnlyHint;

  /// A human-readable title for the tool.
  core.String? title;

  ToolAnnotations({
    this.destructiveHint,
    this.idempotentHint,
    this.openWorldHint,
    this.readOnlyHint,
    this.title,
  });

  ToolAnnotations.fromJson(core.Map json_)
    : this(
        destructiveHint: json_['destructiveHint'] as core.bool?,
        idempotentHint: json_['idempotentHint'] as core.bool?,
        openWorldHint: json_['openWorldHint'] as core.bool?,
        readOnlyHint: json_['readOnlyHint'] as core.bool?,
        title: json_['title'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final destructiveHint = this.destructiveHint;
    final idempotentHint = this.idempotentHint;
    final openWorldHint = this.openWorldHint;
    final readOnlyHint = this.readOnlyHint;
    final title = this.title;
    return {
      'destructiveHint': ?destructiveHint,
      'idempotentHint': ?idempotentHint,
      'openWorldHint': ?openWorldHint,
      'readOnlyHint': ?readOnlyHint,
      'title': ?title,
    };
  }
}

class ToolSpec {
  /// List of tool definitions.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object?>>? toolDefinitions;

  /// Version of the tool spec.
  ///
  /// Format: providerId/connectorId/versionId/toolSpecId
  core.String? toolSpecVersion;

  ToolSpec({this.toolDefinitions, this.toolSpecVersion});

  ToolSpec.fromJson(core.Map json_)
    : this(
        toolDefinitions: (json_['toolDefinitions'] as core.List?)
            ?.map((value) => value as core.Map<core.String, core.dynamic>)
            .toList(),
        toolSpecVersion: json_['toolSpecVersion'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final toolDefinitions = this.toolDefinitions;
    final toolSpecVersion = this.toolSpecVersion;
    return {
      'toolDefinitions': ?toolDefinitions,
      'toolSpecVersion': ?toolSpecVersion,
    };
  }
}

/// Response message for EntityService.UpdateEntitiesWithConditions
class UpdateEntitiesWithConditionsResponse {
  /// Metadata like service latency, etc.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Map<core.String, core.Object?>>? metadata;

  /// Response returned by the external system.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  UpdateEntitiesWithConditionsResponse({this.metadata, this.response});

  UpdateEntitiesWithConditionsResponse.fromJson(core.Map json_)
    : this(
        metadata: (json_['metadata'] as core.Map<core.String, core.dynamic>?)
            ?.map(
              (key, value) => core.MapEntry(
                key,
                value as core.Map<core.String, core.dynamic>,
              ),
            ),
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final metadata = this.metadata;
    final response = this.response;
    return {'metadata': ?metadata, 'response': ?response};
  }
}
