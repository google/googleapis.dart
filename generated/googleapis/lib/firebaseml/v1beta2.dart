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

/// Firebase ML API - v1beta2
///
/// Access custom machine learning models hosted via Firebase ML.
///
/// For more information, see <https://firebase.google.com>
///
/// Create an instance of [FirebaseMLApi] to access these resources:
///
/// - [ProjectsResource]
///   - [ProjectsModelsResource]
///   - [ProjectsOperationsResource]
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

/// Access custom machine learning models hosted via Firebase ML.
class FirebaseMLApi {
  /// See, edit, configure, and delete your Google Cloud data and see the email
  /// address for your Google Account.
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResource get projects => ProjectsResource(_requester);

  FirebaseMLApi(
    http.Client client, {
    core.String rootUrl = 'https://firebaseml.googleapis.com/',
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

  ProjectsModelsResource get models => ProjectsModelsResource(_requester);
  ProjectsOperationsResource get operations =>
      ProjectsOperationsResource(_requester);

  ProjectsResource(commons.ApiRequester client) : _requester = client;
}

class ProjectsModelsResource {
  final commons.ApiRequester _requester;

  ProjectsModelsResource(commons.ApiRequester client) : _requester = client;

  /// Creates a model in Firebase ML.
  ///
  /// The longrunning operation will eventually return a Model
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The parent project resource where the model is to be
  /// created. The parent must have the form `projects/{project_id}`
  /// Value must have pattern `^projects/\[^/\]+$`.
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
    Model request,
    core.String parent, {
    core.String? $fields,
  }) async {
    final body_ = convert.json.encode(request);
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$parent') + '/models';

    final response_ = await _requester.request(
      url_,
      'POST',
      body: body_,
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Deletes a model
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the model to delete. The name must have the
  /// form `projects/{project_id}/models/{model_id}`
  /// Value must have pattern `^projects/\[^/\]+/models/\[^/\]+$`.
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

  /// Gets Download information for a model.
  ///
  /// This is meant for downloading model resources onto devices. It gives very
  /// limited information about the model.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the model to download. The name must have
  /// the form `projects/{project}/models/{model}`
  /// Value must have pattern `^projects/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [DownloadModelResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<DownloadModelResponse> download(
    core.String name, {
    core.String? $fields,
  }) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name') + ':download';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return DownloadModelResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Gets a model resource.
  ///
  /// Request parameters:
  ///
  /// [name] - Required. The name of the model to get. The name must have the
  /// form `projects/{project_id}/models/{model_id}`
  /// Value must have pattern `^projects/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [Model].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<Model> get(core.String name, {core.String? $fields}) async {
    final queryParams_ = <core.String, core.List<core.String>>{
      if ($fields != null) 'fields': [$fields],
    };

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Model.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }

  /// Lists the models
  ///
  /// Request parameters:
  ///
  /// [parent] - Required. The name of the parent to list models for. The parent
  /// must have the form \`projects/{project_id}'
  /// Value must have pattern `^projects/\[^/\]+$`.
  ///
  /// [filter] - A filter for the list e.g. 'tags: abc' to list models which are
  /// tagged with "abc"
  ///
  /// [pageSize] - The maximum number of items to return
  ///
  /// [pageToken] - The next_page_token value returned from a previous List
  /// request, if any.
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [ListModelsResponse].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<ListModelsResponse> list(
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

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$parent') + '/models';

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return ListModelsResponse.fromJson(
      response_ as core.Map<core.String, core.dynamic>,
    );
  }

  /// Updates a model.
  ///
  /// The longrunning operation will eventually return a Model.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [name] - The resource name of the Model. Model names have the form
  /// `projects/{project_id}/models/{model_id}` The name is ignored when
  /// creating a model.
  /// Value must have pattern `^projects/\[^/\]+/models/\[^/\]+$`.
  ///
  /// [updateMask] - The update mask
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
    Model request,
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
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

class ProjectsOperationsResource {
  final commons.ApiRequester _requester;

  ProjectsOperationsResource(commons.ApiRequester client) : _requester = client;

  /// Gets the latest state of a long-running operation.
  ///
  /// Clients can use this method to poll the operation result at intervals as
  /// recommended by the API service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern `^projects/\[^/\]+/operations/\[^/\]+$`.
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

    final url_ = 'v1beta2/' + core.Uri.encodeFull('$name');

    final response_ = await _requester.request(
      url_,
      'GET',
      queryParams: queryParams_,
    );
    return Operation.fromJson(response_ as core.Map<core.String, core.dynamic>);
  }
}

/// The response for downloading a model to device.
class DownloadModelResponse {
  /// A download URI for the model/zip file.
  ///
  /// Output only.
  core.String? downloadUri;

