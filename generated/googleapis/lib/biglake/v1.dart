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

/// BigLake API - v1
///
/// The BigLake API provides access to BigLake Metastore, a serverless, fully
/// managed, and highly available metastore for open-source data that can be
/// used for querying Apache Iceberg tables in BigQuery.
///
/// For more information, see <https://cloud.google.com/bigquery/>
///
/// Create an instance of [BigLakeServiceApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsCatalogsResource]
///     - [ProjectsCatalogsNamespacesResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsCatalogsResource]
///       - [ProjectsLocationsCatalogsDatabasesResource]
///         - [ProjectsLocationsCatalogsDatabasesTablesResource]
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

/// The BigLake API provides access to BigLake Metastore, a serverless, fully
/// managed, and highly available metastore for open-source data that can be
/// used for querying Apache Iceberg tables in BigQuery.
class BigLakeServiceApi {
  /// View and manage your data in Google BigQuery and see the email address for
  /// your Google Account
  static const bigqueryScope = 'https://www.googleapis.com/auth/bigquery';

  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  BigLakeServiceApi(
    http.Client client, {
    core.String rootUrl = 'https://biglake.googleapis.com/',
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

  ProjectsCatalogsResource get catalogs => ProjectsCatalogsResource(_requester);
  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsCatalogsResource {
  final commons.ApiRequester _requester;

  ProjectsCatalogsNamespacesResource get namespaces =>
      ProjectsCatalogsNamespacesResource(_requester);

  ProjectsCatalogsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the IAM policy for the specified Catalog.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/catalogs/\[^/\]+$`.
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
      'options.requestedPolicyVersion': ?options_requestedPolicyVersion == null
          ? null
          : ['${options_requestedPolicyVersion}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM policy for the specified catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// specified. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern `^projects/\[^/\]+/catalogs/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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
}

class ProjectsCatalogsNamespacesResource {
  final commons.ApiRequester _requester;

  ProjectsCatalogsNamespacesResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the IAM policy for the specified Catalog.
  ///
  /// Request parameters:
  ///
  /// [resource] - REQUIRED: The resource for which the policy is being
  /// requested. See
  /// [Resource names](https://cloud.google.com/apis/design/resource_names) for
  /// the appropriate value for this field.
  /// Value must have pattern
  /// `^projects/\[^/\]+/catalogs/\[^/\]+/namespaces/\[^/\]+$`.
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
      'options.requestedPolicyVersion': ?options_requestedPolicyVersion == null
          ? null
          : ['${options_requestedPolicyVersion}'],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':getIamPolicy';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Policy.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the IAM policy for the specified catalog.
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
  /// `^projects/\[^/\]+/catalogs/\[^/\]+/namespaces/\[^/\]+$`.
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
      'fields': ?$fields == null ? null : [$fields],
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
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsResource get catalogs =>
      ProjectsLocationsCatalogsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsLocationsCatalogsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsDatabasesResource get databases =>
      ProjectsLocationsCatalogsDatabasesResource(_requester);

  ProjectsLocationsCatalogsResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new catalog.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this catalog will be
  /// created. Format: projects/{project_id_or_number}/locations/{location_id}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [catalogId] - Required. The ID to use for the catalog, which will become
  /// the final component of the catalog's resource name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Catalog> create(
    Catalog request,
    core.String parent, {
    core.String? catalogId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'catalogId': ?catalogId == null ? null : [catalogId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/catalogs';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Catalog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing catalog specified by the catalog ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the catalog to delete. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Catalog> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Catalog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the catalog specified by the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the catalog to retrieve. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Catalog].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Catalog> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Catalog.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all catalogs in a specified project.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of catalogs.
  /// Format: projects/{project_id_or_number}/locations/{location_id}
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of catalogs to return. The service may
  /// return fewer than this value. If unspecified, at most 50 catalogs will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListCatalogs` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListCatalogs` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListCatalogsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListCatalogsResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/catalogs';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListCatalogsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsLocationsCatalogsDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsDatabasesTablesResource get tables =>
      ProjectsLocationsCatalogsDatabasesTablesResource(_requester);

  ProjectsLocationsCatalogsDatabasesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new database.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this database will be
  /// created. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [databaseId] - Required. The ID to use for the database, which will become
  /// the final component of the database's resource name.
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
  async.Future<Database> create(
    Database request,
    core.String parent, {
    core.String? databaseId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'databaseId': ?databaseId == null ? null : [databaseId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing database specified by the database ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the database to delete. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<Database> delete(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the database specified by the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the database to retrieve. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<Database> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all databases in a specified catalog.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of databases.
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of databases to return. The service may
  /// return fewer than this value. If unspecified, at most 50 databases will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListDatabases` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListDatabases` must match the call that provided
  /// the page token.
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
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/databases';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListDatabasesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing database specified by the database ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. For the `FieldMask`
  /// definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// If not set, defaults to all of the fields that are allowed to update.
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
  async.Future<Database> patch(
    Database request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Database.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsCatalogsDatabasesTablesResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsCatalogsDatabasesTablesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a new table.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent resource where this table will be created.
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [tableId] - Required. The ID to use for the table, which will become the
  /// final component of the table's resource name.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> create(
    Table request,
    core.String parent, {
    core.String? tableId,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'tableId': ?tableId == null ? null : [tableId],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tables';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes an existing table specified by the table ID.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the table to delete. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> delete(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the table specified by the resource name.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the table to retrieve. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// List all tables in a specified database.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of tables.
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of tables to return. The service may
  /// return fewer than this value. If unspecified, at most 50 tables will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListTables` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListTables` must match the call that provided the
  /// page token.
  ///
  /// [view] - The view for the returned tables.
  /// Possible string values are:
  /// - "TABLE_VIEW_UNSPECIFIED" : Default value. The API will default to the
  /// BASIC view.
  /// - "BASIC" : Include only table names. This is the default value.
  /// - "FULL" : Include everything.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListTablesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListTablesResponse> list(
    core.String parent, {
    core.int? pageSize,
    core.String? pageToken,
    core.String? view,
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      'pageSize': ?pageSize == null ? null : ['${pageSize}'],
      'pageToken': ?pageToken == null ? null : [pageToken],
      'view': ?view == null ? null : [view],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/tables';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListTablesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates an existing table specified by the table ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Output only. The resource name. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [updateMask] - The list of fields to update. For the `FieldMask`
  /// definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  /// If not set, defaults to all of the fields that are allowed to update.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> patch(
    Table request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'updateMask': ?updateMask == null ? null : [updateMask],
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Renames an existing table specified by the table ID.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The table's `name` field is used to identify the table
  /// to rename. Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/catalogs/\[^/\]+/databases/\[^/\]+/tables/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Table].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Table> rename(
    RenameTableRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      'fields': ?$fields == null ? null : [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':rename';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Table.fromJson(response_ as core.Map<core.String, core.dynamic>);
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
        auditLogConfigs: (json_['auditLogConfigs'] as core.List?)
            ?.map(
              (value) => AuditLogConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        service: json_['service'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditLogConfigs = this.auditLogConfigs;
    final service = this.service;
    return {'auditLogConfigs': ?auditLogConfigs, 'service': ?service};
  }
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
        condition: json_.containsKey('condition')
            ? Expr.fromJson(
                json_['condition'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        members: (json_['members'] as core.List?)
            ?.map((value) => value as core.String)
            .toList(),
        role: json_['role'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final condition = this.condition;
    final members = this.members;
    final role = this.role;
    return {'condition': ?condition, 'members': ?members, 'role': ?role};
  }
}

/// Catalog is the container of databases.
class Catalog {
  /// The creation time of the catalog.
  ///
  /// Output only.
  core.String? createTime;

  /// The deletion time of the catalog.
  ///
  /// Only set after the catalog is deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The time when this catalog is considered expired.
  ///
  /// Only set after the catalog is deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// The resource name.
  ///
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  ///
  /// Output only.
  core.String? name;

  /// The last modification time of the catalog.
  ///
  /// Output only.
  core.String? updateTime;

  Catalog({
    this.createTime,
    this.deleteTime,
    this.expireTime,
    this.name,
    this.updateTime,
  });

  Catalog.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        name: json_['name'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final deleteTime = this.deleteTime;
    final expireTime = this.expireTime;
    final name = this.name;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'expireTime': ?expireTime,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }
}

/// Database is the container of tables.
class Database {
  /// The creation time of the database.
  ///
  /// Output only.
  core.String? createTime;

  /// The deletion time of the database.
  ///
  /// Only set after the database is deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The time when this database is considered expired.
  ///
  /// Only set after the database is deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// Options of a Hive database.
  HiveDatabaseOptions? hiveOptions;

  /// The resource name.
  ///
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}
  ///
  /// Output only.
  core.String? name;

  /// The database type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is not specified.
  /// - "HIVE" : Represents a database storing tables compatible with Hive
  /// Metastore tables.
  core.String? type;

  /// The last modification time of the database.
  ///
  /// Output only.
  core.String? updateTime;

  Database({
    this.createTime,
    this.deleteTime,
    this.expireTime,
    this.hiveOptions,
    this.name,
    this.type,
    this.updateTime,
  });

  Database.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        hiveOptions: json_.containsKey('hiveOptions')
            ? HiveDatabaseOptions.fromJson(
                json_['hiveOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final deleteTime = this.deleteTime;
    final expireTime = this.expireTime;
    final hiveOptions = this.hiveOptions;
    final name = this.name;
    final type = this.type;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'expireTime': ?expireTime,
      'hiveOptions': ?hiveOptions,
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }
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

/// Options of a Hive database.
class HiveDatabaseOptions {
  /// Cloud Storage folder URI where the database data is stored, starting with
  /// "gs://".
  core.String? locationUri;

  /// Stores user supplied Hive database parameters.
  core.Map<core.String, core.String>? parameters;

  HiveDatabaseOptions({this.locationUri, this.parameters});

  HiveDatabaseOptions.fromJson(core.Map json_)
    : this(
        locationUri: json_['locationUri'] as core.String?,
        parameters:
            (json_['parameters'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final locationUri = this.locationUri;
    final parameters = this.parameters;
    return {'locationUri': ?locationUri, 'parameters': ?parameters};
  }
}

/// Options of a Hive table.
class HiveTableOptions {
  /// Stores user supplied Hive table parameters.
  core.Map<core.String, core.String>? parameters;

  /// Stores physical storage information of the data.
  StorageDescriptor? storageDescriptor;

  /// Hive table type.
  ///
  /// For example, MANAGED_TABLE, EXTERNAL_TABLE.
  core.String? tableType;

  HiveTableOptions({this.parameters, this.storageDescriptor, this.tableType});

  HiveTableOptions.fromJson(core.Map json_)
    : this(
        parameters:
            (json_['parameters'] as core.Map<core.String, core.dynamic>?)?.map(
              (key, value) => core.MapEntry(key, value as core.String),
            ),
        storageDescriptor: json_.containsKey('storageDescriptor')
            ? StorageDescriptor.fromJson(
                json_['storageDescriptor']
                    as core.Map<core.String, core.dynamic>,
              )
            : null,
        tableType: json_['tableType'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final parameters = this.parameters;
    final storageDescriptor = this.storageDescriptor;
    final tableType = this.tableType;
    return {
      'parameters': ?parameters,
      'storageDescriptor': ?storageDescriptor,
      'tableType': ?tableType,
    };
  }
}

/// Response message for the ListCatalogs method.
class ListCatalogsResponse {
  /// The catalogs from the specified project.
  core.List<Catalog>? catalogs;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListCatalogsResponse({this.catalogs, this.nextPageToken});

  ListCatalogsResponse.fromJson(core.Map json_)
    : this(
        catalogs: (json_['catalogs'] as core.List?)
            ?.map(
              (value) => Catalog.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final catalogs = this.catalogs;
    final nextPageToken = this.nextPageToken;
    return {'catalogs': ?catalogs, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the ListDatabases method.
class ListDatabasesResponse {
  /// The databases from the specified catalog.
  core.List<Database>? databases;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  ListDatabasesResponse({this.databases, this.nextPageToken});

  ListDatabasesResponse.fromJson(core.Map json_)
    : this(
        databases: (json_['databases'] as core.List?)
            ?.map(
              (value) => Database.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final databases = this.databases;
    final nextPageToken = this.nextPageToken;
    return {'databases': ?databases, 'nextPageToken': ?nextPageToken};
  }
}

/// Response message for the ListTables method.
class ListTablesResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The tables from the specified database.
  core.List<Table>? tables;

  ListTablesResponse({this.nextPageToken, this.tables});

  ListTablesResponse.fromJson(core.Map json_)
    : this(
        nextPageToken: json_['nextPageToken'] as core.String?,
        tables: (json_['tables'] as core.List?)
            ?.map(
              (value) =>
                  Table.fromJson(value as core.Map<core.String, core.dynamic>),
            )
            .toList(),
      );

  core.Map<core.String, core.dynamic> toJson() {
    final nextPageToken = this.nextPageToken;
    final tables = this.tables;
    return {'nextPageToken': ?nextPageToken, 'tables': ?tables};
  }
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
        auditConfigs: (json_['auditConfigs'] as core.List?)
            ?.map(
              (value) => AuditConfig.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        bindings: (json_['bindings'] as core.List?)
            ?.map(
              (value) => Binding.fromJson(
                value as core.Map<core.String, core.dynamic>,
              ),
            )
            .toList(),
        etag: json_['etag'] as core.String?,
        version: json_['version'] as core.int?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final auditConfigs = this.auditConfigs;
    final bindings = this.bindings;
    final etag = this.etag;
    final version = this.version;
    return {
      'auditConfigs': ?auditConfigs,
      'bindings': ?bindings,
      'etag': ?etag,
      'version': ?version,
    };
  }
}

/// Request message for the RenameTable method in MetastoreService
class RenameTableRequest {
  /// The new `name` for the specified table, must be in the same database.
  ///
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  ///
  /// Required.
  core.String? newName;

  RenameTableRequest({this.newName});

  RenameTableRequest.fromJson(core.Map json_)
    : this(newName: json_['newName'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final newName = this.newName;
    return {'newName': ?newName};
  }
}

/// Serializer and deserializer information.
class SerDeInfo {
  /// The fully qualified Java class name of the serialization library.
  core.String? serializationLib;

  SerDeInfo({this.serializationLib});

  SerDeInfo.fromJson(core.Map json_)
    : this(serializationLib: json_['serializationLib'] as core.String?);

  core.Map<core.String, core.dynamic> toJson() {
    final serializationLib = this.serializationLib;
    return {'serializationLib': ?serializationLib};
  }
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

  SetIamPolicyRequest({this.policy, this.updateMask});

  SetIamPolicyRequest.fromJson(core.Map json_)
    : this(
        policy: json_.containsKey('policy')
            ? Policy.fromJson(
                json_['policy'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        updateMask: json_['updateMask'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final policy = this.policy;
    final updateMask = this.updateMask;
    return {'policy': ?policy, 'updateMask': ?updateMask};
  }
}

/// Stores physical storage information of the data.
class StorageDescriptor {
  /// The fully qualified Java class name of the input format.
  core.String? inputFormat;

  /// Cloud Storage folder URI where the table data is stored, starting with
  /// "gs://".
  core.String? locationUri;

  /// The fully qualified Java class name of the output format.
  core.String? outputFormat;

  /// Serializer and deserializer information.
  SerDeInfo? serdeInfo;

  StorageDescriptor({
    this.inputFormat,
    this.locationUri,
    this.outputFormat,
    this.serdeInfo,
  });

  StorageDescriptor.fromJson(core.Map json_)
    : this(
        inputFormat: json_['inputFormat'] as core.String?,
        locationUri: json_['locationUri'] as core.String?,
        outputFormat: json_['outputFormat'] as core.String?,
        serdeInfo: json_.containsKey('serdeInfo')
            ? SerDeInfo.fromJson(
                json_['serdeInfo'] as core.Map<core.String, core.dynamic>,
              )
            : null,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final inputFormat = this.inputFormat;
    final locationUri = this.locationUri;
    final outputFormat = this.outputFormat;
    final serdeInfo = this.serdeInfo;
    return {
      'inputFormat': ?inputFormat,
      'locationUri': ?locationUri,
      'outputFormat': ?outputFormat,
      'serdeInfo': ?serdeInfo,
    };
  }
}

/// Represents a table.
class Table {
  /// The creation time of the table.
  ///
  /// Output only.
  core.String? createTime;

  /// The deletion time of the table.
  ///
  /// Only set after the table is deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// The checksum of a table object computed by the server based on the value
  /// of other fields.
  ///
  /// It may be sent on update requests to ensure the client has an up-to-date
  /// value before proceeding. It is only checked for update table operations.
  core.String? etag;

  /// The time when this table is considered expired.
  ///
  /// Only set after the table is deleted.
  ///
  /// Output only.
  core.String? expireTime;

  /// Options of a Hive table.
  HiveTableOptions? hiveOptions;

  /// The resource name.
  ///
  /// Format:
  /// projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}/databases/{database_id}/tables/{table_id}
  ///
  /// Output only.
  core.String? name;

  /// The table type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : The type is not specified.
  /// - "HIVE" : Represents a table compatible with Hive Metastore tables.
  core.String? type;

  /// The last modification time of the table.
  ///
  /// Output only.
  core.String? updateTime;

  Table({
    this.createTime,
    this.deleteTime,
    this.etag,
    this.expireTime,
    this.hiveOptions,
    this.name,
    this.type,
    this.updateTime,
  });

  Table.fromJson(core.Map json_)
    : this(
        createTime: json_['createTime'] as core.String?,
        deleteTime: json_['deleteTime'] as core.String?,
        etag: json_['etag'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        hiveOptions: json_.containsKey('hiveOptions')
            ? HiveTableOptions.fromJson(
                json_['hiveOptions'] as core.Map<core.String, core.dynamic>,
              )
            : null,
        name: json_['name'] as core.String?,
        type: json_['type'] as core.String?,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() {
    final createTime = this.createTime;
    final deleteTime = this.deleteTime;
    final etag = this.etag;
    final expireTime = this.expireTime;
    final hiveOptions = this.hiveOptions;
    final name = this.name;
    final type = this.type;
    final updateTime = this.updateTime;
    return {
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'hiveOptions': ?hiveOptions,
      'name': ?name,
      'type': ?type,
      'updateTime': ?updateTime,
    };
  }
}
