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

/// Document AI Warehouse API - v1
///
/// For more information, see <https://cloud.google.com/document-warehouse>
///
/// Create an instance of [ContentwarehouseApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsLocationsResource]
///     - [ProjectsLocationsDocumentSchemasResource]
///     - [ProjectsLocationsDocumentsResource]
///       - [ProjectsLocationsDocumentsDocumentLinksResource]
///       - [ProjectsLocationsDocumentsReferenceIdResource]
///     - [ProjectsLocationsOperationsResource]
///     - [ProjectsLocationsRuleSetsResource]
///     - [ProjectsLocationsSynonymSetsResource]
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

class ContentwarehouseApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  ContentwarehouseApi(http.Client client,
      {core.String rootUrl = 'https://contentwarehouse.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, requestHeaders);
}

class ProjectsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsResource get locations =>
      ProjectsLocationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the access control policy for a resource.
  ///
  /// Returns NOT_FOUND error if the resource does not exist. Returns an empty
  /// policy if the resource exists but does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. REQUIRED: The resource for which the policy is
  /// being requested. Format for document:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  /// Format for collection:
  /// projects/{project_number}/locations/{location}/collections/{collection_id}.
  /// Format for project: projects/{project_number}.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1FetchAclResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1FetchAclResponse> fetchAcl(
    GoogleCloudContentwarehouseV1FetchAclRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':fetchAcl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1FetchAclResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy for a resource.
  ///
  /// Replaces any existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. REQUIRED: The resource for which the policy is
  /// being requested. Format for document:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  /// Format for collection:
  /// projects/{project_number}/locations/{location}/collections/{collection_id}.
  /// Format for project: projects/{project_number}.
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1SetAclResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1SetAclResponse> setAcl(
    GoogleCloudContentwarehouseV1SetAclRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setAcl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1SetAclResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDocumentSchemasResource get documentSchemas =>
      ProjectsLocationsDocumentSchemasResource(_requester);
  ProjectsLocationsDocumentsResource get documents =>
      ProjectsLocationsDocumentsResource(_requester);
  ProjectsLocationsOperationsResource get operations =>
      ProjectsLocationsOperationsResource(_requester);
  ProjectsLocationsRuleSetsResource get ruleSets =>
      ProjectsLocationsRuleSetsResource(_requester);
  ProjectsLocationsSynonymSetsResource get synonymSets =>
      ProjectsLocationsSynonymSetsResource(_requester);

  ProjectsLocationsResource(commons.ApiRequester client) : _requester = client;

  /// Get the project status.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location to be queried Format:
  /// projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1ProjectStatus].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1ProjectStatus> getStatus(
    core.String location, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + ':getStatus';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1ProjectStatus.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Provisions resources for given tenant project.
  ///
  /// Returns a long running operation.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [location] - Required. The location to be initialized Format:
  /// projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> initialize(
    GoogleCloudContentwarehouseV1InitializeProjectRequest request,
    core.String location, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$location') + ':initialize';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Run a predefined pipeline.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The resource name which owns the resources of the
  /// pipeline. Format: projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> runPipeline(
    GoogleCloudContentwarehouseV1RunPipelineRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':runPipeline';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDocumentSchemasResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDocumentSchemasResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a document schema.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent name.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1DocumentSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1DocumentSchema> create(
    GoogleCloudContentwarehouseV1DocumentSchema request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documentSchemas';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1DocumentSchema.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a document schema.
  ///
  /// Returns NOT_FOUND if the document schema does not exist. Returns
  /// BAD_REQUEST if the document schema has documents depending on it.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document schema to delete.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documentSchemas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a document schema.
  ///
  /// Returns NOT_FOUND if the document schema does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document schema to retrieve.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documentSchemas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1DocumentSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1DocumentSchema> get(
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
    return GoogleCloudContentwarehouseV1DocumentSchema.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists document schemas.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of document
  /// schemas. Format: projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of document schemas to return. The service
  /// may return fewer than this value. If unspecified, at most 50 document
  /// schemas will be returned. The maximum value is 1000; values above 1000
  /// will be coerced to 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListDocumentSchemas`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListDocumentSchemas` must match the call
  /// that provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a
  /// [GoogleCloudContentwarehouseV1ListDocumentSchemasResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1ListDocumentSchemasResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documentSchemas';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1ListDocumentSchemasResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a Document Schema.
  ///
  /// Returns INVALID_ARGUMENT if the name of the Document Schema is non-empty
  /// and does not equal the existing name. Supports only appending new
  /// properties, adding new ENUM possible values, and updating the
  /// EnumTypeOptions.validation_check_disabled flag for ENUM possible values.
  /// Updating existing properties will result into INVALID_ARGUMENT.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document schema to update. Format:
  /// projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documentSchemas/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1DocumentSchema].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1DocumentSchema> patch(
    GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1DocumentSchema.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDocumentsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDocumentsDocumentLinksResource get documentLinks =>
      ProjectsLocationsDocumentsDocumentLinksResource(_requester);
  ProjectsLocationsDocumentsReferenceIdResource get referenceId =>
      ProjectsLocationsDocumentsReferenceIdResource(_requester);

  ProjectsLocationsDocumentsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent name. Format:
  /// projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1CreateDocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1CreateDocumentResponse> create(
    GoogleCloudContentwarehouseV1CreateDocumentRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1CreateDocumentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a document.
  ///
  /// Returns NOT_FOUND if the document does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to delete. Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id} or
  /// projects/{project_number}/locations/{location}/documents/referenceId/{reference_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    GoogleCloudContentwarehouseV1DeleteDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':delete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets the access control policy for a resource.
  ///
  /// Returns NOT_FOUND error if the resource does not exist. Returns an empty
  /// policy if the resource exists but does not have a policy set.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. REQUIRED: The resource for which the policy is
  /// being requested. Format for document:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  /// Format for collection:
  /// projects/{project_number}/locations/{location}/collections/{collection_id}.
  /// Format for project: projects/{project_number}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1FetchAclResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1FetchAclResponse> fetchAcl(
    GoogleCloudContentwarehouseV1FetchAclRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':fetchAcl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1FetchAclResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a document.
  ///
  /// Returns NOT_FOUND if the document does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to retrieve. Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id} or
  /// projects/{project_number}/locations/{location}/documents/referenceId/{reference_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1Document> get(
    GoogleCloudContentwarehouseV1GetDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':get';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1Document.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Return all source document-links from the document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the document, for which all source links
  /// are returned. Format:
  /// projects/{project_number}/locations/{location}/documents/{source_document_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1ListLinkedSourcesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1ListLinkedSourcesResponse>
      linkedSources(
    GoogleCloudContentwarehouseV1ListLinkedSourcesRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/linkedSources';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1ListLinkedSourcesResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Return all target document-links from the document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the document, for which all target links
  /// are returned. Format:
  /// projects/{project_number}/locations/{location}/documents/{target_document_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1ListLinkedTargetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1ListLinkedTargetsResponse>
      linkedTargets(
    GoogleCloudContentwarehouseV1ListLinkedTargetsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/linkedTargets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1ListLinkedTargetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lock the document so the document cannot be updated by other users.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to lock. Format:
  /// projects/{project_number}/locations/{location}/documents/{document}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1Document> lock(
    GoogleCloudContentwarehouseV1LockDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':lock';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1Document.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a document.
  ///
  /// Returns INVALID_ARGUMENT if the name of the document is non-empty and does
  /// not equal the existing name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to update. Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id} or
  /// projects/{project_number}/locations/{location}/documents/referenceId/{reference_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1UpdateDocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1UpdateDocumentResponse> patch(
    GoogleCloudContentwarehouseV1UpdateDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1UpdateDocumentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Searches for documents using provided SearchDocumentsRequest.
  ///
  /// This call only returns documents that the caller has permission to search
  /// against.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of documents.
  /// Format: projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1SearchDocumentsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1SearchDocumentsResponse> search(
    GoogleCloudContentwarehouseV1SearchDocumentsRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documents:search';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1SearchDocumentsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Sets the access control policy for a resource.
  ///
  /// Replaces any existing policy.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [resource] - Required. REQUIRED: The resource for which the policy is
  /// being requested. Format for document:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  /// Format for collection:
  /// projects/{project_number}/locations/{location}/collections/{collection_id}.
  /// Format for project: projects/{project_number}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1SetAclResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1SetAclResponse> setAcl(
    GoogleCloudContentwarehouseV1SetAclRequest request,
    core.String resource, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$resource') + ':setAcl';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1SetAclResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDocumentsDocumentLinksResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDocumentsDocumentLinksResource(commons.ApiRequester client)
      : _requester = client;

  /// Create a link between a source document and a target document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. Parent of the document-link to be created. parent of
  /// document-link should be a document. Format:
  /// projects/{project_number}/locations/{location}/documents/{source_document_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1DocumentLink].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1DocumentLink> create(
    GoogleCloudContentwarehouseV1CreateDocumentLinkRequest request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/documentLinks';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1DocumentLink.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Remove the link between the source and target documents.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document-link to be deleted. Format:
  /// projects/{project_number}/locations/{location}/documents/{source_document_id}/documentLinks/{document_link_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/\[^/\]+/documentLinks/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':delete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsDocumentsReferenceIdResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsDocumentsReferenceIdResource(commons.ApiRequester client)
      : _requester = client;

  /// Deletes a document.
  ///
  /// Returns NOT_FOUND if the document does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to delete. Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id} or
  /// projects/{project_number}/locations/{location}/documents/referenceId/{reference_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/referenceId/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
    GoogleCloudContentwarehouseV1DeleteDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':delete';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a document.
  ///
  /// Returns NOT_FOUND if the document does not exist.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to retrieve. Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id} or
  /// projects/{project_number}/locations/{location}/documents/referenceId/{reference_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/referenceId/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1Document> get(
    GoogleCloudContentwarehouseV1GetDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name') + ':get';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1Document.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a document.
  ///
  /// Returns INVALID_ARGUMENT if the name of the document is non-empty and does
  /// not equal the existing name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the document to update. Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id} or
  /// projects/{project_number}/locations/{location}/documents/referenceId/{reference_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/documents/referenceId/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1UpdateDocumentResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1UpdateDocumentResponse> patch(
    GoogleCloudContentwarehouseV1UpdateDocumentRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1UpdateDocumentResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResource(commons.ApiRequester client)
      : _requester = client;

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
  /// Completes with a [GoogleLongrunningOperation].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleLongrunningOperation> get(
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
    return GoogleLongrunningOperation.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsRuleSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsRuleSetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a ruleset.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent name. Format:
  /// projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1RuleSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1RuleSet> create(
    GoogleCloudContentwarehouseV1RuleSet request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/ruleSets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1RuleSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a ruleset.
  ///
  /// Returns NOT_FOUND if the document does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the rule set to delete. Format:
  /// projects/{project_number}/locations/{location}/ruleSets/{rule_set_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/ruleSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a ruleset.
  ///
  /// Returns NOT_FOUND if the ruleset does not exist.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the rule set to retrieve. Format:
  /// projects/{project_number}/locations/{location}/ruleSets/{rule_set_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/ruleSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1RuleSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1RuleSet> get(
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
    return GoogleCloudContentwarehouseV1RuleSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists rulesets.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent, which owns this collection of document.
  /// Format: projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of rule sets to return. The service may
  /// return fewer than this value. If unspecified, at most 50 rule sets will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListRuleSets` call.
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListRuleSets` must match the call that provided
  /// the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1ListRuleSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1ListRuleSetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/ruleSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1ListRuleSetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Updates a ruleset.
  ///
  /// Returns INVALID_ARGUMENT if the name of the ruleset is non-empty and does
  /// not equal the existing name.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the rule set to update. Format:
  /// projects/{project_number}/locations/{location}/ruleSets/{rule_set_id}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/ruleSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1RuleSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1RuleSet> patch(
    GoogleCloudContentwarehouseV1UpdateRuleSetRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1RuleSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsLocationsSynonymSetsResource {
  final commons.ApiRequester _requester;

  ProjectsLocationsSynonymSetsResource(commons.ApiRequester client)
      : _requester = client;

  /// Creates a SynonymSet for a single context.
  ///
  /// Throws an ALREADY_EXISTS exception if a synonymset already exists for the
  /// context.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent name. Format:
  /// projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1SynonymSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1SynonymSet> create(
    GoogleCloudContentwarehouseV1SynonymSet request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/synonymSets';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1SynonymSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a SynonymSet for a given context.
  ///
  /// Throws a NOT_FOUND exception if the SynonymSet is not found.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the synonymSet to delete Format:
  /// projects/{project_number}/locations/{location}/synonymSets/{context}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/synonymSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleProtobufEmpty].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleProtobufEmpty> delete(
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
    return GoogleProtobufEmpty.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a SynonymSet for a particular context.
  ///
  /// Throws a NOT_FOUND exception if the Synonymset does not exist
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the synonymSet to retrieve Format:
  /// projects/{project_number}/locations/{location}/synonymSets/{context}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/synonymSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1SynonymSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1SynonymSet> get(
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
    return GoogleCloudContentwarehouseV1SynonymSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Returns all SynonymSets (for all contexts) for the specified location.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent name. Format:
  /// projects/{project_number}/locations/{location}.
  /// Value must have pattern `^projects/\[^/\]+/locations/\[^/\]+$`.
  ///
  /// [pageSize] - The maximum number of synonymSets to return. The service may
  /// return fewer than this value. If unspecified, at most 50 rule sets will be
  /// returned. The maximum value is 1000; values above 1000 will be coerced to
  /// 1000.
  ///
  /// [pageToken] - A page token, received from a previous `ListSynonymSets`
  /// call. Provide this to retrieve the subsequent page. When paginating, all
  /// other parameters provided to `ListSynonymSets` must match the call that
  /// provided the page token.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1ListSynonymSetsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1ListSynonymSetsResponse> list(
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

    final url_ = 'v1/' + core.Uri.encodeFull('$parent') + '/synonymSets';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1ListSynonymSetsResponse.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }

  /// Remove the existing SynonymSet for the context and replaces it with a new
  /// one.
  ///
  /// Throws a NOT_FOUND exception if the SynonymSet is not found.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the synonymSet to update Format:
  /// projects/{project_number}/locations/{location}/synonymSets/{context}.
  /// Value must have pattern
  /// `^projects/\[^/\]+/locations/\[^/\]+/synonymSets/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudContentwarehouseV1SynonymSet].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudContentwarehouseV1SynonymSet> patch(
    GoogleCloudContentwarehouseV1SynonymSet request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleCloudContentwarehouseV1SynonymSet.fromJson(
        response_ as core.Map<core.String, core.dynamic>);
  }
}

/// Represents the action responsible for access control list management
/// operations.
class GoogleCloudContentwarehouseV1AccessControlAction {
  /// Identifies the type of operation.
  /// Possible string values are:
  /// - "UNKNOWN" : The unknown operation type.
  /// - "ADD_POLICY_BINDING" : Adds newly given policy bindings in the existing
  /// bindings list.
  /// - "REMOVE_POLICY_BINDING" : Removes newly given policy bindings from the
  /// existing bindings list.
  /// - "REPLACE_POLICY_BINDING" : Replaces existing policy bindings with the
  /// given policy binding list
  core.String? operationType;

  /// Represents the new policy from which bindings are added, removed or
  /// replaced based on the type of the operation.
  ///
  /// the policy is limited to a few 10s of KB.
  GoogleIamV1Policy? policy;

  GoogleCloudContentwarehouseV1AccessControlAction({
    this.operationType,
    this.policy,
  });

  GoogleCloudContentwarehouseV1AccessControlAction.fromJson(core.Map json_)
      : this(
          operationType: json_.containsKey('operationType')
              ? json_['operationType'] as core.String
              : null,
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (operationType != null) 'operationType': operationType!,
        if (policy != null) 'policy': policy!,
      };
}

/// Represents the action triggered by Rule Engine when the rule is true.
class GoogleCloudContentwarehouseV1Action {
  /// Action triggering access control operations.
  GoogleCloudContentwarehouseV1AccessControlAction? accessControl;

  /// ID of the action.
  ///
  /// Managed internally.
  core.String? actionId;

  /// Action triggering create document link operation.
  GoogleCloudContentwarehouseV1AddToFolderAction? addToFolder;

  /// Action triggering data update operations.
  GoogleCloudContentwarehouseV1DataUpdateAction? dataUpdate;

  /// Action triggering data validation operations.
  GoogleCloudContentwarehouseV1DataValidationAction? dataValidation;

  /// Action deleting the document.
  GoogleCloudContentwarehouseV1DeleteDocumentAction? deleteDocumentAction;

  /// Action publish to Pub/Sub operation.
  GoogleCloudContentwarehouseV1PublishAction? publishToPubSub;

  /// Action removing a document from a folder.
  GoogleCloudContentwarehouseV1RemoveFromFolderAction? removeFromFolderAction;

  GoogleCloudContentwarehouseV1Action({
    this.accessControl,
    this.actionId,
    this.addToFolder,
    this.dataUpdate,
    this.dataValidation,
    this.deleteDocumentAction,
    this.publishToPubSub,
    this.removeFromFolderAction,
  });

  GoogleCloudContentwarehouseV1Action.fromJson(core.Map json_)
      : this(
          accessControl: json_.containsKey('accessControl')
              ? GoogleCloudContentwarehouseV1AccessControlAction.fromJson(
                  json_['accessControl'] as core.Map<core.String, core.dynamic>)
              : null,
          actionId: json_.containsKey('actionId')
              ? json_['actionId'] as core.String
              : null,
          addToFolder: json_.containsKey('addToFolder')
              ? GoogleCloudContentwarehouseV1AddToFolderAction.fromJson(
                  json_['addToFolder'] as core.Map<core.String, core.dynamic>)
              : null,
          dataUpdate: json_.containsKey('dataUpdate')
              ? GoogleCloudContentwarehouseV1DataUpdateAction.fromJson(
                  json_['dataUpdate'] as core.Map<core.String, core.dynamic>)
              : null,
          dataValidation: json_.containsKey('dataValidation')
              ? GoogleCloudContentwarehouseV1DataValidationAction.fromJson(
                  json_['dataValidation']
                      as core.Map<core.String, core.dynamic>)
              : null,
          deleteDocumentAction: json_.containsKey('deleteDocumentAction')
              ? GoogleCloudContentwarehouseV1DeleteDocumentAction.fromJson(
                  json_['deleteDocumentAction']
                      as core.Map<core.String, core.dynamic>)
              : null,
          publishToPubSub: json_.containsKey('publishToPubSub')
              ? GoogleCloudContentwarehouseV1PublishAction.fromJson(
                  json_['publishToPubSub']
                      as core.Map<core.String, core.dynamic>)
              : null,
          removeFromFolderAction: json_.containsKey('removeFromFolderAction')
              ? GoogleCloudContentwarehouseV1RemoveFromFolderAction.fromJson(
                  json_['removeFromFolderAction']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessControl != null) 'accessControl': accessControl!,
        if (actionId != null) 'actionId': actionId!,
        if (addToFolder != null) 'addToFolder': addToFolder!,
        if (dataUpdate != null) 'dataUpdate': dataUpdate!,
        if (dataValidation != null) 'dataValidation': dataValidation!,
        if (deleteDocumentAction != null)
          'deleteDocumentAction': deleteDocumentAction!,
        if (publishToPubSub != null) 'publishToPubSub': publishToPubSub!,
        if (removeFromFolderAction != null)
          'removeFromFolderAction': removeFromFolderAction!,
      };
}

/// Represents the output of the Action Executor.
class GoogleCloudContentwarehouseV1ActionExecutorOutput {
  /// List of rule and corresponding actions result.
  core.List<GoogleCloudContentwarehouseV1RuleActionsPair>? ruleActionsPairs;

  GoogleCloudContentwarehouseV1ActionExecutorOutput({
    this.ruleActionsPairs,
  });

  GoogleCloudContentwarehouseV1ActionExecutorOutput.fromJson(core.Map json_)
      : this(
          ruleActionsPairs: json_.containsKey('ruleActionsPairs')
              ? (json_['ruleActionsPairs'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1RuleActionsPair.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ruleActionsPairs != null) 'ruleActionsPairs': ruleActionsPairs!,
      };
}

/// Represents the result of executing an action.
class GoogleCloudContentwarehouseV1ActionOutput {
  /// ID of the action.
  core.String? actionId;

  /// State of an action.
  /// Possible string values are:
  /// - "UNKNOWN" : The unknown state.
  /// - "ACTION_SUCCEEDED" : State indicating action executed successfully.
  /// - "ACTION_FAILED" : State indicating action failed.
  /// - "ACTION_TIMED_OUT" : State indicating action timed out.
  /// - "ACTION_PENDING" : State indicating action is pending.
  core.String? actionState;

  /// Action execution output message.
  core.String? outputMessage;

  GoogleCloudContentwarehouseV1ActionOutput({
    this.actionId,
    this.actionState,
    this.outputMessage,
  });

  GoogleCloudContentwarehouseV1ActionOutput.fromJson(core.Map json_)
      : this(
          actionId: json_.containsKey('actionId')
              ? json_['actionId'] as core.String
              : null,
          actionState: json_.containsKey('actionState')
              ? json_['actionState'] as core.String
              : null,
          outputMessage: json_.containsKey('outputMessage')
              ? json_['outputMessage'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionId != null) 'actionId': actionId!,
        if (actionState != null) 'actionState': actionState!,
        if (outputMessage != null) 'outputMessage': outputMessage!,
      };
}

/// Represents the action responsible for adding document under a folder.
class GoogleCloudContentwarehouseV1AddToFolderAction {
  /// Names of the folder under which new document is to be added.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  core.List<core.String>? folders;

  GoogleCloudContentwarehouseV1AddToFolderAction({
    this.folders,
  });

  GoogleCloudContentwarehouseV1AddToFolderAction.fromJson(core.Map json_)
      : this(
          folders: json_.containsKey('folders')
              ? (json_['folders'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (folders != null) 'folders': folders!,
      };
}

/// Request Option for processing Cloud AI Document in CW Document.
class GoogleCloudContentwarehouseV1CloudAIDocumentOption {
  /// If set, only selected entities will be converted to properties.
  core.Map<core.String, core.String>? customizedEntitiesPropertiesConversions;

  /// Whether to convert all the entities to properties.
  core.bool? enableEntitiesConversions;

  GoogleCloudContentwarehouseV1CloudAIDocumentOption({
    this.customizedEntitiesPropertiesConversions,
    this.enableEntitiesConversions,
  });

  GoogleCloudContentwarehouseV1CloudAIDocumentOption.fromJson(core.Map json_)
      : this(
          customizedEntitiesPropertiesConversions:
              json_.containsKey('customizedEntitiesPropertiesConversions')
                  ? (json_['customizedEntitiesPropertiesConversions']
                          as core.Map<core.String, core.dynamic>)
                      .map(
                      (key, value) => core.MapEntry(
                        key,
                        value as core.String,
                      ),
                    )
                  : null,
          enableEntitiesConversions:
              json_.containsKey('enableEntitiesConversions')
                  ? json_['enableEntitiesConversions'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customizedEntitiesPropertiesConversions != null)
          'customizedEntitiesPropertiesConversions':
              customizedEntitiesPropertiesConversions!,
        if (enableEntitiesConversions != null)
          'enableEntitiesConversions': enableEntitiesConversions!,
      };
}

/// Request message for DocumentLinkService.CreateDocumentLink.
class GoogleCloudContentwarehouseV1CreateDocumentLinkRequest {
  /// Document links associated with the source documents (source_document_id).
  ///
  /// Required.
  GoogleCloudContentwarehouseV1DocumentLink? documentLink;

  /// The meta information collected about the document creator, used to enforce
  /// access control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1CreateDocumentLinkRequest({
    this.documentLink,
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1CreateDocumentLinkRequest.fromJson(
      core.Map json_)
      : this(
          documentLink: json_.containsKey('documentLink')
              ? GoogleCloudContentwarehouseV1DocumentLink.fromJson(
                  json_['documentLink'] as core.Map<core.String, core.dynamic>)
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentLink != null) 'documentLink': documentLink!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Request message for DocumentService.CreateDocument.
class GoogleCloudContentwarehouseV1CreateDocumentRequest {
  /// Request Option for processing Cloud AI Document in Document Warehouse.
  ///
  /// This field offers limited support for mapping entities from Cloud AI
  /// Document to Warehouse Document. Please consult with product team before
  /// using this field and other available options.
  GoogleCloudContentwarehouseV1CloudAIDocumentOption? cloudAiDocumentOption;

  /// Field mask for creating Document fields.
  ///
  /// If mask path is empty, it means all fields are masked. For the `FieldMask`
  /// definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.
  core.String? createMask;

  /// The document to create.
  ///
  /// Required.
  GoogleCloudContentwarehouseV1Document? document;

  /// Default document policy during creation.
  ///
  /// This refers to an Identity and Access (IAM) policy, which specifies access
  /// controls for the Document. Conditions defined in the policy will be
  /// ignored.
  GoogleIamV1Policy? policy;

  /// The meta information collected about the end user, used to enforce access
  /// control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1CreateDocumentRequest({
    this.cloudAiDocumentOption,
    this.createMask,
    this.document,
    this.policy,
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1CreateDocumentRequest.fromJson(core.Map json_)
      : this(
          cloudAiDocumentOption: json_.containsKey('cloudAiDocumentOption')
              ? GoogleCloudContentwarehouseV1CloudAIDocumentOption.fromJson(
                  json_['cloudAiDocumentOption']
                      as core.Map<core.String, core.dynamic>)
              : null,
          createMask: json_.containsKey('createMask')
              ? json_['createMask'] as core.String
              : null,
          document: json_.containsKey('document')
              ? GoogleCloudContentwarehouseV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudAiDocumentOption != null)
          'cloudAiDocumentOption': cloudAiDocumentOption!,
        if (createMask != null) 'createMask': createMask!,
        if (document != null) 'document': document!,
        if (policy != null) 'policy': policy!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Response message for DocumentService.CreateDocument.
class GoogleCloudContentwarehouseV1CreateDocumentResponse {
  /// Document created after executing create request.
  GoogleCloudContentwarehouseV1Document? document;

  /// post-processing LROs
  core.List<GoogleLongrunningOperation>? longRunningOperations;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  GoogleCloudContentwarehouseV1ResponseMetadata? metadata;

  /// Output from Rule Engine recording the rule evaluator and action executor's
  /// output.
  ///
  /// Refer format in: google/cloud/contentwarehouse/v1/rule_engine.proto
  GoogleCloudContentwarehouseV1RuleEngineOutput? ruleEngineOutput;

  GoogleCloudContentwarehouseV1CreateDocumentResponse({
    this.document,
    this.longRunningOperations,
    this.metadata,
    this.ruleEngineOutput,
  });

  GoogleCloudContentwarehouseV1CreateDocumentResponse.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? GoogleCloudContentwarehouseV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          longRunningOperations: json_.containsKey('longRunningOperations')
              ? (json_['longRunningOperations'] as core.List)
                  .map((value) => GoogleLongrunningOperation.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? GoogleCloudContentwarehouseV1ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          ruleEngineOutput: json_.containsKey('ruleEngineOutput')
              ? GoogleCloudContentwarehouseV1RuleEngineOutput.fromJson(
                  json_['ruleEngineOutput']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (longRunningOperations != null)
          'longRunningOperations': longRunningOperations!,
        if (metadata != null) 'metadata': metadata!,
        if (ruleEngineOutput != null) 'ruleEngineOutput': ruleEngineOutput!,
      };
}

/// To support the custom weighting across document schemas.
class GoogleCloudContentwarehouseV1CustomWeightsMetadata {
  /// List of schema and property name.
  ///
  /// Allows a maximum of 10 schemas to be specified for relevance boosting.
  core.List<GoogleCloudContentwarehouseV1WeightedSchemaProperty>?
      weightedSchemaProperties;

  GoogleCloudContentwarehouseV1CustomWeightsMetadata({
    this.weightedSchemaProperties,
  });

  GoogleCloudContentwarehouseV1CustomWeightsMetadata.fromJson(core.Map json_)
      : this(
          weightedSchemaProperties: json_
                  .containsKey('weightedSchemaProperties')
              ? (json_['weightedSchemaProperties'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1WeightedSchemaProperty
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (weightedSchemaProperties != null)
          'weightedSchemaProperties': weightedSchemaProperties!,
      };
}

/// Represents the action responsible for properties update operations.
class GoogleCloudContentwarehouseV1DataUpdateAction {
  /// Map of (K, V) -\> (valid name of the field, new value of the field) E.g.,
  /// ("age", "60") entry triggers update of field age with a value of 60.
  ///
  /// If the field is not present then new entry is added. During update action
  /// execution, value strings will be casted to appropriate types.
  core.Map<core.String, core.String>? entries;

  GoogleCloudContentwarehouseV1DataUpdateAction({
    this.entries,
  });

  GoogleCloudContentwarehouseV1DataUpdateAction.fromJson(core.Map json_)
      : this(
          entries: json_.containsKey('entries')
              ? (json_['entries'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (entries != null) 'entries': entries!,
      };
}

/// Represents the action responsible for data validation operations.
class GoogleCloudContentwarehouseV1DataValidationAction {
  /// Map of (K, V) -\> (field, string condition to be evaluated on the field)
  /// E.g., ("age", "age \> 18 && age \< 60") entry triggers validation of field
  /// age with the given condition.
  ///
  /// Map entries will be ANDed during validation.
  core.Map<core.String, core.String>? conditions;

  GoogleCloudContentwarehouseV1DataValidationAction({
    this.conditions,
  });

  GoogleCloudContentwarehouseV1DataValidationAction.fromJson(core.Map json_)
      : this(
          conditions: json_.containsKey('conditions')
              ? (json_['conditions'] as core.Map<core.String, core.dynamic>)
                  .map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (conditions != null) 'conditions': conditions!,
      };
}

/// DateTime values.
class GoogleCloudContentwarehouseV1DateTimeArray {
  /// List of datetime values.
  ///
  /// Both OffsetDateTime and ZonedDateTime are supported.
  core.List<GoogleTypeDateTime>? values;

  GoogleCloudContentwarehouseV1DateTimeArray({
    this.values,
  });

  GoogleCloudContentwarehouseV1DateTimeArray.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => GoogleTypeDateTime.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Configurations for a date time property.
typedef GoogleCloudContentwarehouseV1DateTimeTypeOptions = $Empty;

/// Represents the action responsible for deleting the document.
class GoogleCloudContentwarehouseV1DeleteDocumentAction {
  /// Boolean field to select between hard vs soft delete options.
  ///
  /// Set 'true' for 'hard delete' and 'false' for 'soft delete'.
  core.bool? enableHardDelete;

  GoogleCloudContentwarehouseV1DeleteDocumentAction({
    this.enableHardDelete,
  });

  GoogleCloudContentwarehouseV1DeleteDocumentAction.fromJson(core.Map json_)
      : this(
          enableHardDelete: json_.containsKey('enableHardDelete')
              ? json_['enableHardDelete'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (enableHardDelete != null) 'enableHardDelete': enableHardDelete!,
      };
}

/// Request message for DocumentLinkService.DeleteDocumentLink.
class GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest {
  /// The meta information collected about the document creator, used to enforce
  /// access control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest({
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1DeleteDocumentLinkRequest.fromJson(
      core.Map json_)
      : this(
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Request message for DocumentService.DeleteDocument.
class GoogleCloudContentwarehouseV1DeleteDocumentRequest {
  /// The meta information collected about the end user, used to enforce access
  /// control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1DeleteDocumentRequest({
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1DeleteDocumentRequest.fromJson(core.Map json_)
      : this(
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Defines the structure for content warehouse document proto.
class GoogleCloudContentwarehouseV1Document {
  /// Document AI format to save the structured content, including OCR.
  GoogleCloudDocumentaiV1Document? cloudAiDocument;

  /// Indicates the category (image, audio, video etc.) of the original content.
  /// Possible string values are:
  /// - "CONTENT_CATEGORY_UNSPECIFIED" : No category is specified.
  /// - "CONTENT_CATEGORY_IMAGE" : Content is of image type.
  /// - "CONTENT_CATEGORY_AUDIO" : Content is of audio type.
  /// - "CONTENT_CATEGORY_VIDEO" : Content is of video type.
  core.String? contentCategory;

  /// The time when the document is created.
  ///
  /// Output only.
  core.String? createTime;

  /// The user who creates the document.
  core.String? creator;

  /// Display name of the document given by the user.
  ///
  /// This name will be displayed in the UI. Customer can populate this field
  /// with the name of the document. This differs from the 'title' field as
  /// 'title' is optional and stores the top heading in the document.
  ///
  /// Required.
  core.String? displayName;

  /// Uri to display the document, for example, in the UI.
  core.String? displayUri;

  /// If linked to a Collection with RetentionPolicy, the date when the document
  /// becomes mutable.
  ///
  /// Output only.
  core.String? dispositionTime;

  /// The Document schema name.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  core.String? documentSchemaName;

  /// Raw document content.
  core.String? inlineRawDocument;
  core.List<core.int> get inlineRawDocumentAsBytes =>
      convert.base64.decode(inlineRawDocument!);

  set inlineRawDocumentAsBytes(core.List<core.int> bytes_) {
    inlineRawDocument =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Indicates if the document has a legal hold on it.
  ///
  /// Output only.
  core.bool? legalHold;

  /// The resource name of the document.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  /// The name is ignored when creating a document.
  core.String? name;

  /// Other document format, such as PPTX, XLXS
  core.String? plainText;

  /// List of values that are user supplied metadata.
  core.List<GoogleCloudContentwarehouseV1Property>? properties;

  /// This is used when DocAI was not used to load the document and parsing/
  /// extracting is needed for the inline_raw_document.
  ///
  /// For example, if inline_raw_document is the byte representation of a PDF
  /// file, then this should be set to: RAW_DOCUMENT_FILE_TYPE_PDF.
  /// Possible string values are:
  /// - "RAW_DOCUMENT_FILE_TYPE_UNSPECIFIED" : No raw document specified or it
  /// is non-parsable
  /// - "RAW_DOCUMENT_FILE_TYPE_PDF" : Adobe PDF format
  /// - "RAW_DOCUMENT_FILE_TYPE_DOCX" : Microsoft Word format
  /// - "RAW_DOCUMENT_FILE_TYPE_XLSX" : Microsoft Excel format
  /// - "RAW_DOCUMENT_FILE_TYPE_PPTX" : Microsoft Powerpoint format
  /// - "RAW_DOCUMENT_FILE_TYPE_TEXT" : UTF-8 encoded text format
  /// - "RAW_DOCUMENT_FILE_TYPE_TIFF" : TIFF or TIF image file format
  core.String? rawDocumentFileType;

  /// Raw document file in Cloud Storage path.
  core.String? rawDocumentPath;

  /// The reference ID set by customers.
  ///
  /// Must be unique per project and location.
  core.String? referenceId;

  /// If true, text extraction will not be performed.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.bool? textExtractionDisabled;

  /// If true, text extraction will be performed.
  core.bool? textExtractionEnabled;

  /// Title that describes the document.
  ///
  /// This can be the top heading or text that describes the document.
  core.String? title;

  /// The time when the document is last updated.
  ///
  /// Output only.
  core.String? updateTime;

  /// The user who lastly updates the document.
  core.String? updater;

  GoogleCloudContentwarehouseV1Document({
    this.cloudAiDocument,
    this.contentCategory,
    this.createTime,
    this.creator,
    this.displayName,
    this.displayUri,
    this.dispositionTime,
    this.documentSchemaName,
    this.inlineRawDocument,
    this.legalHold,
    this.name,
    this.plainText,
    this.properties,
    this.rawDocumentFileType,
    this.rawDocumentPath,
    this.referenceId,
    this.textExtractionDisabled,
    this.textExtractionEnabled,
    this.title,
    this.updateTime,
    this.updater,
  });

  GoogleCloudContentwarehouseV1Document.fromJson(core.Map json_)
      : this(
          cloudAiDocument: json_.containsKey('cloudAiDocument')
              ? GoogleCloudDocumentaiV1Document.fromJson(
                  json_['cloudAiDocument']
                      as core.Map<core.String, core.dynamic>)
              : null,
          contentCategory: json_.containsKey('contentCategory')
              ? json_['contentCategory'] as core.String
              : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          creator: json_.containsKey('creator')
              ? json_['creator'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          displayUri: json_.containsKey('displayUri')
              ? json_['displayUri'] as core.String
              : null,
          dispositionTime: json_.containsKey('dispositionTime')
              ? json_['dispositionTime'] as core.String
              : null,
          documentSchemaName: json_.containsKey('documentSchemaName')
              ? json_['documentSchemaName'] as core.String
              : null,
          inlineRawDocument: json_.containsKey('inlineRawDocument')
              ? json_['inlineRawDocument'] as core.String
              : null,
          legalHold: json_.containsKey('legalHold')
              ? json_['legalHold'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          plainText: json_.containsKey('plainText')
              ? json_['plainText'] as core.String
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1Property.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rawDocumentFileType: json_.containsKey('rawDocumentFileType')
              ? json_['rawDocumentFileType'] as core.String
              : null,
          rawDocumentPath: json_.containsKey('rawDocumentPath')
              ? json_['rawDocumentPath'] as core.String
              : null,
          referenceId: json_.containsKey('referenceId')
              ? json_['referenceId'] as core.String
              : null,
          textExtractionDisabled: json_.containsKey('textExtractionDisabled')
              ? json_['textExtractionDisabled'] as core.bool
              : null,
          textExtractionEnabled: json_.containsKey('textExtractionEnabled')
              ? json_['textExtractionEnabled'] as core.bool
              : null,
          title:
              json_.containsKey('title') ? json_['title'] as core.String : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
          updater: json_.containsKey('updater')
              ? json_['updater'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudAiDocument != null) 'cloudAiDocument': cloudAiDocument!,
        if (contentCategory != null) 'contentCategory': contentCategory!,
        if (createTime != null) 'createTime': createTime!,
        if (creator != null) 'creator': creator!,
        if (displayName != null) 'displayName': displayName!,
        if (displayUri != null) 'displayUri': displayUri!,
        if (dispositionTime != null) 'dispositionTime': dispositionTime!,
        if (documentSchemaName != null)
          'documentSchemaName': documentSchemaName!,
        if (inlineRawDocument != null) 'inlineRawDocument': inlineRawDocument!,
        if (legalHold != null) 'legalHold': legalHold!,
        if (name != null) 'name': name!,
        if (plainText != null) 'plainText': plainText!,
        if (properties != null) 'properties': properties!,
        if (rawDocumentFileType != null)
          'rawDocumentFileType': rawDocumentFileType!,
        if (rawDocumentPath != null) 'rawDocumentPath': rawDocumentPath!,
        if (referenceId != null) 'referenceId': referenceId!,
        if (textExtractionDisabled != null)
          'textExtractionDisabled': textExtractionDisabled!,
        if (textExtractionEnabled != null)
          'textExtractionEnabled': textExtractionEnabled!,
        if (title != null) 'title': title!,
        if (updateTime != null) 'updateTime': updateTime!,
        if (updater != null) 'updater': updater!,
      };
}

/// A document-link between source and target document.
class GoogleCloudContentwarehouseV1DocumentLink {
  /// The time when the documentLink is created.
  ///
  /// Output only.
  core.String? createTime;

  /// Description of this document-link.
  core.String? description;

  /// Name of this document-link.
  ///
  /// It is required that the parent derived form the name to be consistent with
  /// the source document reference. Otherwise an exception will be thrown.
  /// Format:
  /// projects/{project_number}/locations/{location}/documents/{source_document_id}/documentLinks/{document_link_id}.
  core.String? name;

  /// Document references of the source document.
  GoogleCloudContentwarehouseV1DocumentReference? sourceDocumentReference;

  /// The state of the documentlink.
  ///
  /// If target node has been deleted, the link is marked as invalid. Removing a
  /// source node will result in removal of all associated links.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unknown state of documentlink.
  /// - "ACTIVE" : The documentlink has both source and target documents
  /// detected.
  /// - "SOFT_DELETED" : Target document is deleted, and mark the documentlink
  /// as soft-deleted.
  core.String? state;

  /// Document references of the target document.
  GoogleCloudContentwarehouseV1DocumentReference? targetDocumentReference;

  /// The time when the documentLink is last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContentwarehouseV1DocumentLink({
    this.createTime,
    this.description,
    this.name,
    this.sourceDocumentReference,
    this.state,
    this.targetDocumentReference,
    this.updateTime,
  });

  GoogleCloudContentwarehouseV1DocumentLink.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          sourceDocumentReference: json_.containsKey('sourceDocumentReference')
              ? GoogleCloudContentwarehouseV1DocumentReference.fromJson(
                  json_['sourceDocumentReference']
                      as core.Map<core.String, core.dynamic>)
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
          targetDocumentReference: json_.containsKey('targetDocumentReference')
              ? GoogleCloudContentwarehouseV1DocumentReference.fromJson(
                  json_['targetDocumentReference']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (sourceDocumentReference != null)
          'sourceDocumentReference': sourceDocumentReference!,
        if (state != null) 'state': state!,
        if (targetDocumentReference != null)
          'targetDocumentReference': targetDocumentReference!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

class GoogleCloudContentwarehouseV1DocumentQuery {
  /// This filter specifies a structured syntax to match against the
  /// \[PropertyDefinition\].is_filterable marked as `true`.
  ///
  /// The syntax for this expression is a subset of SQL syntax. Supported
  /// operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the left of the
  /// operator is a property name and the right of the operator is a number or a
  /// quoted string. You must escape backslash (\\) and quote (\") characters.
  /// Supported functions are `LOWER([property_name])` to perform a case
  /// insensitive match and `EMPTY([property_name])` to filter on the existence
  /// of a key. Boolean expressions (AND/OR/NOT) are supported up to 3 levels of
  /// nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a maximum of
  /// 100 comparisons or functions are allowed in the expression. The expression
  /// must be \< 6000 bytes in length. Sample Query:
  /// `(LOWER(driving_license)="class \"a\"" OR EMPTY(driving_license)) AND
  /// driving_years > 10`
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? customPropertyFilter;

  /// To support the custom weighting across document schemas, customers need to
  /// provide the properties to be used to boost the ranking in the search
  /// request.
  ///
  /// For a search query with CustomWeightsMetadata specified, only the
  /// RetrievalImportance for the properties in the CustomWeightsMetadata will
  /// be honored.
  GoogleCloudContentwarehouseV1CustomWeightsMetadata? customWeightsMetadata;

  /// The exact creator(s) of the documents to search against.
  ///
  /// If a value isn't specified, documents within the search results are
  /// associated with any creator. If multiple values are specified, documents
  /// within the search results may be associated with any of the specified
  /// creators.
  core.List<core.String>? documentCreatorFilter;

  /// Search the documents in the list.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  core.List<core.String>? documentNameFilter;

  /// This filter specifies the exact document schema
  /// Document.document_schema_name of the documents to search against.
  ///
  /// If a value isn't specified, documents within the search results are
  /// associated with any schema. If multiple values are specified, documents
  /// within the search results may be associated with any of the specified
  /// schemas. At most 20 document schema names are allowed.
  core.List<core.String>? documentSchemaNames;

  /// This filter specifies the types of files to return: ALL, FOLDER, or FILE.
  ///
  /// If FOLDER or FILE is specified, then only either folders or files will be
  /// returned, respectively. If ALL is specified, both folders and files will
  /// be returned. If no value is specified, ALL files will be returned.
  GoogleCloudContentwarehouseV1FileTypeFilter? fileTypeFilter;

  /// Search all the documents under this specified folder.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  core.String? folderNameFilter;

  /// Experimental, do not use.
  ///
  /// If the query is a natural language question. False by default. If true,
  /// then the question-answering feature will be used instead of search, and
  /// `result_count` in SearchDocumentsRequest must be set. In addition, all
  /// other input fields related to search (pagination, histograms, etc.) will
  /// be ignored.
  core.bool? isNlQuery;

  /// This filter specifies a structured syntax to match against the
  /// PropertyDefinition.is_filterable marked as `true`.
  ///
  /// The relationship between the PropertyFilters is OR.
  core.List<GoogleCloudContentwarehouseV1PropertyFilter>? propertyFilter;

  /// The query string that matches against the full text of the document and
  /// the searchable properties.
  ///
  /// The query partially supports
  /// [Google AIP style syntax](https://google.aip.dev/160). Specifically, the
  /// query supports literals, logical operators, negation operators, comparison
  /// operators, and functions. Literals: A bare literal value (examples: "42",
  /// "Hugo") is a value to be matched against. It searches over the full text
  /// of the document and the searchable properties. Logical operators: "AND",
  /// "and", "OR", and "or" are binary logical operators (example: "engineer OR
  /// developer"). Negation operators: "NOT" and "!" are negation operators
  /// (example: "NOT software"). Comparison operators: support the binary
  /// comparison operators =, !=, \<, \>, \<= and \>= for string, numeric, enum,
  /// boolean. Also support like operator `~~` for string. It provides semantic
  /// search functionality by parsing, stemming and doing synonyms expansion
  /// against the input query. To specify a property in the query, the left hand
  /// side expression in the comparison must be the property ID including the
  /// parent. The right hand side must be literals. For example:
  /// "\"projects/123/locations/us\".property_a \< 1" matches results whose
  /// "property_a" is less than 1 in project 123 and us location. The literals
  /// and comparison expression can be connected in a single query (example:
  /// "software engineer \"projects/123/locations/us\".salary \> 100").
  /// Functions: supported functions are `LOWER([property_name])` to perform a
  /// case insensitive match and `EMPTY([property_name])` to filter on the
  /// existence of a key. Support nested expressions connected using parenthesis
  /// and logical operators. The default logical operators is `AND` if there is
  /// no operators between expressions. The query can be used with other filters
  /// e.g. `time_filters` and `folder_name_filter`. They are connected with
  /// `AND` operator under the hood. The maximum number of allowed characters is
  /// 255.
  core.String? query;

  /// For custom synonyms.
  ///
  /// Customers provide the synonyms based on context. One customer can provide
  /// multiple set of synonyms based on different context. The search query will
  /// be expanded based on the custom synonyms of the query context set. By
  /// default, no custom synonyms wll be applied if no query context is
  /// provided. It is not supported for CMEK compliant deployment.
  core.List<core.String>? queryContext;

  /// Documents created/updated within a range specified by this filter are
  /// searched against.
  core.List<GoogleCloudContentwarehouseV1TimeFilter>? timeFilters;

  GoogleCloudContentwarehouseV1DocumentQuery({
    this.customPropertyFilter,
    this.customWeightsMetadata,
    this.documentCreatorFilter,
    this.documentNameFilter,
    this.documentSchemaNames,
    this.fileTypeFilter,
    this.folderNameFilter,
    this.isNlQuery,
    this.propertyFilter,
    this.query,
    this.queryContext,
    this.timeFilters,
  });

  GoogleCloudContentwarehouseV1DocumentQuery.fromJson(core.Map json_)
      : this(
          customPropertyFilter: json_.containsKey('customPropertyFilter')
              ? json_['customPropertyFilter'] as core.String
              : null,
          customWeightsMetadata: json_.containsKey('customWeightsMetadata')
              ? GoogleCloudContentwarehouseV1CustomWeightsMetadata.fromJson(
                  json_['customWeightsMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          documentCreatorFilter: json_.containsKey('documentCreatorFilter')
              ? (json_['documentCreatorFilter'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          documentNameFilter: json_.containsKey('documentNameFilter')
              ? (json_['documentNameFilter'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          documentSchemaNames: json_.containsKey('documentSchemaNames')
              ? (json_['documentSchemaNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          fileTypeFilter: json_.containsKey('fileTypeFilter')
              ? GoogleCloudContentwarehouseV1FileTypeFilter.fromJson(
                  json_['fileTypeFilter']
                      as core.Map<core.String, core.dynamic>)
              : null,
          folderNameFilter: json_.containsKey('folderNameFilter')
              ? json_['folderNameFilter'] as core.String
              : null,
          isNlQuery: json_.containsKey('isNlQuery')
              ? json_['isNlQuery'] as core.bool
              : null,
          propertyFilter: json_.containsKey('propertyFilter')
              ? (json_['propertyFilter'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1PropertyFilter.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          query:
              json_.containsKey('query') ? json_['query'] as core.String : null,
          queryContext: json_.containsKey('queryContext')
              ? (json_['queryContext'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          timeFilters: json_.containsKey('timeFilters')
              ? (json_['timeFilters'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1TimeFilter.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (customPropertyFilter != null)
          'customPropertyFilter': customPropertyFilter!,
        if (customWeightsMetadata != null)
          'customWeightsMetadata': customWeightsMetadata!,
        if (documentCreatorFilter != null)
          'documentCreatorFilter': documentCreatorFilter!,
        if (documentNameFilter != null)
          'documentNameFilter': documentNameFilter!,
        if (documentSchemaNames != null)
          'documentSchemaNames': documentSchemaNames!,
        if (fileTypeFilter != null) 'fileTypeFilter': fileTypeFilter!,
        if (folderNameFilter != null) 'folderNameFilter': folderNameFilter!,
        if (isNlQuery != null) 'isNlQuery': isNlQuery!,
        if (propertyFilter != null) 'propertyFilter': propertyFilter!,
        if (query != null) 'query': query!,
        if (queryContext != null) 'queryContext': queryContext!,
        if (timeFilters != null) 'timeFilters': timeFilters!,
      };
}

/// References to the documents.
class GoogleCloudContentwarehouseV1DocumentReference {
  /// The time when the document is created.
  ///
  /// Output only.
  core.String? createTime;

  /// The time when the document is deleted.
  ///
  /// Output only.
  core.String? deleteTime;

  /// display_name of the referenced document; this name does not need to be
  /// consistent to the display_name in the Document proto, depending on the ACL
  /// constraint.
  core.String? displayName;

  /// The document type of the document being referenced.
  core.bool? documentIsFolder;

  /// Document is a folder with legal hold.
  core.bool? documentIsLegalHoldFolder;

  /// Document is a folder with retention policy.
  core.bool? documentIsRetentionFolder;

  /// Name of the referenced document.
  ///
  /// Required.
  core.String? documentName;

  /// Stores the subset of the referenced document's content.
  ///
  /// This is useful to allow user peek the information of the referenced
  /// document.
  core.String? snippet;

  /// The time when the document is last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContentwarehouseV1DocumentReference({
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.documentIsFolder,
    this.documentIsLegalHoldFolder,
    this.documentIsRetentionFolder,
    this.documentName,
    this.snippet,
    this.updateTime,
  });

  GoogleCloudContentwarehouseV1DocumentReference.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          deleteTime: json_.containsKey('deleteTime')
              ? json_['deleteTime'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          documentIsFolder: json_.containsKey('documentIsFolder')
              ? json_['documentIsFolder'] as core.bool
              : null,
          documentIsLegalHoldFolder:
              json_.containsKey('documentIsLegalHoldFolder')
                  ? json_['documentIsLegalHoldFolder'] as core.bool
                  : null,
          documentIsRetentionFolder:
              json_.containsKey('documentIsRetentionFolder')
                  ? json_['documentIsRetentionFolder'] as core.bool
                  : null,
          documentName: json_.containsKey('documentName')
              ? json_['documentName'] as core.String
              : null,
          snippet: json_.containsKey('snippet')
              ? json_['snippet'] as core.String
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (deleteTime != null) 'deleteTime': deleteTime!,
        if (displayName != null) 'displayName': displayName!,
        if (documentIsFolder != null) 'documentIsFolder': documentIsFolder!,
        if (documentIsLegalHoldFolder != null)
          'documentIsLegalHoldFolder': documentIsLegalHoldFolder!,
        if (documentIsRetentionFolder != null)
          'documentIsRetentionFolder': documentIsRetentionFolder!,
        if (documentName != null) 'documentName': documentName!,
        if (snippet != null) 'snippet': snippet!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// A document schema used to define document structure.
class GoogleCloudContentwarehouseV1DocumentSchema {
  /// The time when the document schema is created.
  ///
  /// Output only.
  core.String? createTime;

  /// Schema description.
  core.String? description;

  /// Name of the schema given by the user.
  ///
  /// Must be unique per project.
  ///
  /// Required.
  core.String? displayName;

  /// Document Type, true refers the document is a folder, otherwise it is a
  /// typical document.
  core.bool? documentIsFolder;

  /// The resource name of the document schema.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  /// The name is ignored when creating a document schema.
  core.String? name;

  /// Document details.
  core.List<GoogleCloudContentwarehouseV1PropertyDefinition>?
      propertyDefinitions;

  /// The time when the document schema is last updated.
  ///
  /// Output only.
  core.String? updateTime;

  GoogleCloudContentwarehouseV1DocumentSchema({
    this.createTime,
    this.description,
    this.displayName,
    this.documentIsFolder,
    this.name,
    this.propertyDefinitions,
    this.updateTime,
  });

  GoogleCloudContentwarehouseV1DocumentSchema.fromJson(core.Map json_)
      : this(
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          documentIsFolder: json_.containsKey('documentIsFolder')
              ? json_['documentIsFolder'] as core.bool
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          propertyDefinitions: json_.containsKey('propertyDefinitions')
              ? (json_['propertyDefinitions'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1PropertyDefinition.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          updateTime: json_.containsKey('updateTime')
              ? json_['updateTime'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (createTime != null) 'createTime': createTime!,
        if (description != null) 'description': description!,
        if (displayName != null) 'displayName': displayName!,
        if (documentIsFolder != null) 'documentIsFolder': documentIsFolder!,
        if (name != null) 'name': name!,
        if (propertyDefinitions != null)
          'propertyDefinitions': propertyDefinitions!,
        if (updateTime != null) 'updateTime': updateTime!,
      };
}

/// Enum values.
class GoogleCloudContentwarehouseV1EnumArray {
  /// List of enum values.
  core.List<core.String>? values;

  GoogleCloudContentwarehouseV1EnumArray({
    this.values,
  });

  GoogleCloudContentwarehouseV1EnumArray.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Configurations for an enum/categorical property.
class GoogleCloudContentwarehouseV1EnumTypeOptions {
  /// List of possible enum values.
  ///
  /// Required.
  core.List<core.String>? possibleValues;

  /// Make sure the Enum property value provided in the document is in the
  /// possile value list during document creation.
  ///
  /// The validation check runs by default.
  core.bool? validationCheckDisabled;

  GoogleCloudContentwarehouseV1EnumTypeOptions({
    this.possibleValues,
    this.validationCheckDisabled,
  });

  GoogleCloudContentwarehouseV1EnumTypeOptions.fromJson(core.Map json_)
      : this(
          possibleValues: json_.containsKey('possibleValues')
              ? (json_['possibleValues'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          validationCheckDisabled: json_.containsKey('validationCheckDisabled')
              ? json_['validationCheckDisabled'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (possibleValues != null) 'possibleValues': possibleValues!,
        if (validationCheckDisabled != null)
          'validationCheckDisabled': validationCheckDisabled!,
      };
}

/// Represents the string value of the enum field.
class GoogleCloudContentwarehouseV1EnumValue {
  /// String value of the enum field.
  ///
  /// This must match defined set of enums in document schema using
  /// EnumTypeOptions.
  core.String? value;

  GoogleCloudContentwarehouseV1EnumValue({
    this.value,
  });

  GoogleCloudContentwarehouseV1EnumValue.fromJson(core.Map json_)
      : this(
          value:
              json_.containsKey('value') ? json_['value'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (value != null) 'value': value!,
      };
}

/// The configuration of exporting documents from the Document Warehouse to CDW
/// pipeline.
class GoogleCloudContentwarehouseV1ExportToCdwPipeline {
  /// The CDW dataset resource name.
  ///
  /// This field is optional. If not set, the documents will be exported to
  /// Cloud Storage only. Format:
  /// projects/{project}/locations/{location}/processors/{processor}/dataset
  ///
  /// Optional.
  core.String? docAiDataset;

  /// The list of all the resource names of the documents to be processed.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  core.List<core.String>? documents;

  /// The Cloud Storage folder path used to store the exported documents before
  /// being sent to CDW.
  ///
  /// Format: `gs:///`.
  core.String? exportFolderPath;

  /// Ratio of training dataset split.
  ///
  /// When importing into Document AI Workbench, documents will be automatically
  /// split into training and test split category with the specified ratio. This
  /// field is required if doc_ai_dataset is set.
  core.double? trainingSplitRatio;

  GoogleCloudContentwarehouseV1ExportToCdwPipeline({
    this.docAiDataset,
    this.documents,
    this.exportFolderPath,
    this.trainingSplitRatio,
  });

  GoogleCloudContentwarehouseV1ExportToCdwPipeline.fromJson(core.Map json_)
      : this(
          docAiDataset: json_.containsKey('docAiDataset')
              ? json_['docAiDataset'] as core.String
              : null,
          documents: json_.containsKey('documents')
              ? (json_['documents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exportFolderPath: json_.containsKey('exportFolderPath')
              ? json_['exportFolderPath'] as core.String
              : null,
          trainingSplitRatio: json_.containsKey('trainingSplitRatio')
              ? (json_['trainingSplitRatio'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (docAiDataset != null) 'docAiDataset': docAiDataset!,
        if (documents != null) 'documents': documents!,
        if (exportFolderPath != null) 'exportFolderPath': exportFolderPath!,
        if (trainingSplitRatio != null)
          'trainingSplitRatio': trainingSplitRatio!,
      };
}

/// Request message for DocumentService.FetchAcl
class GoogleCloudContentwarehouseV1FetchAclRequest {
  /// For Get Project ACL only.
  ///
  /// Authorization check for end user will be ignored when project_owner=true.
  core.bool? projectOwner;

  /// The meta information collected about the end user, used to enforce access
  /// control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1FetchAclRequest({
    this.projectOwner,
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1FetchAclRequest.fromJson(core.Map json_)
      : this(
          projectOwner: json_.containsKey('projectOwner')
              ? json_['projectOwner'] as core.bool
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (projectOwner != null) 'projectOwner': projectOwner!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Response message for DocumentService.FetchAcl.
class GoogleCloudContentwarehouseV1FetchAclResponse {
  /// Additional information for the API invocation, such as the request
  /// tracking id.
  GoogleCloudContentwarehouseV1ResponseMetadata? metadata;

  /// The IAM policy.
  GoogleIamV1Policy? policy;

  GoogleCloudContentwarehouseV1FetchAclResponse({
    this.metadata,
    this.policy,
  });

  GoogleCloudContentwarehouseV1FetchAclResponse.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? GoogleCloudContentwarehouseV1ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (policy != null) 'policy': policy!,
      };
}

/// Filter for the specific types of documents returned.
class GoogleCloudContentwarehouseV1FileTypeFilter {
  /// The type of files to return.
  /// Possible string values are:
  /// - "FILE_TYPE_UNSPECIFIED" : Default document type. If set, disables the
  /// filter.
  /// - "ALL" : Returns all document types, including folders.
  /// - "FOLDER" : Returns only folders.
  /// - "DOCUMENT" : Returns only non-folder documents.
  /// - "ROOT_FOLDER" : Returns only root folders
  core.String? fileType;

  GoogleCloudContentwarehouseV1FileTypeFilter({
    this.fileType,
  });

  GoogleCloudContentwarehouseV1FileTypeFilter.fromJson(core.Map json_)
      : this(
          fileType: json_.containsKey('fileType')
              ? json_['fileType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fileType != null) 'fileType': fileType!,
      };
}

/// Float values.
class GoogleCloudContentwarehouseV1FloatArray {
  /// List of float values.
  core.List<core.double>? values;

  GoogleCloudContentwarehouseV1FloatArray({
    this.values,
  });

  GoogleCloudContentwarehouseV1FloatArray.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => (value as core.num).toDouble())
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Configurations for a float property.
typedef GoogleCloudContentwarehouseV1FloatTypeOptions = $Empty;

/// The configuration of the Cloud Storage Ingestion pipeline.
class GoogleCloudContentwarehouseV1GcsIngestPipeline {
  /// The input Cloud Storage folder.
  ///
  /// All files under this folder will be imported to Document Warehouse.
  /// Format: `gs:///`.
  core.String? inputPath;

  /// The config for the Cloud Storage Ingestion pipeline.
  ///
  /// It provides additional customization options to run the pipeline and can
  /// be skipped if it is not applicable.
  ///
  /// Optional.
  GoogleCloudContentwarehouseV1IngestPipelineConfig? pipelineConfig;

  /// The Doc AI processor type name.
  ///
  /// Only used when the format of ingested files is Doc AI Document proto
  /// format.
  core.String? processorType;

  /// The Document Warehouse schema resource name.
  ///
  /// All documents processed by this pipeline will use this schema. Format:
  /// projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  core.String? schemaName;

  /// The flag whether to skip ingested documents.
  ///
  /// If it is set to true, documents in Cloud Storage contains key "status"
  /// with value "status=ingested" in custom metadata will be skipped to ingest.
  core.bool? skipIngestedDocuments;

  GoogleCloudContentwarehouseV1GcsIngestPipeline({
    this.inputPath,
    this.pipelineConfig,
    this.processorType,
    this.schemaName,
    this.skipIngestedDocuments,
  });

  GoogleCloudContentwarehouseV1GcsIngestPipeline.fromJson(core.Map json_)
      : this(
          inputPath: json_.containsKey('inputPath')
              ? json_['inputPath'] as core.String
              : null,
          pipelineConfig: json_.containsKey('pipelineConfig')
              ? GoogleCloudContentwarehouseV1IngestPipelineConfig.fromJson(
                  json_['pipelineConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          processorType: json_.containsKey('processorType')
              ? json_['processorType'] as core.String
              : null,
          schemaName: json_.containsKey('schemaName')
              ? json_['schemaName'] as core.String
              : null,
          skipIngestedDocuments: json_.containsKey('skipIngestedDocuments')
              ? json_['skipIngestedDocuments'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (inputPath != null) 'inputPath': inputPath!,
        if (pipelineConfig != null) 'pipelineConfig': pipelineConfig!,
        if (processorType != null) 'processorType': processorType!,
        if (schemaName != null) 'schemaName': schemaName!,
        if (skipIngestedDocuments != null)
          'skipIngestedDocuments': skipIngestedDocuments!,
      };
}

/// The configuration of the Cloud Storage Ingestion with DocAI Processors
/// pipeline.
class GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline {
  /// The extract processors information.
  ///
  /// One matched extract processor will be used to process documents based on
  /// the classify processor result. If no classify processor is specified, the
  /// first extract processor will be used.
  core.List<GoogleCloudContentwarehouseV1ProcessorInfo>? extractProcessorInfos;

  /// The input Cloud Storage folder.
  ///
  /// All files under this folder will be imported to Document Warehouse.
  /// Format: `gs:///`.
  core.String? inputPath;

  /// The config for the Cloud Storage Ingestion with DocAI Processors pipeline.
  ///
  /// It provides additional customization options to run the pipeline and can
  /// be skipped if it is not applicable.
  ///
  /// Optional.
  GoogleCloudContentwarehouseV1IngestPipelineConfig? pipelineConfig;

  /// The Cloud Storage folder path used to store the raw results from
  /// processors.
  ///
  /// Format: `gs:///`.
  core.String? processorResultsFolderPath;

  /// The flag whether to skip ingested documents.
  ///
  /// If it is set to true, documents in Cloud Storage contains key "status"
  /// with value "status=ingested" in custom metadata will be skipped to ingest.
  core.bool? skipIngestedDocuments;

  /// The split and classify processor information.
  ///
  /// The split and classify result will be used to find a matched extract
  /// processor.
  GoogleCloudContentwarehouseV1ProcessorInfo? splitClassifyProcessorInfo;

  GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline({
    this.extractProcessorInfos,
    this.inputPath,
    this.pipelineConfig,
    this.processorResultsFolderPath,
    this.skipIngestedDocuments,
    this.splitClassifyProcessorInfo,
  });

  GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline.fromJson(
      core.Map json_)
      : this(
          extractProcessorInfos: json_.containsKey('extractProcessorInfos')
              ? (json_['extractProcessorInfos'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1ProcessorInfo.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          inputPath: json_.containsKey('inputPath')
              ? json_['inputPath'] as core.String
              : null,
          pipelineConfig: json_.containsKey('pipelineConfig')
              ? GoogleCloudContentwarehouseV1IngestPipelineConfig.fromJson(
                  json_['pipelineConfig']
                      as core.Map<core.String, core.dynamic>)
              : null,
          processorResultsFolderPath:
              json_.containsKey('processorResultsFolderPath')
                  ? json_['processorResultsFolderPath'] as core.String
                  : null,
          skipIngestedDocuments: json_.containsKey('skipIngestedDocuments')
              ? json_['skipIngestedDocuments'] as core.bool
              : null,
          splitClassifyProcessorInfo:
              json_.containsKey('splitClassifyProcessorInfo')
                  ? GoogleCloudContentwarehouseV1ProcessorInfo.fromJson(
                      json_['splitClassifyProcessorInfo']
                          as core.Map<core.String, core.dynamic>)
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (extractProcessorInfos != null)
          'extractProcessorInfos': extractProcessorInfos!,
        if (inputPath != null) 'inputPath': inputPath!,
        if (pipelineConfig != null) 'pipelineConfig': pipelineConfig!,
        if (processorResultsFolderPath != null)
          'processorResultsFolderPath': processorResultsFolderPath!,
        if (skipIngestedDocuments != null)
          'skipIngestedDocuments': skipIngestedDocuments!,
        if (splitClassifyProcessorInfo != null)
          'splitClassifyProcessorInfo': splitClassifyProcessorInfo!,
      };
}

/// Request message for DocumentService.GetDocument.
class GoogleCloudContentwarehouseV1GetDocumentRequest {
  /// The meta information collected about the end user, used to enforce access
  /// control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1GetDocumentRequest({
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1GetDocumentRequest.fromJson(core.Map json_)
      : this(
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// The histogram request.
class GoogleCloudContentwarehouseV1HistogramQuery {
  /// Filter the result of histogram query by the property names.
  ///
  /// It only works with histogram query count('FilterableProperties'). It is an
  /// optional. It will perform histogram on all the property names for all the
  /// document schemas. Setting this field will have a better performance.
  ///
  /// Optional.
  GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter? filters;

  /// An expression specifies a histogram request against matching documents for
  /// searches.
  ///
  /// See SearchDocumentsRequest.histogram_queries for details about syntax.
  core.String? histogramQuery;

  /// Controls if the histogram query requires the return of a precise count.
  ///
  /// Enable this flag may adversely impact performance. Defaults to true.
  core.bool? requirePreciseResultSize;

  GoogleCloudContentwarehouseV1HistogramQuery({
    this.filters,
    this.histogramQuery,
    this.requirePreciseResultSize,
  });

  GoogleCloudContentwarehouseV1HistogramQuery.fromJson(core.Map json_)
      : this(
          filters: json_.containsKey('filters')
              ? GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter
                  .fromJson(
                      json_['filters'] as core.Map<core.String, core.dynamic>)
              : null,
          histogramQuery: json_.containsKey('histogramQuery')
              ? json_['histogramQuery'] as core.String
              : null,
          requirePreciseResultSize:
              json_.containsKey('requirePreciseResultSize')
                  ? json_['requirePreciseResultSize'] as core.bool
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (filters != null) 'filters': filters!,
        if (histogramQuery != null) 'histogramQuery': histogramQuery!,
        if (requirePreciseResultSize != null)
          'requirePreciseResultSize': requirePreciseResultSize!,
      };
}

class GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter {
  /// This filter specifies the exact document schema(s)
  /// Document.document_schema_name to run histogram query against.
  ///
  /// It is optional. It will perform histogram for property names for all the
  /// document schemas if it is not set. At most 10 document schema names are
  /// allowed. Format:
  /// projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  core.List<core.String>? documentSchemas;

  /// It is optional.
  ///
  /// It will perform histogram for all the property names if it is not set. The
  /// properties need to be defined with the is_filterable flag set to true and
  /// the name of the property should be in the format: "schemaId.propertyName".
  /// The property needs to be defined in the schema. Example: the schema id is
  /// abc. Then the name of property for property MORTGAGE_TYPE will be
  /// "abc.MORTGAGE_TYPE".
  core.List<core.String>? propertyNames;

  /// By default, the y_axis is HISTOGRAM_YAXIS_DOCUMENT if this field is not
  /// set.
  /// Possible string values are:
  /// - "HISTOGRAM_YAXIS_DOCUMENT" : Count the documents per property name.
  /// - "HISTOGRAM_YAXIS_PROPERTY" : Count the properties per property name.
  core.String? yAxis;

  GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter({
    this.documentSchemas,
    this.propertyNames,
    this.yAxis,
  });

  GoogleCloudContentwarehouseV1HistogramQueryPropertyNameFilter.fromJson(
      core.Map json_)
      : this(
          documentSchemas: json_.containsKey('documentSchemas')
              ? (json_['documentSchemas'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          propertyNames: json_.containsKey('propertyNames')
              ? (json_['propertyNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          yAxis:
              json_.containsKey('yAxis') ? json_['yAxis'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentSchemas != null) 'documentSchemas': documentSchemas!,
        if (propertyNames != null) 'propertyNames': propertyNames!,
        if (yAxis != null) 'yAxis': yAxis!,
      };
}

/// Histogram result that matches HistogramQuery specified in searches.
class GoogleCloudContentwarehouseV1HistogramQueryResult {
  /// A map from the values of the facet associated with distinct values to the
  /// number of matching entries with corresponding value.
  ///
  /// The key format is: * (for string histogram) string values stored in the
  /// field.
  core.Map<core.String, core.String>? histogram;

  /// Requested histogram expression.
  core.String? histogramQuery;

  GoogleCloudContentwarehouseV1HistogramQueryResult({
    this.histogram,
    this.histogramQuery,
  });

  GoogleCloudContentwarehouseV1HistogramQueryResult.fromJson(core.Map json_)
      : this(
          histogram: json_.containsKey('histogram')
              ? (json_['histogram'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    value as core.String,
                  ),
                )
              : null,
          histogramQuery: json_.containsKey('histogramQuery')
              ? json_['histogramQuery'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (histogram != null) 'histogram': histogram!,
        if (histogramQuery != null) 'histogramQuery': histogramQuery!,
      };
}

/// The ingestion pipeline config.
class GoogleCloudContentwarehouseV1IngestPipelineConfig {
  /// The Cloud Function resource name.
  ///
  /// The Cloud Function needs to live inside consumer project and is accessible
  /// to Document AI Warehouse P4SA. Only Cloud Functions V2 is supported. Cloud
  /// function execution should complete within 5 minutes or this file ingestion
  /// may fail due to timeout. Format:
  /// `https://{region}-{project_id}.cloudfunctions.net/{cloud_function}` The
  /// following keys are available the request json payload. * display_name *
  /// properties * plain_text * reference_id * document_schema_name *
  /// raw_document_path * raw_document_file_type The following keys from the
  /// cloud function json response payload will be ingested to the Document AI
  /// Warehouse as part of Document proto content and/or related information.
  /// The original values will be overridden if any key is present in the
  /// response. * display_name * properties * plain_text * document_acl_policy *
  /// folder
  core.String? cloudFunction;

  /// The document level acl policy config.
  ///
  /// This refers to an Identity and Access (IAM) policy, which specifies access
  /// controls for all documents ingested by the pipeline. The role and members
  /// under the policy needs to be specified. The following roles are supported
  /// for document level acl control: * roles/contentwarehouse.documentAdmin *
  /// roles/contentwarehouse.documentEditor *
  /// roles/contentwarehouse.documentViewer The following members are supported
  /// for document level acl control: * user:user-email@example.com *
  /// group:group-email@example.com Note that for documents searched with LLM,
  /// only single level user or group acl check is supported.
  GoogleIamV1Policy? documentAclPolicy;

  /// The document text extraction enabled flag.
  ///
  /// If the flag is set to true, DWH will perform text extraction on the raw
  /// document.
  core.bool? enableDocumentTextExtraction;

  /// The name of the folder to which all ingested documents will be linked
  /// during ingestion process.
  ///
  /// Format is `projects/{project}/locations/{location}/documents/{folder_id}`
  ///
  /// Optional.
  core.String? folder;

  GoogleCloudContentwarehouseV1IngestPipelineConfig({
    this.cloudFunction,
    this.documentAclPolicy,
    this.enableDocumentTextExtraction,
    this.folder,
  });

  GoogleCloudContentwarehouseV1IngestPipelineConfig.fromJson(core.Map json_)
      : this(
          cloudFunction: json_.containsKey('cloudFunction')
              ? json_['cloudFunction'] as core.String
              : null,
          documentAclPolicy: json_.containsKey('documentAclPolicy')
              ? GoogleIamV1Policy.fromJson(json_['documentAclPolicy']
                  as core.Map<core.String, core.dynamic>)
              : null,
          enableDocumentTextExtraction:
              json_.containsKey('enableDocumentTextExtraction')
                  ? json_['enableDocumentTextExtraction'] as core.bool
                  : null,
          folder: json_.containsKey('folder')
              ? json_['folder'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudFunction != null) 'cloudFunction': cloudFunction!,
        if (documentAclPolicy != null) 'documentAclPolicy': documentAclPolicy!,
        if (enableDocumentTextExtraction != null)
          'enableDocumentTextExtraction': enableDocumentTextExtraction!,
        if (folder != null) 'folder': folder!,
      };
}

/// Request message for projectService.InitializeProject
class GoogleCloudContentwarehouseV1InitializeProjectRequest {
  /// The access control mode for accessing the customer data
  ///
  /// Required.
  /// Possible string values are:
  /// - "ACL_MODE_UNKNOWN" : This value is required by protobuf best practices
  /// - "ACL_MODE_UNIVERSAL_ACCESS" : Universal Access: No document level access
  /// control.
  /// - "ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID" : Document level access
  /// control with customer own Identity Service.
  /// - "ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI" : Document level access
  /// control using Google Cloud Identity.
  core.String? accessControlMode;

  /// The type of database used to store customer data
  ///
  /// Required.
  /// Possible string values are:
  /// - "DB_UNKNOWN" : This value is required by protobuf best practices
  /// - "DB_INFRA_SPANNER" : Internal Spanner
  /// - "DB_CLOUD_SQL_POSTGRES" : Cloud Sql with a Postgres Sql instance
  core.String? databaseType;

  /// The default role for the person who create a document.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "DOCUMENT_CREATOR_DEFAULT_ROLE_UNSPECIFIED" : Unspecified, will be
  /// default to document admin role.
  /// - "DOCUMENT_ADMIN" : Document Admin, same as
  /// contentwarehouse.googleapis.com/documentAdmin.
  /// - "DOCUMENT_EDITOR" : Document Editor, same as
  /// contentwarehouse.googleapis.com/documentEditor.
  /// - "DOCUMENT_VIEWER" : Document Viewer, same as
  /// contentwarehouse.googleapis.com/documentViewer.
  core.String? documentCreatorDefaultRole;

  /// Whether to enable CAL user email logging.
  ///
  /// Optional.
  core.bool? enableCalUserEmailLogging;

  /// The KMS key used for CMEK encryption.
  ///
  /// It is required that the kms key is in the same region as the endpoint. The
  /// same key will be used for all provisioned resources, if encryption is
  /// available. If the kms_key is left empty, no encryption will be enforced.
  ///
  /// Optional.
  core.String? kmsKey;

  GoogleCloudContentwarehouseV1InitializeProjectRequest({
    this.accessControlMode,
    this.databaseType,
    this.documentCreatorDefaultRole,
    this.enableCalUserEmailLogging,
    this.kmsKey,
  });

  GoogleCloudContentwarehouseV1InitializeProjectRequest.fromJson(core.Map json_)
      : this(
          accessControlMode: json_.containsKey('accessControlMode')
              ? json_['accessControlMode'] as core.String
              : null,
          databaseType: json_.containsKey('databaseType')
              ? json_['databaseType'] as core.String
              : null,
          documentCreatorDefaultRole:
              json_.containsKey('documentCreatorDefaultRole')
                  ? json_['documentCreatorDefaultRole'] as core.String
                  : null,
          enableCalUserEmailLogging:
              json_.containsKey('enableCalUserEmailLogging')
                  ? json_['enableCalUserEmailLogging'] as core.bool
                  : null,
          kmsKey: json_.containsKey('kmsKey')
              ? json_['kmsKey'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessControlMode != null) 'accessControlMode': accessControlMode!,
        if (databaseType != null) 'databaseType': databaseType!,
        if (documentCreatorDefaultRole != null)
          'documentCreatorDefaultRole': documentCreatorDefaultRole!,
        if (enableCalUserEmailLogging != null)
          'enableCalUserEmailLogging': enableCalUserEmailLogging!,
        if (kmsKey != null) 'kmsKey': kmsKey!,
      };
}

/// Integer values.
class GoogleCloudContentwarehouseV1IntegerArray {
  /// List of integer values.
  core.List<core.int>? values;

  GoogleCloudContentwarehouseV1IntegerArray({
    this.values,
  });

  GoogleCloudContentwarehouseV1IntegerArray.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Configurations for an integer property.
typedef GoogleCloudContentwarehouseV1IntegerTypeOptions = $Empty;

/// A triggered rule that failed the validation check(s) after parsing.
class GoogleCloudContentwarehouseV1InvalidRule {
  /// Validation error on a parsed expression.
  core.String? error;

  /// Triggered rule.
  GoogleCloudContentwarehouseV1Rule? rule;

  GoogleCloudContentwarehouseV1InvalidRule({
    this.error,
    this.rule,
  });

  GoogleCloudContentwarehouseV1InvalidRule.fromJson(core.Map json_)
      : this(
          error:
              json_.containsKey('error') ? json_['error'] as core.String : null,
          rule: json_.containsKey('rule')
              ? GoogleCloudContentwarehouseV1Rule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (error != null) 'error': error!,
        if (rule != null) 'rule': rule!,
      };
}

/// Response message for DocumentSchemaService.ListDocumentSchemas.
class GoogleCloudContentwarehouseV1ListDocumentSchemasResponse {
  /// The document schemas from the specified parent.
  core.List<GoogleCloudContentwarehouseV1DocumentSchema>? documentSchemas;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudContentwarehouseV1ListDocumentSchemasResponse({
    this.documentSchemas,
    this.nextPageToken,
  });

  GoogleCloudContentwarehouseV1ListDocumentSchemasResponse.fromJson(
      core.Map json_)
      : this(
          documentSchemas: json_.containsKey('documentSchemas')
              ? (json_['documentSchemas'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1DocumentSchema.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentSchemas != null) 'documentSchemas': documentSchemas!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for DocumentLinkService.ListLinkedSources.
class GoogleCloudContentwarehouseV1ListLinkedSourcesRequest {
  /// The maximum number of document-links to return.
  ///
  /// The service may return fewer than this value. If unspecified, at most 50
  /// document-links will be returned. The maximum value is 1000; values above
  /// 1000 will be coerced to 1000.
  core.int? pageSize;

  /// A page token, received from a previous `ListLinkedSources` call.
  ///
  /// Provide this to retrieve the subsequent page. When paginating, all other
  /// parameters provided to `ListLinkedSources` must match the call that
  /// provided the page token.
  core.String? pageToken;

  /// The meta information collected about the document creator, used to enforce
  /// access control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1ListLinkedSourcesRequest({
    this.pageSize,
    this.pageToken,
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1ListLinkedSourcesRequest.fromJson(core.Map json_)
      : this(
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Response message for DocumentLinkService.ListLinkedSources.
class GoogleCloudContentwarehouseV1ListLinkedSourcesResponse {
  /// Source document-links.
  core.List<GoogleCloudContentwarehouseV1DocumentLink>? documentLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudContentwarehouseV1ListLinkedSourcesResponse({
    this.documentLinks,
    this.nextPageToken,
  });

  GoogleCloudContentwarehouseV1ListLinkedSourcesResponse.fromJson(
      core.Map json_)
      : this(
          documentLinks: json_.containsKey('documentLinks')
              ? (json_['documentLinks'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1DocumentLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentLinks != null) 'documentLinks': documentLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Request message for DocumentLinkService.ListLinkedTargets.
class GoogleCloudContentwarehouseV1ListLinkedTargetsRequest {
  /// The meta information collected about the document creator, used to enforce
  /// access control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1ListLinkedTargetsRequest({
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1ListLinkedTargetsRequest.fromJson(core.Map json_)
      : this(
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Response message for DocumentLinkService.ListLinkedTargets.
class GoogleCloudContentwarehouseV1ListLinkedTargetsResponse {
  /// Target document-links.
  core.List<GoogleCloudContentwarehouseV1DocumentLink>? documentLinks;

  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  GoogleCloudContentwarehouseV1ListLinkedTargetsResponse({
    this.documentLinks,
    this.nextPageToken,
  });

  GoogleCloudContentwarehouseV1ListLinkedTargetsResponse.fromJson(
      core.Map json_)
      : this(
          documentLinks: json_.containsKey('documentLinks')
              ? (json_['documentLinks'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1DocumentLink.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentLinks != null) 'documentLinks': documentLinks!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
      };
}

/// Response message for RuleSetService.ListRuleSets.
class GoogleCloudContentwarehouseV1ListRuleSetsResponse {
  /// A token, which can be sent as `page_token` to retrieve the next page.
  ///
  /// If this field is omitted, there are no subsequent pages.
  core.String? nextPageToken;

  /// The rule sets from the specified parent.
  core.List<GoogleCloudContentwarehouseV1RuleSet>? ruleSets;

  GoogleCloudContentwarehouseV1ListRuleSetsResponse({
    this.nextPageToken,
    this.ruleSets,
  });

  GoogleCloudContentwarehouseV1ListRuleSetsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          ruleSets: json_.containsKey('ruleSets')
              ? (json_['ruleSets'] as core.List)
                  .map((value) => GoogleCloudContentwarehouseV1RuleSet.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (ruleSets != null) 'ruleSets': ruleSets!,
      };
}

/// Response message for SynonymSetService.ListSynonymSets.
class GoogleCloudContentwarehouseV1ListSynonymSetsResponse {
  /// A page token, received from a previous `ListSynonymSets` call.
  ///
  /// Provide this to retrieve the subsequent page.
  core.String? nextPageToken;

  /// The synonymSets from the specified parent.
  core.List<GoogleCloudContentwarehouseV1SynonymSet>? synonymSets;

  GoogleCloudContentwarehouseV1ListSynonymSetsResponse({
    this.nextPageToken,
    this.synonymSets,
  });

  GoogleCloudContentwarehouseV1ListSynonymSetsResponse.fromJson(core.Map json_)
      : this(
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          synonymSets: json_.containsKey('synonymSets')
              ? (json_['synonymSets'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1SynonymSet.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (synonymSets != null) 'synonymSets': synonymSets!,
      };
}

/// Request message for DocumentService.LockDocument.
class GoogleCloudContentwarehouseV1LockDocumentRequest {
  /// The collection the document connects to.
  core.String? collectionId;

  /// The user information who locks the document.
  GoogleCloudContentwarehouseV1UserInfo? lockingUser;

  GoogleCloudContentwarehouseV1LockDocumentRequest({
    this.collectionId,
    this.lockingUser,
  });

  GoogleCloudContentwarehouseV1LockDocumentRequest.fromJson(core.Map json_)
      : this(
          collectionId: json_.containsKey('collectionId')
              ? json_['collectionId'] as core.String
              : null,
          lockingUser: json_.containsKey('lockingUser')
              ? GoogleCloudContentwarehouseV1UserInfo.fromJson(
                  json_['lockingUser'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (collectionId != null) 'collectionId': collectionId!,
        if (lockingUser != null) 'lockingUser': lockingUser!,
      };
}

/// Map property value.
///
/// Represents a structured entries of key value pairs, consisting of field
/// names which map to dynamically typed values.
class GoogleCloudContentwarehouseV1MapProperty {
  /// Unordered map of dynamically typed values.
  core.Map<core.String, GoogleCloudContentwarehouseV1Value>? fields;

  GoogleCloudContentwarehouseV1MapProperty({
    this.fields,
  });

  GoogleCloudContentwarehouseV1MapProperty.fromJson(core.Map json_)
      : this(
          fields: json_.containsKey('fields')
              ? (json_['fields'] as core.Map<core.String, core.dynamic>).map(
                  (key, value) => core.MapEntry(
                    key,
                    GoogleCloudContentwarehouseV1Value.fromJson(
                        value as core.Map<core.String, core.dynamic>),
                  ),
                )
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (fields != null) 'fields': fields!,
      };
}

/// Configurations for a Map property.
typedef GoogleCloudContentwarehouseV1MapTypeOptions = $Empty;

/// Options for merging updated fields.
class GoogleCloudContentwarehouseV1MergeFieldsOptions {
  /// When merging message fields, the default behavior is to merge the content
  /// of two message fields together.
  ///
  /// If you instead want to use the field from the source message to replace
  /// the corresponding field in the destination message, set this flag to true.
  /// When this flag is set, specified submessage fields that are missing in
  /// source will be cleared in destination.
  core.bool? replaceMessageFields;

  /// When merging repeated fields, the default behavior is to append entries
  /// from the source repeated field to the destination repeated field.
  ///
  /// If you instead want to keep only the entries from the source repeated
  /// field, set this flag to true. If you want to replace a repeated field
  /// within a message field on the destination message, you must set both
  /// replace_repeated_fields and replace_message_fields to true, otherwise the
  /// repeated fields will be appended.
  core.bool? replaceRepeatedFields;

  GoogleCloudContentwarehouseV1MergeFieldsOptions({
    this.replaceMessageFields,
    this.replaceRepeatedFields,
  });

  GoogleCloudContentwarehouseV1MergeFieldsOptions.fromJson(core.Map json_)
      : this(
          replaceMessageFields: json_.containsKey('replaceMessageFields')
              ? json_['replaceMessageFields'] as core.bool
              : null,
          replaceRepeatedFields: json_.containsKey('replaceRepeatedFields')
              ? json_['replaceRepeatedFields'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (replaceMessageFields != null)
          'replaceMessageFields': replaceMessageFields!,
        if (replaceRepeatedFields != null)
          'replaceRepeatedFields': replaceRepeatedFields!,
      };
}

/// The configuration of processing documents in Document Warehouse with DocAi
/// processors pipeline.
class GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline {
  /// The list of all the resource names of the documents to be processed.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  core.List<core.String>? documents;

  /// The Cloud Storage folder path used to store the exported documents before
  /// being sent to CDW.
  ///
  /// Format: `gs:///`.
  core.String? exportFolderPath;

  /// The CDW processor information.
  GoogleCloudContentwarehouseV1ProcessorInfo? processorInfo;

  /// The Cloud Storage folder path used to store the raw results from
  /// processors.
  ///
  /// Format: `gs:///`.
  core.String? processorResultsFolderPath;

  GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline({
    this.documents,
    this.exportFolderPath,
    this.processorInfo,
    this.processorResultsFolderPath,
  });

  GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline.fromJson(core.Map json_)
      : this(
          documents: json_.containsKey('documents')
              ? (json_['documents'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          exportFolderPath: json_.containsKey('exportFolderPath')
              ? json_['exportFolderPath'] as core.String
              : null,
          processorInfo: json_.containsKey('processorInfo')
              ? GoogleCloudContentwarehouseV1ProcessorInfo.fromJson(
                  json_['processorInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          processorResultsFolderPath:
              json_.containsKey('processorResultsFolderPath')
                  ? json_['processorResultsFolderPath'] as core.String
                  : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documents != null) 'documents': documents!,
        if (exportFolderPath != null) 'exportFolderPath': exportFolderPath!,
        if (processorInfo != null) 'processorInfo': processorInfo!,
        if (processorResultsFolderPath != null)
          'processorResultsFolderPath': processorResultsFolderPath!,
      };
}

/// The DocAI processor information.
class GoogleCloudContentwarehouseV1ProcessorInfo {
  /// The processor will process the documents with this document type.
  core.String? documentType;

  /// The processor resource name.
  ///
  /// Format is
  /// `projects/{project}/locations/{location}/processors/{processor}`, or
  /// `projects/{project}/locations/{location}/processors/{processor}/processorVersions/{processorVersion}`
  core.String? processorName;

  /// The Document schema resource name.
  ///
  /// All documents processed by this processor will use this schema. Format:
  /// projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  core.String? schemaName;

  GoogleCloudContentwarehouseV1ProcessorInfo({
    this.documentType,
    this.processorName,
    this.schemaName,
  });

  GoogleCloudContentwarehouseV1ProcessorInfo.fromJson(core.Map json_)
      : this(
          documentType: json_.containsKey('documentType')
              ? json_['documentType'] as core.String
              : null,
          processorName: json_.containsKey('processorName')
              ? json_['processorName'] as core.String
              : null,
          schemaName: json_.containsKey('schemaName')
              ? json_['schemaName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentType != null) 'documentType': documentType!,
        if (processorName != null) 'processorName': processorName!,
        if (schemaName != null) 'schemaName': schemaName!,
      };
}

/// Status of a project, including the project state, dbType, aclMode and etc.
class GoogleCloudContentwarehouseV1ProjectStatus {
  /// Access control mode.
  /// Possible string values are:
  /// - "ACL_MODE_UNKNOWN" : This value is required by protobuf best practices
  /// - "ACL_MODE_UNIVERSAL_ACCESS" : Universal Access: No document level access
  /// control.
  /// - "ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_BYOID" : Document level access
  /// control with customer own Identity Service.
  /// - "ACL_MODE_DOCUMENT_LEVEL_ACCESS_CONTROL_GCI" : Document level access
  /// control using Google Cloud Identity.
  core.String? accessControlMode;

  /// Database type.
  /// Possible string values are:
  /// - "DB_UNKNOWN" : This value is required by protobuf best practices
  /// - "DB_INFRA_SPANNER" : Internal Spanner
  /// - "DB_CLOUD_SQL_POSTGRES" : Cloud Sql with a Postgres Sql instance
  core.String? databaseType;

  /// The default role for the person who create a document.
  core.String? documentCreatorDefaultRole;

  /// The location of the queried project.
  core.String? location;

  /// If the qa is enabled on this project.
  core.bool? qaEnabled;

  /// State of the project.
  /// Possible string values are:
  /// - "PROJECT_STATE_UNSPECIFIED" : Default status, required by protobuf best
  /// practices.
  /// - "PROJECT_STATE_PENDING" : The project is in the middle of a provision
  /// process.
  /// - "PROJECT_STATE_COMPLETED" : All dependencies have been provisioned.
  /// - "PROJECT_STATE_FAILED" : A provision process was previously initiated,
  /// but failed.
  /// - "PROJECT_STATE_DELETING" : The project is in the middle of a deletion
  /// process.
  /// - "PROJECT_STATE_DELETING_FAILED" : A deleting process was initiated, but
  /// failed.
  /// - "PROJECT_STATE_DELETED" : The project is deleted.
  /// - "PROJECT_STATE_NOT_FOUND" : The project is not found.
  core.String? state;

  GoogleCloudContentwarehouseV1ProjectStatus({
    this.accessControlMode,
    this.databaseType,
    this.documentCreatorDefaultRole,
    this.location,
    this.qaEnabled,
    this.state,
  });

  GoogleCloudContentwarehouseV1ProjectStatus.fromJson(core.Map json_)
      : this(
          accessControlMode: json_.containsKey('accessControlMode')
              ? json_['accessControlMode'] as core.String
              : null,
          databaseType: json_.containsKey('databaseType')
              ? json_['databaseType'] as core.String
              : null,
          documentCreatorDefaultRole:
              json_.containsKey('documentCreatorDefaultRole')
                  ? json_['documentCreatorDefaultRole'] as core.String
                  : null,
          location: json_.containsKey('location')
              ? json_['location'] as core.String
              : null,
          qaEnabled: json_.containsKey('qaEnabled')
              ? json_['qaEnabled'] as core.bool
              : null,
          state:
              json_.containsKey('state') ? json_['state'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (accessControlMode != null) 'accessControlMode': accessControlMode!,
        if (databaseType != null) 'databaseType': databaseType!,
        if (documentCreatorDefaultRole != null)
          'documentCreatorDefaultRole': documentCreatorDefaultRole!,
        if (location != null) 'location': location!,
        if (qaEnabled != null) 'qaEnabled': qaEnabled!,
        if (state != null) 'state': state!,
      };
}

/// Property of a document.
class GoogleCloudContentwarehouseV1Property {
  /// Date time property values.
  ///
  /// It is not supported by CMEK compliant deployment.
  GoogleCloudContentwarehouseV1DateTimeArray? dateTimeValues;

  /// Enum property values.
  GoogleCloudContentwarehouseV1EnumArray? enumValues;

  /// Float property values.
  GoogleCloudContentwarehouseV1FloatArray? floatValues;

  /// Integer property values.
  GoogleCloudContentwarehouseV1IntegerArray? integerValues;

  /// Map property values.
  GoogleCloudContentwarehouseV1MapProperty? mapProperty;

  /// Must match the name of a PropertyDefinition in the DocumentSchema.
  ///
  /// Required.
  core.String? name;

  /// Nested structured data property values.
  GoogleCloudContentwarehouseV1PropertyArray? propertyValues;

  /// String/text property values.
  GoogleCloudContentwarehouseV1TextArray? textValues;

  /// Timestamp property values.
  ///
  /// It is not supported by CMEK compliant deployment.
  GoogleCloudContentwarehouseV1TimestampArray? timestampValues;

  GoogleCloudContentwarehouseV1Property({
    this.dateTimeValues,
    this.enumValues,
    this.floatValues,
    this.integerValues,
    this.mapProperty,
    this.name,
    this.propertyValues,
    this.textValues,
    this.timestampValues,
  });

  GoogleCloudContentwarehouseV1Property.fromJson(core.Map json_)
      : this(
          dateTimeValues: json_.containsKey('dateTimeValues')
              ? GoogleCloudContentwarehouseV1DateTimeArray.fromJson(
                  json_['dateTimeValues']
                      as core.Map<core.String, core.dynamic>)
              : null,
          enumValues: json_.containsKey('enumValues')
              ? GoogleCloudContentwarehouseV1EnumArray.fromJson(
                  json_['enumValues'] as core.Map<core.String, core.dynamic>)
              : null,
          floatValues: json_.containsKey('floatValues')
              ? GoogleCloudContentwarehouseV1FloatArray.fromJson(
                  json_['floatValues'] as core.Map<core.String, core.dynamic>)
              : null,
          integerValues: json_.containsKey('integerValues')
              ? GoogleCloudContentwarehouseV1IntegerArray.fromJson(
                  json_['integerValues'] as core.Map<core.String, core.dynamic>)
              : null,
          mapProperty: json_.containsKey('mapProperty')
              ? GoogleCloudContentwarehouseV1MapProperty.fromJson(
                  json_['mapProperty'] as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          propertyValues: json_.containsKey('propertyValues')
              ? GoogleCloudContentwarehouseV1PropertyArray.fromJson(
                  json_['propertyValues']
                      as core.Map<core.String, core.dynamic>)
              : null,
          textValues: json_.containsKey('textValues')
              ? GoogleCloudContentwarehouseV1TextArray.fromJson(
                  json_['textValues'] as core.Map<core.String, core.dynamic>)
              : null,
          timestampValues: json_.containsKey('timestampValues')
              ? GoogleCloudContentwarehouseV1TimestampArray.fromJson(
                  json_['timestampValues']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTimeValues != null) 'dateTimeValues': dateTimeValues!,
        if (enumValues != null) 'enumValues': enumValues!,
        if (floatValues != null) 'floatValues': floatValues!,
        if (integerValues != null) 'integerValues': integerValues!,
        if (mapProperty != null) 'mapProperty': mapProperty!,
        if (name != null) 'name': name!,
        if (propertyValues != null) 'propertyValues': propertyValues!,
        if (textValues != null) 'textValues': textValues!,
        if (timestampValues != null) 'timestampValues': timestampValues!,
      };
}

/// Property values.
class GoogleCloudContentwarehouseV1PropertyArray {
  /// List of property values.
  core.List<GoogleCloudContentwarehouseV1Property>? properties;

  GoogleCloudContentwarehouseV1PropertyArray({
    this.properties,
  });

  GoogleCloudContentwarehouseV1PropertyArray.fromJson(core.Map json_)
      : this(
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1Property.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (properties != null) 'properties': properties!,
      };
}

/// Defines the metadata for a schema property.
class GoogleCloudContentwarehouseV1PropertyDefinition {
  /// Date time property.
  ///
  /// It is not supported by CMEK compliant deployment.
  GoogleCloudContentwarehouseV1DateTimeTypeOptions? dateTimeTypeOptions;

  /// The display-name for the property, used for front-end.
  core.String? displayName;

  /// Enum/categorical property.
  GoogleCloudContentwarehouseV1EnumTypeOptions? enumTypeOptions;

  /// Float property.
  GoogleCloudContentwarehouseV1FloatTypeOptions? floatTypeOptions;

  /// Integer property.
  GoogleCloudContentwarehouseV1IntegerTypeOptions? integerTypeOptions;

  /// Whether the property can be filtered.
  ///
  /// If this is a sub-property, all the parent properties must be marked
  /// filterable.
  core.bool? isFilterable;

  /// Whether the property is user supplied metadata.
  ///
  /// This out-of-the box placeholder setting can be used to tag derived
  /// properties. Its value and interpretation logic should be implemented by
  /// API user.
  core.bool? isMetadata;

  /// Whether the property can have multiple values.
  core.bool? isRepeatable;

  /// Whether the property is mandatory.
  ///
  /// Default is 'false', i.e. populating property value can be skipped. If
  /// 'true' then user must populate the value for this property.
  core.bool? isRequired;

  /// Indicates that the property should be included in a global search.
  core.bool? isSearchable;

  /// Map property.
  GoogleCloudContentwarehouseV1MapTypeOptions? mapTypeOptions;

  /// The name of the metadata property.
  ///
  /// Must be unique within a document schema and is case insensitive. Names
  /// must be non-blank, start with a letter, and can contain alphanumeric
  /// characters and: /, :, -, _, and .
  ///
  /// Required.
  core.String? name;

  /// Nested structured data property.
  GoogleCloudContentwarehouseV1PropertyTypeOptions? propertyTypeOptions;

  /// The retrieval importance of the property during search.
  /// Possible string values are:
  /// - "RETRIEVAL_IMPORTANCE_UNSPECIFIED" : No importance specified. Default
  /// medium importance.
  /// - "HIGHEST" : Highest importance.
  /// - "HIGHER" : Higher importance.
  /// - "HIGH" : High importance.
  /// - "MEDIUM" : Medium importance.
  /// - "LOW" : Low importance (negative).
  /// - "LOWEST" : Lowest importance (negative).
  core.String? retrievalImportance;

  /// The mapping information between this property to another schema source.
  core.List<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource>?
      schemaSources;

  /// Text/string property.
  GoogleCloudContentwarehouseV1TextTypeOptions? textTypeOptions;

  /// Timestamp property.
  ///
  /// It is not supported by CMEK compliant deployment.
  GoogleCloudContentwarehouseV1TimestampTypeOptions? timestampTypeOptions;

  GoogleCloudContentwarehouseV1PropertyDefinition({
    this.dateTimeTypeOptions,
    this.displayName,
    this.enumTypeOptions,
    this.floatTypeOptions,
    this.integerTypeOptions,
    this.isFilterable,
    this.isMetadata,
    this.isRepeatable,
    this.isRequired,
    this.isSearchable,
    this.mapTypeOptions,
    this.name,
    this.propertyTypeOptions,
    this.retrievalImportance,
    this.schemaSources,
    this.textTypeOptions,
    this.timestampTypeOptions,
  });

  GoogleCloudContentwarehouseV1PropertyDefinition.fromJson(core.Map json_)
      : this(
          dateTimeTypeOptions: json_.containsKey('dateTimeTypeOptions')
              ? GoogleCloudContentwarehouseV1DateTimeTypeOptions.fromJson(
                  json_['dateTimeTypeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          displayName: json_.containsKey('displayName')
              ? json_['displayName'] as core.String
              : null,
          enumTypeOptions: json_.containsKey('enumTypeOptions')
              ? GoogleCloudContentwarehouseV1EnumTypeOptions.fromJson(
                  json_['enumTypeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          floatTypeOptions: json_.containsKey('floatTypeOptions')
              ? GoogleCloudContentwarehouseV1FloatTypeOptions.fromJson(
                  json_['floatTypeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          integerTypeOptions: json_.containsKey('integerTypeOptions')
              ? GoogleCloudContentwarehouseV1IntegerTypeOptions.fromJson(
                  json_['integerTypeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          isFilterable: json_.containsKey('isFilterable')
              ? json_['isFilterable'] as core.bool
              : null,
          isMetadata: json_.containsKey('isMetadata')
              ? json_['isMetadata'] as core.bool
              : null,
          isRepeatable: json_.containsKey('isRepeatable')
              ? json_['isRepeatable'] as core.bool
              : null,
          isRequired: json_.containsKey('isRequired')
              ? json_['isRequired'] as core.bool
              : null,
          isSearchable: json_.containsKey('isSearchable')
              ? json_['isSearchable'] as core.bool
              : null,
          mapTypeOptions: json_.containsKey('mapTypeOptions')
              ? GoogleCloudContentwarehouseV1MapTypeOptions.fromJson(
                  json_['mapTypeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          propertyTypeOptions: json_.containsKey('propertyTypeOptions')
              ? GoogleCloudContentwarehouseV1PropertyTypeOptions.fromJson(
                  json_['propertyTypeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          retrievalImportance: json_.containsKey('retrievalImportance')
              ? json_['retrievalImportance'] as core.String
              : null,
          schemaSources: json_.containsKey('schemaSources')
              ? (json_['schemaSources'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textTypeOptions: json_.containsKey('textTypeOptions')
              ? GoogleCloudContentwarehouseV1TextTypeOptions.fromJson(
                  json_['textTypeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          timestampTypeOptions: json_.containsKey('timestampTypeOptions')
              ? GoogleCloudContentwarehouseV1TimestampTypeOptions.fromJson(
                  json_['timestampTypeOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (dateTimeTypeOptions != null)
          'dateTimeTypeOptions': dateTimeTypeOptions!,
        if (displayName != null) 'displayName': displayName!,
        if (enumTypeOptions != null) 'enumTypeOptions': enumTypeOptions!,
        if (floatTypeOptions != null) 'floatTypeOptions': floatTypeOptions!,
        if (integerTypeOptions != null)
          'integerTypeOptions': integerTypeOptions!,
        if (isFilterable != null) 'isFilterable': isFilterable!,
        if (isMetadata != null) 'isMetadata': isMetadata!,
        if (isRepeatable != null) 'isRepeatable': isRepeatable!,
        if (isRequired != null) 'isRequired': isRequired!,
        if (isSearchable != null) 'isSearchable': isSearchable!,
        if (mapTypeOptions != null) 'mapTypeOptions': mapTypeOptions!,
        if (name != null) 'name': name!,
        if (propertyTypeOptions != null)
          'propertyTypeOptions': propertyTypeOptions!,
        if (retrievalImportance != null)
          'retrievalImportance': retrievalImportance!,
        if (schemaSources != null) 'schemaSources': schemaSources!,
        if (textTypeOptions != null) 'textTypeOptions': textTypeOptions!,
        if (timestampTypeOptions != null)
          'timestampTypeOptions': timestampTypeOptions!,
      };
}

/// The schema source information.
class GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource {
  /// The schema name in the source.
  core.String? name;

  /// The Doc AI processor type name.
  core.String? processorType;

  GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource({
    this.name,
    this.processorType,
  });

  GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource.fromJson(
      core.Map json_)
      : this(
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          processorType: json_.containsKey('processorType')
              ? json_['processorType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (name != null) 'name': name!,
        if (processorType != null) 'processorType': processorType!,
      };
}

class GoogleCloudContentwarehouseV1PropertyFilter {
  /// The filter condition.
  ///
  /// The syntax for this expression is a subset of SQL syntax. Supported
  /// operators are: `=`, `!=`, `<`, `<=`, `>`, `>=`, and `~~` where the left of
  /// the operator is a property name and the right of the operator is a number
  /// or a quoted string. You must escape backslash (\\) and quote (\")
  /// characters. `~~` is the LIKE operator. The right of the operator must be a
  /// string. The only supported property data type for LIKE is text_values. It
  /// provides semantic search functionality by parsing, stemming and doing
  /// synonyms expansion against the input query. It matches if the property
  /// contains semantic similar content to the query. It is not regex matching
  /// or wildcard matching. For example, "property.company ~~ \"google\"" will
  /// match records whose property `property.compnay` have values like "Google
  /// Inc.", "Google LLC" or "Google Company". Supported functions are
  /// `LOWER([property_name])` to perform a case insensitive match and
  /// `EMPTY([property_name])` to filter on the existence of a key. Boolean
  /// expressions (AND/OR/NOT) are supported up to 3 levels of nesting (for
  /// example, "((A AND B AND C) OR NOT D) AND E"), a maximum of 100 comparisons
  /// or functions are allowed in the expression. The expression must be \< 6000
  /// bytes in length. Only properties that are marked filterable are allowed
  /// (PropertyDefinition.is_filterable). Property names do not need to be
  /// prefixed by the document schema id (as is the case with histograms),
  /// however property names will need to be prefixed by its parent hierarchy,
  /// if any. For example: top_property_name.sub_property_name. Sample Query:
  /// `(LOWER(driving_license)="class \"a\"" OR EMPTY(driving_license)) AND
  /// driving_years > 10` CMEK compliant deployment only supports: * Operators:
  /// `=`, `<`, `<=`, `>`, and `>=`. * Boolean expressions: AND and OR.
  core.String? condition;

  /// The Document schema name Document.document_schema_name.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}.
  core.String? documentSchemaName;

  GoogleCloudContentwarehouseV1PropertyFilter({
    this.condition,
    this.documentSchemaName,
  });

  GoogleCloudContentwarehouseV1PropertyFilter.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
          documentSchemaName: json_.containsKey('documentSchemaName')
              ? json_['documentSchemaName'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (documentSchemaName != null)
          'documentSchemaName': documentSchemaName!,
      };
}

/// Configurations for a nested structured data property.
class GoogleCloudContentwarehouseV1PropertyTypeOptions {
  /// List of property definitions.
  ///
  /// Required.
  core.List<GoogleCloudContentwarehouseV1PropertyDefinition>?
      propertyDefinitions;

  GoogleCloudContentwarehouseV1PropertyTypeOptions({
    this.propertyDefinitions,
  });

  GoogleCloudContentwarehouseV1PropertyTypeOptions.fromJson(core.Map json_)
      : this(
          propertyDefinitions: json_.containsKey('propertyDefinitions')
              ? (json_['propertyDefinitions'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1PropertyDefinition.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (propertyDefinitions != null)
          'propertyDefinitions': propertyDefinitions!,
      };
}

/// Represents the action responsible for publishing messages to a Pub/Sub
/// topic.
class GoogleCloudContentwarehouseV1PublishAction {
  /// Messages to be published.
  core.List<core.String>? messages;

  /// The topic id in the Pub/Sub service for which messages will be published
  /// to.
  core.String? topicId;

  GoogleCloudContentwarehouseV1PublishAction({
    this.messages,
    this.topicId,
  });

  GoogleCloudContentwarehouseV1PublishAction.fromJson(core.Map json_)
      : this(
          messages: json_.containsKey('messages')
              ? (json_['messages'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          topicId: json_.containsKey('topicId')
              ? json_['topicId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (messages != null) 'messages': messages!,
        if (topicId != null) 'topicId': topicId!,
      };
}

/// Additional result info for the question-answering feature.
class GoogleCloudContentwarehouseV1QAResult {
  /// The calibrated confidence score for this document, in the range \[0.,
  /// 1.\].
  ///
  /// This represents the confidence level for whether the returned document and
  /// snippet answers the user's query.
  core.double? confidenceScore;

  /// Highlighted sections in the snippet.
  core.List<GoogleCloudContentwarehouseV1QAResultHighlight>? highlights;

  GoogleCloudContentwarehouseV1QAResult({
    this.confidenceScore,
    this.highlights,
  });

  GoogleCloudContentwarehouseV1QAResult.fromJson(core.Map json_)
      : this(
          confidenceScore: json_.containsKey('confidenceScore')
              ? (json_['confidenceScore'] as core.num).toDouble()
              : null,
          highlights: json_.containsKey('highlights')
              ? (json_['highlights'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1QAResultHighlight.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidenceScore != null) 'confidenceScore': confidenceScore!,
        if (highlights != null) 'highlights': highlights!,
      };
}

/// A text span in the search text snippet that represents a highlighted section
/// (answer context, highly relevant sentence, etc.).
class GoogleCloudContentwarehouseV1QAResultHighlight {
  /// End index of the highlight, exclusive.
  core.int? endIndex;

  /// Start index of the highlight.
  core.int? startIndex;

  GoogleCloudContentwarehouseV1QAResultHighlight({
    this.endIndex,
    this.startIndex,
  });

  GoogleCloudContentwarehouseV1QAResultHighlight.fromJson(core.Map json_)
      : this(
          endIndex: json_.containsKey('endIndex')
              ? json_['endIndex'] as core.int
              : null,
          startIndex: json_.containsKey('startIndex')
              ? json_['startIndex'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (endIndex != null) 'endIndex': endIndex!,
        if (startIndex != null) 'startIndex': startIndex!,
      };
}

/// Represents the action responsible for remove a document from a specific
/// folder.
class GoogleCloudContentwarehouseV1RemoveFromFolderAction {
  /// Condition of the action to be executed.
  core.String? condition;

  /// Name of the folder under which new document is to be added.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/documents/{document_id}.
  core.String? folder;

  GoogleCloudContentwarehouseV1RemoveFromFolderAction({
    this.condition,
    this.folder,
  });

  GoogleCloudContentwarehouseV1RemoveFromFolderAction.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
          folder: json_.containsKey('folder')
              ? json_['folder'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (condition != null) 'condition': condition!,
        if (folder != null) 'folder': folder!,
      };
}

/// Meta information is used to improve the performance of the service.
class GoogleCloudContentwarehouseV1RequestMetadata {
  /// Provides user unique identification and groups information.
  GoogleCloudContentwarehouseV1UserInfo? userInfo;

  GoogleCloudContentwarehouseV1RequestMetadata({
    this.userInfo,
  });

  GoogleCloudContentwarehouseV1RequestMetadata.fromJson(core.Map json_)
      : this(
          userInfo: json_.containsKey('userInfo')
              ? GoogleCloudContentwarehouseV1UserInfo.fromJson(
                  json_['userInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (userInfo != null) 'userInfo': userInfo!,
      };
}

/// Additional information returned to client, such as debugging information.
class GoogleCloudContentwarehouseV1ResponseMetadata {
  /// A unique id associated with this call.
  ///
  /// This id is logged for tracking purpose.
  core.String? requestId;

  GoogleCloudContentwarehouseV1ResponseMetadata({
    this.requestId,
  });

  GoogleCloudContentwarehouseV1ResponseMetadata.fromJson(core.Map json_)
      : this(
          requestId: json_.containsKey('requestId')
              ? json_['requestId'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (requestId != null) 'requestId': requestId!,
      };
}

/// Represents the rule for a content warehouse trigger.
class GoogleCloudContentwarehouseV1Rule {
  /// List of actions that are executed when the rule is satisfied.
  core.List<GoogleCloudContentwarehouseV1Action>? actions;

  /// Represents the conditional expression to be evaluated.
  ///
  /// Expression should evaluate to a boolean result. When the condition is true
  /// actions are executed. Example: user_role = "hsbc_role_1" AND doc.salary \>
  /// 20000
  core.String? condition;

  /// Short description of the rule and its context.
  core.String? description;

  /// ID of the rule.
  ///
  /// It has to be unique across all the examples. This is managed internally.
  core.String? ruleId;

  /// Identifies the trigger type for running the policy.
  /// Possible string values are:
  /// - "UNKNOWN" : Trigger for unknown action.
  /// - "ON_CREATE" : Trigger for create document action.
  /// - "ON_UPDATE" : Trigger for update document action.
  /// - "ON_CREATE_LINK" : Trigger for create link action.
  /// - "ON_DELETE_LINK" : Trigger for delete link action.
  core.String? triggerType;

  GoogleCloudContentwarehouseV1Rule({
    this.actions,
    this.condition,
    this.description,
    this.ruleId,
    this.triggerType,
  });

  GoogleCloudContentwarehouseV1Rule.fromJson(core.Map json_)
      : this(
          actions: json_.containsKey('actions')
              ? (json_['actions'] as core.List)
                  .map((value) => GoogleCloudContentwarehouseV1Action.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          condition: json_.containsKey('condition')
              ? json_['condition'] as core.String
              : null,
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          ruleId: json_.containsKey('ruleId')
              ? json_['ruleId'] as core.String
              : null,
          triggerType: json_.containsKey('triggerType')
              ? json_['triggerType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actions != null) 'actions': actions!,
        if (condition != null) 'condition': condition!,
        if (description != null) 'description': description!,
        if (ruleId != null) 'ruleId': ruleId!,
        if (triggerType != null) 'triggerType': triggerType!,
      };
}

/// Represents a rule and outputs of associated actions.
class GoogleCloudContentwarehouseV1RuleActionsPair {
  /// Outputs of executing the actions associated with the above rule.
  core.List<GoogleCloudContentwarehouseV1ActionOutput>? actionOutputs;

  /// Represents the rule.
  GoogleCloudContentwarehouseV1Rule? rule;

  GoogleCloudContentwarehouseV1RuleActionsPair({
    this.actionOutputs,
    this.rule,
  });

  GoogleCloudContentwarehouseV1RuleActionsPair.fromJson(core.Map json_)
      : this(
          actionOutputs: json_.containsKey('actionOutputs')
              ? (json_['actionOutputs'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1ActionOutput.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          rule: json_.containsKey('rule')
              ? GoogleCloudContentwarehouseV1Rule.fromJson(
                  json_['rule'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionOutputs != null) 'actionOutputs': actionOutputs!,
        if (rule != null) 'rule': rule!,
      };
}

/// Records the output of Rule Engine including rule evaluation and actions
/// result.
class GoogleCloudContentwarehouseV1RuleEngineOutput {
  /// Output from Action Executor containing rule and corresponding actions
  /// execution result.
  GoogleCloudContentwarehouseV1ActionExecutorOutput? actionExecutorOutput;

  /// Name of the document against which the rules and actions were evaluated.
  core.String? documentName;

  /// Output from Rule Evaluator containing matched, unmatched and invalid
  /// rules.
  GoogleCloudContentwarehouseV1RuleEvaluatorOutput? ruleEvaluatorOutput;

  GoogleCloudContentwarehouseV1RuleEngineOutput({
    this.actionExecutorOutput,
    this.documentName,
    this.ruleEvaluatorOutput,
  });

  GoogleCloudContentwarehouseV1RuleEngineOutput.fromJson(core.Map json_)
      : this(
          actionExecutorOutput: json_.containsKey('actionExecutorOutput')
              ? GoogleCloudContentwarehouseV1ActionExecutorOutput.fromJson(
                  json_['actionExecutorOutput']
                      as core.Map<core.String, core.dynamic>)
              : null,
          documentName: json_.containsKey('documentName')
              ? json_['documentName'] as core.String
              : null,
          ruleEvaluatorOutput: json_.containsKey('ruleEvaluatorOutput')
              ? GoogleCloudContentwarehouseV1RuleEvaluatorOutput.fromJson(
                  json_['ruleEvaluatorOutput']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (actionExecutorOutput != null)
          'actionExecutorOutput': actionExecutorOutput!,
        if (documentName != null) 'documentName': documentName!,
        if (ruleEvaluatorOutput != null)
          'ruleEvaluatorOutput': ruleEvaluatorOutput!,
      };
}

/// Represents the output of the Rule Evaluator.
class GoogleCloudContentwarehouseV1RuleEvaluatorOutput {
  /// A subset of triggered rules that failed the validation check(s) after
  /// parsing.
  core.List<GoogleCloudContentwarehouseV1InvalidRule>? invalidRules;

  /// A subset of triggered rules that are evaluated true for a given request.
  core.List<GoogleCloudContentwarehouseV1Rule>? matchedRules;

  /// List of rules fetched from database for the given request trigger type.
  core.List<GoogleCloudContentwarehouseV1Rule>? triggeredRules;

  GoogleCloudContentwarehouseV1RuleEvaluatorOutput({
    this.invalidRules,
    this.matchedRules,
    this.triggeredRules,
  });

  GoogleCloudContentwarehouseV1RuleEvaluatorOutput.fromJson(core.Map json_)
      : this(
          invalidRules: json_.containsKey('invalidRules')
              ? (json_['invalidRules'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1InvalidRule.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          matchedRules: json_.containsKey('matchedRules')
              ? (json_['matchedRules'] as core.List)
                  .map((value) => GoogleCloudContentwarehouseV1Rule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          triggeredRules: json_.containsKey('triggeredRules')
              ? (json_['triggeredRules'] as core.List)
                  .map((value) => GoogleCloudContentwarehouseV1Rule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (invalidRules != null) 'invalidRules': invalidRules!,
        if (matchedRules != null) 'matchedRules': matchedRules!,
        if (triggeredRules != null) 'triggeredRules': triggeredRules!,
      };
}

/// Represents a set of rules from a single customer.
class GoogleCloudContentwarehouseV1RuleSet {
  /// Short description of the rule-set.
  core.String? description;

  /// The resource name of the rule set.
  ///
  /// Managed internally. Format:
  /// projects/{project_number}/locations/{location}/ruleSet/{rule_set_id}. The
  /// name is ignored when creating a rule set.
  core.String? name;

  /// List of rules given by the customer.
  core.List<GoogleCloudContentwarehouseV1Rule>? rules;

  /// Source of the rules i.e., customer name.
  core.String? source;

  GoogleCloudContentwarehouseV1RuleSet({
    this.description,
    this.name,
    this.rules,
    this.source,
  });

  GoogleCloudContentwarehouseV1RuleSet.fromJson(core.Map json_)
      : this(
          description: json_.containsKey('description')
              ? json_['description'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          rules: json_.containsKey('rules')
              ? (json_['rules'] as core.List)
                  .map((value) => GoogleCloudContentwarehouseV1Rule.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          source: json_.containsKey('source')
              ? json_['source'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (description != null) 'description': description!,
        if (name != null) 'name': name!,
        if (rules != null) 'rules': rules!,
        if (source != null) 'source': source!,
      };
}

/// Request message for DocumentService.RunPipeline.
class GoogleCloudContentwarehouseV1RunPipelineRequest {
  /// Export docuemnts from Document Warehouse to CDW for training purpose.
  GoogleCloudContentwarehouseV1ExportToCdwPipeline? exportCdwPipeline;

  /// Cloud Storage ingestion pipeline.
  GoogleCloudContentwarehouseV1GcsIngestPipeline? gcsIngestPipeline;

  /// Use DocAI processors to process documents in Cloud Storage and ingest them
  /// to Document Warehouse.
  GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline?
      gcsIngestWithDocAiProcessorsPipeline;

  /// Use a DocAI processor to process documents in Document Warehouse, and
  /// re-ingest the updated results into Document Warehouse.
  GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline?
      processWithDocAiPipeline;

  /// The meta information collected about the end user, used to enforce access
  /// control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1RunPipelineRequest({
    this.exportCdwPipeline,
    this.gcsIngestPipeline,
    this.gcsIngestWithDocAiProcessorsPipeline,
    this.processWithDocAiPipeline,
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1RunPipelineRequest.fromJson(core.Map json_)
      : this(
          exportCdwPipeline: json_.containsKey('exportCdwPipeline')
              ? GoogleCloudContentwarehouseV1ExportToCdwPipeline.fromJson(
                  json_['exportCdwPipeline']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsIngestPipeline: json_.containsKey('gcsIngestPipeline')
              ? GoogleCloudContentwarehouseV1GcsIngestPipeline.fromJson(
                  json_['gcsIngestPipeline']
                      as core.Map<core.String, core.dynamic>)
              : null,
          gcsIngestWithDocAiProcessorsPipeline: json_
                  .containsKey('gcsIngestWithDocAiProcessorsPipeline')
              ? GoogleCloudContentwarehouseV1GcsIngestWithDocAiProcessorsPipeline
                  .fromJson(json_['gcsIngestWithDocAiProcessorsPipeline']
                      as core.Map<core.String, core.dynamic>)
              : null,
          processWithDocAiPipeline: json_
                  .containsKey('processWithDocAiPipeline')
              ? GoogleCloudContentwarehouseV1ProcessWithDocAiPipeline.fromJson(
                  json_['processWithDocAiPipeline']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (exportCdwPipeline != null) 'exportCdwPipeline': exportCdwPipeline!,
        if (gcsIngestPipeline != null) 'gcsIngestPipeline': gcsIngestPipeline!,
        if (gcsIngestWithDocAiProcessorsPipeline != null)
          'gcsIngestWithDocAiProcessorsPipeline':
              gcsIngestWithDocAiProcessorsPipeline!,
        if (processWithDocAiPipeline != null)
          'processWithDocAiPipeline': processWithDocAiPipeline!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Request message for DocumentService.SearchDocuments.
class GoogleCloudContentwarehouseV1SearchDocumentsRequest {
  /// Query used to search against documents (keyword, filters, etc.).
  GoogleCloudContentwarehouseV1DocumentQuery? documentQuery;

  /// An expression specifying a histogram request against matching documents.
  ///
  /// Expression syntax is an aggregation function call with histogram facets
  /// and other options. The following aggregation functions are supported: *
  /// `count(string_histogram_facet)`: Count the number of matching entities for
  /// each distinct attribute value. Data types: * Histogram facet (aka
  /// filterable properties): Facet names with format \<schema id\>.\<facet\>.
  /// Facets will have the format of: `a-zA-Z`. If the facet is a child facet,
  /// then the parent hierarchy needs to be specified separated by dots in the
  /// prefix after the schema id. Thus, the format for a multi- level facet is:
  /// \<schema id\>.\<parent facet name\>. \<child facet name\>. Example:
  /// schema123.root_parent_facet.middle_facet.child_facet * DocumentSchemaId:
  /// (with no schema id prefix) to get histograms for each document type
  /// (returns the schema id path, e.g.
  /// projects/12345/locations/us-west/documentSchemas/abc123). Example
  /// expression: * Document type counts: count('DocumentSchemaId') * For schema
  /// id, abc123, get the counts for MORTGAGE_TYPE:
  /// count('abc123.MORTGAGE_TYPE')
  core.List<GoogleCloudContentwarehouseV1HistogramQuery>? histogramQueries;

  /// An integer that specifies the current offset (that is, starting result
  /// location, amongst the documents deemed by the API as relevant) in search
  /// results.
  ///
  /// This field is only considered if page_token is unset. The maximum allowed
  /// value is 5000. Otherwise an error is thrown. For example, 0 means to
  /// return results starting from the first matching document, and 10 means to
  /// return from the 11th document. This can be used for pagination, (for
  /// example, pageSize = 10 and offset = 10 means to return from the second
  /// page).
  core.int? offset;

  /// The criteria determining how search results are sorted.
  ///
  /// For non-empty query, default is `"relevance desc"`. For empty query,
  /// default is `"upload_date desc"`. Supported options are: * `"relevance
  /// desc"`: By relevance descending, as determined by the API algorithms. *
  /// `"upload_date desc"`: By upload date descending. * `"upload_date"`: By
  /// upload date ascending. * `"update_date desc"`: By last updated date
  /// descending. * `"update_date"`: By last updated date ascending. *
  /// `"retrieval_importance desc"`: By retrieval importance of properties
  /// descending. This feature is still under development, please do not use
  /// unless otherwise instructed to do so.
  core.String? orderBy;

  /// A limit on the number of documents returned in the search results.
  ///
  /// Increasing this value above the default value of 10 can increase search
  /// response time. The value can be between 1 and 100.
  core.int? pageSize;

  /// The token specifying the current offset within search results.
  ///
  /// See SearchDocumentsResponse.next_page_token for an explanation of how to
  /// obtain the next set of query results.
  core.String? pageToken;

  /// Experimental, do not use.
  ///
  /// The limit on the number of documents returned for the question-answering
  /// feature. To enable the question-answering feature, set
  /// \[DocumentQuery\].is_nl_query to true.
  core.int? qaSizeLimit;

  /// The meta information collected about the end user, used to enforce access
  /// control and improve the search quality of the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  /// Controls if the search document request requires the return of a total
  /// size of matched documents.
  ///
  /// See SearchDocumentsResponse.total_size. Enabling this flag may adversely
  /// impact performance. Hint: If this is used with pagination, set this flag
  /// on the initial query but set this to false on subsequent page calls (keep
  /// the total count locally). Defaults to false.
  core.bool? requireTotalSize;

  /// Controls if the search document request requires the return of a total
  /// size of matched documents.
  ///
  /// See SearchDocumentsResponse.total_size.
  /// Possible string values are:
  /// - "TOTAL_RESULT_SIZE_UNSPECIFIED" : Total number calculation will be
  /// skipped.
  /// - "ESTIMATED_SIZE" : Estimate total number. The total result size will be
  /// accurated up to 10,000. This option will add cost and latency to your
  /// request.
  /// - "ACTUAL_SIZE" : It may adversely impact performance. The limit is
  /// 1000,000.
  core.String? totalResultSize;

  GoogleCloudContentwarehouseV1SearchDocumentsRequest({
    this.documentQuery,
    this.histogramQueries,
    this.offset,
    this.orderBy,
    this.pageSize,
    this.pageToken,
    this.qaSizeLimit,
    this.requestMetadata,
    this.requireTotalSize,
    this.totalResultSize,
  });

  GoogleCloudContentwarehouseV1SearchDocumentsRequest.fromJson(core.Map json_)
      : this(
          documentQuery: json_.containsKey('documentQuery')
              ? GoogleCloudContentwarehouseV1DocumentQuery.fromJson(
                  json_['documentQuery'] as core.Map<core.String, core.dynamic>)
              : null,
          histogramQueries: json_.containsKey('histogramQueries')
              ? (json_['histogramQueries'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1HistogramQuery.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          offset:
              json_.containsKey('offset') ? json_['offset'] as core.int : null,
          orderBy: json_.containsKey('orderBy')
              ? json_['orderBy'] as core.String
              : null,
          pageSize: json_.containsKey('pageSize')
              ? json_['pageSize'] as core.int
              : null,
          pageToken: json_.containsKey('pageToken')
              ? json_['pageToken'] as core.String
              : null,
          qaSizeLimit: json_.containsKey('qaSizeLimit')
              ? json_['qaSizeLimit'] as core.int
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          requireTotalSize: json_.containsKey('requireTotalSize')
              ? json_['requireTotalSize'] as core.bool
              : null,
          totalResultSize: json_.containsKey('totalResultSize')
              ? json_['totalResultSize'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentQuery != null) 'documentQuery': documentQuery!,
        if (histogramQueries != null) 'histogramQueries': histogramQueries!,
        if (offset != null) 'offset': offset!,
        if (orderBy != null) 'orderBy': orderBy!,
        if (pageSize != null) 'pageSize': pageSize!,
        if (pageToken != null) 'pageToken': pageToken!,
        if (qaSizeLimit != null) 'qaSizeLimit': qaSizeLimit!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
        if (requireTotalSize != null) 'requireTotalSize': requireTotalSize!,
        if (totalResultSize != null) 'totalResultSize': totalResultSize!,
      };
}

/// Response message for DocumentService.SearchDocuments.
class GoogleCloudContentwarehouseV1SearchDocumentsResponse {
  /// The histogram results that match with the specified
  /// SearchDocumentsRequest.histogram_queries.
  core.List<GoogleCloudContentwarehouseV1HistogramQueryResult>?
      histogramQueryResults;

  /// The document entities that match the specified SearchDocumentsRequest.
  core.List<
          GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument>?
      matchingDocuments;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  GoogleCloudContentwarehouseV1ResponseMetadata? metadata;

  /// The token that specifies the starting position of the next page of
  /// results.
  ///
  /// This field is empty if there are no more results.
  core.String? nextPageToken;

  /// Experimental.
  ///
  /// Question answer from the query against the document.
  core.String? questionAnswer;

  /// The total number of matched documents which is available only if the
  /// client set SearchDocumentsRequest.require_total_size to `true` or set
  /// SearchDocumentsRequest.total_result_size to `ESTIMATED_SIZE` or
  /// `ACTUAL_SIZE`.
  ///
  /// Otherwise, the value will be `-1`. Typically a UI would handle this
  /// condition by displaying "of many", for example: "Displaying 10 of many".
  core.int? totalSize;

  GoogleCloudContentwarehouseV1SearchDocumentsResponse({
    this.histogramQueryResults,
    this.matchingDocuments,
    this.metadata,
    this.nextPageToken,
    this.questionAnswer,
    this.totalSize,
  });

  GoogleCloudContentwarehouseV1SearchDocumentsResponse.fromJson(core.Map json_)
      : this(
          histogramQueryResults: json_.containsKey('histogramQueryResults')
              ? (json_['histogramQueryResults'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1HistogramQueryResult
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          matchingDocuments: json_.containsKey('matchingDocuments')
              ? (json_['matchingDocuments'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          metadata: json_.containsKey('metadata')
              ? GoogleCloudContentwarehouseV1ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          nextPageToken: json_.containsKey('nextPageToken')
              ? json_['nextPageToken'] as core.String
              : null,
          questionAnswer: json_.containsKey('questionAnswer')
              ? json_['questionAnswer'] as core.String
              : null,
          totalSize: json_.containsKey('totalSize')
              ? json_['totalSize'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (histogramQueryResults != null)
          'histogramQueryResults': histogramQueryResults!,
        if (matchingDocuments != null) 'matchingDocuments': matchingDocuments!,
        if (metadata != null) 'metadata': metadata!,
        if (nextPageToken != null) 'nextPageToken': nextPageToken!,
        if (questionAnswer != null) 'questionAnswer': questionAnswer!,
        if (totalSize != null) 'totalSize': totalSize!,
      };
}

/// Document entry with metadata inside SearchDocumentsResponse
class GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument {
  /// Document that matches the specified SearchDocumentsRequest.
  ///
  /// This document only contains indexed metadata information.
  GoogleCloudContentwarehouseV1Document? document;

  /// Return the 1-based page indices where those pages have one or more matched
  /// tokens.
  core.List<core.String>? matchedTokenPageIndices;

  /// Experimental.
  ///
  /// Additional result info if the question-answering feature is enabled.
  GoogleCloudContentwarehouseV1QAResult? qaResult;

  /// Contains snippets of text from the document full raw text that most
  /// closely match a search query's keywords, if available.
  ///
  /// All HTML tags in the original fields are stripped when returned in this
  /// field, and matching query keywords are enclosed in HTML bold tags. If the
  /// question-answering feature is enabled, this field will instead contain a
  /// snippet that answers the user's natural-language query. No HTML bold tags
  /// will be present, and highlights in the answer snippet can be found in
  /// QAResult.highlights.
  core.String? searchTextSnippet;

  GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument({
    this.document,
    this.matchedTokenPageIndices,
    this.qaResult,
    this.searchTextSnippet,
  });

  GoogleCloudContentwarehouseV1SearchDocumentsResponseMatchingDocument.fromJson(
      core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? GoogleCloudContentwarehouseV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          matchedTokenPageIndices: json_.containsKey('matchedTokenPageIndices')
              ? (json_['matchedTokenPageIndices'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          qaResult: json_.containsKey('qaResult')
              ? GoogleCloudContentwarehouseV1QAResult.fromJson(
                  json_['qaResult'] as core.Map<core.String, core.dynamic>)
              : null,
          searchTextSnippet: json_.containsKey('searchTextSnippet')
              ? json_['searchTextSnippet'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (matchedTokenPageIndices != null)
          'matchedTokenPageIndices': matchedTokenPageIndices!,
        if (qaResult != null) 'qaResult': qaResult!,
        if (searchTextSnippet != null) 'searchTextSnippet': searchTextSnippet!,
      };
}

/// Request message for DocumentService.SetAcl.
class GoogleCloudContentwarehouseV1SetAclRequest {
  /// REQUIRED: The complete policy to be applied to the `resource`.
  ///
  /// The size of the policy is limited to a few 10s of KB. This refers to an
  /// Identity and Access (IAM) policy, which specifies access controls for the
  /// Document. You can set ACL with condition for projects only. Supported
  /// operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the left of the
  /// operator is `DocumentSchemaId` or property name and the right of the
  /// operator is a number or a quoted string. You must escape backslash (\\)
  /// and quote (\") characters. Boolean expressions (AND/OR) are supported up
  /// to 3 levels of nesting (for example, "((A AND B AND C) OR D) AND E"), a
  /// maximum of 10 comparisons are allowed in the expression. The expression
  /// must be \< 6000 bytes in length. Sample condition: `"DocumentSchemaId =
  /// \"some schema id\" OR SchemaId.floatPropertyName >= 10"`
  ///
  /// Required.
  GoogleIamV1Policy? policy;

  /// For Set Project ACL only.
  ///
  /// Authorization check for end user will be ignored when project_owner=true.
  core.bool? projectOwner;

  /// The meta information collected about the end user, used to enforce access
  /// control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  GoogleCloudContentwarehouseV1SetAclRequest({
    this.policy,
    this.projectOwner,
    this.requestMetadata,
  });

  GoogleCloudContentwarehouseV1SetAclRequest.fromJson(core.Map json_)
      : this(
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
          projectOwner: json_.containsKey('projectOwner')
              ? json_['projectOwner'] as core.bool
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (policy != null) 'policy': policy!,
        if (projectOwner != null) 'projectOwner': projectOwner!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
      };
}

/// Response message for DocumentService.SetAcl.
class GoogleCloudContentwarehouseV1SetAclResponse {
  /// Additional information for the API invocation, such as the request
  /// tracking id.
  GoogleCloudContentwarehouseV1ResponseMetadata? metadata;

  /// The policy will be attached to a resource (e.g. projecct, document).
  GoogleIamV1Policy? policy;

  GoogleCloudContentwarehouseV1SetAclResponse({
    this.metadata,
    this.policy,
  });

  GoogleCloudContentwarehouseV1SetAclResponse.fromJson(core.Map json_)
      : this(
          metadata: json_.containsKey('metadata')
              ? GoogleCloudContentwarehouseV1ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          policy: json_.containsKey('policy')
              ? GoogleIamV1Policy.fromJson(
                  json_['policy'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (metadata != null) 'metadata': metadata!,
        if (policy != null) 'policy': policy!,
      };
}

/// Represents a list of synonyms for a given context.
///
/// For example a context "sales" could contain: Synonym 1: sale, invoice, bill,
/// order Synonym 2: money, credit, finance, payment Synonym 3: shipping,
/// freight, transport Each SynonymSets should be disjoint
class GoogleCloudContentwarehouseV1SynonymSet {
  /// This is a freeform field.
  ///
  /// Example contexts can be "sales," "engineering," "real estate,"
  /// "accounting," etc. The context can be supplied during search requests.
  core.String? context;

  /// The resource name of the SynonymSet This is mandatory for
  /// google.api.resource.
  ///
  /// Format:
  /// projects/{project_number}/locations/{location}/synonymSets/{context}.
  core.String? name;

  /// List of Synonyms for the context.
  core.List<GoogleCloudContentwarehouseV1SynonymSetSynonym>? synonyms;

  GoogleCloudContentwarehouseV1SynonymSet({
    this.context,
    this.name,
    this.synonyms,
  });

  GoogleCloudContentwarehouseV1SynonymSet.fromJson(core.Map json_)
      : this(
          context: json_.containsKey('context')
              ? json_['context'] as core.String
              : null,
          name: json_.containsKey('name') ? json_['name'] as core.String : null,
          synonyms: json_.containsKey('synonyms')
              ? (json_['synonyms'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1SynonymSetSynonym.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (context != null) 'context': context!,
        if (name != null) 'name': name!,
        if (synonyms != null) 'synonyms': synonyms!,
      };
}

/// Represents a list of words given by the customer All these words are
/// synonyms of each other.
class GoogleCloudContentwarehouseV1SynonymSetSynonym {
  /// For example: sale, invoice, bill, order
  core.List<core.String>? words;

  GoogleCloudContentwarehouseV1SynonymSetSynonym({
    this.words,
  });

  GoogleCloudContentwarehouseV1SynonymSetSynonym.fromJson(core.Map json_)
      : this(
          words: json_.containsKey('words')
              ? (json_['words'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (words != null) 'words': words!,
      };
}

/// String/text values.
class GoogleCloudContentwarehouseV1TextArray {
  /// List of text values.
  core.List<core.String>? values;

  GoogleCloudContentwarehouseV1TextArray({
    this.values,
  });

  GoogleCloudContentwarehouseV1TextArray.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Configurations for a text property.
typedef GoogleCloudContentwarehouseV1TextTypeOptions = $Empty;

/// Filter on create timestamp or update timestamp of documents.
class GoogleCloudContentwarehouseV1TimeFilter {
  /// Specifies which time field to filter documents on.
  ///
  /// Defaults to TimeField.UPLOAD_TIME.
  /// Possible string values are:
  /// - "TIME_FIELD_UNSPECIFIED" : Default value.
  /// - "CREATE_TIME" : Earliest document create time.
  /// - "UPDATE_TIME" : Latest document update time.
  /// - "DISPOSITION_TIME" : Time when document becomes mutable again.
  core.String? timeField;
  GoogleTypeInterval? timeRange;

  GoogleCloudContentwarehouseV1TimeFilter({
    this.timeField,
    this.timeRange,
  });

  GoogleCloudContentwarehouseV1TimeFilter.fromJson(core.Map json_)
      : this(
          timeField: json_.containsKey('timeField')
              ? json_['timeField'] as core.String
              : null,
          timeRange: json_.containsKey('timeRange')
              ? GoogleTypeInterval.fromJson(
                  json_['timeRange'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (timeField != null) 'timeField': timeField!,
        if (timeRange != null) 'timeRange': timeRange!,
      };
}

/// Timestamp values.
class GoogleCloudContentwarehouseV1TimestampArray {
  /// List of timestamp values.
  core.List<GoogleCloudContentwarehouseV1TimestampValue>? values;

  GoogleCloudContentwarehouseV1TimestampArray({
    this.values,
  });

  GoogleCloudContentwarehouseV1TimestampArray.fromJson(core.Map json_)
      : this(
          values: json_.containsKey('values')
              ? (json_['values'] as core.List)
                  .map((value) =>
                      GoogleCloudContentwarehouseV1TimestampValue.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (values != null) 'values': values!,
      };
}

/// Configurations for a timestamp property.
typedef GoogleCloudContentwarehouseV1TimestampTypeOptions = $Empty;

/// Timestamp value type.
class GoogleCloudContentwarehouseV1TimestampValue {
  /// The string must represent a valid instant in UTC and is parsed using
  /// java.time.format.DateTimeFormatter.ISO_INSTANT.
  ///
  /// e.g. "2013-09-29T18:46:19Z"
  core.String? textValue;

  /// Timestamp value
  core.String? timestampValue;

  GoogleCloudContentwarehouseV1TimestampValue({
    this.textValue,
    this.timestampValue,
  });

  GoogleCloudContentwarehouseV1TimestampValue.fromJson(core.Map json_)
      : this(
          textValue: json_.containsKey('textValue')
              ? json_['textValue'] as core.String
              : null,
          timestampValue: json_.containsKey('timestampValue')
              ? json_['timestampValue'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (textValue != null) 'textValue': textValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
      };
}

/// Request message for DocumentService.UpdateDocument.
class GoogleCloudContentwarehouseV1UpdateDocumentRequest {
  /// Request Option for processing Cloud AI Document in Document Warehouse.
  ///
  /// This field offers limited support for mapping entities from Cloud AI
  /// Document to Warehouse Document. Please consult with product team before
  /// using this field and other available options.
  GoogleCloudContentwarehouseV1CloudAIDocumentOption? cloudAiDocumentOption;

  /// The document to update.
  ///
  /// Required.
  GoogleCloudContentwarehouseV1Document? document;

  /// The meta information collected about the end user, used to enforce access
  /// control for the service.
  GoogleCloudContentwarehouseV1RequestMetadata? requestMetadata;

  /// Options for the update operation.
  GoogleCloudContentwarehouseV1UpdateOptions? updateOptions;

  GoogleCloudContentwarehouseV1UpdateDocumentRequest({
    this.cloudAiDocumentOption,
    this.document,
    this.requestMetadata,
    this.updateOptions,
  });

  GoogleCloudContentwarehouseV1UpdateDocumentRequest.fromJson(core.Map json_)
      : this(
          cloudAiDocumentOption: json_.containsKey('cloudAiDocumentOption')
              ? GoogleCloudContentwarehouseV1CloudAIDocumentOption.fromJson(
                  json_['cloudAiDocumentOption']
                      as core.Map<core.String, core.dynamic>)
              : null,
          document: json_.containsKey('document')
              ? GoogleCloudContentwarehouseV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          requestMetadata: json_.containsKey('requestMetadata')
              ? GoogleCloudContentwarehouseV1RequestMetadata.fromJson(
                  json_['requestMetadata']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateOptions: json_.containsKey('updateOptions')
              ? GoogleCloudContentwarehouseV1UpdateOptions.fromJson(
                  json_['updateOptions'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cloudAiDocumentOption != null)
          'cloudAiDocumentOption': cloudAiDocumentOption!,
        if (document != null) 'document': document!,
        if (requestMetadata != null) 'requestMetadata': requestMetadata!,
        if (updateOptions != null) 'updateOptions': updateOptions!,
      };
}

/// Response message for DocumentService.UpdateDocument.
class GoogleCloudContentwarehouseV1UpdateDocumentResponse {
  /// Updated document after executing update request.
  GoogleCloudContentwarehouseV1Document? document;

  /// Additional information for the API invocation, such as the request
  /// tracking id.
  GoogleCloudContentwarehouseV1ResponseMetadata? metadata;

  /// Output from Rule Engine recording the rule evaluator and action executor's
  /// output.
  ///
  /// Refer format in: google/cloud/contentwarehouse/v1/rule_engine.proto
  GoogleCloudContentwarehouseV1RuleEngineOutput? ruleEngineOutput;

  GoogleCloudContentwarehouseV1UpdateDocumentResponse({
    this.document,
    this.metadata,
    this.ruleEngineOutput,
  });

  GoogleCloudContentwarehouseV1UpdateDocumentResponse.fromJson(core.Map json_)
      : this(
          document: json_.containsKey('document')
              ? GoogleCloudContentwarehouseV1Document.fromJson(
                  json_['document'] as core.Map<core.String, core.dynamic>)
              : null,
          metadata: json_.containsKey('metadata')
              ? GoogleCloudContentwarehouseV1ResponseMetadata.fromJson(
                  json_['metadata'] as core.Map<core.String, core.dynamic>)
              : null,
          ruleEngineOutput: json_.containsKey('ruleEngineOutput')
              ? GoogleCloudContentwarehouseV1RuleEngineOutput.fromJson(
                  json_['ruleEngineOutput']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (document != null) 'document': document!,
        if (metadata != null) 'metadata': metadata!,
        if (ruleEngineOutput != null) 'ruleEngineOutput': ruleEngineOutput!,
      };
}

/// Request message for DocumentSchemaService.UpdateDocumentSchema.
class GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest {
  /// The document schema to update with.
  ///
  /// Required.
  GoogleCloudContentwarehouseV1DocumentSchema? documentSchema;

  GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest({
    this.documentSchema,
  });

  GoogleCloudContentwarehouseV1UpdateDocumentSchemaRequest.fromJson(
      core.Map json_)
      : this(
          documentSchema: json_.containsKey('documentSchema')
              ? GoogleCloudContentwarehouseV1DocumentSchema.fromJson(
                  json_['documentSchema']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentSchema != null) 'documentSchema': documentSchema!,
      };
}

/// Options for Update operations.
class GoogleCloudContentwarehouseV1UpdateOptions {
  /// Options for merging.
  GoogleCloudContentwarehouseV1MergeFieldsOptions? mergeFieldsOptions;

  /// Field mask for merging Document fields.
  ///
  /// For the `FieldMask` definition, see
  /// https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
  core.String? updateMask;

  /// Type for update.
  /// Possible string values are:
  /// - "UPDATE_TYPE_UNSPECIFIED" : Defaults to full replace behavior, ie.
  /// FULL_REPLACE.
  /// - "UPDATE_TYPE_REPLACE" : Fully replace all the fields (including
  /// previously linked raw document). Any field masks will be ignored.
  /// - "UPDATE_TYPE_MERGE" : Merge the fields into the existing entities.
  /// - "UPDATE_TYPE_INSERT_PROPERTIES_BY_NAMES" : Inserts the properties by
  /// names.
  /// - "UPDATE_TYPE_REPLACE_PROPERTIES_BY_NAMES" : Replace the properties by
  /// names.
  /// - "UPDATE_TYPE_DELETE_PROPERTIES_BY_NAMES" : Delete the properties by
  /// names.
  /// - "UPDATE_TYPE_MERGE_AND_REPLACE_OR_INSERT_PROPERTIES_BY_NAMES" : For each
  /// of the property, replaces the property if the it exists, otherwise inserts
  /// a new property. And for the rest of the fields, merge them based on update
  /// mask and merge fields options.
  core.String? updateType;

  GoogleCloudContentwarehouseV1UpdateOptions({
    this.mergeFieldsOptions,
    this.updateMask,
    this.updateType,
  });

  GoogleCloudContentwarehouseV1UpdateOptions.fromJson(core.Map json_)
      : this(
          mergeFieldsOptions: json_.containsKey('mergeFieldsOptions')
              ? GoogleCloudContentwarehouseV1MergeFieldsOptions.fromJson(
                  json_['mergeFieldsOptions']
                      as core.Map<core.String, core.dynamic>)
              : null,
          updateMask: json_.containsKey('updateMask')
              ? json_['updateMask'] as core.String
              : null,
          updateType: json_.containsKey('updateType')
              ? json_['updateType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (mergeFieldsOptions != null)
          'mergeFieldsOptions': mergeFieldsOptions!,
        if (updateMask != null) 'updateMask': updateMask!,
        if (updateType != null) 'updateType': updateType!,
      };
}

/// Request message for RuleSetService.UpdateRuleSet.
class GoogleCloudContentwarehouseV1UpdateRuleSetRequest {
  /// The rule set to update.
  ///
  /// Required.
  GoogleCloudContentwarehouseV1RuleSet? ruleSet;

  GoogleCloudContentwarehouseV1UpdateRuleSetRequest({
    this.ruleSet,
  });

  GoogleCloudContentwarehouseV1UpdateRuleSetRequest.fromJson(core.Map json_)
      : this(
          ruleSet: json_.containsKey('ruleSet')
              ? GoogleCloudContentwarehouseV1RuleSet.fromJson(
                  json_['ruleSet'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (ruleSet != null) 'ruleSet': ruleSet!,
      };
}

/// The user information.
class GoogleCloudContentwarehouseV1UserInfo {
  /// The unique group identifications which the user is belong to.
  ///
  /// The format is "group:yyyy@example.com";
  core.List<core.String>? groupIds;

  /// A unique user identification string, as determined by the client.
  ///
  /// The maximum number of allowed characters is 255. Allowed characters
  /// include numbers 0 to 9, uppercase and lowercase letters, and restricted
  /// special symbols (:, @, +, -, _, ~) The format is "user:xxxx@example.com";
  core.String? id;

  GoogleCloudContentwarehouseV1UserInfo({
    this.groupIds,
    this.id,
  });

  GoogleCloudContentwarehouseV1UserInfo.fromJson(core.Map json_)
      : this(
          groupIds: json_.containsKey('groupIds')
              ? (json_['groupIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (groupIds != null) 'groupIds': groupIds!,
        if (id != null) 'id': id!,
      };
}

/// `Value` represents a dynamically typed value which can be either be a float,
/// a integer, a string, or a datetime value.
///
/// A producer of value is expected to set one of these variants. Absence of any
/// variant indicates an error.
class GoogleCloudContentwarehouseV1Value {
  /// Represents a boolean value.
  core.bool? booleanValue;

  /// Represents a datetime value.
  GoogleTypeDateTime? datetimeValue;

  /// Represents an enum value.
  GoogleCloudContentwarehouseV1EnumValue? enumValue;

  /// Represents a float value.
  core.double? floatValue;

  /// Represents a integer value.
  core.int? intValue;

  /// Represents a string value.
  core.String? stringValue;

  /// Represents a timestamp value.
  GoogleCloudContentwarehouseV1TimestampValue? timestampValue;

  GoogleCloudContentwarehouseV1Value({
    this.booleanValue,
    this.datetimeValue,
    this.enumValue,
    this.floatValue,
    this.intValue,
    this.stringValue,
    this.timestampValue,
  });

  GoogleCloudContentwarehouseV1Value.fromJson(core.Map json_)
      : this(
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          datetimeValue: json_.containsKey('datetimeValue')
              ? GoogleTypeDateTime.fromJson(
                  json_['datetimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          enumValue: json_.containsKey('enumValue')
              ? GoogleCloudContentwarehouseV1EnumValue.fromJson(
                  json_['enumValue'] as core.Map<core.String, core.dynamic>)
              : null,
          floatValue: json_.containsKey('floatValue')
              ? (json_['floatValue'] as core.num).toDouble()
              : null,
          intValue: json_.containsKey('intValue')
              ? json_['intValue'] as core.int
              : null,
          stringValue: json_.containsKey('stringValue')
              ? json_['stringValue'] as core.String
              : null,
          timestampValue: json_.containsKey('timestampValue')
              ? GoogleCloudContentwarehouseV1TimestampValue.fromJson(
                  json_['timestampValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (datetimeValue != null) 'datetimeValue': datetimeValue!,
        if (enumValue != null) 'enumValue': enumValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (intValue != null) 'intValue': intValue!,
        if (stringValue != null) 'stringValue': stringValue!,
        if (timestampValue != null) 'timestampValue': timestampValue!,
      };
}

/// Specifies the schema property name.
class GoogleCloudContentwarehouseV1WeightedSchemaProperty {
  /// The document schema name.
  core.String? documentSchemaName;

  /// The property definition names in the schema.
  core.List<core.String>? propertyNames;

  GoogleCloudContentwarehouseV1WeightedSchemaProperty({
    this.documentSchemaName,
    this.propertyNames,
  });

  GoogleCloudContentwarehouseV1WeightedSchemaProperty.fromJson(core.Map json_)
      : this(
          documentSchemaName: json_.containsKey('documentSchemaName')
              ? json_['documentSchemaName'] as core.String
              : null,
          propertyNames: json_.containsKey('propertyNames')
              ? (json_['propertyNames'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (documentSchemaName != null)
          'documentSchemaName': documentSchemaName!,
        if (propertyNames != null) 'propertyNames': propertyNames!,
      };
}

/// Encodes the detailed information of a barcode.
typedef GoogleCloudDocumentaiV1Barcode = $GoogleCloudDocumentaiV1Barcode;

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDocumentaiV1NormalizedVertex>? normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudDocumentaiV1Vertex>? vertices;

  GoogleCloudDocumentaiV1BoundingPoly({
    this.normalizedVertices,
    this.vertices,
  });

  GoogleCloudDocumentaiV1BoundingPoly.fromJson(core.Map json_)
      : this(
          normalizedVertices: json_.containsKey('normalizedVertices')
              ? (json_['normalizedVertices'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1NormalizedVertex.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          vertices: json_.containsKey('vertices')
              ? (json_['vertices'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1Vertex.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (normalizedVertices != null)
          'normalizedVertices': normalizedVertices!,
        if (vertices != null) 'vertices': vertices!,
      };
}

/// Document represents the canonical document resource in Document AI.
///
/// It is an interchange format that provides insights into documents and allows
/// for collaboration between users and Document AI to iterate and optimize for
/// quality.
class GoogleCloudDocumentaiV1Document {
  /// Inline document content, represented as a stream of bytes.
  ///
  /// Note: As with all `bytes` fields, protobuffers use a pure binary
  /// representation, whereas JSON representations use base64.
  ///
  /// Optional.
  core.String? content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content!);

  set contentAsBytes(core.List<core.int> bytes_) {
    content =
        convert.base64.encode(bytes_).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A list of entities detected on Document.text.
  ///
  /// For document shards, entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1DocumentEntity>? entities;

  /// Placeholder.
  ///
  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1DocumentEntityRelation>? entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus? error;

  /// An IANA published \[media type (MIME
  /// type)\](https://www.iana.org/assignments/media-types/media-types.xhtml).
  core.String? mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1DocumentPage>? pages;

  /// Placeholder.
  ///
  /// Revision history of this document.
  core.List<GoogleCloudDocumentaiV1DocumentRevision>? revisions;

  /// Information about the sharding if this document is sharded part of a
  /// larger document.
  ///
  /// If the document is not sharded, this message is not specified.
  GoogleCloudDocumentaiV1DocumentShardInfo? shardInfo;

  /// UTF-8 encoded text in reading order from the document.
  ///
  /// Optional.
  core.String? text;

  /// Placeholder.
  ///
  /// A list of text corrections made to Document.text. This is usually used for
  /// annotating corrections to OCR mistakes. Text changes for a given revision
  /// may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1DocumentTextChange>? textChanges;

  /// Styles for the Document.text.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudDocumentaiV1DocumentStyle>? textStyles;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`.
  ///
  /// Object versioning is not supported. For more information, refer to
  /// [Google Cloud Storage Request URIs](https://cloud.google.com/storage/docs/reference-uris).
  ///
  /// Optional.
  core.String? uri;

  GoogleCloudDocumentaiV1Document({
    this.content,
    this.entities,
    this.entityRelations,
    this.error,
    this.mimeType,
    this.pages,
    this.revisions,
    this.shardInfo,
    this.text,
    this.textChanges,
    this.textStyles,
    this.uri,
  });

  GoogleCloudDocumentaiV1Document.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          entities: json_.containsKey('entities')
              ? (json_['entities'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          entityRelations: json_.containsKey('entityRelations')
              ? (json_['entityRelations'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntityRelation.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
                  json_['error'] as core.Map<core.String, core.dynamic>)
              : null,
          mimeType: json_.containsKey('mimeType')
              ? json_['mimeType'] as core.String
              : null,
          pages: json_.containsKey('pages')
              ? (json_['pages'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1DocumentPage.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revisions: json_.containsKey('revisions')
              ? (json_['revisions'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentRevision.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          shardInfo: json_.containsKey('shardInfo')
              ? GoogleCloudDocumentaiV1DocumentShardInfo.fromJson(
                  json_['shardInfo'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
          textChanges: json_.containsKey('textChanges')
              ? (json_['textChanges'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentTextChange.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textStyles: json_.containsKey('textStyles')
              ? (json_['textStyles'] as core.List)
                  .map((value) => GoogleCloudDocumentaiV1DocumentStyle.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          uri: json_.containsKey('uri') ? json_['uri'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (entities != null) 'entities': entities!,
        if (entityRelations != null) 'entityRelations': entityRelations!,
        if (error != null) 'error': error!,
        if (mimeType != null) 'mimeType': mimeType!,
        if (pages != null) 'pages': pages!,
        if (revisions != null) 'revisions': revisions!,
        if (shardInfo != null) 'shardInfo': shardInfo!,
        if (text != null) 'text': text!,
        if (textChanges != null) 'textChanges': textChanges!,
        if (textStyles != null) 'textStyles': textStyles!,
        if (uri != null) 'uri': uri!,
      };
}

/// An entity that could be a phrase in the text or a property that belongs to
/// the document.
///
/// It is a known entity type, such as a person, an organization, or location.
class GoogleCloudDocumentaiV1DocumentEntity {
  /// Confidence of detected Schema entity.
  ///
  /// Range `[0, 1]`.
  ///
  /// Optional.
  core.double? confidence;

  /// Canonical id.
  ///
  /// This will be a unique value in the entity list for this document.
  ///
  /// Optional.
  core.String? id;

  /// Use `id` field instead.
  ///
  /// Optional. Deprecated.
  core.String? mentionId;

  /// Text value of the entity e.g. `1600 Amphitheatre Pkwy`.
  ///
  /// Optional.
  core.String? mentionText;

  /// Normalized entity value.
  ///
  /// Absent if the extracted value could not be converted or the type (e.g.
  /// address) is not supported for certain parsers. This field is also only
  /// populated for certain supported document types.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue? normalizedValue;

  /// Represents the provenance of this entity wrt.
  ///
  /// the location on the page where it was found.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentPageAnchor? pageAnchor;

  /// Entities can be nested to form a hierarchical data structure representing
  /// the content in the document.
  ///
  /// Optional.
  core.List<GoogleCloudDocumentaiV1DocumentEntity>? properties;

  /// The history of this annotation.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// Whether the entity will be redacted for de-identification purposes.
  ///
  /// Optional.
  core.bool? redacted;

  /// Provenance of the entity.
  ///
  /// Text anchor indexing into the Document.text.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  /// Entity type from a schema e.g. `Address`.
  ///
  /// Required.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentEntity({
    this.confidence,
    this.id,
    this.mentionId,
    this.mentionText,
    this.normalizedValue,
    this.pageAnchor,
    this.properties,
    this.provenance,
    this.redacted,
    this.textAnchor,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentEntity.fromJson(core.Map json_)
      : this(
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          mentionId: json_.containsKey('mentionId')
              ? json_['mentionId'] as core.String
              : null,
          mentionText: json_.containsKey('mentionText')
              ? json_['mentionText'] as core.String
              : null,
          normalizedValue: json_.containsKey('normalizedValue')
              ? GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(
                  json_['normalizedValue']
                      as core.Map<core.String, core.dynamic>)
              : null,
          pageAnchor: json_.containsKey('pageAnchor')
              ? GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(
                  json_['pageAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          properties: json_.containsKey('properties')
              ? (json_['properties'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentEntity.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          redacted: json_.containsKey('redacted')
              ? json_['redacted'] as core.bool
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (confidence != null) 'confidence': confidence!,
        if (id != null) 'id': id!,
        if (mentionId != null) 'mentionId': mentionId!,
        if (mentionText != null) 'mentionText': mentionText!,
        if (normalizedValue != null) 'normalizedValue': normalizedValue!,
        if (pageAnchor != null) 'pageAnchor': pageAnchor!,
        if (properties != null) 'properties': properties!,
        if (provenance != null) 'provenance': provenance!,
        if (redacted != null) 'redacted': redacted!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
        if (type != null) 'type': type!,
      };
}

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1DocumentEntityNormalizedValue {
  /// Postal address.
  ///
  /// See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/postal_address.proto
  GoogleTypePostalAddress? addressValue;

  /// Boolean value.
  ///
  /// Can be used for entities with binary values, or for checkboxes.
  core.bool? booleanValue;

  /// Date value.
  ///
  /// Includes year, month, day. See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/date.proto
  GoogleTypeDate? dateValue;

  /// DateTime value.
  ///
  /// Includes date, time, and timezone. See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/datetime.proto
  GoogleTypeDateTime? datetimeValue;

  /// Float value.
  core.double? floatValue;

  /// Integer value.
  core.int? integerValue;

  /// Money value.
  ///
  /// See also:
  /// https://github.com/googleapis/googleapis/blob/master/google/type/money.proto
  GoogleTypeMoney? moneyValue;

  /// An optional field to store a normalized string.
  ///
  /// For some entity types, one of respective `structured_value` fields may
  /// also be populated. Also not all the types of `structured_value` will be
  /// normalized. For example, some processors may not generate `float` or
  /// `integer` normalized text by default. Below are sample formats mapped to
  /// structured values. - Money/Currency type (`money_value`) is in the ISO
  /// 4217 text format. - Date type (`date_value`) is in the ISO 8601 text
  /// format. - Datetime type (`datetime_value`) is in the ISO 8601 text format.
  ///
  /// Optional.
  core.String? text;

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue({
    this.addressValue,
    this.booleanValue,
    this.dateValue,
    this.datetimeValue,
    this.floatValue,
    this.integerValue,
    this.moneyValue,
    this.text,
  });

  GoogleCloudDocumentaiV1DocumentEntityNormalizedValue.fromJson(core.Map json_)
      : this(
          addressValue: json_.containsKey('addressValue')
              ? GoogleTypePostalAddress.fromJson(
                  json_['addressValue'] as core.Map<core.String, core.dynamic>)
              : null,
          booleanValue: json_.containsKey('booleanValue')
              ? json_['booleanValue'] as core.bool
              : null,
          dateValue: json_.containsKey('dateValue')
              ? GoogleTypeDate.fromJson(
                  json_['dateValue'] as core.Map<core.String, core.dynamic>)
              : null,
          datetimeValue: json_.containsKey('datetimeValue')
              ? GoogleTypeDateTime.fromJson(
                  json_['datetimeValue'] as core.Map<core.String, core.dynamic>)
              : null,
          floatValue: json_.containsKey('floatValue')
              ? (json_['floatValue'] as core.num).toDouble()
              : null,
          integerValue: json_.containsKey('integerValue')
              ? json_['integerValue'] as core.int
              : null,
          moneyValue: json_.containsKey('moneyValue')
              ? GoogleTypeMoney.fromJson(
                  json_['moneyValue'] as core.Map<core.String, core.dynamic>)
              : null,
          text: json_.containsKey('text') ? json_['text'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (addressValue != null) 'addressValue': addressValue!,
        if (booleanValue != null) 'booleanValue': booleanValue!,
        if (dateValue != null) 'dateValue': dateValue!,
        if (datetimeValue != null) 'datetimeValue': datetimeValue!,
        if (floatValue != null) 'floatValue': floatValue!,
        if (integerValue != null) 'integerValue': integerValue!,
        if (moneyValue != null) 'moneyValue': moneyValue!,
        if (text != null) 'text': text!,
      };
}

/// Relationship between Entities.
typedef GoogleCloudDocumentaiV1DocumentEntityRelation
    = $GoogleCloudDocumentaiV1DocumentEntityRelation;

/// A page in a Document.
class GoogleCloudDocumentaiV1DocumentPage {
  /// A list of visually detected text blocks on the page.
  ///
  /// A block has a set of lines (collected into paragraphs) that have a common
  /// line-spacing and orientation.
  core.List<GoogleCloudDocumentaiV1DocumentPageBlock>? blocks;

  /// A list of detected barcodes.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedBarcode>?
      detectedBarcodes;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Physical dimension of the page.
  GoogleCloudDocumentaiV1DocumentPageDimension? dimension;

  /// A list of visually detected form fields on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageFormField>? formFields;

  /// Rendered image for this page.
  ///
  /// This image is preprocessed to remove any skew, rotation, and distortions
  /// such that the annotation bounding boxes can be upright and axis-aligned.
  GoogleCloudDocumentaiV1DocumentPageImage? image;

  /// Image quality scores.
  GoogleCloudDocumentaiV1DocumentPageImageQualityScores? imageQualityScores;

  /// Layout for the page.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// A list of visually detected text lines on the page.
  ///
  /// A collection of tokens that a human would perceive as a line.
  core.List<GoogleCloudDocumentaiV1DocumentPageLine>? lines;

  /// 1-based index for current Page in a parent Document.
  ///
  /// Useful when a page is taken out of a Document for individual processing.
  core.int? pageNumber;

  /// A list of visually detected text paragraphs on the page.
  ///
  /// A collection of lines that a human would perceive as a paragraph.
  core.List<GoogleCloudDocumentaiV1DocumentPageParagraph>? paragraphs;

  /// The history of this page.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// A list of visually detected symbols on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageSymbol>? symbols;

  /// A list of visually detected tables on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageTable>? tables;

  /// A list of visually detected tokens on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageToken>? tokens;

  /// Transformation matrices that were applied to the original document image
  /// to produce Page.image.
  core.List<GoogleCloudDocumentaiV1DocumentPageMatrix>? transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc.
  ///
  /// on the page.
  core.List<GoogleCloudDocumentaiV1DocumentPageVisualElement>? visualElements;

  GoogleCloudDocumentaiV1DocumentPage({
    this.blocks,
    this.detectedBarcodes,
    this.detectedLanguages,
    this.dimension,
    this.formFields,
    this.image,
    this.imageQualityScores,
    this.layout,
    this.lines,
    this.pageNumber,
    this.paragraphs,
    this.provenance,
    this.symbols,
    this.tables,
    this.tokens,
    this.transforms,
    this.visualElements,
  });

  GoogleCloudDocumentaiV1DocumentPage.fromJson(core.Map json_)
      : this(
          blocks: json_.containsKey('blocks')
              ? (json_['blocks'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedBarcodes: json_.containsKey('detectedBarcodes')
              ? (json_['detectedBarcodes'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedBarcode
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          dimension: json_.containsKey('dimension')
              ? GoogleCloudDocumentaiV1DocumentPageDimension.fromJson(
                  json_['dimension'] as core.Map<core.String, core.dynamic>)
              : null,
          formFields: json_.containsKey('formFields')
              ? (json_['formFields'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          image: json_.containsKey('image')
              ? GoogleCloudDocumentaiV1DocumentPageImage.fromJson(
                  json_['image'] as core.Map<core.String, core.dynamic>)
              : null,
          imageQualityScores: json_.containsKey('imageQualityScores')
              ? GoogleCloudDocumentaiV1DocumentPageImageQualityScores.fromJson(
                  json_['imageQualityScores']
                      as core.Map<core.String, core.dynamic>)
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          lines: json_.containsKey('lines')
              ? (json_['lines'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageLine.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          pageNumber: json_.containsKey('pageNumber')
              ? json_['pageNumber'] as core.int
              : null,
          paragraphs: json_.containsKey('paragraphs')
              ? (json_['paragraphs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          symbols: json_.containsKey('symbols')
              ? (json_['symbols'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageSymbol.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tables: json_.containsKey('tables')
              ? (json_['tables'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTable.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          tokens: json_.containsKey('tokens')
              ? (json_['tokens'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageToken.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          transforms: json_.containsKey('transforms')
              ? (json_['transforms'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageMatrix.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          visualElements: json_.containsKey('visualElements')
              ? (json_['visualElements'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (blocks != null) 'blocks': blocks!,
        if (detectedBarcodes != null) 'detectedBarcodes': detectedBarcodes!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (dimension != null) 'dimension': dimension!,
        if (formFields != null) 'formFields': formFields!,
        if (image != null) 'image': image!,
        if (imageQualityScores != null)
          'imageQualityScores': imageQualityScores!,
        if (layout != null) 'layout': layout!,
        if (lines != null) 'lines': lines!,
        if (pageNumber != null) 'pageNumber': pageNumber!,
        if (paragraphs != null) 'paragraphs': paragraphs!,
        if (provenance != null) 'provenance': provenance!,
        if (symbols != null) 'symbols': symbols!,
        if (tables != null) 'tables': tables!,
        if (tokens != null) 'tokens': tokens!,
        if (transforms != null) 'transforms': transforms!,
        if (visualElements != null) 'visualElements': visualElements!,
      };
}

/// Referencing the visual context of the entity in the Document.pages.
///
/// Page anchors can be cross-page, consist of multiple bounding polygons and
/// optionally reference specific layout element types.
class GoogleCloudDocumentaiV1DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1DocumentPageAnchorPageRef>? pageRefs;

  GoogleCloudDocumentaiV1DocumentPageAnchor({
    this.pageRefs,
  });

  GoogleCloudDocumentaiV1DocumentPageAnchor.fromJson(core.Map json_)
      : this(
          pageRefs: json_.containsKey('pageRefs')
              ? (json_['pageRefs'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (pageRefs != null) 'pageRefs': pageRefs!,
      };
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1DocumentPageAnchorPageRef {
  /// Identifies the bounding polygon of a layout element on the page.
  ///
  /// If `layout_type` is set, the bounding polygon must be exactly the same to
  /// the layout element it's referring to.
  ///
  /// Optional.
  GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of detected page element, if applicable.
  ///
  /// Range `[0, 1]`.
  ///
  /// Optional.
  core.double? confidence;

  /// Use PageRef.bounding_poly instead.
  ///
  /// Optional. Deprecated.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.String? layoutId;

  /// The type of the layout element that is being referenced if any.
  ///
  /// Optional.
  /// Possible string values are:
  /// - "LAYOUT_TYPE_UNSPECIFIED" : Layout Unspecified.
  /// - "BLOCK" : References a Page.blocks element.
  /// - "PARAGRAPH" : References a Page.paragraphs element.
  /// - "LINE" : References a Page.lines element.
  /// - "TOKEN" : References a Page.tokens element.
  /// - "VISUAL_ELEMENT" : References a Page.visual_elements element.
  /// - "TABLE" : Refrrences a Page.tables element.
  /// - "FORM_FIELD" : References a Page.form_fields element.
  core.String? layoutType;

  /// Index into the Document.pages element, for example using `Document.pages`
  /// to locate the related page element.
  ///
  /// This field is skipped when its value is the default `0`. See
  /// https://developers.google.com/protocol-buffers/docs/proto3#json.
  ///
  /// Required.
  core.String? page;

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef({
    this.boundingPoly,
    this.confidence,
    this.layoutId,
    this.layoutType,
    this.page,
  });

  GoogleCloudDocumentaiV1DocumentPageAnchorPageRef.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          layoutId: json_.containsKey('layoutId')
              ? json_['layoutId'] as core.String
              : null,
          layoutType: json_.containsKey('layoutType')
              ? json_['layoutType'] as core.String
              : null,
          page: json_.containsKey('page') ? json_['page'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (confidence != null) 'confidence': confidence!,
        if (layoutId != null) 'layoutId': layoutId!,
        if (layoutType != null) 'layoutType': layoutType!,
        if (page != null) 'page': page!,
      };
}

/// A block has a set of lines (collected into paragraphs) that have a common
/// line-spacing and orientation.
class GoogleCloudDocumentaiV1DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageBlock({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageBlock.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// A detected barcode.
class GoogleCloudDocumentaiV1DocumentPageDetectedBarcode {
  /// Detailed barcode information of the DetectedBarcode.
  GoogleCloudDocumentaiV1Barcode? barcode;

  /// Layout for DetectedBarcode.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1DocumentPageDetectedBarcode({
    this.barcode,
    this.layout,
  });

  GoogleCloudDocumentaiV1DocumentPageDetectedBarcode.fromJson(core.Map json_)
      : this(
          barcode: json_.containsKey('barcode')
              ? GoogleCloudDocumentaiV1Barcode.fromJson(
                  json_['barcode'] as core.Map<core.String, core.dynamic>)
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (barcode != null) 'barcode': barcode!,
        if (layout != null) 'layout': layout!,
      };
}

/// Detected language for a structural component.
typedef GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
    = $GoogleCloudDocumentaiV1DocumentPageDetectedLanguage;

/// Dimension for the page.
typedef GoogleCloudDocumentaiV1DocumentPageDimension
    = $GoogleCloudDocumentaiV1DocumentPageDimension;

/// A form field detected on the page.
class GoogleCloudDocumentaiV1DocumentPageFormField {
  /// Created for Labeling UI to export key text.
  ///
  /// If corrections were made to the text identified by the
  /// `field_name.text_anchor`, this field will contain the correction.
  core.String? correctedKeyText;

  /// Created for Labeling UI to export value text.
  ///
  /// If corrections were made to the text identified by the
  /// `field_value.text_anchor`, this field will contain the correction.
  core.String? correctedValueText;

  /// Layout for the FormField name.
  ///
  /// e.g. `Address`, `Email`, `Grand total`, `Phone number`, etc.
  GoogleCloudDocumentaiV1DocumentPageLayout? fieldName;

  /// Layout for the FormField value.
  GoogleCloudDocumentaiV1DocumentPageLayout? fieldValue;

  /// A list of detected languages for name together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      nameDetectedLanguages;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// A list of detected languages for value together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type.
  ///
  /// Current valid values are: - blank (this indicates the `field_value` is
  /// normal text) - `unfilled_checkbox` - `filled_checkbox`
  core.String? valueType;

  GoogleCloudDocumentaiV1DocumentPageFormField({
    this.correctedKeyText,
    this.correctedValueText,
    this.fieldName,
    this.fieldValue,
    this.nameDetectedLanguages,
    this.provenance,
    this.valueDetectedLanguages,
    this.valueType,
  });

  GoogleCloudDocumentaiV1DocumentPageFormField.fromJson(core.Map json_)
      : this(
          correctedKeyText: json_.containsKey('correctedKeyText')
              ? json_['correctedKeyText'] as core.String
              : null,
          correctedValueText: json_.containsKey('correctedValueText')
              ? json_['correctedValueText'] as core.String
              : null,
          fieldName: json_.containsKey('fieldName')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['fieldName'] as core.Map<core.String, core.dynamic>)
              : null,
          fieldValue: json_.containsKey('fieldValue')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['fieldValue'] as core.Map<core.String, core.dynamic>)
              : null,
          nameDetectedLanguages: json_.containsKey('nameDetectedLanguages')
              ? (json_['nameDetectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          valueDetectedLanguages: json_.containsKey('valueDetectedLanguages')
              ? (json_['valueDetectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          valueType: json_.containsKey('valueType')
              ? json_['valueType'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (correctedKeyText != null) 'correctedKeyText': correctedKeyText!,
        if (correctedValueText != null)
          'correctedValueText': correctedValueText!,
        if (fieldName != null) 'fieldName': fieldName!,
        if (fieldValue != null) 'fieldValue': fieldValue!,
        if (nameDetectedLanguages != null)
          'nameDetectedLanguages': nameDetectedLanguages!,
        if (provenance != null) 'provenance': provenance!,
        if (valueDetectedLanguages != null)
          'valueDetectedLanguages': valueDetectedLanguages!,
        if (valueType != null) 'valueType': valueType!,
      };
}

/// Rendered image contents for this page.
typedef GoogleCloudDocumentaiV1DocumentPageImage
    = $GoogleCloudDocumentaiV1DocumentPageImage;

/// Image quality scores for the page image.
class GoogleCloudDocumentaiV1DocumentPageImageQualityScores {
  /// A list of detected defects.
  core.List<
          GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect>?
      detectedDefects;

  /// The overall quality score.
  ///
  /// Range `[0, 1]` where `1` is perfect quality.
  core.double? qualityScore;

  GoogleCloudDocumentaiV1DocumentPageImageQualityScores({
    this.detectedDefects,
    this.qualityScore,
  });

  GoogleCloudDocumentaiV1DocumentPageImageQualityScores.fromJson(core.Map json_)
      : this(
          detectedDefects: json_.containsKey('detectedDefects')
              ? (json_['detectedDefects'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          qualityScore: json_.containsKey('qualityScore')
              ? (json_['qualityScore'] as core.num).toDouble()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedDefects != null) 'detectedDefects': detectedDefects!,
        if (qualityScore != null) 'qualityScore': qualityScore!,
      };
}

/// Image Quality Defects
typedef GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect
    = $GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect;

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1BoundingPoly? boundingPoly;

  /// Confidence of the current Layout within context of the object this layout
  /// is for.
  ///
  /// e.g. confidence can be for a single token, a table, a visual element, etc.
  /// depending on context. Range `[0, 1]`.
  core.double? confidence;

  /// Detected orientation for the Layout.
  /// Possible string values are:
  /// - "ORIENTATION_UNSPECIFIED" : Unspecified orientation.
  /// - "PAGE_UP" : Orientation is aligned with page up.
  /// - "PAGE_RIGHT" : Orientation is aligned with page right. Turn the head 90
  /// degrees clockwise from upright to read.
  /// - "PAGE_DOWN" : Orientation is aligned with page down. Turn the head 180
  /// degrees from upright to read.
  /// - "PAGE_LEFT" : Orientation is aligned with page left. Turn the head 90
  /// degrees counterclockwise from upright to read.
  core.String? orientation;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1DocumentPageLayout({
    this.boundingPoly,
    this.confidence,
    this.orientation,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(core.Map json_)
      : this(
          boundingPoly: json_.containsKey('boundingPoly')
              ? GoogleCloudDocumentaiV1BoundingPoly.fromJson(
                  json_['boundingPoly'] as core.Map<core.String, core.dynamic>)
              : null,
          confidence: json_.containsKey('confidence')
              ? (json_['confidence'] as core.num).toDouble()
              : null,
          orientation: json_.containsKey('orientation')
              ? json_['orientation'] as core.String
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (boundingPoly != null) 'boundingPoly': boundingPoly!,
        if (confidence != null) 'confidence': confidence!,
        if (orientation != null) 'orientation': orientation!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
      };
}

/// A collection of tokens that a human would perceive as a line.
///
/// Does not cross column boundaries, can be horizontal, vertical, etc.
class GoogleCloudDocumentaiV1DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageLine({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageLine.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// Representation for transformation matrix, intended to be compatible and used
/// with OpenCV format for image manipulation.
typedef GoogleCloudDocumentaiV1DocumentPageMatrix
    = $GoogleCloudDocumentaiV1DocumentPageMatrix;

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageParagraph({
    this.detectedLanguages,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageParagraph.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// A detected symbol.
class GoogleCloudDocumentaiV1DocumentPageSymbol {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Symbol.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  GoogleCloudDocumentaiV1DocumentPageSymbol({
    this.detectedLanguages,
    this.layout,
  });

  GoogleCloudDocumentaiV1DocumentPageSymbol.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
      };
}

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1DocumentPageTable {
  /// Body rows of the table.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>? bodyRows;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Header rows of the table.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableRow>? headerRows;

  /// Layout for Table.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this table.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  GoogleCloudDocumentaiV1DocumentPageTable({
    this.bodyRows,
    this.detectedLanguages,
    this.headerRows,
    this.layout,
    this.provenance,
  });

  GoogleCloudDocumentaiV1DocumentPageTable.fromJson(core.Map json_)
      : this(
          bodyRows: json_.containsKey('bodyRows')
              ? (json_['bodyRows'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          headerRows: json_.containsKey('headerRows')
              ? (json_['headerRows'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (bodyRows != null) 'bodyRows': bodyRows!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (headerRows != null) 'headerRows': headerRows!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
      };
}

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1DocumentPageTableTableCell {
  /// How many columns this cell spans.
  core.int? colSpan;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for TableCell.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// How many rows this cell spans.
  core.int? rowSpan;

  GoogleCloudDocumentaiV1DocumentPageTableTableCell({
    this.colSpan,
    this.detectedLanguages,
    this.layout,
    this.rowSpan,
  });

  GoogleCloudDocumentaiV1DocumentPageTableTableCell.fromJson(core.Map json_)
      : this(
          colSpan: json_.containsKey('colSpan')
              ? json_['colSpan'] as core.int
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          rowSpan: json_.containsKey('rowSpan')
              ? json_['rowSpan'] as core.int
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (colSpan != null) 'colSpan': colSpan!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (rowSpan != null) 'rowSpan': rowSpan!,
      };
}

/// A row of table cells.
class GoogleCloudDocumentaiV1DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1DocumentPageTableTableCell>? cells;

  GoogleCloudDocumentaiV1DocumentPageTableTableRow({
    this.cells,
  });

  GoogleCloudDocumentaiV1DocumentPageTableTableRow.fromJson(core.Map json_)
      : this(
          cells: json_.containsKey('cells')
              ? (json_['cells'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageTableTableCell
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (cells != null) 'cells': cells!,
      };
}

/// A detected token.
class GoogleCloudDocumentaiV1DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak? detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  GoogleCloudDocumentaiV1DocumentProvenance? provenance;

  /// Text style attributes.
  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo? styleInfo;

  GoogleCloudDocumentaiV1DocumentPageToken({
    this.detectedBreak,
    this.detectedLanguages,
    this.layout,
    this.provenance,
    this.styleInfo,
  });

  GoogleCloudDocumentaiV1DocumentPageToken.fromJson(core.Map json_)
      : this(
          detectedBreak: json_.containsKey('detectedBreak')
              ? GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak.fromJson(
                  json_['detectedBreak'] as core.Map<core.String, core.dynamic>)
              : null,
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          provenance: json_.containsKey('provenance')
              ? GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                  json_['provenance'] as core.Map<core.String, core.dynamic>)
              : null,
          styleInfo: json_.containsKey('styleInfo')
              ? GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromJson(
                  json_['styleInfo'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedBreak != null) 'detectedBreak': detectedBreak!,
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (provenance != null) 'provenance': provenance!,
        if (styleInfo != null) 'styleInfo': styleInfo!,
      };
}

/// Detected break at the end of a Token.
typedef GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak
    = $GoogleCloudDocumentaiV1DocumentPageTokenDetectedBreak;

/// Font and other text style attributes.
class GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo {
  /// Color of the background.
  GoogleTypeColor? backgroundColor;

  /// Whether the text is bold (equivalent to font_weight is at least `700`).
  core.bool? bold;

  /// Font size in points (`1` point is `¹⁄₇₂` inches).
  core.int? fontSize;

  /// Name or style of the font.
  core.String? fontType;

  /// TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy).
  ///
  /// Normal is `400`, bold is `700`.
  core.int? fontWeight;

  /// Whether the text is handwritten.
  core.bool? handwritten;

  /// Whether the text is italic.
  core.bool? italic;

  /// Letter spacing in points.
  core.double? letterSpacing;

  /// Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷
  /// `72.0`.
  core.double? pixelFontSize;

  /// Whether the text is in small caps.
  core.bool? smallcaps;

  /// Whether the text is strikethrough.
  core.bool? strikeout;

  /// Whether the text is a subscript.
  core.bool? subscript;

  /// Whether the text is a superscript.
  core.bool? superscript;

  /// Color of the text.
  GoogleTypeColor? textColor;

  /// Whether the text is underlined.
  core.bool? underlined;

  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo({
    this.backgroundColor,
    this.bold,
    this.fontSize,
    this.fontType,
    this.fontWeight,
    this.handwritten,
    this.italic,
    this.letterSpacing,
    this.pixelFontSize,
    this.smallcaps,
    this.strikeout,
    this.subscript,
    this.superscript,
    this.textColor,
    this.underlined,
  });

  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromJson(core.Map json_)
      : this(
          backgroundColor: json_.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          bold: json_.containsKey('bold') ? json_['bold'] as core.bool : null,
          fontSize: json_.containsKey('fontSize')
              ? json_['fontSize'] as core.int
              : null,
          fontType: json_.containsKey('fontType')
              ? json_['fontType'] as core.String
              : null,
          fontWeight: json_.containsKey('fontWeight')
              ? json_['fontWeight'] as core.int
              : null,
          handwritten: json_.containsKey('handwritten')
              ? json_['handwritten'] as core.bool
              : null,
          italic:
              json_.containsKey('italic') ? json_['italic'] as core.bool : null,
          letterSpacing: json_.containsKey('letterSpacing')
              ? (json_['letterSpacing'] as core.num).toDouble()
              : null,
          pixelFontSize: json_.containsKey('pixelFontSize')
              ? (json_['pixelFontSize'] as core.num).toDouble()
              : null,
          smallcaps: json_.containsKey('smallcaps')
              ? json_['smallcaps'] as core.bool
              : null,
          strikeout: json_.containsKey('strikeout')
              ? json_['strikeout'] as core.bool
              : null,
          subscript: json_.containsKey('subscript')
              ? json_['subscript'] as core.bool
              : null,
          superscript: json_.containsKey('superscript')
              ? json_['superscript'] as core.bool
              : null,
          textColor: json_.containsKey('textColor')
              ? GoogleTypeColor.fromJson(
                  json_['textColor'] as core.Map<core.String, core.dynamic>)
              : null,
          underlined: json_.containsKey('underlined')
              ? json_['underlined'] as core.bool
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (bold != null) 'bold': bold!,
        if (fontSize != null) 'fontSize': fontSize!,
        if (fontType != null) 'fontType': fontType!,
        if (fontWeight != null) 'fontWeight': fontWeight!,
        if (handwritten != null) 'handwritten': handwritten!,
        if (italic != null) 'italic': italic!,
        if (letterSpacing != null) 'letterSpacing': letterSpacing!,
        if (pixelFontSize != null) 'pixelFontSize': pixelFontSize!,
        if (smallcaps != null) 'smallcaps': smallcaps!,
        if (strikeout != null) 'strikeout': strikeout!,
        if (subscript != null) 'subscript': subscript!,
        if (superscript != null) 'superscript': superscript!,
        if (textColor != null) 'textColor': textColor!,
        if (underlined != null) 'underlined': underlined!,
      };
}

/// Detected non-text visual elements e.g. checkbox, signature etc.
///
/// on the page.
class GoogleCloudDocumentaiV1DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1DocumentPageDetectedLanguage>?
      detectedLanguages;

  /// Layout for VisualElement.
  GoogleCloudDocumentaiV1DocumentPageLayout? layout;

  /// Type of the VisualElement.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentPageVisualElement({
    this.detectedLanguages,
    this.layout,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentPageVisualElement.fromJson(core.Map json_)
      : this(
          detectedLanguages: json_.containsKey('detectedLanguages')
              ? (json_['detectedLanguages'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentPageDetectedLanguage
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          layout: json_.containsKey('layout')
              ? GoogleCloudDocumentaiV1DocumentPageLayout.fromJson(
                  json_['layout'] as core.Map<core.String, core.dynamic>)
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (detectedLanguages != null) 'detectedLanguages': detectedLanguages!,
        if (layout != null) 'layout': layout!,
        if (type != null) 'type': type!,
      };
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1DocumentProvenance {
  /// The Id of this operation.
  ///
  /// Needs to be unique within the scope of the revision.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1DocumentProvenanceParent>? parents;

  /// The index of the revision that produced this element.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.int? revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified. If no
  /// operation is specified a provenance entry is simply used to match against
  /// a `parent`.
  /// - "ADD" : Add an element.
  /// - "REMOVE" : Remove an element identified by `parent`.
  /// - "UPDATE" : Updates any fields within the given provenance scope of the
  /// message. It overwrites the fields rather than replacing them. Use this
  /// when you want to update a field value of an entity without also updating
  /// all the child properties.
  /// - "REPLACE" : Currently unused. Replace an element identified by `parent`.
  /// - "EVAL_REQUESTED" : Deprecated. Request human review for the element
  /// identified by `parent`.
  /// - "EVAL_APPROVED" : Deprecated. Element is reviewed and approved at human
  /// review, confidence will be set to 1.0.
  /// - "EVAL_SKIPPED" : Deprecated. Element is skipped in the validation
  /// process.
  core.String? type;

  GoogleCloudDocumentaiV1DocumentProvenance({
    this.id,
    this.parents,
    this.revision,
    this.type,
  });

  GoogleCloudDocumentaiV1DocumentProvenance.fromJson(core.Map json_)
      : this(
          id: json_.containsKey('id') ? json_['id'] as core.int : null,
          parents: json_.containsKey('parents')
              ? (json_['parents'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentProvenanceParent.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          revision: json_.containsKey('revision')
              ? json_['revision'] as core.int
              : null,
          type: json_.containsKey('type') ? json_['type'] as core.String : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (id != null) 'id': id!,
        if (parents != null) 'parents': parents!,
        if (revision != null) 'revision': revision!,
        if (type != null) 'type': type!,
      };
}

/// The parent element the current element is based on.
///
/// Used for referencing/aligning, removal and replacement operations.
typedef GoogleCloudDocumentaiV1DocumentProvenanceParent
    = $GoogleCloudDocumentaiV1DocumentProvenanceParent;

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String? agent;

  /// The time that the revision was created, internally generated by doc proto
  /// storage at the time of create.
  core.String? createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1DocumentRevisionHumanReview? humanReview;

  /// Id of the revision, internally generated by doc proto storage.
  ///
  /// Unique within the context of the document.
  core.String? id;

  /// The revisions that this revision is based on.
  ///
  /// This can include one or more parent (when documents are merged.) This
  /// field represents the index into the `revisions` field.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<core.int>? parent;

  /// The revisions that this revision is based on.
  ///
  /// Must include all the ids that have anything to do with this revision - eg.
  /// there are `provenance.parent.revision` fields that index into this field.
  core.List<core.String>? parentIds;

  /// If the annotation was made by processor identify the processor by its
  /// resource name.
  core.String? processor;

  GoogleCloudDocumentaiV1DocumentRevision({
    this.agent,
    this.createTime,
    this.humanReview,
    this.id,
    this.parent,
    this.parentIds,
    this.processor,
  });

  GoogleCloudDocumentaiV1DocumentRevision.fromJson(core.Map json_)
      : this(
          agent:
              json_.containsKey('agent') ? json_['agent'] as core.String : null,
          createTime: json_.containsKey('createTime')
              ? json_['createTime'] as core.String
              : null,
          humanReview: json_.containsKey('humanReview')
              ? GoogleCloudDocumentaiV1DocumentRevisionHumanReview.fromJson(
                  json_['humanReview'] as core.Map<core.String, core.dynamic>)
              : null,
          id: json_.containsKey('id') ? json_['id'] as core.String : null,
          parent: json_.containsKey('parent')
              ? (json_['parent'] as core.List)
                  .map((value) => value as core.int)
                  .toList()
              : null,
          parentIds: json_.containsKey('parentIds')
              ? (json_['parentIds'] as core.List)
                  .map((value) => value as core.String)
                  .toList()
              : null,
          processor: json_.containsKey('processor')
              ? json_['processor'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (agent != null) 'agent': agent!,
        if (createTime != null) 'createTime': createTime!,
        if (humanReview != null) 'humanReview': humanReview!,
        if (id != null) 'id': id!,
        if (parent != null) 'parent': parent!,
        if (parentIds != null) 'parentIds': parentIds!,
        if (processor != null) 'processor': processor!,
      };
}

/// Human Review information of the document.
typedef GoogleCloudDocumentaiV1DocumentRevisionHumanReview
    = $GoogleCloudDocumentaiV1DocumentRevisionHumanReview;

/// For a large document, sharding may be performed to produce several document
/// shards.
///
/// Each document shard contains this field to detail which shard it is.
typedef GoogleCloudDocumentaiV1DocumentShardInfo
    = $GoogleCloudDocumentaiV1DocumentShardInfo;

/// Annotation for common text style attributes.
///
/// This adheres to CSS conventions as much as possible.
class GoogleCloudDocumentaiV1DocumentStyle {
  /// Text background color.
  GoogleTypeColor? backgroundColor;

  /// Text color.
  GoogleTypeColor? color;

  /// Font family such as `Arial`, `Times New Roman`.
  ///
  /// https://www.w3schools.com/cssref/pr_font_font-family.asp
  core.String? fontFamily;

  /// Font size.
  GoogleCloudDocumentaiV1DocumentStyleFontSize? fontSize;

  /// [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp).
  ///
  /// Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  core.String? fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  /// [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp).
  ///
  /// Follows CSS standard.
  core.String? textDecoration;

  /// [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp).
  ///
  /// Possible values are `normal`, `italic`, and `oblique`.
  core.String? textStyle;

  GoogleCloudDocumentaiV1DocumentStyle({
    this.backgroundColor,
    this.color,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
    this.textAnchor,
    this.textDecoration,
    this.textStyle,
  });

  GoogleCloudDocumentaiV1DocumentStyle.fromJson(core.Map json_)
      : this(
          backgroundColor: json_.containsKey('backgroundColor')
              ? GoogleTypeColor.fromJson(json_['backgroundColor']
                  as core.Map<core.String, core.dynamic>)
              : null,
          color: json_.containsKey('color')
              ? GoogleTypeColor.fromJson(
                  json_['color'] as core.Map<core.String, core.dynamic>)
              : null,
          fontFamily: json_.containsKey('fontFamily')
              ? json_['fontFamily'] as core.String
              : null,
          fontSize: json_.containsKey('fontSize')
              ? GoogleCloudDocumentaiV1DocumentStyleFontSize.fromJson(
                  json_['fontSize'] as core.Map<core.String, core.dynamic>)
              : null,
          fontWeight: json_.containsKey('fontWeight')
              ? json_['fontWeight'] as core.String
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
          textDecoration: json_.containsKey('textDecoration')
              ? json_['textDecoration'] as core.String
              : null,
          textStyle: json_.containsKey('textStyle')
              ? json_['textStyle'] as core.String
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (backgroundColor != null) 'backgroundColor': backgroundColor!,
        if (color != null) 'color': color!,
        if (fontFamily != null) 'fontFamily': fontFamily!,
        if (fontSize != null) 'fontSize': fontSize!,
        if (fontWeight != null) 'fontWeight': fontWeight!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
        if (textDecoration != null) 'textDecoration': textDecoration!,
        if (textStyle != null) 'textStyle': textStyle!,
      };
}

/// Font size with unit.
typedef GoogleCloudDocumentaiV1DocumentStyleFontSize
    = $GoogleCloudDocumentaiV1DocumentStyleFontSize;

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  ///
  /// It is always populated for formFields.
  core.String? content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment>? textSegments;

  GoogleCloudDocumentaiV1DocumentTextAnchor({
    this.content,
    this.textSegments,
  });

  GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(core.Map json_)
      : this(
          content: json_.containsKey('content')
              ? json_['content'] as core.String
              : null,
          textSegments: json_.containsKey('textSegments')
              ? (json_['textSegments'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
                          .fromJson(
                              value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (content != null) 'content': content!,
        if (textSegments != null) 'textSegments': textSegments!,
      };
}

/// A text segment in the Document.text.
///
/// The indices may be out of bounds which indicate that the text extends into
/// another document shard for large sharded documents. See
/// ShardInfo.text_offset
typedef GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment
    = $GoogleCloudDocumentaiV1DocumentTextAnchorTextSegment;

/// This message is used for text changes aka.
///
/// OCR corrections.
class GoogleCloudDocumentaiV1DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String? changedText;

  /// The history of this annotation.
  @core.Deprecated(
    'Not supported. Member documentation may have more information.',
  )
  core.List<GoogleCloudDocumentaiV1DocumentProvenance>? provenance;

  /// Provenance of the correction.
  ///
  /// Text anchor indexing into the Document.text. There can only be a single
  /// `TextAnchor.text_segments` element. If the start and end index of the text
  /// segment are the same, the text change is inserted before that index.
  GoogleCloudDocumentaiV1DocumentTextAnchor? textAnchor;

  GoogleCloudDocumentaiV1DocumentTextChange({
    this.changedText,
    this.provenance,
    this.textAnchor,
  });

  GoogleCloudDocumentaiV1DocumentTextChange.fromJson(core.Map json_)
      : this(
          changedText: json_.containsKey('changedText')
              ? json_['changedText'] as core.String
              : null,
          provenance: json_.containsKey('provenance')
              ? (json_['provenance'] as core.List)
                  .map((value) =>
                      GoogleCloudDocumentaiV1DocumentProvenance.fromJson(
                          value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          textAnchor: json_.containsKey('textAnchor')
              ? GoogleCloudDocumentaiV1DocumentTextAnchor.fromJson(
                  json_['textAnchor'] as core.Map<core.String, core.dynamic>)
              : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (changedText != null) 'changedText': changedText!,
        if (provenance != null) 'provenance': provenance!,
        if (textAnchor != null) 'textAnchor': textAnchor!,
      };
}

/// A vertex represents a 2D point in the image.
///
/// NOTE: the normalized vertex coordinates are relative to the original image
/// and range from 0 to 1.
typedef GoogleCloudDocumentaiV1NormalizedVertex
    = $GoogleCloudDocumentaiV1NormalizedVertex;

/// A vertex represents a 2D point in the image.
///
/// NOTE: the vertex coordinates are in the same scale as the original image.
typedef GoogleCloudDocumentaiV1Vertex = $GoogleCloudDocumentaiV1Vertex;

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
class GoogleIamV1AuditConfig {
  /// The configuration for logging of each type of permission.
  core.List<GoogleIamV1AuditLogConfig>? auditLogConfigs;

  /// Specifies a service that will be enabled for audit logging.
  ///
  /// For example, `storage.googleapis.com`, `cloudsql.googleapis.com`.
  /// `allServices` is a special value that covers all services.
  core.String? service;

  GoogleIamV1AuditConfig({
    this.auditLogConfigs,
    this.service,
  });

  GoogleIamV1AuditConfig.fromJson(core.Map json_)
      : this(
          auditLogConfigs: json_.containsKey('auditLogConfigs')
              ? (json_['auditLogConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditLogConfig.fromJson(
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
typedef GoogleIamV1AuditLogConfig = $AuditLogConfig;

/// Associates `members`, or principals, with a `role`.
class GoogleIamV1Binding {
  /// The condition that is associated with this binding.
  ///
  /// If the condition evaluates to `true`, then this binding applies to the
  /// current request. If the condition evaluates to `false`, then this binding
  /// does not apply to the current request. However, a different role binding
  /// might grant the same role to one or more of the principals in this
  /// binding. To learn which resources support conditions in their IAM
  /// policies, see the
  /// [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).
  GoogleTypeExpr? condition;

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

  GoogleIamV1Binding({
    this.condition,
    this.members,
    this.role,
  });

  GoogleIamV1Binding.fromJson(core.Map json_)
      : this(
          condition: json_.containsKey('condition')
              ? GoogleTypeExpr.fromJson(
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
class GoogleIamV1Policy {
  /// Specifies cloud audit logging configuration for this policy.
  core.List<GoogleIamV1AuditConfig>? auditConfigs;

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
  core.List<GoogleIamV1Binding>? bindings;

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

  GoogleIamV1Policy({
    this.auditConfigs,
    this.bindings,
    this.etag,
    this.version,
  });

  GoogleIamV1Policy.fromJson(core.Map json_)
      : this(
          auditConfigs: json_.containsKey('auditConfigs')
              ? (json_['auditConfigs'] as core.List)
                  .map((value) => GoogleIamV1AuditConfig.fromJson(
                      value as core.Map<core.String, core.dynamic>))
                  .toList()
              : null,
          bindings: json_.containsKey('bindings')
              ? (json_['bindings'] as core.List)
                  .map((value) => GoogleIamV1Binding.fromJson(
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

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress.
  ///
  /// If `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool? done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus? error;

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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
      : this(
          done: json_.containsKey('done') ? json_['done'] as core.bool : null,
          error: json_.containsKey('error')
              ? GoogleRpcStatus.fromJson(
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

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef GoogleProtobufEmpty = $Empty;

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef GoogleRpcStatus = $Status;

/// Represents a color in the RGBA color space.
///
/// This representation is designed for simplicity of conversion to and from
/// color representations in various languages over compactness. For example,
/// the fields of this representation can be trivially provided to the
/// constructor of `java.awt.Color` in Java; it can also be trivially provided
/// to UIColor's `+colorWithRed:green:blue:alpha` method in iOS; and, with just
/// a little work, it can be easily formatted into a CSS `rgba()` string in
/// JavaScript. This reference page doesn't have information about the absolute
/// color space that should be used to interpret the RGB value—for example,
/// sRGB, Adobe RGB, DCI-P3, and BT.2020. By default, applications should assume
/// the sRGB color space. When color equality needs to be decided,
/// implementations, unless documented otherwise, treat two colors as equal if
/// all their red, green, blue, and alpha values each differ by at most `1e-5`.
/// Example (Java): import com.google.type.Color; // ... public static
/// java.awt.Color fromProto(Color protocolor) { float alpha =
/// protocolor.hasAlpha() ? protocolor.getAlpha().getValue() : 1.0; return new
/// java.awt.Color( protocolor.getRed(), protocolor.getGreen(),
/// protocolor.getBlue(), alpha); } public static Color toProto(java.awt.Color
/// color) { float red = (float) color.getRed(); float green = (float)
/// color.getGreen(); float blue = (float) color.getBlue(); float denominator =
/// 255.0; Color.Builder resultBuilder = Color .newBuilder() .setRed(red /
/// denominator) .setGreen(green / denominator) .setBlue(blue / denominator);
/// int alpha = color.getAlpha(); if (alpha != 255) { result.setAlpha(
/// FloatValue .newBuilder() .setValue(((float) alpha) / denominator) .build());
/// } return resultBuilder.build(); } // ... Example (iOS / Obj-C): // ...
/// static UIColor* fromProto(Color* protocolor) { float red = \[protocolor
/// red\]; float green = \[protocolor green\]; float blue = \[protocolor blue\];
/// FloatValue* alpha_wrapper = \[protocolor alpha\]; float alpha = 1.0; if
/// (alpha_wrapper != nil) { alpha = \[alpha_wrapper value\]; } return \[UIColor
/// colorWithRed:red green:green blue:blue alpha:alpha\]; } static Color*
/// toProto(UIColor* color) { CGFloat red, green, blue, alpha; if (!\[color
/// getRed:&red green:&green blue:&blue alpha:&alpha\]) { return nil; } Color*
/// result = \[\[Color alloc\] init\]; \[result setRed:red\]; \[result
/// setGreen:green\]; \[result setBlue:blue\]; if (alpha \<= 0.9999) { \[result
/// setAlpha:floatWrapperWithValue(alpha)\]; } \[result autorelease\]; return
/// result; } // ... Example (JavaScript): // ... var protoToCssColor =
/// function(rgb_color) { var redFrac = rgb_color.red || 0.0; var greenFrac =
/// rgb_color.green || 0.0; var blueFrac = rgb_color.blue || 0.0; var red =
/// Math.floor(redFrac * 255); var green = Math.floor(greenFrac * 255); var blue
/// = Math.floor(blueFrac * 255); if (!('alpha' in rgb_color)) { return
/// rgbToCssColor(red, green, blue); } var alphaFrac = rgb_color.alpha.value ||
/// 0.0; var rgbParams = \[red, green, blue\].join(','); return \['rgba(',
/// rgbParams, ',', alphaFrac, ')'\].join(''); }; var rgbToCssColor =
/// function(red, green, blue) { var rgbNumber = new Number((red \<\< 16) |
/// (green \<\< 8) | blue); var hexString = rgbNumber.toString(16); var
/// missingZeros = 6 - hexString.length; var resultBuilder = \['#'\]; for (var i
/// = 0; i \< missingZeros; i++) { resultBuilder.push('0'); }
/// resultBuilder.push(hexString); return resultBuilder.join(''); }; // ...
typedef GoogleTypeColor = $Color;

/// Represents a whole or partial calendar date, such as a birthday.
///
/// The time of day and time zone are either specified elsewhere or are
/// insignificant. The date is relative to the Gregorian Calendar. This can
/// represent one of the following: * A full date, with non-zero year, month,
/// and day values. * A month and day, with a zero year (for example, an
/// anniversary). * A year on its own, with a zero month and a zero day. * A
/// year and month, with a zero day (for example, a credit card expiration
/// date). Related types: * google.type.TimeOfDay * google.type.DateTime *
/// google.protobuf.Timestamp
typedef GoogleTypeDate = $Date;

/// Represents civil time (or occasionally physical time).
///
/// This type can represent a civil time in one of a few possible ways: * When
/// utc_offset is set and time_zone is unset: a civil time on a calendar day
/// with a particular offset from UTC. * When time_zone is set and utc_offset is
/// unset: a civil time on a calendar day in a particular time zone. * When
/// neither time_zone nor utc_offset is set: a civil time on a calendar day in
/// local time. The date is relative to the Proleptic Gregorian Calendar. If
/// year, month, or day are 0, the DateTime is considered not to have a specific
/// year, month, or day respectively. This type may also be used to represent a
/// physical time if all the date and time fields are set and either case of the
/// `time_offset` oneof is set. Consider using `Timestamp` message for physical
/// time instead. If your use case also would like to store the user's timezone,
/// that can be done in another field. This type is more flexible than some
/// applications may want. Make sure to document and validate your application's
/// limitations.
class GoogleTypeDateTime {
  /// Day of month.
  ///
  /// Must be from 1 to 31 and valid for the year and month, or 0 if specifying
  /// a datetime without a day.
  ///
  /// Optional.
  core.int? day;

  /// Hours of day in 24 hour format.
  ///
  /// Should be from 0 to 23, defaults to 0 (midnight). An API may choose to
  /// allow the value "24:00:00" for scenarios like business closing time.
  ///
  /// Optional.
  core.int? hours;

  /// Minutes of hour of day.
  ///
  /// Must be from 0 to 59, defaults to 0.
  ///
  /// Optional.
  core.int? minutes;

  /// Month of year.
  ///
  /// Must be from 1 to 12, or 0 if specifying a datetime without a month.
  ///
  /// Optional.
  core.int? month;

  /// Fractions of seconds in nanoseconds.
  ///
  /// Must be from 0 to 999,999,999, defaults to 0.
  ///
  /// Optional.
  core.int? nanos;

  /// Seconds of minutes of the time.
  ///
  /// Must normally be from 0 to 59, defaults to 0. An API may allow the value
  /// 60 if it allows leap-seconds.
  ///
  /// Optional.
  core.int? seconds;

  /// Time zone.
  GoogleTypeTimeZone? timeZone;

  /// UTC offset.
  ///
  /// Must be whole seconds, between -18 hours and +18 hours. For example, a UTC
  /// offset of -4:00 would be represented as { seconds: -14400 }.
  core.String? utcOffset;

  /// Year of date.
  ///
  /// Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  ///
  /// Optional.
  core.int? year;

  GoogleTypeDateTime({
    this.day,
    this.hours,
    this.minutes,
    this.month,
    this.nanos,
    this.seconds,
    this.timeZone,
    this.utcOffset,
    this.year,
  });

  GoogleTypeDateTime.fromJson(core.Map json_)
      : this(
          day: json_.containsKey('day') ? json_['day'] as core.int : null,
          hours: json_.containsKey('hours') ? json_['hours'] as core.int : null,
          minutes: json_.containsKey('minutes')
              ? json_['minutes'] as core.int
              : null,
          month: json_.containsKey('month') ? json_['month'] as core.int : null,
          nanos: json_.containsKey('nanos') ? json_['nanos'] as core.int : null,
          seconds: json_.containsKey('seconds')
              ? json_['seconds'] as core.int
              : null,
          timeZone: json_.containsKey('timeZone')
              ? GoogleTypeTimeZone.fromJson(
                  json_['timeZone'] as core.Map<core.String, core.dynamic>)
              : null,
          utcOffset: json_.containsKey('utcOffset')
              ? json_['utcOffset'] as core.String
              : null,
          year: json_.containsKey('year') ? json_['year'] as core.int : null,
        );

  core.Map<core.String, core.dynamic> toJson() => {
        if (day != null) 'day': day!,
        if (hours != null) 'hours': hours!,
        if (minutes != null) 'minutes': minutes!,
        if (month != null) 'month': month!,
        if (nanos != null) 'nanos': nanos!,
        if (seconds != null) 'seconds': seconds!,
        if (timeZone != null) 'timeZone': timeZone!,
        if (utcOffset != null) 'utcOffset': utcOffset!,
        if (year != null) 'year': year!,
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
typedef GoogleTypeExpr = $Expr;

/// Represents a time interval, encoded as a Timestamp start (inclusive) and a
/// Timestamp end (exclusive).
///
/// The start must be less than or equal to the end. When the start equals the
/// end, the interval is empty (matches no time). When both start and end are
/// unspecified, the interval matches any time.
typedef GoogleTypeInterval = $Interval;

/// Represents an amount of money with its currency type.
typedef GoogleTypeMoney = $Money;

/// Represents a postal address, e.g. for postal delivery or payments addresses.
///
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an
/// internationalization-ready address widget such as
/// https://github.com/google/libaddressinput) - Users should not be presented
/// with UI elements for input or editing of fields outside countries where that
/// field is used. For more guidance on how to use this schema, please see:
/// https://support.google.com/business/answer/6397478
typedef GoogleTypePostalAddress = $PostalAddress;

/// Represents a time zone from the
/// [IANA Time Zone Database](https://www.iana.org/time-zones).
typedef GoogleTypeTimeZone = $TimeZone;
