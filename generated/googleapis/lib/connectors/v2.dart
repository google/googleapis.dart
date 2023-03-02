// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
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
library;

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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
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

  ProjectsLocationsConnectionsEntityTypesResource(commons.ApiRequester client)
      : _requester = client;

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
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if (pageSize != null) 'pageSize': ['${pageSize}'],
      if (pageToken != null) 'pageToken': [pageToken],
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

/// Action message contains metadata information about a single action present
/// in the external system.
class Action {
  /// List containing input parameter metadata.
  core.List<InputParameter>? inputParameters;

  /// Name of the action.
  core.String? name;

  /// List containing the metadata of result fields.
  core.List<ResultMetadata>? resultMetadata;

  Action({
    this.inputParameters,
    this.name,
    this.resultMetadata,
  });

  Action.fromJson(core.Map json_)
      : this(
          inputParameters: json_.containsKey('inputParameters')
              ? (json_['inputParameters'] as core.List)
                  .map((value) => InputParameter.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          resultMetadata: json_.containsKey('resultMetadata')
              ? (json_['resultMetadata'] as core.List)
                  .map((value) => ResultMetadata.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputParameters != null) 'inputParameters': inputParameters!,
        if (name != null) 'name': name!,
        if (resultMetadata != null) 'resultMetadata': resultMetadata!,
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
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
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

  /// The name of the entity type.
  core.String? name;

  EntityType({
    this.fields,
    this.name,
  });

  EntityType.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.List)
                  .map((value) => Field.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
        if (name != null) 'name': name!,
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
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
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
          results: json_.containsKey('results')
              ? (json_['results'] as core.List)
                  .map((value) => value as core.Map<core.String, core.dynamic>)
                  .toList()
              : null,
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
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          defaultValue:
              json_.containsKey('defaultValue') ? json_['defaultValue'] : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          key: json_.containsKey('key') ? json_['key'] as core.bool : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nullable: json_.containsKey('nullable')
              ? json_['nullable'] as core.bool
              : null,
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
        if (key != null) 'key': key!,
        if (name != null) 'name': name!,
        if (nullable != null) 'nullable': nullable!,
        if (reference != null) 'reference': reference!,
      };
}

/// Input Parameter message contains metadata about the parameters required for
/// executing an Action.
class InputParameter {
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

  /// Name of the Parameter.
  core.String? name;

  /// Specifies whether a null value is allowed.
  core.bool? nullable;

  InputParameter({
    this.dataType,
    this.defaultValue,
    this.description,
    this.name,
    this.nullable,
  });

  InputParameter.fromJson(core.Map json_)
      : this(
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          defaultValue:
              json_.containsKey('defaultValue') ? json_['defaultValue'] : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          nullable: json_.containsKey('nullable')
              ? json_['nullable'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (defaultValue != null) 'defaultValue': defaultValue!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (nullable != null) 'nullable': nullable!,
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
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          unsupportedActionNames: json_.containsKey('unsupportedActionNames')
              ? (json_['unsupportedActionNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
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
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) => Entity.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
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
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          types: json_.containsKey('types')
              ? (json_['types'] as core.List)
                  .map((value) => EntityType.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          unsupportedTypeNames: json_.containsKey('unsupportedTypeNames')
              ? (json_['unsupportedTypeNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (types != null) 'types': types!,
        if (unsupportedTypeNames != null)
          'unsupportedTypeNames': unsupportedTypeNames!,
      };
}

/// A wrapper around the SQL query statement.
///
/// This is needed so that the JSON representation of ExecuteSqlQueryRequest has
/// the following format: `{"query":"select *"}`.
class Query {
  /// Sql query to execute.
  ///
  /// Required.
  core.String? query;

  Query({
    this.query,
  });

  Query.fromJson(core.Map json_)
      : this(
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (query != null) 'query': query!,
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
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (type != null) 'type': type!,
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

  /// Name of the metadata field.
  core.String? name;

  ResultMetadata({
    this.dataType,
    this.description,
    this.name,
  });

  ResultMetadata.fromJson(core.Map json_)
      : this(
          dataType: json_.containsKey('dataType')
              ? json_['dataType'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dataType != null) 'dataType': dataType!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
      };
}

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
