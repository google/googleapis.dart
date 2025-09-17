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

/// Cloud Datastore API - v1beta1
///
/// Accesses the schemaless NoSQL database to provide fully managed, robust,
/// scalable storage for your application.
///
/// For more information, see <https://cloud.google.com/datastore/>
///
/// Create an instance of [DatastoreApi] to access these resources:
///
/// - [ProjectsResource]
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

/// Accesses the schemaless NoSQL database to provide fully managed, robust,
/// scalable storage for your application.
class DatastoreApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  /// View and manage your Google Cloud Datastore data
  static const datastoreScope = 'https://www.googleapis.com/auth/datastore';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  DatastoreApi(
    http.Client client, {
    core.String rootUrl = 'https://datastore.googleapis.com/',
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

  ProjectsResource(commons.ApiRequester client) : _requester = client;

  /// Exports a copy of all or a subset of entities from Google Cloud Datastore
  /// to another storage system, such as Google Cloud Storage.
  ///
  /// Recent updates to entities may not be reflected in the export. The export
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
  /// [projectId] - Project ID against which to make the request.
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
  async.Future<GoogleLongrunningOperation> export(
    GoogleDatastoreAdminV1beta1ExportEntitiesRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/projects/' + commons.escapeVariable('$projectId') + ':export';

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

  /// Imports entities into Google Cloud Datastore.
  ///
  /// Existing entities with the same key are overwritten. The import occurs in
  /// the background and its progress can be monitored and managed via the
  /// Operation resource that is created. If an ImportEntities operation is
  /// cancelled, it is possible that a subset of the data has already been
  /// imported to Cloud Datastore.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [projectId] - Project ID against which to make the request.
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
  async.Future<GoogleLongrunningOperation> import(
    GoogleDatastoreAdminV1beta1ImportEntitiesRequest request,
    core.String projectId, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ =
        'v1beta1/projects/' + commons.escapeVariable('$projectId') + ':import';

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

/// Identifies a subset of entities in a project.
///
/// This is specified as combinations of kinds and namespaces (either or both of
/// which may be all, as described in the following examples). Example usage:
/// Entire project: kinds=\[\], namespace_ids=\[\] Kinds Foo and Bar in all
/// namespaces: kinds=\['Foo', 'Bar'\], namespace_ids=\[\] Kinds Foo and Bar
/// only in the default namespace: kinds=\['Foo', 'Bar'\], namespace_ids=\[''\]
/// Kinds Foo and Bar in both the default and Baz namespaces: kinds=\['Foo',
/// 'Bar'\], namespace_ids=\['', 'Baz'\] The entire Baz namespace: kinds=\[\],
/// namespace_ids=\['Baz'\]
typedef GoogleDatastoreAdminV1beta1EntityFilter = $EntityFilter;

/// The request for
/// google.datastore.admin.v1beta1.DatastoreAdmin.ExportEntities.
class GoogleDatastoreAdminV1beta1ExportEntitiesRequest {
  /// Description of what data from the project is included in the export.
  GoogleDatastoreAdminV1beta1EntityFilter? entityFilter;

  /// Client-assigned labels.
  core.Map<core.String, core.String>? labels;

  /// Location for the export metadata and data files.
  ///
  /// The full resource URL of the external storage location. Currently, only
  /// Google Cloud Storage is supported. So output_url_prefix should be of the
  /// form: `gs://BUCKET_NAME[/NAMESPACE_PATH]`, where `BUCKET_NAME` is the name
  /// of the Cloud Storage bucket and `NAMESPACE_PATH` is an optional Cloud
  /// Storage namespace path (this is not a Cloud Datastore namespace). For more
  /// information about Cloud Storage namespace paths, see
  /// [Object name considerations](https://cloud.google.com/storage/docs/naming#object-considerations).
  /// The resulting files will be nested deeper than the specified URL prefix.
  /// The final output URL will be provided in the
  /// google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url field.
  /// That value should be used for subsequent ImportEntities operations. By
  /// nesting the data files deeper, the same Cloud Storage bucket can be used
  /// in multiple ExportEntities operations without conflict.
  core.String? outputUrlPrefix;

  GoogleDatastoreAdminV1beta1ExportEntitiesRequest({
    this.entityFilter,
    this.labels,
    this.outputUrlPrefix,
  });

  GoogleDatastoreAdminV1beta1ExportEntitiesRequest.fromJson(core.Map json_)
    : this(
        entityFilter:
            json_.containsKey('entityFilter')
                ? GoogleDatastoreAdminV1beta1EntityFilter.fromJson(
                  json_['entityFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
        outputUrlPrefix: json_['outputUrlPrefix'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityFilter != null) 'entityFilter': entityFilter!,
    if (labels != null) 'labels': labels!,
    if (outputUrlPrefix != null) 'outputUrlPrefix': outputUrlPrefix!,
  };
}

/// The request for
/// google.datastore.admin.v1beta1.DatastoreAdmin.ImportEntities.
class GoogleDatastoreAdminV1beta1ImportEntitiesRequest {
  /// Optionally specify which kinds/namespaces are to be imported.
  ///
  /// If provided, the list must be a subset of the EntityFilter used in
  /// creating the export, otherwise a FAILED_PRECONDITION error will be
  /// returned. If no filter is specified then all entities from the export are
  /// imported.
  GoogleDatastoreAdminV1beta1EntityFilter? entityFilter;

  /// The full resource URL of the external storage location.
  ///
  /// Currently, only Google Cloud Storage is supported. So input_url should be
  /// of the form:
  /// `gs://BUCKET_NAME[/NAMESPACE_PATH]/OVERALL_EXPORT_METADATA_FILE`, where
  /// `BUCKET_NAME` is the name of the Cloud Storage bucket, `NAMESPACE_PATH` is
  /// an optional Cloud Storage namespace path (this is not a Cloud Datastore
  /// namespace), and `OVERALL_EXPORT_METADATA_FILE` is the metadata file
  /// written by the ExportEntities operation. For more information about Cloud
  /// Storage namespace paths, see
  /// [Object name considerations](https://cloud.google.com/storage/docs/naming#object-considerations).
  /// For more information, see
  /// google.datastore.admin.v1beta1.ExportEntitiesResponse.output_url.
  core.String? inputUrl;

  /// Client-assigned labels.
  core.Map<core.String, core.String>? labels;

  GoogleDatastoreAdminV1beta1ImportEntitiesRequest({
    this.entityFilter,
    this.inputUrl,
    this.labels,
  });

  GoogleDatastoreAdminV1beta1ImportEntitiesRequest.fromJson(core.Map json_)
    : this(
        entityFilter:
            json_.containsKey('entityFilter')
                ? GoogleDatastoreAdminV1beta1EntityFilter.fromJson(
                  json_['entityFilter'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        inputUrl: json_['inputUrl'] as core.String?,
        labels: (json_['labels'] as core.Map<core.String, core.dynamic>?)?.map(
          (key, value) => core.MapEntry(key, value as core.String),
        ),
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (entityFilter != null) 'entityFilter': entityFilter!,
    if (inputUrl != null) 'inputUrl': inputUrl!,
    if (labels != null) 'labels': labels!,
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
