// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: doc_directive_unknown
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_interpolation_to_compose_strings
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
///         - [ProjectsLocationsConnectionsEntityTypesEntitieswithaclsResource]
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

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsConnectionsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsActionsResource get actions =>
      ProjectsLocationsConnectionsActionsResource(_requester);
  ProjectsLocationsConnectionsEntityTypesResource get entityTypes =>
      ProjectsLocationsConnectionsEntityTypesResource(_requester);

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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':checkReadiness';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckReadinessResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':checkStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return CheckStatusResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':exchangeAuthCode';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExchangeAuthCodeResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
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
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':refreshAccessToken';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return RefreshAccessTokenResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name') + ':execute';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExecuteActionResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/actions';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListActionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionsEntityTypesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsEntityTypesEntitiesResource get entities =>
      ProjectsLocationsConnectionsEntityTypesEntitiesResource(_requester);
  ProjectsLocationsConnectionsEntityTypesEntitieswithaclsResource
      get entitieswithacls =>
          ProjectsLocationsConnectionsEntityTypesEntitieswithaclsResource(
              _requester);

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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return EntityType.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entityTypes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEntityTypesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionsEntityTypesEntitiesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsEntityTypesEntitiesResource(
      commons.ApiRequester client)
      : _requester = client;

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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conditions != null) 'conditions': [conditions],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' +
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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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
  /// [pageSize] - Number of entity rows to return. Defaults page size = 25. Max
  /// page size = 200.
  ///
  /// [pageToken] - Page token value if available from a previous request.
  ///
  /// [sortBy] - List of 'sort_by' columns to use when returning the results.
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
    core.int? pageSize,
    core.String? pageToken,
    core.List<core.String>? sortBy,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conditions != null) 'conditions': [conditions],
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
      if (sortBy != null) 'sortBy': sortBy,
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entities';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListEntitiesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
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
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conditions != null) 'conditions': [conditions],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' +
        core.Uri.encodeFull('$entityType') +
        '/entities:updateEntitiesWithConditions';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return UpdateEntitiesWithConditionsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsConnectionsEntityTypesEntitieswithaclsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsConnectionsEntityTypesEntitieswithaclsResource(
      commons.ApiRequester client)
      : _requester = client;

  /// Lists entity rows with ACLs of a particular entity type contained in the
  /// request.
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
  /// [gsutilUri] - Format: gs://object_path
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
  async.Future<Operation> list(
    core.String parent, {
    core.String? conditions,
    core.String? gsutilUri,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (conditions != null) 'conditions': [conditions],
      if (gsutilUri != null) 'gsutilUri': [gsutilUri],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v2/' + core.Uri.encodeFull('$parent') + '/entitieswithacls';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
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

  AccessCredentials({
    this.accessToken,
    this.expiresIn,
    this.refreshToken,
  });

  AccessCredentials.fromJson(core.Map json_)
      : this(
          accessToken: json_['accessToken'] as core.String?,
          expiresIn: json_['expiresIn'] as core.String?,
          refreshToken: json_['refreshToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessToken != null) 'accessToken': accessToken!,
        if (expiresIn != null) 'expiresIn': expiresIn!,
        if (refreshToken != null) 'refreshToken': refreshToken!,
      };
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
    this.name,
    this.resultJsonSchema,
    this.resultMetadata,
  });

  Action.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          displayName: json_['displayName'] as core.String?,
          inputJsonSchema: json_.containsKey('inputJsonSchema')
              ? JsonSchema.fromJson(json_['inputJsonSchema']
                  as core.Map<core.String, core.dynamic>)
              : null,
          inputParameters: (json_['inputParameters'] as core.List?)
              ?.map((value) => InputParameter.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          name: json_['name'] as core.String?,
          resultJsonSchema: json_.containsKey('resultJsonSchema')
              ? JsonSchema.fromJson(json_['resultJsonSchema']
                  as core.Map<core.String, core.dynamic>)
              : null,
          resultMetadata: (json_['resultMetadata'] as core.List?)
              ?.map((value) => ResultMetadata.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (inputJsonSchema != null) 'inputJsonSchema': inputJsonSchema!,
        if (inputParameters != null) 'inputParameters': inputParameters!,
        if (name != null) 'name': name!,
        if (resultJsonSchema != null) 'resultJsonSchema': resultJsonSchema!,
        if (resultMetadata != null) 'resultMetadata': resultMetadata!,
      };
}

/// Response containing status of the connector for readiness prober.
class CheckReadinessResponse {
  core.String? status;

  CheckReadinessResponse({
    this.status,
  });

  CheckReadinessResponse.fromJson(core.Map json_)
      : this(
          status: json_['status'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (status != null) 'status': status!,
      };
}

/// The status of the connector.
class CheckStatusResponse {
  /// When the connector is not in ACTIVE state, the description must be
  /// populated to specify the reason why it's not in ACTIVE state.
  core.String? description;

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

  CheckStatusResponse({
    this.description,
    this.state,
  });

  CheckStatusResponse.fromJson(core.Map json_)
      : this(
          description: json_['description'] as core.String?,
          state: json_['state'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (state != null) 'state': state!,
      };
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

  /// Resource name of the Entity.
  ///
  /// Format:
  /// projects/{project}/locations/{location}/connections/{connection}/entityTypes/{type}/entities/{id}
  ///
  /// Output only.
  core.String? name;

  Entity({
    this.fields,
    this.name,
  });

  Entity.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? json_['fields'] as core.Map<core.String, core.dynamic>
              : null,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
      };
}

/// EntityType message contains metadata information about a single entity type
/// present in the external system.
class EntityType {
  /// List containing metadata information about each field of the entity type.
  core.List<Field>? fields;

  /// JsonSchema representation of this entity's schema
  JsonSchema? jsonSchema;

  /// The name of the entity type.
  core.String? name;
  core.List<core.String>? operations;

  EntityType({
    this.fields,
    this.jsonSchema,
    this.name,
    this.operations,
  });

  EntityType.fromJson(core.Map json_)
      : this(
          fields: (json_['fields'] as core.List?)
              ?.map((value) =>
                  Field.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          jsonSchema: json_.containsKey('jsonSchema')
              ? JsonSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          operations: (json_['operations'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (jsonSchema != null) 'jsonSchema': jsonSchema!,
        if (name != null) 'name': name!,
        if (operations != null) 'operations': operations!,
      };
}

/// ExchangeAuthCodeRequest currently includes no fields.
typedef ExchangeAuthCodeRequest = $Empty;

/// ExchangeAuthCodeResponse includes the returned access token and its
/// associated credentials.
class ExchangeAuthCodeResponse {
  AccessCredentials? accessCredentials;

  ExchangeAuthCodeResponse({
    this.accessCredentials,
  });

  ExchangeAuthCodeResponse.fromJson(core.Map json_)
      : this(
          accessCredentials: json_.containsKey('accessCredentials')
              ? AccessCredentials.fromJson(json_['accessCredentials']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessCredentials != null) 'accessCredentials': accessCredentials!,
      };
}

/// Request message for ActionService.ExecuteAction
class ExecuteActionRequest {
  /// Parameters for executing the action.
  ///
  /// The parameters can be key/value pairs or nested structs.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? parameters;

  ExecuteActionRequest({
    this.parameters,
  });

  ExecuteActionRequest.fromJson(core.Map json_)
      : this(
          parameters: json_.containsKey('parameters')
              ? json_['parameters'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (parameters != null) 'parameters': parameters!,
      };
}

/// Response message for ActionService.ExecuteAction
class ExecuteActionResponse {
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

  ExecuteActionResponse({
    this.results,
  });

  ExecuteActionResponse.fromJson(core.Map json_)
      : this(
          results: (json_['results'] as core.List?)
              ?.map((value) => value as core.Map<core.String, core.dynamic>)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (results != null) 'results': results!,
      };
}

/// An execute sql query request containing the query and the connection to
/// execute it on.
class ExecuteSqlQueryRequest {
  /// SQL statement passed by clients like Integration Platform, the query is
  /// passed as-is to the driver used for interfacing with external systems.
  ///
  /// Required.
  Query? query;

  ExecuteSqlQueryRequest({
    this.query,
  });

  ExecuteSqlQueryRequest.fromJson(core.Map json_)
      : this(
          query: json_.containsKey('query')
              ? Query.fromJson(
                  json_['query'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (query != null) 'query': query!,
      };
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

  ExecuteSqlQueryResponse({
    this.results,
  });

  ExecuteSqlQueryResponse.fromJson(core.Map json_)
      : this(
          results: (json_['results'] as core.List?)
              ?.map((value) => value as core.Map<core.String, core.dynamic>)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (results != null) 'results': results!,
      };
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
              ? json_['additionalDetails']
                  as core.Map<core.String, core.dynamic>
              : null,
          dataType: json_['dataType'] as core.String?,
          defaultValue: json_['defaultValue'],
          description: json_['description'] as core.String?,
          jsonSchema: json_.containsKey('jsonSchema')
              ? JsonSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>)
              : null,
          key: json_['key'] as core.bool?,
          name: json_['name'] as core.String?,
          nullable: json_['nullable'] as core.bool?,
          reference: json_.containsKey('reference')
              ? Reference.fromJson(
                  json_['reference'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalDetails != null) 'additionalDetails': additionalDetails!,
        if (dataType != null) 'dataType': dataType!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (description != null) 'description': description!,
        if (jsonSchema != null) 'jsonSchema': jsonSchema!,
        if (key != null) 'key': key!,
        if (name != null) 'name': name!,
        if (nullable != null) 'nullable': nullable!,
        if (reference != null) 'reference': reference!,
      };
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
              ? json_['additionalDetails']
                  as core.Map<core.String, core.dynamic>
              : null,
          dataType: json_['dataType'] as core.String?,
          defaultValue: json_['defaultValue'],
          description: json_['description'] as core.String?,
          jsonSchema: json_.containsKey('jsonSchema')
              ? JsonSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
          nullable: json_['nullable'] as core.bool?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (additionalDetails != null) 'additionalDetails': additionalDetails!,
        if (dataType != null) 'dataType': dataType!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (description != null) 'description': description!,
        if (jsonSchema != null) 'jsonSchema': jsonSchema!,
        if (name != null) 'name': name!,
        if (nullable != null) 'nullable': nullable!,
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
              ? json_['additionalDetails']
                  as core.Map<core.String, core.dynamic>
              : null,
          default_: json_['default'],
          description: json_['description'] as core.String?,
          enum_: json_.containsKey('enum') ? json_['enum'] as core.List : null,
          format: json_['format'] as core.String?,
          items: json_.containsKey('items')
              ? JsonSchema.fromJson(
                  json_['items'] as core.Map<core.String, core.dynamic>)
              : null,
          jdbcType: json_['jdbcType'] as core.String?,
          properties:
              (json_['properties'] as core.Map<core.String, core.dynamic>?)
                  ?.map(
            (key, value) => core.MapEntry(
              key,
              JsonSchema.fromJson(value as core.Map<core.String, core.dynamic>),
            ),
          ),
          required: (json_['required'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
          type: (json_['type'] as core.List?)
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

/// Response message for ActionService.ListActions
class ListActionsResponse {
  /// List of action metadata.
  core.List<Action>? actions;

  /// Next page token if more actions available.
  core.String? nextPageToken;

  /// List of actions which contain unsupported Datatypes.
  ///
  /// Check datatype.proto for more information.
  core.List<core.String>? unsupportedActionNames;

  ListActionsResponse({
    this.actions,
    this.nextPageToken,
    this.unsupportedActionNames,
  });

  ListActionsResponse.fromJson(core.Map json_)
      : this(
          actions: (json_['actions'] as core.List?)
              ?.map((value) =>
                  Action.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
          unsupportedActionNames:
              (json_['unsupportedActionNames'] as core.List?)
                  ?.map((value) => value as core.String)
                  .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (unsupportedActionNames != null)
          'unsupportedActionNames': unsupportedActionNames!,
      };
}

/// Response message for EntityService.ListEntities
class ListEntitiesResponse {
  /// List containing entity rows.
  core.List<Entity>? entities;

  /// Next page token if more records are available.
  core.String? nextPageToken;

  ListEntitiesResponse({
    this.entities,
    this.nextPageToken,
  });

  ListEntitiesResponse.fromJson(core.Map json_)
      : this(
          entities: (json_['entities'] as core.List?)
              ?.map((value) =>
                  Entity.fromJson(value as core.Map<core.String, core.dynamic>))
              .toList(),
          nextPageToken: json_['nextPageToken'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entities != null) 'entities': entities!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for EntityService.ListEntityTypes
class ListEntityTypesResponse {
  /// Next page token if more entity types available.
  core.String? nextPageToken;

  /// List of metadata related to all entity types.
  core.List<EntityType>? types;

  /// List of entity type names which contain unsupported Datatypes.
  ///
  /// Check datatype.proto for more information.
  core.List<core.String>? unsupportedTypeNames;

  ListEntityTypesResponse({
    this.nextPageToken,
    this.types,
    this.unsupportedTypeNames,
  });

  ListEntityTypesResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_['nextPageToken'] as core.String?,
          types: (json_['types'] as core.List?)
              ?.map((value) => EntityType.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          unsupportedTypeNames: (json_['unsupportedTypeNames'] as core.List?)
              ?.map((value) => value as core.String)
              .toList(),
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (types != null) 'types': types!,
        if (unsupportedTypeNames != null)
          'unsupportedTypeNames': unsupportedTypeNames!,
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

  Query({
    this.maxRows,
    this.query,
    this.queryParameters,
    this.timeout,
  });

  Query.fromJson(core.Map json_)
      : this(
          maxRows: json_['maxRows'] as core.String?,
          query: json_['query'] as core.String?,
          queryParameters: (json_['queryParameters'] as core.List?)
              ?.map((value) => QueryParameter.fromJson(
                  value as core.Map<core.String, core.dynamic>))
              .toList(),
          timeout: json_['timeout'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (maxRows != null) 'maxRows': maxRows!,
        if (query != null) 'query': query!,
        if (queryParameters != null) 'queryParameters': queryParameters!,
        if (timeout != null) 'timeout': timeout!,
      };
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

  QueryParameter({
    this.dataType,
    this.value,
  });

  QueryParameter.fromJson(core.Map json_)
      : this(
          dataType: json_['dataType'] as core.String?,
          value: json_['value'],
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (value != null) 'value': value!,
      };
}

class Reference {
  /// Name of the reference field.
  core.String? name;

  /// Name of reference entity type.
  core.String? type;

  Reference({
    this.name,
    this.type,
  });

  Reference.fromJson(core.Map json_)
      : this(
          name: json_['name'] as core.String?,
          type: json_['type'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
      };
}

/// RefreshAccessTokenRequest currently includes no fields.
typedef RefreshAccessTokenRequest = $Empty;

/// RefreshAccessTokenResponse includes the returned access token and its
/// associated credentials.
class RefreshAccessTokenResponse {
  AccessCredentials? accessCredentials;

  RefreshAccessTokenResponse({
    this.accessCredentials,
  });

  RefreshAccessTokenResponse.fromJson(core.Map json_)
      : this(
          accessCredentials: json_.containsKey('accessCredentials')
              ? AccessCredentials.fromJson(json_['accessCredentials']
                  as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessCredentials != null) 'accessCredentials': accessCredentials!,
      };
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

  /// A brief description of the metadata field.
  core.String? description;

  /// JsonSchema of the result, applicable only if parameter is of type `STRUCT`
  JsonSchema? jsonSchema;

  /// Name of the metadata field.
  core.String? name;

  ResultMetadata({
    this.dataType,
    this.description,
    this.jsonSchema,
    this.name,
  });

  ResultMetadata.fromJson(core.Map json_)
      : this(
          dataType: json_['dataType'] as core.String?,
          description: json_['description'] as core.String?,
          jsonSchema: json_.containsKey('jsonSchema')
              ? JsonSchema.fromJson(
                  json_['jsonSchema'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_['name'] as core.String?,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (description != null) 'description': description!,
        if (jsonSchema != null) 'jsonSchema': jsonSchema!,
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
typedef Status = $Status;

/// Response message for EntityService.UpdateEntitiesWithConditions
class UpdateEntitiesWithConditionsResponse {
  /// Response returned by the external system.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? response;

  UpdateEntitiesWithConditionsResponse({
    this.response,
  });

  UpdateEntitiesWithConditionsResponse.fromJson(core.Map json_)
      : this(
          response: json_.containsKey('response')
              ? json_['response'] as core.Map<core.String, core.dynamic>
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (response != null) 'response': response!,
      };
}