  /// The time that the download URI link expires.
  ///
  /// If the link has expired, the REST call must be repeated.
  ///
  /// Output only.
  core.String? expireTime;

  /// The format of the model being downloaded.
  ///
  /// Output only.
  /// Possible string values are:
  /// - "MODEL_FORMAT_UNSPECIFIED" : Unknown format
  /// - "TFLITE" : TFLite model
  core.String? modelFormat;

  /// The size of the file(s), if this information is available.
  ///
  /// Output only.
  core.String? sizeBytes;

  DownloadModelResponse({
    this.downloadUri,
    this.expireTime,
    this.modelFormat,
    this.sizeBytes,
  });

  DownloadModelResponse.fromJson(core.Map json_)
    : this(
        downloadUri: json_['downloadUri'] as core.String?,
        expireTime: json_['expireTime'] as core.String?,
        modelFormat: json_['modelFormat'] as core.String?,
        sizeBytes: json_['sizeBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (downloadUri != null) 'downloadUri': downloadUri!,
    if (expireTime != null) 'expireTime': expireTime!,
    if (modelFormat != null) 'modelFormat': modelFormat!,
    if (sizeBytes != null) 'sizeBytes': sizeBytes!,
  };
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs.
///
/// A typical example is to use it as the request or the response type of an API
/// method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns
/// (google.protobuf.Empty); }
typedef Empty = $Empty;

/// The response for list models
class ListModelsResponse {
  /// The list of models
  core.List<Model>? models;

  /// Token to retrieve the next page of results, or empty if there are no more
  /// results in the list.
  core.String? nextPageToken;

  ListModelsResponse({this.models, this.nextPageToken});

  ListModelsResponse.fromJson(core.Map json_)
    : this(
        models:
            (json_['models'] as core.List?)
                ?.map(
                  (value) => Model.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        nextPageToken: json_['nextPageToken'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (models != null) 'models': models!,
    if (nextPageToken != null) 'nextPageToken': nextPageToken!,
  };
}

/// An ML model hosted in Firebase ML
class Model {
  /// Lists operation ids associated with this model whose status is NOT done.
  ///
  /// Output only.
  core.List<Operation>? activeOperations;

  /// Timestamp when this model was created in Firebase ML.
  ///
  /// Output only.
  core.String? createTime;

  /// The name of the model to create.
  ///
  /// The name can be up to 32 characters long and can consist only of ASCII
  /// Latin letters A-Z and a-z, underscores(_) and ASCII digits 0-9. It must
  /// start with a letter.
  ///
  /// Required.
  core.String? displayName;

  /// See RFC7232 https://tools.ietf.org/html/rfc7232#section-2.3
  ///
  /// Output only.
  core.String? etag;

  /// The model_hash will change if a new file is available for download.
  ///
  /// Output only.
  core.String? modelHash;

  /// The resource name of the Model.
  ///
  /// Model names have the form `projects/{project_id}/models/{model_id}` The
  /// name is ignored when creating a model.
  core.String? name;

  /// State common to all model types.
  ///
  /// Includes publishing and validation information.
  ModelState? state;

  /// User defined tags which can be used to group/filter models during listing
  core.List<core.String>? tags;

  /// A TFLite Model
  TfLiteModel? tfliteModel;

  /// Timestamp when this model was updated in Firebase ML.
  ///
  /// Output only.
  core.String? updateTime;

  Model({
    this.activeOperations,
    this.createTime,
    this.displayName,
    this.etag,
    this.modelHash,
    this.name,
    this.state,
    this.tags,
    this.tfliteModel,
    this.updateTime,
  });

  Model.fromJson(core.Map json_)
    : this(
        activeOperations:
            (json_['activeOperations'] as core.List?)
                ?.map(
                  (value) => Operation.fromJson(
                    value as core.Map<core.String, core.dynamic>,
                  ),
                )
                .toList(),
        createTime: json_['createTime'] as core.String?,
        displayName: json_['displayName'] as core.String?,
        etag: json_['etag'] as core.String?,
        modelHash: json_['modelHash'] as core.String?,
        name: json_['name'] as core.String?,
        state:
            json_.containsKey('state')
                ? ModelState.fromJson(
                  json_['state'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        tags:
            (json_['tags'] as core.List?)
                ?.map((value) => value as core.String)
                .toList(),
        tfliteModel:
            json_.containsKey('tfliteModel')
                ? TfLiteModel.fromJson(
                  json_['tfliteModel'] as core.Map<core.String, core.dynamic>,
                )
                : null,
        updateTime: json_['updateTime'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (activeOperations != null) 'activeOperations': activeOperations!,
    if (createTime != null) 'createTime': createTime!,
    if (displayName != null) 'displayName': displayName!,
    if (etag != null) 'etag': etag!,
    if (modelHash != null) 'modelHash': modelHash!,
    if (name != null) 'name': name!,
    if (state != null) 'state': state!,
    if (tags != null) 'tags': tags!,
    if (tfliteModel != null) 'tfliteModel': tfliteModel!,
    if (updateTime != null) 'updateTime': updateTime!,
  };
}

/// State common to all model types.
///
/// Includes publishing and validation information.
class ModelState {
  /// Indicates if this model has been published.
  core.bool? published;

  /// Indicates the latest validation error on the model if any.
  ///
  /// A model may have validation errors if there were problems during the model
  /// creation/update. e.g. in the case of a TfLiteModel, if a tflite model file
  /// was missing or in the wrong format. This field will be empty for valid
  /// models.
  ///
  /// Output only.
  Status? validationError;

  ModelState({this.published, this.validationError});

  ModelState.fromJson(core.Map json_)
    : this(
        published: json_['published'] as core.bool?,
        validationError:
            json_.containsKey('validationError')
                ? Status.fromJson(
                  json_['validationError']
                      as core.Map<core.String, core.dynamic>,
                )
                : null,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (published != null) 'published': published!,
    if (validationError != null) 'validationError': validationError!,
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

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs.
///
/// It is used by [gRPC](https://github.com/grpc). Each `Status` message
/// contains three pieces of data: error code, error message, and error details.
/// You can find out more about this error model and how to work with it in the
/// [API Design Guide](https://cloud.google.com/apis/design/errors).
typedef Status = $Status00;

/// Information that is specific to TfLite models.
class TfLiteModel {
  /// The AutoML model id referencing a model you created with the AutoML API.
  ///
  /// The name should have format 'projects//locations//models/' (This is the
  /// model resource name returned from the AutoML API)
  core.String? automlModel;

  /// The TfLite file containing the model.
  ///
  /// (Stored in Google Cloud). The gcs_tflite_uri should have form:
  /// gs://some-bucket/some-model.tflite Note: If you update the file in the
  /// original location, it is necessary to call UpdateModel for ML to pick up
  /// and validate the updated file.
  core.String? gcsTfliteUri;

  /// The size of the TFLite model
  ///
  /// Output only.
  core.String? sizeBytes;

  TfLiteModel({this.automlModel, this.gcsTfliteUri, this.sizeBytes});

  TfLiteModel.fromJson(core.Map json_)
    : this(
        automlModel: json_['automlModel'] as core.String?,
        gcsTfliteUri: json_['gcsTfliteUri'] as core.String?,
        sizeBytes: json_['sizeBytes'] as core.String?,
      );

  core.Map<core.String, core.dynamic> toJson() => {
    if (automlModel != null) 'automlModel': automlModel!,
    if (gcsTfliteUri != null) 'gcsTfliteUri': gcsTfliteUri!,
    if (sizeBytes != null) 'sizeBytes': sizeBytes!,
  };
}
