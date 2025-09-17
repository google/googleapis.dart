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

/// Cloud Firestore API - v1beta2
///
/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
///
/// For more information, see <https://cloud.google.com/firestore>
///
/// Create an instance of [FirestoreApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsDatabasesResource]
///     - [ProjectsDatabasesCollectionGroupsResource]
///       - [ProjectsDatabasesCollectionGroupsFieldsResource]
///       - [ProjectsDatabasesCollectionGroupsIndexesResource]
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

/// Accesses the NoSQL document database built for automatic scaling, high
/// performance, and ease of application development.
class FirestoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Cloud Datastore data
  static const datastoreScope = 'https://www.googleapis.com/auth/datastore';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirestoreApi(
    http.Client client, {
    core.String rootUrl = 'https://firestore.googleapis.com/',
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

  ProjectsDatabasesResource get databases =>
      ProjectsDatabasesResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsDatabasesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsResource get collectionGroups =>
      ProjectsDatabasesCollectionGroupsResource(_requester);

  ProjectsDatabasesResource(commons.ApiRequester client) : _requester = client;

  /// Exports a copy of all or a subset of documents from Google Cloud Firestore
  /// to another storage system, such as Google Cloud Storage.
  ///
  /// Recent updates to documents may not be reflected in the export. The export
  /// occurs in the background and its progress can be monitored and managed via
  /// the Operation resource that is created. The output of an export may only
  /// be used once the associated operation is done. If an export operation is
  /// cancelled before completion it may leave partial data behind in Google
  /// Cloud Storage.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Database to export. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> exportDocuments(
    GoogleFirestoreAdminV1beta2ExportDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':exportDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Imports documents into Google Cloud Firestore.
  ///
  /// Existing documents with the same name are overwritten. The import occurs
  /// in the background and its progress can be monitored and managed via the
  /// Operation resource that is created. If an ImportDocuments operation is
  /// cancelled, it is possible that a subset of the data has already been
  /// imported to Cloud Firestore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - Database to import into. Should be of the form:
  /// `projects/{project_id}/databases/{database_id}`.
  /// Value must have pattern `^projects/\[^/\]+/databases/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> importDocuments(
    GoogleFirestoreAdminV1beta2ImportDocumentsRequest request,
    core.String name, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':importDocuments';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsDatabasesCollectionGroupsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsFieldsResource get fields =>
      ProjectsDatabasesCollectionGroupsFieldsResource(_requester);
  ProjectsDatabasesCollectionGroupsIndexesResource get indexes =>
      ProjectsDatabasesCollectionGroupsIndexesResource(_requester);

  ProjectsDatabasesCollectionGroupsResource(commons.ApiRequester client)
    : _requester = client;
}

class ProjectsDatabasesCollectionGroupsFieldsResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsFieldsResource(commons.ApiRequester client)
    : _requester = client;

  /// Gets the metadata and configuration for a Field.
  ///
  /// Request parameters:
  ///
  /// [name] - A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+/fields/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1beta2Field].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1beta2Field> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1beta2Field.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists the field configuration and metadata for this database.
  ///
  /// Currently, FirestoreAdmin.ListFields only supports listing fields that
  /// have been explicitly overridden. To issue this query, call
  /// FirestoreAdmin.ListFields with the filter set to
  /// `indexConfig.usesAncestorConfig:false`.
  ///
  /// Request parameters:
  ///
  /// [parent] - A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+$`.
  ///
  /// [filter] - The filter to apply to list results. Currently,
  /// FirestoreAdmin.ListFields only supports listing fields that have been
  /// explicitly overridden. To issue this query, call FirestoreAdmin.ListFields
  /// with the filter set to `indexConfig.usesAncestorConfig:false`.
  ///
  /// [pageSize] - The number of results to return.
  ///
  /// [pageToken] - A page token, returned from a previous call to
  /// FirestoreAdmin.ListFields, that may be used to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1beta2ListFieldsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1beta2ListFieldsResponse> list(
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

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$parent') + '/fields';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1beta2ListFieldsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a field configuration.
  ///
  /// Currently, field updates apply only to single field index configuration.
  /// However, calls to FirestoreAdmin.UpdateField should provide a field mask
  /// to avoid changing any configuration that the caller isn't aware of. The
  /// field mask should be specified as: `{ paths: "index_config" }`. This call
  /// returns a google.longrunning.Operation which may be used to track the
  /// status of the field update. The metadata for the operation will be the
  /// type FieldOperationMetadata. To configure the default field settings for
  /// the database, use the special `Field` with resource name:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * `.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - A field name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  /// A field path may be a simple field name, e.g. `address` or a path to
  /// fields within map_value , e.g. `address.city`, or a special field path.
  /// The only valid special field is `*`, which represents any field. Field
  /// paths may be quoted using ` (backtick). The only character that needs to
  /// be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that must be
  /// quoted include: `*`, `.`, ``` (backtick), `[`, `]`, as well as any ascii
  /// symbolic characters. Examples: (Note: Comments here are written in
  /// markdown syntax, so there is an additional layer of backticks to represent
  /// a code block) `\`address.city\`` represents a field named `address.city`,
  /// not the map key `city` in the field `address`. `\`*\`` represents a field
  /// named `*`, not any field. A special `Field` contains the default indexing
  /// settings for all fields. This field's resource name is:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * ` Indexes defined on this `Field` will be applied to all fields which
  /// do not have their own `Field` index configuration.
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+/fields/\[^/\]+$`.
  ///
  /// [updateMask] - A mask, relative to the field. If specified, only
  /// configuration specified by this field_mask will be updated in the field.
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
  async.Future<GoogleLongrunningOperation> patch(
    GoogleFirestoreAdminV1beta2Field request,
    core.String name, {
    core.String? updateMask,
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if (updateMask != null) 'updateMask': [updateMask],
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'PATCH',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

class ProjectsDatabasesCollectionGroupsIndexesResource {
  final commons.ApiRequester _requester;

  ProjectsDatabasesCollectionGroupsIndexesResource(commons.ApiRequester client)
    : _requester = client;

  /// Creates a composite index.
  ///
  /// This returns a google.longrunning.Operation which may be used to track the
  /// status of the creation. The metadata for the operation will be the type
  /// IndexOperationMetadata.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+$`.
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
  async.Future<GoogleLongrunningOperation> create(
    GoogleFirestoreAdminV1beta2Index request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$parent') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return GoogleLongrunningOperation.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Deletes a composite index.
  ///
  /// Request parameters:
  ///
  /// [name] - A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+/indexes/\[^/\]+$`.
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

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'DELETE',
      queryParams: queryParams_,
    );
    return Empty.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Gets a composite index.
  ///
  /// Request parameters:
  ///
  /// [name] - A name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{index_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+/indexes/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1beta2Index].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1beta2Index> get(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1beta2Index.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Lists composite indexes.
  ///
  /// Request parameters:
  ///
  /// [parent] - A parent name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}`
  /// Value must have pattern
  /// `^projects/\[^/\]+/databases/\[^/\]+/collectionGroups/\[^/\]+$`.
  ///
  /// [filter] - The filter to apply to list results.
  ///
  /// [pageSize] - The number of results to return.
  ///
  /// [pageToken] - A page token, returned from a previous call to
  /// FirestoreAdmin.ListIndexes, that may be used to get the next page of
  /// results.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleFirestoreAdminV1beta2ListIndexesResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleFirestoreAdminV1beta2ListIndexesResponse> list(
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

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$parent') + '/indexes';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return GoogleFirestoreAdminV1beta2ListIndexesResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The request for FirestoreAdmin.ExportDocuments.
typedef GoogleFirestoreAdminV1beta2ExportDocumentsRequest =
    $ExportDocumentsRequest;

/// Represents a single field in the database.
///
/// Fields are grouped by their "Collection Group", which represent all
/// collections in the database with the same id.
class GoogleFirestoreAdminV1beta2Field {
  /// The index configuration for this field.
  ///
  /// If unset, field indexing will revert to the configuration defined by the
  /// `ancestor_field`. To explicitly remove all indexes for this field, specify
  /// an index config with an empty list of indexes.
  GoogleFirestoreAdminV1beta2IndexConfig? indexConfig;

  /// A field name of the form
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/fields/{field_path}`
  /// A field path may be a simple field name, e.g. `address` or a path to
  /// fields within map_value , e.g. `address.city`, or a special field path.
  ///
  /// The only valid special field is `*`, which represents any field. Field
  /// paths may be quoted using ` (backtick). The only character that needs to
  /// be escaped within a quoted field path is the backtick character itself,
  /// escaped using a backslash. Special characters in field paths that must be
  /// quoted include: `*`, `.`, ``` (backtick), `[`, `]`, as well as any ascii
  /// symbolic characters. Examples: (Note: Comments here are written in
  /// markdown syntax, so there is an additional layer of backticks to represent
  /// a code block) `\`address.city\`` represents a field named `address.city`,
  /// not the map key `city` in the field `address`. `\`*\`` represents a field
  /// named `*`, not any field. A special `Field` contains the default indexing
  /// settings for all fields. This field's resource name is:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/__default__/fields
  /// / * ` Indexes defined on this `Field` will be applied to all fields which
  /// do not have their own `Field` index configuration.
  core.String? name;

  GoogleFirestoreAdminV1beta2Field({this.indexConfig, this.name});

  GoogleFirestoreAdminV1beta2Field.fromJson(core.Map json_)
    : this(
        indexConfig:
            json_.containsKey('indexConfig')
                ? GoogleFirestoreAdminV1beta2IndexConfig.fromJson(
                  json_['indexConfig'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        name: json_['name'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (indexConfig != null) 'indexConfig': indexConfig!,
    if (name != null) 'name': name!,
  };
}

/// The request for FirestoreAdmin.ImportDocuments.
class GoogleFirestoreAdminV1beta2ImportDocumentsRequest {
  /// Which collection ids to import.
  ///
  /// Unspecified means all collections included in the import.
  core.List<core.String>? collectionIds;

  /// Location of the exported files.
  ///
  /// This must match the output_uri_prefix of an ExportDocumentsResponse from
  /// an export that has completed successfully. See:
  /// google.firestore.admin.v1beta2.ExportDocumentsResponse.output_uri_prefix.
  core.String? inputUriPrefix;

  GoogleFirestoreAdminV1beta2ImportDocumentsRequest({
    this.collectionIds,
    this.inputUriPrefix,
  });

  GoogleFirestoreAdminV1beta2ImportDocumentsRequest.fromJson(core.Map json_)
    : this(
        collectionIds:
            (json_['collectionIds'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        inputUriPrefix: json_['inputUriPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (collectionIds != null) 'collectionIds': collectionIds!,
    if (inputUriPrefix != null) 'inputUriPrefix': inputUriPrefix!,
  };
}

/// Cloud Firestore indexes enable simple and complex queries against documents
/// in a database.
class GoogleFirestoreAdminV1beta2Index {
  /// The fields supported by this index.
  ///
  /// For composite indexes, this is always 2 or more fields. The last field
  /// entry is always for the field path `__name__`. If, on creation, `__name__`
  /// was not specified as the last field, it will be added automatically with
  /// the same direction as that of the last field defined. If the final field
  /// in a composite index is not directional, the `__name__` will be ordered
  /// ASCENDING (unless explicitly specified). For single field indexes, this
  /// will always be exactly one entry with a field path equal to the field path
  /// of the associated field.
  core.List<GoogleFirestoreAdminV1beta2IndexField>? fields;

  /// A server defined name for this index.
  ///
  /// The form of this name for composite indexes will be:
  /// `projects/{project_id}/databases/{database_id}/collectionGroups/{collection_id}/indexes/{composite_index_id}`
  /// For single field indexes, this field will be empty.
  ///
  /// Output only.
  core.String? name;

  /// Indexes with a collection query scope specified allow queries against a
  /// collection that is the child of a specific document, specified at query
  /// time, and that has the same collection id.
  ///
  /// Indexes with a collection group query scope specified allow queries
  /// against all collections descended from a specific document, specified at
  /// query time, and that have the same collection id as this index.
  /// Possible string values are:
  /// - "QUERY_SCOPE_UNSPECIFIED" : The query scope is unspecified. Not a valid
  /// option.
  /// - "COLLECTION" : Indexes with a collection query scope specified allow
  /// queries against a collection that is the child of a specific document,
  /// specified at query time, and that has the collection id specified by the
  /// index.
  /// - "COLLECTION_GROUP" : Indexes with a collection group query scope
  /// specified allow queries against all collections that has the collection id
  /// specified by the index.
  core.String? queryScope;

  /// The serving state of the index.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The state is unspecified.
  /// - "CREATING" : The index is being created. There is an active long-running
  /// operation for the index. The index is updated when writing a document.
  /// Some index data may exist.
  /// - "READY" : The index is ready to be used. The index is updated when
  /// writing a document. The index is fully populated from all stored documents
  /// it applies to.
  /// - "NEEDS_REPAIR" : The index was being created, but something went wrong.
  /// There is no active long-running operation for the index, and the most
  /// recently finished long-running operation failed. The index is not updated
  /// when writing a document. Some index data may exist. Use the
  /// google.longrunning.Operations API to determine why the operation that last
  /// attempted to create this index failed, then re-create the index.
  core.String? state;

  GoogleFirestoreAdminV1beta2Index({
    this.fields,
    this.name,
    this.queryScope,
    this.state,
  });

  GoogleFirestoreAdminV1beta2Index.fromJson(core.Map json_)
    : this(
        fields:
            (json_['fields'] as core.List?)
                ?.map(
                  (value) => GoogleFirestoreAdminV1beta2IndexField.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        name: json_['name'] as core.String?,
        queryScope: json_['queryScope'] as core.String?,
        state: json_['state'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fields != null) 'fields': fields!,
    if (name != null) 'name': name!,
    if (queryScope != null) 'queryScope': queryScope!,
    if (state != null) 'state': state!,
  };
}

/// The index configuration for this field.
class GoogleFirestoreAdminV1beta2IndexConfig {
  /// Specifies the resource name of the `Field` from which this field's index
  /// configuration is set (when `uses_ancestor_config` is true), or from which
  /// it *would* be set if this field had no index configuration (when
  /// `uses_ancestor_config` is false).
  ///
  /// Output only.
  core.String? ancestorField;

  /// The indexes supported for this field.
  core.List<GoogleFirestoreAdminV1beta2Index>? indexes;

  /// Output only When true, the `Field`'s index configuration is in the process
  /// of being reverted.
  ///
  /// Once complete, the index config will transition to the same state as the
  /// field specified by `ancestor_field`, at which point `uses_ancestor_config`
  /// will be `true` and `reverting` will be `false`.
  core.bool? reverting;

  /// When true, the `Field`'s index configuration is set from the configuration
  /// specified by the `ancestor_field`.
  ///
  /// When false, the `Field`'s index configuration is defined explicitly.
  ///
  /// Output only.
  core.bool? usesAncestorConfig;

  GoogleFirestoreAdminV1beta2IndexConfig({
    this.ancestorField,
    this.indexes,
    this.reverting,
    this.usesAncestorConfig,
  });

  GoogleFirestoreAdminV1beta2IndexConfig.fromJson(core.Map json_)
    : this(
        ancestorField: json_['ancestorField'] as core.String?,
        indexes:
            (json_['indexes'] as core.List?)
                ?.map(
                  (value) => GoogleFirestoreAdminV1beta2Index.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        reverting: json_['reverting'] as core.bool?,
        usesAncestorConfig: json_['usesAncestorConfig'] as core.bool?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (ancestorField != null) 'ancestorField': ancestorField!,
    if (indexes != null) 'indexes': indexes!,
    if (reverting != null) 'reverting': reverting!,
    if (usesAncestorConfig != null) 'usesAncestorConfig': usesAncestorConfig!,
  };
}

/// A field in an index.
///
/// The field_path describes which field is indexed, the value_mode describes
/// how the field value is indexed.
class GoogleFirestoreAdminV1beta2IndexField {
  /// Indicates that this field supports operations on `array_value`s.
  /// Possible string values are:
  /// - "ARRAY_CONFIG_UNSPECIFIED" : The index does not support additional array
  /// queries.
  /// - "CONTAINS" : The index supports array containment queries.
  core.String? arrayConfig;

  /// Can be __name__.
  ///
  /// For single field indexes, this must match the name of the field or may be
  /// omitted.
  core.String? fieldPath;

  /// Indicates that this field supports ordering by the specified order or
  /// comparing using =, \<, \<=, \>, \>=.
  /// Possible string values are:
  /// - "ORDER_UNSPECIFIED" : The ordering is unspecified. Not a valid option.
  /// - "ASCENDING" : The field is ordered by ascending field value.
  /// - "DESCENDING" : The field is ordered by descending field value.
  core.String? order;

  GoogleFirestoreAdminV1beta2IndexField({
    this.arrayConfig,
    this.fieldPath,
    this.order,
  });

  GoogleFirestoreAdminV1beta2IndexField.fromJson(core.Map json_)
    : this(
        arrayConfig: json_['arrayConfig'] as core.String?,
        fieldPath: json_['fieldPath'] as core.String?,
        order: json_['order'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (arrayConfig != null) 'arrayConfig': arrayConfig!,
    if (fieldPath != null) 'fieldPath': fieldPath!,
    if (order != null) 'order': order!,
  };
}

/// The response for FirestoreAdmin.ListFields.
class GoogleFirestoreAdminV1beta2ListFieldsResponse {
  /// The requested fields.
  core.List<GoogleFirestoreAdminV1beta2Field>? fields;

  /// A page token that may be used to request another page of results.
  ///
  /// If blank, this is the last page.
  core.String? nextPageToken;

  GoogleFirestoreAdminV1beta2ListFieldsResponse({
    this.fields,
    this.nextPageToken,
  });

  GoogleFirestoreAdminV1beta2ListFieldsResponse.fromJson(core.Map json_)
    : this(
        fields:
            (json_['fields'] as core.List?)
                ?.map(
                  (value) => GoogleFirestoreAdminV1beta2Field.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (fields != null) 'fields': fields!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// The response for FirestoreAdmin.ListIndexes.
class GoogleFirestoreAdminV1beta2ListIndexesResponse {
  /// The requested indexes.
  core.List<GoogleFirestoreAdminV1beta2Index>? indexes;

  /// A page token that may be used to request another page of results.
  ///
  /// If blank, this is the last page.
  core.String? nextPageToken;

  GoogleFirestoreAdminV1beta2ListIndexesResponse({
    this.indexes,
    this.nextPageToken,
  });

  GoogleFirestoreAdminV1beta2ListIndexesResponse.fromJson(core.Map json_)
    : this(
        indexes:
            (json_['indexes'] as core.List?)
                ?.map(
                  (value) => GoogleFirestoreAdminV1beta2Index.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (indexes != null) 'indexes': indexes!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
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

  GoogleLongrunningOperation({
    this.done,
    this.error,
    this.metadata,
    this.name,
    this.response,
  });

  GoogleLongrunningOperation.fromJson(core.Map json_)
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;
