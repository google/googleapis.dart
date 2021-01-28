// This is a generated file (see the discoveryapis_generator project).

// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations

library googleapis_beta.documentai.v1beta2;

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:_discoveryapis_commons/_discoveryapis_commons.dart' as commons;
import 'package:http/http.dart' as http;

import '../src/user_agent.dart';

export 'package:_discoveryapis_commons/_discoveryapis_commons.dart'
    show ApiRequestError, DetailedApiRequestError;

/// Service to parse structured information from unstructured or semi-structured
/// documents using state-of-the-art Google AI such as natural language,
/// computer vision, translation, and AutoML.
class DocumentaiApi {
  /// View and manage your data across Google Cloud Platform services
  static const cloudPlatformScope =
      'https://www.googleapis.com/auth/cloud-platform';

  final commons.ApiRequester _requester;

  ProjectsResourceApi get projects => ProjectsResourceApi(_requester);

  DocumentaiApi(http.Client client,
      {core.String rootUrl = 'https://documentai.googleapis.com/',
      core.String servicePath = ''})
      : _requester =
            commons.ApiRequester(client, rootUrl, servicePath, userAgent);
}

class ProjectsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDocumentsResourceApi get documents =>
      ProjectsDocumentsResourceApi(_requester);
  ProjectsLocationsResourceApi get locations =>
      ProjectsLocationsResourceApi(_requester);
  ProjectsOperationsResourceApi get operations =>
      ProjectsOperationsResourceApi(_requester);

  ProjectsResourceApi(commons.ApiRequester client) : _requester = client;
}

class ProjectsDocumentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsDocumentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// LRO endpoint to batch process many documents. The output is written to
  /// Cloud Storage as JSON in the [Document] format.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no location is
  /// specified, a region will be chosen automatically.
  /// Value must have pattern "^projects/[^/]+$".
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
  async.Future<GoogleLongrunningOperation> batchProcess(
    GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/documents:batchProcess';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => GoogleLongrunningOperation.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Processes a single document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no location is
  /// specified, a region will be chosen automatically. This field is only
  /// populated when used in ProcessDocument method.
  /// Value must have pattern "^projects/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1beta2Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta2Document> process(
    GoogleCloudDocumentaiV1beta2ProcessDocumentRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/documents:process';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => GoogleCloudDocumentaiV1beta2Document.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsLocationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDocumentsResourceApi get documents =>
      ProjectsLocationsDocumentsResourceApi(_requester);
  ProjectsLocationsOperationsResourceApi get operations =>
      ProjectsLocationsOperationsResourceApi(_requester);

  ProjectsLocationsResourceApi(commons.ApiRequester client)
      : _requester = client;
}

class ProjectsLocationsDocumentsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsDocumentsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// LRO endpoint to batch process many documents. The output is written to
  /// Cloud Storage as JSON in the [Document] format.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no location is
  /// specified, a region will be chosen automatically.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
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
  async.Future<GoogleLongrunningOperation> batchProcess(
    GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/documents:batchProcess';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => GoogleLongrunningOperation.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }

  /// Processes a single document.
  ///
  /// [request] - The metadata request object.
  ///
  /// Request parameters:
  ///
  /// [parent] - Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no location is
  /// specified, a region will be chosen automatically. This field is only
  /// populated when used in ProcessDocument method.
  /// Value must have pattern "^projects/[^/]+/locations/[^/]+$".
  ///
  /// [$fields] - Selector specifying which fields to include in a partial
  /// response.
  ///
  /// Completes with a [GoogleCloudDocumentaiV1beta2Document].
  ///
  /// Completes with a [commons.ApiRequestError] if the API endpoint returned an
  /// error.
  ///
  /// If the used [http.Client] completes with an error when making a REST call,
  /// this method will complete with the same error.
  async.Future<GoogleCloudDocumentaiV1beta2Document> process(
    GoogleCloudDocumentaiV1beta2ProcessDocumentRequest request,
    core.String parent, {
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (request != null) {
      _body = convert.json.encode(request.toJson());
    }
    if (parent == null) {
      throw core.ArgumentError('Parameter parent is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' +
        commons.Escaper.ecapeVariableReserved('$parent') +
        '/documents:process';

    final _response = _requester.request(
      _url,
      'POST',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => GoogleCloudDocumentaiV1beta2Document.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsLocationsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsLocationsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern
  /// "^projects/[^/]+/locations/[^/]+/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => GoogleLongrunningOperation.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

class ProjectsOperationsResourceApi {
  final commons.ApiRequester _requester;

  ProjectsOperationsResourceApi(commons.ApiRequester client)
      : _requester = client;

  /// Gets the latest state of a long-running operation. Clients can use this
  /// method to poll the operation result at intervals as recommended by the API
  /// service.
  ///
  /// Request parameters:
  ///
  /// [name] - The name of the operation resource.
  /// Value must have pattern "^projects/[^/]+/operations/[^/]+$".
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
    core.String $fields,
  }) {
    core.String _url;
    final _queryParams = <core.String, core.List<core.String>>{};
    commons.Media _uploadMedia;
    commons.UploadOptions _uploadOptions;
    var _downloadOptions = commons.DownloadOptions.Metadata;
    core.String _body;

    if (name == null) {
      throw core.ArgumentError('Parameter name is required.');
    }
    if ($fields != null) {
      _queryParams['fields'] = [$fields];
    }

    _url = 'v1beta2/' + commons.Escaper.ecapeVariableReserved('$name');

    final _response = _requester.request(
      _url,
      'GET',
      body: _body,
      queryParams: _queryParams,
      uploadOptions: _uploadOptions,
      uploadMedia: _uploadMedia,
      downloadOptions: _downloadOptions,
    );
    return _response.then(
      (data) => GoogleLongrunningOperation.fromJson(
          data as core.Map<core.String, core.dynamic>),
    );
  }
}

/// The long running operation metadata for CreateLabelerPool.
class GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// Used only when Operation.done is false.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the error message if the operation is failed.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata();

  GoogleCloudDocumentaiUiv1beta3CreateLabelerPoolOperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The metadata that represents a processor version being created.
class GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// The state of the current disable processor operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The training state is unspecified.
  /// - "QUEUED" : The training request has been issued but processing has not
  /// yet begun.
  /// - "PREPARING" : The service is preparing to execute the training.
  /// - "RUNNING" : The training is in progress.
  /// - "SUCCEEDED" : The training completed successfully.
  /// - "FAILED" : The training failed. `error` should contain the details of
  /// the failure.
  /// - "CANCELLING" : The training is being cancelled. `error` should describe
  /// the reason for the cancellation.
  /// - "CANCELLED" : The training has been cancelled. `error` should describe
  /// the reason for the cancellation.
  core.String state;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata();

  GoogleCloudDocumentaiUiv1beta3CreateProcessorVersionMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The long running operation metadata for DeleteLabelerPool.
class GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// Used only when Operation.done is false.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the error message if the operation is failed.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata();

  GoogleCloudDocumentaiUiv1beta3DeleteLabelerPoolOperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The long running operation metadata for delete processor method.
class GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// The state of the current delete processor operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The operation is completed successfully.
  /// - "FAILED" : The operation has failed.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the error message if the operation is failed.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata();

  GoogleCloudDocumentaiUiv1beta3DeleteProcessorMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The long running operation metadata for disable processor method.
class GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// The state of the current disable processor operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The operation is completed successfully.
  /// - "CANCELLING" : The operation was being cancelled.
  /// - "CANCELLED" : The operation was cancelled.
  /// - "FAILED" : The operation has failed.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the error message if the operation is failed.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata();

  GoogleCloudDocumentaiUiv1beta3DisableProcessorMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Response message for the disable processor method. Intentionally empty proto
/// for adding fields in future.
class GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse {
  GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse();

  GoogleCloudDocumentaiUiv1beta3DisableProcessorResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// The long running operation metadata for enable processor method.
class GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// The state of the current enable processor operation.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The operation is completed successfully.
  /// - "CANCELLING" : The operation was being cancelled.
  /// - "CANCELLED" : The operation was cancelled.
  /// - "FAILED" : The operation has failed.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the error message if the operation is failed.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata();

  GoogleCloudDocumentaiUiv1beta3EnableProcessorMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Response message for the enable processor method. Intentionally empty proto
/// for adding fields in future.
class GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse {
  GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse();

  GoogleCloudDocumentaiUiv1beta3EnableProcessorResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// The long running operation metadata for UpdateLabelerPool.
class GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// Used only when Operation.done is false.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the error message if the operation is failed.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata();

  GoogleCloudDocumentaiUiv1beta3UpdateLabelerPoolOperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Response to an batch document processing request. This is returned in the
/// LRO Operation after the operation is complete.
class GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse {
  /// Responses for each individual document.
  core.List<GoogleCloudDocumentaiV1beta1ProcessDocumentResponse> responses;

  GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse();

  GoogleCloudDocumentaiV1beta1BatchProcessDocumentsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('responses')) {
      responses = (_json['responses'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1ProcessDocumentResponse>((value) =>
              GoogleCloudDocumentaiV1beta1ProcessDocumentResponse.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (responses != null) {
      _json['responses'] = responses.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1beta1BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDocumentaiV1beta1NormalizedVertex> normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudDocumentaiV1beta1Vertex> vertices;

  GoogleCloudDocumentaiV1beta1BoundingPoly();

  GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(core.Map _json) {
    if (_json.containsKey('normalizedVertices')) {
      normalizedVertices = (_json['normalizedVertices'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1NormalizedVertex>((value) =>
              GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('vertices')) {
      vertices = (_json['vertices'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1Vertex>((value) =>
              GoogleCloudDocumentaiV1beta1Vertex.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (normalizedVertices != null) {
      _json['normalizedVertices'] =
          normalizedVertices.map((value) => value.toJson()).toList();
    }
    if (vertices != null) {
      _json['vertices'] = vertices.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Document represents the canonical document resource in Document
/// Understanding AI. It is an interchange format that provides insights into
/// documents and allows for collaboration between users and Document
/// Understanding AI to iterate and optimize for quality.
class GoogleCloudDocumentaiV1beta1Document {
  /// Inline document content, represented as a stream of bytes. Note: As with
  /// all `bytes` fields, protobuffers use a pure binary representation, whereas
  /// JSON representations use base64.
  core.String content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A list of entities detected on Document.text. For document shards,
  /// entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1beta1DocumentEntity> entities;

  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1beta1DocumentEntityRelation> entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus error;

  /// An IANA published MIME type (also referred to as media type). For more
  /// information, see
  /// https://www.iana.org/assignments/media-types/media-types.xhtml.
  core.String mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPage> pages;

  /// Revision history of this document.
  core.List<GoogleCloudDocumentaiV1beta1DocumentRevision> revisions;

  /// Information about the sharding if this document is sharded part of a
  /// larger document. If the document is not sharded, this message is not
  /// specified.
  GoogleCloudDocumentaiV1beta1DocumentShardInfo shardInfo;

  /// UTF-8 encoded text in reading order from the document.
  core.String text;

  /// A list of text corrections made to [Document.text]. This is usually used
  /// for annotating corrections to OCR mistakes. Text changes for a given
  /// revision may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1beta1DocumentTextChange> textChanges;

  /// Styles for the Document.text.
  core.List<GoogleCloudDocumentaiV1beta1DocumentStyle> textStyles;

  /// A list of translations on Document.text. For document shards, translations
  /// in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1beta1DocumentTranslation> translations;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`. Object versioning is not supported. See
  /// [Google Cloud Storage Request
  /// URIs](https://cloud.google.com/storage/docs/reference-uris) for more info.
  core.String uri;

  GoogleCloudDocumentaiV1beta1Document();

  GoogleCloudDocumentaiV1beta1Document.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentEntity>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('entityRelations')) {
      entityRelations = (_json['entityRelations'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentEntityRelation>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentEntityRelation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('error')) {
      error = GoogleRpcStatus.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('pages')) {
      pages = (_json['pages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPage>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('revisions')) {
      revisions = (_json['revisions'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentRevision>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('shardInfo')) {
      shardInfo = GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(
          _json['shardInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
    if (_json.containsKey('textChanges')) {
      textChanges = (_json['textChanges'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentTextChange>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentTextChange.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('textStyles')) {
      textStyles = (_json['textStyles'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentStyle>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('translations')) {
      translations = (_json['translations'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentTranslation>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentTranslation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (entityRelations != null) {
      _json['entityRelations'] =
          entityRelations.map((value) => value.toJson()).toList();
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (pages != null) {
      _json['pages'] = pages.map((value) => value.toJson()).toList();
    }
    if (revisions != null) {
      _json['revisions'] = revisions.map((value) => value.toJson()).toList();
    }
    if (shardInfo != null) {
      _json['shardInfo'] = shardInfo.toJson();
    }
    if (text != null) {
      _json['text'] = text;
    }
    if (textChanges != null) {
      _json['textChanges'] =
          textChanges.map((value) => value.toJson()).toList();
    }
    if (textStyles != null) {
      _json['textStyles'] = textStyles.map((value) => value.toJson()).toList();
    }
    if (translations != null) {
      _json['translations'] =
          translations.map((value) => value.toJson()).toList();
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// A phrase in the text that is a known entity type, such as a person, an
/// organization, or location.
class GoogleCloudDocumentaiV1beta1DocumentEntity {
  /// Optional. Confidence of detected Schema entity. Range [0, 1].
  core.double confidence;

  /// Optional. Canonical id. This will be a unique value in the entity list for
  /// this document.
  core.String id;

  /// Deprecated. Use `id` field instead.
  core.String mentionId;

  /// Text value in the document e.g. `1600 Amphitheatre Pkwy`.
  core.String mentionText;

  /// Optional. Normalized entity value. Absent if the extracted value could not
  /// be converted or the type (e.g. address) is not supported for certain
  /// parsers. This field is also only populated for certain supported document
  /// types.
  GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue normalizedValue;

  /// Optional. Represents the provenance of this entity wrt. the location on
  /// the page where it was found.
  GoogleCloudDocumentaiV1beta1DocumentPageAnchor pageAnchor;

  /// Optional. Entities can be nested to form a hierarchical data structure
  /// representing the content in the document.
  core.List<GoogleCloudDocumentaiV1beta1DocumentEntity> properties;

  /// Optional. The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance provenance;

  /// Optional. Whether the entity will be redacted for de-identification
  /// purposes.
  core.bool redacted;

  /// Provenance of the entity. Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor textAnchor;

  /// Entity type from a schema e.g. `Address`.
  core.String type;

  GoogleCloudDocumentaiV1beta1DocumentEntity();

  GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(core.Map _json) {
    if (_json.containsKey('confidence')) {
      confidence = (_json['confidence'] as core.num).toDouble();
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('mentionId')) {
      mentionId = _json['mentionId'] as core.String;
    }
    if (_json.containsKey('mentionText')) {
      mentionText = _json['mentionText'] as core.String;
    }
    if (_json.containsKey('normalizedValue')) {
      normalizedValue =
          GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue.fromJson(
              _json['normalizedValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pageAnchor')) {
      pageAnchor = GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(
          _json['pageAnchor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('properties')) {
      properties = (_json['properties'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentEntity>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentEntity.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('redacted')) {
      redacted = _json['redacted'] as core.bool;
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (confidence != null) {
      _json['confidence'] = confidence;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (mentionId != null) {
      _json['mentionId'] = mentionId;
    }
    if (mentionText != null) {
      _json['mentionText'] = mentionText;
    }
    if (normalizedValue != null) {
      _json['normalizedValue'] = normalizedValue.toJson();
    }
    if (pageAnchor != null) {
      _json['pageAnchor'] = pageAnchor.toJson();
    }
    if (properties != null) {
      _json['properties'] = properties.map((value) => value.toJson()).toList();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    if (redacted != null) {
      _json['redacted'] = redacted;
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue {
  /// Postal address. See also: https: //github.com/googleapis/googleapis/blob/
  /// // master/google/type/postal_address.proto
  GoogleTypePostalAddress addressValue;

  /// Date value. Includes year, month, day. See also: https:
  /// //github.com/googleapis/googleapis/blob/master/google/type/date.proto
  GoogleTypeDate dateValue;

  /// DateTime value. Includes date, time, and timezone. See also: https:
  /// //github.com/googleapis/googleapis/blob/ //
  /// master/google/type/datetime.proto
  GoogleTypeDateTime datetimeValue;

  /// Money value. See also: https: //github.com/googleapis/googleapis/blob/ //
  /// master/google/type/money.proto
  GoogleTypeMoney moneyValue;

  /// Required. Normalized entity value stored as a string. This field is
  /// populated for supported document type (e.g. Invoice). For some entity
  /// types, one of respective 'structured_value' fields may also be populated.
  /// - Money/Currency type (`money_value`) is in the ISO 4217 text format. -
  /// Date type (`date_value`) is in the ISO 8601 text format. - Datetime type
  /// (`datetime_value`) is in the ISO 8601 text format.
  core.String text;

  GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue();

  GoogleCloudDocumentaiV1beta1DocumentEntityNormalizedValue.fromJson(
      core.Map _json) {
    if (_json.containsKey('addressValue')) {
      addressValue = GoogleTypePostalAddress.fromJson(
          _json['addressValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dateValue')) {
      dateValue = GoogleTypeDate.fromJson(
          _json['dateValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('datetimeValue')) {
      datetimeValue = GoogleTypeDateTime.fromJson(
          _json['datetimeValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('moneyValue')) {
      moneyValue = GoogleTypeMoney.fromJson(
          _json['moneyValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addressValue != null) {
      _json['addressValue'] = addressValue.toJson();
    }
    if (dateValue != null) {
      _json['dateValue'] = dateValue.toJson();
    }
    if (datetimeValue != null) {
      _json['datetimeValue'] = datetimeValue.toJson();
    }
    if (moneyValue != null) {
      _json['moneyValue'] = moneyValue.toJson();
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Relationship between Entities.
class GoogleCloudDocumentaiV1beta1DocumentEntityRelation {
  /// Object entity id.
  core.String objectId;

  /// Relationship description.
  core.String relation;

  /// Subject entity id.
  core.String subjectId;

  GoogleCloudDocumentaiV1beta1DocumentEntityRelation();

  GoogleCloudDocumentaiV1beta1DocumentEntityRelation.fromJson(core.Map _json) {
    if (_json.containsKey('objectId')) {
      objectId = _json['objectId'] as core.String;
    }
    if (_json.containsKey('relation')) {
      relation = _json['relation'] as core.String;
    }
    if (_json.containsKey('subjectId')) {
      subjectId = _json['subjectId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (objectId != null) {
      _json['objectId'] = objectId;
    }
    if (relation != null) {
      _json['relation'] = relation;
    }
    if (subjectId != null) {
      _json['subjectId'] = subjectId;
    }
    return _json;
  }
}

/// A page in a Document.
class GoogleCloudDocumentaiV1beta1DocumentPage {
  /// A list of visually detected text blocks on the page. A block has a set of
  /// lines (collected into paragraphs) that have a common line-spacing and
  /// orientation.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageBlock> blocks;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Physical dimension of the page.
  GoogleCloudDocumentaiV1beta1DocumentPageDimension dimension;

  /// A list of visually detected form fields on the page.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageFormField> formFields;

  /// Rendered image for this page. This image is preprocessed to remove any
  /// skew, rotation, and distortions such that the annotation bounding boxes
  /// can be upright and axis-aligned.
  GoogleCloudDocumentaiV1beta1DocumentPageImage image;

  /// Layout for the page.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout layout;

  /// A list of visually detected text lines on the page. A collection of tokens
  /// that a human would perceive as a line.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageLine> lines;

  /// 1-based index for current Page in a parent Document. Useful when a page is
  /// taken out of a Document for individual processing.
  core.int pageNumber;

  /// A list of visually detected text paragraphs on the page. A collection of
  /// lines that a human would perceive as a paragraph.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageParagraph> paragraphs;

  /// A list of visually detected tables on the page.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageTable> tables;

  /// A list of visually detected tokens on the page.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageToken> tokens;

  /// Transformation matrices that were applied to the original document image
  /// to produce Page.image.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageMatrix> transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc.
  /// on the page.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>
      visualElements;

  GoogleCloudDocumentaiV1beta1DocumentPage();

  GoogleCloudDocumentaiV1beta1DocumentPage.fromJson(core.Map _json) {
    if (_json.containsKey('blocks')) {
      blocks = (_json['blocks'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageBlock>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dimension')) {
      dimension = GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(
          _json['dimension'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('formFields')) {
      formFields = (_json['formFields'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageFormField>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageFormField.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('image')) {
      image = GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(
          _json['image'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('lines')) {
      lines = (_json['lines'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageLine>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('pageNumber')) {
      pageNumber = _json['pageNumber'] as core.int;
    }
    if (_json.containsKey('paragraphs')) {
      paragraphs = (_json['paragraphs'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageParagraph>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageParagraph.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('tables')) {
      tables = (_json['tables'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageTable>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('tokens')) {
      tokens = (_json['tokens'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageToken>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('transforms')) {
      transforms = (_json['transforms'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageMatrix>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageMatrix.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('visualElements')) {
      visualElements = (_json['visualElements'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageVisualElement>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (blocks != null) {
      _json['blocks'] = blocks.map((value) => value.toJson()).toList();
    }
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (dimension != null) {
      _json['dimension'] = dimension.toJson();
    }
    if (formFields != null) {
      _json['formFields'] = formFields.map((value) => value.toJson()).toList();
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (lines != null) {
      _json['lines'] = lines.map((value) => value.toJson()).toList();
    }
    if (pageNumber != null) {
      _json['pageNumber'] = pageNumber;
    }
    if (paragraphs != null) {
      _json['paragraphs'] = paragraphs.map((value) => value.toJson()).toList();
    }
    if (tables != null) {
      _json['tables'] = tables.map((value) => value.toJson()).toList();
    }
    if (tokens != null) {
      _json['tokens'] = tokens.map((value) => value.toJson()).toList();
    }
    if (transforms != null) {
      _json['transforms'] = transforms.map((value) => value.toJson()).toList();
    }
    if (visualElements != null) {
      _json['visualElements'] =
          visualElements.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Referencing the visual context of the entity in the Document.pages. Page
/// anchors can be cross-page, consist of multiple bounding polygons and
/// optionally reference specific layout element types.
class GoogleCloudDocumentaiV1beta1DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef> pageRefs;

  GoogleCloudDocumentaiV1beta1DocumentPageAnchor();

  GoogleCloudDocumentaiV1beta1DocumentPageAnchor.fromJson(core.Map _json) {
    if (_json.containsKey('pageRefs')) {
      pageRefs = (_json['pageRefs'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (pageRefs != null) {
      _json['pageRefs'] = pageRefs.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef {
  /// Optional. Identifies the bounding polygon of a layout element on the page.
  GoogleCloudDocumentaiV1beta1BoundingPoly boundingPoly;

  /// Optional. Deprecated. Use PageRef.bounding_poly instead.
  core.String layoutId;

  /// Optional. The type of the layout element that is being referenced if any.
  /// Possible string values are:
  /// - "LAYOUT_TYPE_UNSPECIFIED" : Layout Unspecified.
  /// - "BLOCK" : References a Page.blocks element.
  /// - "PARAGRAPH" : References a Page.paragraphs element.
  /// - "LINE" : References a Page.lines element.
  /// - "TOKEN" : References a Page.tokens element.
  /// - "VISUAL_ELEMENT" : References a Page.visual_elements element.
  /// - "TABLE" : Refrrences a Page.tables element.
  /// - "FORM_FIELD" : References a Page.form_fields element.
  core.String layoutType;

  /// Required. Index into the Document.pages element
  core.String page;

  GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef();

  GoogleCloudDocumentaiV1beta1DocumentPageAnchorPageRef.fromJson(
      core.Map _json) {
    if (_json.containsKey('boundingPoly')) {
      boundingPoly = GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(
          _json['boundingPoly'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('layoutId')) {
      layoutId = _json['layoutId'] as core.String;
    }
    if (_json.containsKey('layoutType')) {
      layoutType = _json['layoutType'] as core.String;
    }
    if (_json.containsKey('page')) {
      page = _json['page'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (boundingPoly != null) {
      _json['boundingPoly'] = boundingPoly.toJson();
    }
    if (layoutId != null) {
      _json['layoutId'] = layoutId;
    }
    if (layoutType != null) {
      _json['layoutType'] = layoutType;
    }
    if (page != null) {
      _json['page'] = page;
    }
    return _json;
  }
}

/// A block has a set of lines (collected into paragraphs) that have a common
/// line-spacing and orientation.
class GoogleCloudDocumentaiV1beta1DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance provenance;

  GoogleCloudDocumentaiV1beta1DocumentPageBlock();

  GoogleCloudDocumentaiV1beta1DocumentPageBlock.fromJson(core.Map _json) {
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    return _json;
  }
}

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage {
  /// Confidence of detected language. Range [0, 1].
  core.double confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage();

  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage.fromJson(
      core.Map _json) {
    if (_json.containsKey('confidence')) {
      confidence = (_json['confidence'] as core.num).toDouble();
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (confidence != null) {
      _json['confidence'] = confidence;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    return _json;
  }
}

/// Dimension for the page.
class GoogleCloudDocumentaiV1beta1DocumentPageDimension {
  /// Page height.
  core.double height;

  /// Dimension unit.
  core.String unit;

  /// Page width.
  core.double width;

  GoogleCloudDocumentaiV1beta1DocumentPageDimension();

  GoogleCloudDocumentaiV1beta1DocumentPageDimension.fromJson(core.Map _json) {
    if (_json.containsKey('height')) {
      height = (_json['height'] as core.num).toDouble();
    }
    if (_json.containsKey('unit')) {
      unit = _json['unit'] as core.String;
    }
    if (_json.containsKey('width')) {
      width = (_json['width'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (height != null) {
      _json['height'] = height;
    }
    if (unit != null) {
      _json['unit'] = unit;
    }
    if (width != null) {
      _json['width'] = width;
    }
    return _json;
  }
}

/// A form field detected on the page.
class GoogleCloudDocumentaiV1beta1DocumentPageFormField {
  /// Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`,
  /// `Phone number`, etc.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout fieldName;

  /// Layout for the FormField value.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout fieldValue;

  /// A list of detected languages for name together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      nameDetectedLanguages;

  /// A list of detected languages for value together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type. Current valid
  /// values are: - blank (this indicates the field_value is normal text) -
  /// "unfilled_checkbox" - "filled_checkbox"
  core.String valueType;

  GoogleCloudDocumentaiV1beta1DocumentPageFormField();

  GoogleCloudDocumentaiV1beta1DocumentPageFormField.fromJson(core.Map _json) {
    if (_json.containsKey('fieldName')) {
      fieldName = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['fieldName'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fieldValue')) {
      fieldValue = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['fieldValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('nameDetectedLanguages')) {
      nameDetectedLanguages = (_json['nameDetectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('valueDetectedLanguages')) {
      valueDetectedLanguages = (_json['valueDetectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('valueType')) {
      valueType = _json['valueType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fieldName != null) {
      _json['fieldName'] = fieldName.toJson();
    }
    if (fieldValue != null) {
      _json['fieldValue'] = fieldValue.toJson();
    }
    if (nameDetectedLanguages != null) {
      _json['nameDetectedLanguages'] =
          nameDetectedLanguages.map((value) => value.toJson()).toList();
    }
    if (valueDetectedLanguages != null) {
      _json['valueDetectedLanguages'] =
          valueDetectedLanguages.map((value) => value.toJson()).toList();
    }
    if (valueType != null) {
      _json['valueType'] = valueType;
    }
    return _json;
  }
}

/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1beta1DocumentPageImage {
  /// Raw byte content of the image.
  core.String content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int height;

  /// Encoding mime type for the image.
  core.String mimeType;

  /// Width of the image in pixels.
  core.int width;

  GoogleCloudDocumentaiV1beta1DocumentPageImage();

  GoogleCloudDocumentaiV1beta1DocumentPageImage.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('height')) {
      height = _json['height'] as core.int;
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('width')) {
      width = _json['width'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (height != null) {
      _json['height'] = height;
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (width != null) {
      _json['width'] = width;
    }
    return _json;
  }
}

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1beta1DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1beta1BoundingPoly boundingPoly;

  /// Confidence of the current Layout within context of the object this layout
  /// is for. e.g. confidence can be for a single token, a table, a visual
  /// element, etc. depending on context. Range [0, 1].
  core.double confidence;

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
  core.String orientation;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor textAnchor;

  GoogleCloudDocumentaiV1beta1DocumentPageLayout();

  GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(core.Map _json) {
    if (_json.containsKey('boundingPoly')) {
      boundingPoly = GoogleCloudDocumentaiV1beta1BoundingPoly.fromJson(
          _json['boundingPoly'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('confidence')) {
      confidence = (_json['confidence'] as core.num).toDouble();
    }
    if (_json.containsKey('orientation')) {
      orientation = _json['orientation'] as core.String;
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (boundingPoly != null) {
      _json['boundingPoly'] = boundingPoly.toJson();
    }
    if (confidence != null) {
      _json['confidence'] = confidence;
    }
    if (orientation != null) {
      _json['orientation'] = orientation;
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    return _json;
  }
}

/// A collection of tokens that a human would perceive as a line. Does not cross
/// column boundaries, can be horizontal, vertical, etc.
class GoogleCloudDocumentaiV1beta1DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance provenance;

  GoogleCloudDocumentaiV1beta1DocumentPageLine();

  GoogleCloudDocumentaiV1beta1DocumentPageLine.fromJson(core.Map _json) {
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    return _json;
  }
}

/// Representation for transformation matrix, intended to be compatible and used
/// with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1beta1DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int cols;

  /// The matrix data.
  core.String data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int rows;

  /// This encodes information about what data type the matrix uses. For
  /// example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV
  /// primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int type;

  GoogleCloudDocumentaiV1beta1DocumentPageMatrix();

  GoogleCloudDocumentaiV1beta1DocumentPageMatrix.fromJson(core.Map _json) {
    if (_json.containsKey('cols')) {
      cols = _json['cols'] as core.int;
    }
    if (_json.containsKey('data')) {
      data = _json['data'] as core.String;
    }
    if (_json.containsKey('rows')) {
      rows = _json['rows'] as core.int;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cols != null) {
      _json['cols'] = cols;
    }
    if (data != null) {
      _json['data'] = data;
    }
    if (rows != null) {
      _json['rows'] = rows;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1beta1DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance provenance;

  GoogleCloudDocumentaiV1beta1DocumentPageParagraph();

  GoogleCloudDocumentaiV1beta1DocumentPageParagraph.fromJson(core.Map _json) {
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    return _json;
  }
}

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1beta1DocumentPageTable {
  /// Body rows of the table.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> bodyRows;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Header rows of the table.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow> headerRows;

  /// Layout for Table.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout layout;

  GoogleCloudDocumentaiV1beta1DocumentPageTable();

  GoogleCloudDocumentaiV1beta1DocumentPageTable.fromJson(core.Map _json) {
    if (_json.containsKey('bodyRows')) {
      bodyRows = (_json['bodyRows'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('headerRows')) {
      headerRows = (_json['headerRows'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bodyRows != null) {
      _json['bodyRows'] = bodyRows.map((value) => value.toJson()).toList();
    }
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (headerRows != null) {
      _json['headerRows'] = headerRows.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    return _json;
  }
}

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell {
  /// How many columns this cell spans.
  core.int colSpan;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for TableCell.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout layout;

  /// How many rows this cell spans.
  core.int rowSpan;

  GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell();

  GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell.fromJson(
      core.Map _json) {
    if (_json.containsKey('colSpan')) {
      colSpan = _json['colSpan'] as core.int;
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowSpan')) {
      rowSpan = _json['rowSpan'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (colSpan != null) {
      _json['colSpan'] = colSpan;
    }
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (rowSpan != null) {
      _json['rowSpan'] = rowSpan;
    }
    return _json;
  }
}

/// A row of table cells.
class GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell> cells;

  GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow();

  GoogleCloudDocumentaiV1beta1DocumentPageTableTableRow.fromJson(
      core.Map _json) {
    if (_json.containsKey('cells')) {
      cells = (_json['cells'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell>(
              (value) => GoogleCloudDocumentaiV1beta1DocumentPageTableTableCell
                  .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cells != null) {
      _json['cells'] = cells.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A detected token.
class GoogleCloudDocumentaiV1beta1DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta1DocumentProvenance provenance;

  GoogleCloudDocumentaiV1beta1DocumentPageToken();

  GoogleCloudDocumentaiV1beta1DocumentPageToken.fromJson(core.Map _json) {
    if (_json.containsKey('detectedBreak')) {
      detectedBreak =
          GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak.fromJson(
              _json['detectedBreak'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedBreak != null) {
      _json['detectedBreak'] = detectedBreak.toJson();
    }
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    return _json;
  }
}

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String type;

  GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak();

  GoogleCloudDocumentaiV1beta1DocumentPageTokenDetectedBreak.fromJson(
      core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Detected non-text visual elements e.g. checkbox, signature etc. on the page.
class GoogleCloudDocumentaiV1beta1DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for VisualElement.
  GoogleCloudDocumentaiV1beta1DocumentPageLayout layout;

  /// Type of the VisualElement.
  core.String type;

  GoogleCloudDocumentaiV1beta1DocumentPageVisualElement();

  GoogleCloudDocumentaiV1beta1DocumentPageVisualElement.fromJson(
      core.Map _json) {
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta1DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1beta1DocumentProvenance {
  /// The Id of this operation. Needs to be unique within the scope of the
  /// revision.
  core.int id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1beta1DocumentProvenanceParent> parents;

  /// The index of the revision that produced this element.
  core.int revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified.
  /// - "ADD" : Add an element. Implicit if no `parents` are set for the
  /// provenance.
  /// - "REMOVE" : The element is removed. No `parents` should be set.
  /// - "REPLACE" : Explicitly replaces the element(s) identified by `parents`.
  /// - "EVAL_REQUESTED" : Element is requested for human review.
  /// - "EVAL_APPROVED" : Element is review and approved at human review,
  /// confidence will be set to 1.0
  core.String type;

  GoogleCloudDocumentaiV1beta1DocumentProvenance();

  GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.int;
    }
    if (_json.containsKey('parents')) {
      parents = (_json['parents'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentProvenanceParent>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentProvenanceParent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.int;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (parents != null) {
      _json['parents'] = parents.map((value) => value.toJson()).toList();
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Structure for referencing parent provenances. When an element replaces one
/// of more other elements parent references identify the elements that are
/// replaced.
class GoogleCloudDocumentaiV1beta1DocumentProvenanceParent {
  /// The id of the parent provenance.
  core.int id;

  /// The index of the [Document.revisions] identifying the parent revision.
  core.int revision;

  GoogleCloudDocumentaiV1beta1DocumentProvenanceParent();

  GoogleCloudDocumentaiV1beta1DocumentProvenanceParent.fromJson(
      core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.int;
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    return _json;
  }
}

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1beta1DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String agent;

  /// The time that the revision was created.
  core.String createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview humanReview;

  /// Id of the revision. Unique within the context of the document.
  core.String id;

  /// The revisions that this revision is based on. This can include one or more
  /// parent (when documents are merged.) This field represents the index into
  /// the `revisions` field.
  core.List<core.int> parent;

  /// If the annotation was made by processor identify the processor by its
  /// resource name.
  core.String processor;

  GoogleCloudDocumentaiV1beta1DocumentRevision();

  GoogleCloudDocumentaiV1beta1DocumentRevision.fromJson(core.Map _json) {
    if (_json.containsKey('agent')) {
      agent = _json['agent'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('humanReview')) {
      humanReview =
          GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.fromJson(
              _json['humanReview'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('parent')) {
      parent = (_json['parent'] as core.List)
          .map<core.int>((value) => value as core.int)
          .toList();
    }
    if (_json.containsKey('processor')) {
      processor = _json['processor'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (agent != null) {
      _json['agent'] = agent;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (humanReview != null) {
      _json['humanReview'] = humanReview.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (processor != null) {
      _json['processor'] = processor;
    }
    return _json;
  }
}

/// Human Review information of the document.
class GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview {
  /// Human review state. e.g. `requested`, `succeeded`, `rejected`.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the rejection reason when the state is `rejected`.
  core.String stateMessage;

  GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview();

  GoogleCloudDocumentaiV1beta1DocumentRevisionHumanReview.fromJson(
      core.Map _json) {
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    return _json;
  }
}

/// For a large document, sharding may be performed to produce several document
/// shards. Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1beta1DocumentShardInfo {
  /// Total number of shards.
  core.String shardCount;

  /// The 0-based index of this shard.
  core.String shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String textOffset;

  GoogleCloudDocumentaiV1beta1DocumentShardInfo();

  GoogleCloudDocumentaiV1beta1DocumentShardInfo.fromJson(core.Map _json) {
    if (_json.containsKey('shardCount')) {
      shardCount = _json['shardCount'] as core.String;
    }
    if (_json.containsKey('shardIndex')) {
      shardIndex = _json['shardIndex'] as core.String;
    }
    if (_json.containsKey('textOffset')) {
      textOffset = _json['textOffset'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (shardCount != null) {
      _json['shardCount'] = shardCount;
    }
    if (shardIndex != null) {
      _json['shardIndex'] = shardIndex;
    }
    if (textOffset != null) {
      _json['textOffset'] = textOffset;
    }
    return _json;
  }
}

/// Annotation for common text style attributes. This adheres to CSS conventions
/// as much as possible.
class GoogleCloudDocumentaiV1beta1DocumentStyle {
  /// Text background color.
  GoogleTypeColor backgroundColor;

  /// Text color.
  GoogleTypeColor color;

  /// Font size.
  GoogleCloudDocumentaiV1beta1DocumentStyleFontSize fontSize;

  /// Font weight. Possible values are normal, bold, bolder, and lighter.
  /// https://www.w3schools.com/cssref/pr_font_weight.asp
  core.String fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor textAnchor;

  /// Text decoration. Follows CSS standard.
  /// https://www.w3schools.com/cssref/pr_text_text-decoration.asp
  core.String textDecoration;

  /// Text style. Possible values are normal, italic, and oblique.
  /// https://www.w3schools.com/cssref/pr_font_font-style.asp
  core.String textStyle;

  GoogleCloudDocumentaiV1beta1DocumentStyle();

  GoogleCloudDocumentaiV1beta1DocumentStyle.fromJson(core.Map _json) {
    if (_json.containsKey('backgroundColor')) {
      backgroundColor = GoogleTypeColor.fromJson(
          _json['backgroundColor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('color')) {
      color = GoogleTypeColor.fromJson(
          _json['color'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fontSize')) {
      fontSize = GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(
          _json['fontSize'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fontWeight')) {
      fontWeight = _json['fontWeight'] as core.String;
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('textDecoration')) {
      textDecoration = _json['textDecoration'] as core.String;
    }
    if (_json.containsKey('textStyle')) {
      textStyle = _json['textStyle'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backgroundColor != null) {
      _json['backgroundColor'] = backgroundColor.toJson();
    }
    if (color != null) {
      _json['color'] = color.toJson();
    }
    if (fontSize != null) {
      _json['fontSize'] = fontSize.toJson();
    }
    if (fontWeight != null) {
      _json['fontWeight'] = fontWeight;
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    if (textDecoration != null) {
      _json['textDecoration'] = textDecoration;
    }
    if (textStyle != null) {
      _json['textStyle'] = textStyle;
    }
    return _json;
  }
}

/// Font size with unit.
class GoogleCloudDocumentaiV1beta1DocumentStyleFontSize {
  /// Font size for the text.
  core.double size;

  /// Unit for the font size. Follows CSS naming (in, px, pt, etc.).
  core.String unit;

  GoogleCloudDocumentaiV1beta1DocumentStyleFontSize();

  GoogleCloudDocumentaiV1beta1DocumentStyleFontSize.fromJson(core.Map _json) {
    if (_json.containsKey('size')) {
      size = (_json['size'] as core.num).toDouble();
    }
    if (_json.containsKey('unit')) {
      unit = _json['unit'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (size != null) {
      _json['size'] = size;
    }
    if (unit != null) {
      _json['unit'] = unit;
    }
    return _json;
  }
}

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1beta1DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  core.String content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>
      textSegments;

  GoogleCloudDocumentaiV1beta1DocumentTextAnchor();

  GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('textSegments')) {
      textSegments = (_json['textSegments'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment>(
              (value) =>
                  GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (textSegments != null) {
      _json['textSegments'] =
          textSegments.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A text segment in the Document.text. The indices may be out of bounds which
/// indicate that the text extends into another document shard for large sharded
/// documents. See ShardInfo.text_offset
class GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String startIndex;

  GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment();

  GoogleCloudDocumentaiV1beta1DocumentTextAnchorTextSegment.fromJson(
      core.Map _json) {
    if (_json.containsKey('endIndex')) {
      endIndex = _json['endIndex'] as core.String;
    }
    if (_json.containsKey('startIndex')) {
      startIndex = _json['startIndex'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endIndex != null) {
      _json['endIndex'] = endIndex;
    }
    if (startIndex != null) {
      _json['startIndex'] = startIndex;
    }
    return _json;
  }
}

/// This message is used for text changes aka. OCR corrections.
class GoogleCloudDocumentaiV1beta1DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String changedText;

  /// The history of this annotation.
  core.List<GoogleCloudDocumentaiV1beta1DocumentProvenance> provenance;

  /// Provenance of the correction. Text anchor indexing into the Document.text.
  /// There can only be a single `TextAnchor.text_segments` element. If the
  /// start and end index of the text segment are the same, the text change is
  /// inserted before that index.
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor textAnchor;

  GoogleCloudDocumentaiV1beta1DocumentTextChange();

  GoogleCloudDocumentaiV1beta1DocumentTextChange.fromJson(core.Map _json) {
    if (_json.containsKey('changedText')) {
      changedText = _json['changedText'] as core.String;
    }
    if (_json.containsKey('provenance')) {
      provenance = (_json['provenance'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentProvenance>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (changedText != null) {
      _json['changedText'] = changedText;
    }
    if (provenance != null) {
      _json['provenance'] = provenance.map((value) => value.toJson()).toList();
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    return _json;
  }
}

/// A translation of the text segment.
class GoogleCloudDocumentaiV1beta1DocumentTranslation {
  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  /// The history of this annotation.
  core.List<GoogleCloudDocumentaiV1beta1DocumentProvenance> provenance;

  /// Provenance of the translation. Text anchor indexing into the
  /// Document.text. There can only be a single `TextAnchor.text_segments`
  /// element. If the start and end index of the text segment are the same, the
  /// text change is inserted before that index.
  GoogleCloudDocumentaiV1beta1DocumentTextAnchor textAnchor;

  /// Text translated into the target language.
  core.String translatedText;

  GoogleCloudDocumentaiV1beta1DocumentTranslation();

  GoogleCloudDocumentaiV1beta1DocumentTranslation.fromJson(core.Map _json) {
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'] as core.String;
    }
    if (_json.containsKey('provenance')) {
      provenance = (_json['provenance'] as core.List)
          .map<GoogleCloudDocumentaiV1beta1DocumentProvenance>((value) =>
              GoogleCloudDocumentaiV1beta1DocumentProvenance.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta1DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('translatedText')) {
      translatedText = _json['translatedText'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (provenance != null) {
      _json['provenance'] = provenance.map((value) => value.toJson()).toList();
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    if (translatedText != null) {
      _json['translatedText'] = translatedText;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the output file will be written to.
class GoogleCloudDocumentaiV1beta1GcsDestination {
  core.String uri;

  GoogleCloudDocumentaiV1beta1GcsDestination();

  GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the input file will be read from.
class GoogleCloudDocumentaiV1beta1GcsSource {
  core.String uri;

  GoogleCloudDocumentaiV1beta1GcsSource();

  GoogleCloudDocumentaiV1beta1GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// The desired input location and metadata.
class GoogleCloudDocumentaiV1beta1InputConfig {
  /// The Google Cloud Storage location to read the input from. This must be a
  /// single file.
  GoogleCloudDocumentaiV1beta1GcsSource gcsSource;

  /// Required. Mimetype of the input. Current supported mimetypes are
  /// application/pdf, image/tiff, and image/gif. In addition, application/json
  /// type is supported for requests with ProcessDocumentRequest.automl_params
  /// field set. The JSON file needs to be in Document format.
  core.String mimeType;

  GoogleCloudDocumentaiV1beta1InputConfig();

  GoogleCloudDocumentaiV1beta1InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey('gcsSource')) {
      gcsSource = GoogleCloudDocumentaiV1beta1GcsSource.fromJson(
          _json['gcsSource'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (gcsSource != null) {
      _json['gcsSource'] = gcsSource.toJson();
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image. NOTE: the normalized vertex
/// coordinates are relative to the original image and range from 0 to 1.
class GoogleCloudDocumentaiV1beta1NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  GoogleCloudDocumentaiV1beta1NormalizedVertex();

  GoogleCloudDocumentaiV1beta1NormalizedVertex.fromJson(core.Map _json) {
    if (_json.containsKey('x')) {
      x = (_json['x'] as core.num).toDouble();
    }
    if (_json.containsKey('y')) {
      y = (_json['y'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (x != null) {
      _json['x'] = x;
    }
    if (y != null) {
      _json['y'] = y;
    }
    return _json;
  }
}

/// Contains metadata for the BatchProcessDocuments operation.
class GoogleCloudDocumentaiV1beta1OperationMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACCEPTED" : Request is received.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String state;

  /// A message providing more details about the current state of processing.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiV1beta1OperationMetadata();

  GoogleCloudDocumentaiV1beta1OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The desired output location and metadata.
class GoogleCloudDocumentaiV1beta1OutputConfig {
  /// The Google Cloud Storage location to write the output to.
  GoogleCloudDocumentaiV1beta1GcsDestination gcsDestination;

  /// The max number of pages to include into each output Document shard JSON on
  /// Google Cloud Storage. The valid range is [1, 100]. If not specified, the
  /// default value is 20. For example, for one pdf file with 100 pages, 100
  /// parsed pages will be produced. If `pages_per_shard` = 20, then 5 Document
  /// shard JSON files each containing 20 parsed pages will be written under the
  /// prefix OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where
  /// x and y are 1-indexed page numbers. Example GCS outputs with 157 pages and
  /// pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json
  /// pages-101-to-150.json pages-151-to-157.json
  core.int pagesPerShard;

  GoogleCloudDocumentaiV1beta1OutputConfig();

  GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey('gcsDestination')) {
      gcsDestination = GoogleCloudDocumentaiV1beta1GcsDestination.fromJson(
          _json['gcsDestination'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pagesPerShard')) {
      pagesPerShard = _json['pagesPerShard'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (gcsDestination != null) {
      _json['gcsDestination'] = gcsDestination.toJson();
    }
    if (pagesPerShard != null) {
      _json['pagesPerShard'] = pagesPerShard;
    }
    return _json;
  }
}

/// Response to a single document processing request.
class GoogleCloudDocumentaiV1beta1ProcessDocumentResponse {
  /// Information about the input file. This is the same as the corresponding
  /// input config in the request.
  GoogleCloudDocumentaiV1beta1InputConfig inputConfig;

  /// The output location of the parsed responses. The responses are written to
  /// this location as JSON-serialized `Document` objects.
  GoogleCloudDocumentaiV1beta1OutputConfig outputConfig;

  GoogleCloudDocumentaiV1beta1ProcessDocumentResponse();

  GoogleCloudDocumentaiV1beta1ProcessDocumentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('inputConfig')) {
      inputConfig = GoogleCloudDocumentaiV1beta1InputConfig.fromJson(
          _json['inputConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('outputConfig')) {
      outputConfig = GoogleCloudDocumentaiV1beta1OutputConfig.fromJson(
          _json['outputConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (inputConfig != null) {
      _json['inputConfig'] = inputConfig.toJson();
    }
    if (outputConfig != null) {
      _json['outputConfig'] = outputConfig.toJson();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates
/// are in the same scale as the original image.
class GoogleCloudDocumentaiV1beta1Vertex {
  /// X coordinate.
  core.int x;

  /// Y coordinate.
  core.int y;

  GoogleCloudDocumentaiV1beta1Vertex();

  GoogleCloudDocumentaiV1beta1Vertex.fromJson(core.Map _json) {
    if (_json.containsKey('x')) {
      x = _json['x'] as core.int;
    }
    if (_json.containsKey('y')) {
      y = _json['y'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (x != null) {
      _json['x'] = x;
    }
    if (y != null) {
      _json['y'] = y;
    }
    return _json;
  }
}

/// Parameters to control AutoML model prediction behavior.
class GoogleCloudDocumentaiV1beta2AutoMlParams {
  /// Resource name of the AutoML model. Format:
  /// `projects/{project-id}/locations/{location-id}/models/{model-id}`.
  core.String model;

  GoogleCloudDocumentaiV1beta2AutoMlParams();

  GoogleCloudDocumentaiV1beta2AutoMlParams.fromJson(core.Map _json) {
    if (_json.containsKey('model')) {
      model = _json['model'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (model != null) {
      _json['model'] = model;
    }
    return _json;
  }
}

/// Request to batch process documents as an asynchronous operation. The output
/// is written to Cloud Storage as JSON in the [Document] format.
class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest {
  /// Required. Individual requests for each document.
  core.List<GoogleCloudDocumentaiV1beta2ProcessDocumentRequest> requests;

  GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest();

  GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest.fromJson(
      core.Map _json) {
    if (_json.containsKey('requests')) {
      requests = (_json['requests'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2ProcessDocumentRequest>((value) =>
              GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (requests != null) {
      _json['requests'] = requests.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Response to an batch document processing request. This is returned in the
/// LRO Operation after the operation is complete.
class GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse {
  /// Responses for each individual document.
  core.List<GoogleCloudDocumentaiV1beta2ProcessDocumentResponse> responses;

  GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse();

  GoogleCloudDocumentaiV1beta2BatchProcessDocumentsResponse.fromJson(
      core.Map _json) {
    if (_json.containsKey('responses')) {
      responses = (_json['responses'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2ProcessDocumentResponse>((value) =>
              GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (responses != null) {
      _json['responses'] = responses.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A bounding polygon for the detected image annotation.
class GoogleCloudDocumentaiV1beta2BoundingPoly {
  /// The bounding polygon normalized vertices.
  core.List<GoogleCloudDocumentaiV1beta2NormalizedVertex> normalizedVertices;

  /// The bounding polygon vertices.
  core.List<GoogleCloudDocumentaiV1beta2Vertex> vertices;

  GoogleCloudDocumentaiV1beta2BoundingPoly();

  GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(core.Map _json) {
    if (_json.containsKey('normalizedVertices')) {
      normalizedVertices = (_json['normalizedVertices'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2NormalizedVertex>((value) =>
              GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('vertices')) {
      vertices = (_json['vertices'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2Vertex>((value) =>
              GoogleCloudDocumentaiV1beta2Vertex.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (normalizedVertices != null) {
      _json['normalizedVertices'] =
          normalizedVertices.map((value) => value.toJson()).toList();
    }
    if (vertices != null) {
      _json['vertices'] = vertices.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Document represents the canonical document resource in Document
/// Understanding AI. It is an interchange format that provides insights into
/// documents and allows for collaboration between users and Document
/// Understanding AI to iterate and optimize for quality.
class GoogleCloudDocumentaiV1beta2Document {
  /// Inline document content, represented as a stream of bytes. Note: As with
  /// all `bytes` fields, protobuffers use a pure binary representation, whereas
  /// JSON representations use base64.
  core.String content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// A list of entities detected on Document.text. For document shards,
  /// entities in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1beta2DocumentEntity> entities;

  /// Relationship among Document.entities.
  core.List<GoogleCloudDocumentaiV1beta2DocumentEntityRelation> entityRelations;

  /// Any error that occurred while processing this document.
  GoogleRpcStatus error;

  /// Labels for this document.
  core.List<GoogleCloudDocumentaiV1beta2DocumentLabel> labels;

  /// An IANA published MIME type (also referred to as media type). For more
  /// information, see
  /// https://www.iana.org/assignments/media-types/media-types.xhtml.
  core.String mimeType;

  /// Visual page layout for the Document.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPage> pages;

  /// Revision history of this document.
  core.List<GoogleCloudDocumentaiV1beta2DocumentRevision> revisions;

  /// Information about the sharding if this document is sharded part of a
  /// larger document. If the document is not sharded, this message is not
  /// specified.
  GoogleCloudDocumentaiV1beta2DocumentShardInfo shardInfo;

  /// UTF-8 encoded text in reading order from the document.
  core.String text;

  /// A list of text corrections made to [Document.text]. This is usually used
  /// for annotating corrections to OCR mistakes. Text changes for a given
  /// revision may not overlap with each other.
  core.List<GoogleCloudDocumentaiV1beta2DocumentTextChange> textChanges;

  /// Styles for the Document.text.
  core.List<GoogleCloudDocumentaiV1beta2DocumentStyle> textStyles;

  /// A list of translations on Document.text. For document shards, translations
  /// in this list may cross shard boundaries.
  core.List<GoogleCloudDocumentaiV1beta2DocumentTranslation> translations;

  /// Currently supports Google Cloud Storage URI of the form
  /// `gs://bucket_name/object_name`. Object versioning is not supported. See
  /// [Google Cloud Storage Request
  /// URIs](https://cloud.google.com/storage/docs/reference-uris) for more info.
  core.String uri;

  GoogleCloudDocumentaiV1beta2Document();

  GoogleCloudDocumentaiV1beta2Document.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('entities')) {
      entities = (_json['entities'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentEntity>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('entityRelations')) {
      entityRelations = (_json['entityRelations'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentEntityRelation>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentEntityRelation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('error')) {
      error = GoogleRpcStatus.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('labels')) {
      labels = (_json['labels'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentLabel>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('pages')) {
      pages = (_json['pages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPage>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('revisions')) {
      revisions = (_json['revisions'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentRevision>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('shardInfo')) {
      shardInfo = GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(
          _json['shardInfo'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
    if (_json.containsKey('textChanges')) {
      textChanges = (_json['textChanges'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentTextChange>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentTextChange.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('textStyles')) {
      textStyles = (_json['textStyles'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentStyle>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('translations')) {
      translations = (_json['translations'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentTranslation>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentTranslation.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (entities != null) {
      _json['entities'] = entities.map((value) => value.toJson()).toList();
    }
    if (entityRelations != null) {
      _json['entityRelations'] =
          entityRelations.map((value) => value.toJson()).toList();
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (labels != null) {
      _json['labels'] = labels.map((value) => value.toJson()).toList();
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (pages != null) {
      _json['pages'] = pages.map((value) => value.toJson()).toList();
    }
    if (revisions != null) {
      _json['revisions'] = revisions.map((value) => value.toJson()).toList();
    }
    if (shardInfo != null) {
      _json['shardInfo'] = shardInfo.toJson();
    }
    if (text != null) {
      _json['text'] = text;
    }
    if (textChanges != null) {
      _json['textChanges'] =
          textChanges.map((value) => value.toJson()).toList();
    }
    if (textStyles != null) {
      _json['textStyles'] = textStyles.map((value) => value.toJson()).toList();
    }
    if (translations != null) {
      _json['translations'] =
          translations.map((value) => value.toJson()).toList();
    }
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// A phrase in the text that is a known entity type, such as a person, an
/// organization, or location.
class GoogleCloudDocumentaiV1beta2DocumentEntity {
  /// Optional. Confidence of detected Schema entity. Range [0, 1].
  core.double confidence;

  /// Optional. Canonical id. This will be a unique value in the entity list for
  /// this document.
  core.String id;

  /// Deprecated. Use `id` field instead.
  core.String mentionId;

  /// Text value in the document e.g. `1600 Amphitheatre Pkwy`.
  core.String mentionText;

  /// Optional. Normalized entity value. Absent if the extracted value could not
  /// be converted or the type (e.g. address) is not supported for certain
  /// parsers. This field is also only populated for certain supported document
  /// types.
  GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue normalizedValue;

  /// Optional. Represents the provenance of this entity wrt. the location on
  /// the page where it was found.
  GoogleCloudDocumentaiV1beta2DocumentPageAnchor pageAnchor;

  /// Optional. Entities can be nested to form a hierarchical data structure
  /// representing the content in the document.
  core.List<GoogleCloudDocumentaiV1beta2DocumentEntity> properties;

  /// Optional. The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance provenance;

  /// Optional. Whether the entity will be redacted for de-identification
  /// purposes.
  core.bool redacted;

  /// Provenance of the entity. Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor textAnchor;

  /// Entity type from a schema e.g. `Address`.
  core.String type;

  GoogleCloudDocumentaiV1beta2DocumentEntity();

  GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(core.Map _json) {
    if (_json.containsKey('confidence')) {
      confidence = (_json['confidence'] as core.num).toDouble();
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('mentionId')) {
      mentionId = _json['mentionId'] as core.String;
    }
    if (_json.containsKey('mentionText')) {
      mentionText = _json['mentionText'] as core.String;
    }
    if (_json.containsKey('normalizedValue')) {
      normalizedValue =
          GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue.fromJson(
              _json['normalizedValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pageAnchor')) {
      pageAnchor = GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(
          _json['pageAnchor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('properties')) {
      properties = (_json['properties'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentEntity>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentEntity.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('redacted')) {
      redacted = _json['redacted'] as core.bool;
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (confidence != null) {
      _json['confidence'] = confidence;
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (mentionId != null) {
      _json['mentionId'] = mentionId;
    }
    if (mentionText != null) {
      _json['mentionText'] = mentionText;
    }
    if (normalizedValue != null) {
      _json['normalizedValue'] = normalizedValue.toJson();
    }
    if (pageAnchor != null) {
      _json['pageAnchor'] = pageAnchor.toJson();
    }
    if (properties != null) {
      _json['properties'] = properties.map((value) => value.toJson()).toList();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    if (redacted != null) {
      _json['redacted'] = redacted;
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Parsed and normalized entity value.
class GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue {
  /// Postal address. See also: https: //github.com/googleapis/googleapis/blob/
  /// // master/google/type/postal_address.proto
  GoogleTypePostalAddress addressValue;

  /// Date value. Includes year, month, day. See also: https:
  /// //github.com/googleapis/googleapis/blob/master/google/type/date.proto
  GoogleTypeDate dateValue;

  /// DateTime value. Includes date, time, and timezone. See also: https:
  /// //github.com/googleapis/googleapis/blob/ //
  /// master/google/type/datetime.proto
  GoogleTypeDateTime datetimeValue;

  /// Money value. See also: https: //github.com/googleapis/googleapis/blob/ //
  /// master/google/type/money.proto
  GoogleTypeMoney moneyValue;

  /// Required. Normalized entity value stored as a string. This field is
  /// populated for supported document type (e.g. Invoice). For some entity
  /// types, one of respective 'structured_value' fields may also be populated.
  /// - Money/Currency type (`money_value`) is in the ISO 4217 text format. -
  /// Date type (`date_value`) is in the ISO 8601 text format. - Datetime type
  /// (`datetime_value`) is in the ISO 8601 text format.
  core.String text;

  GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue();

  GoogleCloudDocumentaiV1beta2DocumentEntityNormalizedValue.fromJson(
      core.Map _json) {
    if (_json.containsKey('addressValue')) {
      addressValue = GoogleTypePostalAddress.fromJson(
          _json['addressValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('dateValue')) {
      dateValue = GoogleTypeDate.fromJson(
          _json['dateValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('datetimeValue')) {
      datetimeValue = GoogleTypeDateTime.fromJson(
          _json['datetimeValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('moneyValue')) {
      moneyValue = GoogleTypeMoney.fromJson(
          _json['moneyValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('text')) {
      text = _json['text'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addressValue != null) {
      _json['addressValue'] = addressValue.toJson();
    }
    if (dateValue != null) {
      _json['dateValue'] = dateValue.toJson();
    }
    if (datetimeValue != null) {
      _json['datetimeValue'] = datetimeValue.toJson();
    }
    if (moneyValue != null) {
      _json['moneyValue'] = moneyValue.toJson();
    }
    if (text != null) {
      _json['text'] = text;
    }
    return _json;
  }
}

/// Relationship between Entities.
class GoogleCloudDocumentaiV1beta2DocumentEntityRelation {
  /// Object entity id.
  core.String objectId;

  /// Relationship description.
  core.String relation;

  /// Subject entity id.
  core.String subjectId;

  GoogleCloudDocumentaiV1beta2DocumentEntityRelation();

  GoogleCloudDocumentaiV1beta2DocumentEntityRelation.fromJson(core.Map _json) {
    if (_json.containsKey('objectId')) {
      objectId = _json['objectId'] as core.String;
    }
    if (_json.containsKey('relation')) {
      relation = _json['relation'] as core.String;
    }
    if (_json.containsKey('subjectId')) {
      subjectId = _json['subjectId'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (objectId != null) {
      _json['objectId'] = objectId;
    }
    if (relation != null) {
      _json['relation'] = relation;
    }
    if (subjectId != null) {
      _json['subjectId'] = subjectId;
    }
    return _json;
  }
}

/// Label attaches schema information and/or other metadata to segments within a
/// Document. Multiple Labels on a single field can denote either different
/// labels, different instances of the same label created at different times, or
/// some combination of both.
class GoogleCloudDocumentaiV1beta2DocumentLabel {
  /// Label is generated AutoML model. This field stores the full resource name
  /// of the AutoML model. Format:
  /// `projects/{project-id}/locations/{location-id}/models/{model-id}`
  core.String automlModel;

  /// Confidence score between 0 and 1 for label assignment.
  core.double confidence;

  /// Name of the label. When the label is generated from AutoML Text
  /// Classification model, this field represents the name of the category.
  core.String name;

  GoogleCloudDocumentaiV1beta2DocumentLabel();

  GoogleCloudDocumentaiV1beta2DocumentLabel.fromJson(core.Map _json) {
    if (_json.containsKey('automlModel')) {
      automlModel = _json['automlModel'] as core.String;
    }
    if (_json.containsKey('confidence')) {
      confidence = (_json['confidence'] as core.num).toDouble();
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (automlModel != null) {
      _json['automlModel'] = automlModel;
    }
    if (confidence != null) {
      _json['confidence'] = confidence;
    }
    if (name != null) {
      _json['name'] = name;
    }
    return _json;
  }
}

/// A page in a Document.
class GoogleCloudDocumentaiV1beta2DocumentPage {
  /// A list of visually detected text blocks on the page. A block has a set of
  /// lines (collected into paragraphs) that have a common line-spacing and
  /// orientation.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageBlock> blocks;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Physical dimension of the page.
  GoogleCloudDocumentaiV1beta2DocumentPageDimension dimension;

  /// A list of visually detected form fields on the page.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageFormField> formFields;

  /// Rendered image for this page. This image is preprocessed to remove any
  /// skew, rotation, and distortions such that the annotation bounding boxes
  /// can be upright and axis-aligned.
  GoogleCloudDocumentaiV1beta2DocumentPageImage image;

  /// Layout for the page.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout layout;

  /// A list of visually detected text lines on the page. A collection of tokens
  /// that a human would perceive as a line.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageLine> lines;

  /// 1-based index for current Page in a parent Document. Useful when a page is
  /// taken out of a Document for individual processing.
  core.int pageNumber;

  /// A list of visually detected text paragraphs on the page. A collection of
  /// lines that a human would perceive as a paragraph.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageParagraph> paragraphs;

  /// A list of visually detected tables on the page.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageTable> tables;

  /// A list of visually detected tokens on the page.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageToken> tokens;

  /// Transformation matrices that were applied to the original document image
  /// to produce Page.image.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageMatrix> transforms;

  /// A list of detected non-text visual elements e.g. checkbox, signature etc.
  /// on the page.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>
      visualElements;

  GoogleCloudDocumentaiV1beta2DocumentPage();

  GoogleCloudDocumentaiV1beta2DocumentPage.fromJson(core.Map _json) {
    if (_json.containsKey('blocks')) {
      blocks = (_json['blocks'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageBlock>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('dimension')) {
      dimension = GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(
          _json['dimension'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('formFields')) {
      formFields = (_json['formFields'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageFormField>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageFormField.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('image')) {
      image = GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(
          _json['image'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('lines')) {
      lines = (_json['lines'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageLine>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('pageNumber')) {
      pageNumber = _json['pageNumber'] as core.int;
    }
    if (_json.containsKey('paragraphs')) {
      paragraphs = (_json['paragraphs'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageParagraph>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageParagraph.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('tables')) {
      tables = (_json['tables'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageTable>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('tokens')) {
      tokens = (_json['tokens'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageToken>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('transforms')) {
      transforms = (_json['transforms'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageMatrix>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageMatrix.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('visualElements')) {
      visualElements = (_json['visualElements'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageVisualElement>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageVisualElement.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (blocks != null) {
      _json['blocks'] = blocks.map((value) => value.toJson()).toList();
    }
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (dimension != null) {
      _json['dimension'] = dimension.toJson();
    }
    if (formFields != null) {
      _json['formFields'] = formFields.map((value) => value.toJson()).toList();
    }
    if (image != null) {
      _json['image'] = image.toJson();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (lines != null) {
      _json['lines'] = lines.map((value) => value.toJson()).toList();
    }
    if (pageNumber != null) {
      _json['pageNumber'] = pageNumber;
    }
    if (paragraphs != null) {
      _json['paragraphs'] = paragraphs.map((value) => value.toJson()).toList();
    }
    if (tables != null) {
      _json['tables'] = tables.map((value) => value.toJson()).toList();
    }
    if (tokens != null) {
      _json['tokens'] = tokens.map((value) => value.toJson()).toList();
    }
    if (transforms != null) {
      _json['transforms'] = transforms.map((value) => value.toJson()).toList();
    }
    if (visualElements != null) {
      _json['visualElements'] =
          visualElements.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Referencing the visual context of the entity in the Document.pages. Page
/// anchors can be cross-page, consist of multiple bounding polygons and
/// optionally reference specific layout element types.
class GoogleCloudDocumentaiV1beta2DocumentPageAnchor {
  /// One or more references to visual page elements
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef> pageRefs;

  GoogleCloudDocumentaiV1beta2DocumentPageAnchor();

  GoogleCloudDocumentaiV1beta2DocumentPageAnchor.fromJson(core.Map _json) {
    if (_json.containsKey('pageRefs')) {
      pageRefs = (_json['pageRefs'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (pageRefs != null) {
      _json['pageRefs'] = pageRefs.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// Represents a weak reference to a page element within a document.
class GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef {
  /// Optional. Identifies the bounding polygon of a layout element on the page.
  GoogleCloudDocumentaiV1beta2BoundingPoly boundingPoly;

  /// Optional. Deprecated. Use PageRef.bounding_poly instead.
  core.String layoutId;

  /// Optional. The type of the layout element that is being referenced if any.
  /// Possible string values are:
  /// - "LAYOUT_TYPE_UNSPECIFIED" : Layout Unspecified.
  /// - "BLOCK" : References a Page.blocks element.
  /// - "PARAGRAPH" : References a Page.paragraphs element.
  /// - "LINE" : References a Page.lines element.
  /// - "TOKEN" : References a Page.tokens element.
  /// - "VISUAL_ELEMENT" : References a Page.visual_elements element.
  /// - "TABLE" : Refrrences a Page.tables element.
  /// - "FORM_FIELD" : References a Page.form_fields element.
  core.String layoutType;

  /// Required. Index into the Document.pages element
  core.String page;

  GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef();

  GoogleCloudDocumentaiV1beta2DocumentPageAnchorPageRef.fromJson(
      core.Map _json) {
    if (_json.containsKey('boundingPoly')) {
      boundingPoly = GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(
          _json['boundingPoly'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('layoutId')) {
      layoutId = _json['layoutId'] as core.String;
    }
    if (_json.containsKey('layoutType')) {
      layoutType = _json['layoutType'] as core.String;
    }
    if (_json.containsKey('page')) {
      page = _json['page'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (boundingPoly != null) {
      _json['boundingPoly'] = boundingPoly.toJson();
    }
    if (layoutId != null) {
      _json['layoutId'] = layoutId;
    }
    if (layoutType != null) {
      _json['layoutType'] = layoutType;
    }
    if (page != null) {
      _json['page'] = page;
    }
    return _json;
  }
}

/// A block has a set of lines (collected into paragraphs) that have a common
/// line-spacing and orientation.
class GoogleCloudDocumentaiV1beta2DocumentPageBlock {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for Block.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance provenance;

  GoogleCloudDocumentaiV1beta2DocumentPageBlock();

  GoogleCloudDocumentaiV1beta2DocumentPageBlock.fromJson(core.Map _json) {
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    return _json;
  }
}

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage {
  /// Confidence of detected language. Range [0, 1].
  core.double confidence;

  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage();

  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage.fromJson(
      core.Map _json) {
    if (_json.containsKey('confidence')) {
      confidence = (_json['confidence'] as core.num).toDouble();
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (confidence != null) {
      _json['confidence'] = confidence;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    return _json;
  }
}

/// Dimension for the page.
class GoogleCloudDocumentaiV1beta2DocumentPageDimension {
  /// Page height.
  core.double height;

  /// Dimension unit.
  core.String unit;

  /// Page width.
  core.double width;

  GoogleCloudDocumentaiV1beta2DocumentPageDimension();

  GoogleCloudDocumentaiV1beta2DocumentPageDimension.fromJson(core.Map _json) {
    if (_json.containsKey('height')) {
      height = (_json['height'] as core.num).toDouble();
    }
    if (_json.containsKey('unit')) {
      unit = _json['unit'] as core.String;
    }
    if (_json.containsKey('width')) {
      width = (_json['width'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (height != null) {
      _json['height'] = height;
    }
    if (unit != null) {
      _json['unit'] = unit;
    }
    if (width != null) {
      _json['width'] = width;
    }
    return _json;
  }
}

/// A form field detected on the page.
class GoogleCloudDocumentaiV1beta2DocumentPageFormField {
  /// Layout for the FormField name. e.g. `Address`, `Email`, `Grand total`,
  /// `Phone number`, etc.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout fieldName;

  /// Layout for the FormField value.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout fieldValue;

  /// A list of detected languages for name together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      nameDetectedLanguages;

  /// A list of detected languages for value together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      valueDetectedLanguages;

  /// If the value is non-textual, this field represents the type. Current valid
  /// values are: - blank (this indicates the field_value is normal text) -
  /// "unfilled_checkbox" - "filled_checkbox"
  core.String valueType;

  GoogleCloudDocumentaiV1beta2DocumentPageFormField();

  GoogleCloudDocumentaiV1beta2DocumentPageFormField.fromJson(core.Map _json) {
    if (_json.containsKey('fieldName')) {
      fieldName = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['fieldName'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fieldValue')) {
      fieldValue = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['fieldValue'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('nameDetectedLanguages')) {
      nameDetectedLanguages = (_json['nameDetectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('valueDetectedLanguages')) {
      valueDetectedLanguages = (_json['valueDetectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('valueType')) {
      valueType = _json['valueType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (fieldName != null) {
      _json['fieldName'] = fieldName.toJson();
    }
    if (fieldValue != null) {
      _json['fieldValue'] = fieldValue.toJson();
    }
    if (nameDetectedLanguages != null) {
      _json['nameDetectedLanguages'] =
          nameDetectedLanguages.map((value) => value.toJson()).toList();
    }
    if (valueDetectedLanguages != null) {
      _json['valueDetectedLanguages'] =
          valueDetectedLanguages.map((value) => value.toJson()).toList();
    }
    if (valueType != null) {
      _json['valueType'] = valueType;
    }
    return _json;
  }
}

/// Rendered image contents for this page.
class GoogleCloudDocumentaiV1beta2DocumentPageImage {
  /// Raw byte content of the image.
  core.String content;
  core.List<core.int> get contentAsBytes => convert.base64.decode(content);

  set contentAsBytes(core.List<core.int> _bytes) {
    content =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Height of the image in pixels.
  core.int height;

  /// Encoding mime type for the image.
  core.String mimeType;

  /// Width of the image in pixels.
  core.int width;

  GoogleCloudDocumentaiV1beta2DocumentPageImage();

  GoogleCloudDocumentaiV1beta2DocumentPageImage.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('height')) {
      height = _json['height'] as core.int;
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
    if (_json.containsKey('width')) {
      width = _json['width'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (height != null) {
      _json['height'] = height;
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    if (width != null) {
      _json['width'] = width;
    }
    return _json;
  }
}

/// Visual element describing a layout unit on a page.
class GoogleCloudDocumentaiV1beta2DocumentPageLayout {
  /// The bounding polygon for the Layout.
  GoogleCloudDocumentaiV1beta2BoundingPoly boundingPoly;

  /// Confidence of the current Layout within context of the object this layout
  /// is for. e.g. confidence can be for a single token, a table, a visual
  /// element, etc. depending on context. Range [0, 1].
  core.double confidence;

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
  core.String orientation;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor textAnchor;

  GoogleCloudDocumentaiV1beta2DocumentPageLayout();

  GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(core.Map _json) {
    if (_json.containsKey('boundingPoly')) {
      boundingPoly = GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(
          _json['boundingPoly'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('confidence')) {
      confidence = (_json['confidence'] as core.num).toDouble();
    }
    if (_json.containsKey('orientation')) {
      orientation = _json['orientation'] as core.String;
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (boundingPoly != null) {
      _json['boundingPoly'] = boundingPoly.toJson();
    }
    if (confidence != null) {
      _json['confidence'] = confidence;
    }
    if (orientation != null) {
      _json['orientation'] = orientation;
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    return _json;
  }
}

/// A collection of tokens that a human would perceive as a line. Does not cross
/// column boundaries, can be horizontal, vertical, etc.
class GoogleCloudDocumentaiV1beta2DocumentPageLine {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for Line.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance provenance;

  GoogleCloudDocumentaiV1beta2DocumentPageLine();

  GoogleCloudDocumentaiV1beta2DocumentPageLine.fromJson(core.Map _json) {
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    return _json;
  }
}

/// Representation for transformation matrix, intended to be compatible and used
/// with OpenCV format for image manipulation.
class GoogleCloudDocumentaiV1beta2DocumentPageMatrix {
  /// Number of columns in the matrix.
  core.int cols;

  /// The matrix data.
  core.String data;
  core.List<core.int> get dataAsBytes => convert.base64.decode(data);

  set dataAsBytes(core.List<core.int> _bytes) {
    data =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// Number of rows in the matrix.
  core.int rows;

  /// This encodes information about what data type the matrix uses. For
  /// example, 0 (CV_8U) is an unsigned 8-bit image. For the full list of OpenCV
  /// primitive data types, please refer to
  /// https://docs.opencv.org/4.3.0/d1/d1b/group__core__hal__interface.html
  core.int type;

  GoogleCloudDocumentaiV1beta2DocumentPageMatrix();

  GoogleCloudDocumentaiV1beta2DocumentPageMatrix.fromJson(core.Map _json) {
    if (_json.containsKey('cols')) {
      cols = _json['cols'] as core.int;
    }
    if (_json.containsKey('data')) {
      data = _json['data'] as core.String;
    }
    if (_json.containsKey('rows')) {
      rows = _json['rows'] as core.int;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cols != null) {
      _json['cols'] = cols;
    }
    if (data != null) {
      _json['data'] = data;
    }
    if (rows != null) {
      _json['rows'] = rows;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// A collection of lines that a human would perceive as a paragraph.
class GoogleCloudDocumentaiV1beta2DocumentPageParagraph {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for Paragraph.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance provenance;

  GoogleCloudDocumentaiV1beta2DocumentPageParagraph();

  GoogleCloudDocumentaiV1beta2DocumentPageParagraph.fromJson(core.Map _json) {
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    return _json;
  }
}

/// A table representation similar to HTML table structure.
class GoogleCloudDocumentaiV1beta2DocumentPageTable {
  /// Body rows of the table.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> bodyRows;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Header rows of the table.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow> headerRows;

  /// Layout for Table.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout layout;

  GoogleCloudDocumentaiV1beta2DocumentPageTable();

  GoogleCloudDocumentaiV1beta2DocumentPageTable.fromJson(core.Map _json) {
    if (_json.containsKey('bodyRows')) {
      bodyRows = (_json['bodyRows'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('headerRows')) {
      headerRows = (_json['headerRows'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (bodyRows != null) {
      _json['bodyRows'] = bodyRows.map((value) => value.toJson()).toList();
    }
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (headerRows != null) {
      _json['headerRows'] = headerRows.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    return _json;
  }
}

/// A cell representation inside the table.
class GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell {
  /// How many columns this cell spans.
  core.int colSpan;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for TableCell.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout layout;

  /// How many rows this cell spans.
  core.int rowSpan;

  GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell();

  GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell.fromJson(
      core.Map _json) {
    if (_json.containsKey('colSpan')) {
      colSpan = _json['colSpan'] as core.int;
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('rowSpan')) {
      rowSpan = _json['rowSpan'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (colSpan != null) {
      _json['colSpan'] = colSpan;
    }
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (rowSpan != null) {
      _json['rowSpan'] = rowSpan;
    }
    return _json;
  }
}

/// A row of table cells.
class GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow {
  /// Cells that make up this row.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell> cells;

  GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow();

  GoogleCloudDocumentaiV1beta2DocumentPageTableTableRow.fromJson(
      core.Map _json) {
    if (_json.containsKey('cells')) {
      cells = (_json['cells'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell>(
              (value) => GoogleCloudDocumentaiV1beta2DocumentPageTableTableCell
                  .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (cells != null) {
      _json['cells'] = cells.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A detected token.
class GoogleCloudDocumentaiV1beta2DocumentPageToken {
  /// Detected break at the end of a Token.
  GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak detectedBreak;

  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for Token.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout layout;

  /// The history of this annotation.
  GoogleCloudDocumentaiV1beta2DocumentProvenance provenance;

  GoogleCloudDocumentaiV1beta2DocumentPageToken();

  GoogleCloudDocumentaiV1beta2DocumentPageToken.fromJson(core.Map _json) {
    if (_json.containsKey('detectedBreak')) {
      detectedBreak =
          GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak.fromJson(
              _json['detectedBreak'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('provenance')) {
      provenance = GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
          _json['provenance'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedBreak != null) {
      _json['detectedBreak'] = detectedBreak.toJson();
    }
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (provenance != null) {
      _json['provenance'] = provenance.toJson();
    }
    return _json;
  }
}

/// Detected break at the end of a Token.
class GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak {
  /// Detected break type.
  /// Possible string values are:
  /// - "TYPE_UNSPECIFIED" : Unspecified break type.
  /// - "SPACE" : A single whitespace.
  /// - "WIDE_SPACE" : A wider whitespace.
  /// - "HYPHEN" : A hyphen that indicates that a token has been split across
  /// lines.
  core.String type;

  GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak();

  GoogleCloudDocumentaiV1beta2DocumentPageTokenDetectedBreak.fromJson(
      core.Map _json) {
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Detected non-text visual elements e.g. checkbox, signature etc. on the page.
class GoogleCloudDocumentaiV1beta2DocumentPageVisualElement {
  /// A list of detected languages together with confidence.
  core.List<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>
      detectedLanguages;

  /// Layout for VisualElement.
  GoogleCloudDocumentaiV1beta2DocumentPageLayout layout;

  /// Type of the VisualElement.
  core.String type;

  GoogleCloudDocumentaiV1beta2DocumentPageVisualElement();

  GoogleCloudDocumentaiV1beta2DocumentPageVisualElement.fromJson(
      core.Map _json) {
    if (_json.containsKey('detectedLanguages')) {
      detectedLanguages = (_json['detectedLanguages'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentPageDetectedLanguage
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('layout')) {
      layout = GoogleCloudDocumentaiV1beta2DocumentPageLayout.fromJson(
          _json['layout'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (detectedLanguages != null) {
      _json['detectedLanguages'] =
          detectedLanguages.map((value) => value.toJson()).toList();
    }
    if (layout != null) {
      _json['layout'] = layout.toJson();
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Structure to identify provenance relationships between annotations in
/// different revisions.
class GoogleCloudDocumentaiV1beta2DocumentProvenance {
  /// The Id of this operation. Needs to be unique within the scope of the
  /// revision.
  core.int id;

  /// References to the original elements that are replaced.
  core.List<GoogleCloudDocumentaiV1beta2DocumentProvenanceParent> parents;

  /// The index of the revision that produced this element.
  core.int revision;

  /// The type of provenance operation.
  /// Possible string values are:
  /// - "OPERATION_TYPE_UNSPECIFIED" : Operation type unspecified.
  /// - "ADD" : Add an element. Implicit if no `parents` are set for the
  /// provenance.
  /// - "REMOVE" : The element is removed. No `parents` should be set.
  /// - "REPLACE" : Explicitly replaces the element(s) identified by `parents`.
  /// - "EVAL_REQUESTED" : Element is requested for human review.
  /// - "EVAL_APPROVED" : Element is review and approved at human review,
  /// confidence will be set to 1.0
  core.String type;

  GoogleCloudDocumentaiV1beta2DocumentProvenance();

  GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.int;
    }
    if (_json.containsKey('parents')) {
      parents = (_json['parents'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentProvenanceParent>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentProvenanceParent.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.int;
    }
    if (_json.containsKey('type')) {
      type = _json['type'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (parents != null) {
      _json['parents'] = parents.map((value) => value.toJson()).toList();
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    if (type != null) {
      _json['type'] = type;
    }
    return _json;
  }
}

/// Structure for referencing parent provenances. When an element replaces one
/// of more other elements parent references identify the elements that are
/// replaced.
class GoogleCloudDocumentaiV1beta2DocumentProvenanceParent {
  /// The id of the parent provenance.
  core.int id;

  /// The index of the [Document.revisions] identifying the parent revision.
  core.int revision;

  GoogleCloudDocumentaiV1beta2DocumentProvenanceParent();

  GoogleCloudDocumentaiV1beta2DocumentProvenanceParent.fromJson(
      core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.int;
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    return _json;
  }
}

/// Contains past or forward revisions of this document.
class GoogleCloudDocumentaiV1beta2DocumentRevision {
  /// If the change was made by a person specify the name or id of that person.
  core.String agent;

  /// The time that the revision was created.
  core.String createTime;

  /// Human Review information of this revision.
  GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview humanReview;

  /// Id of the revision. Unique within the context of the document.
  core.String id;

  /// The revisions that this revision is based on. This can include one or more
  /// parent (when documents are merged.) This field represents the index into
  /// the `revisions` field.
  core.List<core.int> parent;

  /// If the annotation was made by processor identify the processor by its
  /// resource name.
  core.String processor;

  GoogleCloudDocumentaiV1beta2DocumentRevision();

  GoogleCloudDocumentaiV1beta2DocumentRevision.fromJson(core.Map _json) {
    if (_json.containsKey('agent')) {
      agent = _json['agent'] as core.String;
    }
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('humanReview')) {
      humanReview =
          GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview.fromJson(
              _json['humanReview'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('parent')) {
      parent = (_json['parent'] as core.List)
          .map<core.int>((value) => value as core.int)
          .toList();
    }
    if (_json.containsKey('processor')) {
      processor = _json['processor'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (agent != null) {
      _json['agent'] = agent;
    }
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (humanReview != null) {
      _json['humanReview'] = humanReview.toJson();
    }
    if (id != null) {
      _json['id'] = id;
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (processor != null) {
      _json['processor'] = processor;
    }
    return _json;
  }
}

/// Human Review information of the document.
class GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview {
  /// Human review state. e.g. `requested`, `succeeded`, `rejected`.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the rejection reason when the state is `rejected`.
  core.String stateMessage;

  GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview();

  GoogleCloudDocumentaiV1beta2DocumentRevisionHumanReview.fromJson(
      core.Map _json) {
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    return _json;
  }
}

/// For a large document, sharding may be performed to produce several document
/// shards. Each document shard contains this field to detail which shard it is.
class GoogleCloudDocumentaiV1beta2DocumentShardInfo {
  /// Total number of shards.
  core.String shardCount;

  /// The 0-based index of this shard.
  core.String shardIndex;

  /// The index of the first character in Document.text in the overall document
  /// global text.
  core.String textOffset;

  GoogleCloudDocumentaiV1beta2DocumentShardInfo();

  GoogleCloudDocumentaiV1beta2DocumentShardInfo.fromJson(core.Map _json) {
    if (_json.containsKey('shardCount')) {
      shardCount = _json['shardCount'] as core.String;
    }
    if (_json.containsKey('shardIndex')) {
      shardIndex = _json['shardIndex'] as core.String;
    }
    if (_json.containsKey('textOffset')) {
      textOffset = _json['textOffset'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (shardCount != null) {
      _json['shardCount'] = shardCount;
    }
    if (shardIndex != null) {
      _json['shardIndex'] = shardIndex;
    }
    if (textOffset != null) {
      _json['textOffset'] = textOffset;
    }
    return _json;
  }
}

/// Annotation for common text style attributes. This adheres to CSS conventions
/// as much as possible.
class GoogleCloudDocumentaiV1beta2DocumentStyle {
  /// Text background color.
  GoogleTypeColor backgroundColor;

  /// Text color.
  GoogleTypeColor color;

  /// Font size.
  GoogleCloudDocumentaiV1beta2DocumentStyleFontSize fontSize;

  /// Font weight. Possible values are normal, bold, bolder, and lighter.
  /// https://www.w3schools.com/cssref/pr_font_weight.asp
  core.String fontWeight;

  /// Text anchor indexing into the Document.text.
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor textAnchor;

  /// Text decoration. Follows CSS standard.
  /// https://www.w3schools.com/cssref/pr_text_text-decoration.asp
  core.String textDecoration;

  /// Text style. Possible values are normal, italic, and oblique.
  /// https://www.w3schools.com/cssref/pr_font_font-style.asp
  core.String textStyle;

  GoogleCloudDocumentaiV1beta2DocumentStyle();

  GoogleCloudDocumentaiV1beta2DocumentStyle.fromJson(core.Map _json) {
    if (_json.containsKey('backgroundColor')) {
      backgroundColor = GoogleTypeColor.fromJson(
          _json['backgroundColor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('color')) {
      color = GoogleTypeColor.fromJson(
          _json['color'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fontSize')) {
      fontSize = GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(
          _json['fontSize'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('fontWeight')) {
      fontWeight = _json['fontWeight'] as core.String;
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('textDecoration')) {
      textDecoration = _json['textDecoration'] as core.String;
    }
    if (_json.containsKey('textStyle')) {
      textStyle = _json['textStyle'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (backgroundColor != null) {
      _json['backgroundColor'] = backgroundColor.toJson();
    }
    if (color != null) {
      _json['color'] = color.toJson();
    }
    if (fontSize != null) {
      _json['fontSize'] = fontSize.toJson();
    }
    if (fontWeight != null) {
      _json['fontWeight'] = fontWeight;
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    if (textDecoration != null) {
      _json['textDecoration'] = textDecoration;
    }
    if (textStyle != null) {
      _json['textStyle'] = textStyle;
    }
    return _json;
  }
}

/// Font size with unit.
class GoogleCloudDocumentaiV1beta2DocumentStyleFontSize {
  /// Font size for the text.
  core.double size;

  /// Unit for the font size. Follows CSS naming (in, px, pt, etc.).
  core.String unit;

  GoogleCloudDocumentaiV1beta2DocumentStyleFontSize();

  GoogleCloudDocumentaiV1beta2DocumentStyleFontSize.fromJson(core.Map _json) {
    if (_json.containsKey('size')) {
      size = (_json['size'] as core.num).toDouble();
    }
    if (_json.containsKey('unit')) {
      unit = _json['unit'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (size != null) {
      _json['size'] = size;
    }
    if (unit != null) {
      _json['unit'] = unit;
    }
    return _json;
  }
}

/// Text reference indexing into the Document.text.
class GoogleCloudDocumentaiV1beta2DocumentTextAnchor {
  /// Contains the content of the text span so that users do not have to look it
  /// up in the text_segments.
  core.String content;

  /// The text segments from the Document.text.
  core.List<GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>
      textSegments;

  GoogleCloudDocumentaiV1beta2DocumentTextAnchor();

  GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(core.Map _json) {
    if (_json.containsKey('content')) {
      content = _json['content'] as core.String;
    }
    if (_json.containsKey('textSegments')) {
      textSegments = (_json['textSegments'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment>(
              (value) =>
                  GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (content != null) {
      _json['content'] = content;
    }
    if (textSegments != null) {
      _json['textSegments'] =
          textSegments.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A text segment in the Document.text. The indices may be out of bounds which
/// indicate that the text extends into another document shard for large sharded
/// documents. See ShardInfo.text_offset
class GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment {
  /// TextSegment half open end UTF-8 char index in the Document.text.
  core.String endIndex;

  /// TextSegment start UTF-8 char index in the Document.text.
  core.String startIndex;

  GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment();

  GoogleCloudDocumentaiV1beta2DocumentTextAnchorTextSegment.fromJson(
      core.Map _json) {
    if (_json.containsKey('endIndex')) {
      endIndex = _json['endIndex'] as core.String;
    }
    if (_json.containsKey('startIndex')) {
      startIndex = _json['startIndex'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (endIndex != null) {
      _json['endIndex'] = endIndex;
    }
    if (startIndex != null) {
      _json['startIndex'] = startIndex;
    }
    return _json;
  }
}

/// This message is used for text changes aka. OCR corrections.
class GoogleCloudDocumentaiV1beta2DocumentTextChange {
  /// The text that replaces the text identified in the `text_anchor`.
  core.String changedText;

  /// The history of this annotation.
  core.List<GoogleCloudDocumentaiV1beta2DocumentProvenance> provenance;

  /// Provenance of the correction. Text anchor indexing into the Document.text.
  /// There can only be a single `TextAnchor.text_segments` element. If the
  /// start and end index of the text segment are the same, the text change is
  /// inserted before that index.
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor textAnchor;

  GoogleCloudDocumentaiV1beta2DocumentTextChange();

  GoogleCloudDocumentaiV1beta2DocumentTextChange.fromJson(core.Map _json) {
    if (_json.containsKey('changedText')) {
      changedText = _json['changedText'] as core.String;
    }
    if (_json.containsKey('provenance')) {
      provenance = (_json['provenance'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentProvenance>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (changedText != null) {
      _json['changedText'] = changedText;
    }
    if (provenance != null) {
      _json['provenance'] = provenance.map((value) => value.toJson()).toList();
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    return _json;
  }
}

/// A translation of the text segment.
class GoogleCloudDocumentaiV1beta2DocumentTranslation {
  /// The BCP-47 language code, such as "en-US" or "sr-Latn". For more
  /// information, see
  /// http://www.unicode.org/reports/tr35/#Unicode_locale_identifier.
  core.String languageCode;

  /// The history of this annotation.
  core.List<GoogleCloudDocumentaiV1beta2DocumentProvenance> provenance;

  /// Provenance of the translation. Text anchor indexing into the
  /// Document.text. There can only be a single `TextAnchor.text_segments`
  /// element. If the start and end index of the text segment are the same, the
  /// text change is inserted before that index.
  GoogleCloudDocumentaiV1beta2DocumentTextAnchor textAnchor;

  /// Text translated into the target language.
  core.String translatedText;

  GoogleCloudDocumentaiV1beta2DocumentTranslation();

  GoogleCloudDocumentaiV1beta2DocumentTranslation.fromJson(core.Map _json) {
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'] as core.String;
    }
    if (_json.containsKey('provenance')) {
      provenance = (_json['provenance'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2DocumentProvenance>((value) =>
              GoogleCloudDocumentaiV1beta2DocumentProvenance.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('textAnchor')) {
      textAnchor = GoogleCloudDocumentaiV1beta2DocumentTextAnchor.fromJson(
          _json['textAnchor'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('translatedText')) {
      translatedText = _json['translatedText'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (provenance != null) {
      _json['provenance'] = provenance.map((value) => value.toJson()).toList();
    }
    if (textAnchor != null) {
      _json['textAnchor'] = textAnchor.toJson();
    }
    if (translatedText != null) {
      _json['translatedText'] = translatedText;
    }
    return _json;
  }
}

/// Parameters to control entity extraction behavior.
class GoogleCloudDocumentaiV1beta2EntityExtractionParams {
  /// Whether to enable entity extraction.
  core.bool enabled;

  /// Model version of the entity extraction. Default is "builtin/stable".
  /// Specify "builtin/latest" for the latest model.
  core.String modelVersion;

  GoogleCloudDocumentaiV1beta2EntityExtractionParams();

  GoogleCloudDocumentaiV1beta2EntityExtractionParams.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('modelVersion')) {
      modelVersion = _json['modelVersion'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (modelVersion != null) {
      _json['modelVersion'] = modelVersion;
    }
    return _json;
  }
}

/// Parameters to control form extraction behavior.
class GoogleCloudDocumentaiV1beta2FormExtractionParams {
  /// Whether to enable form extraction.
  core.bool enabled;

  /// Reserved for future use.
  core.List<GoogleCloudDocumentaiV1beta2KeyValuePairHint> keyValuePairHints;

  /// Model version of the form extraction system. Default is "builtin/stable".
  /// Specify "builtin/latest" for the latest model. For custom form models,
  /// specify: “custom/{model_name}". Model name format is
  /// "bucket_name/path/to/modeldir" corresponding to
  /// "gs://bucket_name/path/to/modeldir" where annotated examples are stored.
  core.String modelVersion;

  GoogleCloudDocumentaiV1beta2FormExtractionParams();

  GoogleCloudDocumentaiV1beta2FormExtractionParams.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('keyValuePairHints')) {
      keyValuePairHints = (_json['keyValuePairHints'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2KeyValuePairHint>((value) =>
              GoogleCloudDocumentaiV1beta2KeyValuePairHint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('modelVersion')) {
      modelVersion = _json['modelVersion'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (keyValuePairHints != null) {
      _json['keyValuePairHints'] =
          keyValuePairHints.map((value) => value.toJson()).toList();
    }
    if (modelVersion != null) {
      _json['modelVersion'] = modelVersion;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the output file will be written to.
class GoogleCloudDocumentaiV1beta2GcsDestination {
  core.String uri;

  GoogleCloudDocumentaiV1beta2GcsDestination();

  GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// The Google Cloud Storage location where the input file will be read from.
class GoogleCloudDocumentaiV1beta2GcsSource {
  core.String uri;

  GoogleCloudDocumentaiV1beta2GcsSource();

  GoogleCloudDocumentaiV1beta2GcsSource.fromJson(core.Map _json) {
    if (_json.containsKey('uri')) {
      uri = _json['uri'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (uri != null) {
      _json['uri'] = uri;
    }
    return _json;
  }
}

/// The desired input location and metadata.
class GoogleCloudDocumentaiV1beta2InputConfig {
  /// Content in bytes, represented as a stream of bytes. Note: As with all
  /// `bytes` fields, proto buffer messages use a pure binary representation,
  /// whereas JSON representations use base64. This field only works for
  /// synchronous ProcessDocument method.
  core.String contents;
  core.List<core.int> get contentsAsBytes => convert.base64.decode(contents);

  set contentsAsBytes(core.List<core.int> _bytes) {
    contents =
        convert.base64.encode(_bytes).replaceAll('/', '_').replaceAll('+', '-');
  }

  /// The Google Cloud Storage location to read the input from. This must be a
  /// single file.
  GoogleCloudDocumentaiV1beta2GcsSource gcsSource;

  /// Required. Mimetype of the input. Current supported mimetypes are
  /// application/pdf, image/tiff, and image/gif. In addition, application/json
  /// type is supported for requests with ProcessDocumentRequest.automl_params
  /// field set. The JSON file needs to be in Document format.
  core.String mimeType;

  GoogleCloudDocumentaiV1beta2InputConfig();

  GoogleCloudDocumentaiV1beta2InputConfig.fromJson(core.Map _json) {
    if (_json.containsKey('contents')) {
      contents = _json['contents'] as core.String;
    }
    if (_json.containsKey('gcsSource')) {
      gcsSource = GoogleCloudDocumentaiV1beta2GcsSource.fromJson(
          _json['gcsSource'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('mimeType')) {
      mimeType = _json['mimeType'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (contents != null) {
      _json['contents'] = contents;
    }
    if (gcsSource != null) {
      _json['gcsSource'] = gcsSource.toJson();
    }
    if (mimeType != null) {
      _json['mimeType'] = mimeType;
    }
    return _json;
  }
}

/// Reserved for future use.
class GoogleCloudDocumentaiV1beta2KeyValuePairHint {
  /// The key text for the hint.
  core.String key;

  /// Type of the value. This is case-insensitive, and could be one of: ADDRESS,
  /// LOCATION, ORGANIZATION, PERSON, PHONE_NUMBER, ID, NUMBER, EMAIL, PRICE,
  /// TERMS, DATE, NAME. Types not in this list will be ignored.
  core.List<core.String> valueTypes;

  GoogleCloudDocumentaiV1beta2KeyValuePairHint();

  GoogleCloudDocumentaiV1beta2KeyValuePairHint.fromJson(core.Map _json) {
    if (_json.containsKey('key')) {
      key = _json['key'] as core.String;
    }
    if (_json.containsKey('valueTypes')) {
      valueTypes = (_json['valueTypes'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (key != null) {
      _json['key'] = key;
    }
    if (valueTypes != null) {
      _json['valueTypes'] = valueTypes;
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image. NOTE: the normalized vertex
/// coordinates are relative to the original image and range from 0 to 1.
class GoogleCloudDocumentaiV1beta2NormalizedVertex {
  /// X coordinate.
  core.double x;

  /// Y coordinate.
  core.double y;

  GoogleCloudDocumentaiV1beta2NormalizedVertex();

  GoogleCloudDocumentaiV1beta2NormalizedVertex.fromJson(core.Map _json) {
    if (_json.containsKey('x')) {
      x = (_json['x'] as core.num).toDouble();
    }
    if (_json.containsKey('y')) {
      y = (_json['y'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (x != null) {
      _json['x'] = x;
    }
    if (y != null) {
      _json['y'] = y;
    }
    return _json;
  }
}

/// Parameters to control Optical Character Recognition (OCR) behavior.
class GoogleCloudDocumentaiV1beta2OcrParams {
  /// List of languages to use for OCR. In most cases, an empty value yields the
  /// best results since it enables automatic language detection. For languages
  /// based on the Latin alphabet, setting `language_hints` is not needed. In
  /// rare cases, when the language of the text in the image is known, setting a
  /// hint will help get better results (although it will be a significant
  /// hindrance if the hint is wrong). Document processing returns an error if
  /// one or more of the specified languages is not one of the supported
  /// languages.
  core.List<core.String> languageHints;

  GoogleCloudDocumentaiV1beta2OcrParams();

  GoogleCloudDocumentaiV1beta2OcrParams.fromJson(core.Map _json) {
    if (_json.containsKey('languageHints')) {
      languageHints = (_json['languageHints'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (languageHints != null) {
      _json['languageHints'] = languageHints;
    }
    return _json;
  }
}

/// Contains metadata for the BatchProcessDocuments operation.
class GoogleCloudDocumentaiV1beta2OperationMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "ACCEPTED" : Request is received.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String state;

  /// A message providing more details about the current state of processing.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiV1beta2OperationMetadata();

  GoogleCloudDocumentaiV1beta2OperationMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The desired output location and metadata.
class GoogleCloudDocumentaiV1beta2OutputConfig {
  /// The Google Cloud Storage location to write the output to.
  GoogleCloudDocumentaiV1beta2GcsDestination gcsDestination;

  /// The max number of pages to include into each output Document shard JSON on
  /// Google Cloud Storage. The valid range is [1, 100]. If not specified, the
  /// default value is 20. For example, for one pdf file with 100 pages, 100
  /// parsed pages will be produced. If `pages_per_shard` = 20, then 5 Document
  /// shard JSON files each containing 20 parsed pages will be written under the
  /// prefix OutputConfig.gcs_destination.uri and suffix pages-x-to-y.json where
  /// x and y are 1-indexed page numbers. Example GCS outputs with 157 pages and
  /// pages_per_shard = 50: pages-001-to-050.json pages-051-to-100.json
  /// pages-101-to-150.json pages-151-to-157.json
  core.int pagesPerShard;

  GoogleCloudDocumentaiV1beta2OutputConfig();

  GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(core.Map _json) {
    if (_json.containsKey('gcsDestination')) {
      gcsDestination = GoogleCloudDocumentaiV1beta2GcsDestination.fromJson(
          _json['gcsDestination'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pagesPerShard')) {
      pagesPerShard = _json['pagesPerShard'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (gcsDestination != null) {
      _json['gcsDestination'] = gcsDestination.toJson();
    }
    if (pagesPerShard != null) {
      _json['pagesPerShard'] = pagesPerShard;
    }
    return _json;
  }
}

/// Request to process one document.
class GoogleCloudDocumentaiV1beta2ProcessDocumentRequest {
  /// Controls AutoML model prediction behavior. AutoMlParams cannot be used
  /// together with other Params.
  GoogleCloudDocumentaiV1beta2AutoMlParams automlParams;

  /// Specifies a known document type for deeper structure detection. Valid
  /// values are currently "general" and "invoice". If not provided, "general"\
  /// is used as default. If any other value is given, the request is rejected.
  core.String documentType;

  /// Controls entity extraction behavior. If not specified, the system will
  /// decide reasonable defaults.
  GoogleCloudDocumentaiV1beta2EntityExtractionParams entityExtractionParams;

  /// Controls form extraction behavior. If not specified, the system will
  /// decide reasonable defaults.
  GoogleCloudDocumentaiV1beta2FormExtractionParams formExtractionParams;

  /// Required. Information about the input file.
  GoogleCloudDocumentaiV1beta2InputConfig inputConfig;

  /// Controls OCR behavior. If not specified, the system will decide reasonable
  /// defaults.
  GoogleCloudDocumentaiV1beta2OcrParams ocrParams;

  /// The desired output location. This field is only needed in
  /// BatchProcessDocumentsRequest.
  GoogleCloudDocumentaiV1beta2OutputConfig outputConfig;

  /// Target project and location to make a call. Format:
  /// `projects/{project-id}/locations/{location-id}`. If no location is
  /// specified, a region will be chosen automatically. This field is only
  /// populated when used in ProcessDocument method.
  core.String parent;

  /// Controls table extraction behavior. If not specified, the system will
  /// decide reasonable defaults.
  GoogleCloudDocumentaiV1beta2TableExtractionParams tableExtractionParams;

  GoogleCloudDocumentaiV1beta2ProcessDocumentRequest();

  GoogleCloudDocumentaiV1beta2ProcessDocumentRequest.fromJson(core.Map _json) {
    if (_json.containsKey('automlParams')) {
      automlParams = GoogleCloudDocumentaiV1beta2AutoMlParams.fromJson(
          _json['automlParams'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('documentType')) {
      documentType = _json['documentType'] as core.String;
    }
    if (_json.containsKey('entityExtractionParams')) {
      entityExtractionParams =
          GoogleCloudDocumentaiV1beta2EntityExtractionParams.fromJson(
              _json['entityExtractionParams']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('formExtractionParams')) {
      formExtractionParams =
          GoogleCloudDocumentaiV1beta2FormExtractionParams.fromJson(
              _json['formExtractionParams']
                  as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('inputConfig')) {
      inputConfig = GoogleCloudDocumentaiV1beta2InputConfig.fromJson(
          _json['inputConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('ocrParams')) {
      ocrParams = GoogleCloudDocumentaiV1beta2OcrParams.fromJson(
          _json['ocrParams'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('outputConfig')) {
      outputConfig = GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(
          _json['outputConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('parent')) {
      parent = _json['parent'] as core.String;
    }
    if (_json.containsKey('tableExtractionParams')) {
      tableExtractionParams =
          GoogleCloudDocumentaiV1beta2TableExtractionParams.fromJson(
              _json['tableExtractionParams']
                  as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (automlParams != null) {
      _json['automlParams'] = automlParams.toJson();
    }
    if (documentType != null) {
      _json['documentType'] = documentType;
    }
    if (entityExtractionParams != null) {
      _json['entityExtractionParams'] = entityExtractionParams.toJson();
    }
    if (formExtractionParams != null) {
      _json['formExtractionParams'] = formExtractionParams.toJson();
    }
    if (inputConfig != null) {
      _json['inputConfig'] = inputConfig.toJson();
    }
    if (ocrParams != null) {
      _json['ocrParams'] = ocrParams.toJson();
    }
    if (outputConfig != null) {
      _json['outputConfig'] = outputConfig.toJson();
    }
    if (parent != null) {
      _json['parent'] = parent;
    }
    if (tableExtractionParams != null) {
      _json['tableExtractionParams'] = tableExtractionParams.toJson();
    }
    return _json;
  }
}

/// Response to a single document processing request.
class GoogleCloudDocumentaiV1beta2ProcessDocumentResponse {
  /// Information about the input file. This is the same as the corresponding
  /// input config in the request.
  GoogleCloudDocumentaiV1beta2InputConfig inputConfig;

  /// The output location of the parsed responses. The responses are written to
  /// this location as JSON-serialized `Document` objects.
  GoogleCloudDocumentaiV1beta2OutputConfig outputConfig;

  GoogleCloudDocumentaiV1beta2ProcessDocumentResponse();

  GoogleCloudDocumentaiV1beta2ProcessDocumentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('inputConfig')) {
      inputConfig = GoogleCloudDocumentaiV1beta2InputConfig.fromJson(
          _json['inputConfig'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('outputConfig')) {
      outputConfig = GoogleCloudDocumentaiV1beta2OutputConfig.fromJson(
          _json['outputConfig'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (inputConfig != null) {
      _json['inputConfig'] = inputConfig.toJson();
    }
    if (outputConfig != null) {
      _json['outputConfig'] = outputConfig.toJson();
    }
    return _json;
  }
}

/// A hint for a table bounding box on the page for table parsing.
class GoogleCloudDocumentaiV1beta2TableBoundHint {
  /// Bounding box hint for a table on this page. The coordinates must be
  /// normalized to [0,1] and the bounding box must be an axis-aligned
  /// rectangle.
  GoogleCloudDocumentaiV1beta2BoundingPoly boundingBox;

  /// Optional. Page number for multi-paged inputs this hint applies to. If not
  /// provided, this hint will apply to all pages by default. This value is
  /// 1-based.
  core.int pageNumber;

  GoogleCloudDocumentaiV1beta2TableBoundHint();

  GoogleCloudDocumentaiV1beta2TableBoundHint.fromJson(core.Map _json) {
    if (_json.containsKey('boundingBox')) {
      boundingBox = GoogleCloudDocumentaiV1beta2BoundingPoly.fromJson(
          _json['boundingBox'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('pageNumber')) {
      pageNumber = _json['pageNumber'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (boundingBox != null) {
      _json['boundingBox'] = boundingBox.toJson();
    }
    if (pageNumber != null) {
      _json['pageNumber'] = pageNumber;
    }
    return _json;
  }
}

/// Parameters to control table extraction behavior.
class GoogleCloudDocumentaiV1beta2TableExtractionParams {
  /// Whether to enable table extraction.
  core.bool enabled;

  /// Optional. Reserved for future use.
  core.List<core.String> headerHints;

  /// Model version of the table extraction system. Default is "builtin/stable".
  /// Specify "builtin/latest" for the latest model.
  core.String modelVersion;

  /// Optional. Table bounding box hints that can be provided to complex cases
  /// which our algorithm cannot locate the table(s) in.
  core.List<GoogleCloudDocumentaiV1beta2TableBoundHint> tableBoundHints;

  GoogleCloudDocumentaiV1beta2TableExtractionParams();

  GoogleCloudDocumentaiV1beta2TableExtractionParams.fromJson(core.Map _json) {
    if (_json.containsKey('enabled')) {
      enabled = _json['enabled'] as core.bool;
    }
    if (_json.containsKey('headerHints')) {
      headerHints = (_json['headerHints'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('modelVersion')) {
      modelVersion = _json['modelVersion'] as core.String;
    }
    if (_json.containsKey('tableBoundHints')) {
      tableBoundHints = (_json['tableBoundHints'] as core.List)
          .map<GoogleCloudDocumentaiV1beta2TableBoundHint>((value) =>
              GoogleCloudDocumentaiV1beta2TableBoundHint.fromJson(
                  value as core.Map<core.String, core.dynamic>))
          .toList();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (enabled != null) {
      _json['enabled'] = enabled;
    }
    if (headerHints != null) {
      _json['headerHints'] = headerHints;
    }
    if (modelVersion != null) {
      _json['modelVersion'] = modelVersion;
    }
    if (tableBoundHints != null) {
      _json['tableBoundHints'] =
          tableBoundHints.map((value) => value.toJson()).toList();
    }
    return _json;
  }
}

/// A vertex represents a 2D point in the image. NOTE: the vertex coordinates
/// are in the same scale as the original image.
class GoogleCloudDocumentaiV1beta2Vertex {
  /// X coordinate.
  core.int x;

  /// Y coordinate.
  core.int y;

  GoogleCloudDocumentaiV1beta2Vertex();

  GoogleCloudDocumentaiV1beta2Vertex.fromJson(core.Map _json) {
    if (_json.containsKey('x')) {
      x = _json['x'] as core.int;
    }
    if (_json.containsKey('y')) {
      y = _json['y'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (x != null) {
      _json['x'] = x;
    }
    if (y != null) {
      _json['y'] = y;
    }
    return _json;
  }
}

/// The long running operation metadata for batch process method.
class GoogleCloudDocumentaiV1beta3BatchProcessMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// The list of response details of each document.
  core.List<
          GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>
      individualProcessStatuses;

  /// The state of the current batch processing.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : The default value. This value is used if the state
  /// is omitted.
  /// - "WAITING" : Request operation is waiting for scheduling.
  /// - "RUNNING" : Request is being processed.
  /// - "SUCCEEDED" : The batch processing completed successfully.
  /// - "CANCELLING" : The batch processing was being cancelled.
  /// - "CANCELLED" : The batch processing was cancelled.
  /// - "FAILED" : The batch processing has failed.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the error message if the operation is failed.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiV1beta3BatchProcessMetadata();

  GoogleCloudDocumentaiV1beta3BatchProcessMetadata.fromJson(core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('individualProcessStatuses')) {
      individualProcessStatuses = (_json['individualProcessStatuses']
              as core.List)
          .map<GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus>(
              (value) =>
                  GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus
                      .fromJson(value as core.Map<core.String, core.dynamic>))
          .toList();
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (individualProcessStatuses != null) {
      _json['individualProcessStatuses'] =
          individualProcessStatuses.map((value) => value.toJson()).toList();
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// The status of a each individual document in the batch process.
class GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus {
  /// The name of the operation triggered by the processed document. If the
  /// human review process is not triggered, this field will be empty. It has
  /// the same response type and metadata as the long running operation returned
  /// by ReviewDocument method.
  core.String humanReviewOperation;

  /// The source of the document, same as the [input_gcs_source] field in the
  /// request when the batch process started. The batch process is started by
  /// take snapshot of that document, since a user can move or change that
  /// document during the process.
  core.String inputGcsSource;

  /// The output_gcs_destination (in the request as 'output_gcs_destination') of
  /// the processed document if it was successful, otherwise empty.
  core.String outputGcsDestination;

  /// The status of the processing of the document.
  GoogleRpcStatus status;

  GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus();

  GoogleCloudDocumentaiV1beta3BatchProcessMetadataIndividualProcessStatus.fromJson(
      core.Map _json) {
    if (_json.containsKey('humanReviewOperation')) {
      humanReviewOperation = _json['humanReviewOperation'] as core.String;
    }
    if (_json.containsKey('inputGcsSource')) {
      inputGcsSource = _json['inputGcsSource'] as core.String;
    }
    if (_json.containsKey('outputGcsDestination')) {
      outputGcsDestination = _json['outputGcsDestination'] as core.String;
    }
    if (_json.containsKey('status')) {
      status = GoogleRpcStatus.fromJson(
          _json['status'] as core.Map<core.String, core.dynamic>);
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (humanReviewOperation != null) {
      _json['humanReviewOperation'] = humanReviewOperation;
    }
    if (inputGcsSource != null) {
      _json['inputGcsSource'] = inputGcsSource;
    }
    if (outputGcsDestination != null) {
      _json['outputGcsDestination'] = outputGcsDestination;
    }
    if (status != null) {
      _json['status'] = status.toJson();
    }
    return _json;
  }
}

/// Response message for batch process document method.
class GoogleCloudDocumentaiV1beta3BatchProcessResponse {
  GoogleCloudDocumentaiV1beta3BatchProcessResponse();

  GoogleCloudDocumentaiV1beta3BatchProcessResponse.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// The long running operation metadata for review document method.
class GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata {
  /// The creation time of the operation.
  core.String createTime;

  /// Used only when Operation.done is false.
  /// Possible string values are:
  /// - "STATE_UNSPECIFIED" : Unspecified state.
  /// - "RUNNING" : Operation is still running.
  /// - "CANCELLING" : Operation is being cancelled.
  /// - "SUCCEEDED" : Operation succeeded.
  /// - "FAILED" : Operation failed.
  /// - "CANCELLED" : Operation is cancelled.
  core.String state;

  /// A message providing more details about the current state of processing.
  /// For example, the error message if the operation is failed.
  core.String stateMessage;

  /// The last update time of the operation.
  core.String updateTime;

  GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata();

  GoogleCloudDocumentaiV1beta3ReviewDocumentOperationMetadata.fromJson(
      core.Map _json) {
    if (_json.containsKey('createTime')) {
      createTime = _json['createTime'] as core.String;
    }
    if (_json.containsKey('state')) {
      state = _json['state'] as core.String;
    }
    if (_json.containsKey('stateMessage')) {
      stateMessage = _json['stateMessage'] as core.String;
    }
    if (_json.containsKey('updateTime')) {
      updateTime = _json['updateTime'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (createTime != null) {
      _json['createTime'] = createTime;
    }
    if (state != null) {
      _json['state'] = state;
    }
    if (stateMessage != null) {
      _json['stateMessage'] = stateMessage;
    }
    if (updateTime != null) {
      _json['updateTime'] = updateTime;
    }
    return _json;
  }
}

/// Response message for review document method.
class GoogleCloudDocumentaiV1beta3ReviewDocumentResponse {
  /// The Cloud Storage uri for the human reviewed document.
  core.String gcsDestination;

  GoogleCloudDocumentaiV1beta3ReviewDocumentResponse();

  GoogleCloudDocumentaiV1beta3ReviewDocumentResponse.fromJson(core.Map _json) {
    if (_json.containsKey('gcsDestination')) {
      gcsDestination = _json['gcsDestination'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (gcsDestination != null) {
      _json['gcsDestination'] = gcsDestination;
    }
    return _json;
  }
}

/// This resource represents a long-running operation that is the result of a
/// network API call.
class GoogleLongrunningOperation {
  /// If the value is `false`, it means the operation is still in progress. If
  /// `true`, the operation is completed, and either `error` or `response` is
  /// available.
  core.bool done;

  /// The error result of the operation in case of failure or cancellation.
  GoogleRpcStatus error;

  /// Service-specific metadata associated with the operation. It typically
  /// contains progress information and common metadata such as create time.
  /// Some services might not provide such metadata. Any method that returns a
  /// long-running operation should document the metadata type, if any.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> metadata;

  /// The server-assigned name, which is only unique within the same service
  /// that originally returns it. If you use the default HTTP mapping, the
  /// `name` should be a resource name ending with `operations/{unique_id}`.
  core.String name;

  /// The normal response of the operation in case of success. If the original
  /// method returns no data on success, such as `Delete`, the response is
  /// `google.protobuf.Empty`. If the original method is standard
  /// `Get`/`Create`/`Update`, the response should be the resource. For other
  /// methods, the response should have the type `XxxResponse`, where `Xxx` is
  /// the original method name. For example, if the original method name is
  /// `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.Map<core.String, core.Object> response;

  GoogleLongrunningOperation();

  GoogleLongrunningOperation.fromJson(core.Map _json) {
    if (_json.containsKey('done')) {
      done = _json['done'] as core.bool;
    }
    if (_json.containsKey('error')) {
      error = GoogleRpcStatus.fromJson(
          _json['error'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('metadata')) {
      metadata =
          (_json['metadata'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
    if (_json.containsKey('name')) {
      name = _json['name'] as core.String;
    }
    if (_json.containsKey('response')) {
      response =
          (_json['response'] as core.Map).cast<core.String, core.Object>().map(
                (key, item) => core.MapEntry(
                  key,
                  item as core.Object,
                ),
              );
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (done != null) {
      _json['done'] = done;
    }
    if (error != null) {
      _json['error'] = error.toJson();
    }
    if (metadata != null) {
      _json['metadata'] = metadata;
    }
    if (name != null) {
      _json['name'] = name;
    }
    if (response != null) {
      _json['response'] = response;
    }
    return _json;
  }
}

/// A generic empty message that you can re-use to avoid defining duplicated
/// empty messages in your APIs. A typical example is to use it as the request
/// or the response type of an API method. For instance: service Foo { rpc
/// Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The JSON
/// representation for `Empty` is empty JSON object `{}`.
class GoogleProtobufEmpty {
  GoogleProtobufEmpty();

  GoogleProtobufEmpty.fromJson(
      // ignore: avoid_unused_constructor_parameters
      core.Map _json);

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    return _json;
  }
}

/// The `Status` type defines a logical error model that is suitable for
/// different programming environments, including REST APIs and RPC APIs. It is
/// used by [gRPC](https://github.com/grpc). Each `Status` message contains
/// three pieces of data: error code, error message, and error details. You can
/// find out more about this error model and how to work with it in the [API
/// Design Guide](https://cloud.google.com/apis/design/errors).
class GoogleRpcStatus {
  /// The status code, which should be an enum value of google.rpc.Code.
  core.int code;

  /// A list of messages that carry the error details. There is a common set of
  /// message types for APIs to use.
  ///
  /// The values for Object must be JSON objects. It can consist of `num`,
  /// `String`, `bool` and `null` as well as `Map` and `List` values.
  core.List<core.Map<core.String, core.Object>> details;

  /// A developer-facing error message, which should be in English. Any
  /// user-facing error message should be localized and sent in the
  /// google.rpc.Status.details field, or localized by the client.
  core.String message;

  GoogleRpcStatus();

  GoogleRpcStatus.fromJson(core.Map _json) {
    if (_json.containsKey('code')) {
      code = _json['code'] as core.int;
    }
    if (_json.containsKey('details')) {
      details = (_json['details'] as core.List)
          .map<core.Map<core.String, core.Object>>((value) =>
              (value as core.Map).cast<core.String, core.Object>().map(
                    (key, item) => core.MapEntry(
                      key,
                      item as core.Object,
                    ),
                  ))
          .toList();
    }
    if (_json.containsKey('message')) {
      message = _json['message'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (code != null) {
      _json['code'] = code;
    }
    if (details != null) {
      _json['details'] = details;
    }
    if (message != null) {
      _json['message'] = message;
    }
    return _json;
  }
}

/// Represents a color in the RGBA color space. This representation is designed
/// for simplicity of conversion to/from color representations in various
/// languages over compactness; for example, the fields of this representation
/// can be trivially provided to the constructor of "java.awt.Color" in Java; it
/// can also be trivially provided to UIColor's "+colorWithRed:green:blue:alpha"
/// method in iOS; and, with just a little work, it can be easily formatted into
/// a CSS "rgba()" string in JavaScript, as well. Note: this proto does not
/// carry information about the absolute color space that should be used to
/// interpret the RGB value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By
/// default, applications SHOULD assume the sRGB color space. Note: when color
/// equality needs to be decided, implementations, unless documented otherwise,
/// will treat two colors to be equal if all their red, green, blue and alpha
/// values each differ by at most 1e-5. Example (Java): import
/// com.google.type.Color; // ... public static java.awt.Color fromProto(Color
/// protocolor) { float alpha = protocolor.hasAlpha() ?
/// protocolor.getAlpha().getValue() : 1.0; return new java.awt.Color(
/// protocolor.getRed(), protocolor.getGreen(), protocolor.getBlue(), alpha); }
/// public static Color toProto(java.awt.Color color) { float red = (float)
/// color.getRed(); float green = (float) color.getGreen(); float blue = (float)
/// color.getBlue(); float denominator = 255.0; Color.Builder resultBuilder =
/// Color .newBuilder() .setRed(red / denominator) .setGreen(green /
/// denominator) .setBlue(blue / denominator); int alpha = color.getAlpha(); if
/// (alpha != 255) { result.setAlpha( FloatValue .newBuilder()
/// .setValue(((float) alpha) / denominator) .build()); } return
/// resultBuilder.build(); } // ... Example (iOS / Obj-C): // ... static
/// UIColor* fromProto(Color* protocolor) { float red = [protocolor red]; float
/// green = [protocolor green]; float blue = [protocolor blue]; FloatValue*
/// alpha_wrapper = [protocolor alpha]; float alpha = 1.0; if (alpha_wrapper !=
/// nil) { alpha = [alpha_wrapper value]; } return [UIColor colorWithRed:red
/// green:green blue:blue alpha:alpha]; } static Color* toProto(UIColor* color)
/// { CGFloat red, green, blue, alpha; if (![color getRed:&red green:&green
/// blue:&blue alpha:&alpha]) { return nil; } Color* result = [[Color alloc]
/// init]; [result setRed:red]; [result setGreen:green]; [result setBlue:blue];
/// if (alpha <= 0.9999) { [result setAlpha:floatWrapperWithValue(alpha)]; }
/// [result autorelease]; return result; } // ... Example (JavaScript): // ...
/// var protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red ||
/// 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac = rgb_color.blue
/// || 0.0; var red = Math.floor(redFrac * 255); var green =
/// Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if
/// (!('alpha' in rgb_color)) { return rgbToCssColor_(red, green, blue); } var
/// alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red, green,
/// blue].join(','); return ['rgba(', rgbParams, ',', alphaFrac, ')'].join('');
/// }; var rgbToCssColor_ = function(red, green, blue) { var rgbNumber = new
/// Number((red << 16) | (green << 8) | blue); var hexString =
/// rgbNumber.toString(16); var missingZeros = 6 - hexString.length; var
/// resultBuilder = ['#']; for (var i = 0; i < missingZeros; i++) {
/// resultBuilder.push('0'); } resultBuilder.push(hexString); return
/// resultBuilder.join(''); }; // ...
class GoogleTypeColor {
  /// The fraction of this color that should be applied to the pixel. That is,
  /// the final pixel color is defined by the equation: pixel color = alpha *
  /// (this color) + (1.0 - alpha) * (background color) This means that a value
  /// of 1.0 corresponds to a solid color, whereas a value of 0.0 corresponds to
  /// a completely transparent color. This uses a wrapper message rather than a
  /// simple float scalar so that it is possible to distinguish between a
  /// default value and the value being unset. If omitted, this color object is
  /// to be rendered as a solid color (as if the alpha value had been explicitly
  /// given with a value of 1.0).
  core.double alpha;

  /// The amount of blue in the color as a value in the interval [0, 1].
  core.double blue;

  /// The amount of green in the color as a value in the interval [0, 1].
  core.double green;

  /// The amount of red in the color as a value in the interval [0, 1].
  core.double red;

  GoogleTypeColor();

  GoogleTypeColor.fromJson(core.Map _json) {
    if (_json.containsKey('alpha')) {
      alpha = (_json['alpha'] as core.num).toDouble();
    }
    if (_json.containsKey('blue')) {
      blue = (_json['blue'] as core.num).toDouble();
    }
    if (_json.containsKey('green')) {
      green = (_json['green'] as core.num).toDouble();
    }
    if (_json.containsKey('red')) {
      red = (_json['red'] as core.num).toDouble();
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (alpha != null) {
      _json['alpha'] = alpha;
    }
    if (blue != null) {
      _json['blue'] = blue;
    }
    if (green != null) {
      _json['green'] = green;
    }
    if (red != null) {
      _json['red'] = red;
    }
    return _json;
  }
}

/// Represents a whole or partial calendar date, e.g. a birthday. The time of
/// day and time zone are either specified elsewhere or are not significant. The
/// date is relative to the Proleptic Gregorian Calendar. This can represent: *
/// A full date, with non-zero year, month and day values * A month and day
/// value, with a zero year, e.g. an anniversary * A year on its own, with zero
/// month and day values * A year and month value, with a zero day, e.g. a
/// credit card expiration date Related types are google.type.TimeOfDay and
/// `google.protobuf.Timestamp`.
class GoogleTypeDate {
  /// Day of month. Must be from 1 to 31 and valid for the year and month, or 0
  /// if specifying a year by itself or a year and month where the day is not
  /// significant.
  core.int day;

  /// Month of year. Must be from 1 to 12, or 0 if specifying a year without a
  /// month and day.
  core.int month;

  /// Year of date. Must be from 1 to 9999, or 0 if specifying a date without a
  /// year.
  core.int year;

  GoogleTypeDate();

  GoogleTypeDate.fromJson(core.Map _json) {
    if (_json.containsKey('day')) {
      day = _json['day'] as core.int;
    }
    if (_json.containsKey('month')) {
      month = _json['month'] as core.int;
    }
    if (_json.containsKey('year')) {
      year = _json['year'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (day != null) {
      _json['day'] = day;
    }
    if (month != null) {
      _json['month'] = month;
    }
    if (year != null) {
      _json['year'] = year;
    }
    return _json;
  }
}

/// Represents civil time in one of a few possible ways: * When utc_offset is
/// set and time_zone is unset: a civil time on a calendar day with a particular
/// offset from UTC. * When time_zone is set and utc_offset is unset: a civil
/// time on a calendar day in a particular time zone. * When neither time_zone
/// nor utc_offset is set: a civil time on a calendar day in local time. The
/// date is relative to the Proleptic Gregorian Calendar. If year is 0, the
/// DateTime is considered not to have a specific year. month and day must have
/// valid, non-zero values. This type is more flexible than some applications
/// may want. Make sure to document and validate your application's limitations.
class GoogleTypeDateTime {
  /// Required. Day of month. Must be from 1 to 31 and valid for the year and
  /// month.
  core.int day;

  /// Required. Hours of day in 24 hour format. Should be from 0 to 23. An API
  /// may choose to allow the value "24:00:00" for scenarios like business
  /// closing time.
  core.int hours;

  /// Required. Minutes of hour of day. Must be from 0 to 59.
  core.int minutes;

  /// Required. Month of year. Must be from 1 to 12.
  core.int month;

  /// Required. Fractions of seconds in nanoseconds. Must be from 0 to
  /// 999,999,999.
  core.int nanos;

  /// Required. Seconds of minutes of the time. Must normally be from 0 to 59.
  /// An API may allow the value 60 if it allows leap-seconds.
  core.int seconds;

  /// Time zone.
  GoogleTypeTimeZone timeZone;

  /// UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
  /// example, a UTC offset of -4:00 would be represented as { seconds: -14400
  /// }.
  core.String utcOffset;

  /// Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a
  /// datetime without a year.
  core.int year;

  GoogleTypeDateTime();

  GoogleTypeDateTime.fromJson(core.Map _json) {
    if (_json.containsKey('day')) {
      day = _json['day'] as core.int;
    }
    if (_json.containsKey('hours')) {
      hours = _json['hours'] as core.int;
    }
    if (_json.containsKey('minutes')) {
      minutes = _json['minutes'] as core.int;
    }
    if (_json.containsKey('month')) {
      month = _json['month'] as core.int;
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('seconds')) {
      seconds = _json['seconds'] as core.int;
    }
    if (_json.containsKey('timeZone')) {
      timeZone = GoogleTypeTimeZone.fromJson(
          _json['timeZone'] as core.Map<core.String, core.dynamic>);
    }
    if (_json.containsKey('utcOffset')) {
      utcOffset = _json['utcOffset'] as core.String;
    }
    if (_json.containsKey('year')) {
      year = _json['year'] as core.int;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (day != null) {
      _json['day'] = day;
    }
    if (hours != null) {
      _json['hours'] = hours;
    }
    if (minutes != null) {
      _json['minutes'] = minutes;
    }
    if (month != null) {
      _json['month'] = month;
    }
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (seconds != null) {
      _json['seconds'] = seconds;
    }
    if (timeZone != null) {
      _json['timeZone'] = timeZone.toJson();
    }
    if (utcOffset != null) {
      _json['utcOffset'] = utcOffset;
    }
    if (year != null) {
      _json['year'] = year;
    }
    return _json;
  }
}

/// Represents an amount of money with its currency type.
class GoogleTypeMoney {
  /// The 3-letter currency code defined in ISO 4217.
  core.String currencyCode;

  /// Number of nano (10^-9) units of the amount. The value must be between
  /// -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos`
  /// must be positive or zero. If `units` is zero, `nanos` can be positive,
  /// zero, or negative. If `units` is negative, `nanos` must be negative or
  /// zero. For example $-1.75 is represented as `units`=-1 and
  /// `nanos`=-750,000,000.
  core.int nanos;

  /// The whole units of the amount. For example if `currencyCode` is `"USD"`,
  /// then 1 unit is one US dollar.
  core.String units;

  GoogleTypeMoney();

  GoogleTypeMoney.fromJson(core.Map _json) {
    if (_json.containsKey('currencyCode')) {
      currencyCode = _json['currencyCode'] as core.String;
    }
    if (_json.containsKey('nanos')) {
      nanos = _json['nanos'] as core.int;
    }
    if (_json.containsKey('units')) {
      units = _json['units'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (currencyCode != null) {
      _json['currencyCode'] = currencyCode;
    }
    if (nanos != null) {
      _json['nanos'] = nanos;
    }
    if (units != null) {
      _json['units'] = units;
    }
    return _json;
  }
}

/// Represents a postal address, e.g. for postal delivery or payments addresses.
/// Given a postal address, a postal service can deliver items to a premise,
/// P.O. Box or similar. It is not intended to model geographical locations
/// (roads, towns, mountains). In typical usage an address would be created via
/// user input or from importing existing data, depending on the type of
/// process. Advice on address input / editing: - Use an i18n-ready address
/// widget such as https://github.com/google/libaddressinput) - Users should not
/// be presented with UI elements for input or editing of fields outside
/// countries where that field is used. For more guidance on how to use this
/// schema, please see: https://support.google.com/business/answer/6397478
class GoogleTypePostalAddress {
  /// Unstructured address lines describing the lower levels of an address.
  /// Because values in address_lines do not have type information and may
  /// sometimes contain multiple values in a single field (e.g. "Austin, TX"),
  /// it is important that the line order is clear. The order of address lines
  /// should be "envelope order" for the country/region of the address. In
  /// places where this can vary (e.g. Japan), address_language is used to make
  /// it explicit (e.g. "ja" for large-to-small ordering and "ja-Latn" or "en"
  /// for small-to-large). This way, the most specific line of an address can be
  /// selected based on the language. The minimum permitted structural
  /// representation of an address consists of a region_code with all remaining
  /// information placed in the address_lines. It would be possible to format
  /// such an address very approximately without geocoding, but no semantic
  /// reasoning could be made about any of the address components until it was
  /// at least partially resolved. Creating an address only containing a
  /// region_code and address_lines, and then geocoding is the recommended way
  /// to handle completely unstructured addresses (as opposed to guessing which
  /// parts of the address should be localities or administrative areas).
  core.List<core.String> addressLines;

  /// Optional. Highest administrative subdivision which is used for postal
  /// addresses of a country or region. For example, this can be a state, a
  /// province, an oblast, or a prefecture. Specifically, for Spain this is the
  /// province and not the autonomous community (e.g. "Barcelona" and not
  /// "Catalonia"). Many countries don't use an administrative area in postal
  /// addresses. E.g. in Switzerland this should be left unpopulated.
  core.String administrativeArea;

  /// Optional. BCP-47 language code of the contents of this address (if known).
  /// This is often the UI language of the input form or is expected to match
  /// one of the languages used in the address' country/region, or their
  /// transliterated equivalents. This can affect formatting in certain
  /// countries, but is not critical to the correctness of the data and will
  /// never affect any validation or other non-formatting related operations. If
  /// this value is not known, it should be omitted (rather than specifying a
  /// possibly incorrect default). Examples: "zh-Hant", "ja", "ja-Latn", "en".
  core.String languageCode;

  /// Optional. Generally refers to the city/town portion of the address.
  /// Examples: US city, IT comune, UK post town. In regions of the world where
  /// localities are not well defined or do not fit into this structure well,
  /// leave locality empty and use address_lines.
  core.String locality;

  /// Optional. The name of the organization at the address.
  core.String organization;

  /// Optional. Postal code of the address. Not all countries use or require
  /// postal codes to be present, but where they are used, they may trigger
  /// additional validation with other parts of the address (e.g. state/zip
  /// validation in the U.S.A.).
  core.String postalCode;

  /// Optional. The recipient at the address. This field may, under certain
  /// circumstances, contain multiline information. For example, it might
  /// contain "care of" information.
  core.List<core.String> recipients;

  /// Required. CLDR region code of the country/region of the address. This is
  /// never inferred and it is up to the user to ensure the value is correct.
  /// See http://cldr.unicode.org/ and
  /// http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
  /// for details. Example: "CH" for Switzerland.
  core.String regionCode;

  /// The schema revision of the `PostalAddress`. This must be set to 0, which
  /// is the latest revision. All new revisions **must** be backward compatible
  /// with old revisions.
  core.int revision;

  /// Optional. Additional, country-specific, sorting code. This is not used in
  /// most regions. Where it is used, the value is either a string like "CEDEX",
  /// optionally followed by a number (e.g. "CEDEX 7"), or just a number alone,
  /// representing the "sector code" (Jamaica), "delivery area indicator"
  /// (Malawi) or "post office indicator" (e.g. Côte d'Ivoire).
  core.String sortingCode;

  /// Optional. Sublocality of the address. For example, this can be
  /// neighborhoods, boroughs, districts.
  core.String sublocality;

  GoogleTypePostalAddress();

  GoogleTypePostalAddress.fromJson(core.Map _json) {
    if (_json.containsKey('addressLines')) {
      addressLines = (_json['addressLines'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('administrativeArea')) {
      administrativeArea = _json['administrativeArea'] as core.String;
    }
    if (_json.containsKey('languageCode')) {
      languageCode = _json['languageCode'] as core.String;
    }
    if (_json.containsKey('locality')) {
      locality = _json['locality'] as core.String;
    }
    if (_json.containsKey('organization')) {
      organization = _json['organization'] as core.String;
    }
    if (_json.containsKey('postalCode')) {
      postalCode = _json['postalCode'] as core.String;
    }
    if (_json.containsKey('recipients')) {
      recipients = (_json['recipients'] as core.List)
          .map<core.String>((value) => value as core.String)
          .toList();
    }
    if (_json.containsKey('regionCode')) {
      regionCode = _json['regionCode'] as core.String;
    }
    if (_json.containsKey('revision')) {
      revision = _json['revision'] as core.int;
    }
    if (_json.containsKey('sortingCode')) {
      sortingCode = _json['sortingCode'] as core.String;
    }
    if (_json.containsKey('sublocality')) {
      sublocality = _json['sublocality'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (addressLines != null) {
      _json['addressLines'] = addressLines;
    }
    if (administrativeArea != null) {
      _json['administrativeArea'] = administrativeArea;
    }
    if (languageCode != null) {
      _json['languageCode'] = languageCode;
    }
    if (locality != null) {
      _json['locality'] = locality;
    }
    if (organization != null) {
      _json['organization'] = organization;
    }
    if (postalCode != null) {
      _json['postalCode'] = postalCode;
    }
    if (recipients != null) {
      _json['recipients'] = recipients;
    }
    if (regionCode != null) {
      _json['regionCode'] = regionCode;
    }
    if (revision != null) {
      _json['revision'] = revision;
    }
    if (sortingCode != null) {
      _json['sortingCode'] = sortingCode;
    }
    if (sublocality != null) {
      _json['sublocality'] = sublocality;
    }
    return _json;
  }
}

/// Represents a time zone from the [IANA Time Zone
/// Database](https://www.iana.org/time-zones).
class GoogleTypeTimeZone {
  /// IANA Time Zone Database time zone, e.g. "America/New_York".
  core.String id;

  /// Optional. IANA Time Zone Database version number, e.g. "2019a".
  core.String version;

  GoogleTypeTimeZone();

  GoogleTypeTimeZone.fromJson(core.Map _json) {
    if (_json.containsKey('id')) {
      id = _json['id'] as core.String;
    }
    if (_json.containsKey('version')) {
      version = _json['version'] as core.String;
    }
  }

  core.Map<core.String, core.Object> toJson() {
    final _json = <core.String, core.Object>{};
    if (id != null) {
      _json['id'] = id;
    }
    if (version != null) {
      _json['version'] = version;
    }
    return _json;
  }
}
