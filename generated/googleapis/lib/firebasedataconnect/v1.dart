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

/// Firebase Data Connect API - v1
///
/// Firebase Data Connect is a relational database service for mobile and web
/// apps that lets you build and scale using a fully-managed PostgreSQL database
/// powered by Cloud SQL. The REST API lets developers manage the connections to
/// their database, change the schema of their database, and query the database.
///
/// For more information, see <https://firebase.google.com/docs/data-connect>
///
/// Create an instance of [FirebaseDataConnectApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsServicesResource]
///       - [ProjectsLocationsServicesConnectorsResource]
///       - [ProjectsLocationsServicesSchemasResource]
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

/// Firebase Data Connect is a relational database service for mobile and web
/// apps that lets you build and scale using a fully-managed PostgreSQL database
/// powered by Cloud SQL.
///
/// The REST API lets developers manage the connections to their database,
/// change the schema of their database, and query the database.
class FirebaseDataConnectApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseDataConnectApi(
    http.Client client, {
    core.String rootUrl = 'https://firebasedataconnect.googleapis.com/',
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

  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsServicesResource get services =>
      ProjectsLocationsServicesResource(_requester);

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
      'fields': ?$fields == null ? null : [$fields],
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
  /// [extraLocationTypes] - Optional. Do not use this field. It is unsupported
  /// and is ignored unless explicitly documented otherwise. This is primarily
  /// for internal usage.
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
      'extraLocationTypes': ?extraLocationTypes,
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
      'fields': ?$fields == null ? null : [$fields],
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
  /// [returnPartialSuccess] - When set to `true`, operations that are reachable
  /// are returned as normal, and those that are unreachable are returned in the
  /// ListOperationsResponse.unreachable field. This can only be `true` when
  /// reading across collections. For example, when `parent` is set to
  /// `"projects/example/locations/-"`. This field is not supported by default
  /// and will result in an `UNIMPLEMENTED` error if set unless explicitly
  /// documented otherwise in service or product specific documentation.
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
    core.bool? returnPartialSuccess,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'returnPartialSuccess': ?returnPartialSuccess == null
          ? null
          : ['${returnPartialSuccess}'],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsServicesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesConnectorsResource get connectors =>
      ProjectsLocationsServicesConnectorsResource(_requester);
  ProjectsLocationsServicesSchemasResource get schemas =>
      ProjectsLocationsServicesSchemasResource(_requester);

  ProjectsLocationsServicesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Service in a given project and location.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value of parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [serviceId] - Required. The ID to use for the service, which will become
  /// the final component of the service's resource name.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Service, but do not actually create it.
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
    Service request,
    core.String parent, {
    core.String? requestId,
    core.String? serviceId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'serviceId': ?serviceId == null ? null : [serviceId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the service to delete, in the format: ```
  /// projects/{project}/locations/{location}/services/{service} ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If true and the Service is not found, the
  /// request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. The etag of the Service. If this is provided, it must
  /// match the server's etag.
  ///
  /// [force] - Optional. If set to true, any child resources (i.e. Schema,
  /// SchemaRevisions, Connectors, and ConnectorRevisions) will also be deleted.
  /// Otherwise, the request will only work if the Service has no child
  /// resources.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Service, but do not actually delete it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Execute any GraphQL query and mutation against the Firebase Data Connect's
  /// generated GraphQL schema.
  ///
  /// Grants full read and write access to the connected data sources. Note: Use
  /// introspection query to explore the generated GraphQL schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of Firebase Data Connect
  /// service, in the format: ```
  /// projects/{project}/locations/{location}/services/{service} ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GraphqlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GraphqlResponse> executeGraphql(
    GraphqlRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':executeGraphql';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GraphqlResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Execute any GraphQL query against the Firebase Data Connect's generated
  /// GraphQL schema.
  ///
  /// Grants full read to the connected data sources. `ExecuteGraphqlRead` is
  /// identical to `ExecuteGraphql` except it only accepts read-only query.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of Firebase Data Connect
  /// service, in the format: ```
  /// projects/{project}/locations/{location}/services/{service} ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GraphqlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GraphqlResponse> executeGraphqlRead(
    GraphqlRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':executeGraphqlRead';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GraphqlResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Service.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the service to retrieve, in the format: ```
  /// projects/{project}/locations/{location}/services/{service} ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Service].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Service> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Service.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Execute introspection query against the Firebase Data Connect's generated
  /// GraphQL schema.
  ///
  /// GraphQL introspection query provides metadata such as what tables the
  /// schema have, what queries and mutations can be performed on the schema,
  /// and so on. Read more at https://graphql.org/learn/introspection.
  /// IntrospectGraphql can read schema metadata but cannot read rows from Cloud
  /// SQL instance, which can be done via ExecuteGraphqlRead.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The relative resource name of Firebase Data Connect
  /// service, in the format: ```
  /// projects/{project}/locations/{location}/services/{service} ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GraphqlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GraphqlResponse> introspectGraphql(
    GraphqlRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':introspectGraphql';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GraphqlResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Services in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value of parent.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListServices` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListServices` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListServicesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListServicesResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/services';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListServicesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Service.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The relative resource name of the Firebase Data
  /// Connect service, in the format: ```
  /// projects/{project}/locations/{location}/services/{service} ``` Note that
  /// the service ID is specific to Firebase Data Connect and does not
  /// correspond to any of the instance IDs of the underlying data source
  /// connections.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If true and the Service is not found, a new
  /// Service will be created. In this case, `update_mask` is ignored.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Service resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Service, but do not actually update it.
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
    Service request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsServicesConnectorsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesConnectorsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Connector in a given project and location.
  ///
  /// The operations are validated against and must be compatible with the
  /// active schema. If the operations and schema are not compatible or if the
  /// schema is not present, this will result in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [connectorId] - Required. The ID to use for the connector, which will
  /// become the final component of the connector's resource name.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Connector, but do not actually create it.
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
    Connector request,
    core.String parent, {
    core.String? connectorId,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'connectorId': ?connectorId == null ? null : [connectorId],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/connectors';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Connector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connector to delete, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/connectors/{connector}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If true and the Connector is not found, the
  /// request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. The etag of the Connector. If this is provided, it must
  /// match the server's etag.
  ///
  /// [force] - Optional. If set to true, any child resources (i.e.
  /// ConnectorRevisions) will also be deleted. Otherwise, the request will only
  /// work if the Connector has no child resources.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Connector, but do not actually delete it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Execute a predefined mutation in a Connector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the connector to find the
  /// predefined mutation, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/connectors/{connector}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecuteMutationResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecuteMutationResponse> executeMutation(
    ExecuteMutationRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':executeMutation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExecuteMutationResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Execute a predefined query in a Connector.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the connector to find the
  /// predefined query, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/connectors/{connector}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ExecuteQueryResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ExecuteQueryResponse> executeQuery(
    ExecuteQueryRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':executeQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return ExecuteQueryResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets details of a single Connector.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the connector to retrieve, in the format:
  /// ```
  /// projects/{project}/locations/{location}/services/{service}/connectors/{connector}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/connectors/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Connector.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Impersonate a mutation defined on a Firebase Data Connect connector.
  ///
  /// It grants the admin SDK access to mutations defined in the given
  /// connector. The caller can choose to impersonate a particular Firebase Auth
  /// user, or skip @auth completely.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the connector to find the
  /// predefined query/mutation, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/connectors/{connector}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GraphqlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GraphqlResponse> impersonateMutation(
    ImpersonateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':impersonateMutation';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GraphqlResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Impersonate a query defined on a Firebase Data Connect connector.
  ///
  /// It grants the admin SDK access to queries defined in the given connector.
  /// The caller can choose to impersonate a particular Firebase Auth user, or
  /// skip @auth completely.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name of the connector to find the
  /// predefined query/mutation, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/connectors/{connector}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GraphqlResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GraphqlResponse> impersonateQuery(
    ImpersonateRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':impersonateQuery';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GraphqlResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists Connectors in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value of parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListConnectors` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListConnectors` must match
  /// the call that provided the page token.
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
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
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

  /// Updates the parameters of a single Connector, and creates a new
  /// ConnectorRevision with the updated Connector.
  ///
  /// The operations are validated against and must be compatible with the live
  /// schema. If the operations and schema are not compatible or if the schema
  /// is not present, this will result in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The relative resource name of the connector, in the
  /// format: ```
  /// projects/{project}/locations/{location}/services/{service}/connectors/{connector}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/connectors/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If true and the Connector is not found, a new
  /// Connector will be created. In this case, `update_mask` is ignored.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Connector resource by the update. The fields specified
  /// in the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Connector, but do not actually update it.
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
    Connector request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
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

class ProjectsLocationsServicesSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsServicesSchemasResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new Schema in a given project and location.
  ///
  /// Only creation of `schemas/main` is supported and calling create with any
  /// other schema ID will result in an error.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value for parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [schemaId] - Required. The ID to use for the schema, which will become the
  /// final component of the schema's resource name. Currently, only `main` is
  /// supported and any other schema ID will result in an error.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Schema, but do not actually update it.
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
    Schema request,
    core.String parent, {
    core.String? requestId,
    core.String? schemaId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'requestId': ?requestId == null ? null : [requestId],
      'schemaId': ?schemaId == null ? null : [schemaId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a single Schema.
  ///
  /// Because the schema and connectors must be compatible at all times, if this
  /// is called while any connectors are active, this will result in an error.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema to delete, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/schemas/{schema}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If true and the Schema is not found, the
  /// request will succeed but no action will be taken on the server.
  ///
  /// [etag] - Optional. The etag of the Schema. If this is provided, it must
  /// match the server's etag.
  ///
  /// [force] - Optional. If set to true, any child resources (i.e.
  /// SchemaRevisions) will also be deleted.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes after the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Schema, but do not actually delete it.
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
    core.bool? allowMissing,
    core.String? etag,
    core.bool? force,
    core.String? requestId,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'etag': ?etag == null ? null : [etag],
      'force': ?force == null ? null : ['${force}'],
      'requestId': ?requestId == null ? null : [requestId],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets details of a single Schema.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the schema to retrieve, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/schemas/{schema}
  /// ```
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Schema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Schema> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Schema.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists Schemas in a given project and location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Value of parent.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+$`.
  ///
  /// [filter] - Optional. Filtering results.
  ///
  /// [orderBy] - Optional. Hint for how to order the results.
  ///
  /// [pageSize] - Optional. Requested page size. Server may return fewer items
  /// than requested. If unspecified, server will pick an appropriate default.
  ///
  /// [pageToken] - Optional. A page token, received from a previous
  /// `ListSchemas` call. Provide this to retrieve the subsequent page. When
  /// paginating, all other parameters provided to `ListSchemas` must match the
  /// call that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListSchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListSchemasResponse> list(
    core.String parent, {
    core.String? filter,
    core.String? orderBy,
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'filter': ?filter == null ? null : [filter],
      'orderBy': ?orderBy == null ? null : [orderBy],
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/schemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListSchemasResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates the parameters of a single Schema, and creates a new
  /// SchemaRevision with the updated Schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Identifier. The relative resource name of the schema, in the
  /// format: ```
  /// projects/{project}/locations/{location}/services/{service}/schemas/{schema}
  /// ``` Right now, the only supported schema is "main".
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/services/\[^/\]+/schemas/\[^/\]+$`.
  ///
  /// [allowMissing] - Optional. If true and the Schema is not found, a new
  /// Schema will be created. In this case, `update_mask` is ignored.
  ///
  /// [requestId] - Optional. An optional request ID to identify requests.
  /// Specify a unique request ID so that if you must retry your request, the
  /// server will know to ignore the request if it has already been completed.
  /// The server will guarantee that for at least 60 minutes since the first
  /// request. For example, consider a situation where you make an initial
  /// request and the request times out. If you make the request again with the
  /// same request ID, the server can check if original operation with the same
  /// request ID was received, and if so, will ignore the second request. This
  /// prevents clients from accidentally creating duplicate commitments. The
  /// request ID must be a valid UUID with the exception that zero UUID is not
  /// supported (00000000-0000-0000-0000-000000000000).
  ///
  /// [updateMask] - Optional. Field mask is used to specify the fields to be
  /// overwritten in the Schema resource by the update. The fields specified in
  /// the update_mask are relative to the resource, not the full request. A
  /// field will be overwritten if it is in the mask. If the user does not
  /// provide a mask then all fields will be overwritten.
  ///
  /// [validateOnly] - Optional. If set, validate the request and preview the
  /// Schema, but do not actually update it.
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
    Schema request,
    core.String name, {
    core.bool? allowMissing,
    core.String? requestId,
    core.String? updateMask,
    core.bool? validateOnly,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'allowMissing': ?allowMissing == null ? null : ['${allowMissing}'],
      'requestId': ?requestId == null ? null : [requestId],
      'updateMask': ?updateMask == null ? null : [updateMask],
      'validateOnly': ?validateOnly == null ? null : ['${validateOnly}'],
      'fields': ?$fields == null ? null : [$fields],
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

/// The request message for Operations.CancelOperation.
typedef CancelOperationRequest = $Empty;

/// Settings for CloudSQL instance configuration.
class CloudSqlInstance {
  /// Name of the CloudSQL instance, in the format: ```
  /// projects/{project}/locations/{location}/instances/{instance} ```
  ///
  /// Required.
  core.String? instance;

  CloudSqlInstance({this.instance});

  CloudSqlInstance.fromJson(core.Map json_)
    : this(instance: json_['instance'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final instance = this.instance;
    return {'instance': ?instance};
  }
}

/// Connector consists of a set of operations, i.e. queries and mutations.
class Connector {
  /// Stores small amounts of arbitrary data.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Create time stamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Mutable human-readable name.
  ///
  /// 63 character limit.
  ///
  /// Optional.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// \[AIP-154\](https://google.aip.dev/154)
  ///
  /// Output only.
  core.String? etag;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The relative resource name of the connector, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/connectors/{connector}
  /// ```
  core.String? name;

  /// A field that if true, indicates that the system is working to compile and
  /// deploy the connector.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The source files that comprise the connector.
  ///
  /// Required.
  Source? source;

  /// System-assigned, unique identifier.
  ///
  /// Output only.
  core.String? uid;

  /// Update time stamp.
  ///
  /// Output only.
  core.String? updateTime;

  Connector({
    this.annotations,
    this.createTime,
    this.displayName,
    this.etag,
    this.labels,
    this.name,
    this.reconciling,
    this.source,
    this.uid,
    this.updateTime,
  });

  Connector.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        source: json_.containsKey('source')
            ? Source.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final etag = this.etag;
    final labels = this.labels;
    final name = this.name;
    final reconciling = this.reconciling;
    final source = this.source;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'source': ?source,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// A data source that backs Firebase Data Connect services.
class Datasource {
  /// HTTP GraphQL server webhook configurations.
  HttpGraphql? httpGraphql;

  /// PostgreSQL configurations.
  PostgreSql? postgresql;

  Datasource({this.httpGraphql, this.postgresql});

  Datasource.fromJson(core.Map json_)
    : this(
        httpGraphql: json_.containsKey('httpGraphql')
            ? HttpGraphql.fromJson(
                json_['httpGraphql'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        postgresql: json_.containsKey('postgresql')
            ? PostgreSql.fromJson(
                json_['postgresql'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final httpGraphql = this.httpGraphql;
    final postgresql = this.postgresql;
    return {'httpGraphql': ?httpGraphql, 'postgresql': ?postgresql};
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The ExecuteMutation request to Firebase Data Connect.
typedef ExecuteMutationRequest = $Request10;

/// The ExecuteMutation response from Firebase Data Connect.
class ExecuteMutationResponse {
  /// The result of executing the requested operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  /// Errors of this response.
  core.List<GraphqlError>? errors;

  ExecuteMutationResponse({this.data, this.errors});

  ExecuteMutationResponse.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? json_['data'] as core.Map<core.String, core.dynamic>
            : null,
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) => GraphqlError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final errors = this.errors;
    return {'data': ?data, 'errors': ?errors};
  }
}

/// The ExecuteQuery request to Firebase Data Connect.
typedef ExecuteQueryRequest = $Request10;

/// The ExecuteQuery response from Firebase Data Connect.
class ExecuteQueryResponse {
  /// The result of executing the requested operation.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  /// Errors of this response.
  core.List<GraphqlError>? errors;

  ExecuteQueryResponse({this.data, this.errors});

  ExecuteQueryResponse.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? json_['data'] as core.Map<core.String, core.dynamic>
            : null,
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) => GraphqlError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final errors = this.errors;
    return {'data': ?data, 'errors': ?errors};
  }
}

/// Individual files.
class File {
  /// The file's textual content.
  ///
  /// Required.
  core.String? content;

  /// The file name including folder path, if applicable.
  ///
  /// The path should be relative to a local workspace (e.g.
  /// dataconnect/(schema|connector) / * .gql) and not an absolute path (e.g.
  /// /absolute/path/(schema|connector) / * .gql).
  ///
  /// Required.
  core.String? path;

  File({this.content, this.path});

  File.fromJson(core.Map json_)
    : this(
        content: json_['content'] as core.String?,
        path: json_['path'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final content = this.content;
    final path = this.path;
    return {'content': ?content, 'path': ?path};
  }
}

/// GraphqlError conforms to the GraphQL error spec.
///
/// https://spec.graphql.org/draft/#sec-Errors Firebase Data Connect API
/// surfaces `GraphqlError` in various APIs: - Upon compile error,
/// `UpdateSchema` and `UpdateConnector` return Code.Invalid_Argument with a
/// list of `GraphqlError` in error details. - Upon query compile error,
/// `ExecuteGraphql`, `ExecuteGraphqlRead` and `IntrospectGraphql` return
/// Code.OK with a list of `GraphqlError` in response body. - Upon query
/// execution error, `ExecuteGraphql`, `ExecuteGraphqlRead`, `ExecuteMutation`,
/// `ExecuteQuery`, `IntrospectGraphql`, `ImpersonateQuery` and
/// `ImpersonateMutation` all return Code.OK with a list of `GraphqlError` in
/// response body.
class GraphqlError {
  /// Additional error information.
  GraphqlErrorExtensions? extensions;

  /// The source locations where the error occurred.
  ///
  /// Locations should help developers and toolings identify the source of error
  /// quickly. Included in admin endpoints (`ExecuteGraphql`,
  /// `ExecuteGraphqlRead`, `IntrospectGraphql`, `ImpersonateQuery`,
  /// `ImpersonateMutation`, `UpdateSchema` and `UpdateConnector`) to reference
  /// the provided GraphQL GQL document. Omitted in `ExecuteMutation` and
  /// `ExecuteQuery` since the caller shouldn't have access access the
  /// underlying GQL source.
  core.List<SourceLocation>? locations;

  /// The detailed error message.
  ///
  /// The message should help developer understand the underlying problem
  /// without leaking internal data.
  core.String? message;

  /// The result field which could not be populated due to error.
  ///
  /// Clients can use path to identify whether a null result is intentional or
  /// caused by a runtime error. It should be a list of string or index from the
  /// root of GraphQL query document.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Object?>? path;

  GraphqlError({this.extensions, this.locations, this.message, this.path});

  GraphqlError.fromJson(core.Map json_)
    : this(
        extensions: json_.containsKey('extensions')
            ? GraphqlErrorExtensions.fromJson(
                json_['extensions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => SourceLocation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        message: json_['message'] as core.String?,
        path: json_.containsKey('path') ? json_['path'] as core.List : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final extensions = this.extensions;
    final locations = this.locations;
    final message = this.message;
    final path = this.path;
    return {
      'extensions': ?extensions,
      'locations': ?locations,
      'message': ?message,
      'path': ?path,
    };
  }
}

/// GraphqlErrorExtensions contains additional information of `GraphqlError`.
class GraphqlErrorExtensions {
  /// Maps to canonical gRPC codes.
  ///
  /// If not specified, it represents `Code.INTERNAL`.
  /// Possible string values are:
  /// - "OK" : Not an error; returned on success. HTTP Mapping: 200 OK
  /// - "CANCELLED" : The operation was cancelled, typically by the caller. HTTP
  /// Mapping: 499 Client Closed Request
  /// - "UNKNOWN" : Unknown error. For example, this error may be returned when
  /// a `Status` value received from another address space belongs to an error
  /// space that is not known in this address space. Also errors raised by APIs
  /// that do not return enough error information may be converted to this
  /// error. HTTP Mapping: 500 Internal Server Error
  /// - "INVALID_ARGUMENT" : The client specified an invalid argument. Note that
  /// this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates
  /// arguments that are problematic regardless of the state of the system
  /// (e.g., a malformed file name). HTTP Mapping: 400 Bad Request
  /// - "DEADLINE_EXCEEDED" : The deadline expired before the operation could
  /// complete. For operations that change the state of the system, this error
  /// may be returned even if the operation has completed successfully. For
  /// example, a successful response from a server could have been delayed long
  /// enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout
  /// - "NOT_FOUND" : Some requested entity (e.g., file or directory) was not
  /// found. Note to server developers: if a request is denied for an entire
  /// class of users, such as gradual feature rollout or undocumented allowlist,
  /// `NOT_FOUND` may be used. If a request is denied for some users within a
  /// class of users, such as user-based access control, `PERMISSION_DENIED`
  /// must be used. HTTP Mapping: 404 Not Found
  /// - "ALREADY_EXISTS" : The entity that a client attempted to create (e.g.,
  /// file or directory) already exists. HTTP Mapping: 409 Conflict
  /// - "PERMISSION_DENIED" : The caller does not have permission to execute the
  /// specified operation. `PERMISSION_DENIED` must not be used for rejections
  /// caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for
  /// those errors). `PERMISSION_DENIED` must not be used if the caller can not
  /// be identified (use `UNAUTHENTICATED` instead for those errors). This error
  /// code does not imply the request is valid or the requested entity exists or
  /// satisfies other pre-conditions. HTTP Mapping: 403 Forbidden
  /// - "UNAUTHENTICATED" : The request does not have valid authentication
  /// credentials for the operation. HTTP Mapping: 401 Unauthorized
  /// - "RESOURCE_EXHAUSTED" : Some resource has been exhausted, perhaps a
  /// per-user quota, or perhaps the entire file system is out of space. HTTP
  /// Mapping: 429 Too Many Requests
  /// - "FAILED_PRECONDITION" : The operation was rejected because the system is
  /// not in a state required for the operation's execution. For example, the
  /// directory to be deleted is non-empty, an rmdir operation is applied to a
  /// non-directory, etc. Service implementors can use the following guidelines
  /// to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a)
  /// Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use
  /// `ABORTED` if the client should retry at a higher level. For example, when
  /// a client-specified test-and-set fails, indicating the client should
  /// restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the
  /// client should not retry until the system state has been explicitly fixed.
  /// For example, if an "rmdir" fails because the directory is non-empty,
  /// `FAILED_PRECONDITION` should be returned since the client should not retry
  /// unless the files are deleted from the directory. HTTP Mapping: 400 Bad
  /// Request
  /// - "ABORTED" : The operation was aborted, typically due to a concurrency
  /// issue such as a sequencer check failure or transaction abort. See the
  /// guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`,
  /// and `UNAVAILABLE`. HTTP Mapping: 409 Conflict
  /// - "OUT_OF_RANGE" : The operation was attempted past the valid range. E.g.,
  /// seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error
  /// indicates a problem that may be fixed if the system state changes. For
  /// example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to
  /// read at an offset that is not in the range \[0,2^32-1\], but it will
  /// generate `OUT_OF_RANGE` if asked to read from an offset past the current
  /// file size. There is a fair bit of overlap between `FAILED_PRECONDITION`
  /// and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific
  /// error) when it applies so that callers who are iterating through a space
  /// can easily look for an `OUT_OF_RANGE` error to detect when they are done.
  /// HTTP Mapping: 400 Bad Request
  /// - "UNIMPLEMENTED" : The operation is not implemented or is not
  /// supported/enabled in this service. HTTP Mapping: 501 Not Implemented
  /// - "INTERNAL" : Internal errors. This means that some invariants expected
  /// by the underlying system have been broken. This error code is reserved for
  /// serious errors. HTTP Mapping: 500 Internal Server Error
  /// - "UNAVAILABLE" : The service is currently unavailable. This is most
  /// likely a transient condition, which can be corrected by retrying with a
  /// backoff. Note that it is not always safe to retry non-idempotent
  /// operations. See the guidelines above for deciding between
  /// `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503
  /// Service Unavailable
  /// - "DATA_LOSS" : Unrecoverable data loss or corruption. HTTP Mapping: 500
  /// Internal Server Error
  core.String? code;

  /// More detailed error message to assist debugging.
  ///
  /// It contains application business logic that are inappropriate to leak
  /// publicly. In the emulator, Data Connect API always includes it to assist
  /// local development and debugging. In the backend, ConnectorService always
  /// hides it. GraphqlService without impersonation always include it.
  /// GraphqlService with impersonation includes it only if explicitly opted-in
  /// with `include_debug_details` in `GraphqlRequestExtensions`.
  core.String? debugDetails;

  /// The source file name where the error occurred.
  ///
  /// Included only for `UpdateSchema` and `UpdateConnector`, it corresponds to
  /// `File.path` of the provided `Source`.
  core.String? file;

  /// Warning level describes the severity and required action to suppress this
  /// warning when Firebase CLI run into it.
  /// Possible string values are:
  /// - "WARNING_LEVEL_UNKNOWN" : Warning level is not specified.
  /// - "LOG_ONLY" : Display a warning without action needed.
  /// - "INTERACTIVE_ACK" : Request a confirmation in interactive deployment
  /// flow.
  /// - "REQUIRE_ACK" : Require an explicit confirmation in all deployment
  /// flows.
  /// - "REQUIRE_FORCE" : Require --force in all deployment flows.
  core.String? warningLevel;

  /// Workarounds provide suggestions to address the compile errors or warnings.
  core.List<Workaround>? workarounds;

  GraphqlErrorExtensions({
    this.code,
    this.debugDetails,
    this.file,
    this.warningLevel,
    this.workarounds,
  });

  GraphqlErrorExtensions.fromJson(core.Map json_)
    : this(
        code: json_['code'] as core.String?,
        debugDetails: json_['debugDetails'] as core.String?,
        file: json_['file'] as core.String?,
        warningLevel: json_['warningLevel'] as core.String?,
        workarounds: (json_['workarounds'] as core.List?)
            ?.map(
              (value) => Workaround.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final code = this.code;
    final debugDetails = this.debugDetails;
    final file = this.file;
    final warningLevel = this.warningLevel;
    final workarounds = this.workarounds;
    return {
      'code': ?code,
      'debugDetails': ?debugDetails,
      'file': ?file,
      'warningLevel': ?warningLevel,
      'workarounds': ?workarounds,
    };
  }
}

/// The GraphQL request to Firebase Data Connect.
///
/// It strives to match the GraphQL over HTTP spec.
/// https://github.com/graphql/graphql-over-http/blob/main/spec/GraphQLOverHTTP.md#post
class GraphqlRequest {
  /// Additional GraphQL request information.
  ///
  /// Optional.
  GraphqlRequestExtensions? extensions;

  /// The name of the GraphQL operation name.
  ///
  /// Required only if `query` contains multiple operations. See
  /// https://graphql.org/learn/queries/#operation-name.
  ///
  /// Optional.
  core.String? operationName;

  /// The GraphQL query document source.
  ///
  /// Required.
  core.String? query;

  /// Values for GraphQL variables provided in this request.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variables;

  GraphqlRequest({
    this.extensions,
    this.operationName,
    this.query,
    this.variables,
  });

  GraphqlRequest.fromJson(core.Map json_)
    : this(
        extensions: json_.containsKey('extensions')
            ? GraphqlRequestExtensions.fromJson(
                json_['extensions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operationName: json_['operationName'] as core.String?,
        query: json_['query'] as core.String?,
        variables: json_.containsKey('variables')
            ? json_['variables'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final extensions = this.extensions;
    final operationName = this.operationName;
    final query = this.query;
    final variables = this.variables;
    return {
      'extensions': ?extensions,
      'operationName': ?operationName,
      'query': ?query,
      'variables': ?variables,
    };
  }
}

/// GraphqlRequestExtensions contains additional information of
/// `GraphqlRequest`.
class GraphqlRequestExtensions {
  /// If set, impersonate a request with given Firebase Auth context and
  /// evaluate the auth policies on the operation.
  ///
  /// If omitted, bypass any defined auth policies.
  ///
  /// Optional.
  Impersonation? impersonate;

  GraphqlRequestExtensions({this.impersonate});

  GraphqlRequestExtensions.fromJson(core.Map json_)
    : this(
        impersonate: json_.containsKey('impersonate')
            ? Impersonation.fromJson(
                json_['impersonate'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final impersonate = this.impersonate;
    return {'impersonate': ?impersonate};
  }
}

/// The GraphQL response from Firebase Data Connect.
///
/// It strives to match the GraphQL over HTTP spec. Note: Firebase Data Connect
/// always responds with `Content-Type: application/json`.
/// https://github.com/graphql/graphql-over-http/blob/main/spec/GraphQLOverHTTP.md#body
class GraphqlResponse {
  /// The result of the execution of the requested operation.
  ///
  /// If an error was raised before execution begins, the data entry should not
  /// be present in the result. (a request error:
  /// https://spec.graphql.org/draft/#sec-Errors.Request-Errors) If an error was
  /// raised during the execution that prevented a valid response, the data
  /// entry in the response should be null. (a field error:
  /// https://spec.graphql.org/draft/#sec-Errors.Error-Result-Format)
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? data;

  /// Errors of this response.
  ///
  /// If the data entry in the response is not present, the errors entry must be
  /// present. It conforms to https://spec.graphql.org/draft/#sec-Errors.
  core.List<GraphqlError>? errors;

  GraphqlResponse({this.data, this.errors});

  GraphqlResponse.fromJson(core.Map json_)
    : this(
        data: json_.containsKey('data')
            ? json_['data'] as core.Map<core.String, core.dynamic>
            : null,
        errors: (json_['errors'] as core.List?)
            ?.map(
              (value) => GraphqlError.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final data = this.data;
    final errors = this.errors;
    return {'data': ?data, 'errors': ?errors};
  }
}

/// Settings for HTTP GraphQL server webhook.
class HttpGraphql {
  /// Timeout duration for the HTTP request.
  ///
  /// Optional.
  core.String? timeout;

  /// The endpoint of the HTTP GraphQL server.
  ///
  /// Required.
  core.String? uri;

  HttpGraphql({this.timeout, this.uri});

  HttpGraphql.fromJson(core.Map json_)
    : this(
        timeout: json_['timeout'] as core.String?,
        uri: json_['uri'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final timeout = this.timeout;
    final uri = this.uri;
    return {'timeout': ?timeout, 'uri': ?uri};
  }
}

/// The Impersonate request to Firebase Data Connect.
class ImpersonateRequest {
  /// Additional GraphQL request information.
  ///
  /// Optional.
  GraphqlRequestExtensions? extensions;

  /// The name of the GraphQL operation name.
  ///
  /// Required because all Connector operations must be named. See
  /// https://graphql.org/learn/queries/#operation-name.
  ///
  /// Required.
  core.String? operationName;

  /// Values for GraphQL variables provided in this request.
  ///
  /// Optional.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? variables;

  ImpersonateRequest({this.extensions, this.operationName, this.variables});

  ImpersonateRequest.fromJson(core.Map json_)
    : this(
        extensions: json_.containsKey('extensions')
            ? GraphqlRequestExtensions.fromJson(
                json_['extensions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        operationName: json_['operationName'] as core.String?,
        variables: json_.containsKey('variables')
            ? json_['variables'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final extensions = this.extensions;
    final operationName = this.operationName;
    final variables = this.variables;
    return {
      'extensions': ?extensions,
      'operationName': ?operationName,
      'variables': ?variables,
    };
  }
}

/// Impersonation configures the Firebase Auth context to impersonate.
class Impersonation {
  /// Evaluate the auth policy with a customized JWT auth token.
  ///
  /// Should follow the Firebase Auth token format.
  /// https://firebase.google.com/docs/rules/rules-and-auth For example: a
  /// verified user may have auth_claims of {"sub": , "email_verified": true}
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object?>? authClaims;

  /// If set, include debug details in GraphQL error extensions.
  ///
  /// Optional.
  core.bool? includeDebugDetails;

  /// Evaluate the auth policy as an unauthenticated request.
  ///
  /// Can only be set to true.
  core.bool? unauthenticated;

  Impersonation({
    this.authClaims,
    this.includeDebugDetails,
    this.unauthenticated,
  });

  Impersonation.fromJson(core.Map json_)
    : this(
        authClaims: json_.containsKey('authClaims')
            ? json_['authClaims'] as core.Map<core.String, core.dynamic>
            : null,
        includeDebugDetails: json_['includeDebugDetails'] as core.bool?,
        unauthenticated: json_['unauthenticated'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final authClaims = this.authClaims;
    final includeDebugDetails = this.includeDebugDetails;
    final unauthenticated = this.unauthenticated;
    return {
      'authClaims': ?authClaims,
      'includeDebugDetails': ?includeDebugDetails,
      'unauthenticated': ?unauthenticated,
    };
  }
}

/// Message for response to listing Connectors.
///
/// By default, `connectors.source` will not be included in the response. To
/// specify the fields included in the response, the response field mask can be
/// provided by using the query parameter `$fields` or the header
/// `X-Goog-FieldMask`.
class ListConnectorsResponse {
  /// The list of Connectors.
  core.List<Connector>? connectors;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
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
        connectors: (json_['connectors'] as core.List?)
            ?.map(
              (value) => Connector.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final connectors = this.connectors;
    final nextPageToken = this.nextPageToken;
    final unreachable = this.unreachable;
    return {
      'connectors': ?connectors,
      'nextPageToken': ?nextPageToken,
      'unreachable': ?unreachable,
    };
  }
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
        locations: (json_['locations'] as core.List?)
            ?.map(
              (value) => Location.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locations = this.locations;
    final nextPageToken = this.nextPageToken;
    return {'locations': ?locations, 'nextPageToken': ?nextPageToken};
  }
}

/// The response message for Operations.ListOperations.
class ListOperationsResponse {
  /// The standard List next-page token.
  core.String? nextPageToken;

  /// A list of operations that matches the specified filter in the request.
  core.List<Operation>? operations;

  /// Unordered list.
  ///
  /// Unreachable resources. Populated when the request sets
  /// `ListOperationsRequest.return_partial_success` and reads across
  /// collections. For example, when attempting to list all resources across all
  /// supported locations.
  core.List<core.String>? unreachable;

  ListOperationsResponse({
    this.nextPageToken,
    this.operations,
    this.unreachable,
  });

  ListOperationsResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        operations: (json_['operations'] as core.List?)
            ?.map(
              (value) => Operation.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final operations = this.operations;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'operations': ?operations,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing Schemas.
///
/// By default, `schemas.source` will not be included in the response. To
/// specify the fields included in the response, the response field mask can be
/// provided by using the query parameter `$fields` or the header
/// `X-Goog-FieldMask`.
class ListSchemasResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of Schemas.
  core.List<Schema>? schemas;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListSchemasResponse({this.nextPageToken, this.schemas, this.unreachable});

  ListSchemasResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        schemas: (json_['schemas'] as core.List?)
            ?.map(
              (value) =>
                  Schema.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final schemas = this.schemas;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'schemas': ?schemas,
      'unreachable': ?unreachable,
    };
  }
}

/// Message for response to listing Services.
class ListServicesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The list of Services.
  core.List<Service>? services;

  /// Locations that could not be reached.
  core.List<core.String>? unreachable;

  ListServicesResponse({this.nextPageToken, this.services, this.unreachable});

  ListServicesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        services: (json_['services'] as core.List?)
            ?.map(
              (value) => Service.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        unreachable: (json_['unreachable'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final services = this.services;
    final unreachable = this.unreachable;
    return {
      'nextPageToken': ?nextPageToken,
      'services': ?services,
      'unreachable': ?unreachable,
    };
  }
}

/// A resource that represents a Google Cloud location.
typedef Location = $Location00;

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
        error: json_.containsKey('error')
            ? Status.fromJson(
                json_['error'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        metadata: json_.containsKey('metadata')
            ? json_['metadata'] as core.Map<core.String, core.dynamic>
            : null,
        name: json_['name'] as core.String?,
        response: json_.containsKey('response')
            ? json_['response'] as core.Map<core.String, core.dynamic>
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final done = this.done;
    final error = this.error;
    final metadata = this.metadata;
    final name = this.name;
    final response = this.response;
    return {
      'done': ?done,
      'error': ?error,
      'metadata': ?metadata,
      'name': ?name,
      'response': ?response,
    };
  }
}

/// Settings for PostgreSQL data source.
class PostgreSql {
  /// Cloud SQL configurations.
  CloudSqlInstance? cloudSql;

  /// Name of the PostgreSQL database.
  ///
  /// Required.
  core.String? database;

  /// Ephemeral is true if this data connect service is served from temporary
  /// in-memory emulation of Postgres.
  ///
  /// While Cloud SQL is being provisioned, the data connect service provides
  /// the ephemeral service to help developers get started. Once the Cloud SQL
  /// is provisioned, Data Connect service will transfer its data on a
  /// best-effort basis to the Cloud SQL instance. WARNING: Ephemeral data
  /// sources will expire after 24 hour. The data will be lost if they aren't
  /// transferred to the Cloud SQL instance. WARNING: When `ephemeral=true`,
  /// mutations to the database are not guaranteed to be durably persisted, even
  /// if an OK status code is returned. All or parts of the data may be lost or
  /// reverted to earlier versions.
  ///
  /// Output only.
  core.bool? ephemeral;

  /// Configure how to perform Postgresql schema migration.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SQL_SCHEMA_MIGRATION_UNSPECIFIED" : Unspecified SQL schema migration.
  /// - "MIGRATE_COMPATIBLE" : Connect to the SQL database and identify any
  /// missing SQL resources used in the given Firebase Data Connect Schema.
  /// Automatically create necessary SQL resources (SQL table, column, etc)
  /// before deploying the schema. During migration steps, the SQL Schema must
  /// comply with the previous before_deploy setting in case the migration is
  /// interrupted. Therefore, the previous before_deploy setting must not be
  /// `schema_validation=STRICT`.
  core.String? schemaMigration;

  /// Configure how much Postgresql schema validation to perform.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "SQL_SCHEMA_VALIDATION_UNSPECIFIED" : Unspecified SQL schema validation.
  /// Default to STRICT.
  /// - "NONE" : Skip no SQL schema validation. Use it with extreme caution.
  /// CreateSchema or UpdateSchema will succeed even if SQL database is
  /// unavailable or SQL schema is incompatible. Generated SQL may fail at
  /// execution time.
  /// - "STRICT" : Connect to the SQL database and validate that the SQL DDL
  /// matches the schema exactly. Surface any discrepancies as
  /// `FAILED_PRECONDITION` with an `IncompatibleSqlSchemaError` error detail.
  /// - "COMPATIBLE" : Connect to the SQL database and validate that the SQL DDL
  /// has all the SQL resources used in the given Firebase Data Connect Schema.
  /// Surface any missing resources as `FAILED_PRECONDITION` with an
  /// `IncompatibleSqlSchemaError` error detail. Succeed even if there are
  /// unknown tables and columns.
  core.String? schemaValidation;

  /// No Postgres data source is linked.
  ///
  /// If set, don't allow `database` and `schema_validation` to be configured.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? unlinked;

  PostgreSql({
    this.cloudSql,
    this.database,
    this.ephemeral,
    this.schemaMigration,
    this.schemaValidation,
    this.unlinked,
  });

  PostgreSql.fromJson(core.Map json_)
    : this(
        cloudSql: json_.containsKey('cloudSql')
            ? CloudSqlInstance.fromJson(
                json_['cloudSql'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        database: json_['database'] as core.String?,
        ephemeral: json_['ephemeral'] as core.bool?,
        schemaMigration: json_['schemaMigration'] as core.String?,
        schemaValidation: json_['schemaValidation'] as core.String?,
        unlinked: json_['unlinked'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final cloudSql = this.cloudSql;
    final database = this.database;
    final ephemeral = this.ephemeral;
    final schemaMigration = this.schemaMigration;
    final schemaValidation = this.schemaValidation;
    final unlinked = this.unlinked;
    return {
      'cloudSql': ?cloudSql,
      'database': ?database,
      'ephemeral': ?ephemeral,
      'schemaMigration': ?schemaMigration,
      'schemaValidation': ?schemaValidation,
      'unlinked': ?unlinked,
    };
  }
}

/// The application schema of a Firebase Data Connect service.
class Schema {
  /// Stores small amounts of arbitrary data.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Create time stamp.
  ///
  /// Output only.
  core.String? createTime;

  /// The data sources linked in the schema.
  ///
  /// Required.
  core.List<Datasource>? datasources;

  /// Mutable human-readable name.
  ///
  /// 63 character limit.
  ///
  /// Optional.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// \[AIP-154\](https://google.aip.dev/154)
  ///
  /// Output only.
  core.String? etag;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The relative resource name of the schema, in the format: ```
  /// projects/{project}/locations/{location}/services/{service}/schemas/{schema}
  /// ``` Right now, the only supported schema is "main".
  core.String? name;

  /// A field that if true, indicates that the system is working to compile and
  /// deploy the schema.
  ///
  /// Output only.
  core.bool? reconciling;

  /// The source files that comprise the application schema.
  ///
  /// Required.
  Source? source;

  /// System-assigned, unique identifier.
  ///
  /// Output only.
  core.String? uid;

  /// Update time stamp.
  ///
  /// Output only.
  core.String? updateTime;

  Schema({
    this.annotations,
    this.createTime,
    this.datasources,
    this.displayName,
    this.etag,
    this.labels,
    this.name,
    this.reconciling,
    this.source,
    this.uid,
    this.updateTime,
  });

  Schema.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        createTime: json_['createTime'] as core.String?,
        datasources: (json_['datasources'] as core.List?)
            ?.map(
              (value) => Datasource.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        source: json_.containsKey('source')
            ? Source.fromJson(
                json_['source'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final createTime = this.createTime;
    final datasources = this.datasources;
    final displayName = this.displayName;
    final etag = this.etag;
    final labels = this.labels;
    final name = this.name;
    final reconciling = this.reconciling;
    final source = this.source;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'createTime': ?createTime,
      'datasources': ?datasources,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'source': ?source,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// A Firebase Data Connect service.
class Service {
  /// Stores small amounts of arbitrary data.
  ///
  /// Optional.
  core.Map<core.String, core.String>? annotations;

  /// Create time stamp.
  ///
  /// Output only.
  core.String? createTime;

  /// Mutable human-readable name.
  ///
  /// 63 character limit.
  ///
  /// Optional.
  core.String? displayName;

  /// This checksum is computed by the server based on the value of other
  /// fields, and may be sent on update and delete requests to ensure the client
  /// has an up-to-date value before proceeding.
  ///
  /// \[AIP-154\](https://google.aip.dev/154)
  ///
  /// Output only.
  core.String? etag;

  /// Labels as key value pairs.
  ///
  /// Optional.
  core.Map<core.String, core.String>? labels;

  /// Identifier.
  ///
  /// The relative resource name of the Firebase Data Connect service, in the
  /// format: ``` projects/{project}/locations/{location}/services/{service} ```
  /// Note that the service ID is specific to Firebase Data Connect and does not
  /// correspond to any of the instance IDs of the underlying data source
  /// connections.
  core.String? name;

  /// A field that if true, indicates that the system is working update the
  /// service.
  ///
  /// Output only.
  core.bool? reconciling;

  /// System-assigned, unique identifier.
  ///
  /// Output only.
  core.String? uid;

  /// Update time stamp.
  ///
  /// Output only.
  core.String? updateTime;

  Service({
    this.annotations,
    this.createTime,
    this.displayName,
    this.etag,
    this.labels,
    this.name,
    this.reconciling,
    this.uid,
    this.updateTime,
  });

  Service.fromJson(core.Map json_)
    : this(
        annotations:
            (json_['annotations'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        name: json_['name'] as core.String?,
        reconciling: json_['reconciling'] as core.bool?,
        uid: json_['uid'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final annotations = this.annotations;
    final createTime = this.createTime;
    final displayName = this.displayName;
    final etag = this.etag;
    final labels = this.labels;
    final name = this.name;
    final reconciling = this.reconciling;
    final uid = this.uid;
    final updateTime = this.updateTime;
    return {
      'annotations': ?annotations,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }
}

/// Used to represent a set of source files.
class Source {
  /// The files that comprise the source set.
  ///
  /// Required.
  core.List<File>? files;

  Source({this.files});

  Source.fromJson(core.Map json_)
    : this(
        files: (json_['files'] as core.List?)
            ?.map(
              (value) =>
                  File.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final files = this.files;
    return {'files': ?files};
  }
}

/// SourceLocation references a location in a GraphQL source.
class SourceLocation {
  /// Column number starting at 1.
  core.int? column;

  /// Line number starting at 1.
  core.int? line;

  SourceLocation({this.column, this.line});

  SourceLocation.fromJson(core.Map json_)
    : this(
        column: json_['column'] as core.int?,
        line: json_['line'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final column = this.column;
    final line = this.line;
    return {'column': ?column, 'line': ?line};
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Workaround provides suggestions to address errors and warnings.
class Workaround {
  /// Description of this workaround.
  core.String? description;

  /// Why would this workaround address the error and warning.
  core.String? reason;

  /// A suggested code snippet to fix the error and warning.
  core.String? replace;

  Workaround({this.description, this.reason, this.replace});

  Workaround.fromJson(core.Map json_)
    : this(
        description: json_['description'] as core.String?,
        reason: json_['reason'] as core.String?,
        replace: json_['replace'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final description = this.description;
    final reason = this.reason;
    final replace = this.replace;
    return {
      'description': ?description,
      'reason': ?reason,
      'replace': ?replace,
    };
  }
}
